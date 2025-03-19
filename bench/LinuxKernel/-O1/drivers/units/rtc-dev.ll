; ModuleID = 'drivers/rtc/dev.c'
source_filename = "drivers/rtc/dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i64, i64, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i64, [1 x i64], i64, i64, i64, i64, i64, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
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
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_param = type { i64, %union.anon.18, i32, i32 }
%union.anon.18 = type { i64 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.19, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.20, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.21, ptr, %struct.address_space, %struct.list_head, %union.anon.22, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.19 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.20 = type { %struct.callback_head }
%union.anon.21 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.22 = type { ptr }
%struct.poll_table_struct = type { ptr, i32 }

@rtc_devt = internal global i32 0, align 4, !dbg !0
@rtc_dev_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @rtc_dev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtc_dev_poll, ptr @rtc_dev_ioctl, ptr @rtc_dev_compat_ioctl, ptr null, i64 0, ptr @rtc_dev_open, ptr null, ptr @rtc_dev_release, ptr null, ptr @rtc_dev_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4486
@.str = private unnamed_addr constant [4 x i8] c"rtc\00", align 1, !dbg !4478
@.str.1 = private unnamed_addr constant [48 x i8] c"\013rtc_core: failed to allocate char dev region\0A\00", align 1, !dbg !4481
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4488

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rtc_dev_prepare(ptr noundef %rtc) #0 align 16 !dbg !4504 {
entry:
  %rtc.addr = alloca ptr, align 8
  store ptr %rtc, ptr %rtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rtc.addr, metadata !4506, metadata !DIExpression()), !dbg !4507
  %0 = load i32, ptr @rtc_devt, align 4, !dbg !4508
  %tobool = icmp ne i32 %0, 0, !dbg !4508
  br i1 %tobool, label %if.end, label %if.then, !dbg !4510

if.then:                                          ; preds = %entry
  br label %return, !dbg !4511

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rtc.addr, align 8, !dbg !4512
  %id = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 2, !dbg !4514
  %2 = load i32, ptr %id, align 8, !dbg !4514
  %cmp = icmp sge i32 %2, 16, !dbg !4515
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4516

if.then1:                                         ; preds = %if.end
  br label %return, !dbg !4517

if.end2:                                          ; preds = %if.end
  %3 = load i32, ptr @rtc_devt, align 4, !dbg !4519
  %shr = lshr i32 %3, 20, !dbg !4519
  %shl = shl i32 %shr, 20, !dbg !4519
  %4 = load ptr, ptr %rtc.addr, align 8, !dbg !4519
  %id3 = getelementptr inbounds %struct.rtc_device, ptr %4, i32 0, i32 2, !dbg !4519
  %5 = load i32, ptr %id3, align 8, !dbg !4519
  %or = or i32 %shl, %5, !dbg !4519
  %6 = load ptr, ptr %rtc.addr, align 8, !dbg !4520
  %dev = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 0, !dbg !4521
  %devt = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26, !dbg !4522
  store i32 %or, ptr %devt, align 4, !dbg !4523
  %7 = load ptr, ptr %rtc.addr, align 8, !dbg !4524
  %char_dev = getelementptr inbounds %struct.rtc_device, ptr %7, i32 0, i32 5, !dbg !4525
  call void @cdev_init(ptr noundef %char_dev, ptr noundef @rtc_dev_fops) #15, !dbg !4526
  %8 = load ptr, ptr %rtc.addr, align 8, !dbg !4527
  %owner = getelementptr inbounds %struct.rtc_device, ptr %8, i32 0, i32 1, !dbg !4528
  %9 = load ptr, ptr %owner, align 8, !dbg !4528
  %10 = load ptr, ptr %rtc.addr, align 8, !dbg !4529
  %char_dev4 = getelementptr inbounds %struct.rtc_device, ptr %10, i32 0, i32 5, !dbg !4530
  %owner5 = getelementptr inbounds %struct.cdev, ptr %char_dev4, i32 0, i32 1, !dbg !4531
  store ptr %9, ptr %owner5, align 8, !dbg !4532
  br label %return, !dbg !4533

return:                                           ; preds = %if.end2, %if.then1, %if.then
  ret void, !dbg !4533
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4534 dso_local void @cdev_init(ptr noundef, ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @rtc_dev_init() #3 section ".init.text" align 16 !dbg !4537 {
entry:
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4540
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4539, metadata !DIExpression()), !dbg !4541
  %call = call i32 @alloc_chrdev_region(ptr noundef @rtc_devt, i32 noundef 0, i32 noundef 16, ptr noundef @.str) #15, !dbg !4542
  store i32 %call, ptr %err, align 4, !dbg !4543
  %0 = load i32, ptr %err, align 4, !dbg !4544
  %cmp = icmp slt i32 %0, 0, !dbg !4546
  br i1 %cmp, label %if.then, label %if.end, !dbg !4547

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4548

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !4550

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4550

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #17, !dbg !4548
  store i32 %call1, ptr %tmp, align 4, !dbg !4550
  %1 = load i32, ptr %tmp, align 4, !dbg !4548
  br label %if.end, !dbg !4552

if.end:                                           ; preds = %do.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !4553
  ret void, !dbg !4553
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4554 dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4558 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rtc_dev_read(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !4562 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %rtc = alloca ptr, align 8
  %wait = alloca %struct.wait_queue_entry, align 8
  %data = alloca i64, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  %tmp57 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp59 = alloca i64, align 8
  %tmp62 = alloca i64, align 8
  %__ret_pu63 = alloca i32, align 4
  %__ptr_pu64 = alloca ptr, align 8
  %__val_pu65 = alloca i64, align 8
  %__x66 = alloca i64, align 8
  %__ptr67 = alloca ptr, align 8
  %tmp70 = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4564, metadata !DIExpression()), !dbg !4607
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4565, metadata !DIExpression()), !dbg !4608
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4566, metadata !DIExpression()), !dbg !4609
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !4567, metadata !DIExpression()), !dbg !4610
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #16, !dbg !4611
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !4568, metadata !DIExpression()), !dbg !4612
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4613
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !4614
  %1 = load ptr, ptr %private_data, align 8, !dbg !4614
  store ptr %1, ptr %rtc, align 8, !dbg !4612
  call void @llvm.lifetime.start.p0(i64 40, ptr %wait) #16, !dbg !4615
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !4569, metadata !DIExpression()), !dbg !4615
  %flags = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 0, !dbg !4615
  store i32 0, ptr %flags, align 8, !dbg !4615
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1, !dbg !4615
  %call = call ptr @get_current() #15, !dbg !4615
  store ptr %call, ptr %private, align 8, !dbg !4615
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2, !dbg !4615
  store ptr @default_wake_function, ptr %func, align 8, !dbg !4615
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, !dbg !4615
  %next = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 0, !dbg !4615
  store ptr null, ptr %next, align 8, !dbg !4615
  %prev = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1, !dbg !4615
  store ptr null, ptr %prev, align 8, !dbg !4615
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !4616
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4581, metadata !DIExpression()), !dbg !4617
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !4618
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4582, metadata !DIExpression()), !dbg !4619
  %2 = load i64, ptr %count.addr, align 8, !dbg !4620
  %cmp = icmp ne i64 %2, 4, !dbg !4622
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4623

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, ptr %count.addr, align 8, !dbg !4624
  %cmp2 = icmp ult i64 %3, 8, !dbg !4625
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4626

if.then:                                          ; preds = %land.lhs.true
  store i64 -22, ptr %retval, align 8, !dbg !4627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4627

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %rtc, align 8, !dbg !4628
  %irq_queue = getelementptr inbounds %struct.rtc_device, ptr %4, i32 0, i32 9, !dbg !4629
  call void @add_wait_queue(ptr noundef %irq_queue, ptr noundef %wait) #15, !dbg !4630
  br label %do.body, !dbg !4631

do.body:                                          ; preds = %do.cond29, %if.end
  br label %do.body3, !dbg !4632

do.body3:                                         ; preds = %do.body
  br label %do.body4, !dbg !4634

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !4636

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !4636

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !4634

do.body5:                                         ; preds = %do.end
  br label %do.body6, !dbg !4638

do.body6:                                         ; preds = %do.body5
  br label %do.cond7, !dbg !4640

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !4640

do.end8:                                          ; preds = %do.cond7
  br label %do.body9, !dbg !4638

do.body9:                                         ; preds = %do.end8
  %call10 = call ptr @get_current() #15, !dbg !4642
  %__state = getelementptr inbounds %struct.task_struct, ptr %call10, i32 0, i32 1, !dbg !4642
  store volatile i32 1, ptr %__state, align 8, !dbg !4642
  br label %do.cond11, !dbg !4642

do.cond11:                                        ; preds = %do.body9
  br label %do.end12, !dbg !4642

do.end12:                                         ; preds = %do.cond11
  br label %do.cond13, !dbg !4638

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !4638

do.end14:                                         ; preds = %do.cond13
  br label %do.cond15, !dbg !4634

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !4634

do.end16:                                         ; preds = %do.cond15
  %5 = load ptr, ptr %rtc, align 8, !dbg !4644
  %irq_lock = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 8, !dbg !4645
  call void @spin_lock_irq(ptr noundef %irq_lock) #15, !dbg !4646
  %6 = load ptr, ptr %rtc, align 8, !dbg !4647
  %irq_data = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 7, !dbg !4648
  %7 = load i64, ptr %irq_data, align 8, !dbg !4648
  store i64 %7, ptr %data, align 8, !dbg !4649
  %8 = load ptr, ptr %rtc, align 8, !dbg !4650
  %irq_data17 = getelementptr inbounds %struct.rtc_device, ptr %8, i32 0, i32 7, !dbg !4651
  store i64 0, ptr %irq_data17, align 8, !dbg !4652
  %9 = load ptr, ptr %rtc, align 8, !dbg !4653
  %irq_lock18 = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 8, !dbg !4654
  call void @spin_unlock_irq(ptr noundef %irq_lock18) #15, !dbg !4655
  %10 = load i64, ptr %data, align 8, !dbg !4656
  %cmp19 = icmp ne i64 %10, 0, !dbg !4658
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !4659

if.then20:                                        ; preds = %do.end16
  store i64 0, ptr %ret, align 8, !dbg !4660
  br label %do.end30, !dbg !4662

if.end21:                                         ; preds = %do.end16
  %11 = load ptr, ptr %file.addr, align 8, !dbg !4663
  %f_flags = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 6, !dbg !4665
  %12 = load i32, ptr %f_flags, align 8, !dbg !4665
  %and = and i32 %12, 2048, !dbg !4666
  %tobool = icmp ne i32 %and, 0, !dbg !4666
  br i1 %tobool, label %if.then22, label %if.end23, !dbg !4667

if.then22:                                        ; preds = %if.end21
  store i64 -11, ptr %ret, align 8, !dbg !4668
  br label %do.end30, !dbg !4670

if.end23:                                         ; preds = %if.end21
  %call24 = call ptr @get_current() #15, !dbg !4671
  %call25 = call i32 @signal_pending(ptr noundef %call24) #15, !dbg !4673
  %tobool26 = icmp ne i32 %call25, 0, !dbg !4673
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !4674

if.then27:                                        ; preds = %if.end23
  store i64 -512, ptr %ret, align 8, !dbg !4675
  br label %do.end30, !dbg !4677

if.end28:                                         ; preds = %if.end23
  call void @schedule() #15, !dbg !4678
  br label %do.cond29, !dbg !4679

do.cond29:                                        ; preds = %if.end28
  br i1 true, label %do.body, label %do.end30, !dbg !4679, !llvm.loop !4680

do.end30:                                         ; preds = %do.cond29, %if.then27, %if.then22, %if.then20
  br label %do.body31, !dbg !4683

do.body31:                                        ; preds = %do.end30
  br label %do.body32, !dbg !4684

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !4685

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4685

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !4684

do.body35:                                        ; preds = %do.end34
  br label %do.body36, !dbg !4687

do.body36:                                        ; preds = %do.body35
  br label %do.cond37, !dbg !4688

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !4688

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !4687

do.body39:                                        ; preds = %do.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #16, !dbg !4690
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !4583, metadata !DIExpression()), !dbg !4690
  %call40 = call ptr @get_current() #15, !dbg !4690
  %__state41 = getelementptr inbounds %struct.task_struct, ptr %call40, i32 0, i32 1, !dbg !4690
  store ptr %__state41, ptr %__ai_ptr, align 8, !dbg !4690
  br label %do.body42, !dbg !4690

do.body42:                                        ; preds = %do.body39
  br label %do.cond43, !dbg !4691

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !4691

do.end44:                                         ; preds = %do.cond43
  %13 = load ptr, ptr %__ai_ptr, align 8, !dbg !4690
  call void @instrument_atomic_read_write(ptr noundef %13, i64 noundef 4) #15, !dbg !4690
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !4693
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4588, metadata !DIExpression()), !dbg !4693
  store i32 0, ptr %__ret, align 4, !dbg !4693
  %14 = load i32, ptr %__ret, align 4, !dbg !4693
  %15 = load ptr, ptr %__ai_ptr, align 8, !dbg !4693
  %16 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %15, i32 %14, ptr elementtype(i32) %15) #16, !dbg !4693, !srcloc !4694
  store i32 %16, ptr %__ret, align 4, !dbg !4693
  %17 = load i32, ptr %__ret, align 4, !dbg !4693
  store i32 %17, ptr %tmp45, align 4, !dbg !4693
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !4690
  %18 = load i32, ptr %tmp45, align 4, !dbg !4693
  store i32 %18, ptr %tmp, align 4, !dbg !4690
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #16, !dbg !4695
  %19 = load i32, ptr %tmp, align 4, !dbg !4690
  br label %do.cond46, !dbg !4695

do.cond46:                                        ; preds = %do.end44
  br label %do.end47, !dbg !4695

do.end47:                                         ; preds = %do.cond46
  br label %do.cond48, !dbg !4687

do.cond48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !4687

do.end49:                                         ; preds = %do.cond48
  br label %do.cond50, !dbg !4684

do.cond50:                                        ; preds = %do.end49
  br label %do.end51, !dbg !4684

do.end51:                                         ; preds = %do.cond50
  %20 = load ptr, ptr %rtc, align 8, !dbg !4696
  %irq_queue52 = getelementptr inbounds %struct.rtc_device, ptr %20, i32 0, i32 9, !dbg !4697
  call void @remove_wait_queue(ptr noundef %irq_queue52, ptr noundef %wait) #15, !dbg !4698
  %21 = load i64, ptr %ret, align 8, !dbg !4699
  %cmp53 = icmp eq i64 %21, 0, !dbg !4700
  br i1 %cmp53, label %if.then54, label %if.end79, !dbg !4701

if.then54:                                        ; preds = %do.end51
  %22 = load i64, ptr %count.addr, align 8, !dbg !4702
  %cmp55 = icmp eq i64 %22, 4, !dbg !4703
  br i1 %cmp55, label %if.then56, label %if.else, !dbg !4704

if.then56:                                        ; preds = %if.then54
  call void @might_fault() #15, !dbg !4705
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #16, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !4590, metadata !DIExpression()), !dbg !4706
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #16, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !4596, metadata !DIExpression()), !dbg !4706
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #16, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !4597, metadata !DIExpression()), !dbg !4706
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #16, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !4598, metadata !DIExpression()), !dbg !4706
  %23 = load i64, ptr %data, align 8, !dbg !4706
  %conv = trunc i64 %23 to i32, !dbg !4706
  store i32 %conv, ptr %__x, align 4, !dbg !4706
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4599, metadata !DIExpression()), !dbg !4706
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !4706
  store ptr %24, ptr %__ptr, align 8, !dbg !4706
  %25 = load ptr, ptr %__ptr, align 8, !dbg !4706
  store ptr %25, ptr %__ptr_pu, align 8, !dbg !4706
  %26 = load i32, ptr %__x, align 4, !dbg !4706
  store i32 %26, ptr %__val_pu, align 4, !dbg !4706
  %27 = call i64 @llvm.read_register.i64(metadata !4494), !dbg !4706
  %28 = load ptr, ptr %__ptr_pu, align 8, !dbg !4706
  %29 = load i32, ptr %__val_pu, align 4, !dbg !4706
  %30 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %28, i32 %29, i64 4, i64 %27) #16, !dbg !4706, !srcloc !4707
  %asmresult = extractvalue { ptr, i64 } %30, 0, !dbg !4706
  %asmresult58 = extractvalue { ptr, i64 } %30, 1, !dbg !4706
  %31 = ptrtoint ptr %asmresult to i64, !dbg !4706
  %32 = trunc i64 %31 to i32, !dbg !4706
  store i32 %32, ptr %__ret_pu, align 4, !dbg !4706
  call void @llvm.write_register.i64(metadata !4494, i64 %asmresult58), !dbg !4706
  %33 = load ptr, ptr %__ptr, align 8, !dbg !4708
  call void @kmsan_copy_to_user(ptr noundef %33, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #15, !dbg !4708
  %34 = load i32, ptr %__ret_pu, align 4, !dbg !4706
  %conv60 = sext i32 %34 to i64, !dbg !4706
  %expval = call i64 @llvm.expect.i64(i64 %conv60, i64 0), !dbg !4706
  store i64 %expval, ptr %tmp59, align 8, !dbg !4706
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !4705
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #16, !dbg !4705
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #16, !dbg !4705
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #16, !dbg !4705
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #16, !dbg !4705
  %35 = load i64, ptr %tmp59, align 8, !dbg !4706
  store i64 %35, ptr %tmp57, align 8, !dbg !4705
  %36 = load i64, ptr %tmp57, align 8, !dbg !4705
  %tobool61 = icmp ne i64 %36, 0, !dbg !4710
  br i1 %tobool61, label %cond.true, label %cond.false, !dbg !4710

cond.true:                                        ; preds = %if.then56
  br label %cond.end, !dbg !4710

cond.false:                                       ; preds = %if.then56
  br label %cond.end, !dbg !4710

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %36, %cond.true ], [ 4, %cond.false ], !dbg !4710
  store i64 %cond, ptr %ret, align 8, !dbg !4711
  br label %if.end78, !dbg !4712

if.else:                                          ; preds = %if.then54
  call void @might_fault() #15, !dbg !4713
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu63) #16, !dbg !4714
  call void @llvm.dbg.declare(metadata ptr %__ret_pu63, metadata !4600, metadata !DIExpression()), !dbg !4714
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu64) #16, !dbg !4714
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu64, metadata !4603, metadata !DIExpression()), !dbg !4714
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_pu65) #16, !dbg !4714
  call void @llvm.dbg.declare(metadata ptr %__val_pu65, metadata !4604, metadata !DIExpression()), !dbg !4714
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x66) #16, !dbg !4714
  call void @llvm.dbg.declare(metadata ptr %__x66, metadata !4605, metadata !DIExpression()), !dbg !4714
  %37 = load i64, ptr %data, align 8, !dbg !4714
  store i64 %37, ptr %__x66, align 8, !dbg !4714
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr67) #16, !dbg !4714
  call void @llvm.dbg.declare(metadata ptr %__ptr67, metadata !4606, metadata !DIExpression()), !dbg !4714
  %38 = load ptr, ptr %buf.addr, align 8, !dbg !4714
  store ptr %38, ptr %__ptr67, align 8, !dbg !4714
  %39 = load ptr, ptr %__ptr67, align 8, !dbg !4714
  store ptr %39, ptr %__ptr_pu64, align 8, !dbg !4714
  %40 = load i64, ptr %__x66, align 8, !dbg !4714
  store i64 %40, ptr %__val_pu65, align 8, !dbg !4714
  %41 = call i64 @llvm.read_register.i64(metadata !4494), !dbg !4714
  %42 = load ptr, ptr %__ptr_pu64, align 8, !dbg !4714
  %43 = load i64, ptr %__val_pu65, align 8, !dbg !4714
  %44 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %42, i64 %43, i64 8, i64 %41) #16, !dbg !4714, !srcloc !4715
  %asmresult68 = extractvalue { ptr, i64 } %44, 0, !dbg !4714
  %asmresult69 = extractvalue { ptr, i64 } %44, 1, !dbg !4714
  %45 = ptrtoint ptr %asmresult68 to i64, !dbg !4714
  %46 = trunc i64 %45 to i32, !dbg !4714
  store i32 %46, ptr %__ret_pu63, align 4, !dbg !4714
  call void @llvm.write_register.i64(metadata !4494, i64 %asmresult69), !dbg !4714
  %47 = load ptr, ptr %__ptr67, align 8, !dbg !4716
  call void @kmsan_copy_to_user(ptr noundef %47, ptr noundef %__x66, i64 noundef 8, i64 noundef 0) #15, !dbg !4716
  %48 = load i32, ptr %__ret_pu63, align 4, !dbg !4714
  %conv71 = sext i32 %48 to i64, !dbg !4714
  %expval72 = call i64 @llvm.expect.i64(i64 %conv71, i64 0), !dbg !4714
  store i64 %expval72, ptr %tmp70, align 8, !dbg !4714
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr67) #16, !dbg !4713
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x66) #16, !dbg !4713
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_pu65) #16, !dbg !4713
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu64) #16, !dbg !4713
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu63) #16, !dbg !4713
  %49 = load i64, ptr %tmp70, align 8, !dbg !4714
  store i64 %49, ptr %tmp62, align 8, !dbg !4713
  %50 = load i64, ptr %tmp62, align 8, !dbg !4713
  %tobool73 = icmp ne i64 %50, 0, !dbg !4718
  br i1 %tobool73, label %cond.true74, label %cond.false75, !dbg !4718

cond.true74:                                      ; preds = %if.else
  br label %cond.end76, !dbg !4718

cond.false75:                                     ; preds = %if.else
  br label %cond.end76, !dbg !4718

cond.end76:                                       ; preds = %cond.false75, %cond.true74
  %cond77 = phi i64 [ %50, %cond.true74 ], [ 8, %cond.false75 ], !dbg !4718
  store i64 %cond77, ptr %ret, align 8, !dbg !4719
  br label %if.end78

if.end78:                                         ; preds = %cond.end76, %cond.end
  br label %if.end79, !dbg !4720

if.end79:                                         ; preds = %if.end78, %do.end51
  %51 = load i64, ptr %ret, align 8, !dbg !4721
  store i64 %51, ptr %retval, align 8, !dbg !4722
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4722

cleanup:                                          ; preds = %if.end79, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !4723
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !4723
  call void @llvm.lifetime.end.p0(i64 40, ptr %wait) #16, !dbg !4723
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #16, !dbg !4723
  %52 = load i64, ptr %retval, align 8, !dbg !4723
  ret i64 %52, !dbg !4723
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtc_dev_poll(ptr noundef %file, ptr noundef %wait) #0 align 16 !dbg !4724 {
entry:
  %file.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %rtc = alloca ptr, align 8
  %data = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4730, metadata !DIExpression()), !dbg !4734
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !4731, metadata !DIExpression()), !dbg !4735
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #16, !dbg !4736
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !4732, metadata !DIExpression()), !dbg !4737
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4738
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !4739
  %1 = load ptr, ptr %private_data, align 8, !dbg !4739
  store ptr %1, ptr %rtc, align 8, !dbg !4737
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !4740
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4733, metadata !DIExpression()), !dbg !4741
  %2 = load ptr, ptr %file.addr, align 8, !dbg !4742
  %3 = load ptr, ptr %rtc, align 8, !dbg !4743
  %irq_queue = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 9, !dbg !4744
  %4 = load ptr, ptr %wait.addr, align 8, !dbg !4745
  call void @poll_wait(ptr noundef %2, ptr noundef %irq_queue, ptr noundef %4) #15, !dbg !4746
  %5 = load ptr, ptr %rtc, align 8, !dbg !4747
  %irq_data = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 7, !dbg !4748
  %6 = load i64, ptr %irq_data, align 8, !dbg !4748
  store i64 %6, ptr %data, align 8, !dbg !4749
  %7 = load i64, ptr %data, align 8, !dbg !4750
  %cmp = icmp ne i64 %7, 0, !dbg !4751
  %8 = zext i1 %cmp to i64, !dbg !4752
  %cond = select i1 %cmp, i32 65, i32 0, !dbg !4752
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !4753
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #16, !dbg !4753
  ret i32 %cond, !dbg !4754
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rtc_dev_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !4755 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %rtc = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %tm = alloca %struct.rtc_time, align 4
  %alarm = alloca %struct.rtc_wkalrm, align 4
  %param = alloca %struct.rtc_param, align 8
  %uarg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %now = alloca i64, align 8
  %then = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i64, align 8
  %__x = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp131 = alloca i64, align 8
  %offset = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4757, metadata !DIExpression()), !dbg !4782
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !4758, metadata !DIExpression()), !dbg !4783
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4759, metadata !DIExpression()), !dbg !4784
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4785
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4760, metadata !DIExpression()), !dbg !4786
  store i32 0, ptr %err, align 4, !dbg !4786
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #16, !dbg !4787
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !4761, metadata !DIExpression()), !dbg !4788
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4789
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !4790
  %1 = load ptr, ptr %private_data, align 8, !dbg !4790
  store ptr %1, ptr %rtc, align 8, !dbg !4788
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #16, !dbg !4791
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !4762, metadata !DIExpression()), !dbg !4792
  %2 = load ptr, ptr %rtc, align 8, !dbg !4793
  %ops1 = getelementptr inbounds %struct.rtc_device, ptr %2, i32 0, i32 3, !dbg !4794
  %3 = load ptr, ptr %ops1, align 8, !dbg !4794
  store ptr %3, ptr %ops, align 8, !dbg !4792
  call void @llvm.lifetime.start.p0(i64 36, ptr %tm) #16, !dbg !4795
  call void @llvm.dbg.declare(metadata ptr %tm, metadata !4763, metadata !DIExpression()), !dbg !4796
  call void @llvm.lifetime.start.p0(i64 40, ptr %alarm) #16, !dbg !4797
  call void @llvm.dbg.declare(metadata ptr %alarm, metadata !4764, metadata !DIExpression()), !dbg !4798
  call void @llvm.lifetime.start.p0(i64 24, ptr %param) #16, !dbg !4799
  call void @llvm.dbg.declare(metadata ptr %param, metadata !4765, metadata !DIExpression()), !dbg !4800
  call void @llvm.lifetime.start.p0(i64 8, ptr %uarg) #16, !dbg !4801
  call void @llvm.dbg.declare(metadata ptr %uarg, metadata !4766, metadata !DIExpression()), !dbg !4802
  %4 = load i64, ptr %arg.addr, align 8, !dbg !4803
  %5 = inttoptr i64 %4 to ptr, !dbg !4804
  store ptr %5, ptr %uarg, align 8, !dbg !4802
  %6 = load ptr, ptr %rtc, align 8, !dbg !4805
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 4, !dbg !4806
  %call = call i32 @mutex_lock_interruptible(ptr noundef %ops_lock) #15, !dbg !4807
  store i32 %call, ptr %err, align 4, !dbg !4808
  %7 = load i32, ptr %err, align 4, !dbg !4809
  %tobool = icmp ne i32 %7, 0, !dbg !4809
  br i1 %tobool, label %if.then, label %if.end, !dbg !4811

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %err, align 4, !dbg !4812
  %conv = sext i32 %8 to i64, !dbg !4812
  store i64 %conv, ptr %retval, align 8, !dbg !4813
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !4813

if.end:                                           ; preds = %entry
  %9 = load i32, ptr %cmd.addr, align 4, !dbg !4814
  switch i32 %9, label %sw.epilog [
    i32 1074294798, label %sw.bb
    i32 1076129802, label %sw.bb
    i32 1075343380, label %sw.bb
    i32 1074294796, label %sw.bb5
    i32 28677, label %sw.bb11
  ], !dbg !4815

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %call2 = call zeroext i1 @capable(i32 noundef 25) #15, !dbg !4816
  br i1 %call2, label %if.end4, label %if.then3, !dbg !4819

if.then3:                                         ; preds = %sw.bb
  store i32 -13, ptr %err, align 4, !dbg !4820
  br label %if.end4, !dbg !4821

if.end4:                                          ; preds = %if.then3, %sw.bb
  br label %sw.epilog, !dbg !4822

sw.bb5:                                           ; preds = %if.end
  %10 = load i64, ptr %arg.addr, align 8, !dbg !4823
  %11 = load ptr, ptr %rtc, align 8, !dbg !4825
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %11, i32 0, i32 12, !dbg !4826
  %12 = load i32, ptr %max_user_freq, align 4, !dbg !4826
  %conv6 = sext i32 %12 to i64, !dbg !4825
  %cmp = icmp ugt i64 %10, %conv6, !dbg !4827
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !4828

land.lhs.true:                                    ; preds = %sw.bb5
  %call8 = call zeroext i1 @capable(i32 noundef 24) #15, !dbg !4829
  br i1 %call8, label %if.end10, label %if.then9, !dbg !4830

if.then9:                                         ; preds = %land.lhs.true
  store i32 -13, ptr %err, align 4, !dbg !4831
  br label %if.end10, !dbg !4832

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %sw.bb5
  br label %sw.epilog, !dbg !4833

sw.bb11:                                          ; preds = %if.end
  %13 = load ptr, ptr %rtc, align 8, !dbg !4834
  %irq_freq = getelementptr inbounds %struct.rtc_device, ptr %13, i32 0, i32 11, !dbg !4836
  %14 = load i32, ptr %irq_freq, align 8, !dbg !4836
  %15 = load ptr, ptr %rtc, align 8, !dbg !4837
  %max_user_freq12 = getelementptr inbounds %struct.rtc_device, ptr %15, i32 0, i32 12, !dbg !4838
  %16 = load i32, ptr %max_user_freq12, align 4, !dbg !4838
  %cmp13 = icmp sgt i32 %14, %16, !dbg !4839
  br i1 %cmp13, label %land.lhs.true15, label %if.end18, !dbg !4840

land.lhs.true15:                                  ; preds = %sw.bb11
  %call16 = call zeroext i1 @capable(i32 noundef 24) #15, !dbg !4841
  br i1 %call16, label %if.end18, label %if.then17, !dbg !4842

if.then17:                                        ; preds = %land.lhs.true15
  store i32 -13, ptr %err, align 4, !dbg !4843
  br label %if.end18, !dbg !4844

if.end18:                                         ; preds = %if.then17, %land.lhs.true15, %sw.bb11
  br label %sw.epilog, !dbg !4845

sw.epilog:                                        ; preds = %if.end, %if.end18, %if.end10, %if.end4
  %17 = load i32, ptr %err, align 4, !dbg !4846
  %tobool19 = icmp ne i32 %17, 0, !dbg !4846
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4848

if.then20:                                        ; preds = %sw.epilog
  br label %done, !dbg !4849

if.end21:                                         ; preds = %sw.epilog
  %18 = load i32, ptr %cmd.addr, align 4, !dbg !4850
  switch i32 %18, label %sw.default226 [
    i32 -2145095672, label %sw.bb22
    i32 1076129799, label %sw.bb35
    i32 -2145095671, label %sw.bb83
    i32 1076129802, label %sw.bb96
    i32 28677, label %sw.bb104
    i32 28678, label %sw.bb106
    i32 28673, label %sw.bb108
    i32 28674, label %sw.bb112
    i32 28675, label %sw.bb116
    i32 28676, label %sw.bb120
    i32 1074294796, label %sw.bb124
    i32 -2146930677, label %sw.bb127
    i32 1076391951, label %sw.bb134
    i32 -2144833520, label %sw.bb142
    i32 1075343379, label %sw.bb155
    i32 1075343380, label %sw.bb197
  ], !dbg !4851

sw.bb22:                                          ; preds = %if.end21
  %19 = load ptr, ptr %rtc, align 8, !dbg !4852
  %ops_lock23 = getelementptr inbounds %struct.rtc_device, ptr %19, i32 0, i32 4, !dbg !4853
  call void @mutex_unlock(ptr noundef %ops_lock23) #15, !dbg !4854
  %20 = load ptr, ptr %rtc, align 8, !dbg !4855
  %call24 = call i32 @rtc_read_alarm(ptr noundef %20, ptr noundef %alarm) #15, !dbg !4856
  store i32 %call24, ptr %err, align 4, !dbg !4857
  %21 = load i32, ptr %err, align 4, !dbg !4858
  %cmp25 = icmp slt i32 %21, 0, !dbg !4860
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !4861

if.then27:                                        ; preds = %sw.bb22
  %22 = load i32, ptr %err, align 4, !dbg !4862
  %conv28 = sext i32 %22 to i64, !dbg !4862
  store i64 %conv28, ptr %retval, align 8, !dbg !4863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !4863

if.end29:                                         ; preds = %sw.bb22
  %23 = load ptr, ptr %uarg, align 8, !dbg !4864
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, !dbg !4866
  %call30 = call i64 @copy_to_user(ptr noundef %23, ptr noundef %time, i64 noundef 36) #15, !dbg !4867
  %tobool31 = icmp ne i64 %call30, 0, !dbg !4867
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !4868

if.then32:                                        ; preds = %if.end29
  store i32 -14, ptr %err, align 4, !dbg !4869
  br label %if.end33, !dbg !4870

if.end33:                                         ; preds = %if.then32, %if.end29
  %24 = load i32, ptr %err, align 4, !dbg !4871
  %conv34 = sext i32 %24 to i64, !dbg !4871
  store i64 %conv34, ptr %retval, align 8, !dbg !4872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !4872

sw.bb35:                                          ; preds = %if.end21
  %25 = load ptr, ptr %rtc, align 8, !dbg !4873
  %ops_lock36 = getelementptr inbounds %struct.rtc_device, ptr %25, i32 0, i32 4, !dbg !4874
  call void @mutex_unlock(ptr noundef %ops_lock36) #15, !dbg !4875
  %time37 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, !dbg !4876
  %26 = load ptr, ptr %uarg, align 8, !dbg !4878
  %call38 = call i64 @copy_from_user(ptr noundef %time37, ptr noundef %26, i64 noundef 36) #15, !dbg !4879
  %tobool39 = icmp ne i64 %call38, 0, !dbg !4879
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !4880

if.then40:                                        ; preds = %sw.bb35
  store i64 -14, ptr %retval, align 8, !dbg !4881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !4881

if.end41:                                         ; preds = %sw.bb35
  %enabled = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 0, !dbg !4882
  store i8 0, ptr %enabled, align 4, !dbg !4883
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 1, !dbg !4884
  store i8 0, ptr %pending, align 1, !dbg !4885
  %time42 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, !dbg !4886
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %time42, i32 0, i32 6, !dbg !4887
  store i32 -1, ptr %tm_wday, align 4, !dbg !4888
  %time43 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, !dbg !4889
  %tm_yday = getelementptr inbounds %struct.rtc_time, ptr %time43, i32 0, i32 7, !dbg !4890
  store i32 -1, ptr %tm_yday, align 4, !dbg !4891
  %time44 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, !dbg !4892
  %tm_isdst = getelementptr inbounds %struct.rtc_time, ptr %time44, i32 0, i32 8, !dbg !4893
  store i32 -1, ptr %tm_isdst, align 4, !dbg !4894
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #16, !dbg !4895
  call void @llvm.dbg.declare(metadata ptr %now, metadata !4767, metadata !DIExpression()), !dbg !4896
  call void @llvm.lifetime.start.p0(i64 8, ptr %then) #16, !dbg !4895
  call void @llvm.dbg.declare(metadata ptr %then, metadata !4770, metadata !DIExpression()), !dbg !4897
  %27 = load ptr, ptr %rtc, align 8, !dbg !4898
  %call45 = call i32 @rtc_read_time(ptr noundef %27, ptr noundef %tm) #15, !dbg !4899
  store i32 %call45, ptr %err, align 4, !dbg !4900
  %28 = load i32, ptr %err, align 4, !dbg !4901
  %cmp46 = icmp slt i32 %28, 0, !dbg !4903
  br i1 %cmp46, label %if.then48, label %if.end50, !dbg !4904

if.then48:                                        ; preds = %if.end41
  %29 = load i32, ptr %err, align 4, !dbg !4905
  %conv49 = sext i32 %29 to i64, !dbg !4905
  store i64 %conv49, ptr %retval, align 8, !dbg !4906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4906

if.end50:                                         ; preds = %if.end41
  %call51 = call i64 @rtc_tm_to_time64(ptr noundef %tm) #15, !dbg !4907
  store i64 %call51, ptr %now, align 8, !dbg !4908
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3, !dbg !4909
  %30 = load i32, ptr %tm_mday, align 4, !dbg !4909
  %time52 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, !dbg !4910
  %tm_mday53 = getelementptr inbounds %struct.rtc_time, ptr %time52, i32 0, i32 3, !dbg !4911
  store i32 %30, ptr %tm_mday53, align 4, !dbg !4912
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4, !dbg !4913
  %31 = load i32, ptr %tm_mon, align 4, !dbg !4913
  %time54 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, !dbg !4914
  %tm_mon55 = getelementptr inbounds %struct.rtc_time, ptr %time54, i32 0, i32 4, !dbg !4915
  store i32 %31, ptr %tm_mon55, align 4, !dbg !4916
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5, !dbg !4917
  %32 = load i32, ptr %tm_year, align 4, !dbg !4917
  %time56 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, !dbg !4918
  %tm_year57 = getelementptr inbounds %struct.rtc_time, ptr %time56, i32 0, i32 5, !dbg !4919
  store i32 %32, ptr %tm_year57, align 4, !dbg !4920
  %time58 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, !dbg !4921
  %call59 = call i32 @rtc_valid_tm(ptr noundef %time58) #15, !dbg !4922
  store i32 %call59, ptr %err, align 4, !dbg !4923
  %33 = load i32, ptr %err, align 4, !dbg !4924
  %cmp60 = icmp slt i32 %33, 0, !dbg !4926
  br i1 %cmp60, label %if.then62, label %if.end64, !dbg !4927

if.then62:                                        ; preds = %if.end50
  %34 = load i32, ptr %err, align 4, !dbg !4928
  %conv63 = sext i32 %34 to i64, !dbg !4928
  store i64 %conv63, ptr %retval, align 8, !dbg !4929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4929

if.end64:                                         ; preds = %if.end50
  %time65 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, !dbg !4930
  %call66 = call i64 @rtc_tm_to_time64(ptr noundef %time65) #15, !dbg !4931
  store i64 %call66, ptr %then, align 8, !dbg !4932
  %35 = load i64, ptr %then, align 8, !dbg !4933
  %36 = load i64, ptr %now, align 8, !dbg !4935
  %cmp67 = icmp slt i64 %35, %36, !dbg !4936
  br i1 %cmp67, label %if.then69, label %if.end79, !dbg !4937

if.then69:                                        ; preds = %if.end64
  %37 = load i64, ptr %now, align 8, !dbg !4938
  %add = add i64 %37, 86400, !dbg !4940
  call void @rtc_time64_to_tm(i64 noundef %add, ptr noundef %tm) #15, !dbg !4941
  %tm_mday70 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3, !dbg !4942
  %38 = load i32, ptr %tm_mday70, align 4, !dbg !4942
  %time71 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, !dbg !4943
  %tm_mday72 = getelementptr inbounds %struct.rtc_time, ptr %time71, i32 0, i32 3, !dbg !4944
  store i32 %38, ptr %tm_mday72, align 4, !dbg !4945
  %tm_mon73 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4, !dbg !4946
  %39 = load i32, ptr %tm_mon73, align 4, !dbg !4946
  %time74 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, !dbg !4947
  %tm_mon75 = getelementptr inbounds %struct.rtc_time, ptr %time74, i32 0, i32 4, !dbg !4948
  store i32 %39, ptr %tm_mon75, align 4, !dbg !4949
  %tm_year76 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5, !dbg !4950
  %40 = load i32, ptr %tm_year76, align 4, !dbg !4950
  %time77 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, !dbg !4951
  %tm_year78 = getelementptr inbounds %struct.rtc_time, ptr %time77, i32 0, i32 5, !dbg !4952
  store i32 %40, ptr %tm_year78, align 4, !dbg !4953
  br label %if.end79, !dbg !4954

if.end79:                                         ; preds = %if.then69, %if.end64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4955
  br label %cleanup, !dbg !4955

cleanup:                                          ; preds = %if.end79, %if.then62, %if.then48
  call void @llvm.lifetime.end.p0(i64 8, ptr %then) #16, !dbg !4955
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #16, !dbg !4955
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup242 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %41 = load ptr, ptr %rtc, align 8, !dbg !4956
  %call81 = call i32 @rtc_set_alarm(ptr noundef %41, ptr noundef %alarm) #15, !dbg !4957
  %conv82 = sext i32 %call81 to i64, !dbg !4957
  store i64 %conv82, ptr %retval, align 8, !dbg !4958
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !4958

sw.bb83:                                          ; preds = %if.end21
  %42 = load ptr, ptr %rtc, align 8, !dbg !4959
  %ops_lock84 = getelementptr inbounds %struct.rtc_device, ptr %42, i32 0, i32 4, !dbg !4960
  call void @mutex_unlock(ptr noundef %ops_lock84) #15, !dbg !4961
  %43 = load ptr, ptr %rtc, align 8, !dbg !4962
  %call85 = call i32 @rtc_read_time(ptr noundef %43, ptr noundef %tm) #15, !dbg !4963
  store i32 %call85, ptr %err, align 4, !dbg !4964
  %44 = load i32, ptr %err, align 4, !dbg !4965
  %cmp86 = icmp slt i32 %44, 0, !dbg !4967
  br i1 %cmp86, label %if.then88, label %if.end90, !dbg !4968

if.then88:                                        ; preds = %sw.bb83
  %45 = load i32, ptr %err, align 4, !dbg !4969
  %conv89 = sext i32 %45 to i64, !dbg !4969
  store i64 %conv89, ptr %retval, align 8, !dbg !4970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !4970

if.end90:                                         ; preds = %sw.bb83
  %46 = load ptr, ptr %uarg, align 8, !dbg !4971
  %call91 = call i64 @copy_to_user(ptr noundef %46, ptr noundef %tm, i64 noundef 36) #15, !dbg !4973
  %tobool92 = icmp ne i64 %call91, 0, !dbg !4973
  br i1 %tobool92, label %if.then93, label %if.end94, !dbg !4974

if.then93:                                        ; preds = %if.end90
  store i32 -14, ptr %err, align 4, !dbg !4975
  br label %if.end94, !dbg !4976

if.end94:                                         ; preds = %if.then93, %if.end90
  %47 = load i32, ptr %err, align 4, !dbg !4977
  %conv95 = sext i32 %47 to i64, !dbg !4977
  store i64 %conv95, ptr %retval, align 8, !dbg !4978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !4978

sw.bb96:                                          ; preds = %if.end21
  %48 = load ptr, ptr %rtc, align 8, !dbg !4979
  %ops_lock97 = getelementptr inbounds %struct.rtc_device, ptr %48, i32 0, i32 4, !dbg !4980
  call void @mutex_unlock(ptr noundef %ops_lock97) #15, !dbg !4981
  %49 = load ptr, ptr %uarg, align 8, !dbg !4982
  %call98 = call i64 @copy_from_user(ptr noundef %tm, ptr noundef %49, i64 noundef 36) #15, !dbg !4984
  %tobool99 = icmp ne i64 %call98, 0, !dbg !4984
  br i1 %tobool99, label %if.then100, label %if.end101, !dbg !4985

if.then100:                                       ; preds = %sw.bb96
  store i64 -14, ptr %retval, align 8, !dbg !4986
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !4986

if.end101:                                        ; preds = %sw.bb96
  %50 = load ptr, ptr %rtc, align 8, !dbg !4987
  %call102 = call i32 @rtc_set_time(ptr noundef %50, ptr noundef %tm) #15, !dbg !4988
  %conv103 = sext i32 %call102 to i64, !dbg !4988
  store i64 %conv103, ptr %retval, align 8, !dbg !4989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !4989

sw.bb104:                                         ; preds = %if.end21
  %51 = load ptr, ptr %rtc, align 8, !dbg !4990
  %call105 = call i32 @rtc_irq_set_state(ptr noundef %51, i32 noundef 1) #15, !dbg !4991
  store i32 %call105, ptr %err, align 4, !dbg !4992
  br label %sw.epilog239, !dbg !4993

sw.bb106:                                         ; preds = %if.end21
  %52 = load ptr, ptr %rtc, align 8, !dbg !4994
  %call107 = call i32 @rtc_irq_set_state(ptr noundef %52, i32 noundef 0) #15, !dbg !4995
  store i32 %call107, ptr %err, align 4, !dbg !4996
  br label %sw.epilog239, !dbg !4997

sw.bb108:                                         ; preds = %if.end21
  %53 = load ptr, ptr %rtc, align 8, !dbg !4998
  %ops_lock109 = getelementptr inbounds %struct.rtc_device, ptr %53, i32 0, i32 4, !dbg !4999
  call void @mutex_unlock(ptr noundef %ops_lock109) #15, !dbg !5000
  %54 = load ptr, ptr %rtc, align 8, !dbg !5001
  %call110 = call i32 @rtc_alarm_irq_enable(ptr noundef %54, i32 noundef 1) #15, !dbg !5002
  %conv111 = sext i32 %call110 to i64, !dbg !5002
  store i64 %conv111, ptr %retval, align 8, !dbg !5003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !5003

sw.bb112:                                         ; preds = %if.end21
  %55 = load ptr, ptr %rtc, align 8, !dbg !5004
  %ops_lock113 = getelementptr inbounds %struct.rtc_device, ptr %55, i32 0, i32 4, !dbg !5005
  call void @mutex_unlock(ptr noundef %ops_lock113) #15, !dbg !5006
  %56 = load ptr, ptr %rtc, align 8, !dbg !5007
  %call114 = call i32 @rtc_alarm_irq_enable(ptr noundef %56, i32 noundef 0) #15, !dbg !5008
  %conv115 = sext i32 %call114 to i64, !dbg !5008
  store i64 %conv115, ptr %retval, align 8, !dbg !5009
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !5009

sw.bb116:                                         ; preds = %if.end21
  %57 = load ptr, ptr %rtc, align 8, !dbg !5010
  %ops_lock117 = getelementptr inbounds %struct.rtc_device, ptr %57, i32 0, i32 4, !dbg !5011
  call void @mutex_unlock(ptr noundef %ops_lock117) #15, !dbg !5012
  %58 = load ptr, ptr %rtc, align 8, !dbg !5013
  %call118 = call i32 @rtc_update_irq_enable(ptr noundef %58, i32 noundef 1) #15, !dbg !5014
  %conv119 = sext i32 %call118 to i64, !dbg !5014
  store i64 %conv119, ptr %retval, align 8, !dbg !5015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !5015

sw.bb120:                                         ; preds = %if.end21
  %59 = load ptr, ptr %rtc, align 8, !dbg !5016
  %ops_lock121 = getelementptr inbounds %struct.rtc_device, ptr %59, i32 0, i32 4, !dbg !5017
  call void @mutex_unlock(ptr noundef %ops_lock121) #15, !dbg !5018
  %60 = load ptr, ptr %rtc, align 8, !dbg !5019
  %call122 = call i32 @rtc_update_irq_enable(ptr noundef %60, i32 noundef 0) #15, !dbg !5020
  %conv123 = sext i32 %call122 to i64, !dbg !5020
  store i64 %conv123, ptr %retval, align 8, !dbg !5021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !5021

sw.bb124:                                         ; preds = %if.end21
  %61 = load ptr, ptr %rtc, align 8, !dbg !5022
  %62 = load i64, ptr %arg.addr, align 8, !dbg !5023
  %conv125 = trunc i64 %62 to i32, !dbg !5023
  %call126 = call i32 @rtc_irq_set_freq(ptr noundef %61, i32 noundef %conv125) #15, !dbg !5024
  store i32 %call126, ptr %err, align 4, !dbg !5025
  br label %sw.epilog239, !dbg !5026

sw.bb127:                                         ; preds = %if.end21
  call void @might_fault() #15, !dbg !5027
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #16, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !4771, metadata !DIExpression()), !dbg !5028
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #16, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !4774, metadata !DIExpression()), !dbg !5028
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_pu) #16, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !4775, metadata !DIExpression()), !dbg !5028
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #16, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !4776, metadata !DIExpression()), !dbg !5028
  %63 = load ptr, ptr %rtc, align 8, !dbg !5028
  %irq_freq128 = getelementptr inbounds %struct.rtc_device, ptr %63, i32 0, i32 11, !dbg !5028
  %64 = load i32, ptr %irq_freq128, align 8, !dbg !5028
  %conv129 = sext i32 %64 to i64, !dbg !5028
  store i64 %conv129, ptr %__x, align 8, !dbg !5028
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4777, metadata !DIExpression()), !dbg !5028
  %65 = load ptr, ptr %uarg, align 8, !dbg !5028
  store ptr %65, ptr %__ptr, align 8, !dbg !5028
  %66 = load ptr, ptr %__ptr, align 8, !dbg !5028
  store ptr %66, ptr %__ptr_pu, align 8, !dbg !5028
  %67 = load i64, ptr %__x, align 8, !dbg !5028
  store i64 %67, ptr %__val_pu, align 8, !dbg !5028
  %68 = call i64 @llvm.read_register.i64(metadata !4494), !dbg !5028
  %69 = load ptr, ptr %__ptr_pu, align 8, !dbg !5028
  %70 = load i64, ptr %__val_pu, align 8, !dbg !5028
  %71 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %69, i64 %70, i64 8, i64 %68) #16, !dbg !5028, !srcloc !5029
  %asmresult = extractvalue { ptr, i64 } %71, 0, !dbg !5028
  %asmresult130 = extractvalue { ptr, i64 } %71, 1, !dbg !5028
  %72 = ptrtoint ptr %asmresult to i64, !dbg !5028
  %73 = trunc i64 %72 to i32, !dbg !5028
  store i32 %73, ptr %__ret_pu, align 4, !dbg !5028
  call void @llvm.write_register.i64(metadata !4494, i64 %asmresult130), !dbg !5028
  %74 = load ptr, ptr %__ptr, align 8, !dbg !5030
  call void @kmsan_copy_to_user(ptr noundef %74, ptr noundef %__x, i64 noundef 8, i64 noundef 0) #15, !dbg !5030
  %75 = load i32, ptr %__ret_pu, align 4, !dbg !5028
  %conv132 = sext i32 %75 to i64, !dbg !5028
  %expval = call i64 @llvm.expect.i64(i64 %conv132, i64 0), !dbg !5028
  store i64 %expval, ptr %tmp131, align 8, !dbg !5028
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !5027
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #16, !dbg !5027
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_pu) #16, !dbg !5027
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #16, !dbg !5027
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #16, !dbg !5027
  %76 = load i64, ptr %tmp131, align 8, !dbg !5028
  store i64 %76, ptr %tmp, align 8, !dbg !5027
  %77 = load i64, ptr %tmp, align 8, !dbg !5027
  %conv133 = trunc i64 %77 to i32, !dbg !5032
  store i32 %conv133, ptr %err, align 4, !dbg !5033
  br label %sw.epilog239, !dbg !5034

sw.bb134:                                         ; preds = %if.end21
  %78 = load ptr, ptr %rtc, align 8, !dbg !5035
  %ops_lock135 = getelementptr inbounds %struct.rtc_device, ptr %78, i32 0, i32 4, !dbg !5036
  call void @mutex_unlock(ptr noundef %ops_lock135) #15, !dbg !5037
  %79 = load ptr, ptr %uarg, align 8, !dbg !5038
  %call136 = call i64 @copy_from_user(ptr noundef %alarm, ptr noundef %79, i64 noundef 40) #15, !dbg !5040
  %tobool137 = icmp ne i64 %call136, 0, !dbg !5040
  br i1 %tobool137, label %if.then138, label %if.end139, !dbg !5041

if.then138:                                       ; preds = %sw.bb134
  store i64 -14, ptr %retval, align 8, !dbg !5042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !5042

if.end139:                                        ; preds = %sw.bb134
  %80 = load ptr, ptr %rtc, align 8, !dbg !5043
  %call140 = call i32 @rtc_set_alarm(ptr noundef %80, ptr noundef %alarm) #15, !dbg !5044
  %conv141 = sext i32 %call140 to i64, !dbg !5044
  store i64 %conv141, ptr %retval, align 8, !dbg !5045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !5045

sw.bb142:                                         ; preds = %if.end21
  %81 = load ptr, ptr %rtc, align 8, !dbg !5046
  %ops_lock143 = getelementptr inbounds %struct.rtc_device, ptr %81, i32 0, i32 4, !dbg !5047
  call void @mutex_unlock(ptr noundef %ops_lock143) #15, !dbg !5048
  %82 = load ptr, ptr %rtc, align 8, !dbg !5049
  %call144 = call i32 @rtc_read_alarm(ptr noundef %82, ptr noundef %alarm) #15, !dbg !5050
  store i32 %call144, ptr %err, align 4, !dbg !5051
  %83 = load i32, ptr %err, align 4, !dbg !5052
  %cmp145 = icmp slt i32 %83, 0, !dbg !5054
  br i1 %cmp145, label %if.then147, label %if.end149, !dbg !5055

if.then147:                                       ; preds = %sw.bb142
  %84 = load i32, ptr %err, align 4, !dbg !5056
  %conv148 = sext i32 %84 to i64, !dbg !5056
  store i64 %conv148, ptr %retval, align 8, !dbg !5057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !5057

if.end149:                                        ; preds = %sw.bb142
  %85 = load ptr, ptr %uarg, align 8, !dbg !5058
  %call150 = call i64 @copy_to_user(ptr noundef %85, ptr noundef %alarm, i64 noundef 40) #15, !dbg !5060
  %tobool151 = icmp ne i64 %call150, 0, !dbg !5060
  br i1 %tobool151, label %if.then152, label %if.end153, !dbg !5061

if.then152:                                       ; preds = %if.end149
  store i32 -14, ptr %err, align 4, !dbg !5062
  br label %if.end153, !dbg !5063

if.end153:                                        ; preds = %if.then152, %if.end149
  %86 = load i32, ptr %err, align 4, !dbg !5064
  %conv154 = sext i32 %86 to i64, !dbg !5064
  store i64 %conv154, ptr %retval, align 8, !dbg !5065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !5065

sw.bb155:                                         ; preds = %if.end21
  %87 = load ptr, ptr %uarg, align 8, !dbg !5066
  %call156 = call i64 @copy_from_user(ptr noundef %param, ptr noundef %87, i64 noundef 24) #15, !dbg !5068
  %tobool157 = icmp ne i64 %call156, 0, !dbg !5068
  br i1 %tobool157, label %if.then158, label %if.end160, !dbg !5069

if.then158:                                       ; preds = %sw.bb155
  %88 = load ptr, ptr %rtc, align 8, !dbg !5070
  %ops_lock159 = getelementptr inbounds %struct.rtc_device, ptr %88, i32 0, i32 4, !dbg !5072
  call void @mutex_unlock(ptr noundef %ops_lock159) #15, !dbg !5073
  store i64 -14, ptr %retval, align 8, !dbg !5074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !5074

if.end160:                                        ; preds = %sw.bb155
  %param161 = getelementptr inbounds %struct.rtc_param, ptr %param, i32 0, i32 0, !dbg !5075
  %89 = load i64, ptr %param161, align 8, !dbg !5075
  switch i64 %89, label %sw.default [
    i64 0, label %sw.bb162
    i64 1, label %sw.bb167
  ], !dbg !5076

sw.bb162:                                         ; preds = %if.end160
  %index = getelementptr inbounds %struct.rtc_param, ptr %param, i32 0, i32 2, !dbg !5077
  %90 = load i32, ptr %index, align 8, !dbg !5077
  %cmp163 = icmp ne i32 %90, 0, !dbg !5079
  br i1 %cmp163, label %if.then165, label %if.end166, !dbg !5080

if.then165:                                       ; preds = %sw.bb162
  store i32 -22, ptr %err, align 4, !dbg !5081
  br label %if.end166, !dbg !5082

if.end166:                                        ; preds = %if.then165, %sw.bb162
  %91 = load ptr, ptr %rtc, align 8, !dbg !5083
  %features = getelementptr inbounds %struct.rtc_device, ptr %91, i32 0, i32 20, !dbg !5084
  %arrayidx = getelementptr [1 x i64], ptr %features, i64 0, i64 0, !dbg !5083
  %92 = load i64, ptr %arrayidx, align 8, !dbg !5083
  %93 = getelementptr inbounds %struct.rtc_param, ptr %param, i32 0, i32 1, !dbg !5085
  store i64 %92, ptr %93, align 8, !dbg !5086
  br label %sw.epilog189, !dbg !5087

sw.bb167:                                         ; preds = %if.end160
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #16, !dbg !5088
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !4778, metadata !DIExpression()), !dbg !5089
  %94 = load ptr, ptr %rtc, align 8, !dbg !5090
  %ops_lock168 = getelementptr inbounds %struct.rtc_device, ptr %94, i32 0, i32 4, !dbg !5091
  call void @mutex_unlock(ptr noundef %ops_lock168) #15, !dbg !5092
  %index169 = getelementptr inbounds %struct.rtc_param, ptr %param, i32 0, i32 2, !dbg !5093
  %95 = load i32, ptr %index169, align 8, !dbg !5093
  %cmp170 = icmp ne i32 %95, 0, !dbg !5095
  br i1 %cmp170, label %if.then172, label %if.end173, !dbg !5096

if.then172:                                       ; preds = %sw.bb167
  store i64 -22, ptr %retval, align 8, !dbg !5097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup180, !dbg !5097

if.end173:                                        ; preds = %sw.bb167
  %96 = load ptr, ptr %rtc, align 8, !dbg !5098
  %call174 = call i32 @rtc_read_offset(ptr noundef %96, ptr noundef %offset) #15, !dbg !5099
  store i32 %call174, ptr %err, align 4, !dbg !5100
  %97 = load ptr, ptr %rtc, align 8, !dbg !5101
  %ops_lock175 = getelementptr inbounds %struct.rtc_device, ptr %97, i32 0, i32 4, !dbg !5102
  call void @mutex_lock(ptr noundef %ops_lock175) #15, !dbg !5103
  %98 = load i32, ptr %err, align 4, !dbg !5104
  %cmp176 = icmp eq i32 %98, 0, !dbg !5106
  br i1 %cmp176, label %if.then178, label %if.end179, !dbg !5107

if.then178:                                       ; preds = %if.end173
  %99 = load i64, ptr %offset, align 8, !dbg !5108
  %100 = getelementptr inbounds %struct.rtc_param, ptr %param, i32 0, i32 1, !dbg !5109
  store i64 %99, ptr %100, align 8, !dbg !5110
  br label %if.end179, !dbg !5111

if.end179:                                        ; preds = %if.then178, %if.end173
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup180, !dbg !5112

cleanup180:                                       ; preds = %if.end179, %if.then172
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #16, !dbg !5113
  %cleanup.dest181 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest181, label %cleanup242 [
    i32 5, label %sw.epilog189
  ]

sw.default:                                       ; preds = %if.end160
  %101 = load ptr, ptr %rtc, align 8, !dbg !5114
  %ops182 = getelementptr inbounds %struct.rtc_device, ptr %101, i32 0, i32 3, !dbg !5116
  %102 = load ptr, ptr %ops182, align 8, !dbg !5116
  %param_get = getelementptr inbounds %struct.rtc_class_ops, ptr %102, i32 0, i32 9, !dbg !5117
  %103 = load ptr, ptr %param_get, align 8, !dbg !5117
  %tobool183 = icmp ne ptr %103, null, !dbg !5114
  br i1 %tobool183, label %if.then184, label %if.else, !dbg !5118

if.then184:                                       ; preds = %sw.default
  %104 = load ptr, ptr %rtc, align 8, !dbg !5119
  %ops185 = getelementptr inbounds %struct.rtc_device, ptr %104, i32 0, i32 3, !dbg !5120
  %105 = load ptr, ptr %ops185, align 8, !dbg !5120
  %param_get186 = getelementptr inbounds %struct.rtc_class_ops, ptr %105, i32 0, i32 9, !dbg !5121
  %106 = load ptr, ptr %param_get186, align 8, !dbg !5121
  %107 = load ptr, ptr %rtc, align 8, !dbg !5122
  %dev = getelementptr inbounds %struct.rtc_device, ptr %107, i32 0, i32 0, !dbg !5123
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1, !dbg !5124
  %108 = load ptr, ptr %parent, align 8, !dbg !5124
  %call187 = call i32 %106(ptr noundef %108, ptr noundef %param) #15, !dbg !5119
  store i32 %call187, ptr %err, align 4, !dbg !5125
  br label %if.end188, !dbg !5126

if.else:                                          ; preds = %sw.default
  store i32 -22, ptr %err, align 4, !dbg !5127
  br label %if.end188

if.end188:                                        ; preds = %if.else, %if.then184
  br label %sw.epilog189, !dbg !5128

sw.epilog189:                                     ; preds = %if.end188, %cleanup180, %if.end166
  %109 = load i32, ptr %err, align 4, !dbg !5129
  %tobool190 = icmp ne i32 %109, 0, !dbg !5129
  br i1 %tobool190, label %if.end196, label %if.then191, !dbg !5131

if.then191:                                       ; preds = %sw.epilog189
  %110 = load ptr, ptr %uarg, align 8, !dbg !5132
  %call192 = call i64 @copy_to_user(ptr noundef %110, ptr noundef %param, i64 noundef 24) #15, !dbg !5134
  %tobool193 = icmp ne i64 %call192, 0, !dbg !5134
  br i1 %tobool193, label %if.then194, label %if.end195, !dbg !5135

if.then194:                                       ; preds = %if.then191
  store i32 -14, ptr %err, align 4, !dbg !5136
  br label %if.end195, !dbg !5137

if.end195:                                        ; preds = %if.then194, %if.then191
  br label %if.end196, !dbg !5138

if.end196:                                        ; preds = %if.end195, %sw.epilog189
  br label %sw.epilog239, !dbg !5139

sw.bb197:                                         ; preds = %if.end21
  %111 = load ptr, ptr %uarg, align 8, !dbg !5140
  %call198 = call i64 @copy_from_user(ptr noundef %param, ptr noundef %111, i64 noundef 24) #15, !dbg !5142
  %tobool199 = icmp ne i64 %call198, 0, !dbg !5142
  br i1 %tobool199, label %if.then200, label %if.end202, !dbg !5143

if.then200:                                       ; preds = %sw.bb197
  %112 = load ptr, ptr %rtc, align 8, !dbg !5144
  %ops_lock201 = getelementptr inbounds %struct.rtc_device, ptr %112, i32 0, i32 4, !dbg !5146
  call void @mutex_unlock(ptr noundef %ops_lock201) #15, !dbg !5147
  store i64 -14, ptr %retval, align 8, !dbg !5148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !5148

if.end202:                                        ; preds = %sw.bb197
  %param203 = getelementptr inbounds %struct.rtc_param, ptr %param, i32 0, i32 0, !dbg !5149
  %113 = load i64, ptr %param203, align 8, !dbg !5149
  switch i64 %113, label %sw.default214 [
    i64 0, label %sw.bb204
    i64 1, label %sw.bb205
  ], !dbg !5150

sw.bb204:                                         ; preds = %if.end202
  store i32 -22, ptr %err, align 4, !dbg !5151
  br label %sw.epilog225, !dbg !5153

sw.bb205:                                         ; preds = %if.end202
  %114 = load ptr, ptr %rtc, align 8, !dbg !5154
  %ops_lock206 = getelementptr inbounds %struct.rtc_device, ptr %114, i32 0, i32 4, !dbg !5155
  call void @mutex_unlock(ptr noundef %ops_lock206) #15, !dbg !5156
  %index207 = getelementptr inbounds %struct.rtc_param, ptr %param, i32 0, i32 2, !dbg !5157
  %115 = load i32, ptr %index207, align 8, !dbg !5157
  %cmp208 = icmp ne i32 %115, 0, !dbg !5159
  br i1 %cmp208, label %if.then210, label %if.end211, !dbg !5160

if.then210:                                       ; preds = %sw.bb205
  store i64 -22, ptr %retval, align 8, !dbg !5161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !5161

if.end211:                                        ; preds = %sw.bb205
  %116 = load ptr, ptr %rtc, align 8, !dbg !5162
  %117 = getelementptr inbounds %struct.rtc_param, ptr %param, i32 0, i32 1, !dbg !5163
  %118 = load i64, ptr %117, align 8, !dbg !5163
  %call212 = call i32 @rtc_set_offset(ptr noundef %116, i64 noundef %118) #15, !dbg !5164
  %conv213 = sext i32 %call212 to i64, !dbg !5164
  store i64 %conv213, ptr %retval, align 8, !dbg !5165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !5165

sw.default214:                                    ; preds = %if.end202
  %119 = load ptr, ptr %rtc, align 8, !dbg !5166
  %ops215 = getelementptr inbounds %struct.rtc_device, ptr %119, i32 0, i32 3, !dbg !5168
  %120 = load ptr, ptr %ops215, align 8, !dbg !5168
  %param_set = getelementptr inbounds %struct.rtc_class_ops, ptr %120, i32 0, i32 10, !dbg !5169
  %121 = load ptr, ptr %param_set, align 8, !dbg !5169
  %tobool216 = icmp ne ptr %121, null, !dbg !5166
  br i1 %tobool216, label %if.then217, label %if.else223, !dbg !5170

if.then217:                                       ; preds = %sw.default214
  %122 = load ptr, ptr %rtc, align 8, !dbg !5171
  %ops218 = getelementptr inbounds %struct.rtc_device, ptr %122, i32 0, i32 3, !dbg !5172
  %123 = load ptr, ptr %ops218, align 8, !dbg !5172
  %param_set219 = getelementptr inbounds %struct.rtc_class_ops, ptr %123, i32 0, i32 10, !dbg !5173
  %124 = load ptr, ptr %param_set219, align 8, !dbg !5173
  %125 = load ptr, ptr %rtc, align 8, !dbg !5174
  %dev220 = getelementptr inbounds %struct.rtc_device, ptr %125, i32 0, i32 0, !dbg !5175
  %parent221 = getelementptr inbounds %struct.device, ptr %dev220, i32 0, i32 1, !dbg !5176
  %126 = load ptr, ptr %parent221, align 8, !dbg !5176
  %call222 = call i32 %124(ptr noundef %126, ptr noundef %param) #15, !dbg !5171
  store i32 %call222, ptr %err, align 4, !dbg !5177
  br label %if.end224, !dbg !5178

if.else223:                                       ; preds = %sw.default214
  store i32 -22, ptr %err, align 4, !dbg !5179
  br label %if.end224

if.end224:                                        ; preds = %if.else223, %if.then217
  br label %sw.epilog225, !dbg !5180

sw.epilog225:                                     ; preds = %if.end224, %sw.bb204
  br label %sw.epilog239, !dbg !5181

sw.default226:                                    ; preds = %if.end21
  %127 = load ptr, ptr %ops, align 8, !dbg !5182
  %ioctl = getelementptr inbounds %struct.rtc_class_ops, ptr %127, i32 0, i32 0, !dbg !5184
  %128 = load ptr, ptr %ioctl, align 8, !dbg !5184
  %tobool227 = icmp ne ptr %128, null, !dbg !5182
  br i1 %tobool227, label %if.then228, label %if.else237, !dbg !5185

if.then228:                                       ; preds = %sw.default226
  %129 = load ptr, ptr %ops, align 8, !dbg !5186
  %ioctl229 = getelementptr inbounds %struct.rtc_class_ops, ptr %129, i32 0, i32 0, !dbg !5188
  %130 = load ptr, ptr %ioctl229, align 8, !dbg !5188
  %131 = load ptr, ptr %rtc, align 8, !dbg !5189
  %dev230 = getelementptr inbounds %struct.rtc_device, ptr %131, i32 0, i32 0, !dbg !5190
  %parent231 = getelementptr inbounds %struct.device, ptr %dev230, i32 0, i32 1, !dbg !5191
  %132 = load ptr, ptr %parent231, align 8, !dbg !5191
  %133 = load i32, ptr %cmd.addr, align 4, !dbg !5192
  %134 = load i64, ptr %arg.addr, align 8, !dbg !5193
  %call232 = call i32 %130(ptr noundef %132, i32 noundef %133, i64 noundef %134) #15, !dbg !5186
  store i32 %call232, ptr %err, align 4, !dbg !5194
  %135 = load i32, ptr %err, align 4, !dbg !5195
  %cmp233 = icmp eq i32 %135, -515, !dbg !5197
  br i1 %cmp233, label %if.then235, label %if.end236, !dbg !5198

if.then235:                                       ; preds = %if.then228
  store i32 -25, ptr %err, align 4, !dbg !5199
  br label %if.end236, !dbg !5200

if.end236:                                        ; preds = %if.then235, %if.then228
  br label %if.end238, !dbg !5201

if.else237:                                       ; preds = %sw.default226
  store i32 -25, ptr %err, align 4, !dbg !5202
  br label %if.end238

if.end238:                                        ; preds = %if.else237, %if.end236
  br label %sw.epilog239, !dbg !5204

sw.epilog239:                                     ; preds = %if.end238, %sw.epilog225, %if.end196, %sw.bb127, %sw.bb124, %sw.bb106, %sw.bb104
  br label %done, !dbg !5205

done:                                             ; preds = %sw.epilog239, %if.then20
  call void @llvm.dbg.label(metadata !4781), !dbg !5206
  %136 = load ptr, ptr %rtc, align 8, !dbg !5207
  %ops_lock240 = getelementptr inbounds %struct.rtc_device, ptr %136, i32 0, i32 4, !dbg !5208
  call void @mutex_unlock(ptr noundef %ops_lock240) #15, !dbg !5209
  %137 = load i32, ptr %err, align 4, !dbg !5210
  %conv241 = sext i32 %137 to i64, !dbg !5210
  store i64 %conv241, ptr %retval, align 8, !dbg !5211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup242, !dbg !5211

cleanup242:                                       ; preds = %done, %if.end211, %if.then210, %if.then200, %cleanup180, %if.then158, %if.end153, %if.then147, %if.end139, %if.then138, %sw.bb120, %sw.bb116, %sw.bb112, %sw.bb108, %if.end101, %if.then100, %if.end94, %if.then88, %cleanup.cont, %cleanup, %if.then40, %if.end33, %if.then27, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %uarg) #16, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 24, ptr %param) #16, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 40, ptr %alarm) #16, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 36, ptr %tm) #16, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #16, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #16, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5212
  %138 = load i64, ptr %retval, align 8, !dbg !5212
  ret i64 %138, !dbg !5212
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rtc_dev_compat_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5213 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %rtc = alloca ptr, align 8
  %uarg = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5215, metadata !DIExpression()), !dbg !5228
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5216, metadata !DIExpression()), !dbg !5229
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5217, metadata !DIExpression()), !dbg !5230
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #16, !dbg !5231
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !5218, metadata !DIExpression()), !dbg !5232
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5233
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5234
  %1 = load ptr, ptr %private_data, align 8, !dbg !5234
  store ptr %1, ptr %rtc, align 8, !dbg !5232
  call void @llvm.lifetime.start.p0(i64 8, ptr %uarg) #16, !dbg !5235
  call void @llvm.dbg.declare(metadata ptr %uarg, metadata !5219, metadata !DIExpression()), !dbg !5236
  %2 = load i64, ptr %arg.addr, align 8, !dbg !5237
  %conv = trunc i64 %2 to i32, !dbg !5237
  %call = call ptr @compat_ptr(i32 noundef %conv) #15, !dbg !5238
  store ptr %call, ptr %uarg, align 8, !dbg !5236
  %3 = load i32, ptr %cmd.addr, align 4, !dbg !5239
  switch i32 %3, label %sw.epilog [
    i32 -2147192821, label %sw.bb
    i32 1074032652, label %sw.bb4
    i32 1074032654, label %sw.bb6
  ], !dbg !5240

sw.bb:                                            ; preds = %entry
  call void @might_fault() #15, !dbg !5241
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #16, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5220, metadata !DIExpression()), !dbg !5242
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #16, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5224, metadata !DIExpression()), !dbg !5242
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #16, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5225, metadata !DIExpression()), !dbg !5242
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #16, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5226, metadata !DIExpression()), !dbg !5242
  %4 = load ptr, ptr %rtc, align 8, !dbg !5242
  %irq_freq = getelementptr inbounds %struct.rtc_device, ptr %4, i32 0, i32 11, !dbg !5242
  %5 = load i32, ptr %irq_freq, align 8, !dbg !5242
  store i32 %5, ptr %__x, align 4, !dbg !5242
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5227, metadata !DIExpression()), !dbg !5242
  %6 = load ptr, ptr %uarg, align 8, !dbg !5242
  store ptr %6, ptr %__ptr, align 8, !dbg !5242
  %7 = load ptr, ptr %__ptr, align 8, !dbg !5242
  store ptr %7, ptr %__ptr_pu, align 8, !dbg !5242
  %8 = load i32, ptr %__x, align 4, !dbg !5242
  store i32 %8, ptr %__val_pu, align 4, !dbg !5242
  %9 = call i64 @llvm.read_register.i64(metadata !4494), !dbg !5242
  %10 = load ptr, ptr %__ptr_pu, align 8, !dbg !5242
  %11 = load i32, ptr %__val_pu, align 4, !dbg !5242
  %12 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %10, i32 %11, i64 4, i64 %9) #16, !dbg !5242, !srcloc !5243
  %asmresult = extractvalue { ptr, i64 } %12, 0, !dbg !5242
  %asmresult1 = extractvalue { ptr, i64 } %12, 1, !dbg !5242
  %13 = ptrtoint ptr %asmresult to i64, !dbg !5242
  %14 = trunc i64 %13 to i32, !dbg !5242
  store i32 %14, ptr %__ret_pu, align 4, !dbg !5242
  call void @llvm.write_register.i64(metadata !4494, i64 %asmresult1), !dbg !5242
  %15 = load ptr, ptr %__ptr, align 8, !dbg !5244
  call void @kmsan_copy_to_user(ptr noundef %15, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #15, !dbg !5244
  %16 = load i32, ptr %__ret_pu, align 4, !dbg !5242
  %conv3 = sext i32 %16 to i64, !dbg !5242
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !5242
  store i64 %expval, ptr %tmp2, align 8, !dbg !5242
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !5241
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #16, !dbg !5241
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #16, !dbg !5241
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #16, !dbg !5241
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #16, !dbg !5241
  %17 = load i64, ptr %tmp2, align 8, !dbg !5242
  store i64 %17, ptr %tmp, align 8, !dbg !5241
  %18 = load i64, ptr %tmp, align 8, !dbg !5241
  store i64 %18, ptr %retval, align 8, !dbg !5246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5246

sw.bb4:                                           ; preds = %entry
  %19 = load ptr, ptr %file.addr, align 8, !dbg !5247
  %20 = load i64, ptr %arg.addr, align 8, !dbg !5248
  %call5 = call i64 @rtc_dev_ioctl(ptr noundef %19, i32 noundef 1074294796, i64 noundef %20) #15, !dbg !5249
  store i64 %call5, ptr %retval, align 8, !dbg !5250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5250

sw.bb6:                                           ; preds = %entry
  %21 = load ptr, ptr %file.addr, align 8, !dbg !5251
  %22 = load i64, ptr %arg.addr, align 8, !dbg !5252
  %call7 = call i64 @rtc_dev_ioctl(ptr noundef %21, i32 noundef 1074294798, i64 noundef %22) #15, !dbg !5253
  store i64 %call7, ptr %retval, align 8, !dbg !5254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5254

sw.epilog:                                        ; preds = %entry
  %23 = load ptr, ptr %file.addr, align 8, !dbg !5255
  %24 = load i32, ptr %cmd.addr, align 4, !dbg !5256
  %25 = load ptr, ptr %uarg, align 8, !dbg !5257
  %26 = ptrtoint ptr %25 to i64, !dbg !5258
  %call8 = call i64 @rtc_dev_ioctl(ptr noundef %23, i32 noundef %24, i64 noundef %26) #15, !dbg !5259
  store i64 %call8, ptr %retval, align 8, !dbg !5260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5260

cleanup:                                          ; preds = %sw.epilog, %sw.bb6, %sw.bb4, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %uarg) #16, !dbg !5261
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #16, !dbg !5261
  %27 = load i64, ptr %retval, align 8, !dbg !5261
  ret i64 %27, !dbg !5261
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtc_dev_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5262 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %rtc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5264, metadata !DIExpression()), !dbg !5269
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5265, metadata !DIExpression()), !dbg !5270
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #16, !dbg !5271
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !5266, metadata !DIExpression()), !dbg !5272
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5273
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5267, metadata !DIExpression()), !dbg !5273
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5273
  %1 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43, !dbg !5273
  %2 = load ptr, ptr %1, align 8, !dbg !5273
  store ptr %2, ptr %__mptr, align 8, !dbg !5273
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5273
  %add.ptr = getelementptr i8, ptr %3, i64 -784, !dbg !5273
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5273
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5274
  %4 = load ptr, ptr %tmp, align 8, !dbg !5273
  store ptr %4, ptr %rtc, align 8, !dbg !5272
  %5 = load ptr, ptr %rtc, align 8, !dbg !5275
  %flags = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 6, !dbg !5277
  %call = call zeroext i1 @test_and_set_bit_lock(i64 noundef 0, ptr noundef %flags) #15, !dbg !5278
  br i1 %call, label %if.then, label %if.end, !dbg !5279

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !5280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5280

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %rtc, align 8, !dbg !5281
  %7 = load ptr, ptr %file.addr, align 8, !dbg !5282
  %private_data = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 15, !dbg !5283
  store ptr %6, ptr %private_data, align 8, !dbg !5284
  %8 = load ptr, ptr %rtc, align 8, !dbg !5285
  %irq_lock = getelementptr inbounds %struct.rtc_device, ptr %8, i32 0, i32 8, !dbg !5286
  call void @spin_lock_irq(ptr noundef %irq_lock) #15, !dbg !5287
  %9 = load ptr, ptr %rtc, align 8, !dbg !5288
  %irq_data = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 7, !dbg !5289
  store i64 0, ptr %irq_data, align 8, !dbg !5290
  %10 = load ptr, ptr %rtc, align 8, !dbg !5291
  %irq_lock1 = getelementptr inbounds %struct.rtc_device, ptr %10, i32 0, i32 8, !dbg !5292
  call void @spin_unlock_irq(ptr noundef %irq_lock1) #15, !dbg !5293
  store i32 0, ptr %retval, align 4, !dbg !5294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5294

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #16, !dbg !5295
  %11 = load i32, ptr %retval, align 4, !dbg !5295
  ret i32 %11, !dbg !5295
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtc_dev_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5296 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %rtc = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5298, metadata !DIExpression()), !dbg !5301
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5299, metadata !DIExpression()), !dbg !5302
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #16, !dbg !5303
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !5300, metadata !DIExpression()), !dbg !5304
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5305
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5306
  %1 = load ptr, ptr %private_data, align 8, !dbg !5306
  store ptr %1, ptr %rtc, align 8, !dbg !5304
  %2 = load ptr, ptr %file.addr, align 8, !dbg !5307
  %call = call i64 @rtc_dev_ioctl(ptr noundef %2, i32 noundef 28676, i64 noundef 0) #15, !dbg !5308
  %3 = load ptr, ptr %rtc, align 8, !dbg !5309
  %call1 = call i32 @rtc_update_irq_enable(ptr noundef %3, i32 noundef 0) #15, !dbg !5310
  %4 = load ptr, ptr %rtc, align 8, !dbg !5311
  %call2 = call i32 @rtc_irq_set_state(ptr noundef %4, i32 noundef 0) #15, !dbg !5312
  %5 = load ptr, ptr %rtc, align 8, !dbg !5313
  %flags = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 6, !dbg !5314
  call void @clear_bit_unlock(i64 noundef 0, ptr noundef %flags) #15, !dbg !5315
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #16, !dbg !5316
  ret i32 0, !dbg !5317
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtc_dev_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #0 align 16 !dbg !5318 {
entry:
  %fd.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %on.addr = alloca i32, align 4
  %rtc = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !5320, metadata !DIExpression()), !dbg !5324
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5321, metadata !DIExpression()), !dbg !5325
  store i32 %on, ptr %on.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %on.addr, metadata !5322, metadata !DIExpression()), !dbg !5326
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #16, !dbg !5327
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !5323, metadata !DIExpression()), !dbg !5328
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5329
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5330
  %1 = load ptr, ptr %private_data, align 8, !dbg !5330
  store ptr %1, ptr %rtc, align 8, !dbg !5328
  %2 = load i32, ptr %fd.addr, align 4, !dbg !5331
  %3 = load ptr, ptr %file.addr, align 8, !dbg !5332
  %4 = load i32, ptr %on.addr, align 4, !dbg !5333
  %5 = load ptr, ptr %rtc, align 8, !dbg !5334
  %async_queue = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 10, !dbg !5335
  %call = call i32 @fasync_helper(i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %async_queue) #15, !dbg !5336
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #16, !dbg !5337
  ret i32 %call, !dbg !5338
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !5339 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #16, !dbg !5350
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5344, metadata !DIExpression()), !dbg !5350
  br label %do.body, !dbg !5350

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5351
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5346, metadata !DIExpression()), !dbg !5351
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5351
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5351
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5350
  br label %do.cond, !dbg !5351

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5351

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #16, !dbg !5352
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5348, metadata !DIExpression()), !dbg !5352
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #18, !dbg !5352, !srcloc !5353
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5352
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5352
  %3 = inttoptr i64 %2 to ptr, !dbg !5352
  store ptr %3, ptr %tmp, align 8, !dbg !5352
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #16, !dbg !5350
  %4 = load ptr, ptr %tmp, align 8, !dbg !5352
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5350
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5350
  store ptr %5, ptr %tmp1, align 8, !dbg !5350
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #16, !dbg !5354
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5350
  ret ptr %6, !dbg !5355
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5356 dso_local void @add_wait_queue(ptr noundef, ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #6 align 16 !dbg !5360 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5368
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5368
  call void @_raw_spin_lock_irq(ptr noundef %1) #15, !dbg !5368
  ret void, !dbg !5369
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #6 align 16 !dbg !5370 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5374
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5374
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15, !dbg !5374
  ret void, !dbg !5375
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #7 align 16 !dbg !5376 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5380, metadata !DIExpression()), !dbg !5381
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5382
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #15, !dbg !5382
  %tobool = icmp ne i32 %call, 0, !dbg !5382
  %lnot = xor i1 %tobool, true, !dbg !5382
  %lnot1 = xor i1 %lnot, true, !dbg !5382
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5382
  %conv = sext i32 %lnot.ext to i64, !dbg !5382
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5382
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5382
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5384

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5385
  br label %return, !dbg !5385

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5386
  %call3 = call i32 @task_sigpending(ptr noundef %1) #15, !dbg !5387
  store i32 %call3, ptr %retval, align 4, !dbg !5388
  br label %return, !dbg !5388

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5389
  ret i32 %2, !dbg !5389
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5390 dso_local void @schedule() #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5391 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5399, metadata !DIExpression()), !dbg !5401
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5400, metadata !DIExpression()), !dbg !5402
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5403
  %1 = load i64, ptr %size.addr, align 8, !dbg !5404
  %conv = trunc i64 %1 to i32, !dbg !5404
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !5405
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5406
  %3 = load i64, ptr %size.addr, align 8, !dbg !5406
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !5406
  ret void, !dbg !5407
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5408 dso_local void @remove_wait_queue(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #7 align 16 !dbg !5409 {
entry:
  ret void, !dbg !5411
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #7 align 16 !dbg !5412 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5417, metadata !DIExpression()), !dbg !5421
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5418, metadata !DIExpression()), !dbg !5422
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !5419, metadata !DIExpression()), !dbg !5423
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !5420, metadata !DIExpression()), !dbg !5424
  ret void, !dbg !5425
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5426 dso_local void @_raw_spin_lock_irq(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5431 dso_local void @_raw_spin_unlock_irq(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #7 align 16 !dbg !5432 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5436, metadata !DIExpression()), !dbg !5438
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5437, metadata !DIExpression()), !dbg !5439
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5440
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !5440
  %1 = load i32, ptr %flag.addr, align 4, !dbg !5441
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #15, !dbg !5442
  ret i32 %call, !dbg !5443
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #7 align 16 !dbg !5444 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5448
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #15, !dbg !5448
  %tobool = icmp ne i32 %call, 0, !dbg !5448
  %lnot = xor i1 %tobool, true, !dbg !5448
  %lnot1 = xor i1 %lnot, true, !dbg !5448
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5448
  %conv = sext i32 %lnot.ext to i64, !dbg !5448
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5448
  %conv2 = trunc i64 %expval to i32, !dbg !5448
  ret i32 %conv2, !dbg !5449
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #7 align 16 !dbg !5450 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5455, metadata !DIExpression()), !dbg !5457
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5456, metadata !DIExpression()), !dbg !5458
  %0 = load i32, ptr %flag.addr, align 4, !dbg !5459
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5459
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5459

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !5459
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !5459
  %3 = ptrtoint ptr %flags to i64, !dbg !5459
  %cmp = icmp ne i64 %3, 0, !dbg !5459
  %conv = zext i1 %cmp to i32, !dbg !5459
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5459
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !5459

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !5459
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !5459
  %6 = ptrtoint ptr %flags2 to i64, !dbg !5459
  %cmp3 = icmp ne i64 %6, 0, !dbg !5459
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5459

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !5459
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !5459
  %8 = load i64, ptr %flags6, align 8, !dbg !5459
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5459
  br i1 %9, label %cond.true, label %cond.false, !dbg !5459

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !5459
  %conv7 = sext i32 %10 to i64, !dbg !5459
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !5459
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !5459
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #15, !dbg !5459
  %conv9 = zext i1 %call to i32, !dbg !5459
  br label %cond.end, !dbg !5459

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !5459
  %conv10 = sext i32 %12 to i64, !dbg !5459
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !5459
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !5459
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #15, !dbg !5459
  %conv13 = zext i1 %call12 to i32, !dbg !5459
  br label %cond.end, !dbg !5459

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !5459
  ret i32 %cond, !dbg !5460
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5461 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5469, metadata !DIExpression()), !dbg !5474
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5470, metadata !DIExpression()), !dbg !5475
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5476
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5471, metadata !DIExpression()), !dbg !5477
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5478
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5479
  %div = udiv i64 %1, 64, !dbg !5479
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5480
  store ptr %add.ptr, ptr %p, align 8, !dbg !5477
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !5481
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5472, metadata !DIExpression()), !dbg !5482
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5483
  %rem = urem i64 %2, 64, !dbg !5483
  %shl = shl i64 1, %rem, !dbg !5483
  store i64 %shl, ptr %mask, align 8, !dbg !5482
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !5484
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5473, metadata !DIExpression()), !dbg !5485
  %3 = load ptr, ptr %p, align 8, !dbg !5486
  %4 = load i64, ptr %3, align 8, !dbg !5487
  store i64 %4, ptr %val, align 8, !dbg !5485
  %5 = load i64, ptr %val, align 8, !dbg !5488
  %6 = load i64, ptr %mask, align 8, !dbg !5489
  %and = and i64 %5, %6, !dbg !5490
  %tobool = icmp ne i64 %and, 0, !dbg !5491
  %lnot = xor i1 %tobool, true, !dbg !5491
  %lnot1 = xor i1 %lnot, true, !dbg !5492
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !5493
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5493
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5493
  ret i1 %lnot1, !dbg !5494
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5495 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5498, metadata !DIExpression()), !dbg !5500
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5499, metadata !DIExpression()), !dbg !5501
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5502
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5503
  %div = udiv i64 %1, 64, !dbg !5503
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5504
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !5505
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5506
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5507
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !5508
  ret i1 %call, !dbg !5509
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5510 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5512, metadata !DIExpression()), !dbg !5514
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5513, metadata !DIExpression()), !dbg !5515
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5516
  %1 = load i64, ptr %size.addr, align 8, !dbg !5517
  %conv = trunc i64 %1 to i32, !dbg !5517
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !5518
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5519
  %3 = load i64, ptr %size.addr, align 8, !dbg !5519
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !5519
  ret void, !dbg !5520
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5521 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5524, metadata !DIExpression()), !dbg !5526
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5525, metadata !DIExpression()), !dbg !5527
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5528
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5529
  br i1 %1, label %cond.true, label %cond.false, !dbg !5529

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5530
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5531
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !5532
  %conv = zext i1 %call to i32, !dbg !5532
  br label %cond.end, !dbg !5529

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5533
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5534
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !5535
  %conv2 = zext i1 %call1 to i32, !dbg !5535
  br label %cond.end, !dbg !5529

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5529
  %tobool = icmp ne i32 %cond, 0, !dbg !5529
  ret i1 %tobool, !dbg !5536
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !5537 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5542, metadata !DIExpression()), !dbg !5544
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5543, metadata !DIExpression()), !dbg !5545
  ret i1 true, !dbg !5546
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !5547 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5552, metadata !DIExpression()), !dbg !5555
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5553, metadata !DIExpression()), !dbg !5556
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5554, metadata !DIExpression()), !dbg !5557
  ret void, !dbg !5558
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5559 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5563, metadata !DIExpression()), !dbg !5565
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5564, metadata !DIExpression()), !dbg !5566
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5567
  %and = and i64 %0, 63, !dbg !5568
  %shl = shl i64 1, %and, !dbg !5569
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5570
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5571
  %shr = ashr i64 %2, 6, !dbg !5572
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5570
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5570
  %and1 = and i64 %shl, %3, !dbg !5573
  %cmp = icmp ne i64 %and1, 0, !dbg !5574
  ret i1 %cmp, !dbg !5575
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5576 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5578, metadata !DIExpression()), !dbg !5581
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5579, metadata !DIExpression()), !dbg !5582
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5580, metadata !DIExpression()), !dbg !5584
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5585
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5586
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !5587, !srcloc !5588
  %3 = icmp ult i8 %2, 2, !dbg !5587
  call void @llvm.assume(i1 %3), !dbg !5587
  store i8 %2, ptr %oldbit, align 1, !dbg !5587
  %4 = load i8, ptr %oldbit, align 1, !dbg !5589, !range !5590, !noundef !512
  %tobool = trunc i8 %4 to i1, !dbg !5589
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !5591
  ret i1 %tobool, !dbg !5592
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !5593 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5595, metadata !DIExpression()), !dbg !5597
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5596, metadata !DIExpression()), !dbg !5598
  ret i1 true, !dbg !5599
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poll_wait(ptr noundef %filp, ptr noundef %wait_address, ptr noundef %p) #7 align 16 !dbg !5600 {
entry:
  %filp.addr = alloca ptr, align 8
  %wait_address.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5604, metadata !DIExpression()), !dbg !5607
  store ptr %wait_address, ptr %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait_address.addr, metadata !5605, metadata !DIExpression()), !dbg !5608
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5606, metadata !DIExpression()), !dbg !5609
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5610
  %tobool = icmp ne ptr %0, null, !dbg !5610
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5612

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5613
  %_qproc = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 0, !dbg !5614
  %2 = load ptr, ptr %_qproc, align 8, !dbg !5614
  %tobool1 = icmp ne ptr %2, null, !dbg !5613
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !5615

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %wait_address.addr, align 8, !dbg !5616
  %tobool3 = icmp ne ptr %3, null, !dbg !5616
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5617

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %p.addr, align 8, !dbg !5618
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, ptr %4, i32 0, i32 0, !dbg !5620
  %5 = load ptr, ptr %_qproc4, align 8, !dbg !5620
  %6 = load ptr, ptr %filp.addr, align 8, !dbg !5621
  %7 = load ptr, ptr %wait_address.addr, align 8, !dbg !5622
  %8 = load ptr, ptr %p.addr, align 8, !dbg !5623
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #15, !dbg !5618
  br label %do.body, !dbg !5624

do.body:                                          ; preds = %if.then
  br label %do.body5, !dbg !5625

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !5627

do.end:                                           ; preds = %do.body5
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5625, !srcloc !5629
  br label %do.end6, !dbg !5625

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !5630

if.end:                                           ; preds = %do.end6, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !5631
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5632 dso_local i32 @mutex_lock_interruptible(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5636 dso_local zeroext i1 @capable(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5639 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5642 dso_local i32 @rtc_read_alarm(ptr noundef, ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !5645 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5650, metadata !DIExpression()), !dbg !5653
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5651, metadata !DIExpression()), !dbg !5654
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5652, metadata !DIExpression()), !dbg !5655
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5656
  %1 = load i64, ptr %n.addr, align 8, !dbg !5658
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #15, !dbg !5659
  br i1 %call, label %if.then, label %if.end, !dbg !5660

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5661
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5662
  %4 = load i64, ptr %n.addr, align 8, !dbg !5663
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !5664
  store i64 %call1, ptr %n.addr, align 8, !dbg !5665
  br label %if.end, !dbg !5666

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5667
  ret i64 %5, !dbg !5668
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !5669 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5671, metadata !DIExpression()), !dbg !5674
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5672, metadata !DIExpression()), !dbg !5675
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5673, metadata !DIExpression()), !dbg !5676
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5677
  %1 = load i64, ptr %n.addr, align 8, !dbg !5679
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #15, !dbg !5680
  br i1 %call, label %if.then, label %if.end, !dbg !5681

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5682
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5683
  %4 = load i64, ptr %n.addr, align 8, !dbg !5684
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !5685
  store i64 %call1, ptr %n.addr, align 8, !dbg !5686
  br label %if.end, !dbg !5687

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5688
  ret i64 %5, !dbg !5689
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5690 dso_local i32 @rtc_read_time(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5693 dso_local i64 @rtc_tm_to_time64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5696 dso_local i32 @rtc_valid_tm(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5699 dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5702 dso_local i32 @rtc_set_alarm(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5703 dso_local i32 @rtc_set_time(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5704 dso_local i32 @rtc_irq_set_state(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5707 dso_local i32 @rtc_alarm_irq_enable(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5710 dso_local i32 @rtc_update_irq_enable(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5711 dso_local i32 @rtc_irq_set_freq(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5712 dso_local i32 @rtc_read_offset(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5715 dso_local void @mutex_lock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5716 dso_local i32 @rtc_set_offset(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #6 align 16 !dbg !5719 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5723, metadata !DIExpression()), !dbg !5733
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5724, metadata !DIExpression()), !dbg !5734
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !5725, metadata !DIExpression()), !dbg !5735
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #16, !dbg !5736
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5726, metadata !DIExpression()), !dbg !5737
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5738
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !5739
  %conv = trunc i64 %1 to i32, !dbg !5739
  store i32 %conv, ptr %sz, align 4, !dbg !5737
  %2 = load i32, ptr %sz, align 4, !dbg !5740
  %cmp = icmp sge i32 %2, 0, !dbg !5740
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5740

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !5740
  %conv2 = sext i32 %3 to i64, !dbg !5740
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !5740
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !5740
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !5742
  %lnot = xor i1 %5, true, !dbg !5740
  %lnot5 = xor i1 %lnot, true, !dbg !5740
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5740
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5740
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5740
  %tobool = icmp ne i64 %expval, 0, !dbg !5740
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5743

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !5744
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5747
  br i1 %7, label %if.else, label %if.then7, !dbg !5748

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !5749
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !5750
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #15, !dbg !5751
  br label %if.end11, !dbg !5751

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !5752, !range !5590, !noundef !512
  %tobool8 = trunc i8 %10 to i1, !dbg !5752
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !5754

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #15, !dbg !5755, !srcloc !5756
  br label %if.end, !dbg !5755

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #15, !dbg !5757, !srcloc !5758
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !5759
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5759

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5727, metadata !DIExpression()), !dbg !5760
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !5760
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !5760
  %lnot15 = xor i1 %cmp13, true, !dbg !5760
  %lnot17 = xor i1 %lnot15, true, !dbg !5760
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5760
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !5760
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5761
  %tobool19 = icmp ne i32 %12, 0, !dbg !5761
  %lnot20 = xor i1 %tobool19, true, !dbg !5761
  %lnot22 = xor i1 %lnot20, true, !dbg !5761
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5761
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5761
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5761
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5761
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !5760

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !5761

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5762
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5730, metadata !DIExpression()), !dbg !5762
  store i32 2307, ptr %__flags, align 4, !dbg !5762
  br label %do.body28, !dbg !5762

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !5763

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !5763

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !5762

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !5765
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 249, i32 %13, i64 12) #16, !dbg !5765, !srcloc !5767
  br label %do.cond30, !dbg !5765

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5765

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5762

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !5768

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5768

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5761
  br label %do.cond35, !dbg !5762

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5762

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !5762

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5760
  %tobool38 = icmp ne i32 %14, 0, !dbg !5760
  %lnot39 = xor i1 %tobool38, true, !dbg !5760
  %lnot41 = xor i1 %lnot39, true, !dbg !5760
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5760
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5760
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5760
  store i64 %expval44, ptr %tmp, align 8, !dbg !5761
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5770
  %15 = load i64, ptr %tmp, align 8, !dbg !5760
  %tobool45 = icmp ne i64 %15, 0, !dbg !5770
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5771

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !5772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5772

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !5773
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !5774
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !5775, !range !5590, !noundef !512
  %tobool48 = trunc i8 %18 to i1, !dbg !5775
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #15, !dbg !5776
  store i1 true, ptr %retval, align 1, !dbg !5777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5777

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #16, !dbg !5778
  %19 = load i1, ptr %retval, align 1, !dbg !5778
  ret i1 %19, !dbg !5778
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5779 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #7 align 16 !dbg !5780 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5784, metadata !DIExpression()), !dbg !5786
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5785, metadata !DIExpression()), !dbg !5787
  %0 = load i32, ptr %size.addr, align 4, !dbg !5788
  %1 = load i64, ptr %count.addr, align 8, !dbg !5790
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #15, !dbg !5791
  ret void, !dbg !5792
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5793 dso_local void @__bad_copy_from() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5794 dso_local void @__bad_copy_to() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #7 align 16 !dbg !5795 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5799, metadata !DIExpression()), !dbg !5802
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5800, metadata !DIExpression()), !dbg !5803
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !5801, metadata !DIExpression()), !dbg !5804
  ret void, !dbg !5805
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5806 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5807 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @compat_ptr(i32 noundef %uptr) #7 align 16 !dbg !5808 {
entry:
  %uptr.addr = alloca i32, align 4
  store i32 %uptr, ptr %uptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  %0 = load i32, ptr %uptr.addr, align 4, !dbg !5814
  %conv = zext i32 %0 to i64, !dbg !5815
  %1 = inttoptr i64 %conv to ptr, !dbg !5816
  ret ptr %1, !dbg !5817
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit_lock(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5818 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5824, metadata !DIExpression()), !dbg !5826
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5825, metadata !DIExpression()), !dbg !5827
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5828
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5829
  %div = sdiv i64 %1, 64, !dbg !5829
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5830
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !5831
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5832
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5833
  %call = call zeroext i1 @arch_test_and_set_bit_lock(i64 noundef %2, ptr noundef %3) #15, !dbg !5834
  ret i1 %call, !dbg !5835
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit_lock(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5836 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5838, metadata !DIExpression()), !dbg !5840
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5839, metadata !DIExpression()), !dbg !5841
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5842
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5843
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %0, ptr noundef %1) #15, !dbg !5844
  ret i1 %call, !dbg !5845
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5846 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5848, metadata !DIExpression()), !dbg !5852
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5849, metadata !DIExpression()), !dbg !5853
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !5854
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5850, metadata !DIExpression()), !dbg !5854
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5854
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5854
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #16, !dbg !5854, !srcloc !5855
  %3 = icmp ult i8 %2, 2, !dbg !5854
  call void @llvm.assume(i1 %3), !dbg !5854
  store i8 %2, ptr %c, align 1, !dbg !5854
  %4 = load i8, ptr %c, align 1, !dbg !5854, !range !5590, !noundef !512
  %tobool = trunc i8 %4 to i1, !dbg !5854
  %frombool = zext i1 %tobool to i8, !dbg !5854
  store i8 %frombool, ptr %tmp, align 1, !dbg !5854
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !5856
  %5 = load i8, ptr %tmp, align 1, !dbg !5854, !range !5590, !noundef !512
  %tobool1 = trunc i8 %5 to i1, !dbg !5854
  ret i1 %tobool1, !dbg !5857
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit_unlock(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5858 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5862, metadata !DIExpression()), !dbg !5864
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5863, metadata !DIExpression()), !dbg !5865
  br label %do.body, !dbg !5866

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5867

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5869
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5870
  %div = sdiv i64 %1, 64, !dbg !5870
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5871
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !5872
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5873
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5874
  call void @arch_clear_bit_unlock(i64 noundef %2, ptr noundef %3) #15, !dbg !5875
  ret void, !dbg !5876
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5877 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5879, metadata !DIExpression()), !dbg !5881
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5880, metadata !DIExpression()), !dbg !5882
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5883
  %1 = load i64, ptr %size.addr, align 8, !dbg !5884
  %conv = trunc i64 %1 to i32, !dbg !5884
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !5885
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5886
  %3 = load i64, ptr %size.addr, align 8, !dbg !5886
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #15, !dbg !5886
  ret void, !dbg !5887
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit_unlock(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5888 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5890, metadata !DIExpression()), !dbg !5892
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5891, metadata !DIExpression()), !dbg !5893
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5894, !srcloc !5895
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5896
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5897
  call void @arch_clear_bit(i64 noundef %0, ptr noundef %1) #15, !dbg !5898
  ret void, !dbg !5899
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5900 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5902, metadata !DIExpression()), !dbg !5904
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5903, metadata !DIExpression()), !dbg !5905
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5906
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5908
  br i1 %1, label %if.then, label %if.else, !dbg !5909

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5910
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5910
  %shr = ashr i64 %3, 3, !dbg !5910
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5910
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5912
  %and = and i64 %4, 7, !dbg !5912
  %sh_prom = trunc i64 %and to i32, !dbg !5912
  %shl = shl i32 1, %sh_prom, !dbg !5912
  %not = xor i32 %shl, -1, !dbg !5913
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #16, !dbg !5914, !srcloc !5915
  br label %if.end, !dbg !5916

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5917
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5919
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !5920, !srcloc !5921
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5922
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5923 dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { cold noredzone }
attributes #18 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4494}
!llvm.module.flags = !{!4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502}
!llvm.ident = !{!4503}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rtc_devt", scope: !2, file: !3, line: 19, type: !465, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/rtc/.dev.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/rtc/rtc-core\22 -D KBUILD_BASENAME=\22dev\22 -D KBUILD_MODNAME=\22rtc_core\22 -D __KBUILD_MODNAME=kmod_rtc_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/rtc/dev.ll drivers/rtc/dev.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !122, globals: !4477, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/rtc/dev.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc49e150ab494b811f3a3868d5d0edb0")
!4 = !{!5, !13, !18, !26, !32, !37, !43, !50, !57, !63, !69, !76, !84, !92, !101, !106, !111, !117}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !27, line: 54, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "USRQUOTA", value: 0)
!30 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!31 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
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
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !64, line: 45, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!67 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!68 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !70, line: 487, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!73 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!74 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!75 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !77, line: 620, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!80 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!81 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!82 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!83 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !77, line: 597, baseType: !85, size: 32, elements: !86)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!88 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!89 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!90 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!91 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !70, line: 547, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100}
!94 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!95 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!96 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!97 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!98 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!99 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!100 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !70, line: 564, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!104 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!105 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !70, line: 577, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!109 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!110 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !70, line: 503, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!115 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 10, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "false", value: 0)
!121 = !DIEnumerator(name: "true", value: 1)
!122 = !{!7, !123, !300, !3995, !1717, !3980, !3997, !1723, !278, !3998, !3999, !1086, !85, !4001, !4002, !4473, !4475}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !125)
!125 = !{!126, !127, !134, !139, !3671, !3697, !3698, !3699, !3700, !3704, !3707, !3708, !3709, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3776, !3780, !3798, !3815, !3816, !3817, !3818, !3827, !3850, !3851, !3854, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3868, !3869, !3955, !3963, !3964, !3965, !3967, !3971, !3972, !3976, !3977, !3978, !3979, !3981, !3982, !3983, !3990, !3991, !3992, !3994}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !124, file: !6, line: 403, baseType: !5, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !124, file: !6, line: 406, baseType: !128, size: 128, offset: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !129, line: 190, size: 128, elements: !130)
!129 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!130 = !{!131, !133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !129, line: 191, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !128, file: !129, line: 191, baseType: !132, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !6, line: 409, baseType: !135, size: 448, offset: 192)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 448, elements: !137)
!136 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!137 = !{!138}
!138 = !DISubrange(count: 56)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !124, file: !6, line: 417, baseType: !140, size: 768, offset: 640)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !141)
!141 = !{!142, !3665, !3666, !3667, !3670}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !140, file: !6, line: 46, baseType: !143, size: 512)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !144, line: 64, size: 512, elements: !145)
!144 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!145 = !{!146, !149, !150, !152, !241, !3563, !3655, !3660, !3661, !3662, !3663, !3664}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 65, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !143, file: !144, line: 66, baseType: !128, size: 128, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !143, file: !144, line: 67, baseType: !151, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !143, file: !144, line: 68, baseType: !153, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !144, line: 168, size: 768, elements: !155)
!155 = !{!156, !157, !200, !201}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !154, file: !144, line: 169, baseType: !128, size: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !154, file: !144, line: 170, baseType: !158, size: 32, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !159, line: 29, baseType: !160)
!159 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !159, line: 17, size: 32, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !159, line: 18, baseType: !163, size: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !159, line: 18, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !163, file: !159, line: 19, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !167, line: 14, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !166, file: !167, line: 15, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !171, line: 44, baseType: !172)
!171 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !171, line: 14, size: 32, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !171, line: 15, baseType: !175, size: 32)
!175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !171, line: 15, size: 32, elements: !176)
!176 = !{!177, !182, !192}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !175, file: !171, line: 16, baseType: !178, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !129, line: 174, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 172, size: 32, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !179, file: !129, line: 173, baseType: !85, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !171, line: 24, baseType: !183, size: 16)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !175, file: !171, line: 24, size: 16, elements: !184)
!184 = !{!185, !191}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !183, file: !171, line: 25, baseType: !186, size: 8)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !187, line: 17, baseType: !188)
!187 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !189, line: 21, baseType: !190)
!189 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!190 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !183, file: !171, line: 26, baseType: !186, size: 8, offset: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !171, line: 28, baseType: !193, size: 32)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !175, file: !171, line: 28, size: 32, elements: !194)
!194 = !{!195, !199}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !193, file: !171, line: 29, baseType: !196, size: 16)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !187, line: 19, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !189, line: 24, baseType: !198)
!198 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !193, file: !171, line: 30, baseType: !196, size: 16, offset: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !154, file: !144, line: 171, baseType: !143, size: 512, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !154, file: !144, line: 172, baseType: !202, size: 64, offset: 704)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !144, line: 133, size: 192, elements: !205)
!205 = !{!206, !213, !218}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !204, file: !144, line: 134, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!85, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !144, line: 135, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!147, !211}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !204, file: !144, line: 136, baseType: !219, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!85, !211, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !144, line: 125, size: 20736, elements: !225)
!225 = !{!226, !231, !235, !236, !240}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !224, file: !144, line: 126, baseType: !227, size: 192)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 192, elements: !229)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!229 = !{!230}
!230 = !DISubrange(count: 3)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !224, file: !144, line: 127, baseType: !232, size: 4096, offset: 192)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 4096, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !224, file: !144, line: 128, baseType: !85, size: 32, offset: 4288)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !224, file: !144, line: 129, baseType: !237, size: 16384, offset: 4320)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 16384, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 2048)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !224, file: !144, line: 130, baseType: !85, size: 32, offset: 20704)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !143, file: !144, line: 69, baseType: !242, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !144, line: 116, size: 384, elements: !245)
!245 = !{!246, !250, !279, !3524, !3553, !3557}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !244, file: !144, line: 117, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !151}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !244, file: !144, line: 118, baseType: !251, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !254, line: 254, size: 128, elements: !255)
!254 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!255 = !{!256, !271}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !253, file: !254, line: 255, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !151, !265, !228}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !129, line: 66, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !262, line: 73, baseType: !263)
!262 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !262, line: 15, baseType: !264)
!264 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !254, line: 30, size: 128, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !254, line: 31, baseType: !147, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !266, file: !254, line: 32, baseType: !270, size: 16, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !129, line: 24, baseType: !198)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !253, file: !254, line: 256, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!260, !151, !265, !147, !275}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !129, line: 61, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !262, line: 72, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !262, line: 16, baseType: !278)
!278 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !244, file: !144, line: 119, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !254, line: 84, size: 320, elements: !284)
!284 = !{!285, !286, !290, !3520, !3522}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !283, file: !254, line: 85, baseType: !147, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !283, file: !254, line: 86, baseType: !287, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!270, !151, !265, !85}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !283, file: !254, line: 88, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!270, !151, !294, !85}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !254, line: 175, size: 512, elements: !296)
!296 = !{!297, !298, !299, !301, !3511, !3515, !3516}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !295, file: !254, line: 176, baseType: !266, size: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !295, file: !254, line: 177, baseType: !275, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !295, file: !254, line: 178, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !295, file: !254, line: 179, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !307)
!307 = !{!308, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3505, !3506, !3507, !3508, !3509, !3510}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !306, file: !14, line: 473, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !311)
!311 = !{!312, !313, !314, !322, !323, !330, !331, !334, !335, !3275, !3276, !3277, !3278, !3279, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3319, !3322, !3323, !3324, !3341, !3342, !3343, !3344}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !310, file: !14, line: 642, baseType: !270, size: 16)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !310, file: !14, line: 643, baseType: !198, size: 16, offset: 16)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !310, file: !14, line: 644, baseType: !315, size: 32, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !316, line: 23, baseType: !317)
!316 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !316, line: 21, size: 32, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !317, file: !316, line: 22, baseType: !320, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !129, line: 37, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !262, line: 49, baseType: !7)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !310, file: !14, line: 645, baseType: !128, size: 128, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !310, file: !14, line: 646, baseType: !324, size: 32, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !316, line: 28, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !316, line: 26, size: 32, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !325, file: !316, line: 27, baseType: !328, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !129, line: 38, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !262, line: 50, baseType: !7)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !310, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !310, file: !14, line: 650, baseType: !332, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !310, file: !14, line: 651, baseType: !332, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !310, file: !14, line: 654, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !339)
!339 = !{!340, !3106, !3119, !3123, !3127, !3131, !3135, !3139, !3143, !3147, !3151, !3152, !3156, !3160, !3197, !3226, !3230, !3236, !3240, !3244, !3248, !3252, !3256, !3262, !3266}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !338, file: !14, line: 1967, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!344, !309, !344, !7}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !346, line: 82, size: 1536, elements: !347)
!346 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!347 = !{!348, !349, !359, !367, !368, !388, !389, !393, !406, !3090, !3091, !3092, !3093, !3098, !3099, !3100}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !345, file: !346, line: 84, baseType: !7, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !345, file: !346, line: 85, baseType: !350, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !351, line: 275, baseType: !352)
!351 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !351, line: 275, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !352, file: !351, line: 275, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !351, line: 69, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !351, line: 64, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !356, file: !351, line: 65, baseType: !7, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !345, file: !346, line: 86, baseType: !360, size: 128, offset: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !361, line: 38, size: 128, elements: !362)
!361 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!362 = !{!363, !365}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !361, line: 39, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !360, file: !361, line: 39, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !345, file: !346, line: 87, baseType: !344, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !345, file: !346, line: 88, baseType: !369, size: 128, offset: 256)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !346, line: 49, size: 128, elements: !370)
!370 = !{!371, !385}
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !346, line: 50, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !346, line: 50, size: 64, elements: !373)
!373 = !{!374, !381}
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !346, line: 51, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !372, file: !346, line: 51, size: 64, elements: !376)
!376 = !{!377, !380}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !375, file: !346, line: 52, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !187, line: 21, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !189, line: 27, baseType: !7)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !375, file: !346, line: 52, baseType: !378, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !372, file: !346, line: 54, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !187, line: 23, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !189, line: 31, baseType: !384)
!384 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !369, file: !346, line: 56, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !345, file: !346, line: 89, baseType: !309, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !345, file: !346, line: 91, baseType: !390, size: 256, offset: 448)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 256, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !345, file: !346, line: 94, baseType: !394, size: 64, offset: 704)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !395, line: 25, size: 64, elements: !396)
!395 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !395, line: 26, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !395, line: 26, size: 64, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !398, file: !395, line: 28, baseType: !383, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !395, line: 30, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !398, file: !395, line: 30, size: 64, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !402, file: !395, line: 31, baseType: !158, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !402, file: !395, line: 32, baseType: !85, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !345, file: !346, line: 95, baseType: !407, size: 64, offset: 768)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !346, line: 128, size: 1024, align: 512, elements: !410)
!410 = !{!411, !415, !416, !423, !429, !433, !437, !441, !442, !446, !450, !3080, !3084}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !409, file: !346, line: 129, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!85, !344, !7}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !409, file: !346, line: 130, baseType: !412, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !409, file: !346, line: 131, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!85, !420, !422}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !409, file: !346, line: 132, baseType: !424, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!85, !420, !7, !147, !427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !409, file: !346, line: 134, baseType: !430, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!85, !420}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !409, file: !346, line: 135, baseType: !434, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!85, !344}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !409, file: !346, line: 136, baseType: !438, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !344}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !409, file: !346, line: 137, baseType: !438, size: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !409, file: !346, line: 138, baseType: !443, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !344, !309}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !409, file: !346, line: 139, baseType: !447, size: 64, offset: 576)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!228, !344, !228, !85}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !409, file: !346, line: 140, baseType: !451, size: 64, offset: 640)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!454, !3079}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !456, line: 70, size: 256, elements: !457)
!456 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!457 = !{!458, !459, !3075, !3076}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !455, file: !456, line: 71, baseType: !344, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !455, file: !456, line: 72, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !462)
!462 = !{!463, !464, !467, !468, !469, !473, !521, !1496, !1536, !1621, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1638, !1642, !1643, !1646, !1649, !1652, !1655, !1656, !1657, !1698, !3006, !3007, !3008, !3009, !3010, !3011, !3014, !3016, !3023, !3024, !3025, !3026, !3027, !3042, !3043, !3044, !3045, !3046, !3049, !3050, !3051, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !461, file: !14, line: 1191, baseType: !128, size: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !461, file: !14, line: 1192, baseType: !465, size: 32, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !129, line: 21, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !129, line: 18, baseType: !378)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !461, file: !14, line: 1193, baseType: !190, size: 8, offset: 160)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !461, file: !14, line: 1194, baseType: !278, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !461, file: !14, line: 1195, baseType: !470, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !129, line: 52, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !262, line: 88, baseType: !472)
!472 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !461, file: !14, line: 1196, baseType: !474, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !476)
!476 = !{!477, !478, !479, !485, !489, !493, !497, !498, !499, !509, !513, !514, !515, !517, !518, !519, !520}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !475, file: !14, line: 2367, baseType: !147, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !475, file: !14, line: 2368, baseType: !85, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !475, file: !14, line: 2376, baseType: !480, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!85, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !456, line: 21, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !475, file: !14, line: 2377, baseType: !486, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !475, file: !14, line: 2378, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!344, !474, !85, !147, !300}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !475, file: !14, line: 2380, baseType: !494, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !460}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !475, file: !14, line: 2381, baseType: !123, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !475, file: !14, line: 2382, baseType: !474, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !475, file: !14, line: 2383, baseType: !500, size: 64, offset: 512)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !129, line: 194, size: 64, elements: !501)
!501 = !{!502}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !500, file: !129, line: 195, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !129, line: 198, size: 128, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !129, line: 199, baseType: !503, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !504, file: !129, line: 199, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !475, file: !14, line: 2385, baseType: !510, offset: 576)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !511, line: 206, elements: !512)
!511 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!512 = !{}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !475, file: !14, line: 2386, baseType: !510, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !475, file: !14, line: 2387, baseType: !510, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !475, file: !14, line: 2388, baseType: !516, offset: 576)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, elements: !229)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !475, file: !14, line: 2390, baseType: !510, offset: 576)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !475, file: !14, line: 2391, baseType: !510, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !475, file: !14, line: 2392, baseType: !510, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !475, file: !14, line: 2393, baseType: !510, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !461, file: !14, line: 1197, baseType: !522, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !525)
!525 = !{!526, !530, !534, !535, !539, !545, !549, !550, !551, !555, !559, !563, !564, !565, !571, !576, !577, !1421, !1422, !1423, !1424, !1428, !1432, !1479, !1494, !1495}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !524, file: !14, line: 2058, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!309, !460}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !524, file: !14, line: 2059, baseType: !531, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !309}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !524, file: !14, line: 2060, baseType: !531, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !524, file: !14, line: 2062, baseType: !536, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !309, !85}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !524, file: !14, line: 2063, baseType: !540, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!85, !309, !543}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !524, file: !14, line: 2064, baseType: !546, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!85, !309}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !524, file: !14, line: 2065, baseType: !531, size: 64, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !524, file: !14, line: 2066, baseType: !494, size: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !524, file: !14, line: 2067, baseType: !552, size: 64, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!85, !460, !85}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !524, file: !14, line: 2068, baseType: !556, size: 64, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!85, !460, !13}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !524, file: !14, line: 2069, baseType: !560, size: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!85, !460}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !524, file: !14, line: 2070, baseType: !556, size: 64, offset: 704)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !524, file: !14, line: 2071, baseType: !560, size: 64, offset: 768)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !524, file: !14, line: 2072, baseType: !566, size: 64, offset: 832)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!85, !344, !569}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !524, file: !14, line: 2073, baseType: !572, size: 64, offset: 896)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!85, !460, !575, !228}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !524, file: !14, line: 2074, baseType: !494, size: 64, offset: 960)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !524, file: !14, line: 2076, baseType: !578, size: 64, offset: 1024)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!85, !581, !344}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !583, line: 17, size: 960, elements: !584)
!583 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !613, !635, !636, !1420}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !582, file: !583, line: 18, baseType: !228, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !582, file: !583, line: 19, baseType: !275, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !582, file: !583, line: 20, baseType: !275, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !582, file: !583, line: 21, baseType: !275, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !582, file: !583, line: 22, baseType: !275, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !582, file: !583, line: 23, baseType: !470, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !582, file: !583, line: 24, baseType: !470, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !582, file: !583, line: 25, baseType: !593, size: 256, offset: 448)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !594, line: 66, size: 256, elements: !595)
!594 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!595 = !{!596, !605, !607, !612}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !593, file: !594, line: 67, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !598, line: 13, baseType: !599)
!598 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !129, line: 181, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 179, size: 64, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !600, file: !129, line: 180, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !187, line: 22, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !189, line: 30, baseType: !472)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !593, file: !594, line: 68, baseType: !606, size: 32, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !167, line: 23, baseType: !166)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !593, file: !594, line: 70, baseType: !608, size: 32, offset: 96)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !609, line: 15, size: 32, elements: !610)
!609 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !608, file: !609, line: 20, baseType: !178, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !593, file: !594, line: 72, baseType: !128, size: 128, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !582, file: !583, line: 26, baseType: !614, size: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !583, line: 32, size: 256, elements: !617)
!617 = !{!618, !623, !627, !631}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !616, file: !583, line: 33, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!300, !581, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !616, file: !583, line: 34, baseType: !624, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !581, !300}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !616, file: !583, line: 35, baseType: !628, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!300, !581, !300, !622}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !616, file: !583, line: 36, baseType: !632, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!85, !581, !300}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !582, file: !583, line: 27, baseType: !85, size: 32, offset: 768)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !582, file: !583, line: 28, baseType: !637, size: 64, offset: 832)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !640)
!640 = !{!641, !660, !661, !663, !664, !665, !666, !667, !730, !942, !951, !957, !958, !1410, !1411, !1412, !1413, !1415, !1416, !1419}
!641 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !14, line: 995, baseType: !642, size: 128)
!642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !14, line: 995, size: 128, elements: !643)
!643 = !{!644, !650, !659}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !642, file: !14, line: 996, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !646, line: 60, size: 64, elements: !647)
!646 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !645, file: !646, line: 61, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !642, file: !14, line: 997, baseType: !651, size: 128, align: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !129, line: 232, size: 128, align: 64, elements: !652)
!652 = !{!653, !655}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !651, file: !129, line: 233, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !651, file: !129, line: 234, baseType: !656, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !654}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !642, file: !14, line: 998, baseType: !7, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !639, file: !14, line: 1005, baseType: !158, size: 32, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !639, file: !14, line: 1006, baseType: !662, size: 32, offset: 160)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !129, line: 156, baseType: !7)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !639, file: !14, line: 1007, baseType: !597, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !639, file: !14, line: 1008, baseType: !593, size: 256, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !639, file: !14, line: 1009, baseType: !470, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !639, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !639, file: !14, line: 1011, baseType: !668, size: 256, offset: 640)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !669)
!669 = !{!670, !691, !726, !727, !728, !729}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !668, file: !14, line: 949, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !672, line: 34, baseType: !673)
!672 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 25, size: 64, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !673, file: !672, line: 26, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !677, line: 27, baseType: !678)
!677 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !677, line: 13, size: 64, elements: !679)
!679 = !{!680, !690}
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !677, line: 14, baseType: !681, size: 32)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !677, line: 14, size: 32, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !681, file: !677, line: 15, baseType: !178, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !681, file: !677, line: 16, baseType: !685, size: 32)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !681, file: !677, line: 16, size: 32, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !685, file: !677, line: 18, baseType: !186, size: 8)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !685, file: !677, line: 19, baseType: !689, size: 24, offset: 8)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 24, elements: !229)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !678, file: !677, line: 26, baseType: !170, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !668, file: !14, line: 950, baseType: !692, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !694)
!694 = !{!695, !701, !702, !703, !707, !708, !715, !716}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !693, file: !19, line: 61, baseType: !696, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !697, line: 113, baseType: !698)
!697 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !697, line: 111, size: 32, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !698, file: !697, line: 112, baseType: !178, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !693, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !693, file: !19, line: 63, baseType: !158, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !693, file: !19, line: 65, baseType: !704, size: 256, offset: 128)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 256, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 4)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !693, file: !19, line: 66, baseType: !500, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !693, file: !19, line: 68, baseType: !709, size: 192, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !710, line: 41, baseType: !711)
!710 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !710, line: 37, size: 192, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !711, file: !710, line: 38, baseType: !158, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !711, file: !710, line: 39, baseType: !128, size: 128, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !693, file: !19, line: 69, baseType: !651, size: 128, align: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !693, file: !19, line: 70, baseType: !717, offset: 768)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, elements: !724)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !718, file: !19, line: 55, baseType: !85, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !718, file: !19, line: 56, baseType: !722, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!724 = !{!725}
!725 = !DISubrange(count: -1)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !668, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !668, file: !14, line: 952, baseType: !315, size: 32, offset: 160)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !668, file: !14, line: 952, baseType: !315, size: 32, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !668, file: !14, line: 953, baseType: !85, size: 32, offset: 224)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !639, file: !14, line: 1012, baseType: !731, size: 64, offset: 896)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !734, line: 110, size: 1472, elements: !735)
!734 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !752, !753, !754, !755, !756, !757, !887, !888, !889, !890, !891, !922, !925, !929, !937}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !733, file: !734, line: 111, baseType: !597, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !733, file: !734, line: 112, baseType: !315, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !733, file: !734, line: 113, baseType: !324, size: 32, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !733, file: !734, line: 114, baseType: !315, size: 32, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !733, file: !734, line: 115, baseType: !324, size: 32, offset: 160)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !733, file: !734, line: 116, baseType: !315, size: 32, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !733, file: !734, line: 117, baseType: !324, size: 32, offset: 224)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !733, file: !734, line: 118, baseType: !315, size: 32, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !733, file: !734, line: 119, baseType: !324, size: 32, offset: 288)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !733, file: !734, line: 120, baseType: !7, size: 32, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !733, file: !734, line: 121, baseType: !747, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !748, line: 24, baseType: !749)
!748 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !748, line: 24, size: 64, elements: !750)
!750 = !{!751}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !749, file: !748, line: 24, baseType: !382, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !733, file: !734, line: 122, baseType: !747, size: 64, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !733, file: !734, line: 123, baseType: !747, size: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !733, file: !734, line: 124, baseType: !747, size: 64, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !733, file: !734, line: 125, baseType: !747, size: 64, offset: 640)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !733, file: !734, line: 127, baseType: !190, size: 8, offset: 704)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !733, file: !734, line: 129, baseType: !758, size: 64, offset: 768)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !760, line: 195, size: 1728, elements: !761)
!760 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!761 = !{!762, !763, !768, !780, !789, !792, !793, !800, !801, !802, !803, !806, !807, !808, !810, !811, !851, !872}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !759, file: !760, line: 196, baseType: !696, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !759, file: !760, line: 197, baseType: !764, size: 32, offset: 32)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !760, line: 28, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !129, line: 104, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !187, line: 20, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !189, line: 26, baseType: !85)
!768 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !760, line: 198, baseType: !769, size: 192, offset: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !760, line: 198, size: 192, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !769, file: !760, line: 199, baseType: !128, size: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !769, file: !760, line: 200, baseType: !773, size: 192, align: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !774, line: 5, size: 192, align: 64, elements: !775)
!774 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!775 = !{!776, !777, !779}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !773, file: !774, line: 6, baseType: !278, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !773, file: !774, line: 7, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !773, file: !774, line: 8, baseType: !778, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !759, file: !760, line: 205, baseType: !781, size: 320, offset: 256)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !782, line: 48, size: 320, elements: !783)
!782 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!783 = !{!784, !785, !786, !787, !788}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !781, file: !782, line: 49, baseType: !597, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !781, file: !782, line: 55, baseType: !597, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !781, file: !782, line: 57, baseType: !608, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !781, file: !782, line: 59, baseType: !606, size: 32, offset: 160)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !781, file: !782, line: 60, baseType: !128, size: 128, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !759, file: !760, line: 206, baseType: !790, size: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !760, line: 206, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !759, file: !760, line: 207, baseType: !300, size: 64, offset: 640)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !760, line: 208, baseType: !794, size: 64, offset: 704)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !760, line: 208, size: 64, elements: !795)
!795 = !{!796, !799}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !794, file: !760, line: 209, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !798, line: 8, baseType: !604)
!798 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!799 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !794, file: !760, line: 210, baseType: !797, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !759, file: !760, line: 212, baseType: !797, size: 64, offset: 768)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !759, file: !760, line: 213, baseType: !315, size: 32, offset: 832)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !759, file: !760, line: 214, baseType: !324, size: 32, offset: 864)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !759, file: !760, line: 215, baseType: !804, size: 32, offset: 896)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !760, line: 31, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !129, line: 110, baseType: !378)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !759, file: !760, line: 216, baseType: !198, size: 16, offset: 928)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !759, file: !760, line: 217, baseType: !198, size: 16, offset: 944)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !759, file: !760, line: 221, baseType: !809, size: 16, offset: 960)
!809 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !760, line: 228, baseType: !278, size: 64, offset: 1024)
!811 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !760, line: 245, baseType: !812, size: 320, offset: 1088)
!812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !760, line: 245, size: 320, elements: !813)
!813 = !{!814, !843}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !812, file: !760, line: 246, baseType: !815, size: 320)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !760, line: 114, size: 320, elements: !816)
!816 = !{!817, !818, !830, !833, !842}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !815, file: !760, line: 116, baseType: !278, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !760, line: 117, baseType: !819, size: 64, offset: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !760, line: 117, size: 64, elements: !820)
!820 = !{!821, !829}
!821 = !DIDerivedType(tag: DW_TAG_member, scope: !819, file: !760, line: 118, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !819, file: !760, line: 118, size: 64, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !822, file: !760, line: 120, baseType: !196, size: 16)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !822, file: !760, line: 121, baseType: !826, size: 48, offset: 16)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 48, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 6)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !819, file: !760, line: 127, baseType: !278, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !815, file: !760, line: 129, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !760, line: 102, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !815, file: !760, line: 130, baseType: !834, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !760, line: 108, size: 192, elements: !836)
!836 = !{!837, !838, !839}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !835, file: !760, line: 109, baseType: !651, size: 128, align: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !835, file: !760, line: 110, baseType: !696, size: 32, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !835, file: !760, line: 111, baseType: !840, size: 8, offset: 160)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !129, line: 35, baseType: !841)
!841 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !815, file: !760, line: 131, baseType: !147, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !812, file: !760, line: 247, baseType: !844, size: 320)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !812, file: !760, line: 247, size: 320, elements: !845)
!845 = !{!846, !847, !848, !849, !850}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !844, file: !760, line: 248, baseType: !278, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !844, file: !760, line: 249, baseType: !278, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !844, file: !760, line: 250, baseType: !831, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !844, file: !760, line: 251, baseType: !834, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !844, file: !760, line: 252, baseType: !228, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !760, line: 260, baseType: !852, size: 256, offset: 1408)
!852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !760, line: 260, size: 256, elements: !853)
!853 = !{!854, !860}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !852, file: !760, line: 261, baseType: !855, size: 256)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !760, line: 134, size: 256, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !855, file: !760, line: 135, baseType: !300, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !855, file: !760, line: 136, baseType: !859, size: 256)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 256, elements: !705)
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !760, line: 262, baseType: !861, size: 256)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !852, file: !760, line: 262, size: 256, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !861, file: !760, line: 264, baseType: !128, size: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !861, file: !760, line: 265, baseType: !865, size: 128, offset: 128)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !866, line: 22, size: 128, elements: !867)
!866 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!867 = !{!868, !871}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !865, file: !866, line: 23, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !866, line: 23, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !865, file: !866, line: 24, baseType: !278, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !759, file: !760, line: 280, baseType: !873, size: 64, offset: 1664)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !760, line: 176, size: 192, elements: !875)
!875 = !{!876, !885, !886}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !874, file: !760, line: 177, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !760, line: 171, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!85, !758, !881, !883, !758}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !874, file: !760, line: 178, baseType: !758, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !874, file: !760, line: 179, baseType: !831, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !733, file: !734, line: 130, baseType: !758, size: 64, offset: 832)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !733, file: !734, line: 131, baseType: !758, size: 64, offset: 896)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !733, file: !734, line: 132, baseType: !758, size: 64, offset: 960)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !733, file: !734, line: 135, baseType: !300, size: 64, offset: 1024)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !733, file: !734, line: 137, baseType: !892, size: 64, offset: 1088)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !894, line: 14, size: 1088, elements: !895)
!894 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!895 = !{!896, !897, !906, !907, !908, !909, !910, !911}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !893, file: !894, line: 15, baseType: !696, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !893, file: !894, line: 17, baseType: !898, size: 320, offset: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !899, line: 22, size: 320, elements: !900)
!899 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!900 = !{!901, !902, !903, !904}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !898, file: !899, line: 23, baseType: !606, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !898, file: !899, line: 24, baseType: !603, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !898, file: !899, line: 26, baseType: !128, size: 128, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !898, file: !899, line: 28, baseType: !905, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !893, file: !894, line: 19, baseType: !278, size: 64, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !893, file: !894, line: 20, baseType: !597, size: 64, offset: 448)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !893, file: !894, line: 23, baseType: !504, size: 128, offset: 512)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !893, file: !894, line: 24, baseType: !315, size: 32, offset: 640)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !893, file: !894, line: 29, baseType: !597, size: 64, offset: 704)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !893, file: !894, line: 36, baseType: !912, size: 320, offset: 768)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !913, line: 15, size: 320, elements: !914)
!913 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!914 = !{!915, !916, !917, !918, !919, !920, !921}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !912, file: !913, line: 16, baseType: !606, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !912, file: !913, line: 18, baseType: !85, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !912, file: !913, line: 19, baseType: !85, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !912, file: !913, line: 20, baseType: !85, size: 32, offset: 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !912, file: !913, line: 21, baseType: !85, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !912, file: !913, line: 22, baseType: !278, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !912, file: !913, line: 23, baseType: !278, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !733, file: !734, line: 138, baseType: !923, size: 64, offset: 1152)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !316, line: 18, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !733, file: !734, line: 139, baseType: !926, size: 64, offset: 1216)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !928, line: 16, flags: DIFlagFwdDecl)
!928 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!929 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !733, file: !734, line: 140, baseType: !930, size: 64, offset: 1280)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !734, line: 25, size: 64, elements: !932)
!932 = !{!933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !931, file: !734, line: 26, baseType: !178, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !931, file: !734, line: 27, baseType: !85, size: 32, offset: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !931, file: !734, line: 28, baseType: !936, offset: 64)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, elements: !724)
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !733, file: !734, line: 142, baseType: !938, size: 128, offset: 1344)
!938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !733, file: !734, line: 142, size: 128, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !938, file: !734, line: 143, baseType: !85, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !938, file: !734, line: 144, baseType: !651, size: 128, align: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !639, file: !14, line: 1013, baseType: !943, size: 256, offset: 960)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !944)
!944 = !{!945, !946, !947, !948, !949, !950}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !943, file: !14, line: 971, baseType: !278, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !943, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !943, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !943, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !943, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !943, file: !14, line: 976, baseType: !470, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !639, file: !14, line: 1014, baseType: !952, size: 128, offset: 1216)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !953, line: 8, size: 128, elements: !954)
!953 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !952, file: !953, line: 9, baseType: !454, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !952, file: !953, line: 10, baseType: !344, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !639, file: !14, line: 1015, baseType: !309, size: 64, offset: 1344)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !639, file: !14, line: 1016, baseType: !959, size: 64, offset: 1408)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !962)
!962 = !{!963, !964, !969, !973, !977, !1062, !1063, !1069, !1082, !1099, !1103, !1104, !1331, !1332, !1336, !1341, !1342, !1346, !1350, !1356, !1357, !1361, !1362, !1369, !1373, !1377, !1383, !1387, !1391, !1395, !1399, !1400, !1406}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !961, file: !14, line: 1915, baseType: !123, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !961, file: !14, line: 1916, baseType: !965, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!470, !968, !470, !85}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !961, file: !14, line: 1917, baseType: !970, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!260, !968, !228, !275, !622}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !961, file: !14, line: 1918, baseType: !974, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!260, !968, !147, !275, !622}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !961, file: !14, line: 1919, baseType: !978, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!260, !981, !1003}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !983)
!983 = !{!984, !985, !986, !990, !991, !992, !993}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !982, file: !14, line: 374, baseType: !968, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !982, file: !14, line: 375, baseType: !470, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !982, file: !14, line: 376, baseType: !987, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !981, !264}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !982, file: !14, line: 377, baseType: !300, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !982, file: !14, line: 378, baseType: !85, size: 32, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !982, file: !14, line: 379, baseType: !196, size: 16, offset: 288)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !14, line: 380, baseType: !994, size: 64, offset: 320)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !14, line: 380, size: 64, elements: !995)
!995 = !{!996, !999}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !994, file: !14, line: 386, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !994, file: !14, line: 395, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!260, !300}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1005, line: 41, size: 320, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1017, !1057}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1004, file: !1005, line: 42, baseType: !186, size: 8)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1004, file: !1005, line: 43, baseType: !840, size: 8, offset: 8)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1004, file: !1005, line: 44, baseType: !840, size: 8, offset: 16)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1004, file: !1005, line: 45, baseType: !840, size: 8, offset: 24)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1004, file: !1005, line: 46, baseType: !840, size: 8, offset: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !1005, line: 47, baseType: !1013, size: 64, offset: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !1005, line: 47, size: 64, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1013, file: !1005, line: 48, baseType: !275, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1013, file: !1005, line: 49, baseType: !85, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !1005, line: 61, baseType: !1018, size: 128, offset: 128)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !1005, line: 61, size: 128, elements: !1019)
!1019 = !{!1020, !1026}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1018, file: !1005, line: 67, baseType: !1021, size: 128)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1022, line: 17, size: 128, elements: !1023)
!1022 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1021, file: !1022, line: 19, baseType: !300, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1021, file: !1022, line: 20, baseType: !276, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !1005, line: 68, baseType: !1027, size: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !1005, line: 68, size: 128, elements: !1028)
!1028 = !{!1029, !1056}
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !1005, line: 69, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !1005, line: 69, size: 64, elements: !1031)
!1031 = !{!1032, !1035, !1042, !1046, !1055}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1030, file: !1005, line: 71, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1030, file: !1005, line: 72, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1005, line: 17, size: 128, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1038, file: !1005, line: 18, baseType: !300, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1038, file: !1005, line: 19, baseType: !275, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1030, file: !1005, line: 73, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1005, line: 73, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1030, file: !1005, line: 74, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1049, line: 296, size: 128, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1050 = !{!1051, !1052, !1054}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1048, file: !1049, line: 297, baseType: !158, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1048, file: !1049, line: 299, baseType: !1053, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !129, line: 154, baseType: !7)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1048, file: !1049, line: 300, baseType: !300, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1030, file: !1005, line: 75, baseType: !300, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1027, file: !1005, line: 77, baseType: !275, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !1005, line: 80, baseType: !1058, size: 64, offset: 256)
!1058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !1005, line: 80, size: 64, elements: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1058, file: !1005, line: 81, baseType: !278, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1058, file: !1005, line: 82, baseType: !470, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !961, file: !14, line: 1920, baseType: !978, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !961, file: !14, line: 1921, baseType: !1064, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!85, !981, !1067, !7}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !961, file: !14, line: 1923, baseType: !1070, size: 64, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!85, !968, !1073}
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1075)
!1075 = !{!1076, !1081}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1074, file: !14, line: 1859, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!840, !1073, !147, !85, !470, !382, !7}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1074, file: !14, line: 1860, baseType: !470, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !961, file: !14, line: 1924, baseType: !1083, size: 64, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!1086, !968, !1088}
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1087, line: 59, baseType: !7)
!1087 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1090, line: 37, size: 128, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1091 = !{!1092, !1098}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1089, file: !1090, line: 38, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1090, line: 31, baseType: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !968, !1097, !1088}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1089, file: !1090, line: 39, baseType: !1086, size: 32, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !961, file: !14, line: 1925, baseType: !1100, size: 64, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!264, !968, !7, !278}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !961, file: !14, line: 1926, baseType: !1100, size: 64, offset: 640)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !961, file: !14, line: 1927, baseType: !1105, size: 64, offset: 704)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!85, !968, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1110, line: 625, size: 1344, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1111 = !{!1112, !1121, !1289, !1295, !1302, !1303, !1308, !1309, !1314, !1315, !1318, !1322, !1323, !1324, !1325, !1326, !1329}
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !1110, line: 628, baseType: !1113, size: 128)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1109, file: !1110, line: 628, size: 128, elements: !1114)
!1114 = !{!1115, !1120}
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !1110, line: 629, baseType: !1116, size: 128)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1113, file: !1110, line: 629, size: 128, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1116, file: !1110, line: 631, baseType: !278, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1116, file: !1110, line: 632, baseType: !278, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1113, file: !1110, line: 635, baseType: !651, size: 128, align: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1109, file: !1110, line: 639, baseType: !1122, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1110, line: 733, size: 10240, elements: !1124)
!1124 = !{!1125, !1287}
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !1110, line: 734, baseType: !1126, size: 10240)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1123, file: !1110, line: 734, size: 10240, elements: !1127)
!1127 = !{!1128, !1132, !1145, !1149, !1150, !1151, !1152, !1153, !1154, !1163, !1164, !1165, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1204, !1206, !1209, !1256, !1257, !1258, !1261, !1262, !1263, !1266, !1267, !1268, !1274, !1275}
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !1110, line: 739, baseType: !1129, size: 512, align: 512)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1126, file: !1110, line: 739, size: 512, align: 512, elements: !1130)
!1130 = !{!1131}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1129, file: !1110, line: 747, baseType: !178, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1126, file: !1110, line: 750, baseType: !1133, size: 128, offset: 512)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1134, line: 218, size: 128, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1135 = !{!1136, !1143, !1144}
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !1134, line: 219, baseType: !1137, size: 32)
!1137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !1134, line: 219, size: 32, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1137, file: !1134, line: 220, baseType: !158, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1137, file: !1134, line: 221, baseType: !1141)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1134, line: 197, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1134, line: 197, elements: !512)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1133, file: !1134, line: 223, baseType: !7, size: 32, offset: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1133, file: !1134, line: 224, baseType: !300, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1126, file: !1110, line: 752, baseType: !1146, size: 64, offset: 640)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!278, !968, !278, !278, !278, !278}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1126, file: !1110, line: 756, baseType: !278, size: 64, offset: 704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1126, file: !1110, line: 757, baseType: !278, size: 64, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1126, file: !1110, line: 760, baseType: !278, size: 64, offset: 832)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1126, file: !1110, line: 761, baseType: !278, size: 64, offset: 896)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1126, file: !1110, line: 763, baseType: !278, size: 64, offset: 960)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1126, file: !1110, line: 764, baseType: !1155, size: 64, offset: 1024)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1157, line: 299, baseType: !1158)
!1157 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1157, line: 299, size: 64, elements: !1159)
!1159 = !{!1160}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1158, file: !1157, line: 299, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1162, line: 18, baseType: !278)
!1162 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1126, file: !1110, line: 773, baseType: !178, size: 32, offset: 1088)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1126, file: !1110, line: 785, baseType: !178, size: 32, offset: 1120)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1126, file: !1110, line: 795, baseType: !1166, size: 64, offset: 1152)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1110, line: 726, size: 128, elements: !1168)
!1168 = !{!1169, !1170}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1167, file: !1110, line: 727, baseType: !382, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1167, file: !1110, line: 728, baseType: !85, size: 32, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1126, file: !1110, line: 801, baseType: !278, size: 64, offset: 1216)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1126, file: !1110, line: 804, baseType: !597, size: 64, offset: 1280)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1126, file: !1110, line: 806, baseType: !85, size: 32, offset: 1344)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1126, file: !1110, line: 808, baseType: !158, size: 32, offset: 1376)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1126, file: !1110, line: 823, baseType: !781, size: 320, offset: 1408)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1126, file: !1110, line: 825, baseType: !128, size: 128, offset: 1728)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1126, file: !1110, line: 845, baseType: !85, size: 32, offset: 1856)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1126, file: !1110, line: 849, baseType: !278, size: 64, offset: 1920)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1126, file: !1110, line: 850, baseType: !278, size: 64, offset: 1984)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1126, file: !1110, line: 852, baseType: !278, size: 64, offset: 2048)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1126, file: !1110, line: 853, baseType: !278, size: 64, offset: 2112)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1126, file: !1110, line: 854, baseType: !599, size: 64, offset: 2176)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1126, file: !1110, line: 855, baseType: !278, size: 64, offset: 2240)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1126, file: !1110, line: 856, baseType: !278, size: 64, offset: 2304)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1126, file: !1110, line: 857, baseType: !278, size: 64, offset: 2368)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1126, file: !1110, line: 858, baseType: !278, size: 64, offset: 2432)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1126, file: !1110, line: 865, baseType: !355, size: 32, offset: 2496)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1126, file: !1110, line: 867, baseType: !158, size: 32, offset: 2528)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1126, file: !1110, line: 869, baseType: !278, size: 64, offset: 2560)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1126, file: !1110, line: 869, baseType: !278, size: 64, offset: 2624)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1126, file: !1110, line: 869, baseType: !278, size: 64, offset: 2688)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1126, file: !1110, line: 869, baseType: !278, size: 64, offset: 2752)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1126, file: !1110, line: 870, baseType: !278, size: 64, offset: 2816)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1126, file: !1110, line: 870, baseType: !278, size: 64, offset: 2880)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1126, file: !1110, line: 870, baseType: !278, size: 64, offset: 2944)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1126, file: !1110, line: 871, baseType: !278, size: 64, offset: 3008)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1126, file: !1110, line: 871, baseType: !278, size: 64, offset: 3072)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1126, file: !1110, line: 871, baseType: !278, size: 64, offset: 3136)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1126, file: !1110, line: 871, baseType: !278, size: 64, offset: 3200)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1126, file: !1110, line: 873, baseType: !1201, size: 3328, offset: 3264)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 3328, elements: !1202)
!1202 = !{!1203}
!1203 = !DISubrange(count: 52)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1126, file: !1110, line: 875, baseType: !1205, size: 1280, offset: 6592)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 1280, elements: !705)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1126, file: !1110, line: 877, baseType: !1207, size: 64, offset: 7872)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1110, line: 877, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1126, file: !1110, line: 880, baseType: !1210, size: 1088, offset: 7936)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1211, line: 72, baseType: !1212)
!1211 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1211, line: 23, size: 1088, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1221, !1222, !1223, !1224, !1251, !1252, !1253}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1212, file: !1211, line: 28, baseType: !382, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1212, file: !1211, line: 38, baseType: !599, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1212, file: !1211, line: 40, baseType: !278, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1212, file: !1211, line: 43, baseType: !781, size: 320, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1212, file: !1211, line: 44, baseType: !1219, size: 64, offset: 512)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1211, line: 44, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1212, file: !1211, line: 48, baseType: !278, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1212, file: !1211, line: 59, baseType: !593, size: 256, offset: 640)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1212, file: !1211, line: 60, baseType: !300, size: 64, offset: 896)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1212, file: !1211, line: 61, baseType: !1225, size: 64, offset: 960)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1227)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1228, line: 13, size: 1216, elements: !1229)
!1228 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1227, file: !1228, line: 14, baseType: !300, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1227, file: !1228, line: 15, baseType: !278, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1227, file: !1228, line: 17, baseType: !278, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1227, file: !1228, line: 17, baseType: !278, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1227, file: !1228, line: 18, baseType: !278, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1227, file: !1228, line: 18, baseType: !278, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1227, file: !1228, line: 19, baseType: !1237, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1227, file: !1228, line: 21, baseType: !264, size: 64, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1227, file: !1228, line: 23, baseType: !264, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1227, file: !1228, line: 24, baseType: !264, size: 64, offset: 576)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1227, file: !1228, line: 25, baseType: !264, size: 64, offset: 640)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1227, file: !1228, line: 26, baseType: !264, size: 64, offset: 704)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1227, file: !1228, line: 27, baseType: !264, size: 64, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1227, file: !1228, line: 28, baseType: !264, size: 64, offset: 832)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1227, file: !1228, line: 29, baseType: !264, size: 64, offset: 896)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1227, file: !1228, line: 30, baseType: !264, size: 64, offset: 960)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1227, file: !1228, line: 31, baseType: !264, size: 64, offset: 1024)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1227, file: !1228, line: 32, baseType: !264, size: 64, offset: 1088)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1227, file: !1228, line: 33, baseType: !264, size: 64, offset: 1152)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1212, file: !1211, line: 63, baseType: !178, size: 32, offset: 1024)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1212, file: !1211, line: 69, baseType: !196, size: 16, offset: 1056)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1212, file: !1211, line: 70, baseType: !1254, size: 16, offset: 1072)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !187, line: 18, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !189, line: 23, baseType: !809)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1126, file: !1110, line: 882, baseType: !278, size: 64, offset: 9024)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1126, file: !1110, line: 885, baseType: !158, size: 32, offset: 9088)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1126, file: !1110, line: 886, baseType: !1259, size: 64, offset: 9152)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1110, line: 732, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1126, file: !1110, line: 901, baseType: !923, size: 64, offset: 9216)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1126, file: !1110, line: 904, baseType: !968, size: 64, offset: 9280)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1126, file: !1110, line: 906, baseType: !1264, size: 64, offset: 9344)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1110, line: 906, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1126, file: !1110, line: 930, baseType: !178, size: 32, offset: 9408)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1126, file: !1110, line: 933, baseType: !178, size: 32, offset: 9440)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1126, file: !1110, line: 935, baseType: !1269, size: 64, offset: 9472)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1270)
!1270 = !{!1271}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1269, file: !44, line: 104, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1126, file: !1110, line: 940, baseType: !597, size: 64, offset: 9536)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1126, file: !1110, line: 942, baseType: !1276, size: 256, offset: 9600)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1277, line: 98, size: 256, elements: !1278)
!1277 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1278 = !{!1279, !1280, !1281}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1276, file: !1277, line: 99, baseType: !597, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1276, file: !1277, line: 100, baseType: !128, size: 128, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1276, file: !1277, line: 101, baseType: !1282, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1277, line: 21, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !1286}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1123, file: !1110, line: 986, baseType: !1288, offset: 10240)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, elements: !724)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1109, file: !1110, line: 640, baseType: !1290, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1157, line: 297, baseType: !1291)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1157, line: 297, size: 64, elements: !1292)
!1292 = !{!1293}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1291, file: !1157, line: 297, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1162, line: 19, baseType: !278)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !1110, line: 646, baseType: !1296, size: 64, offset: 256)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1109, file: !1110, line: 646, size: 64, elements: !1297)
!1297 = !{!1298, !1301}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1296, file: !1110, line: 647, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1110, line: 542, baseType: !278)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1296, file: !1110, line: 648, baseType: !1300, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1109, file: !1110, line: 666, baseType: !85, size: 32, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1109, file: !1110, line: 667, baseType: !1304, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1110, line: 579, size: 320, elements: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1305, file: !1110, line: 580, baseType: !781, size: 320)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1109, file: !1110, line: 670, baseType: !840, size: 8, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1109, file: !1110, line: 681, baseType: !1310, size: 256, offset: 512)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1109, file: !1110, line: 678, size: 256, elements: !1311)
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1310, file: !1110, line: 679, baseType: !773, size: 192, align: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1310, file: !1110, line: 680, baseType: !278, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1109, file: !1110, line: 689, baseType: !128, size: 128, offset: 768)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1109, file: !1110, line: 691, baseType: !1316, size: 64, offset: 896)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1110, line: 691, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1109, file: !1110, line: 694, baseType: !1319, size: 64, offset: 960)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1321)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1110, line: 694, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1109, file: !1110, line: 697, baseType: !278, size: 64, offset: 1024)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1109, file: !1110, line: 699, baseType: !968, size: 64, offset: 1088)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1109, file: !1110, line: 700, baseType: !300, size: 64, offset: 1152)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1109, file: !1110, line: 711, baseType: !597, size: 64, offset: 1216)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1109, file: !1110, line: 717, baseType: !1327, size: 64, offset: 1280)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1110, line: 717, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1109, file: !1110, line: 722, baseType: !1330, offset: 1344)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1110, line: 570, elements: !512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !961, file: !14, line: 1928, baseType: !278, size: 64, offset: 768)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !961, file: !14, line: 1929, baseType: !1333, size: 64, offset: 832)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!85, !309, !968}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !961, file: !14, line: 1930, baseType: !1337, size: 64, offset: 896)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!85, !968, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !300)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !961, file: !14, line: 1931, baseType: !1333, size: 64, offset: 960)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !961, file: !14, line: 1932, baseType: !1343, size: 64, offset: 1024)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!85, !968, !470, !470, !85}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !961, file: !14, line: 1933, baseType: !1347, size: 64, offset: 1088)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!85, !85, !968, !85}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !961, file: !14, line: 1934, baseType: !1351, size: 64, offset: 1152)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!85, !968, !85, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !961, file: !14, line: 1935, baseType: !1146, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !961, file: !14, line: 1936, baseType: !1358, size: 64, offset: 1280)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!85, !85}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !961, file: !14, line: 1937, baseType: !1351, size: 64, offset: 1344)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !961, file: !14, line: 1938, baseType: !1363, size: 64, offset: 1408)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!260, !1366, !968, !622, !275, !7}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1368, line: 59, flags: DIFlagFwdDecl)
!1368 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !961, file: !14, line: 1939, baseType: !1370, size: 64, offset: 1472)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!260, !968, !622, !1366, !275, !7}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !961, file: !14, line: 1940, baseType: !1374, size: 64, offset: 1536)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !968}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !961, file: !14, line: 1941, baseType: !1378, size: 64, offset: 1600)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!85, !968, !85, !1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !961, file: !14, line: 1942, baseType: !1384, size: 64, offset: 1664)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!264, !968, !85, !470, !470}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !961, file: !14, line: 1944, baseType: !1388, size: 64, offset: 1728)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !581, !968}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !961, file: !14, line: 1948, baseType: !1392, size: 64, offset: 1792)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!260, !968, !470, !968, !470, !275, !7}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !961, file: !14, line: 1950, baseType: !1396, size: 64, offset: 1856)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!470, !968, !470, !968, !470, !470, !7}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !961, file: !14, line: 1953, baseType: !1343, size: 64, offset: 1920)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !961, file: !14, line: 1954, baseType: !1401, size: 64, offset: 1984)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!85, !1404, !7}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !961, file: !14, line: 1955, baseType: !1407, size: 64, offset: 2048)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!85, !1404, !1067, !7}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !639, file: !14, line: 1018, baseType: !382, size: 64, offset: 1472)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !639, file: !14, line: 1020, baseType: !300, size: 64, offset: 1536)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !639, file: !14, line: 1023, baseType: !300, size: 64, offset: 1600)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !639, file: !14, line: 1027, baseType: !1414, size: 64, offset: 1664)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !639, file: !14, line: 1029, baseType: !305, size: 64, offset: 1728)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !639, file: !14, line: 1030, baseType: !1417, size: 32, offset: 1792)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1418, line: 8, baseType: !378)
!1418 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !639, file: !14, line: 1031, baseType: !1417, size: 32, offset: 1824)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !582, file: !583, line: 29, baseType: !300, size: 64, offset: 896)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !524, file: !14, line: 2077, baseType: !578, size: 64, offset: 1088)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !524, file: !14, line: 2078, baseType: !578, size: 64, offset: 1152)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !524, file: !14, line: 2079, baseType: !578, size: 64, offset: 1216)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !524, file: !14, line: 2081, baseType: !1425, size: 64, offset: 1280)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!260, !460, !85, !228, !275, !470}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !524, file: !14, line: 2082, baseType: !1429, size: 64, offset: 1344)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!260, !460, !85, !147, !275, !470}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !524, file: !14, line: 2083, baseType: !1433, size: 64, offset: 1408)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!1436, !309}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1464, !1465, !1466}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1438, file: !27, line: 297, baseType: !504, size: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1438, file: !27, line: 298, baseType: !128, size: 128, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1438, file: !27, line: 299, baseType: !128, size: 128, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1438, file: !27, line: 300, baseType: !128, size: 128, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1438, file: !27, line: 301, baseType: !593, size: 256, offset: 512)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1438, file: !27, line: 302, baseType: !158, size: 32, offset: 768)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1438, file: !27, line: 303, baseType: !178, size: 32, offset: 800)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1438, file: !27, line: 304, baseType: !460, size: 64, offset: 832)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1438, file: !27, line: 305, baseType: !1449, size: 64, offset: 896)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !1450)
!1450 = !{!1451, !1463}
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !27, line: 69, baseType: !1452, size: 32)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !27, line: 69, size: 32, elements: !1453)
!1453 = !{!1454, !1455, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1452, file: !27, line: 70, baseType: !315, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1452, file: !27, line: 71, baseType: !324, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1452, file: !27, line: 72, baseType: !1457, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1458, line: 24, baseType: !1459)
!1458 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1458, line: 22, size: 32, elements: !1460)
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1459, file: !1458, line: 23, baseType: !1462, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1458, line: 20, baseType: !321)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1449, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1438, file: !27, line: 306, baseType: !470, size: 64, offset: 960)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1438, file: !27, line: 307, baseType: !278, size: 64, offset: 1024)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1438, file: !27, line: 308, baseType: !1467, size: 576, offset: 1088)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !1468)
!1468 = !{!1469, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1467, file: !27, line: 206, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !472)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1467, file: !27, line: 207, baseType: !1470, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1467, file: !27, line: 208, baseType: !1470, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1467, file: !27, line: 209, baseType: !1470, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1467, file: !27, line: 210, baseType: !1470, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1467, file: !27, line: 211, baseType: !1470, size: 64, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1467, file: !27, line: 212, baseType: !1470, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1467, file: !27, line: 213, baseType: !797, size: 64, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1467, file: !27, line: 214, baseType: !797, size: 64, offset: 512)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !524, file: !14, line: 2085, baseType: !1480, size: 64, offset: 1472)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!264, !460, !1483}
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1485, line: 15, size: 256, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1486 = !{!1487, !1488, !1489, !1490, !1491}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1484, file: !1485, line: 16, baseType: !1053, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1484, file: !1485, line: 19, baseType: !85, size: 32, offset: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1484, file: !1485, line: 26, baseType: !278, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1484, file: !1485, line: 33, baseType: !278, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1484, file: !1485, line: 36, baseType: !1492, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1110, line: 33, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !524, file: !14, line: 2087, baseType: !1480, size: 64, offset: 1536)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !524, file: !14, line: 2089, baseType: !494, size: 64, offset: 1600)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !461, file: !14, line: 1198, baseType: !1497, size: 64, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !1500)
!1500 = !{!1501, !1505, !1509, !1513, !1514, !1515, !1516, !1517, !1522, !1527, !1531}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1499, file: !27, line: 325, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!85, !1437}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1499, file: !27, line: 326, baseType: !1506, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!1437, !460, !85}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1499, file: !27, line: 327, baseType: !1510, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !1437}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1499, file: !27, line: 328, baseType: !1502, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1499, file: !27, line: 329, baseType: !1502, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1499, file: !27, line: 330, baseType: !1502, size: 64, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1499, file: !27, line: 331, baseType: !552, size: 64, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1499, file: !27, line: 334, baseType: !1518, size: 64, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1521, !309}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1499, file: !27, line: 335, baseType: !1523, size: 64, offset: 512)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!85, !309, !1526}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1499, file: !27, line: 337, baseType: !1528, size: 64, offset: 576)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!85, !309, !1521}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1499, file: !27, line: 339, baseType: !1532, size: 64, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!85, !460, !1535}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !461, file: !14, line: 1199, baseType: !1537, size: 64, offset: 512)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !1540)
!1540 = !{!1541, !1547, !1548, !1552, !1553, !1554, !1569, !1592, !1596, !1597, !1620}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1539, file: !27, line: 431, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!85, !460, !85, !85, !1545}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1539, file: !27, line: 432, baseType: !552, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1539, file: !27, line: 433, baseType: !1549, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!85, !460, !7}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1539, file: !27, line: 434, baseType: !1549, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1539, file: !27, line: 435, baseType: !552, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1539, file: !27, line: 436, baseType: !1555, size: 64, offset: 320)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!85, !460, !85, !1558}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1559, file: !27, line: 418, baseType: !85, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1559, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1559, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1559, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1559, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1559, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1559, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1559, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1539, file: !27, line: 437, baseType: !1570, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!85, !460, !1449, !1573}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1574, file: !27, line: 346, baseType: !85, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1574, file: !27, line: 347, baseType: !382, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1574, file: !27, line: 348, baseType: !382, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1574, file: !27, line: 349, baseType: !382, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1574, file: !27, line: 350, baseType: !382, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1574, file: !27, line: 351, baseType: !382, size: 64, offset: 320)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1574, file: !27, line: 352, baseType: !382, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1574, file: !27, line: 353, baseType: !603, size: 64, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1574, file: !27, line: 355, baseType: !603, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1574, file: !27, line: 356, baseType: !85, size: 32, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1574, file: !27, line: 357, baseType: !85, size: 32, offset: 608)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1574, file: !27, line: 358, baseType: !382, size: 64, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1574, file: !27, line: 359, baseType: !382, size: 64, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1574, file: !27, line: 360, baseType: !382, size: 64, offset: 768)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1574, file: !27, line: 361, baseType: !603, size: 64, offset: 832)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1574, file: !27, line: 362, baseType: !85, size: 32, offset: 896)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1539, file: !27, line: 438, baseType: !1593, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!85, !460, !1535, !1573}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1539, file: !27, line: 440, baseType: !1570, size: 64, offset: 512)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1539, file: !27, line: 441, baseType: !1598, size: 64, offset: 576)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!85, !460, !1601}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !1603)
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1602, file: !27, line: 412, baseType: !7, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1602, file: !27, line: 413, baseType: !1606, size: 1344, offset: 64)
!1606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1607, size: 1344, elements: !229)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !1608)
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1619}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1607, file: !27, line: 398, baseType: !7, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1607, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1607, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1607, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1607, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1607, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1607, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1607, file: !27, line: 406, baseType: !384, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1607, file: !27, line: 407, baseType: !1618, size: 64, offset: 320)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !129, line: 132, baseType: !382)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1607, file: !27, line: 408, baseType: !1618, size: 64, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1539, file: !27, line: 442, baseType: !1549, size: 64, offset: 640)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !461, file: !14, line: 1200, baseType: !1622, size: 64, offset: 576)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1624)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !461, file: !14, line: 1201, baseType: !278, size: 64, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !461, file: !14, line: 1202, baseType: !278, size: 64, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !461, file: !14, line: 1203, baseType: !278, size: 64, offset: 768)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !461, file: !14, line: 1204, baseType: !344, size: 64, offset: 832)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !461, file: !14, line: 1205, baseType: !781, size: 320, offset: 896)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !461, file: !14, line: 1206, baseType: !85, size: 32, offset: 1216)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !461, file: !14, line: 1207, baseType: !178, size: 32, offset: 1248)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !461, file: !14, line: 1209, baseType: !300, size: 64, offset: 1280)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !461, file: !14, line: 1211, baseType: !1634, size: 64, offset: 1344)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1637)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !461, file: !14, line: 1223, baseType: !1639, size: 64, offset: 1408)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !361, line: 34, size: 64, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1639, file: !361, line: 35, baseType: !364, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !461, file: !14, line: 1224, baseType: !128, size: 128, offset: 1472)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !461, file: !14, line: 1225, baseType: !1644, size: 64, offset: 1600)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !461, file: !14, line: 1226, baseType: !1647, size: 64, offset: 1664)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !461, file: !14, line: 1227, baseType: !1650, size: 64, offset: 1728)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !461, file: !14, line: 1228, baseType: !1653, size: 64, offset: 1792)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !461, file: !14, line: 1229, baseType: !504, size: 128, offset: 1856)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !461, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !461, file: !14, line: 1231, baseType: !1658, size: 2496, offset: 2048)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1664, !1696}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1658, file: !27, line: 522, baseType: !7, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1658, file: !27, line: 523, baseType: !781, size: 320, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1658, file: !27, line: 524, baseType: !1663, size: 192, offset: 384)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 192, elements: !229)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1658, file: !27, line: 525, baseType: !1665, size: 1728, offset: 576)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1666, size: 1728, elements: !229)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !1667)
!1667 = !{!1668, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1666, file: !27, line: 223, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !1671)
!1671 = !{!1672, !1673, !1686, !1687}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1670, file: !27, line: 446, baseType: !85, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1670, file: !27, line: 447, baseType: !1674, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1676, file: !27, line: 313, baseType: !552, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1676, file: !27, line: 314, baseType: !552, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1676, file: !27, line: 315, baseType: !552, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1676, file: !27, line: 316, baseType: !552, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1676, file: !27, line: 317, baseType: !1502, size: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1676, file: !27, line: 318, baseType: !1502, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1676, file: !27, line: 319, baseType: !1502, size: 64, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1676, file: !27, line: 320, baseType: !1532, size: 64, offset: 448)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1670, file: !27, line: 448, baseType: !123, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1670, file: !27, line: 449, baseType: !1669, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1666, file: !27, line: 224, baseType: !85, size: 32, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1666, file: !27, line: 226, baseType: !128, size: 128, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1666, file: !27, line: 227, baseType: !278, size: 64, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1666, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1666, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1666, file: !27, line: 230, baseType: !1470, size: 64, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1666, file: !27, line: 231, baseType: !1470, size: 64, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1666, file: !27, line: 232, baseType: !300, size: 64, offset: 512)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1658, file: !27, line: 526, baseType: !1697, size: 192, offset: 2304)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1674, size: 192, elements: !229)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !461, file: !14, line: 1233, baseType: !1699, size: 2368, offset: 4544)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1700)
!1700 = !{!1701, !1702, !1703}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1699, file: !14, line: 1185, baseType: !198, size: 16)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1699, file: !14, line: 1186, baseType: !198, size: 16, offset: 16)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1699, file: !14, line: 1187, baseType: !1704, size: 2304, offset: 64)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1705, size: 2304, elements: !229)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1706, line: 12, size: 768, elements: !1707)
!1706 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1707 = !{!1708, !1716, !1718, !3004, !3005}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1705, file: !1706, line: 13, baseType: !1709, size: 384)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1710, line: 17, size: 384, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1711 = !{!1712, !1713, !1714, !1715}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1709, file: !1710, line: 18, baseType: !85, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1709, file: !1710, line: 19, baseType: !85, size: 32, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1709, file: !1710, line: 20, baseType: !709, size: 192, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1709, file: !1710, line: 22, baseType: !651, size: 128, align: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1705, file: !1706, line: 14, baseType: !1717, size: 64, offset: 384)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1705, file: !1706, line: 15, baseType: !1719, size: 64, offset: 448)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1720, line: 16, size: 64, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1721 = !{!1722}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1719, file: !1720, line: 17, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1368, line: 746, size: 58368, elements: !1725)
!1725 = !{!1726, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1806, !1817, !1912, !1916, !1919, !1950, !1951, !1952, !1953, !1964, !1966, !1967, !1968, !1969, !1970, !1971, !1982, !1983, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !2000, !2001, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2094, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2109, !2110, !2111, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2153, !2159, !2160, !2161, !2162, !2163, !2167, !2170, !2177, !2182, !2185, !2188, !2191, !2194, !2334, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2374, !2375, !2376, !2385, !2393, !2394, !2395, !2396, !2397, !2402, !2403, !2404, !2407, !2408, !2411, !2414, !2417, !2425, !2428, !2429, !2515, !2516, !2517, !2518, !2519, !2525, !2526, !2527, !2528, !2531, !2532, !2535, !2549, !2550, !2553, !2554, !2555, !2558, !2559, !2560, !2561, !2562, !2563, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2595, !2596, !2662, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2674, !2746, !2748, !2749, !2750, !2751, !2752, !2764, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2781, !2782, !2783}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1724, file: !1368, line: 752, baseType: !1727, size: 192)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1728, line: 56, size: 192, elements: !1729)
!1728 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1729 = !{!1730, !1731, !1732, !1733}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1727, file: !1728, line: 57, baseType: !278, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1727, file: !1728, line: 58, baseType: !278, size: 64, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1727, file: !1728, line: 59, baseType: !378, size: 32, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1727, file: !1728, line: 61, baseType: !378, size: 32, offset: 160)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1724, file: !1368, line: 754, baseType: !7, size: 32, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1724, file: !1368, line: 767, baseType: !300, size: 64, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1724, file: !1368, line: 768, baseType: !696, size: 32, offset: 320)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1724, file: !1368, line: 770, baseType: !7, size: 32, offset: 352)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1724, file: !1368, line: 771, baseType: !7, size: 32, offset: 384)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1724, file: !1368, line: 774, baseType: !85, size: 32, offset: 416)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1724, file: !1368, line: 775, baseType: !1741, size: 128, offset: 448)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1742, line: 58, size: 128, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1743 = !{!1744, !1745, !1750, !1751}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1741, file: !1742, line: 59, baseType: !645, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1742, line: 60, baseType: !1746, size: 32, offset: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !1742, line: 60, size: 32, elements: !1747)
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1746, file: !1742, line: 61, baseType: !7, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1746, file: !1742, line: 62, baseType: !178, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1741, file: !1742, line: 65, baseType: !196, size: 16, offset: 96)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1741, file: !1742, line: 65, baseType: !196, size: 16, offset: 112)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1724, file: !1368, line: 776, baseType: !7, size: 32, offset: 576)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1724, file: !1368, line: 777, baseType: !278, size: 64, offset: 640)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1724, file: !1368, line: 778, baseType: !1723, size: 64, offset: 704)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1724, file: !1368, line: 787, baseType: !85, size: 32, offset: 768)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1724, file: !1368, line: 788, baseType: !85, size: 32, offset: 800)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1724, file: !1368, line: 790, baseType: !85, size: 32, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1724, file: !1368, line: 792, baseType: !85, size: 32, offset: 864)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1724, file: !1368, line: 793, baseType: !85, size: 32, offset: 896)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1724, file: !1368, line: 794, baseType: !85, size: 32, offset: 928)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1724, file: !1368, line: 795, baseType: !7, size: 32, offset: 960)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1724, file: !1368, line: 797, baseType: !1763, size: 2048, offset: 1024)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1368, line: 551, size: 2048, elements: !1764)
!1764 = !{!1765, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1785, !1788, !1789, !1790}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1763, file: !1368, line: 553, baseType: !1766, size: 128)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1368, line: 411, size: 128, elements: !1767)
!1767 = !{!1768, !1769}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1766, file: !1368, line: 412, baseType: !278, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1766, file: !1368, line: 413, baseType: !378, size: 32, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1763, file: !1368, line: 554, baseType: !773, size: 192, align: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1763, file: !1368, line: 555, baseType: !382, size: 64, offset: 320)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1763, file: !1368, line: 556, baseType: !382, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1763, file: !1368, line: 558, baseType: !128, size: 128, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1763, file: !1368, line: 559, baseType: !7, size: 32, offset: 576)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1763, file: !1368, line: 561, baseType: !382, size: 64, offset: 640)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1763, file: !1368, line: 562, baseType: !382, size: 64, offset: 704)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1763, file: !1368, line: 563, baseType: !382, size: 64, offset: 768)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1763, file: !1368, line: 564, baseType: !382, size: 64, offset: 832)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1763, file: !1368, line: 565, baseType: !603, size: 64, offset: 896)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1763, file: !1368, line: 566, baseType: !382, size: 64, offset: 960)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1763, file: !1368, line: 568, baseType: !382, size: 64, offset: 1024)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1763, file: !1368, line: 571, baseType: !85, size: 32, offset: 1088)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1763, file: !1368, line: 572, baseType: !1784, size: 64, offset: 1152)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1763, file: !1368, line: 574, baseType: !1786, size: 64, offset: 1216)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1368, line: 49, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1763, file: !1368, line: 576, baseType: !1786, size: 64, offset: 1280)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1763, file: !1368, line: 578, baseType: !278, size: 64, offset: 1344)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1763, file: !1368, line: 588, baseType: !1791, size: 512, align: 512, offset: 1536)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1368, line: 497, size: 512, align: 512, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1791, file: !1368, line: 498, baseType: !382, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1791, file: !1368, line: 499, baseType: !382, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1791, file: !1368, line: 500, baseType: !382, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1791, file: !1368, line: 501, baseType: !378, size: 32, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1791, file: !1368, line: 502, baseType: !378, size: 32, offset: 224)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1791, file: !1368, line: 503, baseType: !278, size: 64, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1791, file: !1368, line: 504, baseType: !278, size: 64, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1791, file: !1368, line: 505, baseType: !278, size: 64, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1791, file: !1368, line: 506, baseType: !1802, size: 64, align: 64, offset: 448)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1368, line: 445, size: 64, align: 64, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1802, file: !1368, line: 446, baseType: !7, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1802, file: !1368, line: 447, baseType: !7, size: 32, offset: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1724, file: !1368, line: 798, baseType: !1807, size: 384, offset: 3072)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1368, line: 592, size: 384, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1807, file: !1368, line: 593, baseType: !128, size: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1807, file: !1368, line: 594, baseType: !278, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1807, file: !1368, line: 595, baseType: !278, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1807, file: !1368, line: 596, baseType: !7, size: 32, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1807, file: !1368, line: 597, baseType: !198, size: 16, offset: 288)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1807, file: !1368, line: 598, baseType: !198, size: 16, offset: 304)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1807, file: !1368, line: 600, baseType: !1816, size: 64, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1724, file: !1368, line: 799, baseType: !1818, size: 1792, offset: 3456)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1368, line: 610, size: 1792, elements: !1819)
!1819 = !{!1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1909, !1910}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1818, file: !1368, line: 611, baseType: !773, size: 192, align: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1818, file: !1368, line: 618, baseType: !382, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1818, file: !1368, line: 619, baseType: !382, size: 64, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1818, file: !1368, line: 620, baseType: !382, size: 64, offset: 320)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1818, file: !1368, line: 621, baseType: !382, size: 64, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1818, file: !1368, line: 622, baseType: !382, size: 64, offset: 448)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1818, file: !1368, line: 629, baseType: !603, size: 64, offset: 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1818, file: !1368, line: 630, baseType: !382, size: 64, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1818, file: !1368, line: 631, baseType: !7, size: 32, offset: 640)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1818, file: !1368, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1818, file: !1368, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1818, file: !1368, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1818, file: !1368, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1818, file: !1368, line: 662, baseType: !1834, size: 512, offset: 704)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1835)
!1835 = !{!1836, !1844, !1845, !1850, !1905, !1906, !1907, !1908}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1834, file: !33, line: 119, baseType: !1837, size: 256)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1838, line: 9, size: 256, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1837, file: !1838, line: 10, baseType: !773, size: 192, align: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1837, file: !1838, line: 11, baseType: !1842, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1843, line: 29, baseType: !603)
!1843 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1834, file: !33, line: 120, baseType: !1842, size: 64, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1834, file: !33, line: 121, baseType: !1846, size: 64, offset: 320)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!32, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1834, file: !33, line: 122, baseType: !1851, size: 64, offset: 384)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1853)
!1853 = !{!1854, !1879, !1880, !1883, !1888, !1889, !1900, !1904}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1852, file: !33, line: 160, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1856, file: !33, line: 216, baseType: !606, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1856, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1856, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1856, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1856, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1856, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1856, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1856, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1856, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1856, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1856, file: !33, line: 227, baseType: !198, size: 16, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1856, file: !33, line: 228, baseType: !198, size: 16, offset: 208)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1856, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1856, file: !33, line: 235, baseType: !1842, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1856, file: !33, line: 236, baseType: !1849, size: 64, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1856, file: !33, line: 237, baseType: !1842, size: 64, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1856, file: !33, line: 238, baseType: !1849, size: 64, offset: 448)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1856, file: !33, line: 239, baseType: !1876, size: 4096, align: 512, offset: 512)
!1876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1852, size: 4096, align: 512, elements: !1877)
!1877 = !{!1878}
!1878 = !DISubrange(count: 8)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1852, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1852, file: !33, line: 162, baseType: !1881, size: 32, offset: 96)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !129, line: 32, baseType: !1882)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !262, line: 96, baseType: !85)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1852, file: !33, line: 163, baseType: !1884, size: 32, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !351, line: 274, baseType: !1885)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !351, line: 274, size: 32, elements: !1886)
!1886 = !{!1887}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1885, file: !351, line: 274, baseType: !355, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1852, file: !33, line: 164, baseType: !1849, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1852, file: !33, line: 165, baseType: !1890, size: 128, offset: 256)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1838, line: 14, size: 128, elements: !1891)
!1891 = !{!1892}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1890, file: !1838, line: 15, baseType: !1893, size: 128)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !774, line: 26, size: 128, elements: !1894)
!1894 = !{!1895, !1899}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1893, file: !774, line: 27, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !774, line: 12, size: 64, elements: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1896, file: !774, line: 13, baseType: !778, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1893, file: !774, line: 28, baseType: !778, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1852, file: !33, line: 166, baseType: !1901, size: 64, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!1842}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1852, file: !33, line: 167, baseType: !1842, size: 64, offset: 448)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1834, file: !33, line: 123, baseType: !186, size: 8, offset: 448)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1834, file: !33, line: 124, baseType: !186, size: 8, offset: 456)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1834, file: !33, line: 125, baseType: !186, size: 8, offset: 464)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1834, file: !33, line: 126, baseType: !186, size: 8, offset: 472)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1818, file: !1368, line: 671, baseType: !1834, size: 512, offset: 1216)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1818, file: !1368, line: 679, baseType: !1911, size: 64, offset: 1728)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1724, file: !1368, line: 800, baseType: !1913, size: 64, offset: 5248)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1915)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1368, line: 800, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1724, file: !1368, line: 809, baseType: !1917, size: 64, offset: 5312)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1368, line: 70, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1724, file: !1368, line: 825, baseType: !1920, size: 2048, align: 512, offset: 5632)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1368, line: 509, size: 2048, align: 512, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1920, file: !1368, line: 511, baseType: !382, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1920, file: !1368, line: 512, baseType: !382, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1920, file: !1368, line: 513, baseType: !382, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1920, file: !1368, line: 514, baseType: !382, size: 64, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1920, file: !1368, line: 515, baseType: !382, size: 64, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1920, file: !1368, line: 516, baseType: !382, size: 64, offset: 320)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1920, file: !1368, line: 518, baseType: !382, size: 64, offset: 384)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1920, file: !1368, line: 519, baseType: !382, size: 64, offset: 448)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1920, file: !1368, line: 520, baseType: !603, size: 64, offset: 512)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1920, file: !1368, line: 522, baseType: !382, size: 64, offset: 576)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1920, file: !1368, line: 523, baseType: !382, size: 64, offset: 640)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1920, file: !1368, line: 524, baseType: !603, size: 64, offset: 704)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1920, file: !1368, line: 526, baseType: !603, size: 64, offset: 768)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1920, file: !1368, line: 527, baseType: !382, size: 64, offset: 832)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1920, file: !1368, line: 529, baseType: !382, size: 64, offset: 896)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1920, file: !1368, line: 530, baseType: !382, size: 64, offset: 960)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1920, file: !1368, line: 531, baseType: !382, size: 64, offset: 1024)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1920, file: !1368, line: 532, baseType: !382, size: 64, offset: 1088)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1920, file: !1368, line: 533, baseType: !382, size: 64, offset: 1152)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1920, file: !1368, line: 535, baseType: !382, size: 64, offset: 1216)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1920, file: !1368, line: 536, baseType: !382, size: 64, offset: 1280)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1920, file: !1368, line: 537, baseType: !382, size: 64, offset: 1344)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1920, file: !1368, line: 538, baseType: !382, size: 64, offset: 1408)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1920, file: !1368, line: 539, baseType: !382, size: 64, offset: 1472)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1920, file: !1368, line: 540, baseType: !382, size: 64, offset: 1536)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1920, file: !1368, line: 541, baseType: !382, size: 64, offset: 1600)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1920, file: !1368, line: 542, baseType: !382, size: 64, offset: 1664)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1920, file: !1368, line: 543, baseType: !382, size: 64, offset: 1728)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1724, file: !1368, line: 833, baseType: !7, size: 32, offset: 7680)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1724, file: !1368, line: 836, baseType: !7, size: 32, offset: 7712)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1724, file: !1368, line: 837, baseType: !85, size: 32, offset: 7744)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1724, file: !1368, line: 838, baseType: !1954, size: 64, offset: 7808)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1956)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1957, line: 19, baseType: !1958)
!1957 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1957, line: 19, size: 64, elements: !1959)
!1959 = !{!1960}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1958, file: !1957, line: 19, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 64, elements: !1962)
!1962 = !{!1963}
!1963 = !DISubrange(count: 1)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1724, file: !1368, line: 839, baseType: !1965, size: 64, offset: 7872)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1724, file: !1368, line: 840, baseType: !1956, size: 64, offset: 7936)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1724, file: !1368, line: 841, baseType: !300, size: 64, offset: 8000)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1724, file: !1368, line: 843, baseType: !198, size: 16, offset: 8064)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1724, file: !1368, line: 845, baseType: !198, size: 16, offset: 8080)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1724, file: !1368, line: 848, baseType: !85, size: 32, offset: 8096)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1724, file: !1368, line: 849, baseType: !1972, size: 32, offset: 8128)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1368, line: 718, size: 32, elements: !1973)
!1973 = !{!1974, !1981}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1972, file: !1368, line: 724, baseType: !1975, size: 32)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1972, file: !1368, line: 719, size: 32, elements: !1976)
!1976 = !{!1977, !1978, !1979, !1980}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1975, file: !1368, line: 720, baseType: !186, size: 8)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1975, file: !1368, line: 721, baseType: !186, size: 8, offset: 8)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1975, file: !1368, line: 722, baseType: !186, size: 8, offset: 16)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1975, file: !1368, line: 723, baseType: !186, size: 8, offset: 24)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1972, file: !1368, line: 725, baseType: !378, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1724, file: !1368, line: 850, baseType: !128, size: 128, offset: 8192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1724, file: !1368, line: 851, baseType: !1984, size: 64, offset: 8320)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1368, line: 60, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1724, file: !1368, line: 855, baseType: !278, size: 64, offset: 8384)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1724, file: !1368, line: 856, baseType: !186, size: 8, offset: 8448)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1724, file: !1368, line: 857, baseType: !186, size: 8, offset: 8456)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1724, file: !1368, line: 858, baseType: !85, size: 32, offset: 8480)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1724, file: !1368, line: 859, baseType: !128, size: 128, offset: 8512)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1724, file: !1368, line: 860, baseType: !85, size: 32, offset: 8640)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1724, file: !1368, line: 861, baseType: !128, size: 128, offset: 8704)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1724, file: !1368, line: 873, baseType: !1994, size: 256, offset: 8832)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1368, line: 376, size: 256, elements: !1995)
!1995 = !{!1996, !1997, !1998, !1999}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1994, file: !1368, line: 381, baseType: !278, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1994, file: !1368, line: 384, baseType: !384, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1994, file: !1368, line: 389, baseType: !384, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1994, file: !1368, line: 392, baseType: !384, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1724, file: !1368, line: 875, baseType: !128, size: 128, offset: 9088)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1724, file: !1368, line: 877, baseType: !2002, size: 320, offset: 9216)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2003, line: 86, size: 320, elements: !2004)
!2003 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2004 = !{!2005, !2006, !2007}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2002, file: !2003, line: 87, baseType: !85, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2002, file: !2003, line: 88, baseType: !128, size: 128, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2002, file: !2003, line: 89, baseType: !128, size: 128, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1724, file: !1368, line: 878, baseType: !773, size: 192, align: 64, offset: 9536)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1724, file: !1368, line: 881, baseType: !1122, size: 64, offset: 9728)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1724, file: !1368, line: 882, baseType: !1122, size: 64, offset: 9792)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1724, file: !1368, line: 884, baseType: !85, size: 32, offset: 9856)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1724, file: !1368, line: 885, baseType: !85, size: 32, offset: 9888)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1724, file: !1368, line: 886, baseType: !85, size: 32, offset: 9920)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1724, file: !1368, line: 888, baseType: !85, size: 32, offset: 9952)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1724, file: !1368, line: 890, baseType: !278, size: 64, offset: 9984)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1724, file: !1368, line: 893, baseType: !7, size: 32, offset: 10048)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1724, file: !1368, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1724, file: !1368, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1724, file: !1368, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1724, file: !1368, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1724, file: !1368, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1724, file: !1368, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1724, file: !1368, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1724, file: !1368, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1724, file: !1368, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1724, file: !1368, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1724, file: !1368, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1724, file: !1368, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1724, file: !1368, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1724, file: !1368, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1724, file: !1368, line: 969, baseType: !278, size: 64, offset: 10176)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1724, file: !1368, line: 971, baseType: !2033, size: 448, offset: 10240)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !2034)
!2034 = !{!2035, !2036, !2041}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2033, file: !38, line: 26, baseType: !278, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2033, file: !38, line: 27, baseType: !2037, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!264, !2040}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, scope: !2033, file: !38, line: 28, baseType: !2042, size: 320, offset: 128)
!2042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2033, file: !38, line: 28, size: 320, elements: !2043)
!2043 = !{!2044, !2054, !2079}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2042, file: !38, line: 37, baseType: !2045, size: 320)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !38, line: 30, size: 320, elements: !2046)
!2046 = !{!2047, !2049, !2050, !2051, !2052, !2053}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2045, file: !38, line: 31, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2045, file: !38, line: 32, baseType: !378, size: 32, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2045, file: !38, line: 33, baseType: !378, size: 32, offset: 96)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2045, file: !38, line: 34, baseType: !378, size: 32, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2045, file: !38, line: 35, baseType: !382, size: 64, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2045, file: !38, line: 36, baseType: !2048, size: 64, offset: 256)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2042, file: !38, line: 47, baseType: !2055, size: 192)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !38, line: 39, size: 192, elements: !2056)
!2056 = !{!2057, !2058, !2059, !2078}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2055, file: !38, line: 40, baseType: !1881, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2055, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, scope: !2055, file: !38, line: 42, baseType: !2060, size: 64, offset: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2055, file: !38, line: 42, size: 64, elements: !2061)
!2061 = !{!2062, !2070}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2060, file: !38, line: 43, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2065, line: 7, size: 128, elements: !2066)
!2065 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2066 = !{!2067, !2069}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2064, file: !2065, line: 8, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !262, line: 93, baseType: !472)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2064, file: !2065, line: 9, baseType: !472, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2060, file: !38, line: 44, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2073, line: 7, size: 64, elements: !2074)
!2073 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2074 = !{!2075, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2072, file: !2073, line: 8, baseType: !2076, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2073, line: 5, baseType: !766)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2072, file: !2073, line: 9, baseType: !766, size: 32, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2055, file: !38, line: 46, baseType: !382, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2042, file: !38, line: 55, baseType: !2080, size: 256)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !38, line: 49, size: 256, elements: !2081)
!2081 = !{!2082, !2090, !2091, !2092, !2093}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2080, file: !38, line: 50, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2085, line: 36, size: 64, elements: !2086)
!2085 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2086 = !{!2087, !2088, !2089}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2084, file: !2085, line: 37, baseType: !85, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2084, file: !2085, line: 38, baseType: !809, size: 16, offset: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2084, file: !2085, line: 39, baseType: !809, size: 16, offset: 48)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2080, file: !38, line: 51, baseType: !85, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2080, file: !38, line: 52, baseType: !85, size: 32, offset: 96)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2080, file: !38, line: 53, baseType: !278, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2080, file: !38, line: 54, baseType: !278, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1724, file: !1368, line: 973, baseType: !2095, size: 32, offset: 10688)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !129, line: 27, baseType: !2096)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !262, line: 28, baseType: !85)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1724, file: !1368, line: 974, baseType: !2095, size: 32, offset: 10720)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1724, file: !1368, line: 978, baseType: !278, size: 64, offset: 10752)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1724, file: !1368, line: 987, baseType: !1723, size: 64, offset: 10816)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1724, file: !1368, line: 990, baseType: !1723, size: 64, offset: 10880)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1724, file: !1368, line: 995, baseType: !128, size: 128, offset: 10944)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1724, file: !1368, line: 996, baseType: !128, size: 128, offset: 11072)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1724, file: !1368, line: 997, baseType: !1723, size: 64, offset: 11200)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1724, file: !1368, line: 1005, baseType: !128, size: 128, offset: 11264)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1724, file: !1368, line: 1006, baseType: !128, size: 128, offset: 11392)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1724, file: !1368, line: 1009, baseType: !692, size: 64, offset: 11520)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1724, file: !1368, line: 1010, baseType: !2108, size: 512, offset: 11584)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 512, elements: !705)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1724, file: !1368, line: 1011, baseType: !128, size: 128, offset: 12096)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1724, file: !1368, line: 1012, baseType: !128, size: 128, offset: 12224)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1724, file: !1368, line: 1014, baseType: !2112, size: 64, offset: 12352)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2114, line: 26, size: 256, elements: !2115)
!2114 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2113, file: !2114, line: 27, baseType: !7, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2113, file: !2114, line: 28, baseType: !2118, size: 192, offset: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2119, line: 43, size: 192, elements: !2120)
!2119 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2118, file: !2119, line: 44, baseType: !606, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2118, file: !2119, line: 45, baseType: !128, size: 128, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1724, file: !1368, line: 1017, baseType: !575, size: 64, offset: 12416)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1724, file: !1368, line: 1020, baseType: !575, size: 64, offset: 12480)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1724, file: !1368, line: 1023, baseType: !300, size: 64, offset: 12544)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1724, file: !1368, line: 1025, baseType: !382, size: 64, offset: 12608)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1724, file: !1368, line: 1026, baseType: !382, size: 64, offset: 12672)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1724, file: !1368, line: 1031, baseType: !382, size: 64, offset: 12736)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1724, file: !1368, line: 1032, baseType: !2130, size: 192, offset: 12800)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1368, line: 324, size: 192, elements: !2131)
!2131 = !{!2132, !2133, !2134}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2130, file: !1368, line: 326, baseType: !382, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2130, file: !1368, line: 327, baseType: !382, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2130, file: !1368, line: 328, baseType: !606, size: 32, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1724, file: !1368, line: 1041, baseType: !278, size: 64, offset: 12992)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1724, file: !1368, line: 1042, baseType: !278, size: 64, offset: 13056)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1724, file: !1368, line: 1045, baseType: !382, size: 64, offset: 13120)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1724, file: !1368, line: 1048, baseType: !382, size: 64, offset: 13184)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1724, file: !1368, line: 1051, baseType: !278, size: 64, offset: 13248)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1724, file: !1368, line: 1052, baseType: !278, size: 64, offset: 13312)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1724, file: !1368, line: 1055, baseType: !2142, size: 640, offset: 13376)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2143, line: 132, size: 640, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2144 = !{!2145, !2151, !2152}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2142, file: !2143, line: 133, baseType: !2146, size: 576)
!2146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2147, size: 576, elements: !229)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2143, line: 117, size: 192, elements: !2148)
!2148 = !{!2149, !2150}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2147, file: !2143, line: 118, baseType: !382, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2147, file: !2143, line: 119, baseType: !1890, size: 128, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2142, file: !2143, line: 134, baseType: !7, size: 32, offset: 576)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2142, file: !2143, line: 135, baseType: !7, size: 32, offset: 608)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1724, file: !1368, line: 1058, baseType: !2154, size: 448, offset: 14016)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2143, line: 144, size: 448, elements: !2155)
!2155 = !{!2156, !2157, !2158}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2154, file: !2143, line: 145, baseType: !651, size: 128, align: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2154, file: !2143, line: 146, baseType: !593, size: 256, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2154, file: !2143, line: 147, baseType: !7, size: 32, offset: 384)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1724, file: !1368, line: 1064, baseType: !731, size: 64, offset: 14464)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1724, file: !1368, line: 1067, baseType: !731, size: 64, offset: 14528)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1724, file: !1368, line: 1070, baseType: !731, size: 64, offset: 14592)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1724, file: !1368, line: 1074, baseType: !758, size: 64, offset: 14656)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1724, file: !1368, line: 1084, baseType: !2164, size: 128, offset: 14720)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 128, elements: !2165)
!2165 = !{!2166}
!2166 = !DISubrange(count: 16)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1724, file: !1368, line: 1086, baseType: !2168, size: 64, offset: 14848)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1368, line: 55, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1724, file: !1368, line: 1089, baseType: !2171, size: 64, offset: 14912)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2172, line: 12, size: 64, elements: !2173)
!2172 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2173 = !{!2174}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2171, file: !2172, line: 13, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2172, line: 8, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1724, file: !1368, line: 1090, baseType: !2178, size: 128, offset: 14976)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2179, line: 13, size: 128, elements: !2180)
!2179 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2180 = !{!2181}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2178, file: !2179, line: 14, baseType: !128, size: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1724, file: !1368, line: 1097, baseType: !2183, size: 64, offset: 15104)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1368, line: 50, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1724, file: !1368, line: 1100, baseType: !2186, size: 64, offset: 15168)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1368, line: 1100, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1724, file: !1368, line: 1103, baseType: !2189, size: 64, offset: 15232)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1368, line: 53, flags: DIFlagFwdDecl)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1724, file: !1368, line: 1107, baseType: !2192, size: 64, offset: 15296)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1368, line: 56, flags: DIFlagFwdDecl)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1724, file: !1368, line: 1110, baseType: !2195, size: 64, offset: 15360)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2197, line: 93, size: 8768, elements: !2198)
!2197 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2198 = !{!2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2248, !2257, !2258, !2260, !2261, !2262, !2265, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2303, !2304, !2311, !2321, !2324, !2325, !2328, !2329, !2330, !2331, !2332, !2333}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2196, file: !2197, line: 94, baseType: !696, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2196, file: !2197, line: 95, baseType: !178, size: 32, offset: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2196, file: !2197, line: 96, baseType: !85, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2196, file: !2197, line: 97, baseType: !85, size: 32, offset: 96)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2196, file: !2197, line: 98, baseType: !128, size: 128, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2196, file: !2197, line: 100, baseType: !709, size: 192, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2196, file: !2197, line: 103, baseType: !1723, size: 64, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2196, file: !2197, line: 106, baseType: !2207, size: 192, offset: 512)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !928, line: 32, size: 192, elements: !2208)
!2208 = !{!2209, !2210}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2207, file: !928, line: 33, baseType: !128, size: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2207, file: !928, line: 34, baseType: !2211, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2212, line: 25, baseType: !2213)
!2212 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2212, line: 23, size: 64, elements: !2214)
!2214 = !{!2215}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2213, file: !2212, line: 24, baseType: !1961, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2196, file: !2197, line: 109, baseType: !500, size: 64, offset: 704)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2196, file: !2197, line: 112, baseType: !85, size: 32, offset: 768)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2196, file: !2197, line: 114, baseType: !85, size: 32, offset: 800)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2196, file: !2197, line: 115, baseType: !1723, size: 64, offset: 832)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2196, file: !2197, line: 118, baseType: !85, size: 32, offset: 896)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2196, file: !2197, line: 119, baseType: !7, size: 32, offset: 928)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2196, file: !2197, line: 121, baseType: !2223, size: 64, offset: 960)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2197, line: 80, size: 448, elements: !2225)
!2225 = !{!2226, !2227, !2233}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2224, file: !2197, line: 81, baseType: !178, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2224, file: !2197, line: 82, baseType: !2228, size: 128, offset: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2197, line: 75, size: 128, elements: !2229)
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2228, file: !2197, line: 76, baseType: !1723, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2228, file: !2197, line: 77, baseType: !2232, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2224, file: !2197, line: 83, baseType: !2113, size: 256, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2196, file: !2197, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2196, file: !2197, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2196, file: !2197, line: 138, baseType: !7, size: 32, offset: 1056)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2196, file: !2197, line: 139, baseType: !128, size: 128, offset: 1088)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2196, file: !2197, line: 142, baseType: !1834, size: 512, offset: 1216)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2196, file: !2197, line: 143, baseType: !1842, size: 64, offset: 1728)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2196, file: !2197, line: 150, baseType: !2241, size: 256, offset: 1792)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2242, size: 256, elements: !2246)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2197, line: 38, size: 128, elements: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2242, file: !2197, line: 39, baseType: !382, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2242, file: !2197, line: 40, baseType: !382, size: 64, offset: 64)
!2246 = !{!2247}
!2247 = !DISubrange(count: 2)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2196, file: !2197, line: 156, baseType: !2249, size: 192, offset: 2048)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2197, line: 66, size: 192, elements: !2250)
!2250 = !{!2251}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2249, file: !2197, line: 67, baseType: !2252, size: 192)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2197, line: 47, size: 192, elements: !2253)
!2253 = !{!2254, !2255, !2256}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2252, file: !2197, line: 48, baseType: !599, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2252, file: !2197, line: 49, baseType: !599, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2252, file: !2197, line: 50, baseType: !599, size: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2196, file: !2197, line: 160, baseType: !2142, size: 640, offset: 2240)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2196, file: !2197, line: 163, baseType: !2259, size: 256, offset: 2880)
!2259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 256, elements: !705)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2196, file: !2197, line: 169, baseType: !692, size: 64, offset: 3136)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2196, file: !2197, line: 172, baseType: !85, size: 32, offset: 3200)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2196, file: !2197, line: 174, baseType: !2263, size: 64, offset: 3264)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2197, line: 174, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2196, file: !2197, line: 185, baseType: !2266, size: 64, offset: 3328)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !351, line: 860, baseType: !2267)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 853, size: 64, elements: !2268)
!2268 = !{!2269, !2270}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2267, file: !351, line: 858, baseType: !350, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2267, file: !351, line: 859, baseType: !158, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2196, file: !2197, line: 186, baseType: !382, size: 64, offset: 3392)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2196, file: !2197, line: 186, baseType: !382, size: 64, offset: 3456)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2196, file: !2197, line: 186, baseType: !382, size: 64, offset: 3520)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2196, file: !2197, line: 186, baseType: !382, size: 64, offset: 3584)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2196, file: !2197, line: 187, baseType: !382, size: 64, offset: 3648)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2196, file: !2197, line: 188, baseType: !382, size: 64, offset: 3712)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2196, file: !2197, line: 189, baseType: !2130, size: 192, offset: 3776)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2196, file: !2197, line: 190, baseType: !278, size: 64, offset: 3968)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2196, file: !2197, line: 190, baseType: !278, size: 64, offset: 4032)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2196, file: !2197, line: 190, baseType: !278, size: 64, offset: 4096)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2196, file: !2197, line: 190, baseType: !278, size: 64, offset: 4160)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2196, file: !2197, line: 191, baseType: !278, size: 64, offset: 4224)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2196, file: !2197, line: 191, baseType: !278, size: 64, offset: 4288)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2196, file: !2197, line: 191, baseType: !278, size: 64, offset: 4352)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2196, file: !2197, line: 191, baseType: !278, size: 64, offset: 4416)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2196, file: !2197, line: 192, baseType: !278, size: 64, offset: 4480)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2196, file: !2197, line: 192, baseType: !278, size: 64, offset: 4544)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2196, file: !2197, line: 192, baseType: !278, size: 64, offset: 4608)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2196, file: !2197, line: 192, baseType: !278, size: 64, offset: 4672)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2196, file: !2197, line: 193, baseType: !278, size: 64, offset: 4736)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2196, file: !2197, line: 193, baseType: !278, size: 64, offset: 4800)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2196, file: !2197, line: 194, baseType: !2293, size: 448, offset: 4864)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2294, line: 12, size: 448, elements: !2295)
!2294 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2293, file: !2294, line: 15, baseType: !382, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2293, file: !2294, line: 17, baseType: !382, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2293, file: !2294, line: 19, baseType: !382, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2293, file: !2294, line: 21, baseType: !382, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2293, file: !2294, line: 29, baseType: !382, size: 64, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2293, file: !2294, line: 35, baseType: !382, size: 64, offset: 320)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2293, file: !2294, line: 44, baseType: !382, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2196, file: !2197, line: 202, baseType: !384, size: 64, offset: 5312)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2196, file: !2197, line: 213, baseType: !2305, size: 2048, offset: 5376)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2306, size: 2048, elements: !2165)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2307, line: 43, size: 128, elements: !2308)
!2307 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2306, file: !2307, line: 44, baseType: !277, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2306, file: !2307, line: 45, baseType: !277, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2196, file: !2197, line: 216, baseType: !2312, size: 448, offset: 7424)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2197, line: 30, size: 448, elements: !2313)
!2313 = !{!2314, !2315, !2316, !2317, !2318, !2319, !2320}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2312, file: !2197, line: 31, baseType: !85, size: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2312, file: !2197, line: 32, baseType: !264, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2312, file: !2197, line: 33, baseType: !278, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2312, file: !2197, line: 34, baseType: !382, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2312, file: !2197, line: 34, baseType: !382, size: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2312, file: !2197, line: 35, baseType: !278, size: 64, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2312, file: !2197, line: 35, baseType: !278, size: 64, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2196, file: !2197, line: 219, baseType: !2322, size: 64, offset: 7872)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2197, line: 219, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2196, file: !2197, line: 222, baseType: !7, size: 32, offset: 7936)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2196, file: !2197, line: 223, baseType: !2326, size: 64, offset: 8000)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2197, line: 223, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2196, file: !2197, line: 230, baseType: !840, size: 8, offset: 8064)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2196, file: !2197, line: 231, baseType: !809, size: 16, offset: 8080)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2196, file: !2197, line: 232, baseType: !809, size: 16, offset: 8096)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2196, file: !2197, line: 234, baseType: !1122, size: 64, offset: 8128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2196, file: !2197, line: 237, baseType: !593, size: 256, offset: 8192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2196, file: !2197, line: 243, baseType: !781, size: 320, offset: 8448)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1724, file: !1368, line: 1111, baseType: !2335, size: 64, offset: 15424)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2197, line: 20, size: 16640, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2341}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2336, file: !2197, line: 21, baseType: !158, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2336, file: !2197, line: 22, baseType: !696, size: 32, offset: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2336, file: !2197, line: 23, baseType: !709, size: 192, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2336, file: !2197, line: 24, baseType: !2342, size: 16384, offset: 256)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2343, size: 16384, elements: !233)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !928, line: 51, size: 256, elements: !2344)
!2344 = !{!2345}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2343, file: !928, line: 52, baseType: !2346, size: 256)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !928, line: 37, size: 256, elements: !2347)
!2347 = !{!2348, !2355, !2356, !2362}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2346, file: !928, line: 39, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2350, line: 83, baseType: !2351)
!2350 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2350, line: 82, baseType: !2353)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !85}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2346, file: !928, line: 40, baseType: !278, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2346, file: !928, line: 46, baseType: !2357, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2350, line: 86, baseType: !2358)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2350, line: 85, baseType: !2360)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2346, file: !928, line: 48, baseType: !2211, size: 64, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1724, file: !1368, line: 1112, baseType: !2211, size: 64, offset: 15488)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1724, file: !1368, line: 1113, baseType: !2211, size: 64, offset: 15552)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1724, file: !1368, line: 1115, baseType: !2211, size: 64, offset: 15616)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1724, file: !1368, line: 1116, baseType: !2207, size: 192, offset: 15680)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1724, file: !1368, line: 1117, baseType: !278, size: 64, offset: 15872)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1724, file: !1368, line: 1118, baseType: !275, size: 64, offset: 15936)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1724, file: !1368, line: 1119, baseType: !7, size: 32, offset: 16000)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1724, file: !1368, line: 1121, baseType: !654, size: 64, offset: 16064)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1724, file: !1368, line: 1125, baseType: !2372, size: 64, offset: 16128)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1368, line: 43, flags: DIFlagFwdDecl)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1724, file: !1368, line: 1127, baseType: !315, size: 32, offset: 16192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1724, file: !1368, line: 1128, baseType: !7, size: 32, offset: 16224)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1724, file: !1368, line: 1130, baseType: !2377, size: 128, offset: 16256)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2378, line: 37, size: 128, elements: !2379)
!2378 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2379 = !{!2380, !2381, !2382}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2377, file: !2378, line: 38, baseType: !85, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2377, file: !2378, line: 39, baseType: !178, size: 32, offset: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2377, file: !2378, line: 40, baseType: !2383, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2378, line: 24, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1724, file: !1368, line: 1131, baseType: !2386, size: 256, offset: 16384)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2387, line: 12, size: 256, elements: !2388)
!2387 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2388 = !{!2389, !2390, !2391, !2392}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2386, file: !2387, line: 13, baseType: !228, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2386, file: !2387, line: 14, baseType: !278, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2386, file: !2387, line: 15, baseType: !278, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2386, file: !2387, line: 16, baseType: !840, size: 8, offset: 192)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1724, file: !1368, line: 1134, baseType: !382, size: 64, offset: 16640)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1724, file: !1368, line: 1135, baseType: !382, size: 64, offset: 16704)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1724, file: !1368, line: 1138, baseType: !158, size: 32, offset: 16768)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1724, file: !1368, line: 1141, baseType: !606, size: 32, offset: 16800)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1724, file: !1368, line: 1143, baseType: !2398, size: 64, offset: 16832)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1368, line: 735, size: 64, elements: !2399)
!2399 = !{!2400}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2398, file: !1368, line: 736, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1724, file: !1368, line: 1147, baseType: !1893, size: 128, offset: 16896)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1724, file: !1368, line: 1149, baseType: !1723, size: 64, offset: 17024)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1724, file: !1368, line: 1151, baseType: !2405, size: 64, offset: 17088)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1368, line: 1151, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1724, file: !1368, line: 1188, baseType: !300, size: 64, offset: 17152)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1724, file: !1368, line: 1191, baseType: !2409, size: 64, offset: 17216)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1368, line: 44, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1724, file: !1368, line: 1194, baseType: !2412, size: 64, offset: 17280)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1368, line: 45, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1724, file: !1368, line: 1197, baseType: !2415, size: 64, offset: 17344)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1368, line: 61, flags: DIFlagFwdDecl)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1724, file: !1368, line: 1199, baseType: !2418, size: 64, offset: 17408)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2420, line: 99, size: 128, elements: !2421)
!2420 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2421 = !{!2422, !2423, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2419, file: !2420, line: 100, baseType: !597, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2419, file: !2420, line: 101, baseType: !178, size: 32, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2419, file: !2420, line: 103, baseType: !198, size: 16, offset: 96)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1724, file: !1368, line: 1202, baseType: !2426, size: 64, offset: 17472)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1368, line: 48, flags: DIFlagFwdDecl)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1724, file: !1368, line: 1205, baseType: !278, size: 64, offset: 17536)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1724, file: !1368, line: 1206, baseType: !2430, size: 64, offset: 17600)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !928, line: 14, baseType: !2432)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !928, line: 12, size: 384, elements: !2433)
!2433 = !{!2434}
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !2432, file: !928, line: 13, baseType: !2435, size: 384)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2432, file: !928, line: 13, size: 384, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2435, file: !928, line: 13, baseType: !85, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2435, file: !928, line: 13, baseType: !85, size: 32, offset: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2435, file: !928, line: 13, baseType: !85, size: 32, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2435, file: !928, line: 13, baseType: !2441, size: 256, offset: 128)
!2441 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2442, line: 37, size: 256, elements: !2443)
!2442 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2443 = !{!2444, !2449, !2462, !2468, !2477, !2504, !2509}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2441, file: !2442, line: 42, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2441, file: !2442, line: 39, size: 64, elements: !2446)
!2446 = !{!2447, !2448}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2445, file: !2442, line: 40, baseType: !2096, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2445, file: !2442, line: 41, baseType: !321, size: 32, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2441, file: !2442, line: 50, baseType: !2450, size: 192)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2441, file: !2442, line: 45, size: 192, elements: !2451)
!2451 = !{!2452, !2454, !2455, !2461}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2450, file: !2442, line: 46, baseType: !2453, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !262, line: 95, baseType: !85)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2450, file: !2442, line: 47, baseType: !85, size: 32, offset: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2450, file: !2442, line: 48, baseType: !2456, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2442, line: 11, baseType: !2457)
!2457 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2442, line: 8, size: 64, elements: !2458)
!2458 = !{!2459, !2460}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2457, file: !2442, line: 9, baseType: !85, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2457, file: !2442, line: 10, baseType: !300, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2450, file: !2442, line: 49, baseType: !85, size: 32, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2441, file: !2442, line: 57, baseType: !2463, size: 128)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2441, file: !2442, line: 53, size: 128, elements: !2464)
!2464 = !{!2465, !2466, !2467}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2463, file: !2442, line: 54, baseType: !2096, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2463, file: !2442, line: 55, baseType: !321, size: 32, offset: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2463, file: !2442, line: 56, baseType: !2456, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2441, file: !2442, line: 66, baseType: !2469, size: 256)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2441, file: !2442, line: 60, size: 256, elements: !2470)
!2470 = !{!2471, !2472, !2473, !2474, !2476}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2469, file: !2442, line: 61, baseType: !2096, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2469, file: !2442, line: 62, baseType: !321, size: 32, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2469, file: !2442, line: 63, baseType: !85, size: 32, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2469, file: !2442, line: 64, baseType: !2475, size: 64, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !262, line: 94, baseType: !263)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2469, file: !2442, line: 65, baseType: !2475, size: 64, offset: 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2441, file: !2442, line: 105, baseType: !2478, size: 256)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2441, file: !2442, line: 69, size: 256, elements: !2479)
!2479 = !{!2480, !2481}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2478, file: !2442, line: 70, baseType: !300, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, scope: !2478, file: !2442, line: 79, baseType: !2482, size: 192, offset: 64)
!2482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2478, file: !2442, line: 79, size: 192, elements: !2483)
!2483 = !{!2484, !2485, !2486, !2493, !2498}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2482, file: !2442, line: 81, baseType: !85, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2482, file: !2442, line: 86, baseType: !809, size: 16)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2482, file: !2442, line: 92, baseType: !2487, size: 192)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2482, file: !2442, line: 88, size: 192, elements: !2488)
!2488 = !{!2489, !2491, !2492}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2487, file: !2442, line: 89, baseType: !2490, size: 64)
!2490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !1877)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2487, file: !2442, line: 90, baseType: !300, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2487, file: !2442, line: 91, baseType: !300, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2482, file: !2442, line: 97, baseType: !2494, size: 96)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2482, file: !2442, line: 94, size: 96, elements: !2495)
!2495 = !{!2496, !2497}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2494, file: !2442, line: 95, baseType: !2490, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2494, file: !2442, line: 96, baseType: !379, size: 32, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2482, file: !2442, line: 103, baseType: !2499, size: 128)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2482, file: !2442, line: 99, size: 128, elements: !2500)
!2500 = !{!2501, !2502, !2503}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2499, file: !2442, line: 100, baseType: !278, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2499, file: !2442, line: 101, baseType: !379, size: 32, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2499, file: !2442, line: 102, baseType: !379, size: 32, offset: 96)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2441, file: !2442, line: 111, baseType: !2505, size: 128)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2441, file: !2442, line: 108, size: 128, elements: !2506)
!2506 = !{!2507, !2508}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2505, file: !2442, line: 109, baseType: !264, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2505, file: !2442, line: 110, baseType: !85, size: 32, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2441, file: !2442, line: 118, baseType: !2510, size: 128)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2441, file: !2442, line: 114, size: 128, elements: !2511)
!2511 = !{!2512, !2513, !2514}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2510, file: !2442, line: 115, baseType: !300, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2510, file: !2442, line: 116, baseType: !85, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2510, file: !2442, line: 117, baseType: !7, size: 32, offset: 96)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1724, file: !1368, line: 1208, baseType: !2293, size: 448, offset: 17664)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1724, file: !1368, line: 1215, baseType: !382, size: 64, offset: 18112)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1724, file: !1368, line: 1217, baseType: !382, size: 64, offset: 18176)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1724, file: !1368, line: 1219, baseType: !382, size: 64, offset: 18240)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1724, file: !1368, line: 1223, baseType: !2520, size: 64, offset: 18304)
!2520 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2521, line: 99, baseType: !2522)
!2521 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2521, line: 99, size: 64, elements: !2523)
!2523 = !{!2524}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2522, file: !2521, line: 99, baseType: !1961, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1724, file: !1368, line: 1225, baseType: !350, size: 32, offset: 18368)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1724, file: !1368, line: 1226, baseType: !85, size: 32, offset: 18400)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1724, file: !1368, line: 1227, baseType: !85, size: 32, offset: 18432)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1724, file: !1368, line: 1231, baseType: !2529, size: 64, offset: 18496)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1368, line: 1231, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1724, file: !1368, line: 1233, baseType: !128, size: 128, offset: 18560)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1724, file: !1368, line: 1240, baseType: !2533, size: 64, offset: 18688)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1368, line: 62, flags: DIFlagFwdDecl)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1724, file: !1368, line: 1242, baseType: !2536, size: 64, offset: 18752)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2538, line: 392, size: 96, elements: !2539)
!2538 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!2539 = !{!2540, !2546, !2548}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2537, file: !2538, line: 393, baseType: !2541, size: 32)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !2538, line: 388, size: 32, elements: !2542)
!2542 = !{!2543}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2541, file: !2538, line: 389, baseType: !2544, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !2545, line: 46, baseType: !378)
!2545 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !2537, file: !2538, line: 394, baseType: !2547, size: 32, offset: 32)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !2545, line: 42, baseType: !766)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !2537, file: !2538, line: 395, baseType: !2544, size: 32, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1724, file: !1368, line: 1244, baseType: !128, size: 128, offset: 18816)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1724, file: !1368, line: 1245, baseType: !2551, size: 64, offset: 18944)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1368, line: 51, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1724, file: !1368, line: 1246, baseType: !593, size: 256, offset: 19008)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1724, file: !1368, line: 1247, baseType: !7, size: 32, offset: 19264)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1724, file: !1368, line: 1250, baseType: !2556, size: 64, offset: 19328)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1368, line: 57, flags: DIFlagFwdDecl)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1724, file: !1368, line: 1251, baseType: !593, size: 256, offset: 19392)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1724, file: !1368, line: 1252, baseType: !128, size: 128, offset: 19648)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1724, file: !1368, line: 1259, baseType: !1327, size: 64, offset: 19776)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1724, file: !1368, line: 1260, baseType: !809, size: 16, offset: 19840)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1724, file: !1368, line: 1261, baseType: !809, size: 16, offset: 19856)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1724, file: !1368, line: 1314, baseType: !2564, size: 64, offset: 19904)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2566, line: 62, size: 256, align: 256, elements: !2567)
!2566 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2567 = !{!2568, !2569, !2570, !2571, !2572, !2573, !2574}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2565, file: !2566, line: 75, baseType: !379, size: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2565, file: !2566, line: 90, baseType: !379, size: 32, offset: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2565, file: !2566, line: 112, baseType: !383, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2565, file: !2566, line: 132, baseType: !379, size: 32, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2565, file: !2566, line: 140, baseType: !379, size: 32, offset: 160)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2565, file: !2566, line: 149, baseType: !379, size: 32, offset: 192)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2565, file: !2566, line: 154, baseType: !2575, offset: 224)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, elements: !724)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1724, file: !1368, line: 1315, baseType: !378, size: 32, offset: 19968)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1724, file: !1368, line: 1316, baseType: !378, size: 32, offset: 20000)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1724, file: !1368, line: 1321, baseType: !278, size: 64, offset: 20032)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1724, file: !1368, line: 1325, baseType: !85, size: 32, offset: 20096)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1724, file: !1368, line: 1326, baseType: !85, size: 32, offset: 20128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1724, file: !1368, line: 1327, baseType: !85, size: 32, offset: 20160)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1724, file: !1368, line: 1328, baseType: !85, size: 32, offset: 20192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1724, file: !1368, line: 1329, baseType: !651, size: 128, align: 64, offset: 20224)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1724, file: !1368, line: 1332, baseType: !2585, size: 128, offset: 20352)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2586, line: 51, size: 128, elements: !2587)
!2586 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2587 = !{!2588, !2593, !2594}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2585, file: !2586, line: 60, baseType: !2589, size: 64)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2590, line: 7, size: 64, elements: !2591)
!2590 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2591 = !{!2592}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2589, file: !2590, line: 12, baseType: !1958, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2585, file: !2586, line: 63, baseType: !840, size: 8, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2585, file: !2586, line: 70, baseType: !840, size: 8, offset: 72)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1724, file: !1368, line: 1335, baseType: !1366, size: 64, offset: 20480)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1724, file: !1368, line: 1337, baseType: !2597, size: 128, offset: 20544)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2586, line: 39, size: 128, elements: !2598)
!2598 = !{!2599, !2660, !2661}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2597, file: !2586, line: 40, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1110, line: 74, size: 512, align: 128, elements: !2602)
!2602 = !{!2603, !2604, !2654, !2659}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2601, file: !1110, line: 75, baseType: !278, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, scope: !2601, file: !1110, line: 83, baseType: !2605, size: 320, offset: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2601, file: !1110, line: 83, size: 320, elements: !2606)
!2606 = !{!2607, !2628, !2642, !2646, !2653}
!2607 = !DIDerivedType(tag: DW_TAG_member, scope: !2605, file: !1110, line: 84, baseType: !2608, size: 320)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2605, file: !1110, line: 84, size: 320, elements: !2609)
!2609 = !{!2610, !2621, !2622, !2627}
!2610 = !DIDerivedType(tag: DW_TAG_member, scope: !2608, file: !1110, line: 90, baseType: !2611, size: 128)
!2611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2608, file: !1110, line: 90, size: 128, elements: !2612)
!2612 = !{!2613, !2614, !2619, !2620}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2611, file: !1110, line: 91, baseType: !128, size: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, scope: !2611, file: !1110, line: 94, baseType: !2615, size: 128)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !1110, line: 94, size: 128, elements: !2616)
!2616 = !{!2617, !2618}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2615, file: !1110, line: 96, baseType: !300, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2615, file: !1110, line: 98, baseType: !7, size: 32, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2611, file: !1110, line: 102, baseType: !128, size: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2611, file: !1110, line: 103, baseType: !128, size: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2608, file: !1110, line: 106, baseType: !305, size: 64, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, scope: !2608, file: !1110, line: 107, baseType: !2623, size: 64, offset: 192)
!2623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2608, file: !1110, line: 107, size: 64, elements: !2624)
!2624 = !{!2625, !2626}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2623, file: !1110, line: 108, baseType: !278, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2623, file: !1110, line: 109, baseType: !278, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2608, file: !1110, line: 117, baseType: !278, size: 64, offset: 256)
!2628 = !DIDerivedType(tag: DW_TAG_member, scope: !2605, file: !1110, line: 119, baseType: !2629, size: 320)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2605, file: !1110, line: 119, size: 320, elements: !2630)
!2630 = !{!2631, !2632, !2635, !2636, !2637}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2629, file: !1110, line: 124, baseType: !278, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2629, file: !1110, line: 125, baseType: !2633, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1110, line: 125, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2629, file: !1110, line: 126, baseType: !278, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2629, file: !1110, line: 127, baseType: !278, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, scope: !2629, file: !1110, line: 128, baseType: !2638, size: 64, offset: 256)
!2638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2629, file: !1110, line: 128, size: 64, elements: !2639)
!2639 = !{!2640, !2641}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2638, file: !1110, line: 133, baseType: !278, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2638, file: !1110, line: 138, baseType: !597, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, scope: !2605, file: !1110, line: 141, baseType: !2643, size: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2605, file: !1110, line: 141, size: 64, elements: !2644)
!2644 = !{!2645}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2643, file: !1110, line: 142, baseType: !278, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, scope: !2605, file: !1110, line: 144, baseType: !2647, size: 128)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2605, file: !1110, line: 144, size: 128, elements: !2648)
!2648 = !{!2649, !2652}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2647, file: !1110, line: 146, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1110, line: 146, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2647, file: !1110, line: 147, baseType: !300, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2605, file: !1110, line: 161, baseType: !651, size: 128, align: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, scope: !2601, file: !1110, line: 164, baseType: !2655, size: 32, offset: 384)
!2655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2601, file: !1110, line: 164, size: 32, elements: !2656)
!2656 = !{!2657, !2658}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2655, file: !1110, line: 169, baseType: !178, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2655, file: !1110, line: 177, baseType: !7, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2601, file: !1110, line: 181, baseType: !178, size: 32, offset: 416)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2597, file: !2586, line: 42, baseType: !379, size: 32, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2597, file: !2586, line: 43, baseType: !379, size: 32, offset: 96)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1724, file: !1368, line: 1340, baseType: !2663, size: 64, offset: 20672)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1368, line: 69, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1724, file: !1368, line: 1351, baseType: !85, size: 32, offset: 20736)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1724, file: !1368, line: 1352, baseType: !85, size: 32, offset: 20768)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1724, file: !1368, line: 1354, baseType: !278, size: 64, offset: 20800)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1724, file: !1368, line: 1364, baseType: !382, size: 64, offset: 20864)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1724, file: !1368, line: 1365, baseType: !382, size: 64, offset: 20928)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1724, file: !1368, line: 1412, baseType: !278, size: 64, offset: 20992)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1724, file: !1368, line: 1453, baseType: !2672, size: 64, offset: 21056)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1368, line: 1453, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1724, file: !1368, line: 1457, baseType: !2675, size: 64, offset: 21120)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2677)
!2677 = !{!2678, !2679, !2698, !2701, !2702, !2735, !2745}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2676, file: !44, line: 62, baseType: !43, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, scope: !2676, file: !44, line: 64, baseType: !2680, size: 192, offset: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2676, file: !44, line: 64, size: 192, elements: !2681)
!2681 = !{!2682, !2693}
!2682 = !DIDerivedType(tag: DW_TAG_member, scope: !2680, file: !44, line: 65, baseType: !2683, size: 192)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2680, file: !44, line: 65, size: 192, elements: !2684)
!2684 = !{!2685, !2692}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2683, file: !44, line: 66, baseType: !2686, size: 128)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2687, line: 50, size: 128, elements: !2688)
!2687 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2688 = !{!2689, !2690, !2691}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2686, file: !2687, line: 52, baseType: !278, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2686, file: !2687, line: 54, baseType: !7, size: 32, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2686, file: !2687, line: 55, baseType: !7, size: 32, offset: 96)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2683, file: !44, line: 67, baseType: !278, size: 64, offset: 128)
!2693 = !DIDerivedType(tag: DW_TAG_member, scope: !2680, file: !44, line: 70, baseType: !2694, size: 192)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2680, file: !44, line: 70, size: 192, elements: !2695)
!2695 = !{!2696, !2697}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2694, file: !44, line: 71, baseType: !651, size: 128, align: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2694, file: !44, line: 72, baseType: !278, size: 64, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2676, file: !44, line: 76, baseType: !2699, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2676, file: !44, line: 77, baseType: !278, size: 64, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2676, file: !44, line: 79, baseType: !2703, size: 64, offset: 384)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2687, line: 25, size: 256, elements: !2705)
!2705 = !{!2706, !2712, !2716}
!2706 = !DIDerivedType(tag: DW_TAG_member, scope: !2704, file: !2687, line: 26, baseType: !2707, size: 128)
!2707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2704, file: !2687, line: 26, size: 128, elements: !2708)
!2708 = !{!2709, !2711}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2707, file: !2687, line: 27, baseType: !2710, size: 128)
!2710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 128, elements: !2165)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2707, file: !2687, line: 28, baseType: !2710, size: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2704, file: !2687, line: 31, baseType: !2713, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2715)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2687, line: 23, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, scope: !2704, file: !2687, line: 33, baseType: !2717, size: 64, offset: 192)
!2717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2704, file: !2687, line: 33, size: 64, elements: !2718)
!2718 = !{!2719, !2725, !2730}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2717, file: !2687, line: 38, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2717, file: !2687, line: 34, size: 64, elements: !2721)
!2721 = !{!2722, !2723, !2724}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2720, file: !2687, line: 35, baseType: !766, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2720, file: !2687, line: 36, baseType: !186, size: 8, offset: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2720, file: !2687, line: 37, baseType: !186, size: 8, offset: 40)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2717, file: !2687, line: 42, baseType: !2726, size: 16)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2717, file: !2687, line: 39, size: 16, elements: !2727)
!2727 = !{!2728, !2729}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2726, file: !2687, line: 40, baseType: !186, size: 8)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2726, file: !2687, line: 41, baseType: !186, size: 8, offset: 8)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2717, file: !2687, line: 46, baseType: !2731, size: 16)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2717, file: !2687, line: 43, size: 16, elements: !2732)
!2732 = !{!2733, !2734}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2731, file: !2687, line: 44, baseType: !186, size: 8)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2731, file: !2687, line: 45, baseType: !186, size: 8, offset: 8)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2676, file: !44, line: 81, baseType: !2736, size: 64, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2738)
!2738 = !{!2739, !2740, !2741, !2742, !2743, !2744}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2737, file: !44, line: 86, baseType: !2699, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2737, file: !44, line: 87, baseType: !278, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2737, file: !44, line: 88, baseType: !278, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2737, file: !44, line: 89, baseType: !278, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2737, file: !44, line: 90, baseType: !840, size: 8, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2737, file: !44, line: 92, baseType: !2736, size: 64, offset: 320)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2676, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1724, file: !1368, line: 1463, baseType: !2747, offset: 21184)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1368, line: 739, elements: !512)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1724, file: !1368, line: 1470, baseType: !651, size: 128, align: 64, offset: 21184)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1724, file: !1368, line: 1471, baseType: !696, size: 32, offset: 21312)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1724, file: !1368, line: 1472, baseType: !85, size: 32, offset: 21344)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1724, file: !1368, line: 1474, baseType: !1723, size: 64, offset: 21376)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1724, file: !1368, line: 1475, baseType: !2753, size: 320, offset: 21440)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2754, line: 11, size: 320, elements: !2755)
!2754 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2755 = !{!2756, !2757, !2758, !2763}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2753, file: !2754, line: 16, baseType: !504, size: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2753, file: !2754, line: 17, baseType: !278, size: 64, offset: 128)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2753, file: !2754, line: 18, baseType: !2759, size: 64, offset: 192)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{null, !2762}
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2753, file: !2754, line: 19, baseType: !378, size: 32, offset: 256)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1724, file: !1368, line: 1478, baseType: !2765, size: 64, offset: 21760)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1368, line: 1478, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1724, file: !1368, line: 1482, baseType: !696, size: 32, offset: 21824)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1724, file: !1368, line: 1489, baseType: !300, size: 64, offset: 21888)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1724, file: !1368, line: 1504, baseType: !300, size: 64, offset: 21952)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1724, file: !1368, line: 1505, baseType: !383, size: 64, offset: 22016)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1724, file: !1368, line: 1506, baseType: !382, size: 64, offset: 22080)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1724, file: !1368, line: 1507, baseType: !383, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1724, file: !1368, line: 1508, baseType: !383, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1724, file: !1368, line: 1509, baseType: !383, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1724, file: !1368, line: 1510, baseType: !651, size: 128, align: 64, offset: 22208)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1724, file: !1368, line: 1511, baseType: !85, size: 32, offset: 22336)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1724, file: !1368, line: 1515, baseType: !2778, size: 64, offset: 22400)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !646, line: 56, size: 64, elements: !2779)
!2779 = !{!2780}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2778, file: !646, line: 57, baseType: !649, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1724, file: !1368, line: 1518, baseType: !2778, size: 64, offset: 22464)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1724, file: !1368, line: 1528, baseType: !651, size: 128, align: 64, offset: 22528)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1724, file: !1368, line: 1552, baseType: !2784, size: 35328, offset: 23040)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2785, line: 430, size: 35328, elements: !2786)
!2785 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2786 = !{!2787, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2816, !2817, !2818, !2819, !2820, !2821, !2824, !2825, !2826, !2827}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2784, file: !2785, line: 432, baseType: !2788, size: 192)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2789, size: 192, elements: !229)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2790, line: 16, size: 64, elements: !2791)
!2790 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2789, file: !2790, line: 17, baseType: !196, size: 16)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2789, file: !2790, line: 18, baseType: !196, size: 16, offset: 16)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2789, file: !2790, line: 19, baseType: !196, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2789, file: !2790, line: 19, baseType: !196, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2789, file: !2790, line: 19, baseType: !196, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2789, file: !2790, line: 19, baseType: !196, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2789, file: !2790, line: 19, baseType: !196, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2789, file: !2790, line: 20, baseType: !196, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2789, file: !2790, line: 20, baseType: !196, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2789, file: !2790, line: 20, baseType: !196, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2789, file: !2790, line: 20, baseType: !196, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2789, file: !2790, line: 20, baseType: !196, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2789, file: !2790, line: 20, baseType: !196, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2784, file: !2785, line: 436, baseType: !278, size: 64, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2784, file: !2785, line: 440, baseType: !198, size: 16, offset: 256)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2784, file: !2785, line: 441, baseType: !198, size: 16, offset: 272)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2784, file: !2785, line: 442, baseType: !198, size: 16, offset: 288)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2784, file: !2785, line: 443, baseType: !198, size: 16, offset: 304)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2784, file: !2785, line: 447, baseType: !278, size: 64, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2784, file: !2785, line: 448, baseType: !278, size: 64, offset: 384)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2784, file: !2785, line: 459, baseType: !2813, size: 256, offset: 448)
!2813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2814, size: 256, elements: !705)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2785, line: 428, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2784, file: !2785, line: 461, baseType: !278, size: 64, offset: 704)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2784, file: !2785, line: 463, baseType: !278, size: 64, offset: 768)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2784, file: !2785, line: 465, baseType: !278, size: 64, offset: 832)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2784, file: !2785, line: 466, baseType: !278, size: 64, offset: 896)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2784, file: !2785, line: 467, baseType: !278, size: 64, offset: 960)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2784, file: !2785, line: 473, baseType: !2822, size: 64, offset: 1024)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2785, line: 10, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2784, file: !2785, line: 480, baseType: !278, size: 64, offset: 1088)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2784, file: !2785, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2784, file: !2785, line: 491, baseType: !378, size: 32, offset: 1184)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2784, file: !2785, line: 501, baseType: !2828, size: 33792, offset: 1536)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2829, line: 448, size: 33792, elements: !2830)
!2829 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2830 = !{!2831, !2832, !2833, !2995, !2996, !3002, !3003}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2828, file: !2829, line: 461, baseType: !7, size: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2828, file: !2829, line: 468, baseType: !278, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2828, file: !2829, line: 476, baseType: !2834, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2829, line: 356, size: 33280, align: 512, elements: !2836)
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2835, file: !2829, line: 358, baseType: !7, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2835, file: !2829, line: 361, baseType: !7, size: 32, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2835, file: !2829, line: 364, baseType: !382, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2835, file: !2829, line: 367, baseType: !382, size: 64, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2835, file: !2829, line: 370, baseType: !382, size: 64, offset: 192)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2835, file: !2829, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2835, file: !2829, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2835, file: !2829, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2835, file: !2829, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2835, file: !2829, line: 397, baseType: !2847, size: 32768, offset: 512)
!2847 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2829, line: 348, size: 32768, elements: !2848)
!2848 = !{!2849, !2864, !2901, !2978, !2991}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2847, file: !2829, line: 349, baseType: !2850, size: 896)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2829, line: 12, size: 896, elements: !2851)
!2851 = !{!2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2863}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2850, file: !2829, line: 13, baseType: !378, size: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2850, file: !2829, line: 14, baseType: !378, size: 32, offset: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2850, file: !2829, line: 15, baseType: !378, size: 32, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2850, file: !2829, line: 16, baseType: !378, size: 32, offset: 96)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2850, file: !2829, line: 17, baseType: !378, size: 32, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2850, file: !2829, line: 18, baseType: !378, size: 32, offset: 160)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2850, file: !2829, line: 19, baseType: !378, size: 32, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2850, file: !2829, line: 22, baseType: !2860, size: 640, offset: 224)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 640, elements: !2861)
!2861 = !{!2862}
!2862 = !DISubrange(count: 20)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2850, file: !2829, line: 25, baseType: !378, size: 32, offset: 864)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2847, file: !2829, line: 350, baseType: !2865, size: 4096, align: 128)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2829, line: 34, size: 4096, align: 128, elements: !2866)
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2886, !2887, !2888, !2890, !2892, !2896}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2865, file: !2829, line: 35, baseType: !196, size: 16)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2865, file: !2829, line: 36, baseType: !196, size: 16, offset: 16)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2865, file: !2829, line: 37, baseType: !196, size: 16, offset: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2865, file: !2829, line: 38, baseType: !196, size: 16, offset: 48)
!2871 = !DIDerivedType(tag: DW_TAG_member, scope: !2865, file: !2829, line: 39, baseType: !2872, size: 128, offset: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2865, file: !2829, line: 39, size: 128, elements: !2873)
!2873 = !{!2874, !2879}
!2874 = !DIDerivedType(tag: DW_TAG_member, scope: !2872, file: !2829, line: 40, baseType: !2875, size: 128)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2872, file: !2829, line: 40, size: 128, elements: !2876)
!2876 = !{!2877, !2878}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2875, file: !2829, line: 41, baseType: !382, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2875, file: !2829, line: 42, baseType: !382, size: 64, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, scope: !2872, file: !2829, line: 44, baseType: !2880, size: 128)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2872, file: !2829, line: 44, size: 128, elements: !2881)
!2881 = !{!2882, !2883, !2884, !2885}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2880, file: !2829, line: 45, baseType: !378, size: 32)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2880, file: !2829, line: 46, baseType: !378, size: 32, offset: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2880, file: !2829, line: 47, baseType: !378, size: 32, offset: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2880, file: !2829, line: 48, baseType: !378, size: 32, offset: 96)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2865, file: !2829, line: 51, baseType: !378, size: 32, offset: 192)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2865, file: !2829, line: 52, baseType: !378, size: 32, offset: 224)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2865, file: !2829, line: 55, baseType: !2889, size: 1024, offset: 256)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 1024, elements: !391)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2865, file: !2829, line: 58, baseType: !2891, size: 2048, offset: 1280)
!2891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 2048, elements: !233)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2865, file: !2829, line: 60, baseType: !2893, size: 384, offset: 3328)
!2893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 384, elements: !2894)
!2894 = !{!2895}
!2895 = !DISubrange(count: 12)
!2896 = !DIDerivedType(tag: DW_TAG_member, scope: !2865, file: !2829, line: 62, baseType: !2897, size: 384, offset: 3712)
!2897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2865, file: !2829, line: 62, size: 384, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2897, file: !2829, line: 63, baseType: !2893, size: 384)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2897, file: !2829, line: 64, baseType: !2893, size: 384)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2847, file: !2829, line: 351, baseType: !2902, size: 1088)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2829, line: 79, size: 1088, elements: !2903)
!2903 = !{!2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2977}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2902, file: !2829, line: 80, baseType: !378, size: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2902, file: !2829, line: 81, baseType: !378, size: 32, offset: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2902, file: !2829, line: 82, baseType: !378, size: 32, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2902, file: !2829, line: 83, baseType: !378, size: 32, offset: 96)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2902, file: !2829, line: 84, baseType: !378, size: 32, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2902, file: !2829, line: 85, baseType: !378, size: 32, offset: 160)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2902, file: !2829, line: 86, baseType: !378, size: 32, offset: 192)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2902, file: !2829, line: 88, baseType: !2860, size: 640, offset: 224)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2902, file: !2829, line: 89, baseType: !186, size: 8, offset: 864)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2902, file: !2829, line: 90, baseType: !186, size: 8, offset: 872)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2902, file: !2829, line: 91, baseType: !186, size: 8, offset: 880)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2902, file: !2829, line: 92, baseType: !186, size: 8, offset: 888)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2902, file: !2829, line: 93, baseType: !186, size: 8, offset: 896)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2902, file: !2829, line: 94, baseType: !186, size: 8, offset: 904)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2902, file: !2829, line: 95, baseType: !2919, size: 64, offset: 960)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2921, line: 11, size: 128, elements: !2922)
!2921 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2920, file: !2921, line: 12, baseType: !264, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2920, file: !2921, line: 13, baseType: !2925, size: 64, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2927, line: 103, size: 1344, elements: !2928)
!2927 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2928 = !{!2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2957, !2958, !2959}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2926, file: !2927, line: 109, baseType: !278, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2926, file: !2927, line: 110, baseType: !278, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2926, file: !2927, line: 111, baseType: !278, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2926, file: !2927, line: 112, baseType: !278, size: 64, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2926, file: !2927, line: 113, baseType: !278, size: 64, offset: 256)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2926, file: !2927, line: 114, baseType: !278, size: 64, offset: 320)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2926, file: !2927, line: 117, baseType: !278, size: 64, offset: 384)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2926, file: !2927, line: 118, baseType: !278, size: 64, offset: 448)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2926, file: !2927, line: 119, baseType: !278, size: 64, offset: 512)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2926, file: !2927, line: 120, baseType: !278, size: 64, offset: 576)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2926, file: !2927, line: 121, baseType: !278, size: 64, offset: 640)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2926, file: !2927, line: 122, baseType: !278, size: 64, offset: 704)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2926, file: !2927, line: 123, baseType: !278, size: 64, offset: 768)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2926, file: !2927, line: 124, baseType: !278, size: 64, offset: 832)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2926, file: !2927, line: 125, baseType: !278, size: 64, offset: 896)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2926, file: !2927, line: 139, baseType: !278, size: 64, offset: 960)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2926, file: !2927, line: 142, baseType: !278, size: 64, offset: 1024)
!2946 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !2927, line: 144, baseType: !2947, size: 64, offset: 1088)
!2947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2926, file: !2927, line: 144, size: 64, elements: !2948)
!2948 = !{!2949, !2950, !2951}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2947, file: !2927, line: 146, baseType: !196, size: 16)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2947, file: !2927, line: 148, baseType: !382, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2947, file: !2927, line: 150, baseType: !2952, size: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2927, line: 59, size: 64, elements: !2953)
!2953 = !{!2954, !2955, !2956}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2952, file: !2927, line: 61, baseType: !382, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2952, file: !2927, line: 63, baseType: !382, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2952, file: !2927, line: 65, baseType: !382, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2926, file: !2927, line: 153, baseType: !278, size: 64, offset: 1152)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2926, file: !2927, line: 154, baseType: !278, size: 64, offset: 1216)
!2959 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !2927, line: 156, baseType: !2960, size: 64, offset: 1280)
!2960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2926, file: !2927, line: 156, size: 64, elements: !2961)
!2961 = !{!2962, !2963, !2964}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2960, file: !2927, line: 158, baseType: !196, size: 16)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2960, file: !2927, line: 160, baseType: !382, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2960, file: !2927, line: 162, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2927, line: 69, size: 64, elements: !2966)
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2965, file: !2927, line: 71, baseType: !382, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2965, file: !2927, line: 73, baseType: !382, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2965, file: !2927, line: 75, baseType: !382, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2965, file: !2927, line: 77, baseType: !382, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2965, file: !2927, line: 80, baseType: !382, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2965, file: !2927, line: 83, baseType: !382, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2965, file: !2927, line: 86, baseType: !382, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2965, file: !2927, line: 88, baseType: !382, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2965, file: !2927, line: 93, baseType: !382, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2965, file: !2927, line: 100, baseType: !382, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2902, file: !2829, line: 96, baseType: !378, size: 32, offset: 1024)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2847, file: !2829, line: 352, baseType: !2979, size: 4608, align: 512)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2829, line: 333, size: 4608, align: 512, elements: !2980)
!2980 = !{!2981, !2982, !2989}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2979, file: !2829, line: 334, baseType: !2865, size: 4096, align: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2979, file: !2829, line: 335, baseType: !2983, size: 512, offset: 4096)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2829, line: 312, size: 512, elements: !2984)
!2984 = !{!2985, !2986, !2987}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2983, file: !2829, line: 313, baseType: !382, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2983, file: !2829, line: 314, baseType: !382, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2983, file: !2829, line: 315, baseType: !2988, size: 384, offset: 128)
!2988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 384, elements: !827)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2979, file: !2829, line: 336, baseType: !2990, offset: 4608)
!2990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, elements: !724)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2847, file: !2829, line: 353, baseType: !2992, size: 32768)
!2992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 32768, elements: !2993)
!2993 = !{!2994}
!2994 = !DISubrange(count: 4096)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2828, file: !2829, line: 484, baseType: !2834, size: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2828, file: !2829, line: 491, baseType: !2997, size: 128, offset: 256)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2829, line: 404, size: 128, elements: !2998)
!2998 = !{!2999, !3000, !3001}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2997, file: !2829, line: 424, baseType: !382, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2997, file: !2829, line: 432, baseType: !7, size: 32, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2997, file: !2829, line: 440, baseType: !7, size: 32, offset: 96)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2828, file: !2829, line: 498, baseType: !2997, size: 128, offset: 384)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2828, file: !2829, line: 508, baseType: !2835, size: 33280, align: 512, offset: 512)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1705, file: !1706, line: 16, baseType: !709, size: 192, offset: 512)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1705, file: !1706, line: 17, baseType: !178, size: 32, offset: 704)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !461, file: !14, line: 1240, baseType: !300, size: 64, offset: 6912)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !461, file: !14, line: 1243, baseType: !378, size: 32, offset: 6976)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !461, file: !14, line: 1245, baseType: !797, size: 64, offset: 7040)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !461, file: !14, line: 1246, baseType: !797, size: 64, offset: 7104)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !461, file: !14, line: 1248, baseType: !379, size: 32, offset: 7168)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !461, file: !14, line: 1249, baseType: !3012, size: 64, offset: 7232)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !461, file: !14, line: 1252, baseType: !3015, size: 256, offset: 7296)
!3015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 256, elements: !391)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !461, file: !14, line: 1253, baseType: !3017, size: 128, offset: 7552)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3018, line: 21, baseType: !3019)
!3018 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3018, line: 19, size: 128, elements: !3020)
!3020 = !{!3021}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3019, file: !3018, line: 20, baseType: !3022, size: 128)
!3022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !2165)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !461, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !461, file: !14, line: 1261, baseType: !593, size: 256, offset: 7744)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !461, file: !14, line: 1267, baseType: !147, size: 64, offset: 8000)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !461, file: !14, line: 1269, baseType: !407, size: 64, offset: 8064)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !461, file: !14, line: 1271, baseType: !3028, size: 448, offset: 8128)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1485, line: 63, size: 448, elements: !3029)
!3029 = !{!3030, !3035, !3036, !3037, !3038, !3039, !3040}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3028, file: !1485, line: 64, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!278, !3034, !1483}
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3028, file: !1485, line: 66, baseType: !3031, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3028, file: !1485, line: 69, baseType: !264, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3028, file: !1485, line: 70, baseType: !85, size: 32, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3028, file: !1485, line: 71, baseType: !7, size: 32, offset: 224)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3028, file: !1485, line: 74, baseType: !128, size: 128, offset: 256)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3028, file: !1485, line: 85, baseType: !3041, size: 64, offset: 384)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !461, file: !14, line: 1274, baseType: !597, size: 64, offset: 8576)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !461, file: !14, line: 1280, baseType: !597, size: 64, offset: 8640)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !461, file: !14, line: 1283, baseType: !85, size: 32, offset: 8704)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !461, file: !14, line: 1286, baseType: !1417, size: 32, offset: 8736)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !461, file: !14, line: 1289, baseType: !3047, size: 64, offset: 8768)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1277, line: 18, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !461, file: !14, line: 1290, baseType: !500, size: 64, offset: 8832)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !461, file: !14, line: 1297, baseType: !923, size: 64, offset: 8896)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !461, file: !14, line: 1304, baseType: !3052, size: 64, offset: 8960)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3053, line: 49, size: 64, elements: !3054)
!3053 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3054 = !{!3055}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3052, file: !3053, line: 50, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3053, line: 41, size: 512, align: 512, elements: !3058)
!3058 = !{!3059, !3060, !3065}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3057, file: !3053, line: 43, baseType: !158, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3057, file: !3053, line: 45, baseType: !3061, size: 192, offset: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3053, line: 29, size: 192, elements: !3062)
!3062 = !{!3063, !3064}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3061, file: !3053, line: 30, baseType: !128, size: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3061, file: !3053, line: 32, baseType: !264, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3057, file: !3053, line: 46, baseType: !264, size: 64, offset: 256)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !461, file: !14, line: 1305, baseType: !3052, size: 64, offset: 9024)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !461, file: !14, line: 1306, baseType: !651, size: 128, align: 64, offset: 9088)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !461, file: !14, line: 1307, baseType: !1276, size: 256, offset: 9216)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !461, file: !14, line: 1309, baseType: !593, size: 256, offset: 9472)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !461, file: !14, line: 1314, baseType: !85, size: 32, offset: 9728)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !461, file: !14, line: 1317, baseType: !158, size: 32, align: 512, offset: 10240)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !461, file: !14, line: 1318, baseType: !128, size: 128, offset: 10304)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !461, file: !14, line: 1320, baseType: !158, size: 32, offset: 10432)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !461, file: !14, line: 1321, baseType: !128, size: 128, offset: 10496)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !455, file: !456, line: 73, baseType: !85, size: 32, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !455, file: !456, line: 74, baseType: !3077, size: 64, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !748, line: 42, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !409, file: !346, line: 141, baseType: !3081, size: 64, offset: 704)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!85, !1545, !840}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !409, file: !346, line: 142, baseType: !3085, size: 64, offset: 768)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!344, !344, !3088}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !345, file: !346, line: 96, baseType: !460, size: 64, offset: 832)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !345, file: !346, line: 97, baseType: !278, size: 64, offset: 896)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !345, file: !346, line: 98, baseType: !300, size: 64, offset: 960)
!3093 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !346, line: 100, baseType: !3094, size: 128, offset: 1024)
!3094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !346, line: 100, size: 128, elements: !3095)
!3095 = !{!3096, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3094, file: !346, line: 101, baseType: !128, size: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3094, file: !346, line: 102, baseType: !1097, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !345, file: !346, line: 104, baseType: !128, size: 128, offset: 1152)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !345, file: !346, line: 105, baseType: !128, size: 128, offset: 1280)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !345, file: !346, line: 113, baseType: !3101, size: 128, offset: 1408)
!3101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !346, line: 109, size: 128, elements: !3102)
!3102 = !{!3103, !3104, !3105}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3101, file: !346, line: 110, baseType: !504, size: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3101, file: !346, line: 111, baseType: !360, size: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3101, file: !346, line: 112, baseType: !651, size: 128, align: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !338, file: !14, line: 1968, baseType: !3107, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!147, !344, !309, !3110}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3112, line: 10, size: 128, elements: !3113)
!3112 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3113 = !{!3114, !3118}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3111, file: !3112, line: 11, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !300}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3111, file: !3112, line: 12, baseType: !300, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !338, file: !14, line: 1969, baseType: !3120, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!85, !3077, !309, !85}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !338, file: !14, line: 1970, baseType: !3124, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!332, !309, !85, !840}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !338, file: !14, line: 1972, baseType: !3128, size: 64, offset: 256)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!85, !344, !228, !85}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !338, file: !14, line: 1974, baseType: !3132, size: 64, offset: 320)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!85, !3077, !309, !344, !270, !840}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !338, file: !14, line: 1976, baseType: !3136, size: 64, offset: 384)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!85, !344, !309, !344}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !338, file: !14, line: 1977, baseType: !3140, size: 64, offset: 448)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!85, !309, !344}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !338, file: !14, line: 1978, baseType: !3144, size: 64, offset: 512)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!85, !3077, !309, !344, !147}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !338, file: !14, line: 1980, baseType: !3148, size: 64, offset: 576)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!85, !3077, !309, !344, !270}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !338, file: !14, line: 1982, baseType: !3140, size: 64, offset: 640)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !338, file: !14, line: 1983, baseType: !3153, size: 64, offset: 704)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!85, !3077, !309, !344, !270, !465}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !338, file: !14, line: 1985, baseType: !3157, size: 64, offset: 768)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!85, !3077, !309, !344, !309, !344, !7}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !338, file: !14, line: 1987, baseType: !3161, size: 64, offset: 832)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!85, !3077, !344, !3164}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3166)
!3166 = !{!3167, !3168, !3169, !3179, !3188, !3189, !3194, !3195, !3196}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3165, file: !14, line: 227, baseType: !7, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3165, file: !14, line: 228, baseType: !270, size: 16, offset: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, scope: !3165, file: !14, line: 241, baseType: !3170, size: 32, offset: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3165, file: !14, line: 241, size: 32, elements: !3171)
!3171 = !{!3172, !3173}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3170, file: !14, line: 242, baseType: !315, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3170, file: !14, line: 243, baseType: !3174, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3175, line: 16, baseType: !3176)
!3175 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3175, line: 14, size: 32, elements: !3177)
!3177 = !{!3178}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3176, file: !3175, line: 15, baseType: !320, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, scope: !3165, file: !14, line: 245, baseType: !3180, size: 32, offset: 96)
!3180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3165, file: !14, line: 245, size: 32, elements: !3181)
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3180, file: !14, line: 246, baseType: !324, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3180, file: !14, line: 247, baseType: !3184, size: 32)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3175, line: 20, baseType: !3185)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3175, line: 18, size: 32, elements: !3186)
!3186 = !{!3187}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3185, file: !3175, line: 19, baseType: !328, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3165, file: !14, line: 249, baseType: !470, size: 64, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3165, file: !14, line: 250, baseType: !3190, size: 128, offset: 192)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !798, line: 13, size: 128, elements: !3191)
!3191 = !{!3192, !3193}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3190, file: !798, line: 14, baseType: !797, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3190, file: !798, line: 15, baseType: !264, size: 64, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3165, file: !14, line: 251, baseType: !3190, size: 128, offset: 320)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3165, file: !14, line: 252, baseType: !3190, size: 128, offset: 448)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3165, file: !14, line: 259, baseType: !968, size: 64, offset: 576)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !338, file: !14, line: 1988, baseType: !3198, size: 64, offset: 896)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!85, !3077, !1545, !3201, !378, !7}
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3203, line: 22, size: 1280, elements: !3204)
!3203 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3204 = !{!3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3202, file: !3203, line: 23, baseType: !378, size: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3202, file: !3203, line: 24, baseType: !270, size: 16, offset: 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3202, file: !3203, line: 25, baseType: !7, size: 32, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3202, file: !3203, line: 26, baseType: !805, size: 32, offset: 96)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3202, file: !3203, line: 27, baseType: !382, size: 64, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3202, file: !3203, line: 28, baseType: !382, size: 64, offset: 192)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3202, file: !3203, line: 41, baseType: !382, size: 64, offset: 256)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3202, file: !3203, line: 42, baseType: !465, size: 32, offset: 320)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3202, file: !3203, line: 43, baseType: !465, size: 32, offset: 352)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3202, file: !3203, line: 44, baseType: !315, size: 32, offset: 384)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3202, file: !3203, line: 45, baseType: !324, size: 32, offset: 416)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3202, file: !3203, line: 46, baseType: !470, size: 64, offset: 448)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3202, file: !3203, line: 47, baseType: !3190, size: 128, offset: 512)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3202, file: !3203, line: 48, baseType: !3190, size: 128, offset: 640)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3202, file: !3203, line: 49, baseType: !3190, size: 128, offset: 768)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3202, file: !3203, line: 50, baseType: !3190, size: 128, offset: 896)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3202, file: !3203, line: 51, baseType: !382, size: 64, offset: 1024)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3202, file: !3203, line: 52, baseType: !382, size: 64, offset: 1088)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3202, file: !3203, line: 53, baseType: !378, size: 32, offset: 1152)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3202, file: !3203, line: 54, baseType: !378, size: 32, offset: 1184)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3202, file: !3203, line: 55, baseType: !382, size: 64, offset: 1216)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !338, file: !14, line: 1990, baseType: !3227, size: 64, offset: 960)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!260, !344, !228, !275}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !338, file: !14, line: 1991, baseType: !3231, size: 64, offset: 1024)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!85, !309, !3234, !382, !382}
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !338, file: !14, line: 1993, baseType: !3237, size: 64, offset: 1088)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!85, !309, !85}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !338, file: !14, line: 1994, baseType: !3241, size: 64, offset: 1152)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!85, !309, !344, !968, !7, !270}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !338, file: !14, line: 1997, baseType: !3245, size: 64, offset: 1216)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!85, !3077, !309, !968, !270}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !338, file: !14, line: 1999, baseType: !3249, size: 64, offset: 1280)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!332, !3077, !344, !85}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !338, file: !14, line: 2001, baseType: !3253, size: 64, offset: 1344)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!85, !3077, !344, !332, !85}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !338, file: !14, line: 2003, baseType: !3257, size: 64, offset: 1408)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!85, !3077, !344, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !338, file: !14, line: 2005, baseType: !3263, size: 64, offset: 1472)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!85, !344, !3260}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !338, file: !14, line: 2006, baseType: !3267, size: 64, offset: 1536)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!3270, !309}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3272)
!3272 = !{!3273, !3274}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3271, file: !14, line: 3193, baseType: !1048, size: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3271, file: !14, line: 3194, baseType: !378, size: 32, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !310, file: !14, line: 655, baseType: !460, size: 64, offset: 448)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !310, file: !14, line: 656, baseType: !305, size: 64, offset: 512)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !310, file: !14, line: 659, baseType: !300, size: 64, offset: 576)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !310, file: !14, line: 663, baseType: !278, size: 64, offset: 640)
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !14, line: 671, baseType: !3280, size: 32, offset: 704)
!3280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !14, line: 671, size: 32, elements: !3281)
!3281 = !{!3282, !3284}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3280, file: !14, line: 672, baseType: !3283, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3280, file: !14, line: 673, baseType: !7, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !310, file: !14, line: 675, baseType: !465, size: 32, offset: 736)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !310, file: !14, line: 676, baseType: !470, size: 64, offset: 768)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !310, file: !14, line: 677, baseType: !3190, size: 128, offset: 832)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !310, file: !14, line: 678, baseType: !3190, size: 128, offset: 960)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !310, file: !14, line: 679, baseType: !3190, size: 128, offset: 1088)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !310, file: !14, line: 680, baseType: !158, size: 32, offset: 1216)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !310, file: !14, line: 681, baseType: !198, size: 16, offset: 1248)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !310, file: !14, line: 682, baseType: !186, size: 8, offset: 1264)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !310, file: !14, line: 683, baseType: !186, size: 8, offset: 1272)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !310, file: !14, line: 684, baseType: !1618, size: 64, offset: 1280)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !310, file: !14, line: 691, baseType: !278, size: 64, offset: 1344)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !310, file: !14, line: 692, baseType: !781, size: 320, offset: 1408)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !310, file: !14, line: 694, baseType: !278, size: 64, offset: 1728)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !310, file: !14, line: 695, baseType: !278, size: 64, offset: 1792)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !310, file: !14, line: 697, baseType: !504, size: 128, offset: 1856)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !310, file: !14, line: 698, baseType: !128, size: 128, offset: 1984)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !310, file: !14, line: 707, baseType: !128, size: 128, offset: 2112)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !310, file: !14, line: 708, baseType: !128, size: 128, offset: 2240)
!3303 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !14, line: 709, baseType: !3304, size: 128, offset: 2368)
!3304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !14, line: 709, size: 128, elements: !3305)
!3305 = !{!3306, !3307}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3304, file: !14, line: 710, baseType: !500, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3304, file: !14, line: 711, baseType: !651, size: 128, align: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !310, file: !14, line: 713, baseType: !599, size: 64, offset: 2496)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !310, file: !14, line: 714, baseType: !599, size: 64, offset: 2560)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !310, file: !14, line: 715, baseType: !178, size: 32, offset: 2624)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !310, file: !14, line: 716, baseType: !178, size: 32, offset: 2656)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !310, file: !14, line: 717, baseType: !178, size: 32, offset: 2688)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !310, file: !14, line: 719, baseType: !178, size: 32, offset: 2720)
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !14, line: 721, baseType: !3315, size: 64, offset: 2752)
!3315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !14, line: 721, size: 64, elements: !3316)
!3316 = !{!3317, !3318}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3315, file: !14, line: 722, baseType: !959, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3315, file: !14, line: 723, baseType: !531, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !310, file: !14, line: 725, baseType: !3320, size: 64, offset: 2816)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !310, file: !14, line: 726, baseType: !306, size: 1536, align: 64, offset: 2880)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !310, file: !14, line: 727, baseType: !128, size: 128, offset: 4416)
!3324 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !14, line: 728, baseType: !3325, size: 64, offset: 4544)
!3325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !14, line: 728, size: 64, elements: !3326)
!3326 = !{!3327, !3328, !3339, !3340}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3325, file: !14, line: 729, baseType: !1366, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3325, file: !14, line: 730, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3331, line: 14, size: 832, elements: !3332)
!3331 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3330, file: !3331, line: 15, baseType: !143, size: 512)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3330, file: !3331, line: 16, baseType: !123, size: 64, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3330, file: !3331, line: 17, baseType: !959, size: 64, offset: 576)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3330, file: !3331, line: 18, baseType: !128, size: 128, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3330, file: !3331, line: 19, baseType: !465, size: 32, offset: 768)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3330, file: !3331, line: 20, baseType: !7, size: 32, offset: 800)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3325, file: !14, line: 731, baseType: !228, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3325, file: !14, line: 732, baseType: !7, size: 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !310, file: !14, line: 735, baseType: !379, size: 32, offset: 4608)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !310, file: !14, line: 738, baseType: !379, size: 32, offset: 4640)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !310, file: !14, line: 739, baseType: !3012, size: 64, offset: 4672)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !310, file: !14, line: 750, baseType: !300, size: 64, offset: 4736)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !306, file: !14, line: 474, baseType: !1048, size: 128, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !306, file: !14, line: 475, baseType: !781, size: 320, offset: 192)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !306, file: !14, line: 476, baseType: !1053, size: 32, offset: 512)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !306, file: !14, line: 477, baseType: !178, size: 32, offset: 544)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !306, file: !14, line: 482, baseType: !1893, size: 128, offset: 576)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !306, file: !14, line: 483, baseType: !278, size: 64, offset: 704)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !306, file: !14, line: 484, baseType: !278, size: 64, offset: 768)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !306, file: !14, line: 485, baseType: !3353, size: 64, offset: 832)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3355)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3356)
!3356 = !{!3357, !3361, !3431, !3435, !3439, !3445, !3450, !3454, !3459, !3463, !3467, !3471, !3472, !3476, !3480, !3484, !3489, !3493, !3500, !3501}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3355, file: !14, line: 405, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!85, !2600, !543}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3355, file: !14, line: 406, baseType: !3362, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!85, !968, !3365}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1110, line: 293, size: 1536, elements: !3367)
!3367 = !{!3368, !3398, !3412}
!3368 = !DIDerivedType(tag: DW_TAG_member, scope: !3366, file: !1110, line: 295, baseType: !3369, size: 512)
!3369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3366, file: !1110, line: 295, size: 512, elements: !3370)
!3370 = !{!3371, !3397}
!3371 = !DIDerivedType(tag: DW_TAG_member, scope: !3369, file: !1110, line: 296, baseType: !3372, size: 448)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3369, file: !1110, line: 296, size: 448, elements: !3373)
!3373 = !{!3374, !3375, !3384, !3385, !3386, !3395, !3396}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3372, file: !1110, line: 298, baseType: !278, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, scope: !3372, file: !1110, line: 299, baseType: !3376, size: 128, offset: 64)
!3376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3372, file: !1110, line: 299, size: 128, elements: !3377)
!3377 = !{!3378, !3379}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3376, file: !1110, line: 300, baseType: !128, size: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, scope: !3376, file: !1110, line: 302, baseType: !3380, size: 128)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3376, file: !1110, line: 302, size: 128, elements: !3381)
!3381 = !{!3382, !3383}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3380, file: !1110, line: 303, baseType: !300, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3380, file: !1110, line: 305, baseType: !7, size: 32, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3372, file: !1110, line: 310, baseType: !305, size: 64, offset: 192)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3372, file: !1110, line: 311, baseType: !278, size: 64, offset: 256)
!3386 = !DIDerivedType(tag: DW_TAG_member, scope: !3372, file: !1110, line: 312, baseType: !3387, size: 64, offset: 320)
!3387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3372, file: !1110, line: 312, size: 64, elements: !3388)
!3388 = !{!3389, !3390}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3387, file: !1110, line: 313, baseType: !300, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3387, file: !1110, line: 314, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1110, line: 257, baseType: !3392)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1110, line: 255, size: 64, elements: !3393)
!3393 = !{!3394}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3392, file: !1110, line: 256, baseType: !278, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3372, file: !1110, line: 316, baseType: !178, size: 32, offset: 384)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3372, file: !1110, line: 317, baseType: !178, size: 32, offset: 416)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3369, file: !1110, line: 323, baseType: !2601, size: 512, align: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, scope: !3366, file: !1110, line: 325, baseType: !3399, size: 512, offset: 512)
!3399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3366, file: !1110, line: 325, size: 512, elements: !3400)
!3400 = !{!3401, !3411}
!3401 = !DIDerivedType(tag: DW_TAG_member, scope: !3399, file: !1110, line: 326, baseType: !3402, size: 320)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3399, file: !1110, line: 326, size: 320, elements: !3403)
!3403 = !{!3404, !3405, !3406, !3407, !3408, !3409, !3410}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3402, file: !1110, line: 327, baseType: !278, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3402, file: !1110, line: 328, baseType: !278, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3402, file: !1110, line: 329, baseType: !278, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3402, file: !1110, line: 331, baseType: !178, size: 32, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3402, file: !1110, line: 332, baseType: !178, size: 32, offset: 224)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3402, file: !1110, line: 333, baseType: !178, size: 32, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3402, file: !1110, line: 335, baseType: !7, size: 32, offset: 288)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3399, file: !1110, line: 339, baseType: !2601, size: 512, align: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, scope: !3366, file: !1110, line: 341, baseType: !3413, size: 512, offset: 1024)
!3413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3366, file: !1110, line: 341, size: 512, elements: !3414)
!3414 = !{!3415, !3424, !3430}
!3415 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !1110, line: 342, baseType: !3416, size: 384)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !1110, line: 342, size: 384, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421, !3422, !3423}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3416, file: !1110, line: 343, baseType: !278, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3416, file: !1110, line: 344, baseType: !278, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3416, file: !1110, line: 346, baseType: !300, size: 64, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3416, file: !1110, line: 347, baseType: !300, size: 64, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3416, file: !1110, line: 348, baseType: !300, size: 64, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3416, file: !1110, line: 349, baseType: !300, size: 64, offset: 320)
!3424 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !1110, line: 352, baseType: !3425, size: 256)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !1110, line: 352, size: 256, elements: !3426)
!3426 = !{!3427, !3428, !3429}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3425, file: !1110, line: 353, baseType: !278, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3425, file: !1110, line: 354, baseType: !278, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3425, file: !1110, line: 356, baseType: !128, size: 128, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3413, file: !1110, line: 359, baseType: !2601, size: 512, align: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3355, file: !14, line: 409, baseType: !3432, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!85, !305, !543}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3355, file: !14, line: 412, baseType: !3436, size: 64, offset: 192)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!840, !305, !3365}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3355, file: !14, line: 414, baseType: !3440, size: 64, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{null, !3443}
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3355, file: !14, line: 416, baseType: !3446, size: 64, offset: 320)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!85, !968, !305, !470, !7, !3449, !1382}
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3355, file: !14, line: 419, baseType: !3451, size: 64, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!85, !968, !305, !470, !7, !7, !2600, !300}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3355, file: !14, line: 424, baseType: !3455, size: 64, offset: 448)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!3458, !305, !3458}
!3458 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !129, line: 131, baseType: !382)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3355, file: !14, line: 425, baseType: !3460, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{null, !3365, !275, !275}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3355, file: !14, line: 426, baseType: !3464, size: 64, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!840, !3365, !1053}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3355, file: !14, line: 427, baseType: !3468, size: 64, offset: 640)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{null, !3365}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3355, file: !14, line: 428, baseType: !978, size: 64, offset: 704)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3355, file: !14, line: 433, baseType: !3473, size: 64, offset: 768)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!85, !305, !3365, !3365, !50}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3355, file: !14, line: 435, baseType: !3477, size: 64, offset: 832)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!85, !3365}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3355, file: !14, line: 436, baseType: !3481, size: 64, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!840, !3365, !275, !275}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3355, file: !14, line: 438, baseType: !3485, size: 64, offset: 960)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{null, !3365, !3488, !3488}
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3355, file: !14, line: 439, baseType: !3490, size: 64, offset: 1024)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!85, !305, !2600}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3355, file: !14, line: 442, baseType: !3494, size: 64, offset: 1088)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!85, !3497, !968, !3499}
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3355, file: !14, line: 444, baseType: !1374, size: 64, offset: 1152)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3355, file: !14, line: 445, baseType: !3502, size: 64, offset: 1216)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!85, !981, !1003}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !14, line: 486, baseType: !278, size: 64, offset: 896)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !306, file: !14, line: 487, baseType: !781, size: 320, offset: 960)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !306, file: !14, line: 488, baseType: !1417, size: 32, offset: 1280)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !306, file: !14, line: 489, baseType: !158, size: 32, offset: 1312)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !306, file: !14, line: 490, baseType: !128, size: 128, offset: 1344)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !306, file: !14, line: 491, baseType: !300, size: 64, offset: 1472)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !295, file: !254, line: 180, baseType: !3512, size: 64, offset: 320)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!260, !968, !151, !294, !228, !470, !275}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !295, file: !254, line: 182, baseType: !3512, size: 64, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !295, file: !254, line: 184, baseType: !3517, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!85, !968, !151, !294, !1108}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !283, file: !254, line: 90, baseType: !3521, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !283, file: !254, line: 91, baseType: !3523, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !244, file: !144, line: 120, baseType: !3525, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!3528, !211}
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3530)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3531)
!3531 = !{!3532, !3533, !3537, !3541, !3548, !3552}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3530, file: !58, line: 40, baseType: !57, size: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3530, file: !58, line: 41, baseType: !3534, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!840}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3530, file: !58, line: 42, baseType: !3538, size: 64, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!300}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3530, file: !58, line: 43, baseType: !3542, size: 64, offset: 192)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!1237, !3545}
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3547, line: 17, flags: DIFlagFwdDecl)
!3547 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3530, file: !58, line: 44, baseType: !3549, size: 64, offset: 256)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!1237}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3530, file: !58, line: 45, baseType: !3115, size: 64, offset: 320)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !244, file: !144, line: 121, baseType: !3554, size: 64, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!1237, !211}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !244, file: !144, line: 122, baseType: !3558, size: 64, offset: 320)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{null, !211, !3561, !3562}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !143, file: !144, line: 70, baseType: !3564, size: 64, offset: 384)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3566, line: 190, size: 1152, elements: !3567)
!3566 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3647, !3648, !3649, !3650, !3651, !3654}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3565, file: !3566, line: 191, baseType: !178, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3565, file: !3566, line: 192, baseType: !178, size: 32, offset: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3565, file: !3566, line: 202, baseType: !3564, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3565, file: !3566, line: 203, baseType: !147, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3565, file: !3566, line: 205, baseType: !773, size: 192, align: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3565, file: !3566, line: 207, baseType: !1237, size: 64, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3565, file: !3566, line: 208, baseType: !7, size: 32, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, scope: !3565, file: !3566, line: 209, baseType: !3576, size: 256, offset: 512)
!3576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3565, file: !3566, line: 209, size: 256, elements: !3577)
!3577 = !{!3578, !3587, !3591}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3576, file: !3566, line: 210, baseType: !3579, size: 256)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3566, line: 153, size: 256, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3586}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3579, file: !3566, line: 154, baseType: !278, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3579, file: !3566, line: 156, baseType: !1896, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3579, file: !3566, line: 162, baseType: !3584, size: 64, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3566, line: 162, flags: DIFlagFwdDecl)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3579, file: !3566, line: 167, baseType: !278, size: 64, offset: 192)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3576, file: !3566, line: 211, baseType: !3588, size: 64)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3566, line: 170, size: 64, elements: !3589)
!3589 = !{!3590}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3588, file: !3566, line: 171, baseType: !3564, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3576, file: !3566, line: 212, baseType: !3592, size: 256)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3566, line: 174, size: 256, elements: !3593)
!3593 = !{!3594, !3642, !3645, !3646}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3592, file: !3566, line: 175, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3597)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3566, line: 271, size: 768, elements: !3598)
!3598 = !{!3599, !3619, !3623, !3624, !3625, !3626, !3627, !3631, !3632, !3633, !3634, !3638}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3597, file: !3566, line: 276, baseType: !3600, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!85, !3603}
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3566, line: 251, size: 1216, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3604, file: !3566, line: 253, baseType: !3564, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3604, file: !3566, line: 254, baseType: !968, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3604, file: !3566, line: 255, baseType: !581, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3604, file: !3566, line: 256, baseType: !300, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3604, file: !3566, line: 259, baseType: !593, size: 256, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3604, file: !3566, line: 260, baseType: !593, size: 256, offset: 512)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3604, file: !3566, line: 261, baseType: !85, size: 32, offset: 768)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3604, file: !3566, line: 262, baseType: !128, size: 128, offset: 832)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3604, file: !3566, line: 263, baseType: !228, size: 64, offset: 960)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3604, file: !3566, line: 265, baseType: !275, size: 64, offset: 1024)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3604, file: !3566, line: 266, baseType: !840, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3604, file: !3566, line: 267, baseType: !840, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3604, file: !3566, line: 268, baseType: !1319, size: 64, offset: 1152)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3597, file: !3566, line: 277, baseType: !3620, size: 64, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{null, !3603}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3597, file: !3566, line: 290, baseType: !632, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3597, file: !3566, line: 292, baseType: !619, size: 64, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3597, file: !3566, line: 293, baseType: !628, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3597, file: !3566, line: 294, baseType: !624, size: 64, offset: 320)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3597, file: !3566, line: 296, baseType: !3628, size: 64, offset: 384)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!260, !3603, !228, !275, !470}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3597, file: !3566, line: 306, baseType: !275, size: 64, offset: 448)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3597, file: !3566, line: 313, baseType: !840, size: 8, offset: 512)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3597, file: !3566, line: 314, baseType: !3628, size: 64, offset: 576)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3597, file: !3566, line: 317, baseType: !3635, size: 64, offset: 640)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!1086, !3603, !1088}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3597, file: !3566, line: 320, baseType: !3639, size: 64, offset: 704)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!85, !3603, !1108}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3592, file: !3566, line: 176, baseType: !3643, size: 64, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3566, line: 35, flags: DIFlagFwdDecl)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3592, file: !3566, line: 177, baseType: !470, size: 64, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3592, file: !3566, line: 178, baseType: !3564, size: 64, offset: 192)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3565, file: !3566, line: 215, baseType: !300, size: 64, offset: 768)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3565, file: !3566, line: 221, baseType: !382, size: 64, offset: 832)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3565, file: !3566, line: 223, baseType: !198, size: 16, offset: 896)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3565, file: !3566, line: 224, baseType: !270, size: 16, offset: 912)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3565, file: !3566, line: 225, baseType: !3652, size: 64, offset: 960)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3566, line: 36, flags: DIFlagFwdDecl)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3565, file: !3566, line: 227, baseType: !651, size: 128, align: 64, offset: 1024)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !143, file: !144, line: 71, baseType: !3656, size: 32, offset: 448)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3657, line: 19, size: 32, elements: !3658)
!3657 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3658 = !{!3659}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3656, file: !3657, line: 20, baseType: !696, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !143, file: !144, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !143, file: !144, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !143, file: !144, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !143, file: !144, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !143, file: !144, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !140, file: !6, line: 47, baseType: !123, size: 64, offset: 512)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !140, file: !6, line: 48, baseType: !151, size: 64, offset: 576)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !140, file: !6, line: 49, baseType: !3668, size: 64, offset: 640)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !140, file: !6, line: 50, baseType: !2112, size: 64, offset: 704)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !124, file: !6, line: 418, baseType: !3672, size: 64, offset: 1408)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3674)
!3674 = !{!3675, !3676, !3681, !3685, !3689, !3693}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3673, file: !6, line: 54, baseType: !266, size: 128)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3673, file: !6, line: 55, baseType: !3677, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!260, !3672, !3680, !228}
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3673, file: !6, line: 57, baseType: !3682, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!260, !3672, !3680, !147, !275}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3673, file: !6, line: 59, baseType: !3686, size: 64, offset: 256)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{null, !123, !147}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3673, file: !6, line: 60, baseType: !3690, size: 64, offset: 320)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!85, !123}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3673, file: !6, line: 61, baseType: !3694, size: 64, offset: 384)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{null, !123}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !124, file: !6, line: 419, baseType: !147, size: 64, offset: 1472)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !124, file: !6, line: 420, baseType: !147, size: 64, offset: 1536)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !124, file: !6, line: 421, baseType: !151, size: 64, offset: 1600)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !124, file: !6, line: 424, baseType: !3701, size: 64, offset: 1664)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3703)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !124, file: !6, line: 425, baseType: !3705, size: 64, offset: 1728)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !124, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !124, file: !6, line: 435, baseType: !593, size: 256, offset: 1856)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !124, file: !6, line: 437, baseType: !3710, size: 64, offset: 2112)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3712, line: 69, size: 320, elements: !3713)
!3712 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3713 = !{!3714, !3715, !3716, !3733, !3735, !3739, !3740}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3711, file: !3712, line: 70, baseType: !147, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3711, file: !3712, line: 71, baseType: !123, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3711, file: !3712, line: 72, baseType: !3717, size: 64, offset: 128)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3719)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3712, line: 47, size: 256, elements: !3720)
!3720 = !{!3721, !3722, !3728, !3732}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3719, file: !3712, line: 49, baseType: !7, size: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3719, file: !3712, line: 51, baseType: !3723, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!85, !147, !3726}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3711)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3719, file: !3712, line: 53, baseType: !3729, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!85, !228, !3726}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3719, file: !3712, line: 55, baseType: !3115, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3711, file: !3712, line: 73, baseType: !3734, size: 16, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3711, file: !3712, line: 74, baseType: !3736, size: 8, offset: 208)
!3736 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !187, line: 16, baseType: !3737)
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !189, line: 20, baseType: !3738)
!3738 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3711, file: !3712, line: 75, baseType: !186, size: 8, offset: 216)
!3740 = !DIDerivedType(tag: DW_TAG_member, scope: !3711, file: !3712, line: 76, baseType: !3741, size: 64, offset: 256)
!3741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3711, file: !3712, line: 76, size: 64, elements: !3742)
!3742 = !{!3743, !3744, !3751}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3741, file: !3712, line: 77, baseType: !300, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3741, file: !3712, line: 78, baseType: !3745, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3747)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3712, line: 86, size: 128, elements: !3748)
!3748 = !{!3749, !3750}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3747, file: !3712, line: 87, baseType: !7, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3747, file: !3712, line: 88, baseType: !228, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3741, file: !3712, line: 79, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3754)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3712, line: 92, size: 256, elements: !3755)
!3755 = !{!3756, !3757, !3758, !3759, !3760}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3754, file: !3712, line: 94, baseType: !7, size: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3754, file: !3712, line: 95, baseType: !7, size: 32, offset: 32)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3754, file: !3712, line: 96, baseType: !1717, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3754, file: !3712, line: 97, baseType: !3717, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3754, file: !3712, line: 98, baseType: !300, size: 64, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !124, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !124, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !124, file: !6, line: 442, baseType: !3701, size: 64, offset: 2240)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !124, file: !6, line: 443, baseType: !3705, size: 64, offset: 2304)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !124, file: !6, line: 444, baseType: !840, size: 8, offset: 2368)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !124, file: !6, line: 451, baseType: !840, size: 8, offset: 2376)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !124, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !124, file: !6, line: 455, baseType: !3769, size: 64, offset: 2432)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3771, line: 23, size: 96, elements: !3772)
!3771 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3772 = !{!3773, !3774, !3775}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3770, file: !3771, line: 24, baseType: !85, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3770, file: !3771, line: 24, baseType: !85, size: 32, offset: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3770, file: !3771, line: 24, baseType: !85, size: 32, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !124, file: !6, line: 458, baseType: !3777, size: 64, offset: 2496)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!85}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !124, file: !6, line: 460, baseType: !3781, size: 4032, align: 512, offset: 2560)
!3781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3782, size: 4032, elements: !3796)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3783)
!3783 = !{!3784, !3785, !3786}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3782, file: !6, line: 363, baseType: !300, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3782, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3782, file: !6, line: 367, baseType: !3787, size: 448, offset: 128)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3788)
!3788 = !{!3789, !3790}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3787, file: !6, line: 320, baseType: !123, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3787, file: !6, line: 321, baseType: !3791, size: 384, offset: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3792, line: 40, size: 384, elements: !3793)
!3792 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3793 = !{!3794}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3791, file: !3792, line: 41, baseType: !3795, size: 384, align: 64)
!3795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 384, align: 64, elements: !2246)
!3796 = !{!3797}
!3797 = !DISubrange(count: 7)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !124, file: !6, line: 463, baseType: !3799, size: 192, offset: 6592)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3800, line: 8, size: 192, elements: !3801)
!3800 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3801 = !{!3802, !3803, !3804}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3799, file: !3800, line: 10, baseType: !7, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3799, file: !3800, line: 11, baseType: !575, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3799, file: !3800, line: 12, baseType: !3805, size: 64, offset: 128)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3807, line: 59, size: 48, elements: !3808)
!3807 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3808 = !{!3809, !3810, !3811, !3812, !3813, !3814}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3806, file: !3807, line: 60, baseType: !1254, size: 16)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3806, file: !3807, line: 61, baseType: !1254, size: 16, offset: 16)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3806, file: !3807, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3806, file: !3807, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3806, file: !3807, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3806, file: !3807, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !124, file: !6, line: 465, baseType: !278, size: 64, offset: 6784)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !124, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !124, file: !6, line: 470, baseType: !128, size: 128, offset: 6912)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !124, file: !6, line: 471, baseType: !3819, size: 64, offset: 7040)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3821, line: 33, size: 96, elements: !3822)
!3821 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3822 = !{!3823, !3824, !3825, !3826}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3820, file: !3821, line: 37, baseType: !85, size: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3820, file: !3821, line: 43, baseType: !85, size: 32, offset: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3820, file: !3821, line: 45, baseType: !198, size: 16, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3820, file: !3821, line: 47, baseType: !198, size: 16, offset: 80)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !124, file: !6, line: 476, baseType: !3828, size: 64, offset: 7104)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3830)
!3830 = !{!3831, !3847, !3848, !3849}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3829, file: !6, line: 379, baseType: !3832, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3834, line: 204, baseType: !3835)
!3834 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3834, line: 197, size: 192, elements: !3836)
!3836 = !{!3837, !3839, !3840, !3841, !3843, !3845}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3835, file: !3834, line: 198, baseType: !3838, size: 32)
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3834, line: 21, baseType: !379)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3835, file: !3834, line: 199, baseType: !190, size: 8, offset: 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3835, file: !3834, line: 200, baseType: !190, size: 8, offset: 40)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3835, file: !3834, line: 201, baseType: !3842, size: 16, offset: 48)
!3842 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3834, line: 17, baseType: !197)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3835, file: !3834, line: 202, baseType: !3844, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3834, line: 16, baseType: !383)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3835, file: !3834, line: 203, baseType: !3846, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3834, line: 22, baseType: !383)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3829, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3829, file: !6, line: 381, baseType: !228, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3829, file: !6, line: 382, baseType: !228, size: 64, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !124, file: !6, line: 477, baseType: !3829, size: 256, offset: 7168)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !124, file: !6, line: 480, baseType: !3852, size: 64, offset: 7424)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !124, file: !6, line: 483, baseType: !3855, size: 64, offset: 7488)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !124, file: !6, line: 488, baseType: !228, size: 64, offset: 7552)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !124, file: !6, line: 492, baseType: !300, size: 64, offset: 7616)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !124, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !124, file: !6, line: 495, baseType: !300, size: 64, offset: 7744)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !124, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !124, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !124, file: !6, line: 500, baseType: !3864, size: 64, offset: 7872)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3866, line: 45, baseType: !3867)
!3866 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !124, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !124, file: !6, line: 504, baseType: !3870, size: 64, offset: 8000)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3873, line: 96, size: 192, elements: !3874)
!3873 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3874 = !{!3875, !3876, !3919, !3921}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3872, file: !3873, line: 97, baseType: !7, size: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3872, file: !3873, line: 98, baseType: !3877, size: 64, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3873, line: 24, size: 3072, elements: !3879)
!3879 = !{!3880, !3882, !3883, !3884, !3885, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3916, !3917, !3918}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3878, file: !3873, line: 26, baseType: !3881, size: 128)
!3881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 128, elements: !2246)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3878, file: !3873, line: 27, baseType: !3881, size: 128, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3878, file: !3873, line: 28, baseType: !85, size: 32, offset: 256)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3878, file: !3873, line: 31, baseType: !158, size: 32, align: 512, offset: 512)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3878, file: !3873, line: 32, baseType: !3886, size: 960, offset: 576)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3887, line: 206, size: 960, elements: !3888)
!3887 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3888 = !{!3889, !3890, !3893, !3895, !3896, !3898}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3886, file: !3887, line: 207, baseType: !654, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3886, file: !3887, line: 208, baseType: !3891, size: 256, offset: 64)
!3891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3892, size: 256, elements: !705)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3886, file: !3887, line: 209, baseType: !3894, size: 256, offset: 320)
!3894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !705)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3886, file: !3887, line: 213, baseType: !264, size: 64, offset: 576)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3886, file: !3887, line: 215, baseType: !3897, size: 256, offset: 640)
!3897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 256, elements: !705)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3886, file: !3887, line: 216, baseType: !186, size: 8, offset: 896)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3878, file: !3873, line: 33, baseType: !278, size: 64, offset: 1536)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3878, file: !3873, line: 34, baseType: !278, size: 64, offset: 1600)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3878, file: !3873, line: 35, baseType: !840, size: 8, offset: 1664)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3878, file: !3873, line: 36, baseType: !2753, size: 320, offset: 1728)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3878, file: !3873, line: 37, baseType: !1276, size: 256, offset: 2048)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3878, file: !3873, line: 38, baseType: !651, size: 128, align: 64, offset: 2304)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3878, file: !3873, line: 39, baseType: !3906, size: 64, offset: 2432)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3873, line: 49, size: 768, elements: !3908)
!3908 = !{!3909, !3910, !3911, !3912, !3913, !3914, !3915}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3907, file: !3873, line: 50, baseType: !158, size: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3907, file: !3873, line: 51, baseType: !3894, size: 256, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3907, file: !3873, line: 53, baseType: !3894, size: 256, offset: 320)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3907, file: !3873, line: 54, baseType: !278, size: 64, offset: 576)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3907, file: !3873, line: 55, baseType: !3906, size: 64, offset: 640)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3907, file: !3873, line: 56, baseType: !85, size: 32, offset: 704)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3907, file: !3873, line: 57, baseType: !85, size: 32, offset: 736)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3878, file: !3873, line: 40, baseType: !278, size: 64, offset: 2496)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3878, file: !3873, line: 42, baseType: !85, size: 32, offset: 2560)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3878, file: !3873, line: 43, baseType: !3871, size: 64, offset: 2624)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3872, file: !3873, line: 99, baseType: !3920, offset: 128)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !511, line: 211, elements: !512)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3872, file: !3873, line: 100, baseType: !3922, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3873, line: 63, size: 3008, elements: !3924)
!3924 = !{!3925, !3926, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3954}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3923, file: !3873, line: 64, baseType: !3906, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3923, file: !3873, line: 65, baseType: !3927, size: 192, offset: 64)
!3927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3906, size: 192, elements: !229)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3923, file: !3873, line: 67, baseType: !85, size: 32, offset: 256)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3923, file: !3873, line: 68, baseType: !593, size: 256, offset: 320)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3923, file: !3873, line: 69, baseType: !158, size: 32, offset: 576)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3923, file: !3873, line: 70, baseType: !593, size: 256, offset: 640)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3923, file: !3873, line: 71, baseType: !278, size: 64, offset: 896)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3923, file: !3873, line: 72, baseType: !278, size: 64, offset: 960)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3923, file: !3873, line: 73, baseType: !278, size: 64, offset: 1024)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3923, file: !3873, line: 74, baseType: !278, size: 64, offset: 1088)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3923, file: !3873, line: 75, baseType: !278, size: 64, offset: 1152)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3923, file: !3873, line: 76, baseType: !278, size: 64, offset: 1216)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3923, file: !3873, line: 77, baseType: !278, size: 64, offset: 1280)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3923, file: !3873, line: 78, baseType: !278, size: 64, offset: 1344)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3923, file: !3873, line: 79, baseType: !840, size: 8, offset: 1408)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3923, file: !3873, line: 80, baseType: !278, size: 64, offset: 1472)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3923, file: !3873, line: 81, baseType: !593, size: 256, offset: 1536)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3923, file: !3873, line: 82, baseType: !2113, size: 256, offset: 1792)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3923, file: !3873, line: 84, baseType: !178, size: 32, offset: 2048)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3923, file: !3873, line: 87, baseType: !278, size: 64, offset: 2112)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3923, file: !3873, line: 88, baseType: !278, size: 64, offset: 2176)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3923, file: !3873, line: 89, baseType: !3948, size: 704, offset: 2240)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1277, line: 111, size: 704, elements: !3949)
!3949 = !{!3950, !3951, !3952, !3953}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3948, file: !1277, line: 112, baseType: !1276, size: 256)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3948, file: !1277, line: 113, baseType: !2753, size: 320, offset: 256)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3948, file: !1277, line: 116, baseType: !3047, size: 64, offset: 576)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3948, file: !1277, line: 117, baseType: !85, size: 32, offset: 640)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3923, file: !3873, line: 90, baseType: !3871, size: 64, offset: 2944)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !124, file: !6, line: 515, baseType: !3956, size: 64, offset: 8064)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3958, line: 117, size: 128, elements: !3959)
!3958 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3959 = !{!3960, !3961, !3962}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3957, file: !3958, line: 118, baseType: !766, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3957, file: !3958, line: 119, baseType: !766, size: 32, offset: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3957, file: !3958, line: 120, baseType: !264, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !124, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !124, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !124, file: !6, line: 520, baseType: !3966, size: 64, offset: 8192)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !124, file: !6, line: 523, baseType: !3968, size: 64, offset: 8256)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !124, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !124, file: !6, line: 525, baseType: !3973, size: 64, offset: 8384)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !124, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !124, file: !6, line: 533, baseType: !300, size: 64, offset: 8512)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !124, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !124, file: !6, line: 535, baseType: !3980, size: 64, offset: 8640)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !124, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !124, file: !6, line: 539, baseType: !85, size: 32, offset: 8736)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !124, file: !6, line: 540, baseType: !3984, size: 64, offset: 8768)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3986, line: 32, size: 64, elements: !3987)
!3986 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3987 = !{!3988, !3989}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3985, file: !3986, line: 33, baseType: !766, size: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3985, file: !3986, line: 34, baseType: !766, size: 32, offset: 32)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !124, file: !6, line: 563, baseType: !128, size: 128, offset: 8832)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !124, file: !6, line: 565, baseType: !128, size: 128, offset: 8960)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !124, file: !6, line: 568, baseType: !3993, size: 64, offset: 9088)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !124, file: !6, line: 570, baseType: !178, size: 32, offset: 9152)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !129, line: 42, baseType: !278)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_device", file: !4004, line: 87, size: 10112, elements: !4005)
!4004 = !DIFile(filename: "./include/linux/rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff23d3d21ddec8b2b9f29ebd0a4cf8a2")
!4005 = !{!4006, !4356, !4357, !4358, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4446, !4447, !4448, !4449, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4469, !4470, !4471, !4472}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4003, file: !4004, line: 88, baseType: !4007, size: 5824)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4008)
!4008 = !{!4009, !4010, !4012, !4015, !4016, !4069, !4139, !4140, !4141, !4142, !4143, !4150, !4242, !4255, !4265, !4269, !4271, !4272, !4273, !4277, !4284, !4285, !4288, !4291, !4295, !4298, !4299, !4300, !4301, !4302, !4303, !4333, !4334, !4335, !4338, !4341, !4350, !4351, !4352, !4353, !4354, !4355}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4007, file: !70, line: 706, baseType: !143, size: 512)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4007, file: !70, line: 707, baseType: !4011, size: 64, offset: 512)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4007, file: !70, line: 709, baseType: !4013, size: 64, offset: 576)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4007, file: !70, line: 711, baseType: !147, size: 64, offset: 640)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4007, file: !70, line: 712, baseType: !4017, size: 64, offset: 704)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4019)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4020)
!4020 = !{!4021, !4022, !4023, !4029, !4034, !4038}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4019, file: !70, line: 90, baseType: !147, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4019, file: !70, line: 91, baseType: !280, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4019, file: !70, line: 92, baseType: !4024, size: 64, offset: 128)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!85, !4027, !223}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4007)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4019, file: !70, line: 93, baseType: !4030, size: 64, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!228, !4027, !4033, !3561, !3562}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4019, file: !70, line: 95, baseType: !4035, size: 64, offset: 256)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{null, !4011}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4019, file: !70, line: 97, baseType: !4039, size: 64, offset: 320)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4041)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4042)
!4042 = !{!4043, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4041, file: !77, line: 287, baseType: !4044, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!85, !4011}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4041, file: !77, line: 288, baseType: !4035, size: 64, offset: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4041, file: !77, line: 289, baseType: !4044, size: 64, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4041, file: !77, line: 290, baseType: !4044, size: 64, offset: 192)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4041, file: !77, line: 291, baseType: !4044, size: 64, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4041, file: !77, line: 292, baseType: !4044, size: 64, offset: 320)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4041, file: !77, line: 293, baseType: !4044, size: 64, offset: 384)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4041, file: !77, line: 294, baseType: !4044, size: 64, offset: 448)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4041, file: !77, line: 295, baseType: !4044, size: 64, offset: 512)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4041, file: !77, line: 296, baseType: !4044, size: 64, offset: 576)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4041, file: !77, line: 297, baseType: !4044, size: 64, offset: 640)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4041, file: !77, line: 298, baseType: !4044, size: 64, offset: 704)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4041, file: !77, line: 299, baseType: !4044, size: 64, offset: 768)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4041, file: !77, line: 300, baseType: !4044, size: 64, offset: 832)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4041, file: !77, line: 301, baseType: !4044, size: 64, offset: 896)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4041, file: !77, line: 302, baseType: !4044, size: 64, offset: 960)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4041, file: !77, line: 303, baseType: !4044, size: 64, offset: 1024)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4041, file: !77, line: 304, baseType: !4044, size: 64, offset: 1088)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4041, file: !77, line: 305, baseType: !4044, size: 64, offset: 1152)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4041, file: !77, line: 306, baseType: !4044, size: 64, offset: 1216)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4041, file: !77, line: 307, baseType: !4044, size: 64, offset: 1280)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4041, file: !77, line: 308, baseType: !4044, size: 64, offset: 1344)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4041, file: !77, line: 309, baseType: !4044, size: 64, offset: 1408)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4007, file: !70, line: 714, baseType: !4070, size: 64, offset: 768)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4072)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4073, line: 80, size: 1344, elements: !4074)
!4073 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4074 = !{!4075, !4076, !4077, !4078, !4079, !4080, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4138}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4072, file: !4073, line: 81, baseType: !147, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4072, file: !4073, line: 82, baseType: !147, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4072, file: !4073, line: 83, baseType: !280, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4072, file: !4073, line: 84, baseType: !280, size: 64, offset: 192)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4072, file: !4073, line: 85, baseType: !280, size: 64, offset: 256)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4072, file: !4073, line: 87, baseType: !4081, size: 64, offset: 320)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!85, !4011, !4084}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4086)
!4086 = !{!4087, !4088, !4089, !4090, !4091, !4092, !4093, !4097, !4101, !4102, !4103, !4104, !4105, !4113, !4114, !4115, !4116, !4117, !4118}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4085, file: !64, line: 97, baseType: !147, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4085, file: !64, line: 98, baseType: !4070, size: 64, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4085, file: !64, line: 100, baseType: !123, size: 64, offset: 128)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4085, file: !64, line: 101, baseType: !147, size: 64, offset: 192)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4085, file: !64, line: 103, baseType: !840, size: 8, offset: 256)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4085, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4085, file: !64, line: 106, baseType: !4094, size: 64, offset: 320)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4096)
!4096 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !64, line: 106, flags: DIFlagFwdDecl)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4085, file: !64, line: 107, baseType: !4098, size: 64, offset: 384)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4100)
!4100 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !64, line: 107, flags: DIFlagFwdDecl)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4085, file: !64, line: 109, baseType: !4044, size: 64, offset: 448)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4085, file: !64, line: 110, baseType: !4035, size: 64, offset: 512)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4085, file: !64, line: 111, baseType: !4044, size: 64, offset: 576)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4085, file: !64, line: 112, baseType: !4035, size: 64, offset: 640)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4085, file: !64, line: 113, baseType: !4106, size: 64, offset: 704)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!85, !4011, !4109}
!4109 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4110)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4111)
!4111 = !{!4112}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4110, file: !77, line: 59, baseType: !85, size: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4085, file: !64, line: 114, baseType: !4044, size: 64, offset: 768)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4085, file: !64, line: 115, baseType: !280, size: 64, offset: 832)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4085, file: !64, line: 116, baseType: !280, size: 64, offset: 896)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4085, file: !64, line: 118, baseType: !4039, size: 64, offset: 960)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4085, file: !64, line: 119, baseType: !4035, size: 64, offset: 1024)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4085, file: !64, line: 121, baseType: !4119, size: 64, offset: 1088)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4072, file: !4073, line: 88, baseType: !4024, size: 64, offset: 384)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4072, file: !4073, line: 89, baseType: !4044, size: 64, offset: 448)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4072, file: !4073, line: 90, baseType: !4035, size: 64, offset: 512)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4072, file: !4073, line: 91, baseType: !4035, size: 64, offset: 576)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4072, file: !4073, line: 92, baseType: !4035, size: 64, offset: 640)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4072, file: !4073, line: 94, baseType: !4044, size: 64, offset: 704)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4072, file: !4073, line: 95, baseType: !4044, size: 64, offset: 768)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4072, file: !4073, line: 97, baseType: !4106, size: 64, offset: 832)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4072, file: !4073, line: 98, baseType: !4044, size: 64, offset: 896)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4072, file: !4073, line: 100, baseType: !4044, size: 64, offset: 960)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4072, file: !4073, line: 102, baseType: !4044, size: 64, offset: 1024)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4072, file: !4073, line: 103, baseType: !4035, size: 64, offset: 1088)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4072, file: !4073, line: 105, baseType: !4039, size: 64, offset: 1152)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4072, file: !4073, line: 107, baseType: !4135, size: 64, offset: 1216)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4137)
!4137 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4073, line: 107, flags: DIFlagFwdDecl)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4072, file: !4073, line: 109, baseType: !840, size: 8, offset: 1280)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4007, file: !70, line: 715, baseType: !4084, size: 64, offset: 832)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4007, file: !70, line: 717, baseType: !300, size: 64, offset: 896)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4007, file: !70, line: 719, baseType: !300, size: 64, offset: 960)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4007, file: !70, line: 721, baseType: !593, size: 256, offset: 1024)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4007, file: !70, line: 725, baseType: !4144, size: 448, offset: 1280)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4145)
!4145 = !{!4146, !4147, !4148, !4149}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4144, file: !70, line: 518, baseType: !128, size: 128)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4144, file: !70, line: 519, baseType: !128, size: 128, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4144, file: !70, line: 520, baseType: !128, size: 128, offset: 256)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4144, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4007, file: !70, line: 726, baseType: !4151, size: 2496, offset: 1728)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4152)
!4152 = !{!4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4235, !4239}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4151, file: !77, line: 664, baseType: !4109, size: 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4151, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4151, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4151, file: !77, line: 667, baseType: !840, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4151, file: !77, line: 668, baseType: !840, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4151, file: !77, line: 669, baseType: !840, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4151, file: !77, line: 670, baseType: !840, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4151, file: !77, line: 671, baseType: !840, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4151, file: !77, line: 672, baseType: !840, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4151, file: !77, line: 673, baseType: !840, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4151, file: !77, line: 674, baseType: !840, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4151, file: !77, line: 675, baseType: !378, size: 32, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4151, file: !77, line: 676, baseType: !158, size: 32, offset: 96)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4151, file: !77, line: 678, baseType: !128, size: 128, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4151, file: !77, line: 679, baseType: !2113, size: 256, offset: 256)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4151, file: !77, line: 680, baseType: !4169, size: 64, offset: 512)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4171, line: 43, size: 1536, elements: !4172)
!4171 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4172 = !{!4173, !4174, !4175, !4176, !4177, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4170, file: !4171, line: 44, baseType: !147, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4170, file: !4171, line: 45, baseType: !85, size: 32, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4170, file: !4171, line: 46, baseType: !128, size: 128, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4170, file: !4171, line: 47, baseType: !158, size: 32, offset: 256)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4170, file: !4171, line: 48, baseType: !4178, size: 64, offset: 320)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4170, file: !4171, line: 49, baseType: !2753, size: 320, offset: 384)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4170, file: !4171, line: 50, baseType: !278, size: 64, offset: 704)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4170, file: !4171, line: 51, baseType: !1842, size: 64, offset: 768)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4170, file: !4171, line: 52, baseType: !1842, size: 64, offset: 832)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4170, file: !4171, line: 53, baseType: !1842, size: 64, offset: 896)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4170, file: !4171, line: 54, baseType: !1842, size: 64, offset: 960)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4170, file: !4171, line: 55, baseType: !1842, size: 64, offset: 1024)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4170, file: !4171, line: 56, baseType: !278, size: 64, offset: 1088)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4170, file: !4171, line: 57, baseType: !278, size: 64, offset: 1152)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4170, file: !4171, line: 58, baseType: !278, size: 64, offset: 1216)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4170, file: !4171, line: 59, baseType: !278, size: 64, offset: 1280)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4170, file: !4171, line: 60, baseType: !278, size: 64, offset: 1344)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4170, file: !4171, line: 61, baseType: !4011, size: 64, offset: 1408)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4170, file: !4171, line: 62, baseType: !840, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4170, file: !4171, line: 63, baseType: !840, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4151, file: !77, line: 681, baseType: !840, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4151, file: !77, line: 682, baseType: !840, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4151, file: !77, line: 683, baseType: !840, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4151, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4151, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4151, file: !77, line: 690, baseType: !1834, size: 512, offset: 640)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4151, file: !77, line: 691, baseType: !382, size: 64, offset: 1152)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4151, file: !77, line: 692, baseType: !1276, size: 256, offset: 1216)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4151, file: !77, line: 693, baseType: !709, size: 192, offset: 1472)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4151, file: !77, line: 694, baseType: !4178, size: 64, offset: 1664)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4151, file: !77, line: 695, baseType: !178, size: 32, offset: 1728)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4151, file: !77, line: 696, baseType: !178, size: 32, offset: 1760)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4151, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4151, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4151, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4151, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4151, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4151, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4151, file: !77, line: 703, baseType: !840, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4151, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4151, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4151, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4151, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4151, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4151, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4151, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4151, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4151, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4151, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4151, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4151, file: !77, line: 715, baseType: !382, size: 64, offset: 2048)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4151, file: !77, line: 716, baseType: !382, size: 64, offset: 2112)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4151, file: !77, line: 717, baseType: !382, size: 64, offset: 2176)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4151, file: !77, line: 718, baseType: !382, size: 64, offset: 2240)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4151, file: !77, line: 720, baseType: !4230, size: 64, offset: 2304)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4232)
!4232 = !{!4233, !4234}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4231, file: !77, line: 633, baseType: !158, size: 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4231, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4151, file: !77, line: 721, baseType: !4236, size: 64, offset: 2368)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{null, !4011, !766}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4151, file: !77, line: 722, baseType: !4240, size: 64, offset: 2432)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4007, file: !70, line: 727, baseType: !4243, size: 64, offset: 4224)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4245)
!4245 = !{!4246, !4247, !4248, !4252, !4253, !4254}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4244, file: !77, line: 743, baseType: !4041, size: 1472)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4244, file: !77, line: 744, baseType: !4044, size: 64, offset: 1472)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4244, file: !77, line: 745, baseType: !4249, size: 64, offset: 1536)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{null, !4011, !840}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4244, file: !77, line: 746, baseType: !4044, size: 64, offset: 1600)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4244, file: !77, line: 747, baseType: !4035, size: 64, offset: 1664)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4244, file: !77, line: 748, baseType: !4035, size: 64, offset: 1728)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4007, file: !70, line: 736, baseType: !4256, size: 128, offset: 4288)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4257)
!4257 = !{!4258, !4262}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4256, file: !70, line: 531, baseType: !4259, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4261, line: 13, flags: DIFlagFwdDecl)
!4261 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4256, file: !70, line: 532, baseType: !4263, size: 64, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4007, file: !70, line: 738, baseType: !4266, size: 64, offset: 4416)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4268)
!4268 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4007, file: !70, line: 740, baseType: !4270, size: 64, offset: 4480)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4007, file: !70, line: 741, baseType: !382, size: 64, offset: 4544)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4007, file: !70, line: 746, baseType: !382, size: 64, offset: 4608)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4007, file: !70, line: 747, baseType: !4274, size: 64, offset: 4672)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4276)
!4276 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4007, file: !70, line: 749, baseType: !4278, size: 64, offset: 4736)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4280)
!4280 = !{!4281, !4282, !4283}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4279, file: !70, line: 433, baseType: !7, size: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4279, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4279, file: !70, line: 435, baseType: !278, size: 64, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4007, file: !70, line: 751, baseType: !128, size: 128, offset: 4800)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4007, file: !70, line: 762, baseType: !4286, size: 64, offset: 4928)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4007, file: !70, line: 770, baseType: !4289, offset: 4992)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4290, line: 5, elements: !512)
!4290 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4007, file: !70, line: 772, baseType: !4292, size: 64, offset: 4992)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4294, line: 18, flags: DIFlagFwdDecl)
!4294 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4007, file: !70, line: 773, baseType: !4296, size: 64, offset: 5056)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4073, line: 22, flags: DIFlagFwdDecl)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4007, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4007, file: !70, line: 778, baseType: !465, size: 32, offset: 5152)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4007, file: !70, line: 779, baseType: !378, size: 32, offset: 5184)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4007, file: !70, line: 781, baseType: !158, size: 32, offset: 5216)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4007, file: !70, line: 782, baseType: !128, size: 128, offset: 5248)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4007, file: !70, line: 784, baseType: !4304, size: 64, offset: 5376)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4306)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4307, line: 52, size: 768, elements: !4308)
!4307 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4317, !4321, !4322, !4323, !4324, !4328, !4332}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4306, file: !4307, line: 53, baseType: !147, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4306, file: !4307, line: 55, baseType: !280, size: 64, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4306, file: !4307, line: 56, baseType: !280, size: 64, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4306, file: !4307, line: 58, baseType: !4024, size: 64, offset: 192)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4306, file: !4307, line: 59, baseType: !4314, size: 64, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!228, !4027, !4033}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4306, file: !4307, line: 61, baseType: !4318, size: 64, offset: 320)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{null, !4304}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4306, file: !4307, line: 62, baseType: !4035, size: 64, offset: 384)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4306, file: !4307, line: 64, baseType: !4044, size: 64, offset: 448)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4306, file: !4307, line: 66, baseType: !3528, size: 64, offset: 512)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4306, file: !4307, line: 67, baseType: !4325, size: 64, offset: 576)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!1237, !4027}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4306, file: !4307, line: 69, baseType: !4329, size: 64, offset: 640)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{null, !4027, !3561, !3562}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4306, file: !4307, line: 71, baseType: !4039, size: 64, offset: 704)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4007, file: !70, line: 785, baseType: !280, size: 64, offset: 5440)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4007, file: !70, line: 787, baseType: !4035, size: 64, offset: 5504)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4007, file: !70, line: 788, baseType: !4336, size: 64, offset: 5568)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4007, file: !70, line: 789, baseType: !4339, size: 64, offset: 5632)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4007, file: !70, line: 791, baseType: !4342, size: 64, offset: 5696)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4344)
!4344 = !{!4345, !4346, !4347, !4348, !4349}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4343, file: !70, line: 598, baseType: !92, size: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4343, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4343, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4343, file: !70, line: 601, baseType: !840, size: 8, offset: 96)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4343, file: !70, line: 602, baseType: !840, size: 8, offset: 104)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4007, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4007, file: !70, line: 795, baseType: !840, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4007, file: !70, line: 796, baseType: !840, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4007, file: !70, line: 797, baseType: !840, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4007, file: !70, line: 798, baseType: !840, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4007, file: !70, line: 799, baseType: !840, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4003, file: !4004, line: 89, baseType: !123, size: 64, offset: 5824)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4003, file: !4004, line: 91, baseType: !85, size: 32, offset: 5888)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4003, file: !4004, line: 93, baseType: !4359, size: 64, offset: 5952)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4361)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_class_ops", file: !4004, line: 59, size: 704, elements: !4362)
!4362 = !{!4363, !4367, !4384, !4385, !4395, !4396, !4400, !4404, !4409, !4413, !4429}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4361, file: !4004, line: 60, baseType: !4364, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!85, !4011, !7, !278}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "read_time", scope: !4361, file: !4004, line: 61, baseType: !4368, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!85, !4011, !4371}
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_time", file: !4373, line: 25, size: 288, elements: !4374)
!4373 = !DIFile(filename: "./include/uapi/linux/rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80f54d46d0d21ef6b644244083c34d9c")
!4374 = !{!4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !4372, file: !4373, line: 26, baseType: !85, size: 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !4372, file: !4373, line: 27, baseType: !85, size: 32, offset: 32)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !4372, file: !4373, line: 28, baseType: !85, size: 32, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !4372, file: !4373, line: 29, baseType: !85, size: 32, offset: 96)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !4372, file: !4373, line: 30, baseType: !85, size: 32, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !4372, file: !4373, line: 31, baseType: !85, size: 32, offset: 160)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !4372, file: !4373, line: 32, baseType: !85, size: 32, offset: 192)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !4372, file: !4373, line: 33, baseType: !85, size: 32, offset: 224)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !4372, file: !4373, line: 34, baseType: !85, size: 32, offset: 256)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !4361, file: !4004, line: 62, baseType: !4368, size: 64, offset: 128)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "read_alarm", scope: !4361, file: !4004, line: 63, baseType: !4386, size: 64, offset: 192)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!85, !4011, !4389}
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_wkalrm", file: !4373, line: 41, size: 320, elements: !4391)
!4391 = !{!4392, !4393, !4394}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4390, file: !4373, line: 42, baseType: !190, size: 8)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !4390, file: !4373, line: 43, baseType: !190, size: 8, offset: 8)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4390, file: !4373, line: 44, baseType: !4372, size: 288, offset: 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "set_alarm", scope: !4361, file: !4004, line: 64, baseType: !4386, size: 64, offset: 256)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !4361, file: !4004, line: 65, baseType: !4397, size: 64, offset: 320)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!85, !4011, !581}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "alarm_irq_enable", scope: !4361, file: !4004, line: 66, baseType: !4401, size: 64, offset: 384)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!85, !4011, !7}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "read_offset", scope: !4361, file: !4004, line: 67, baseType: !4405, size: 64, offset: 448)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!85, !4011, !4408}
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "set_offset", scope: !4361, file: !4004, line: 68, baseType: !4410, size: 64, offset: 512)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!85, !4011, !264}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "param_get", scope: !4361, file: !4004, line: 69, baseType: !4414, size: 64, offset: 576)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!85, !4011, !4417}
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_param", file: !4373, line: 70, size: 192, elements: !4419)
!4419 = !{!4420, !4421, !4427, !4428}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4418, file: !4373, line: 71, baseType: !383, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, scope: !4418, file: !4373, line: 72, baseType: !4422, size: 64, offset: 64)
!4422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4418, file: !4373, line: 72, size: 64, elements: !4423)
!4423 = !{!4424, !4425, !4426}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4422, file: !4373, line: 73, baseType: !383, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4422, file: !4373, line: 74, baseType: !604, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4422, file: !4373, line: 75, baseType: !383, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4418, file: !4373, line: 77, baseType: !379, size: 32, offset: 128)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "__pad", scope: !4418, file: !4373, line: 78, baseType: !379, size: 32, offset: 160)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "param_set", scope: !4361, file: !4004, line: 70, baseType: !4414, size: 64, offset: 640)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !4003, file: !4004, line: 94, baseType: !593, size: 256, offset: 6016)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "char_dev", scope: !4003, file: !4004, line: 96, baseType: !3330, size: 832, offset: 6272)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4003, file: !4004, line: 97, baseType: !278, size: 64, offset: 7104)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !4003, file: !4004, line: 99, baseType: !278, size: 64, offset: 7168)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "irq_lock", scope: !4003, file: !4004, line: 100, baseType: !158, size: 32, offset: 7232)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "irq_queue", scope: !4003, file: !4004, line: 101, baseType: !709, size: 192, offset: 7296)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !4003, file: !4004, line: 102, baseType: !4437, size: 64, offset: 7488)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !4439)
!4439 = !{!4440, !4441, !4442, !4443, !4444, !4445}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4438, file: !14, line: 1084, baseType: !671, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4438, file: !14, line: 1085, baseType: !85, size: 32, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4438, file: !14, line: 1086, baseType: !85, size: 32, offset: 96)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4438, file: !14, line: 1087, baseType: !4437, size: 64, offset: 128)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4438, file: !14, line: 1088, baseType: !968, size: 64, offset: 192)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4438, file: !14, line: 1089, baseType: !651, size: 128, align: 64, offset: 256)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "irq_freq", scope: !4003, file: !4004, line: 104, baseType: !85, size: 32, offset: 7552)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_freq", scope: !4003, file: !4004, line: 105, baseType: !85, size: 32, offset: 7584)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "timerqueue", scope: !4003, file: !4004, line: 107, baseType: !1890, size: 128, offset: 7616)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "aie_timer", scope: !4003, file: !4004, line: 108, baseType: !4450, size: 512, offset: 7744)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_timer", file: !4004, line: 75, size: 512, elements: !4451)
!4451 = !{!4452, !4453, !4454, !4458, !4459}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4450, file: !4004, line: 76, baseType: !1837, size: 256)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4450, file: !4004, line: 77, baseType: !1842, size: 64, offset: 256)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4450, file: !4004, line: 78, baseType: !4455, size: 64, offset: 320)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{null, !4002}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "rtc", scope: !4450, file: !4004, line: 79, baseType: !4002, size: 64, offset: 384)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4450, file: !4004, line: 80, baseType: !85, size: 32, offset: 448)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "uie_rtctimer", scope: !4003, file: !4004, line: 109, baseType: !4450, size: 512, offset: 8256)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "pie_timer", scope: !4003, file: !4004, line: 110, baseType: !1834, size: 512, offset: 8768)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "pie_enabled", scope: !4003, file: !4004, line: 111, baseType: !85, size: 32, offset: 9280)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "irqwork", scope: !4003, file: !4004, line: 112, baseType: !1276, size: 256, offset: 9344)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "set_offset_nsec", scope: !4003, file: !4004, line: 143, baseType: !278, size: 64, offset: 9600)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !4003, file: !4004, line: 145, baseType: !1961, size: 64, offset: 9664)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !4003, file: !4004, line: 147, baseType: !797, size: 64, offset: 9728)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !4003, file: !4004, line: 148, baseType: !4468, size: 64, offset: 9792)
!4468 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeu64_t", file: !798, line: 9, baseType: !383)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "alarm_offset_max", scope: !4003, file: !4004, line: 149, baseType: !4468, size: 64, offset: 9856)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "start_secs", scope: !4003, file: !4004, line: 150, baseType: !797, size: 64, offset: 9920)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "offset_secs", scope: !4003, file: !4004, line: 151, baseType: !797, size: 64, offset: 9984)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "set_start_time", scope: !4003, file: !4004, line: 152, baseType: !840, size: 8, offset: 10048)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !264)
!4477 = !{!4478, !4481, !0, !4486, !4488}
!4478 = !DIGlobalVariableExpression(var: !4479, expr: !DIExpression())
!4479 = distinct !DIGlobalVariable(scope: null, file: !3, line: 565, type: !4480, isLocal: true, isDefinition: true)
!4480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32, elements: !705)
!4481 = !DIGlobalVariableExpression(var: !4482, expr: !DIExpression())
!4482 = distinct !DIGlobalVariable(scope: null, file: !3, line: 567, type: !4483, isLocal: true, isDefinition: true)
!4483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 384, elements: !4484)
!4484 = !{!4485}
!4485 = !DISubrange(count: 48)
!4486 = !DIGlobalVariableExpression(var: !4487, expr: !DIExpression())
!4487 = distinct !DIGlobalVariable(name: "rtc_dev_fops", scope: !2, file: !3, line: 524, type: !960, isLocal: true, isDefinition: true)
!4488 = !DIGlobalVariableExpression(var: !4489, expr: !DIExpression())
!4489 = distinct !DIGlobalVariable(scope: null, file: !4490, line: 249, type: !4491, isLocal: true, isDefinition: true)
!4490 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 224, elements: !4492)
!4492 = !{!4493}
!4493 = !DISubrange(count: 28)
!4494 = !{!"rsp"}
!4495 = !{i32 7, !"Dwarf Version", i32 5}
!4496 = !{i32 2, !"Debug Info Version", i32 3}
!4497 = !{i32 1, !"wchar_size", i32 2}
!4498 = !{i32 8, !"cf-protection-branch", i32 1}
!4499 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4500 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4501 = !{i32 1, !"Code Model", i32 2}
!4502 = !{i32 1, !"override-stack-alignment", i32 8}
!4503 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4504 = distinct !DISubprogram(name: "rtc_dev_prepare", scope: !3, file: !3, line: 540, type: !4456, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4505)
!4505 = !{!4506}
!4506 = !DILocalVariable(name: "rtc", arg: 1, scope: !4504, file: !3, line: 540, type: !4002)
!4507 = !DILocation(line: 540, column: 41, scope: !4504)
!4508 = !DILocation(line: 542, column: 7, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 542, column: 6)
!4510 = !DILocation(line: 542, column: 6, scope: !4504)
!4511 = !DILocation(line: 543, column: 3, scope: !4509)
!4512 = !DILocation(line: 545, column: 6, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 545, column: 6)
!4514 = !DILocation(line: 545, column: 11, scope: !4513)
!4515 = !DILocation(line: 545, column: 14, scope: !4513)
!4516 = !DILocation(line: 545, column: 6, scope: !4504)
!4517 = !DILocation(line: 547, column: 3, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 545, column: 30)
!4519 = !DILocation(line: 550, column: 18, scope: !4504)
!4520 = !DILocation(line: 550, column: 2, scope: !4504)
!4521 = !DILocation(line: 550, column: 7, scope: !4504)
!4522 = !DILocation(line: 550, column: 11, scope: !4504)
!4523 = !DILocation(line: 550, column: 16, scope: !4504)
!4524 = !DILocation(line: 557, column: 13, scope: !4504)
!4525 = !DILocation(line: 557, column: 18, scope: !4504)
!4526 = !DILocation(line: 557, column: 2, scope: !4504)
!4527 = !DILocation(line: 558, column: 24, scope: !4504)
!4528 = !DILocation(line: 558, column: 29, scope: !4504)
!4529 = !DILocation(line: 558, column: 2, scope: !4504)
!4530 = !DILocation(line: 558, column: 7, scope: !4504)
!4531 = !DILocation(line: 558, column: 16, scope: !4504)
!4532 = !DILocation(line: 558, column: 22, scope: !4504)
!4533 = !DILocation(line: 559, column: 1, scope: !4504)
!4534 = !DISubprogram(name: "cdev_init", scope: !3331, file: !3331, line: 23, type: !4535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{null, !3329, !959}
!4537 = distinct !DISubprogram(name: "rtc_dev_init", scope: !3, file: !3, line: 561, type: !2360, scopeLine: 562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4538)
!4538 = !{!4539}
!4539 = !DILocalVariable(name: "err", scope: !4537, file: !3, line: 563, type: !85)
!4540 = !DILocation(line: 563, column: 2, scope: !4537)
!4541 = !DILocation(line: 563, column: 6, scope: !4537)
!4542 = !DILocation(line: 565, column: 8, scope: !4537)
!4543 = !DILocation(line: 565, column: 6, scope: !4537)
!4544 = !DILocation(line: 566, column: 6, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 566, column: 6)
!4546 = !DILocation(line: 566, column: 10, scope: !4545)
!4547 = !DILocation(line: 566, column: 6, scope: !4537)
!4548 = !DILocation(line: 567, column: 3, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 567, column: 3)
!4550 = !DILocation(line: 567, column: 3, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 567, column: 3)
!4552 = !DILocation(line: 567, column: 3, scope: !4545)
!4553 = !DILocation(line: 568, column: 1, scope: !4537)
!4554 = !DISubprogram(name: "alloc_chrdev_region", scope: !14, file: !14, line: 2592, type: !4555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!85, !4557, !7, !7, !147}
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!4558 = !DISubprogram(name: "_printk", scope: !4559, file: !4559, line: 153, type: !4560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4559 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!85, !147, null}
!4562 = distinct !DISubprogram(name: "rtc_dev_read", scope: !3, file: !3, line: 142, type: !971, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4563)
!4563 = !{!4564, !4565, !4566, !4567, !4568, !4569, !4581, !4582, !4583, !4588, !4590, !4596, !4597, !4598, !4599, !4600, !4603, !4604, !4605, !4606}
!4564 = !DILocalVariable(name: "file", arg: 1, scope: !4562, file: !3, line: 142, type: !968)
!4565 = !DILocalVariable(name: "buf", arg: 2, scope: !4562, file: !3, line: 142, type: !228)
!4566 = !DILocalVariable(name: "count", arg: 3, scope: !4562, file: !3, line: 142, type: !275)
!4567 = !DILocalVariable(name: "ppos", arg: 4, scope: !4562, file: !3, line: 142, type: !622)
!4568 = !DILocalVariable(name: "rtc", scope: !4562, file: !3, line: 144, type: !4002)
!4569 = !DILocalVariable(name: "wait", scope: !4562, file: !3, line: 146, type: !4570)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !710, line: 30, size: 320, elements: !4571)
!4571 = !{!4572, !4573, !4574, !4580}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4570, file: !710, line: 31, baseType: !7, size: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4570, file: !710, line: 32, baseType: !300, size: 64, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4570, file: !710, line: 33, baseType: !4575, size: 64, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !710, line: 16, baseType: !4576)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!85, !4579, !7, !85, !300}
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4570, file: !710, line: 34, baseType: !128, size: 128, offset: 192)
!4581 = !DILocalVariable(name: "data", scope: !4562, file: !3, line: 147, type: !278)
!4582 = !DILocalVariable(name: "ret", scope: !4562, file: !3, line: 148, type: !260)
!4583 = !DILocalVariable(name: "__ai_ptr", scope: !4584, file: !3, line: 176, type: !1717)
!4584 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 176, column: 2)
!4585 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 176, column: 2)
!4586 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 176, column: 2)
!4587 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 176, column: 2)
!4588 = !DILocalVariable(name: "__ret", scope: !4589, file: !3, line: 176, type: !7)
!4589 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 176, column: 2)
!4590 = !DILocalVariable(name: "__ret_pu", scope: !4591, file: !3, line: 182, type: !85)
!4591 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 182, column: 10)
!4592 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 182, column: 10)
!4593 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 180, column: 7)
!4594 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 179, column: 16)
!4595 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 179, column: 6)
!4596 = !DILocalVariable(name: "__ptr_pu", scope: !4591, file: !3, line: 182, type: !300)
!4597 = !DILocalVariable(name: "__val_pu", scope: !4591, file: !3, line: 182, type: !7)
!4598 = !DILocalVariable(name: "__x", scope: !4591, file: !3, line: 182, type: !7)
!4599 = !DILocalVariable(name: "__ptr", scope: !4591, file: !3, line: 182, type: !1717)
!4600 = !DILocalVariable(name: "__ret_pu", scope: !4601, file: !3, line: 185, type: !85)
!4601 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 185, column: 10)
!4602 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 185, column: 10)
!4603 = !DILocalVariable(name: "__ptr_pu", scope: !4601, file: !3, line: 185, type: !300)
!4604 = !DILocalVariable(name: "__val_pu", scope: !4601, file: !3, line: 185, type: !278)
!4605 = !DILocalVariable(name: "__x", scope: !4601, file: !3, line: 185, type: !278)
!4606 = !DILocalVariable(name: "__ptr", scope: !4601, file: !3, line: 185, type: !3980)
!4607 = !DILocation(line: 142, column: 27, scope: !4562)
!4608 = !DILocation(line: 142, column: 46, scope: !4562)
!4609 = !DILocation(line: 142, column: 58, scope: !4562)
!4610 = !DILocation(line: 142, column: 73, scope: !4562)
!4611 = !DILocation(line: 144, column: 2, scope: !4562)
!4612 = !DILocation(line: 144, column: 21, scope: !4562)
!4613 = !DILocation(line: 144, column: 27, scope: !4562)
!4614 = !DILocation(line: 144, column: 33, scope: !4562)
!4615 = !DILocation(line: 146, column: 2, scope: !4562)
!4616 = !DILocation(line: 147, column: 2, scope: !4562)
!4617 = !DILocation(line: 147, column: 16, scope: !4562)
!4618 = !DILocation(line: 148, column: 2, scope: !4562)
!4619 = !DILocation(line: 148, column: 10, scope: !4562)
!4620 = !DILocation(line: 150, column: 6, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 150, column: 6)
!4622 = !DILocation(line: 150, column: 12, scope: !4621)
!4623 = !DILocation(line: 150, column: 36, scope: !4621)
!4624 = !DILocation(line: 150, column: 39, scope: !4621)
!4625 = !DILocation(line: 150, column: 45, scope: !4621)
!4626 = !DILocation(line: 150, column: 6, scope: !4562)
!4627 = !DILocation(line: 151, column: 3, scope: !4621)
!4628 = !DILocation(line: 153, column: 18, scope: !4562)
!4629 = !DILocation(line: 153, column: 23, scope: !4562)
!4630 = !DILocation(line: 153, column: 2, scope: !4562)
!4631 = !DILocation(line: 154, column: 2, scope: !4562)
!4632 = !DILocation(line: 155, column: 3, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 154, column: 5)
!4634 = !DILocation(line: 155, column: 3, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 155, column: 3)
!4636 = !DILocation(line: 155, column: 3, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 155, column: 3)
!4638 = !DILocation(line: 155, column: 3, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 155, column: 3)
!4640 = !DILocation(line: 155, column: 3, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 155, column: 3)
!4642 = !DILocation(line: 155, column: 3, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 155, column: 3)
!4644 = !DILocation(line: 157, column: 18, scope: !4633)
!4645 = !DILocation(line: 157, column: 23, scope: !4633)
!4646 = !DILocation(line: 157, column: 3, scope: !4633)
!4647 = !DILocation(line: 158, column: 10, scope: !4633)
!4648 = !DILocation(line: 158, column: 15, scope: !4633)
!4649 = !DILocation(line: 158, column: 8, scope: !4633)
!4650 = !DILocation(line: 159, column: 3, scope: !4633)
!4651 = !DILocation(line: 159, column: 8, scope: !4633)
!4652 = !DILocation(line: 159, column: 17, scope: !4633)
!4653 = !DILocation(line: 160, column: 20, scope: !4633)
!4654 = !DILocation(line: 160, column: 25, scope: !4633)
!4655 = !DILocation(line: 160, column: 3, scope: !4633)
!4656 = !DILocation(line: 162, column: 7, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 162, column: 7)
!4658 = !DILocation(line: 162, column: 12, scope: !4657)
!4659 = !DILocation(line: 162, column: 7, scope: !4633)
!4660 = !DILocation(line: 163, column: 8, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 162, column: 18)
!4662 = !DILocation(line: 164, column: 4, scope: !4661)
!4663 = !DILocation(line: 166, column: 7, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 166, column: 7)
!4665 = !DILocation(line: 166, column: 13, scope: !4664)
!4666 = !DILocation(line: 166, column: 21, scope: !4664)
!4667 = !DILocation(line: 166, column: 7, scope: !4633)
!4668 = !DILocation(line: 167, column: 8, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 166, column: 35)
!4670 = !DILocation(line: 168, column: 4, scope: !4669)
!4671 = !DILocation(line: 170, column: 22, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 170, column: 7)
!4673 = !DILocation(line: 170, column: 7, scope: !4672)
!4674 = !DILocation(line: 170, column: 7, scope: !4633)
!4675 = !DILocation(line: 171, column: 8, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 170, column: 32)
!4677 = !DILocation(line: 172, column: 4, scope: !4676)
!4678 = !DILocation(line: 174, column: 3, scope: !4633)
!4679 = !DILocation(line: 175, column: 2, scope: !4633)
!4680 = distinct !{!4680, !4631, !4681, !4682}
!4681 = !DILocation(line: 175, column: 12, scope: !4562)
!4682 = !{!"llvm.loop.unroll.disable"}
!4683 = !DILocation(line: 176, column: 2, scope: !4562)
!4684 = !DILocation(line: 176, column: 2, scope: !4587)
!4685 = !DILocation(line: 176, column: 2, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 176, column: 2)
!4687 = !DILocation(line: 176, column: 2, scope: !4586)
!4688 = !DILocation(line: 176, column: 2, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 176, column: 2)
!4690 = !DILocation(line: 176, column: 2, scope: !4584)
!4691 = !DILocation(line: 176, column: 2, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 176, column: 2)
!4693 = !DILocation(line: 176, column: 2, scope: !4589)
!4694 = !{i64 2154279105}
!4695 = !DILocation(line: 176, column: 2, scope: !4585)
!4696 = !DILocation(line: 177, column: 21, scope: !4562)
!4697 = !DILocation(line: 177, column: 26, scope: !4562)
!4698 = !DILocation(line: 177, column: 2, scope: !4562)
!4699 = !DILocation(line: 179, column: 6, scope: !4595)
!4700 = !DILocation(line: 179, column: 10, scope: !4595)
!4701 = !DILocation(line: 179, column: 6, scope: !4562)
!4702 = !DILocation(line: 181, column: 7, scope: !4593)
!4703 = !DILocation(line: 181, column: 13, scope: !4593)
!4704 = !DILocation(line: 180, column: 7, scope: !4594)
!4705 = !DILocation(line: 182, column: 10, scope: !4592)
!4706 = !DILocation(line: 182, column: 10, scope: !4591)
!4707 = !{i64 2154279619}
!4708 = !DILocation(line: 182, column: 10, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 182, column: 10)
!4710 = !DILocation(line: 182, column: 10, scope: !4593)
!4711 = !DILocation(line: 182, column: 8, scope: !4593)
!4712 = !DILocation(line: 182, column: 4, scope: !4593)
!4713 = !DILocation(line: 185, column: 10, scope: !4602)
!4714 = !DILocation(line: 185, column: 10, scope: !4601)
!4715 = !{i64 2154280828}
!4716 = !DILocation(line: 185, column: 10, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 185, column: 10)
!4718 = !DILocation(line: 185, column: 10, scope: !4593)
!4719 = !DILocation(line: 185, column: 8, scope: !4593)
!4720 = !DILocation(line: 187, column: 2, scope: !4594)
!4721 = !DILocation(line: 188, column: 9, scope: !4562)
!4722 = !DILocation(line: 188, column: 2, scope: !4562)
!4723 = !DILocation(line: 189, column: 1, scope: !4562)
!4724 = distinct !DISubprogram(name: "rtc_dev_poll", scope: !3, file: !3, line: 191, type: !4725, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4729)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!1086, !968, !4727}
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1090, line: 40, baseType: !1089)
!4729 = !{!4730, !4731, !4732, !4733}
!4730 = !DILocalVariable(name: "file", arg: 1, scope: !4724, file: !3, line: 191, type: !968)
!4731 = !DILocalVariable(name: "wait", arg: 2, scope: !4724, file: !3, line: 191, type: !4727)
!4732 = !DILocalVariable(name: "rtc", scope: !4724, file: !3, line: 193, type: !4002)
!4733 = !DILocalVariable(name: "data", scope: !4724, file: !3, line: 194, type: !278)
!4734 = !DILocation(line: 191, column: 43, scope: !4724)
!4735 = !DILocation(line: 191, column: 61, scope: !4724)
!4736 = !DILocation(line: 193, column: 2, scope: !4724)
!4737 = !DILocation(line: 193, column: 21, scope: !4724)
!4738 = !DILocation(line: 193, column: 27, scope: !4724)
!4739 = !DILocation(line: 193, column: 33, scope: !4724)
!4740 = !DILocation(line: 194, column: 2, scope: !4724)
!4741 = !DILocation(line: 194, column: 16, scope: !4724)
!4742 = !DILocation(line: 196, column: 12, scope: !4724)
!4743 = !DILocation(line: 196, column: 19, scope: !4724)
!4744 = !DILocation(line: 196, column: 24, scope: !4724)
!4745 = !DILocation(line: 196, column: 35, scope: !4724)
!4746 = !DILocation(line: 196, column: 2, scope: !4724)
!4747 = !DILocation(line: 198, column: 9, scope: !4724)
!4748 = !DILocation(line: 198, column: 14, scope: !4724)
!4749 = !DILocation(line: 198, column: 7, scope: !4724)
!4750 = !DILocation(line: 200, column: 10, scope: !4724)
!4751 = !DILocation(line: 200, column: 15, scope: !4724)
!4752 = !DILocation(line: 200, column: 9, scope: !4724)
!4753 = !DILocation(line: 201, column: 1, scope: !4724)
!4754 = !DILocation(line: 200, column: 2, scope: !4724)
!4755 = distinct !DISubprogram(name: "rtc_dev_ioctl", scope: !3, file: !3, line: 203, type: !1101, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4756)
!4756 = !{!4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4770, !4771, !4774, !4775, !4776, !4777, !4778, !4781}
!4757 = !DILocalVariable(name: "file", arg: 1, scope: !4755, file: !3, line: 203, type: !968)
!4758 = !DILocalVariable(name: "cmd", arg: 2, scope: !4755, file: !3, line: 204, type: !7)
!4759 = !DILocalVariable(name: "arg", arg: 3, scope: !4755, file: !3, line: 204, type: !278)
!4760 = !DILocalVariable(name: "err", scope: !4755, file: !3, line: 206, type: !85)
!4761 = !DILocalVariable(name: "rtc", scope: !4755, file: !3, line: 207, type: !4002)
!4762 = !DILocalVariable(name: "ops", scope: !4755, file: !3, line: 208, type: !4359)
!4763 = !DILocalVariable(name: "tm", scope: !4755, file: !3, line: 209, type: !4372)
!4764 = !DILocalVariable(name: "alarm", scope: !4755, file: !3, line: 210, type: !4390)
!4765 = !DILocalVariable(name: "param", scope: !4755, file: !3, line: 211, type: !4418)
!4766 = !DILocalVariable(name: "uarg", scope: !4755, file: !3, line: 212, type: !300)
!4767 = !DILocalVariable(name: "now", scope: !4768, file: !3, line: 294, type: !797)
!4768 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 293, column: 3)
!4769 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 256, column: 15)
!4770 = !DILocalVariable(name: "then", scope: !4768, file: !3, line: 294, type: !797)
!4771 = !DILocalVariable(name: "__ret_pu", scope: !4772, file: !3, line: 367, type: !85)
!4772 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 367, column: 9)
!4773 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 367, column: 9)
!4774 = !DILocalVariable(name: "__ptr_pu", scope: !4772, file: !3, line: 367, type: !300)
!4775 = !DILocalVariable(name: "__val_pu", scope: !4772, file: !3, line: 367, type: !278)
!4776 = !DILocalVariable(name: "__x", scope: !4772, file: !3, line: 367, type: !278)
!4777 = !DILocalVariable(name: "__ptr", scope: !4772, file: !3, line: 367, type: !3980)
!4778 = !DILocalVariable(name: "offset", scope: !4779, file: !3, line: 401, type: !264)
!4779 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 400, column: 30)
!4780 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 393, column: 23)
!4781 = !DILabel(scope: !4755, name: "done", file: !3, line: 462)
!4782 = !DILocation(line: 203, column: 40, scope: !4755)
!4783 = !DILocation(line: 204, column: 19, scope: !4755)
!4784 = !DILocation(line: 204, column: 38, scope: !4755)
!4785 = !DILocation(line: 206, column: 2, scope: !4755)
!4786 = !DILocation(line: 206, column: 6, scope: !4755)
!4787 = !DILocation(line: 207, column: 2, scope: !4755)
!4788 = !DILocation(line: 207, column: 21, scope: !4755)
!4789 = !DILocation(line: 207, column: 27, scope: !4755)
!4790 = !DILocation(line: 207, column: 33, scope: !4755)
!4791 = !DILocation(line: 208, column: 2, scope: !4755)
!4792 = !DILocation(line: 208, column: 30, scope: !4755)
!4793 = !DILocation(line: 208, column: 36, scope: !4755)
!4794 = !DILocation(line: 208, column: 41, scope: !4755)
!4795 = !DILocation(line: 209, column: 2, scope: !4755)
!4796 = !DILocation(line: 209, column: 18, scope: !4755)
!4797 = !DILocation(line: 210, column: 2, scope: !4755)
!4798 = !DILocation(line: 210, column: 20, scope: !4755)
!4799 = !DILocation(line: 211, column: 2, scope: !4755)
!4800 = !DILocation(line: 211, column: 19, scope: !4755)
!4801 = !DILocation(line: 212, column: 2, scope: !4755)
!4802 = !DILocation(line: 212, column: 15, scope: !4755)
!4803 = !DILocation(line: 212, column: 37, scope: !4755)
!4804 = !DILocation(line: 212, column: 22, scope: !4755)
!4805 = !DILocation(line: 214, column: 34, scope: !4755)
!4806 = !DILocation(line: 214, column: 39, scope: !4755)
!4807 = !DILocation(line: 214, column: 8, scope: !4755)
!4808 = !DILocation(line: 214, column: 6, scope: !4755)
!4809 = !DILocation(line: 215, column: 6, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 215, column: 6)
!4811 = !DILocation(line: 215, column: 6, scope: !4755)
!4812 = !DILocation(line: 216, column: 10, scope: !4810)
!4813 = !DILocation(line: 216, column: 3, scope: !4810)
!4814 = !DILocation(line: 222, column: 10, scope: !4755)
!4815 = !DILocation(line: 222, column: 2, scope: !4755)
!4816 = !DILocation(line: 226, column: 8, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 226, column: 7)
!4818 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 222, column: 15)
!4819 = !DILocation(line: 226, column: 7, scope: !4818)
!4820 = !DILocation(line: 227, column: 8, scope: !4817)
!4821 = !DILocation(line: 227, column: 4, scope: !4817)
!4822 = !DILocation(line: 228, column: 3, scope: !4818)
!4823 = !DILocation(line: 231, column: 7, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 231, column: 7)
!4825 = !DILocation(line: 231, column: 13, scope: !4824)
!4826 = !DILocation(line: 231, column: 18, scope: !4824)
!4827 = !DILocation(line: 231, column: 11, scope: !4824)
!4828 = !DILocation(line: 231, column: 32, scope: !4824)
!4829 = !DILocation(line: 231, column: 36, scope: !4824)
!4830 = !DILocation(line: 231, column: 7, scope: !4818)
!4831 = !DILocation(line: 232, column: 8, scope: !4824)
!4832 = !DILocation(line: 232, column: 4, scope: !4824)
!4833 = !DILocation(line: 233, column: 3, scope: !4818)
!4834 = !DILocation(line: 236, column: 7, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 236, column: 7)
!4836 = !DILocation(line: 236, column: 12, scope: !4835)
!4837 = !DILocation(line: 236, column: 23, scope: !4835)
!4838 = !DILocation(line: 236, column: 28, scope: !4835)
!4839 = !DILocation(line: 236, column: 21, scope: !4835)
!4840 = !DILocation(line: 236, column: 42, scope: !4835)
!4841 = !DILocation(line: 237, column: 8, scope: !4835)
!4842 = !DILocation(line: 236, column: 7, scope: !4818)
!4843 = !DILocation(line: 238, column: 8, scope: !4835)
!4844 = !DILocation(line: 238, column: 4, scope: !4835)
!4845 = !DILocation(line: 239, column: 3, scope: !4818)
!4846 = !DILocation(line: 242, column: 6, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 242, column: 6)
!4848 = !DILocation(line: 242, column: 6, scope: !4755)
!4849 = !DILocation(line: 243, column: 3, scope: !4847)
!4850 = !DILocation(line: 256, column: 10, scope: !4755)
!4851 = !DILocation(line: 256, column: 2, scope: !4755)
!4852 = !DILocation(line: 258, column: 17, scope: !4769)
!4853 = !DILocation(line: 258, column: 22, scope: !4769)
!4854 = !DILocation(line: 258, column: 3, scope: !4769)
!4855 = !DILocation(line: 260, column: 24, scope: !4769)
!4856 = !DILocation(line: 260, column: 9, scope: !4769)
!4857 = !DILocation(line: 260, column: 7, scope: !4769)
!4858 = !DILocation(line: 261, column: 7, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 261, column: 7)
!4860 = !DILocation(line: 261, column: 11, scope: !4859)
!4861 = !DILocation(line: 261, column: 7, scope: !4769)
!4862 = !DILocation(line: 262, column: 11, scope: !4859)
!4863 = !DILocation(line: 262, column: 4, scope: !4859)
!4864 = !DILocation(line: 264, column: 20, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 264, column: 7)
!4866 = !DILocation(line: 264, column: 33, scope: !4865)
!4867 = !DILocation(line: 264, column: 7, scope: !4865)
!4868 = !DILocation(line: 264, column: 7, scope: !4769)
!4869 = !DILocation(line: 265, column: 8, scope: !4865)
!4870 = !DILocation(line: 265, column: 4, scope: !4865)
!4871 = !DILocation(line: 266, column: 10, scope: !4769)
!4872 = !DILocation(line: 266, column: 3, scope: !4769)
!4873 = !DILocation(line: 269, column: 17, scope: !4769)
!4874 = !DILocation(line: 269, column: 22, scope: !4769)
!4875 = !DILocation(line: 269, column: 3, scope: !4769)
!4876 = !DILocation(line: 271, column: 29, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 271, column: 7)
!4878 = !DILocation(line: 271, column: 35, scope: !4877)
!4879 = !DILocation(line: 271, column: 7, scope: !4877)
!4880 = !DILocation(line: 271, column: 7, scope: !4769)
!4881 = !DILocation(line: 272, column: 4, scope: !4877)
!4882 = !DILocation(line: 274, column: 9, scope: !4769)
!4883 = !DILocation(line: 274, column: 17, scope: !4769)
!4884 = !DILocation(line: 275, column: 9, scope: !4769)
!4885 = !DILocation(line: 275, column: 17, scope: !4769)
!4886 = !DILocation(line: 276, column: 9, scope: !4769)
!4887 = !DILocation(line: 276, column: 14, scope: !4769)
!4888 = !DILocation(line: 276, column: 22, scope: !4769)
!4889 = !DILocation(line: 277, column: 9, scope: !4769)
!4890 = !DILocation(line: 277, column: 14, scope: !4769)
!4891 = !DILocation(line: 277, column: 22, scope: !4769)
!4892 = !DILocation(line: 278, column: 9, scope: !4769)
!4893 = !DILocation(line: 278, column: 14, scope: !4769)
!4894 = !DILocation(line: 278, column: 23, scope: !4769)
!4895 = !DILocation(line: 294, column: 4, scope: !4768)
!4896 = !DILocation(line: 294, column: 13, scope: !4768)
!4897 = !DILocation(line: 294, column: 18, scope: !4768)
!4898 = !DILocation(line: 296, column: 24, scope: !4768)
!4899 = !DILocation(line: 296, column: 10, scope: !4768)
!4900 = !DILocation(line: 296, column: 8, scope: !4768)
!4901 = !DILocation(line: 297, column: 8, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 297, column: 8)
!4903 = !DILocation(line: 297, column: 12, scope: !4902)
!4904 = !DILocation(line: 297, column: 8, scope: !4768)
!4905 = !DILocation(line: 298, column: 12, scope: !4902)
!4906 = !DILocation(line: 298, column: 5, scope: !4902)
!4907 = !DILocation(line: 299, column: 10, scope: !4768)
!4908 = !DILocation(line: 299, column: 8, scope: !4768)
!4909 = !DILocation(line: 301, column: 28, scope: !4768)
!4910 = !DILocation(line: 301, column: 10, scope: !4768)
!4911 = !DILocation(line: 301, column: 15, scope: !4768)
!4912 = !DILocation(line: 301, column: 23, scope: !4768)
!4913 = !DILocation(line: 302, column: 27, scope: !4768)
!4914 = !DILocation(line: 302, column: 10, scope: !4768)
!4915 = !DILocation(line: 302, column: 15, scope: !4768)
!4916 = !DILocation(line: 302, column: 22, scope: !4768)
!4917 = !DILocation(line: 303, column: 28, scope: !4768)
!4918 = !DILocation(line: 303, column: 10, scope: !4768)
!4919 = !DILocation(line: 303, column: 15, scope: !4768)
!4920 = !DILocation(line: 303, column: 23, scope: !4768)
!4921 = !DILocation(line: 304, column: 31, scope: !4768)
!4922 = !DILocation(line: 304, column: 11, scope: !4768)
!4923 = !DILocation(line: 304, column: 9, scope: !4768)
!4924 = !DILocation(line: 305, column: 8, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 305, column: 8)
!4926 = !DILocation(line: 305, column: 12, scope: !4925)
!4927 = !DILocation(line: 305, column: 8, scope: !4768)
!4928 = !DILocation(line: 306, column: 12, scope: !4925)
!4929 = !DILocation(line: 306, column: 5, scope: !4925)
!4930 = !DILocation(line: 307, column: 35, scope: !4768)
!4931 = !DILocation(line: 307, column: 11, scope: !4768)
!4932 = !DILocation(line: 307, column: 9, scope: !4768)
!4933 = !DILocation(line: 310, column: 8, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 310, column: 8)
!4935 = !DILocation(line: 310, column: 15, scope: !4934)
!4936 = !DILocation(line: 310, column: 13, scope: !4934)
!4937 = !DILocation(line: 310, column: 8, scope: !4768)
!4938 = !DILocation(line: 311, column: 22, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 310, column: 20)
!4940 = !DILocation(line: 311, column: 26, scope: !4939)
!4941 = !DILocation(line: 311, column: 5, scope: !4939)
!4942 = !DILocation(line: 312, column: 29, scope: !4939)
!4943 = !DILocation(line: 312, column: 11, scope: !4939)
!4944 = !DILocation(line: 312, column: 16, scope: !4939)
!4945 = !DILocation(line: 312, column: 24, scope: !4939)
!4946 = !DILocation(line: 313, column: 28, scope: !4939)
!4947 = !DILocation(line: 313, column: 11, scope: !4939)
!4948 = !DILocation(line: 313, column: 16, scope: !4939)
!4949 = !DILocation(line: 313, column: 23, scope: !4939)
!4950 = !DILocation(line: 314, column: 29, scope: !4939)
!4951 = !DILocation(line: 314, column: 11, scope: !4939)
!4952 = !DILocation(line: 314, column: 16, scope: !4939)
!4953 = !DILocation(line: 314, column: 24, scope: !4939)
!4954 = !DILocation(line: 315, column: 4, scope: !4939)
!4955 = !DILocation(line: 316, column: 3, scope: !4769)
!4956 = !DILocation(line: 318, column: 24, scope: !4769)
!4957 = !DILocation(line: 318, column: 10, scope: !4769)
!4958 = !DILocation(line: 318, column: 3, scope: !4769)
!4959 = !DILocation(line: 321, column: 17, scope: !4769)
!4960 = !DILocation(line: 321, column: 22, scope: !4769)
!4961 = !DILocation(line: 321, column: 3, scope: !4769)
!4962 = !DILocation(line: 323, column: 23, scope: !4769)
!4963 = !DILocation(line: 323, column: 9, scope: !4769)
!4964 = !DILocation(line: 323, column: 7, scope: !4769)
!4965 = !DILocation(line: 324, column: 7, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 324, column: 7)
!4967 = !DILocation(line: 324, column: 11, scope: !4966)
!4968 = !DILocation(line: 324, column: 7, scope: !4769)
!4969 = !DILocation(line: 325, column: 11, scope: !4966)
!4970 = !DILocation(line: 325, column: 4, scope: !4966)
!4971 = !DILocation(line: 327, column: 20, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 327, column: 7)
!4973 = !DILocation(line: 327, column: 7, scope: !4972)
!4974 = !DILocation(line: 327, column: 7, scope: !4769)
!4975 = !DILocation(line: 328, column: 8, scope: !4972)
!4976 = !DILocation(line: 328, column: 4, scope: !4972)
!4977 = !DILocation(line: 329, column: 10, scope: !4769)
!4978 = !DILocation(line: 329, column: 3, scope: !4769)
!4979 = !DILocation(line: 332, column: 17, scope: !4769)
!4980 = !DILocation(line: 332, column: 22, scope: !4769)
!4981 = !DILocation(line: 332, column: 3, scope: !4769)
!4982 = !DILocation(line: 334, column: 27, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 334, column: 7)
!4984 = !DILocation(line: 334, column: 7, scope: !4983)
!4985 = !DILocation(line: 334, column: 7, scope: !4769)
!4986 = !DILocation(line: 335, column: 4, scope: !4983)
!4987 = !DILocation(line: 337, column: 23, scope: !4769)
!4988 = !DILocation(line: 337, column: 10, scope: !4769)
!4989 = !DILocation(line: 337, column: 3, scope: !4769)
!4990 = !DILocation(line: 340, column: 27, scope: !4769)
!4991 = !DILocation(line: 340, column: 9, scope: !4769)
!4992 = !DILocation(line: 340, column: 7, scope: !4769)
!4993 = !DILocation(line: 341, column: 3, scope: !4769)
!4994 = !DILocation(line: 344, column: 27, scope: !4769)
!4995 = !DILocation(line: 344, column: 9, scope: !4769)
!4996 = !DILocation(line: 344, column: 7, scope: !4769)
!4997 = !DILocation(line: 345, column: 3, scope: !4769)
!4998 = !DILocation(line: 348, column: 17, scope: !4769)
!4999 = !DILocation(line: 348, column: 22, scope: !4769)
!5000 = !DILocation(line: 348, column: 3, scope: !4769)
!5001 = !DILocation(line: 349, column: 31, scope: !4769)
!5002 = !DILocation(line: 349, column: 10, scope: !4769)
!5003 = !DILocation(line: 349, column: 3, scope: !4769)
!5004 = !DILocation(line: 352, column: 17, scope: !4769)
!5005 = !DILocation(line: 352, column: 22, scope: !4769)
!5006 = !DILocation(line: 352, column: 3, scope: !4769)
!5007 = !DILocation(line: 353, column: 31, scope: !4769)
!5008 = !DILocation(line: 353, column: 10, scope: !4769)
!5009 = !DILocation(line: 353, column: 3, scope: !4769)
!5010 = !DILocation(line: 356, column: 17, scope: !4769)
!5011 = !DILocation(line: 356, column: 22, scope: !4769)
!5012 = !DILocation(line: 356, column: 3, scope: !4769)
!5013 = !DILocation(line: 357, column: 32, scope: !4769)
!5014 = !DILocation(line: 357, column: 10, scope: !4769)
!5015 = !DILocation(line: 357, column: 3, scope: !4769)
!5016 = !DILocation(line: 360, column: 17, scope: !4769)
!5017 = !DILocation(line: 360, column: 22, scope: !4769)
!5018 = !DILocation(line: 360, column: 3, scope: !4769)
!5019 = !DILocation(line: 361, column: 32, scope: !4769)
!5020 = !DILocation(line: 361, column: 10, scope: !4769)
!5021 = !DILocation(line: 361, column: 3, scope: !4769)
!5022 = !DILocation(line: 364, column: 26, scope: !4769)
!5023 = !DILocation(line: 364, column: 31, scope: !4769)
!5024 = !DILocation(line: 364, column: 9, scope: !4769)
!5025 = !DILocation(line: 364, column: 7, scope: !4769)
!5026 = !DILocation(line: 365, column: 3, scope: !4769)
!5027 = !DILocation(line: 367, column: 9, scope: !4773)
!5028 = !DILocation(line: 367, column: 9, scope: !4772)
!5029 = !{i64 2154293119}
!5030 = !DILocation(line: 367, column: 9, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 367, column: 9)
!5032 = !DILocation(line: 367, column: 9, scope: !4769)
!5033 = !DILocation(line: 367, column: 7, scope: !4769)
!5034 = !DILocation(line: 368, column: 3, scope: !4769)
!5035 = !DILocation(line: 371, column: 17, scope: !4769)
!5036 = !DILocation(line: 371, column: 22, scope: !4769)
!5037 = !DILocation(line: 371, column: 3, scope: !4769)
!5038 = !DILocation(line: 372, column: 30, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 372, column: 7)
!5040 = !DILocation(line: 372, column: 7, scope: !5039)
!5041 = !DILocation(line: 372, column: 7, scope: !4769)
!5042 = !DILocation(line: 373, column: 4, scope: !5039)
!5043 = !DILocation(line: 375, column: 24, scope: !4769)
!5044 = !DILocation(line: 375, column: 10, scope: !4769)
!5045 = !DILocation(line: 375, column: 3, scope: !4769)
!5046 = !DILocation(line: 378, column: 17, scope: !4769)
!5047 = !DILocation(line: 378, column: 22, scope: !4769)
!5048 = !DILocation(line: 378, column: 3, scope: !4769)
!5049 = !DILocation(line: 379, column: 24, scope: !4769)
!5050 = !DILocation(line: 379, column: 9, scope: !4769)
!5051 = !DILocation(line: 379, column: 7, scope: !4769)
!5052 = !DILocation(line: 380, column: 7, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 380, column: 7)
!5054 = !DILocation(line: 380, column: 11, scope: !5053)
!5055 = !DILocation(line: 380, column: 7, scope: !4769)
!5056 = !DILocation(line: 381, column: 11, scope: !5053)
!5057 = !DILocation(line: 381, column: 4, scope: !5053)
!5058 = !DILocation(line: 383, column: 20, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 383, column: 7)
!5060 = !DILocation(line: 383, column: 7, scope: !5059)
!5061 = !DILocation(line: 383, column: 7, scope: !4769)
!5062 = !DILocation(line: 384, column: 8, scope: !5059)
!5063 = !DILocation(line: 384, column: 4, scope: !5059)
!5064 = !DILocation(line: 385, column: 10, scope: !4769)
!5065 = !DILocation(line: 385, column: 3, scope: !4769)
!5066 = !DILocation(line: 388, column: 30, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 388, column: 7)
!5068 = !DILocation(line: 388, column: 7, scope: !5067)
!5069 = !DILocation(line: 388, column: 7, scope: !4769)
!5070 = !DILocation(line: 389, column: 18, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 388, column: 52)
!5072 = !DILocation(line: 389, column: 23, scope: !5071)
!5073 = !DILocation(line: 389, column: 4, scope: !5071)
!5074 = !DILocation(line: 390, column: 4, scope: !5071)
!5075 = !DILocation(line: 393, column: 16, scope: !4769)
!5076 = !DILocation(line: 393, column: 3, scope: !4769)
!5077 = !DILocation(line: 395, column: 14, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 395, column: 8)
!5079 = !DILocation(line: 395, column: 20, scope: !5078)
!5080 = !DILocation(line: 395, column: 8, scope: !4780)
!5081 = !DILocation(line: 396, column: 9, scope: !5078)
!5082 = !DILocation(line: 396, column: 5, scope: !5078)
!5083 = !DILocation(line: 397, column: 19, scope: !4780)
!5084 = !DILocation(line: 397, column: 24, scope: !4780)
!5085 = !DILocation(line: 397, column: 10, scope: !4780)
!5086 = !DILocation(line: 397, column: 17, scope: !4780)
!5087 = !DILocation(line: 398, column: 4, scope: !4780)
!5088 = !DILocation(line: 401, column: 4, scope: !4779)
!5089 = !DILocation(line: 401, column: 9, scope: !4779)
!5090 = !DILocation(line: 402, column: 18, scope: !4779)
!5091 = !DILocation(line: 402, column: 23, scope: !4779)
!5092 = !DILocation(line: 402, column: 4, scope: !4779)
!5093 = !DILocation(line: 403, column: 14, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 403, column: 8)
!5095 = !DILocation(line: 403, column: 20, scope: !5094)
!5096 = !DILocation(line: 403, column: 8, scope: !4779)
!5097 = !DILocation(line: 404, column: 5, scope: !5094)
!5098 = !DILocation(line: 405, column: 26, scope: !4779)
!5099 = !DILocation(line: 405, column: 10, scope: !4779)
!5100 = !DILocation(line: 405, column: 8, scope: !4779)
!5101 = !DILocation(line: 406, column: 16, scope: !4779)
!5102 = !DILocation(line: 406, column: 21, scope: !4779)
!5103 = !DILocation(line: 406, column: 4, scope: !4779)
!5104 = !DILocation(line: 407, column: 8, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 407, column: 8)
!5106 = !DILocation(line: 407, column: 12, scope: !5105)
!5107 = !DILocation(line: 407, column: 8, scope: !4779)
!5108 = !DILocation(line: 408, column: 20, scope: !5105)
!5109 = !DILocation(line: 408, column: 11, scope: !5105)
!5110 = !DILocation(line: 408, column: 18, scope: !5105)
!5111 = !DILocation(line: 408, column: 5, scope: !5105)
!5112 = !DILocation(line: 409, column: 4, scope: !4779)
!5113 = !DILocation(line: 410, column: 3, scope: !4780)
!5114 = !DILocation(line: 412, column: 8, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 412, column: 8)
!5116 = !DILocation(line: 412, column: 13, scope: !5115)
!5117 = !DILocation(line: 412, column: 18, scope: !5115)
!5118 = !DILocation(line: 412, column: 8, scope: !4780)
!5119 = !DILocation(line: 413, column: 11, scope: !5115)
!5120 = !DILocation(line: 413, column: 16, scope: !5115)
!5121 = !DILocation(line: 413, column: 21, scope: !5115)
!5122 = !DILocation(line: 413, column: 31, scope: !5115)
!5123 = !DILocation(line: 413, column: 36, scope: !5115)
!5124 = !DILocation(line: 413, column: 40, scope: !5115)
!5125 = !DILocation(line: 413, column: 9, scope: !5115)
!5126 = !DILocation(line: 413, column: 5, scope: !5115)
!5127 = !DILocation(line: 415, column: 9, scope: !5115)
!5128 = !DILocation(line: 416, column: 3, scope: !4780)
!5129 = !DILocation(line: 418, column: 8, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 418, column: 7)
!5131 = !DILocation(line: 418, column: 7, scope: !4769)
!5132 = !DILocation(line: 419, column: 21, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 419, column: 8)
!5134 = !DILocation(line: 419, column: 8, scope: !5133)
!5135 = !DILocation(line: 419, column: 8, scope: !5130)
!5136 = !DILocation(line: 420, column: 9, scope: !5133)
!5137 = !DILocation(line: 420, column: 5, scope: !5133)
!5138 = !DILocation(line: 419, column: 48, scope: !5133)
!5139 = !DILocation(line: 422, column: 3, scope: !4769)
!5140 = !DILocation(line: 425, column: 30, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 425, column: 7)
!5142 = !DILocation(line: 425, column: 7, scope: !5141)
!5143 = !DILocation(line: 425, column: 7, scope: !4769)
!5144 = !DILocation(line: 426, column: 18, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 425, column: 52)
!5146 = !DILocation(line: 426, column: 23, scope: !5145)
!5147 = !DILocation(line: 426, column: 4, scope: !5145)
!5148 = !DILocation(line: 427, column: 4, scope: !5145)
!5149 = !DILocation(line: 430, column: 16, scope: !4769)
!5150 = !DILocation(line: 430, column: 3, scope: !4769)
!5151 = !DILocation(line: 432, column: 8, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 430, column: 23)
!5153 = !DILocation(line: 433, column: 4, scope: !5152)
!5154 = !DILocation(line: 436, column: 18, scope: !5152)
!5155 = !DILocation(line: 436, column: 23, scope: !5152)
!5156 = !DILocation(line: 436, column: 4, scope: !5152)
!5157 = !DILocation(line: 437, column: 14, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 437, column: 8)
!5159 = !DILocation(line: 437, column: 20, scope: !5158)
!5160 = !DILocation(line: 437, column: 8, scope: !5152)
!5161 = !DILocation(line: 438, column: 5, scope: !5158)
!5162 = !DILocation(line: 439, column: 26, scope: !5152)
!5163 = !DILocation(line: 439, column: 37, scope: !5152)
!5164 = !DILocation(line: 439, column: 11, scope: !5152)
!5165 = !DILocation(line: 439, column: 4, scope: !5152)
!5166 = !DILocation(line: 442, column: 8, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 442, column: 8)
!5168 = !DILocation(line: 442, column: 13, scope: !5167)
!5169 = !DILocation(line: 442, column: 18, scope: !5167)
!5170 = !DILocation(line: 442, column: 8, scope: !5152)
!5171 = !DILocation(line: 443, column: 11, scope: !5167)
!5172 = !DILocation(line: 443, column: 16, scope: !5167)
!5173 = !DILocation(line: 443, column: 21, scope: !5167)
!5174 = !DILocation(line: 443, column: 31, scope: !5167)
!5175 = !DILocation(line: 443, column: 36, scope: !5167)
!5176 = !DILocation(line: 443, column: 40, scope: !5167)
!5177 = !DILocation(line: 443, column: 9, scope: !5167)
!5178 = !DILocation(line: 443, column: 5, scope: !5167)
!5179 = !DILocation(line: 445, column: 9, scope: !5167)
!5180 = !DILocation(line: 446, column: 3, scope: !5152)
!5181 = !DILocation(line: 448, column: 3, scope: !4769)
!5182 = !DILocation(line: 452, column: 7, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 452, column: 7)
!5184 = !DILocation(line: 452, column: 12, scope: !5183)
!5185 = !DILocation(line: 452, column: 7, scope: !4769)
!5186 = !DILocation(line: 453, column: 10, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 452, column: 19)
!5188 = !DILocation(line: 453, column: 15, scope: !5187)
!5189 = !DILocation(line: 453, column: 21, scope: !5187)
!5190 = !DILocation(line: 453, column: 26, scope: !5187)
!5191 = !DILocation(line: 453, column: 30, scope: !5187)
!5192 = !DILocation(line: 453, column: 38, scope: !5187)
!5193 = !DILocation(line: 453, column: 43, scope: !5187)
!5194 = !DILocation(line: 453, column: 8, scope: !5187)
!5195 = !DILocation(line: 454, column: 8, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 454, column: 8)
!5197 = !DILocation(line: 454, column: 12, scope: !5196)
!5198 = !DILocation(line: 454, column: 8, scope: !5187)
!5199 = !DILocation(line: 455, column: 9, scope: !5196)
!5200 = !DILocation(line: 455, column: 5, scope: !5196)
!5201 = !DILocation(line: 456, column: 3, scope: !5187)
!5202 = !DILocation(line: 457, column: 8, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 456, column: 10)
!5204 = !DILocation(line: 459, column: 3, scope: !4769)
!5205 = !DILocation(line: 460, column: 2, scope: !4769)
!5206 = !DILocation(line: 462, column: 1, scope: !4755)
!5207 = !DILocation(line: 463, column: 16, scope: !4755)
!5208 = !DILocation(line: 463, column: 21, scope: !4755)
!5209 = !DILocation(line: 463, column: 2, scope: !4755)
!5210 = !DILocation(line: 464, column: 9, scope: !4755)
!5211 = !DILocation(line: 464, column: 2, scope: !4755)
!5212 = !DILocation(line: 465, column: 1, scope: !4755)
!5213 = distinct !DISubprogram(name: "rtc_dev_compat_ioctl", scope: !3, file: !3, line: 472, type: !1101, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5214)
!5214 = !{!5215, !5216, !5217, !5218, !5219, !5220, !5224, !5225, !5226, !5227}
!5215 = !DILocalVariable(name: "file", arg: 1, scope: !5213, file: !3, line: 472, type: !968)
!5216 = !DILocalVariable(name: "cmd", arg: 2, scope: !5213, file: !3, line: 473, type: !7)
!5217 = !DILocalVariable(name: "arg", arg: 3, scope: !5213, file: !3, line: 473, type: !278)
!5218 = !DILocalVariable(name: "rtc", scope: !5213, file: !3, line: 475, type: !4002)
!5219 = !DILocalVariable(name: "uarg", scope: !5213, file: !3, line: 476, type: !300)
!5220 = !DILocalVariable(name: "__ret_pu", scope: !5221, file: !3, line: 480, type: !85)
!5221 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 480, column: 10)
!5222 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 480, column: 10)
!5223 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 478, column: 15)
!5224 = !DILocalVariable(name: "__ptr_pu", scope: !5221, file: !3, line: 480, type: !300)
!5225 = !DILocalVariable(name: "__val_pu", scope: !5221, file: !3, line: 480, type: !379)
!5226 = !DILocalVariable(name: "__x", scope: !5221, file: !3, line: 480, type: !379)
!5227 = !DILocalVariable(name: "__ptr", scope: !5221, file: !3, line: 480, type: !4001)
!5228 = !DILocation(line: 472, column: 47, scope: !5213)
!5229 = !DILocation(line: 473, column: 19, scope: !5213)
!5230 = !DILocation(line: 473, column: 38, scope: !5213)
!5231 = !DILocation(line: 475, column: 2, scope: !5213)
!5232 = !DILocation(line: 475, column: 21, scope: !5213)
!5233 = !DILocation(line: 475, column: 27, scope: !5213)
!5234 = !DILocation(line: 475, column: 33, scope: !5213)
!5235 = !DILocation(line: 476, column: 2, scope: !5213)
!5236 = !DILocation(line: 476, column: 15, scope: !5213)
!5237 = !DILocation(line: 476, column: 33, scope: !5213)
!5238 = !DILocation(line: 476, column: 22, scope: !5213)
!5239 = !DILocation(line: 478, column: 10, scope: !5213)
!5240 = !DILocation(line: 478, column: 2, scope: !5213)
!5241 = !DILocation(line: 480, column: 10, scope: !5222)
!5242 = !DILocation(line: 480, column: 10, scope: !5221)
!5243 = !{i64 2154298489}
!5244 = !DILocation(line: 480, column: 10, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5221, file: !3, line: 480, column: 10)
!5246 = !DILocation(line: 480, column: 3, scope: !5223)
!5247 = !DILocation(line: 484, column: 24, scope: !5223)
!5248 = !DILocation(line: 484, column: 44, scope: !5223)
!5249 = !DILocation(line: 484, column: 10, scope: !5223)
!5250 = !DILocation(line: 484, column: 3, scope: !5223)
!5251 = !DILocation(line: 488, column: 24, scope: !5223)
!5252 = !DILocation(line: 488, column: 45, scope: !5223)
!5253 = !DILocation(line: 488, column: 10, scope: !5223)
!5254 = !DILocation(line: 488, column: 3, scope: !5223)
!5255 = !DILocation(line: 491, column: 23, scope: !5213)
!5256 = !DILocation(line: 491, column: 29, scope: !5213)
!5257 = !DILocation(line: 491, column: 49, scope: !5213)
!5258 = !DILocation(line: 491, column: 34, scope: !5213)
!5259 = !DILocation(line: 491, column: 9, scope: !5213)
!5260 = !DILocation(line: 491, column: 2, scope: !5213)
!5261 = !DILocation(line: 492, column: 1, scope: !5213)
!5262 = distinct !DISubprogram(name: "rtc_dev_open", scope: !3, file: !3, line: 23, type: !1334, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5263)
!5263 = !{!5264, !5265, !5266, !5267}
!5264 = !DILocalVariable(name: "inode", arg: 1, scope: !5262, file: !3, line: 23, type: !309)
!5265 = !DILocalVariable(name: "file", arg: 2, scope: !5262, file: !3, line: 23, type: !968)
!5266 = !DILocalVariable(name: "rtc", scope: !5262, file: !3, line: 25, type: !4002)
!5267 = !DILocalVariable(name: "__mptr", scope: !5268, file: !3, line: 25, type: !300)
!5268 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 25, column: 27)
!5269 = !DILocation(line: 23, column: 39, scope: !5262)
!5270 = !DILocation(line: 23, column: 59, scope: !5262)
!5271 = !DILocation(line: 25, column: 2, scope: !5262)
!5272 = !DILocation(line: 25, column: 21, scope: !5262)
!5273 = !DILocation(line: 25, column: 27, scope: !5268)
!5274 = !DILocation(line: 25, column: 27, scope: !5262)
!5275 = !DILocation(line: 28, column: 43, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 28, column: 6)
!5277 = !DILocation(line: 28, column: 48, scope: !5276)
!5278 = !DILocation(line: 28, column: 6, scope: !5276)
!5279 = !DILocation(line: 28, column: 6, scope: !5262)
!5280 = !DILocation(line: 29, column: 3, scope: !5276)
!5281 = !DILocation(line: 31, column: 23, scope: !5262)
!5282 = !DILocation(line: 31, column: 2, scope: !5262)
!5283 = !DILocation(line: 31, column: 8, scope: !5262)
!5284 = !DILocation(line: 31, column: 21, scope: !5262)
!5285 = !DILocation(line: 33, column: 17, scope: !5262)
!5286 = !DILocation(line: 33, column: 22, scope: !5262)
!5287 = !DILocation(line: 33, column: 2, scope: !5262)
!5288 = !DILocation(line: 34, column: 2, scope: !5262)
!5289 = !DILocation(line: 34, column: 7, scope: !5262)
!5290 = !DILocation(line: 34, column: 16, scope: !5262)
!5291 = !DILocation(line: 35, column: 19, scope: !5262)
!5292 = !DILocation(line: 35, column: 24, scope: !5262)
!5293 = !DILocation(line: 35, column: 2, scope: !5262)
!5294 = !DILocation(line: 37, column: 2, scope: !5262)
!5295 = !DILocation(line: 38, column: 1, scope: !5262)
!5296 = distinct !DISubprogram(name: "rtc_dev_release", scope: !3, file: !3, line: 502, type: !1334, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5297)
!5297 = !{!5298, !5299, !5300}
!5298 = !DILocalVariable(name: "inode", arg: 1, scope: !5296, file: !3, line: 502, type: !309)
!5299 = !DILocalVariable(name: "file", arg: 2, scope: !5296, file: !3, line: 502, type: !968)
!5300 = !DILocalVariable(name: "rtc", scope: !5296, file: !3, line: 504, type: !4002)
!5301 = !DILocation(line: 502, column: 42, scope: !5296)
!5302 = !DILocation(line: 502, column: 62, scope: !5296)
!5303 = !DILocation(line: 504, column: 2, scope: !5296)
!5304 = !DILocation(line: 504, column: 21, scope: !5296)
!5305 = !DILocation(line: 504, column: 27, scope: !5296)
!5306 = !DILocation(line: 504, column: 33, scope: !5296)
!5307 = !DILocation(line: 516, column: 16, scope: !5296)
!5308 = !DILocation(line: 516, column: 2, scope: !5296)
!5309 = !DILocation(line: 517, column: 24, scope: !5296)
!5310 = !DILocation(line: 517, column: 2, scope: !5296)
!5311 = !DILocation(line: 518, column: 20, scope: !5296)
!5312 = !DILocation(line: 518, column: 2, scope: !5296)
!5313 = !DILocation(line: 520, column: 34, scope: !5296)
!5314 = !DILocation(line: 520, column: 39, scope: !5296)
!5315 = !DILocation(line: 520, column: 2, scope: !5296)
!5316 = !DILocation(line: 522, column: 1, scope: !5296)
!5317 = !DILocation(line: 521, column: 2, scope: !5296)
!5318 = distinct !DISubprogram(name: "rtc_dev_fasync", scope: !3, file: !3, line: 495, type: !1348, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5319)
!5319 = !{!5320, !5321, !5322, !5323}
!5320 = !DILocalVariable(name: "fd", arg: 1, scope: !5318, file: !3, line: 495, type: !85)
!5321 = !DILocalVariable(name: "file", arg: 2, scope: !5318, file: !3, line: 495, type: !968)
!5322 = !DILocalVariable(name: "on", arg: 3, scope: !5318, file: !3, line: 495, type: !85)
!5323 = !DILocalVariable(name: "rtc", scope: !5318, file: !3, line: 497, type: !4002)
!5324 = !DILocation(line: 495, column: 31, scope: !5318)
!5325 = !DILocation(line: 495, column: 48, scope: !5318)
!5326 = !DILocation(line: 495, column: 58, scope: !5318)
!5327 = !DILocation(line: 497, column: 2, scope: !5318)
!5328 = !DILocation(line: 497, column: 21, scope: !5318)
!5329 = !DILocation(line: 497, column: 27, scope: !5318)
!5330 = !DILocation(line: 497, column: 33, scope: !5318)
!5331 = !DILocation(line: 499, column: 23, scope: !5318)
!5332 = !DILocation(line: 499, column: 27, scope: !5318)
!5333 = !DILocation(line: 499, column: 33, scope: !5318)
!5334 = !DILocation(line: 499, column: 38, scope: !5318)
!5335 = !DILocation(line: 499, column: 43, scope: !5318)
!5336 = !DILocation(line: 499, column: 9, scope: !5318)
!5337 = !DILocation(line: 500, column: 1, scope: !5318)
!5338 = !DILocation(line: 499, column: 2, scope: !5318)
!5339 = distinct !DISubprogram(name: "get_current", scope: !5340, file: !5340, line: 39, type: !5341, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5343)
!5340 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5341 = !DISubroutineType(types: !5342)
!5342 = !{!1723}
!5343 = !{!5344, !5346, !5348}
!5344 = !DILocalVariable(name: "pscr_ret__", scope: !5345, file: !5340, line: 41, type: !1723)
!5345 = distinct !DILexicalBlock(scope: !5339, file: !5340, line: 41, column: 9)
!5346 = !DILocalVariable(name: "__vpp_verify", scope: !5347, file: !5340, line: 41, type: !1237)
!5347 = distinct !DILexicalBlock(scope: !5345, file: !5340, line: 41, column: 9)
!5348 = !DILocalVariable(name: "pfo_val__", scope: !5349, file: !5340, line: 41, type: !382)
!5349 = distinct !DILexicalBlock(scope: !5345, file: !5340, line: 41, column: 9)
!5350 = !DILocation(line: 41, column: 9, scope: !5345)
!5351 = !DILocation(line: 41, column: 9, scope: !5347)
!5352 = !DILocation(line: 41, column: 9, scope: !5349)
!5353 = !{i64 2148432286}
!5354 = !DILocation(line: 41, column: 9, scope: !5339)
!5355 = !DILocation(line: 41, column: 2, scope: !5339)
!5356 = !DISubprogram(name: "add_wait_queue", scope: !710, file: !710, line: 166, type: !5357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5357 = !DISubroutineType(types: !5358)
!5358 = !{null, !5359, !4579}
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!5360 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5361, file: !5361, line: 374, type: !5362, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5365)
!5361 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5362 = !DISubroutineType(types: !5363)
!5363 = !{null, !5364}
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!5365 = !{!5366}
!5366 = !DILocalVariable(name: "lock", arg: 1, scope: !5360, file: !5361, line: 374, type: !5364)
!5367 = !DILocation(line: 374, column: 55, scope: !5360)
!5368 = !DILocation(line: 376, column: 2, scope: !5360)
!5369 = !DILocation(line: 377, column: 1, scope: !5360)
!5370 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5361, file: !5361, line: 399, type: !5362, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5371)
!5371 = !{!5372}
!5372 = !DILocalVariable(name: "lock", arg: 1, scope: !5370, file: !5361, line: 399, type: !5364)
!5373 = !DILocation(line: 399, column: 57, scope: !5370)
!5374 = !DILocation(line: 401, column: 2, scope: !5370)
!5375 = !DILocation(line: 402, column: 1, scope: !5370)
!5376 = distinct !DISubprogram(name: "signal_pending", scope: !2197, file: !2197, line: 392, type: !5377, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5379)
!5377 = !DISubroutineType(types: !5378)
!5378 = !{!85, !1723}
!5379 = !{!5380}
!5380 = !DILocalVariable(name: "p", arg: 1, scope: !5376, file: !2197, line: 392, type: !1723)
!5381 = !DILocation(line: 392, column: 54, scope: !5376)
!5382 = !DILocation(line: 399, column: 6, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5376, file: !2197, line: 399, column: 6)
!5384 = !DILocation(line: 399, column: 6, scope: !5376)
!5385 = !DILocation(line: 400, column: 3, scope: !5383)
!5386 = !DILocation(line: 401, column: 25, scope: !5376)
!5387 = !DILocation(line: 401, column: 9, scope: !5376)
!5388 = !DILocation(line: 401, column: 2, scope: !5376)
!5389 = !DILocation(line: 402, column: 1, scope: !5376)
!5390 = !DISubprogram(name: "schedule", scope: !1368, file: !1368, line: 303, type: !2360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5391 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5392, file: !5392, line: 94, type: !5393, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5398)
!5392 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5393 = !DISubroutineType(types: !5394)
!5394 = !{null, !5395, !275}
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5397)
!5397 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5398 = !{!5399, !5400}
!5399 = !DILocalVariable(name: "v", arg: 1, scope: !5391, file: !5392, line: 94, type: !5395)
!5400 = !DILocalVariable(name: "size", arg: 2, scope: !5391, file: !5392, line: 94, type: !275)
!5401 = !DILocation(line: 94, column: 79, scope: !5391)
!5402 = !DILocation(line: 94, column: 89, scope: !5391)
!5403 = !DILocation(line: 96, column: 20, scope: !5391)
!5404 = !DILocation(line: 96, column: 23, scope: !5391)
!5405 = !DILocation(line: 96, column: 2, scope: !5391)
!5406 = !DILocation(line: 97, column: 2, scope: !5391)
!5407 = !DILocation(line: 98, column: 1, scope: !5391)
!5408 = !DISubprogram(name: "remove_wait_queue", scope: !710, file: !710, line: 169, type: !5357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5409 = distinct !DISubprogram(name: "might_fault", scope: !5410, file: !5410, line: 202, type: !2360, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5410 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5411 = !DILocation(line: 202, column: 40, scope: !5409)
!5412 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !5413, file: !5413, line: 76, type: !5414, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5416)
!5413 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!5414 = !DISubroutineType(types: !5415)
!5415 = !{null, !300, !1237, !275, !275}
!5416 = !{!5417, !5418, !5419, !5420}
!5417 = !DILocalVariable(name: "to", arg: 1, scope: !5412, file: !5413, line: 76, type: !300)
!5418 = !DILocalVariable(name: "from", arg: 2, scope: !5412, file: !5413, line: 76, type: !1237)
!5419 = !DILocalVariable(name: "to_copy", arg: 3, scope: !5412, file: !5413, line: 77, type: !275)
!5420 = !DILocalVariable(name: "left", arg: 4, scope: !5412, file: !5413, line: 77, type: !275)
!5421 = !DILocation(line: 76, column: 52, scope: !5412)
!5422 = !DILocation(line: 76, column: 68, scope: !5412)
!5423 = !DILocation(line: 77, column: 18, scope: !5412)
!5424 = !DILocation(line: 77, column: 34, scope: !5412)
!5425 = !DILocation(line: 79, column: 1, scope: !5412)
!5426 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5427, file: !5427, line: 29, type: !5428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5427 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5428 = !DISubroutineType(types: !5429)
!5429 = !{null, !5430}
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!5431 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5427, file: !5427, line: 41, type: !5428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5432 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !1368, file: !1368, line: 2066, type: !5433, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5435)
!5433 = !DISubroutineType(types: !5434)
!5434 = !{!85, !1723, !85}
!5435 = !{!5436, !5437}
!5436 = !DILocalVariable(name: "tsk", arg: 1, scope: !5432, file: !1368, line: 2066, type: !1723)
!5437 = !DILocalVariable(name: "flag", arg: 2, scope: !5432, file: !1368, line: 2066, type: !85)
!5438 = !DILocation(line: 2066, column: 60, scope: !5432)
!5439 = !DILocation(line: 2066, column: 69, scope: !5432)
!5440 = !DILocation(line: 2068, column: 29, scope: !5432)
!5441 = !DILocation(line: 2068, column: 52, scope: !5432)
!5442 = !DILocation(line: 2068, column: 9, scope: !5432)
!5443 = !DILocation(line: 2068, column: 2, scope: !5432)
!5444 = distinct !DISubprogram(name: "task_sigpending", scope: !2197, file: !2197, line: 387, type: !5377, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5445)
!5445 = !{!5446}
!5446 = !DILocalVariable(name: "p", arg: 1, scope: !5444, file: !2197, line: 387, type: !1723)
!5447 = !DILocation(line: 387, column: 55, scope: !5444)
!5448 = !DILocation(line: 389, column: 9, scope: !5444)
!5449 = !DILocation(line: 389, column: 2, scope: !5444)
!5450 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !4490, file: !4490, line: 116, type: !5451, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5454)
!5451 = !DISubroutineType(types: !5452)
!5452 = !{!85, !5453, !85}
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!5454 = !{!5455, !5456}
!5455 = !DILocalVariable(name: "ti", arg: 1, scope: !5450, file: !4490, line: 116, type: !5453)
!5456 = !DILocalVariable(name: "flag", arg: 2, scope: !5450, file: !4490, line: 116, type: !85)
!5457 = !DILocation(line: 116, column: 59, scope: !5450)
!5458 = !DILocation(line: 116, column: 67, scope: !5450)
!5459 = !DILocation(line: 118, column: 9, scope: !5450)
!5460 = !DILocation(line: 118, column: 2, scope: !5450)
!5461 = distinct !DISubprogram(name: "const_test_bit", scope: !5462, file: !5462, line: 166, type: !5463, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5468)
!5462 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!840, !278, !5465}
!5465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5466, size: 64)
!5466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5467)
!5467 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !278)
!5468 = !{!5469, !5470, !5471, !5472, !5473}
!5469 = !DILocalVariable(name: "nr", arg: 1, scope: !5461, file: !5462, line: 166, type: !278)
!5470 = !DILocalVariable(name: "addr", arg: 2, scope: !5461, file: !5462, line: 166, type: !5465)
!5471 = !DILocalVariable(name: "p", scope: !5461, file: !5462, line: 168, type: !3999)
!5472 = !DILocalVariable(name: "mask", scope: !5461, file: !5462, line: 169, type: !278)
!5473 = !DILocalVariable(name: "val", scope: !5461, file: !5462, line: 170, type: !278)
!5474 = !DILocation(line: 166, column: 30, scope: !5461)
!5475 = !DILocation(line: 166, column: 64, scope: !5461)
!5476 = !DILocation(line: 168, column: 2, scope: !5461)
!5477 = !DILocation(line: 168, column: 23, scope: !5461)
!5478 = !DILocation(line: 168, column: 50, scope: !5461)
!5479 = !DILocation(line: 168, column: 57, scope: !5461)
!5480 = !DILocation(line: 168, column: 55, scope: !5461)
!5481 = !DILocation(line: 169, column: 2, scope: !5461)
!5482 = !DILocation(line: 169, column: 16, scope: !5461)
!5483 = !DILocation(line: 169, column: 23, scope: !5461)
!5484 = !DILocation(line: 170, column: 2, scope: !5461)
!5485 = !DILocation(line: 170, column: 16, scope: !5461)
!5486 = !DILocation(line: 170, column: 23, scope: !5461)
!5487 = !DILocation(line: 170, column: 22, scope: !5461)
!5488 = !DILocation(line: 172, column: 12, scope: !5461)
!5489 = !DILocation(line: 172, column: 18, scope: !5461)
!5490 = !DILocation(line: 172, column: 16, scope: !5461)
!5491 = !DILocation(line: 172, column: 10, scope: !5461)
!5492 = !DILocation(line: 172, column: 9, scope: !5461)
!5493 = !DILocation(line: 173, column: 1, scope: !5461)
!5494 = !DILocation(line: 172, column: 2, scope: !5461)
!5495 = distinct !DISubprogram(name: "_test_bit", scope: !5496, file: !5496, line: 139, type: !5463, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5497)
!5496 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5497 = !{!5498, !5499}
!5498 = !DILocalVariable(name: "nr", arg: 1, scope: !5495, file: !5496, line: 139, type: !278)
!5499 = !DILocalVariable(name: "addr", arg: 2, scope: !5495, file: !5496, line: 139, type: !5465)
!5500 = !DILocation(line: 139, column: 25, scope: !5495)
!5501 = !DILocation(line: 139, column: 59, scope: !5495)
!5502 = !DILocation(line: 141, column: 25, scope: !5495)
!5503 = !DILocation(line: 141, column: 32, scope: !5495)
!5504 = !DILocation(line: 141, column: 30, scope: !5495)
!5505 = !DILocation(line: 141, column: 2, scope: !5495)
!5506 = !DILocation(line: 142, column: 23, scope: !5495)
!5507 = !DILocation(line: 142, column: 27, scope: !5495)
!5508 = !DILocation(line: 142, column: 9, scope: !5495)
!5509 = !DILocation(line: 142, column: 2, scope: !5495)
!5510 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5392, file: !5392, line: 66, type: !5393, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5511)
!5511 = !{!5512, !5513}
!5512 = !DILocalVariable(name: "v", arg: 1, scope: !5510, file: !5392, line: 66, type: !5395)
!5513 = !DILocalVariable(name: "size", arg: 2, scope: !5510, file: !5392, line: 66, type: !275)
!5514 = !DILocation(line: 66, column: 73, scope: !5510)
!5515 = !DILocation(line: 66, column: 83, scope: !5510)
!5516 = !DILocation(line: 68, column: 19, scope: !5510)
!5517 = !DILocation(line: 68, column: 22, scope: !5510)
!5518 = !DILocation(line: 68, column: 2, scope: !5510)
!5519 = !DILocation(line: 69, column: 2, scope: !5510)
!5520 = !DILocation(line: 70, column: 1, scope: !5510)
!5521 = distinct !DISubprogram(name: "arch_test_bit", scope: !5522, file: !5522, line: 237, type: !5463, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5523)
!5522 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5523 = !{!5524, !5525}
!5524 = !DILocalVariable(name: "nr", arg: 1, scope: !5521, file: !5522, line: 237, type: !278)
!5525 = !DILocalVariable(name: "addr", arg: 2, scope: !5521, file: !5522, line: 237, type: !5465)
!5526 = !DILocation(line: 237, column: 29, scope: !5521)
!5527 = !DILocation(line: 237, column: 63, scope: !5521)
!5528 = !DILocation(line: 239, column: 30, scope: !5521)
!5529 = !DILocation(line: 239, column: 9, scope: !5521)
!5530 = !DILocation(line: 239, column: 54, scope: !5521)
!5531 = !DILocation(line: 239, column: 58, scope: !5521)
!5532 = !DILocation(line: 239, column: 36, scope: !5521)
!5533 = !DILocation(line: 240, column: 26, scope: !5521)
!5534 = !DILocation(line: 240, column: 30, scope: !5521)
!5535 = !DILocation(line: 240, column: 8, scope: !5521)
!5536 = !DILocation(line: 239, column: 2, scope: !5521)
!5537 = distinct !DISubprogram(name: "kasan_check_read", scope: !5538, file: !5538, line: 40, type: !5539, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5541)
!5538 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5539 = !DISubroutineType(types: !5540)
!5540 = !{!840, !5395, !7}
!5541 = !{!5542, !5543}
!5542 = !DILocalVariable(name: "p", arg: 1, scope: !5537, file: !5538, line: 40, type: !5395)
!5543 = !DILocalVariable(name: "size", arg: 2, scope: !5537, file: !5538, line: 40, type: !7)
!5544 = !DILocation(line: 40, column: 58, scope: !5537)
!5545 = !DILocation(line: 40, column: 74, scope: !5537)
!5546 = !DILocation(line: 42, column: 2, scope: !5537)
!5547 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5548, file: !5548, line: 229, type: !5549, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5551)
!5548 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5549 = !DISubroutineType(types: !5550)
!5550 = !{null, !5395, !275, !85}
!5551 = !{!5552, !5553, !5554}
!5552 = !DILocalVariable(name: "ptr", arg: 1, scope: !5547, file: !5548, line: 229, type: !5395)
!5553 = !DILocalVariable(name: "size", arg: 2, scope: !5547, file: !5548, line: 229, type: !275)
!5554 = !DILocalVariable(name: "type", arg: 3, scope: !5547, file: !5548, line: 230, type: !85)
!5555 = !DILocation(line: 229, column: 60, scope: !5547)
!5556 = !DILocation(line: 229, column: 72, scope: !5547)
!5557 = !DILocation(line: 230, column: 15, scope: !5547)
!5558 = !DILocation(line: 230, column: 23, scope: !5547)
!5559 = distinct !DISubprogram(name: "constant_test_bit", scope: !5522, file: !5522, line: 204, type: !5560, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5562)
!5560 = !DISubroutineType(types: !5561)
!5561 = !{!840, !264, !5465}
!5562 = !{!5563, !5564}
!5563 = !DILocalVariable(name: "nr", arg: 1, scope: !5559, file: !5522, line: 204, type: !264)
!5564 = !DILocalVariable(name: "addr", arg: 2, scope: !5559, file: !5522, line: 204, type: !5465)
!5565 = !DILocation(line: 204, column: 52, scope: !5559)
!5566 = !DILocation(line: 204, column: 86, scope: !5559)
!5567 = !DILocation(line: 206, column: 19, scope: !5559)
!5568 = !DILocation(line: 206, column: 22, scope: !5559)
!5569 = !DILocation(line: 206, column: 15, scope: !5559)
!5570 = !DILocation(line: 207, column: 4, scope: !5559)
!5571 = !DILocation(line: 207, column: 9, scope: !5559)
!5572 = !DILocation(line: 207, column: 12, scope: !5559)
!5573 = !DILocation(line: 206, column: 44, scope: !5559)
!5574 = !DILocation(line: 207, column: 37, scope: !5559)
!5575 = !DILocation(line: 206, column: 2, scope: !5559)
!5576 = distinct !DISubprogram(name: "variable_test_bit", scope: !5522, file: !5522, line: 224, type: !5560, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5577)
!5577 = !{!5578, !5579, !5580}
!5578 = !DILocalVariable(name: "nr", arg: 1, scope: !5576, file: !5522, line: 224, type: !264)
!5579 = !DILocalVariable(name: "addr", arg: 2, scope: !5576, file: !5522, line: 224, type: !5465)
!5580 = !DILocalVariable(name: "oldbit", scope: !5576, file: !5522, line: 226, type: !840)
!5581 = !DILocation(line: 224, column: 52, scope: !5576)
!5582 = !DILocation(line: 224, column: 86, scope: !5576)
!5583 = !DILocation(line: 226, column: 2, scope: !5576)
!5584 = !DILocation(line: 226, column: 7, scope: !5576)
!5585 = !DILocation(line: 231, column: 33, scope: !5576)
!5586 = !DILocation(line: 231, column: 46, scope: !5576)
!5587 = !DILocation(line: 228, column: 2, scope: !5576)
!5588 = !{i64 2148241877, i64 2148241951}
!5589 = !DILocation(line: 233, column: 9, scope: !5576)
!5590 = !{i8 0, i8 2}
!5591 = !DILocation(line: 234, column: 1, scope: !5576)
!5592 = !DILocation(line: 233, column: 2, scope: !5576)
!5593 = distinct !DISubprogram(name: "kasan_check_write", scope: !5538, file: !5538, line: 44, type: !5539, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5594)
!5594 = !{!5595, !5596}
!5595 = !DILocalVariable(name: "p", arg: 1, scope: !5593, file: !5538, line: 44, type: !5395)
!5596 = !DILocalVariable(name: "size", arg: 2, scope: !5593, file: !5538, line: 44, type: !7)
!5597 = !DILocation(line: 44, column: 59, scope: !5593)
!5598 = !DILocation(line: 44, column: 75, scope: !5593)
!5599 = !DILocation(line: 46, column: 2, scope: !5593)
!5600 = distinct !DISubprogram(name: "poll_wait", scope: !1090, file: !1090, line: 42, type: !5601, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5603)
!5601 = !DISubroutineType(types: !5602)
!5602 = !{null, !968, !1097, !4727}
!5603 = !{!5604, !5605, !5606}
!5604 = !DILocalVariable(name: "filp", arg: 1, scope: !5600, file: !1090, line: 42, type: !968)
!5605 = !DILocalVariable(name: "wait_address", arg: 2, scope: !5600, file: !1090, line: 42, type: !1097)
!5606 = !DILocalVariable(name: "p", arg: 3, scope: !5600, file: !1090, line: 42, type: !4727)
!5607 = !DILocation(line: 42, column: 44, scope: !5600)
!5608 = !DILocation(line: 42, column: 70, scope: !5600)
!5609 = !DILocation(line: 42, column: 96, scope: !5600)
!5610 = !DILocation(line: 44, column: 6, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5600, file: !1090, line: 44, column: 6)
!5612 = !DILocation(line: 44, column: 8, scope: !5611)
!5613 = !DILocation(line: 44, column: 11, scope: !5611)
!5614 = !DILocation(line: 44, column: 14, scope: !5611)
!5615 = !DILocation(line: 44, column: 21, scope: !5611)
!5616 = !DILocation(line: 44, column: 24, scope: !5611)
!5617 = !DILocation(line: 44, column: 6, scope: !5600)
!5618 = !DILocation(line: 45, column: 3, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5611, file: !1090, line: 44, column: 38)
!5620 = !DILocation(line: 45, column: 6, scope: !5619)
!5621 = !DILocation(line: 45, column: 13, scope: !5619)
!5622 = !DILocation(line: 45, column: 19, scope: !5619)
!5623 = !DILocation(line: 45, column: 33, scope: !5619)
!5624 = !DILocation(line: 52, column: 3, scope: !5619)
!5625 = !DILocation(line: 52, column: 3, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5619, file: !1090, line: 52, column: 3)
!5627 = !DILocation(line: 52, column: 3, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5626, file: !1090, line: 52, column: 3)
!5629 = !{i64 2154260912}
!5630 = !DILocation(line: 53, column: 2, scope: !5619)
!5631 = !DILocation(line: 54, column: 1, scope: !5600)
!5632 = !DISubprogram(name: "mutex_lock_interruptible", scope: !594, file: !594, line: 228, type: !5633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5633 = !DISubroutineType(types: !5634)
!5634 = !{!85, !5635}
!5635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!5636 = !DISubprogram(name: "capable", scope: !748, file: !748, line: 148, type: !5637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5637 = !DISubroutineType(types: !5638)
!5638 = !{!840, !85}
!5639 = !DISubprogram(name: "mutex_unlock", scope: !594, file: !594, line: 246, type: !5640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5640 = !DISubroutineType(types: !5641)
!5641 = !{null, !5635}
!5642 = !DISubprogram(name: "rtc_read_alarm", scope: !4004, file: !4004, line: 190, type: !5643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{!85, !4002, !4389}
!5645 = distinct !DISubprogram(name: "copy_to_user", scope: !5646, file: !5646, line: 188, type: !5647, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5649)
!5646 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5647 = !DISubroutineType(types: !5648)
!5648 = !{!278, !300, !1237, !278}
!5649 = !{!5650, !5651, !5652}
!5650 = !DILocalVariable(name: "to", arg: 1, scope: !5645, file: !5646, line: 188, type: !300)
!5651 = !DILocalVariable(name: "from", arg: 2, scope: !5645, file: !5646, line: 188, type: !1237)
!5652 = !DILocalVariable(name: "n", arg: 3, scope: !5645, file: !5646, line: 188, type: !278)
!5653 = !DILocation(line: 188, column: 27, scope: !5645)
!5654 = !DILocation(line: 188, column: 43, scope: !5645)
!5655 = !DILocation(line: 188, column: 63, scope: !5645)
!5656 = !DILocation(line: 190, column: 22, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5645, file: !5646, line: 190, column: 6)
!5658 = !DILocation(line: 190, column: 28, scope: !5657)
!5659 = !DILocation(line: 190, column: 6, scope: !5657)
!5660 = !DILocation(line: 190, column: 6, scope: !5645)
!5661 = !DILocation(line: 191, column: 21, scope: !5657)
!5662 = !DILocation(line: 191, column: 25, scope: !5657)
!5663 = !DILocation(line: 191, column: 31, scope: !5657)
!5664 = !DILocation(line: 191, column: 7, scope: !5657)
!5665 = !DILocation(line: 191, column: 5, scope: !5657)
!5666 = !DILocation(line: 191, column: 3, scope: !5657)
!5667 = !DILocation(line: 192, column: 9, scope: !5645)
!5668 = !DILocation(line: 192, column: 2, scope: !5645)
!5669 = distinct !DISubprogram(name: "copy_from_user", scope: !5646, file: !5646, line: 180, type: !5647, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5670)
!5670 = !{!5671, !5672, !5673}
!5671 = !DILocalVariable(name: "to", arg: 1, scope: !5669, file: !5646, line: 180, type: !300)
!5672 = !DILocalVariable(name: "from", arg: 2, scope: !5669, file: !5646, line: 180, type: !1237)
!5673 = !DILocalVariable(name: "n", arg: 3, scope: !5669, file: !5646, line: 180, type: !278)
!5674 = !DILocation(line: 180, column: 22, scope: !5669)
!5675 = !DILocation(line: 180, column: 45, scope: !5669)
!5676 = !DILocation(line: 180, column: 65, scope: !5669)
!5677 = !DILocation(line: 182, column: 22, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5669, file: !5646, line: 182, column: 6)
!5679 = !DILocation(line: 182, column: 26, scope: !5678)
!5680 = !DILocation(line: 182, column: 6, scope: !5678)
!5681 = !DILocation(line: 182, column: 6, scope: !5669)
!5682 = !DILocation(line: 183, column: 23, scope: !5678)
!5683 = !DILocation(line: 183, column: 27, scope: !5678)
!5684 = !DILocation(line: 183, column: 33, scope: !5678)
!5685 = !DILocation(line: 183, column: 7, scope: !5678)
!5686 = !DILocation(line: 183, column: 5, scope: !5678)
!5687 = !DILocation(line: 183, column: 3, scope: !5678)
!5688 = !DILocation(line: 184, column: 9, scope: !5669)
!5689 = !DILocation(line: 184, column: 2, scope: !5669)
!5690 = !DISubprogram(name: "rtc_read_time", scope: !4004, file: !4004, line: 187, type: !5691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{!85, !4002, !4371}
!5693 = !DISubprogram(name: "rtc_tm_to_time64", scope: !4004, file: !4004, line: 24, type: !5694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5694 = !DISubroutineType(types: !5695)
!5695 = !{!797, !4371}
!5696 = !DISubprogram(name: "rtc_valid_tm", scope: !4004, file: !4004, line: 23, type: !5697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5697 = !DISubroutineType(types: !5698)
!5698 = !{!85, !4371}
!5699 = !DISubprogram(name: "rtc_time64_to_tm", scope: !4004, file: !4004, line: 25, type: !5700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5700 = !DISubroutineType(types: !5701)
!5701 = !{null, !797, !4371}
!5702 = !DISubprogram(name: "rtc_set_alarm", scope: !4004, file: !4004, line: 192, type: !5643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5703 = !DISubprogram(name: "rtc_set_time", scope: !4004, file: !4004, line: 188, type: !5691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5704 = !DISubprogram(name: "rtc_irq_set_state", scope: !4004, file: !4004, line: 202, type: !5705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5705 = !DISubroutineType(types: !5706)
!5706 = !{!85, !4002, !85}
!5707 = !DISubprogram(name: "rtc_alarm_irq_enable", scope: !4004, file: !4004, line: 205, type: !5708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5708 = !DISubroutineType(types: !5709)
!5709 = !{!85, !4002, !7}
!5710 = !DISubprogram(name: "rtc_update_irq_enable", scope: !4004, file: !4004, line: 204, type: !5708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5711 = !DISubprogram(name: "rtc_irq_set_freq", scope: !4004, file: !4004, line: 203, type: !5705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5712 = !DISubprogram(name: "rtc_read_offset", scope: !4004, file: !4004, line: 219, type: !5713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5713 = !DISubroutineType(types: !5714)
!5714 = !{!85, !4002, !4408}
!5715 = !DISubprogram(name: "mutex_lock", scope: !594, file: !594, line: 227, type: !5640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5716 = !DISubprogram(name: "rtc_set_offset", scope: !4004, file: !4004, line: 220, type: !5717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{!85, !4002, !264}
!5719 = distinct !DISubprogram(name: "check_copy_size", scope: !4490, file: !4490, line: 237, type: !5720, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5722)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{!840, !1237, !275, !840}
!5722 = !{!5723, !5724, !5725, !5726, !5727, !5730}
!5723 = !DILocalVariable(name: "addr", arg: 1, scope: !5719, file: !4490, line: 237, type: !1237)
!5724 = !DILocalVariable(name: "bytes", arg: 2, scope: !5719, file: !4490, line: 237, type: !275)
!5725 = !DILocalVariable(name: "is_source", arg: 3, scope: !5719, file: !4490, line: 237, type: !840)
!5726 = !DILocalVariable(name: "sz", scope: !5719, file: !4490, line: 239, type: !85)
!5727 = !DILocalVariable(name: "__ret_warn_on", scope: !5728, file: !4490, line: 249, type: !85)
!5728 = distinct !DILexicalBlock(scope: !5729, file: !4490, line: 249, column: 6)
!5729 = distinct !DILexicalBlock(scope: !5719, file: !4490, line: 249, column: 6)
!5730 = !DILocalVariable(name: "__flags", scope: !5731, file: !4490, line: 249, type: !85)
!5731 = distinct !DILexicalBlock(scope: !5732, file: !4490, line: 249, column: 6)
!5732 = distinct !DILexicalBlock(scope: !5728, file: !4490, line: 249, column: 6)
!5733 = !DILocation(line: 237, column: 29, scope: !5719)
!5734 = !DILocation(line: 237, column: 42, scope: !5719)
!5735 = !DILocation(line: 237, column: 54, scope: !5719)
!5736 = !DILocation(line: 239, column: 2, scope: !5719)
!5737 = !DILocation(line: 239, column: 6, scope: !5719)
!5738 = !DILocation(line: 239, column: 33, scope: !5719)
!5739 = !DILocation(line: 239, column: 11, scope: !5719)
!5740 = !DILocation(line: 240, column: 6, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5719, file: !4490, line: 240, column: 6)
!5742 = !DILocation(line: 0, scope: !5741)
!5743 = !DILocation(line: 240, column: 6, scope: !5719)
!5744 = !DILocation(line: 241, column: 29, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5746, file: !4490, line: 241, column: 7)
!5746 = distinct !DILexicalBlock(scope: !5741, file: !4490, line: 240, column: 39)
!5747 = !DILocation(line: 241, column: 8, scope: !5745)
!5748 = !DILocation(line: 241, column: 7, scope: !5746)
!5749 = !DILocation(line: 242, column: 18, scope: !5745)
!5750 = !DILocation(line: 242, column: 22, scope: !5745)
!5751 = !DILocation(line: 242, column: 4, scope: !5745)
!5752 = !DILocation(line: 243, column: 12, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5745, file: !4490, line: 243, column: 12)
!5754 = !DILocation(line: 243, column: 12, scope: !5745)
!5755 = !DILocation(line: 244, column: 4, scope: !5753)
!5756 = !{i32 2074156}
!5757 = !DILocation(line: 246, column: 4, scope: !5753)
!5758 = !{i32 2074185}
!5759 = !DILocation(line: 247, column: 3, scope: !5746)
!5760 = !DILocation(line: 249, column: 6, scope: !5728)
!5761 = !DILocation(line: 249, column: 6, scope: !5732)
!5762 = !DILocation(line: 249, column: 6, scope: !5731)
!5763 = !DILocation(line: 249, column: 6, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5731, file: !4490, line: 249, column: 6)
!5765 = !DILocation(line: 249, column: 6, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5731, file: !4490, line: 249, column: 6)
!5767 = !{i64 2149574618, i64 2149574647, i64 2149574693, i64 2149574751, i64 2149574805, i64 2149574859, i64 2149574914, i64 2149574945, i64 2149575253, i64 2149575259, i64 2149575306, i64 2149575329, i64 2149575355}
!5768 = !DILocation(line: 249, column: 6, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5731, file: !4490, line: 249, column: 6)
!5770 = !DILocation(line: 249, column: 6, scope: !5729)
!5771 = !DILocation(line: 249, column: 6, scope: !5719)
!5772 = !DILocation(line: 250, column: 3, scope: !5729)
!5773 = !DILocation(line: 251, column: 20, scope: !5719)
!5774 = !DILocation(line: 251, column: 26, scope: !5719)
!5775 = !DILocation(line: 251, column: 33, scope: !5719)
!5776 = !DILocation(line: 251, column: 2, scope: !5719)
!5777 = !DILocation(line: 252, column: 2, scope: !5719)
!5778 = !DILocation(line: 253, column: 1, scope: !5719)
!5779 = !DISubprogram(name: "_copy_to_user", scope: !5646, file: !5646, line: 176, type: !5647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5780 = distinct !DISubprogram(name: "copy_overflow", scope: !4490, file: !4490, line: 230, type: !5781, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5783)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{null, !85, !278}
!5783 = !{!5784, !5785}
!5784 = !DILocalVariable(name: "size", arg: 1, scope: !5780, file: !4490, line: 230, type: !85)
!5785 = !DILocalVariable(name: "count", arg: 2, scope: !5780, file: !4490, line: 230, type: !278)
!5786 = !DILocation(line: 230, column: 38, scope: !5780)
!5787 = !DILocation(line: 230, column: 58, scope: !5780)
!5788 = !DILocation(line: 233, column: 19, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5780, file: !4490, line: 232, column: 6)
!5790 = !DILocation(line: 233, column: 25, scope: !5789)
!5791 = !DILocation(line: 233, column: 3, scope: !5789)
!5792 = !DILocation(line: 234, column: 1, scope: !5780)
!5793 = !DISubprogram(name: "__bad_copy_from", scope: !4490, file: !4490, line: 224, type: !2360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5794 = !DISubprogram(name: "__bad_copy_to", scope: !4490, file: !4490, line: 226, type: !2360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5795 = distinct !DISubprogram(name: "check_object_size", scope: !4490, file: !4490, line: 218, type: !5796, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5798)
!5796 = !DISubroutineType(types: !5797)
!5797 = !{null, !1237, !278, !840}
!5798 = !{!5799, !5800, !5801}
!5799 = !DILocalVariable(name: "ptr", arg: 1, scope: !5795, file: !4490, line: 218, type: !1237)
!5800 = !DILocalVariable(name: "n", arg: 2, scope: !5795, file: !4490, line: 218, type: !278)
!5801 = !DILocalVariable(name: "to_user", arg: 3, scope: !5795, file: !4490, line: 219, type: !840)
!5802 = !DILocation(line: 218, column: 50, scope: !5795)
!5803 = !DILocation(line: 218, column: 69, scope: !5795)
!5804 = !DILocation(line: 219, column: 15, scope: !5795)
!5805 = !DILocation(line: 220, column: 3, scope: !5795)
!5806 = !DISubprogram(name: "__copy_overflow", scope: !4490, file: !4490, line: 228, type: !5781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5807 = !DISubprogram(name: "_copy_from_user", scope: !5646, file: !5646, line: 158, type: !5647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5808 = distinct !DISubprogram(name: "compat_ptr", scope: !2538, file: !2538, line: 977, type: !5809, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5811)
!5809 = !DISubroutineType(types: !5810)
!5810 = !{!300, !2544}
!5811 = !{!5812}
!5812 = !DILocalVariable(name: "uptr", arg: 1, scope: !5808, file: !2538, line: 977, type: !2544)
!5813 = !DILocation(line: 977, column: 53, scope: !5808)
!5814 = !DILocation(line: 979, column: 39, scope: !5808)
!5815 = !DILocation(line: 979, column: 24, scope: !5808)
!5816 = !DILocation(line: 979, column: 9, scope: !5808)
!5817 = !DILocation(line: 979, column: 2, scope: !5808)
!5818 = distinct !DISubprogram(name: "test_and_set_bit_lock", scope: !5819, file: !5819, line: 55, type: !5820, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5823)
!5819 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3803e7a2bd2f2f2af55c89b50b84591")
!5820 = !DISubroutineType(types: !5821)
!5821 = !{!840, !264, !5822}
!5822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5823 = !{!5824, !5825}
!5824 = !DILocalVariable(name: "nr", arg: 1, scope: !5818, file: !5819, line: 55, type: !264)
!5825 = !DILocalVariable(name: "addr", arg: 2, scope: !5818, file: !5819, line: 55, type: !5822)
!5826 = !DILocation(line: 55, column: 47, scope: !5818)
!5827 = !DILocation(line: 55, column: 75, scope: !5818)
!5828 = !DILocation(line: 57, column: 31, scope: !5818)
!5829 = !DILocation(line: 57, column: 38, scope: !5818)
!5830 = !DILocation(line: 57, column: 36, scope: !5818)
!5831 = !DILocation(line: 57, column: 2, scope: !5818)
!5832 = !DILocation(line: 58, column: 36, scope: !5818)
!5833 = !DILocation(line: 58, column: 40, scope: !5818)
!5834 = !DILocation(line: 58, column: 9, scope: !5818)
!5835 = !DILocation(line: 58, column: 2, scope: !5818)
!5836 = distinct !DISubprogram(name: "arch_test_and_set_bit_lock", scope: !5522, file: !5522, line: 142, type: !5820, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5837)
!5837 = !{!5838, !5839}
!5838 = !DILocalVariable(name: "nr", arg: 1, scope: !5836, file: !5522, line: 142, type: !264)
!5839 = !DILocalVariable(name: "addr", arg: 2, scope: !5836, file: !5522, line: 142, type: !5822)
!5840 = !DILocation(line: 142, column: 33, scope: !5836)
!5841 = !DILocation(line: 142, column: 61, scope: !5836)
!5842 = !DILocation(line: 144, column: 31, scope: !5836)
!5843 = !DILocation(line: 144, column: 35, scope: !5836)
!5844 = !DILocation(line: 144, column: 9, scope: !5836)
!5845 = !DILocation(line: 144, column: 2, scope: !5836)
!5846 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !5522, file: !5522, line: 136, type: !5820, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5847)
!5847 = !{!5848, !5849, !5850}
!5848 = !DILocalVariable(name: "nr", arg: 1, scope: !5846, file: !5522, line: 136, type: !264)
!5849 = !DILocalVariable(name: "addr", arg: 2, scope: !5846, file: !5522, line: 136, type: !5822)
!5850 = !DILocalVariable(name: "c", scope: !5851, file: !5522, line: 138, type: !840)
!5851 = distinct !DILexicalBlock(scope: !5846, file: !5522, line: 138, column: 9)
!5852 = !DILocation(line: 136, column: 28, scope: !5846)
!5853 = !DILocation(line: 136, column: 56, scope: !5846)
!5854 = !DILocation(line: 138, column: 9, scope: !5851)
!5855 = !{i64 2148234716, i64 2148234755, i64 2148234776, i64 2148234813, i64 2148234836, i64 2148234845, i64 2148234948}
!5856 = !DILocation(line: 138, column: 9, scope: !5846)
!5857 = !DILocation(line: 138, column: 2, scope: !5846)
!5858 = distinct !DISubprogram(name: "clear_bit_unlock", scope: !5819, file: !5819, line: 23, type: !5859, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5861)
!5859 = !DISubroutineType(types: !5860)
!5860 = !{null, !264, !5822}
!5861 = !{!5862, !5863}
!5862 = !DILocalVariable(name: "nr", arg: 1, scope: !5858, file: !5819, line: 23, type: !264)
!5863 = !DILocalVariable(name: "addr", arg: 2, scope: !5858, file: !5819, line: 23, type: !5822)
!5864 = !DILocation(line: 23, column: 42, scope: !5858)
!5865 = !DILocation(line: 23, column: 70, scope: !5858)
!5866 = !DILocation(line: 25, column: 2, scope: !5858)
!5867 = !DILocation(line: 25, column: 2, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5858, file: !5819, line: 25, column: 2)
!5869 = !DILocation(line: 26, column: 26, scope: !5858)
!5870 = !DILocation(line: 26, column: 33, scope: !5858)
!5871 = !DILocation(line: 26, column: 31, scope: !5858)
!5872 = !DILocation(line: 26, column: 2, scope: !5858)
!5873 = !DILocation(line: 27, column: 24, scope: !5858)
!5874 = !DILocation(line: 27, column: 28, scope: !5858)
!5875 = !DILocation(line: 27, column: 2, scope: !5858)
!5876 = !DILocation(line: 28, column: 1, scope: !5858)
!5877 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5392, file: !5392, line: 80, type: !5393, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5878)
!5878 = !{!5879, !5880}
!5879 = !DILocalVariable(name: "v", arg: 1, scope: !5877, file: !5392, line: 80, type: !5395)
!5880 = !DILocalVariable(name: "size", arg: 2, scope: !5877, file: !5392, line: 80, type: !275)
!5881 = !DILocation(line: 80, column: 74, scope: !5877)
!5882 = !DILocation(line: 80, column: 84, scope: !5877)
!5883 = !DILocation(line: 82, column: 20, scope: !5877)
!5884 = !DILocation(line: 82, column: 23, scope: !5877)
!5885 = !DILocation(line: 82, column: 2, scope: !5877)
!5886 = !DILocation(line: 83, column: 2, scope: !5877)
!5887 = !DILocation(line: 84, column: 1, scope: !5877)
!5888 = distinct !DISubprogram(name: "arch_clear_bit_unlock", scope: !5522, file: !5522, line: 85, type: !5859, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5889)
!5889 = !{!5890, !5891}
!5890 = !DILocalVariable(name: "nr", arg: 1, scope: !5888, file: !5522, line: 85, type: !264)
!5891 = !DILocalVariable(name: "addr", arg: 2, scope: !5888, file: !5522, line: 85, type: !5822)
!5892 = !DILocation(line: 85, column: 28, scope: !5888)
!5893 = !DILocation(line: 85, column: 56, scope: !5888)
!5894 = !DILocation(line: 87, column: 2, scope: !5888)
!5895 = !{i64 2148230400}
!5896 = !DILocation(line: 88, column: 17, scope: !5888)
!5897 = !DILocation(line: 88, column: 21, scope: !5888)
!5898 = !DILocation(line: 88, column: 2, scope: !5888)
!5899 = !DILocation(line: 89, column: 1, scope: !5888)
!5900 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5522, file: !5522, line: 72, type: !5859, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5901)
!5901 = !{!5902, !5903}
!5902 = !DILocalVariable(name: "nr", arg: 1, scope: !5900, file: !5522, line: 72, type: !264)
!5903 = !DILocalVariable(name: "addr", arg: 2, scope: !5900, file: !5522, line: 72, type: !5822)
!5904 = !DILocation(line: 72, column: 21, scope: !5900)
!5905 = !DILocation(line: 72, column: 49, scope: !5900)
!5906 = !DILocation(line: 74, column: 27, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5900, file: !5522, line: 74, column: 6)
!5908 = !DILocation(line: 74, column: 6, scope: !5907)
!5909 = !DILocation(line: 74, column: 6, scope: !5900)
!5910 = !DILocation(line: 76, column: 6, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5907, file: !5522, line: 74, column: 32)
!5912 = !DILocation(line: 77, column: 13, scope: !5911)
!5913 = !DILocation(line: 77, column: 12, scope: !5911)
!5914 = !DILocation(line: 75, column: 3, scope: !5911)
!5915 = !{i64 2148229553, i64 2148229592, i64 2148229613, i64 2148229650, i64 2148229673, i64 2148229543}
!5916 = !DILocation(line: 78, column: 2, scope: !5911)
!5917 = !DILocation(line: 80, column: 8, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5907, file: !5522, line: 78, column: 9)
!5919 = !DILocation(line: 80, column: 32, scope: !5918)
!5920 = !DILocation(line: 79, column: 3, scope: !5918)
!5921 = !{i64 2148229838, i64 2148229877, i64 2148229898, i64 2148229935, i64 2148229958, i64 2148229828}
!5922 = !DILocation(line: 82, column: 1, scope: !5900)
!5923 = !DISubprogram(name: "fasync_helper", scope: !14, file: !14, line: 1095, type: !5924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5924 = !DISubroutineType(types: !5925)
!5925 = !{!85, !85, !968, !85, !5926}
!5926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
