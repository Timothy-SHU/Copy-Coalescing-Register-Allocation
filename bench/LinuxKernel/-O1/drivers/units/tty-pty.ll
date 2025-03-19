; ModuleID = 'drivers/tty/pty.c'
source_filename = "drivers/tty/pty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_pty__287_947_pty_init\22, \22a\22\09\09"
module asm "__initcall__kmod_pty__287_947_pty_init6:\09\09\09"
module asm ".long\09__initstub__kmod_pty__287_947_pty_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.pcpu_hot = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19, [16 x i8] }
%struct.anon.19 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.path = type { ptr, ptr }
%struct.tty_struct = type { %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, %struct.ld_semaphore, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, i32, %struct.winsize, %struct.anon.16, %struct.anon.17, i8, i8, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, ptr, %struct.list_head, %struct.work_struct }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.16 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.17 = type { ptr, ptr, %struct.spinlock, i8, i8, [0 x i64] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
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
%struct.tty_driver = type { %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.20, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.21, %struct.qspinlock }
%union.anon.21 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, ptr, %struct.anon.14, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.13, i32, i32, i32, i32, i32, i8, [3 x i8], [0 x i8] }
%union.anon.13 = type { ptr }
%struct.anon.14 = type { %union.anon.15, [0 x i8] }
%union.anon.15 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }

@ptm_driver = internal global ptr null, align 8, !dbg !0
@__UNIQUE_ID___addressable___initstub__kmod_pty__287_947_pty_init6288 = internal global ptr @__initstub__kmod_pty__287_947_pty_init6, section ".discard.addressable", align 8, !dbg !5073
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [36 x i8] c"Couldn't allocate Unix98 ptm driver\00", align 1, !dbg !5075
@pts_driver = internal global ptr null, align 8, !dbg !5113
@.str.1 = private unnamed_addr constant [36 x i8] c"Couldn't allocate Unix98 pts driver\00", align 1, !dbg !5080
@.str.2 = private unnamed_addr constant [11 x i8] c"pty_master\00", align 1, !dbg !5082
@.str.3 = private unnamed_addr constant [4 x i8] c"ptm\00", align 1, !dbg !5087
@tty_std_termios = external dso_local global %struct.ktermios, align 4
@ptm_unix98_ops = internal constant %struct.tty_operations { ptr @ptm_unix98_lookup, ptr @pty_unix98_install, ptr @pty_unix98_remove, ptr @pty_open, ptr @pty_close, ptr null, ptr @pty_cleanup, ptr @pty_write, ptr null, ptr null, ptr @pty_write_room, ptr null, ptr @pty_unix98_ioctl, ptr @pty_unix98_compat_ioctl, ptr null, ptr null, ptr @pty_unthrottle, ptr null, ptr null, ptr null, ptr null, ptr @pty_flush_buffer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pty_resize, ptr null, ptr null, ptr null, ptr @pty_show_fdinfo, ptr null }, align 8, !dbg !5115
@.str.4 = private unnamed_addr constant [10 x i8] c"pty_slave\00", align 1, !dbg !5090
@.str.5 = private unnamed_addr constant [4 x i8] c"pts\00", align 1, !dbg !5095
@pty_unix98_ops = internal constant %struct.tty_operations { ptr @pts_unix98_lookup, ptr @pty_unix98_install, ptr @pty_unix98_remove, ptr @pty_open, ptr @pty_close, ptr null, ptr @pty_cleanup, ptr @pty_write, ptr null, ptr null, ptr @pty_write_room, ptr null, ptr null, ptr null, ptr @pty_set_termios, ptr null, ptr @pty_unthrottle, ptr @pty_stop, ptr @pty_start, ptr null, ptr null, ptr @pty_flush_buffer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5134
@.str.6 = private unnamed_addr constant [36 x i8] c"Couldn't register Unix98 ptm driver\00", align 1, !dbg !5097
@.str.7 = private unnamed_addr constant [36 x i8] c"Couldn't register Unix98 pts driver\00", align 1, !dbg !5099
@ptmx_fops = internal global %struct.file_operations zeroinitializer, section ".data..ro_after_init", align 8, !dbg !5136
@ptmx_cdev = internal global %struct.cdev zeroinitializer, align 8, !dbg !5138
@.str.8 = private unnamed_addr constant [10 x i8] c"/dev/ptmx\00", align 1, !dbg !5101
@.str.9 = private unnamed_addr constant [35 x i8] c"Couldn't register /dev/ptmx driver\00", align 1, !dbg !5103
@tty_class = external dso_local constant %struct.class, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"ptmx\00", align 1, !dbg !5108
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.11 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5117
@.str.12 = private unnamed_addr constant [18 x i8] c"drivers/tty/pty.c\00", align 1, !dbg !5122
@devpts_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devpts_mutex, i64 16), ptr getelementptr (i8, ptr @devpts_mutex, i64 16) } }, align 8, !dbg !5127
@.str.13 = private unnamed_addr constant [15 x i8] c"tty-index:\09%d\0A\00", align 1, !dbg !5129
@tty_mutex = external dso_local global %struct.mutex, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_pty__287_947_pty_init6288], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ptm_open_peer(ptr noundef %master, ptr noundef %tty, i32 noundef %flags) #0 align 16 !dbg !5150 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca ptr, align 8
  %tty.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %filp = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %path = alloca %struct.path, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %master, ptr %master.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %master.addr, metadata !5154, metadata !DIExpression()), !dbg !5163
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5155, metadata !DIExpression()), !dbg !5164
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5156, metadata !DIExpression()), !dbg !5165
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #19, !dbg !5166
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !5157, metadata !DIExpression()), !dbg !5167
  call void @llvm.lifetime.start.p0(i64 8, ptr %filp) #19, !dbg !5168
  call void @llvm.dbg.declare(metadata ptr %filp, metadata !5158, metadata !DIExpression()), !dbg !5169
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #19, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5159, metadata !DIExpression()), !dbg !5171
  store i32 -22, ptr %retval1, align 4, !dbg !5171
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #19, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %path, metadata !5160, metadata !DIExpression()), !dbg !5173
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5174
  %driver = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3, !dbg !5176
  %1 = load ptr, ptr %driver, align 8, !dbg !5176
  %2 = load ptr, ptr @ptm_driver, align 8, !dbg !5177
  %cmp = icmp ne ptr %1, %2, !dbg !5178
  br i1 %cmp, label %if.then, label %if.end, !dbg !5179

if.then:                                          ; preds = %entry
  store i32 -5, ptr %retval, align 4, !dbg !5180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5180

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %flags.addr, align 4, !dbg !5181
  %call = call i32 @get_unused_fd_flags(i32 noundef %3) #20, !dbg !5182
  store i32 %call, ptr %fd, align 4, !dbg !5183
  %4 = load i32, ptr %fd, align 4, !dbg !5184
  %cmp2 = icmp slt i32 %4, 0, !dbg !5186
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5187

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %fd, align 4, !dbg !5188
  store i32 %5, ptr %retval1, align 4, !dbg !5190
  br label %err, !dbg !5191

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %master.addr, align 8, !dbg !5192
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !5193
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 31, !dbg !5194
  %8 = load ptr, ptr %driver_data, align 8, !dbg !5194
  %call5 = call ptr @devpts_mntget(ptr noundef %6, ptr noundef %8) #20, !dbg !5195
  %mnt = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !5196
  store ptr %call5, ptr %mnt, align 8, !dbg !5197
  %mnt6 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !5198
  %9 = load ptr, ptr %mnt6, align 8, !dbg !5198
  %call7 = call zeroext i1 @IS_ERR(ptr noundef %9) #20, !dbg !5200
  br i1 %call7, label %if.then8, label %if.end11, !dbg !5201

if.then8:                                         ; preds = %if.end4
  %mnt9 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !5202
  %10 = load ptr, ptr %mnt9, align 8, !dbg !5202
  %call10 = call i64 @PTR_ERR(ptr noundef %10) #20, !dbg !5204
  %conv = trunc i64 %call10 to i32, !dbg !5204
  store i32 %conv, ptr %retval1, align 4, !dbg !5205
  br label %err_put, !dbg !5206

if.end11:                                         ; preds = %if.end4
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !5207
  %link = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 25, !dbg !5208
  %12 = load ptr, ptr %link, align 8, !dbg !5208
  %driver_data12 = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 31, !dbg !5209
  %13 = load ptr, ptr %driver_data12, align 8, !dbg !5209
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !5210
  store ptr %13, ptr %dentry, align 8, !dbg !5211
  %14 = load i32, ptr %flags.addr, align 4, !dbg !5212
  br label %do.body, !dbg !5213

do.body:                                          ; preds = %if.end11
  br label %do.cond, !dbg !5215

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5215

do.end:                                           ; preds = %do.cond
  %call13 = call ptr @get_current() #20, !dbg !5213
  %cred = getelementptr inbounds %struct.task_struct, ptr %call13, i32 0, i32 94, !dbg !5213
  %15 = load ptr, ptr %cred, align 32, !dbg !5213
  store ptr %15, ptr %tmp, align 8, !dbg !5215
  %16 = load ptr, ptr %tmp, align 8, !dbg !5213
  %call14 = call ptr @dentry_open(ptr noundef %path, i32 noundef %14, ptr noundef %16) #20, !dbg !5217
  store ptr %call14, ptr %filp, align 8, !dbg !5218
  %mnt15 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !5219
  %17 = load ptr, ptr %mnt15, align 8, !dbg !5219
  call void @mntput(ptr noundef %17) #20, !dbg !5220
  %18 = load ptr, ptr %filp, align 8, !dbg !5221
  %call16 = call zeroext i1 @IS_ERR(ptr noundef %18) #20, !dbg !5223
  br i1 %call16, label %if.then17, label %if.end20, !dbg !5224

if.then17:                                        ; preds = %do.end
  %19 = load ptr, ptr %filp, align 8, !dbg !5225
  %call18 = call i64 @PTR_ERR(ptr noundef %19) #20, !dbg !5227
  %conv19 = trunc i64 %call18 to i32, !dbg !5227
  store i32 %conv19, ptr %retval1, align 4, !dbg !5228
  br label %err_put, !dbg !5229

if.end20:                                         ; preds = %do.end
  %20 = load i32, ptr %fd, align 4, !dbg !5230
  %21 = load ptr, ptr %filp, align 8, !dbg !5231
  call void @fd_install(i32 noundef %20, ptr noundef %21) #20, !dbg !5232
  %22 = load i32, ptr %fd, align 4, !dbg !5233
  store i32 %22, ptr %retval, align 4, !dbg !5234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5234

err_put:                                          ; preds = %if.then17, %if.then8
  call void @llvm.dbg.label(metadata !5161), !dbg !5235
  %23 = load i32, ptr %fd, align 4, !dbg !5236
  call void @put_unused_fd(i32 noundef %23) #20, !dbg !5237
  br label %err, !dbg !5237

err:                                              ; preds = %err_put, %if.then3
  call void @llvm.dbg.label(metadata !5162), !dbg !5238
  %24 = load i32, ptr %retval1, align 4, !dbg !5239
  store i32 %24, ptr %retval, align 4, !dbg !5240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5240

cleanup:                                          ; preds = %err, %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #19, !dbg !5241
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #19, !dbg !5241
  call void @llvm.lifetime.end.p0(i64 8, ptr %filp) #19, !dbg !5241
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #19, !dbg !5241
  %25 = load i32, ptr %retval, align 4, !dbg !5241
  ret i32 %25, !dbg !5241
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5242 dso_local i32 @get_unused_fd_flags(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5246 dso_local ptr @devpts_mntget(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !5252 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5257, metadata !DIExpression()), !dbg !5258
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5259
  %1 = ptrtoint ptr %0 to i64, !dbg !5259
  %2 = inttoptr i64 %1 to ptr, !dbg !5259
  %3 = ptrtoint ptr %2 to i64, !dbg !5259
  %cmp = icmp uge i64 %3, -4095, !dbg !5259
  %lnot = xor i1 %cmp, true, !dbg !5259
  %lnot1 = xor i1 %lnot, true, !dbg !5259
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5259
  %conv = sext i32 %lnot.ext to i64, !dbg !5259
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5259
  %tobool = icmp ne i64 %expval, 0, !dbg !5259
  ret i1 %tobool, !dbg !5260
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !5261 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5267
  %1 = ptrtoint ptr %0 to i64, !dbg !5268
  ret i64 %1, !dbg !5269
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5270 dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !5273 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #19, !dbg !5284
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5278, metadata !DIExpression()), !dbg !5284
  br label %do.body, !dbg !5284

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5280, metadata !DIExpression()), !dbg !5285
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5285
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5285
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5284
  br label %do.cond, !dbg !5285

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5285

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #19, !dbg !5286
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5282, metadata !DIExpression()), !dbg !5286
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #21, !dbg !5286, !srcloc !5287
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5286
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5286
  %3 = inttoptr i64 %2 to ptr, !dbg !5286
  store ptr %3, ptr %tmp, align 8, !dbg !5286
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #19, !dbg !5284
  %4 = load ptr, ptr %tmp, align 8, !dbg !5286
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5284
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5284
  store ptr %5, ptr %tmp1, align 8, !dbg !5284
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #19, !dbg !5288
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5284
  ret ptr %6, !dbg !5289
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5290 dso_local void @mntput(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5293 dso_local void @fd_install(i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5296 dso_local void @put_unused_fd(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_pty__287_947_pty_init6() #6 section ".init.text" align 16 !dbg !5299 {
entry:
  %call = call i32 @pty_init() #22, !dbg !5300
  ret i32 %call, !dbg !5300
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pty_init() #6 section ".init.text" align 16 !dbg !5301 {
entry:
  call void @legacy_pty_init() #20, !dbg !5302
  call void @unix98_pty_init() #22, !dbg !5303
  ret i32 0, !dbg !5304
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @legacy_pty_init() #4 align 16 !dbg !5305 {
entry:
  ret void, !dbg !5306
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @unix98_pty_init() #6 section ".init.text" align 16 !dbg !5307 {
entry:
  %call = call ptr @__tty_alloc_driver(i32 noundef 1048576, ptr noundef null, i64 noundef 94) #20, !dbg !5308
  store ptr %call, ptr @ptm_driver, align 8, !dbg !5309
  %0 = load ptr, ptr @ptm_driver, align 8, !dbg !5310
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %0) #20, !dbg !5312
  br i1 %call1, label %if.then, label %if.end, !dbg !5313

if.then:                                          ; preds = %entry
  call void (ptr, ...) @panic(ptr noundef @.str) #23, !dbg !5314
  unreachable, !dbg !5314

if.end:                                           ; preds = %entry
  %call2 = call ptr @__tty_alloc_driver(i32 noundef 1048576, ptr noundef null, i64 noundef 94) #20, !dbg !5315
  store ptr %call2, ptr @pts_driver, align 8, !dbg !5316
  %1 = load ptr, ptr @pts_driver, align 8, !dbg !5317
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %1) #20, !dbg !5319
  br i1 %call3, label %if.then4, label %if.end5, !dbg !5320

if.then4:                                         ; preds = %if.end
  call void (ptr, ...) @panic(ptr noundef @.str.1) #23, !dbg !5321
  unreachable, !dbg !5321

if.end5:                                          ; preds = %if.end
  %2 = load ptr, ptr @ptm_driver, align 8, !dbg !5322
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %2, i32 0, i32 3, !dbg !5323
  store ptr @.str.2, ptr %driver_name, align 8, !dbg !5324
  %3 = load ptr, ptr @ptm_driver, align 8, !dbg !5325
  %name = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 4, !dbg !5326
  store ptr @.str.3, ptr %name, align 8, !dbg !5327
  %4 = load ptr, ptr @ptm_driver, align 8, !dbg !5328
  %major = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 6, !dbg !5329
  store i32 128, ptr %major, align 4, !dbg !5330
  %5 = load ptr, ptr @ptm_driver, align 8, !dbg !5331
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 7, !dbg !5332
  store i32 0, ptr %minor_start, align 8, !dbg !5333
  %6 = load ptr, ptr @ptm_driver, align 8, !dbg !5334
  %type = getelementptr inbounds %struct.tty_driver, ptr %6, i32 0, i32 9, !dbg !5335
  store i16 4, ptr %type, align 8, !dbg !5336
  %7 = load ptr, ptr @ptm_driver, align 8, !dbg !5337
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %7, i32 0, i32 10, !dbg !5338
  store i16 1, ptr %subtype, align 2, !dbg !5339
  %8 = load ptr, ptr @ptm_driver, align 8, !dbg !5340
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %8, i32 0, i32 11, !dbg !5341
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %init_termios, ptr align 4 @tty_std_termios, i64 44, i1 false), !dbg !5342
  %9 = load ptr, ptr @ptm_driver, align 8, !dbg !5343
  %init_termios6 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 11, !dbg !5344
  %c_iflag = getelementptr inbounds %struct.ktermios, ptr %init_termios6, i32 0, i32 0, !dbg !5345
  store i32 0, ptr %c_iflag, align 4, !dbg !5346
  %10 = load ptr, ptr @ptm_driver, align 8, !dbg !5347
  %init_termios7 = getelementptr inbounds %struct.tty_driver, ptr %10, i32 0, i32 11, !dbg !5348
  %c_oflag = getelementptr inbounds %struct.ktermios, ptr %init_termios7, i32 0, i32 1, !dbg !5349
  store i32 0, ptr %c_oflag, align 4, !dbg !5350
  %11 = load ptr, ptr @ptm_driver, align 8, !dbg !5351
  %init_termios8 = getelementptr inbounds %struct.tty_driver, ptr %11, i32 0, i32 11, !dbg !5352
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %init_termios8, i32 0, i32 2, !dbg !5353
  store i32 191, ptr %c_cflag, align 4, !dbg !5354
  %12 = load ptr, ptr @ptm_driver, align 8, !dbg !5355
  %init_termios9 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 11, !dbg !5356
  %c_lflag = getelementptr inbounds %struct.ktermios, ptr %init_termios9, i32 0, i32 3, !dbg !5357
  store i32 0, ptr %c_lflag, align 4, !dbg !5358
  %13 = load ptr, ptr @ptm_driver, align 8, !dbg !5359
  %init_termios10 = getelementptr inbounds %struct.tty_driver, ptr %13, i32 0, i32 11, !dbg !5360
  %c_ispeed = getelementptr inbounds %struct.ktermios, ptr %init_termios10, i32 0, i32 6, !dbg !5361
  store i32 38400, ptr %c_ispeed, align 4, !dbg !5362
  %14 = load ptr, ptr @ptm_driver, align 8, !dbg !5363
  %init_termios11 = getelementptr inbounds %struct.tty_driver, ptr %14, i32 0, i32 11, !dbg !5364
  %c_ospeed = getelementptr inbounds %struct.ktermios, ptr %init_termios11, i32 0, i32 7, !dbg !5365
  store i32 38400, ptr %c_ospeed, align 4, !dbg !5366
  %15 = load ptr, ptr @pts_driver, align 8, !dbg !5367
  %16 = load ptr, ptr @ptm_driver, align 8, !dbg !5368
  %other = getelementptr inbounds %struct.tty_driver, ptr %16, i32 0, i32 14, !dbg !5369
  store ptr %15, ptr %other, align 8, !dbg !5370
  %17 = load ptr, ptr @ptm_driver, align 8, !dbg !5371
  call void @tty_set_operations(ptr noundef %17, ptr noundef @ptm_unix98_ops) #20, !dbg !5372
  %18 = load ptr, ptr @pts_driver, align 8, !dbg !5373
  %driver_name12 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 3, !dbg !5374
  store ptr @.str.4, ptr %driver_name12, align 8, !dbg !5375
  %19 = load ptr, ptr @pts_driver, align 8, !dbg !5376
  %name13 = getelementptr inbounds %struct.tty_driver, ptr %19, i32 0, i32 4, !dbg !5377
  store ptr @.str.5, ptr %name13, align 8, !dbg !5378
  %20 = load ptr, ptr @pts_driver, align 8, !dbg !5379
  %major14 = getelementptr inbounds %struct.tty_driver, ptr %20, i32 0, i32 6, !dbg !5380
  store i32 136, ptr %major14, align 4, !dbg !5381
  %21 = load ptr, ptr @pts_driver, align 8, !dbg !5382
  %minor_start15 = getelementptr inbounds %struct.tty_driver, ptr %21, i32 0, i32 7, !dbg !5383
  store i32 0, ptr %minor_start15, align 8, !dbg !5384
  %22 = load ptr, ptr @pts_driver, align 8, !dbg !5385
  %type16 = getelementptr inbounds %struct.tty_driver, ptr %22, i32 0, i32 9, !dbg !5386
  store i16 4, ptr %type16, align 8, !dbg !5387
  %23 = load ptr, ptr @pts_driver, align 8, !dbg !5388
  %subtype17 = getelementptr inbounds %struct.tty_driver, ptr %23, i32 0, i32 10, !dbg !5389
  store i16 2, ptr %subtype17, align 2, !dbg !5390
  %24 = load ptr, ptr @pts_driver, align 8, !dbg !5391
  %init_termios18 = getelementptr inbounds %struct.tty_driver, ptr %24, i32 0, i32 11, !dbg !5392
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %init_termios18, ptr align 4 @tty_std_termios, i64 44, i1 false), !dbg !5393
  %25 = load ptr, ptr @pts_driver, align 8, !dbg !5394
  %init_termios19 = getelementptr inbounds %struct.tty_driver, ptr %25, i32 0, i32 11, !dbg !5395
  %c_cflag20 = getelementptr inbounds %struct.ktermios, ptr %init_termios19, i32 0, i32 2, !dbg !5396
  store i32 191, ptr %c_cflag20, align 4, !dbg !5397
  %26 = load ptr, ptr @pts_driver, align 8, !dbg !5398
  %init_termios21 = getelementptr inbounds %struct.tty_driver, ptr %26, i32 0, i32 11, !dbg !5399
  %c_ispeed22 = getelementptr inbounds %struct.ktermios, ptr %init_termios21, i32 0, i32 6, !dbg !5400
  store i32 38400, ptr %c_ispeed22, align 4, !dbg !5401
  %27 = load ptr, ptr @pts_driver, align 8, !dbg !5402
  %init_termios23 = getelementptr inbounds %struct.tty_driver, ptr %27, i32 0, i32 11, !dbg !5403
  %c_ospeed24 = getelementptr inbounds %struct.ktermios, ptr %init_termios23, i32 0, i32 7, !dbg !5404
  store i32 38400, ptr %c_ospeed24, align 4, !dbg !5405
  %28 = load ptr, ptr @ptm_driver, align 8, !dbg !5406
  %29 = load ptr, ptr @pts_driver, align 8, !dbg !5407
  %other25 = getelementptr inbounds %struct.tty_driver, ptr %29, i32 0, i32 14, !dbg !5408
  store ptr %28, ptr %other25, align 8, !dbg !5409
  %30 = load ptr, ptr @pts_driver, align 8, !dbg !5410
  call void @tty_set_operations(ptr noundef %30, ptr noundef @pty_unix98_ops) #20, !dbg !5411
  %31 = load ptr, ptr @ptm_driver, align 8, !dbg !5412
  %call26 = call i32 @tty_register_driver(ptr noundef %31) #20, !dbg !5414
  %tobool = icmp ne i32 %call26, 0, !dbg !5414
  br i1 %tobool, label %if.then27, label %if.end28, !dbg !5415

if.then27:                                        ; preds = %if.end5
  call void (ptr, ...) @panic(ptr noundef @.str.6) #23, !dbg !5416
  unreachable, !dbg !5416

if.end28:                                         ; preds = %if.end5
  %32 = load ptr, ptr @pts_driver, align 8, !dbg !5417
  %call29 = call i32 @tty_register_driver(ptr noundef %32) #20, !dbg !5419
  %tobool30 = icmp ne i32 %call29, 0, !dbg !5419
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !5420

if.then31:                                        ; preds = %if.end28
  call void (ptr, ...) @panic(ptr noundef @.str.7) #23, !dbg !5421
  unreachable, !dbg !5421

if.end32:                                         ; preds = %if.end28
  call void @tty_default_fops(ptr noundef @ptmx_fops) #20, !dbg !5422
  store ptr @ptmx_open, ptr getelementptr inbounds (%struct.file_operations, ptr @ptmx_fops, i32 0, i32 13), align 8, !dbg !5423
  call void @cdev_init(ptr noundef @ptmx_cdev, ptr noundef @ptmx_fops) #20, !dbg !5424
  %call33 = call i32 @cdev_add(ptr noundef @ptmx_cdev, i32 noundef 5242882, i32 noundef 1) #20, !dbg !5425
  %tobool34 = icmp ne i32 %call33, 0, !dbg !5425
  br i1 %tobool34, label %if.then36, label %lor.lhs.false, !dbg !5427

lor.lhs.false:                                    ; preds = %if.end32
  %call35 = call i32 @register_chrdev_region(i32 noundef 5242882, i32 noundef 1, ptr noundef @.str.8) #20, !dbg !5428
  %cmp = icmp slt i32 %call35, 0, !dbg !5429
  br i1 %cmp, label %if.then36, label %if.end37, !dbg !5430

if.then36:                                        ; preds = %lor.lhs.false, %if.end32
  call void (ptr, ...) @panic(ptr noundef @.str.9) #23, !dbg !5431
  unreachable, !dbg !5431

if.end37:                                         ; preds = %lor.lhs.false
  %call38 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef @tty_class, ptr noundef null, i32 noundef 5242882, ptr noundef null, ptr noundef @.str.10) #20, !dbg !5432
  ret void, !dbg !5433
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5434 dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !5437 dso_local void @panic(ptr noundef, ...) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_set_operations(ptr noundef %driver, ptr noundef %op) #4 align 16 !dbg !5441 {
entry:
  %driver.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !5445, metadata !DIExpression()), !dbg !5447
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5446, metadata !DIExpression()), !dbg !5448
  %0 = load ptr, ptr %op.addr, align 8, !dbg !5449
  %1 = load ptr, ptr %driver.addr, align 8, !dbg !5450
  %ops = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 19, !dbg !5451
  store ptr %0, ptr %ops, align 8, !dbg !5452
  ret void, !dbg !5453
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5454 dso_local i32 @tty_register_driver(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5457 dso_local void @tty_default_fops(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptmx_open(ptr noundef %inode, ptr noundef %filp) #0 align 16 !dbg !5462 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  %fsi = alloca ptr, align 8
  %tty = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5464, metadata !DIExpression()), !dbg !5475
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5465, metadata !DIExpression()), !dbg !5476
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #19, !dbg !5477
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !5466, metadata !DIExpression()), !dbg !5478
  call void @llvm.lifetime.start.p0(i64 8, ptr %tty) #19, !dbg !5479
  call void @llvm.dbg.declare(metadata ptr %tty, metadata !5467, metadata !DIExpression()), !dbg !5480
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #19, !dbg !5481
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !5468, metadata !DIExpression()), !dbg !5482
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #19, !dbg !5483
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5469, metadata !DIExpression()), !dbg !5484
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !5485
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5470, metadata !DIExpression()), !dbg !5486
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5487
  %1 = load ptr, ptr %filp.addr, align 8, !dbg !5488
  %call = call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #20, !dbg !5489
  %2 = load ptr, ptr %filp.addr, align 8, !dbg !5490
  %f_mode = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2, !dbg !5491
  %3 = load i32, ptr %f_mode, align 4, !dbg !5492
  %or = or i32 %3, 67108864, !dbg !5492
  store i32 %or, ptr %f_mode, align 4, !dbg !5492
  %4 = load ptr, ptr %filp.addr, align 8, !dbg !5493
  %call2 = call i32 @tty_alloc_file(ptr noundef %4) #20, !dbg !5494
  store i32 %call2, ptr %retval1, align 4, !dbg !5495
  %5 = load i32, ptr %retval1, align 4, !dbg !5496
  %tobool = icmp ne i32 %5, 0, !dbg !5496
  br i1 %tobool, label %if.then, label %if.end, !dbg !5498

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %retval1, align 4, !dbg !5499
  store i32 %6, ptr %retval, align 4, !dbg !5500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5500

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %filp.addr, align 8, !dbg !5501
  %call3 = call ptr @devpts_acquire(ptr noundef %7) #20, !dbg !5502
  store ptr %call3, ptr %fsi, align 8, !dbg !5503
  %8 = load ptr, ptr %fsi, align 8, !dbg !5504
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %8) #20, !dbg !5506
  br i1 %call4, label %if.then5, label %if.end7, !dbg !5507

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %fsi, align 8, !dbg !5508
  %call6 = call i64 @PTR_ERR(ptr noundef %9) #20, !dbg !5510
  %conv = trunc i64 %call6 to i32, !dbg !5510
  store i32 %conv, ptr %retval1, align 4, !dbg !5511
  br label %out_free_file, !dbg !5512

if.end7:                                          ; preds = %if.end
  call void @mutex_lock(ptr noundef @devpts_mutex) #20, !dbg !5513
  %10 = load ptr, ptr %fsi, align 8, !dbg !5514
  %call8 = call i32 @devpts_new_index(ptr noundef %10) #20, !dbg !5515
  store i32 %call8, ptr %index, align 4, !dbg !5516
  call void @mutex_unlock(ptr noundef @devpts_mutex) #20, !dbg !5517
  %11 = load i32, ptr %index, align 4, !dbg !5518
  store i32 %11, ptr %retval1, align 4, !dbg !5519
  %12 = load i32, ptr %index, align 4, !dbg !5520
  %cmp = icmp slt i32 %12, 0, !dbg !5522
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !5523

if.then10:                                        ; preds = %if.end7
  br label %out_put_fsi, !dbg !5524

if.end11:                                         ; preds = %if.end7
  call void @mutex_lock(ptr noundef @tty_mutex) #20, !dbg !5525
  %13 = load ptr, ptr @ptm_driver, align 8, !dbg !5526
  %14 = load i32, ptr %index, align 4, !dbg !5527
  %call12 = call ptr @tty_init_dev(ptr noundef %13, i32 noundef %14) #20, !dbg !5528
  store ptr %call12, ptr %tty, align 8, !dbg !5529
  call void @mutex_unlock(ptr noundef @tty_mutex) #20, !dbg !5530
  %15 = load ptr, ptr %tty, align 8, !dbg !5531
  %call13 = call i64 @PTR_ERR(ptr noundef %15) #20, !dbg !5532
  %conv14 = trunc i64 %call13 to i32, !dbg !5532
  store i32 %conv14, ptr %retval1, align 4, !dbg !5533
  %16 = load ptr, ptr %tty, align 8, !dbg !5534
  %call15 = call zeroext i1 @IS_ERR(ptr noundef %16) #20, !dbg !5536
  br i1 %call15, label %if.then16, label %if.end17, !dbg !5537

if.then16:                                        ; preds = %if.end11
  br label %out, !dbg !5538

if.end17:                                         ; preds = %if.end11
  %17 = load ptr, ptr %tty, align 8, !dbg !5539
  %flags = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 16, !dbg !5540
  call void @set_bit(i64 noundef 16, ptr noundef %flags) #20, !dbg !5541
  %18 = load ptr, ptr %fsi, align 8, !dbg !5542
  %19 = load ptr, ptr %tty, align 8, !dbg !5543
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 31, !dbg !5544
  store ptr %18, ptr %driver_data, align 8, !dbg !5545
  %20 = load ptr, ptr %tty, align 8, !dbg !5546
  %21 = load ptr, ptr %filp.addr, align 8, !dbg !5547
  call void @tty_add_file(ptr noundef %20, ptr noundef %21) #20, !dbg !5548
  %22 = load ptr, ptr %fsi, align 8, !dbg !5549
  %23 = load i32, ptr %index, align 4, !dbg !5550
  %24 = load ptr, ptr %tty, align 8, !dbg !5551
  %link = getelementptr inbounds %struct.tty_struct, ptr %24, i32 0, i32 25, !dbg !5552
  %25 = load ptr, ptr %link, align 8, !dbg !5552
  %call18 = call ptr @devpts_pty_new(ptr noundef %22, i32 noundef %23, ptr noundef %25) #20, !dbg !5553
  store ptr %call18, ptr %dentry, align 8, !dbg !5554
  %26 = load ptr, ptr %dentry, align 8, !dbg !5555
  %call19 = call zeroext i1 @IS_ERR(ptr noundef %26) #20, !dbg !5557
  br i1 %call19, label %if.then20, label %if.end23, !dbg !5558

if.then20:                                        ; preds = %if.end17
  %27 = load ptr, ptr %dentry, align 8, !dbg !5559
  %call21 = call i64 @PTR_ERR(ptr noundef %27) #20, !dbg !5561
  %conv22 = trunc i64 %call21 to i32, !dbg !5561
  store i32 %conv22, ptr %retval1, align 4, !dbg !5562
  br label %err_release, !dbg !5563

if.end23:                                         ; preds = %if.end17
  %28 = load ptr, ptr %dentry, align 8, !dbg !5564
  %29 = load ptr, ptr %tty, align 8, !dbg !5565
  %link24 = getelementptr inbounds %struct.tty_struct, ptr %29, i32 0, i32 25, !dbg !5566
  %30 = load ptr, ptr %link24, align 8, !dbg !5566
  %driver_data25 = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 31, !dbg !5567
  store ptr %28, ptr %driver_data25, align 8, !dbg !5568
  %31 = load ptr, ptr @ptm_driver, align 8, !dbg !5569
  %ops = getelementptr inbounds %struct.tty_driver, ptr %31, i32 0, i32 19, !dbg !5570
  %32 = load ptr, ptr %ops, align 8, !dbg !5570
  %open = getelementptr inbounds %struct.tty_operations, ptr %32, i32 0, i32 3, !dbg !5571
  %33 = load ptr, ptr %open, align 8, !dbg !5571
  %34 = load ptr, ptr %tty, align 8, !dbg !5572
  %35 = load ptr, ptr %filp.addr, align 8, !dbg !5573
  %call26 = call i32 %33(ptr noundef %34, ptr noundef %35) #20, !dbg !5569
  store i32 %call26, ptr %retval1, align 4, !dbg !5574
  %36 = load i32, ptr %retval1, align 4, !dbg !5575
  %tobool27 = icmp ne i32 %36, 0, !dbg !5575
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5577

if.then28:                                        ; preds = %if.end23
  br label %err_release, !dbg !5578

if.end29:                                         ; preds = %if.end23
  br label %do.body, !dbg !5579

do.body:                                          ; preds = %if.end29
  br label %do.cond, !dbg !5580

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5580

do.end:                                           ; preds = %do.cond
  %37 = load ptr, ptr %tty, align 8, !dbg !5582
  call void @tty_unlock(ptr noundef %37) #20, !dbg !5583
  store i32 0, ptr %retval, align 4, !dbg !5584
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5584

err_release:                                      ; preds = %if.then28, %if.then20
  call void @llvm.dbg.label(metadata !5471), !dbg !5585
  %38 = load ptr, ptr %tty, align 8, !dbg !5586
  call void @tty_unlock(ptr noundef %38) #20, !dbg !5587
  %39 = load ptr, ptr %inode.addr, align 8, !dbg !5588
  %40 = load ptr, ptr %filp.addr, align 8, !dbg !5589
  %call30 = call i32 @tty_release(ptr noundef %39, ptr noundef %40) #20, !dbg !5590
  %41 = load i32, ptr %retval1, align 4, !dbg !5591
  store i32 %41, ptr %retval, align 4, !dbg !5592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5592

out:                                              ; preds = %if.then16
  call void @llvm.dbg.label(metadata !5472), !dbg !5593
  %42 = load ptr, ptr %fsi, align 8, !dbg !5594
  %43 = load i32, ptr %index, align 4, !dbg !5595
  call void @devpts_kill_index(ptr noundef %42, i32 noundef %43) #20, !dbg !5596
  br label %out_put_fsi, !dbg !5596

out_put_fsi:                                      ; preds = %out, %if.then10
  call void @llvm.dbg.label(metadata !5473), !dbg !5597
  %44 = load ptr, ptr %fsi, align 8, !dbg !5598
  call void @devpts_release(ptr noundef %44) #20, !dbg !5599
  br label %out_free_file, !dbg !5599

out_free_file:                                    ; preds = %out_put_fsi, %if.then5
  call void @llvm.dbg.label(metadata !5474), !dbg !5600
  %45 = load ptr, ptr %filp.addr, align 8, !dbg !5601
  call void @tty_free_file(ptr noundef %45) #20, !dbg !5602
  %46 = load i32, ptr %retval1, align 4, !dbg !5603
  store i32 %46, ptr %retval, align 4, !dbg !5604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5604

cleanup:                                          ; preds = %out_free_file, %err_release, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !5605
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #19, !dbg !5605
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #19, !dbg !5605
  call void @llvm.lifetime.end.p0(i64 8, ptr %tty) #19, !dbg !5605
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #19, !dbg !5605
  %47 = load i32, ptr %retval, align 4, !dbg !5605
  ret i32 %47, !dbg !5605
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5606 dso_local void @cdev_init(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5609 dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5612 dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5615 dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ptm_unix98_lookup(ptr noundef %driver, ptr noundef %file, i32 noundef %idx) #0 align 16 !dbg !5618 {
entry:
  %driver.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !5620, metadata !DIExpression()), !dbg !5623
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5621, metadata !DIExpression()), !dbg !5624
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5622, metadata !DIExpression()), !dbg !5625
  %call = call ptr @ERR_PTR(i64 noundef -5) #20, !dbg !5626
  ret ptr %call, !dbg !5627
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pty_unix98_install(ptr noundef %driver, ptr noundef %tty) #0 align 16 !dbg !5628 {
entry:
  %driver.addr = alloca ptr, align 8
  %tty.addr = alloca ptr, align 8
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !5630, metadata !DIExpression()), !dbg !5632
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5631, metadata !DIExpression()), !dbg !5633
  %0 = load ptr, ptr %driver.addr, align 8, !dbg !5634
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5635
  %call = call i32 @pty_common_install(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) #20, !dbg !5636
  ret i32 %call, !dbg !5637
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pty_unix98_remove(ptr noundef %driver, ptr noundef %tty) #0 align 16 !dbg !5638 {
entry:
  %driver.addr = alloca ptr, align 8
  %tty.addr = alloca ptr, align 8
  %fsi = alloca ptr, align 8
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !5640, metadata !DIExpression()), !dbg !5643
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5641, metadata !DIExpression()), !dbg !5644
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #19, !dbg !5645
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !5642, metadata !DIExpression()), !dbg !5646
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5647
  %driver1 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3, !dbg !5649
  %1 = load ptr, ptr %driver1, align 8, !dbg !5649
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 10, !dbg !5650
  %2 = load i16, ptr %subtype, align 2, !dbg !5650
  %conv = sext i16 %2 to i32, !dbg !5647
  %cmp = icmp eq i32 %conv, 1, !dbg !5651
  br i1 %cmp, label %if.then, label %if.else, !dbg !5652

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5653
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 31, !dbg !5654
  %4 = load ptr, ptr %driver_data, align 8, !dbg !5654
  store ptr %4, ptr %fsi, align 8, !dbg !5655
  br label %if.end, !dbg !5656

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !5657
  %link = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 25, !dbg !5658
  %6 = load ptr, ptr %link, align 8, !dbg !5658
  %driver_data3 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 31, !dbg !5659
  %7 = load ptr, ptr %driver_data3, align 8, !dbg !5659
  store ptr %7, ptr %fsi, align 8, !dbg !5660
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %fsi, align 8, !dbg !5661
  %tobool = icmp ne ptr %8, null, !dbg !5661
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !5663

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %fsi, align 8, !dbg !5664
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !5666
  %index = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 1, !dbg !5667
  %11 = load i32, ptr %index, align 4, !dbg !5667
  call void @devpts_kill_index(ptr noundef %9, i32 noundef %11) #20, !dbg !5668
  %12 = load ptr, ptr %fsi, align 8, !dbg !5669
  call void @devpts_release(ptr noundef %12) #20, !dbg !5670
  br label %if.end5, !dbg !5671

if.end5:                                          ; preds = %if.then4, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #19, !dbg !5672
  ret void, !dbg !5672
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pty_open(ptr noundef %tty, ptr noundef %filp) #0 align 16 !dbg !5673 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5675, metadata !DIExpression()), !dbg !5678
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5676, metadata !DIExpression()), !dbg !5679
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5680
  %tobool = icmp ne ptr %0, null, !dbg !5680
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5682

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5683
  %link = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 25, !dbg !5684
  %2 = load ptr, ptr %link, align 8, !dbg !5684
  %tobool1 = icmp ne ptr %2, null, !dbg !5683
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5685

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !5686
  br label %return, !dbg !5686

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5687
  %flags = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 16, !dbg !5687
  %4 = ptrtoint ptr %flags to i64, !dbg !5687
  %cmp = icmp ne i64 %4, 0, !dbg !5687
  %conv = zext i1 %cmp to i32, !dbg !5687
  %5 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5687
  br i1 %5, label %land.lhs.true, label %cond.false, !dbg !5687

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !5687
  %flags2 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 16, !dbg !5687
  %7 = ptrtoint ptr %flags2 to i64, !dbg !5687
  %cmp3 = icmp ne i64 %7, 0, !dbg !5687
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5687

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !5687
  %flags6 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 16, !dbg !5687
  %9 = load i64, ptr %flags6, align 8, !dbg !5687
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !5687
  br i1 %10, label %cond.true, label %cond.false, !dbg !5689

cond.true:                                        ; preds = %land.lhs.true5
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !5687
  %flags7 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 16, !dbg !5687
  %call = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %flags7) #20, !dbg !5687
  br i1 %call, label %if.then12, label %if.end13, !dbg !5687

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %12 = load ptr, ptr %tty.addr, align 8, !dbg !5687
  %flags9 = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 16, !dbg !5687
  %call10 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %flags9) #20, !dbg !5687
  br i1 %call10, label %if.then12, label %if.end13, !dbg !5689

if.then12:                                        ; preds = %cond.false, %cond.true
  br label %out, !dbg !5690

if.end13:                                         ; preds = %cond.false, %cond.true
  %13 = load ptr, ptr %tty.addr, align 8, !dbg !5691
  %link14 = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 25, !dbg !5691
  %14 = load ptr, ptr %link14, align 8, !dbg !5691
  %flags15 = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 16, !dbg !5691
  %15 = ptrtoint ptr %flags15 to i64, !dbg !5691
  %cmp16 = icmp ne i64 %15, 0, !dbg !5691
  %conv17 = zext i1 %cmp16 to i32, !dbg !5691
  %16 = call i1 @llvm.is.constant.i32(i32 %conv17), !dbg !5691
  br i1 %16, label %land.lhs.true18, label %cond.false31, !dbg !5691

land.lhs.true18:                                  ; preds = %if.end13
  %17 = load ptr, ptr %tty.addr, align 8, !dbg !5691
  %link19 = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 25, !dbg !5691
  %18 = load ptr, ptr %link19, align 8, !dbg !5691
  %flags20 = getelementptr inbounds %struct.tty_struct, ptr %18, i32 0, i32 16, !dbg !5691
  %19 = ptrtoint ptr %flags20 to i64, !dbg !5691
  %cmp21 = icmp ne i64 %19, 0, !dbg !5691
  br i1 %cmp21, label %land.lhs.true23, label %cond.false31, !dbg !5691

land.lhs.true23:                                  ; preds = %land.lhs.true18
  %20 = load ptr, ptr %tty.addr, align 8, !dbg !5691
  %link24 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 25, !dbg !5691
  %21 = load ptr, ptr %link24, align 8, !dbg !5691
  %flags25 = getelementptr inbounds %struct.tty_struct, ptr %21, i32 0, i32 16, !dbg !5691
  %22 = load i64, ptr %flags25, align 8, !dbg !5691
  %23 = call i1 @llvm.is.constant.i64(i64 %22), !dbg !5691
  br i1 %23, label %cond.true26, label %cond.false31, !dbg !5693

cond.true26:                                      ; preds = %land.lhs.true23
  %24 = load ptr, ptr %tty.addr, align 8, !dbg !5691
  %link27 = getelementptr inbounds %struct.tty_struct, ptr %24, i32 0, i32 25, !dbg !5691
  %25 = load ptr, ptr %link27, align 8, !dbg !5691
  %flags28 = getelementptr inbounds %struct.tty_struct, ptr %25, i32 0, i32 16, !dbg !5691
  %call29 = call zeroext i1 @const_test_bit(i64 noundef 16, ptr noundef %flags28) #20, !dbg !5691
  br i1 %call29, label %if.then36, label %if.end37, !dbg !5691

cond.false31:                                     ; preds = %land.lhs.true23, %land.lhs.true18, %if.end13
  %26 = load ptr, ptr %tty.addr, align 8, !dbg !5691
  %link32 = getelementptr inbounds %struct.tty_struct, ptr %26, i32 0, i32 25, !dbg !5691
  %27 = load ptr, ptr %link32, align 8, !dbg !5691
  %flags33 = getelementptr inbounds %struct.tty_struct, ptr %27, i32 0, i32 16, !dbg !5691
  %call34 = call zeroext i1 @_test_bit(i64 noundef 16, ptr noundef %flags33) #20, !dbg !5691
  br i1 %call34, label %if.then36, label %if.end37, !dbg !5693

if.then36:                                        ; preds = %cond.false31, %cond.true26
  br label %out, !dbg !5694

if.end37:                                         ; preds = %cond.false31, %cond.true26
  %28 = load ptr, ptr %tty.addr, align 8, !dbg !5695
  %driver = getelementptr inbounds %struct.tty_struct, ptr %28, i32 0, i32 3, !dbg !5697
  %29 = load ptr, ptr %driver, align 8, !dbg !5697
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %29, i32 0, i32 10, !dbg !5698
  %30 = load i16, ptr %subtype, align 2, !dbg !5698
  %conv38 = sext i16 %30 to i32, !dbg !5695
  %cmp39 = icmp eq i32 %conv38, 2, !dbg !5699
  br i1 %cmp39, label %land.lhs.true41, label %if.end46, !dbg !5700

land.lhs.true41:                                  ; preds = %if.end37
  %31 = load ptr, ptr %tty.addr, align 8, !dbg !5701
  %link42 = getelementptr inbounds %struct.tty_struct, ptr %31, i32 0, i32 25, !dbg !5702
  %32 = load ptr, ptr %link42, align 8, !dbg !5702
  %count = getelementptr inbounds %struct.tty_struct, ptr %32, i32 0, i32 17, !dbg !5703
  %33 = load i32, ptr %count, align 8, !dbg !5703
  %cmp43 = icmp ne i32 %33, 1, !dbg !5704
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !5705

if.then45:                                        ; preds = %land.lhs.true41
  br label %out, !dbg !5706

if.end46:                                         ; preds = %land.lhs.true41, %if.end37
  %34 = load ptr, ptr %tty.addr, align 8, !dbg !5707
  %flags47 = getelementptr inbounds %struct.tty_struct, ptr %34, i32 0, i32 16, !dbg !5708
  call void @clear_bit(i64 noundef 1, ptr noundef %flags47) #20, !dbg !5709
  %35 = load ptr, ptr %tty.addr, align 8, !dbg !5710
  %link48 = getelementptr inbounds %struct.tty_struct, ptr %35, i32 0, i32 25, !dbg !5711
  %36 = load ptr, ptr %link48, align 8, !dbg !5711
  %flags49 = getelementptr inbounds %struct.tty_struct, ptr %36, i32 0, i32 16, !dbg !5712
  call void @clear_bit(i64 noundef 2, ptr noundef %flags49) #20, !dbg !5713
  %37 = load ptr, ptr %tty.addr, align 8, !dbg !5714
  %flags50 = getelementptr inbounds %struct.tty_struct, ptr %37, i32 0, i32 16, !dbg !5715
  call void @set_bit(i64 noundef 0, ptr noundef %flags50) #20, !dbg !5716
  store i32 0, ptr %retval, align 4, !dbg !5717
  br label %return, !dbg !5717

out:                                              ; preds = %if.then45, %if.then36, %if.then12
  call void @llvm.dbg.label(metadata !5677), !dbg !5718
  %38 = load ptr, ptr %tty.addr, align 8, !dbg !5719
  %flags51 = getelementptr inbounds %struct.tty_struct, ptr %38, i32 0, i32 16, !dbg !5720
  call void @set_bit(i64 noundef 1, ptr noundef %flags51) #20, !dbg !5721
  store i32 -5, ptr %retval, align 4, !dbg !5722
  br label %return, !dbg !5722

return:                                           ; preds = %out, %if.end46, %if.then
  %39 = load i32, ptr %retval, align 4, !dbg !5723
  ret i32 %39, !dbg !5723
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pty_close(ptr noundef %tty, ptr noundef %filp) #0 align 16 !dbg !5724 {
entry:
  %tty.addr = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5726, metadata !DIExpression()), !dbg !5734
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5727, metadata !DIExpression()), !dbg !5735
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5736
  %driver = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3, !dbg !5737
  %1 = load ptr, ptr %driver, align 8, !dbg !5737
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 10, !dbg !5738
  %2 = load i16, ptr %subtype, align 2, !dbg !5738
  %conv = sext i16 %2 to i32, !dbg !5736
  %cmp = icmp eq i32 %conv, 1, !dbg !5739
  br i1 %cmp, label %if.then, label %if.else, !dbg !5740

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5741
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5728, metadata !DIExpression()), !dbg !5741
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5741
  %count = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 17, !dbg !5741
  %4 = load i32, ptr %count, align 8, !dbg !5741
  %cmp2 = icmp sgt i32 %4, 1, !dbg !5741
  %lnot = xor i1 %cmp2, true, !dbg !5741
  %lnot4 = xor i1 %lnot, true, !dbg !5741
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5741
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5741
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5742
  %tobool = icmp ne i32 %5, 0, !dbg !5742
  %lnot5 = xor i1 %tobool, true, !dbg !5742
  %lnot7 = xor i1 %lnot5, true, !dbg !5742
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5742
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !5742
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !5742
  %tobool10 = icmp ne i64 %expval, 0, !dbg !5742
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !5741

if.then11:                                        ; preds = %if.then
  br label %do.body, !dbg !5742

do.body:                                          ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !5743
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5731, metadata !DIExpression()), !dbg !5743
  store i32 2305, ptr %__flags, align 4, !dbg !5743
  br label %do.body12, !dbg !5743

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !5744

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !5744

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !5743

do.body13:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !5746
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.12, i32 50, i32 %6, i64 12) #19, !dbg !5746, !srcloc !5748
  br label %do.cond14, !dbg !5746

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5746

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !5743

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !5749

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5749

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !5742
  br label %do.cond19, !dbg !5743

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !5743

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !5743

if.end:                                           ; preds = %do.end20, %if.then
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5741
  %tobool21 = icmp ne i32 %7, 0, !dbg !5741
  %lnot22 = xor i1 %tobool21, true, !dbg !5741
  %lnot24 = xor i1 %lnot22, true, !dbg !5741
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !5741
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !5741
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !5741
  store i64 %expval27, ptr %tmp, align 8, !dbg !5742
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5751
  %8 = load i64, ptr %tmp, align 8, !dbg !5741
  br label %if.end35, !dbg !5751

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !5752
  %call = call zeroext i1 @tty_io_error(ptr noundef %9) #20, !dbg !5755
  br i1 %call, label %if.then28, label %if.end29, !dbg !5756

if.then28:                                        ; preds = %if.else
  br label %if.end71, !dbg !5757

if.end29:                                         ; preds = %if.else
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !5758
  %count30 = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 17, !dbg !5760
  %11 = load i32, ptr %count30, align 8, !dbg !5760
  %cmp31 = icmp sgt i32 %11, 2, !dbg !5761
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !5762

if.then33:                                        ; preds = %if.end29
  br label %if.end71, !dbg !5763

if.end34:                                         ; preds = %if.end29
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end
  %12 = load ptr, ptr %tty.addr, align 8, !dbg !5764
  %flags = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 16, !dbg !5765
  call void @set_bit(i64 noundef 1, ptr noundef %flags) #20, !dbg !5766
  %13 = load ptr, ptr %tty.addr, align 8, !dbg !5767
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 28, !dbg !5767
  %call36 = call i32 @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #20, !dbg !5767
  %14 = load ptr, ptr %tty.addr, align 8, !dbg !5768
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 27, !dbg !5768
  %call37 = call i32 @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #20, !dbg !5768
  %15 = load ptr, ptr %tty.addr, align 8, !dbg !5769
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %15, i32 0, i32 21, !dbg !5770
  %lock = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 2, !dbg !5771
  call void @spin_lock_irq(ptr noundef %lock) #20, !dbg !5772
  %16 = load ptr, ptr %tty.addr, align 8, !dbg !5773
  %ctrl38 = getelementptr inbounds %struct.tty_struct, ptr %16, i32 0, i32 21, !dbg !5774
  %packet = getelementptr inbounds %struct.anon.17, ptr %ctrl38, i32 0, i32 4, !dbg !5775
  store i8 0, ptr %packet, align 1, !dbg !5776
  %17 = load ptr, ptr %tty.addr, align 8, !dbg !5777
  %ctrl39 = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 21, !dbg !5778
  %lock40 = getelementptr inbounds %struct.anon.17, ptr %ctrl39, i32 0, i32 2, !dbg !5779
  call void @spin_unlock_irq(ptr noundef %lock40) #20, !dbg !5780
  %18 = load ptr, ptr %tty.addr, align 8, !dbg !5781
  %link = getelementptr inbounds %struct.tty_struct, ptr %18, i32 0, i32 25, !dbg !5783
  %19 = load ptr, ptr %link, align 8, !dbg !5783
  %tobool41 = icmp ne ptr %19, null, !dbg !5781
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !5784

if.then42:                                        ; preds = %if.end35
  br label %if.end71, !dbg !5785

if.end43:                                         ; preds = %if.end35
  %20 = load ptr, ptr %tty.addr, align 8, !dbg !5786
  %link44 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 25, !dbg !5787
  %21 = load ptr, ptr %link44, align 8, !dbg !5787
  %flags45 = getelementptr inbounds %struct.tty_struct, ptr %21, i32 0, i32 16, !dbg !5788
  call void @set_bit(i64 noundef 2, ptr noundef %flags45) #20, !dbg !5789
  %22 = load ptr, ptr %tty.addr, align 8, !dbg !5790
  %link46 = getelementptr inbounds %struct.tty_struct, ptr %22, i32 0, i32 25, !dbg !5790
  %23 = load ptr, ptr %link46, align 8, !dbg !5790
  %read_wait47 = getelementptr inbounds %struct.tty_struct, ptr %23, i32 0, i32 28, !dbg !5790
  %call48 = call i32 @__wake_up(ptr noundef %read_wait47, i32 noundef 1, i32 noundef 1, ptr noundef null) #20, !dbg !5790
  %24 = load ptr, ptr %tty.addr, align 8, !dbg !5791
  %link49 = getelementptr inbounds %struct.tty_struct, ptr %24, i32 0, i32 25, !dbg !5791
  %25 = load ptr, ptr %link49, align 8, !dbg !5791
  %write_wait50 = getelementptr inbounds %struct.tty_struct, ptr %25, i32 0, i32 27, !dbg !5791
  %call51 = call i32 @__wake_up(ptr noundef %write_wait50, i32 noundef 1, i32 noundef 1, ptr noundef null) #20, !dbg !5791
  %26 = load ptr, ptr %tty.addr, align 8, !dbg !5792
  %driver52 = getelementptr inbounds %struct.tty_struct, ptr %26, i32 0, i32 3, !dbg !5794
  %27 = load ptr, ptr %driver52, align 8, !dbg !5794
  %subtype53 = getelementptr inbounds %struct.tty_driver, ptr %27, i32 0, i32 10, !dbg !5795
  %28 = load i16, ptr %subtype53, align 2, !dbg !5795
  %conv54 = sext i16 %28 to i32, !dbg !5792
  %cmp55 = icmp eq i32 %conv54, 1, !dbg !5796
  br i1 %cmp55, label %if.then57, label %if.end71, !dbg !5797

if.then57:                                        ; preds = %if.end43
  %29 = load ptr, ptr %tty.addr, align 8, !dbg !5798
  %flags58 = getelementptr inbounds %struct.tty_struct, ptr %29, i32 0, i32 16, !dbg !5800
  call void @set_bit(i64 noundef 2, ptr noundef %flags58) #20, !dbg !5801
  %30 = load ptr, ptr %tty.addr, align 8, !dbg !5802
  %driver59 = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 3, !dbg !5804
  %31 = load ptr, ptr %driver59, align 8, !dbg !5804
  %32 = load ptr, ptr @ptm_driver, align 8, !dbg !5805
  %cmp60 = icmp eq ptr %31, %32, !dbg !5806
  br i1 %cmp60, label %if.then62, label %if.end69, !dbg !5807

if.then62:                                        ; preds = %if.then57
  call void @mutex_lock(ptr noundef @devpts_mutex) #20, !dbg !5808
  %33 = load ptr, ptr %tty.addr, align 8, !dbg !5810
  %link63 = getelementptr inbounds %struct.tty_struct, ptr %33, i32 0, i32 25, !dbg !5812
  %34 = load ptr, ptr %link63, align 8, !dbg !5812
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %34, i32 0, i32 31, !dbg !5813
  %35 = load ptr, ptr %driver_data, align 8, !dbg !5813
  %tobool64 = icmp ne ptr %35, null, !dbg !5810
  br i1 %tobool64, label %if.then65, label %if.end68, !dbg !5814

if.then65:                                        ; preds = %if.then62
  %36 = load ptr, ptr %tty.addr, align 8, !dbg !5815
  %link66 = getelementptr inbounds %struct.tty_struct, ptr %36, i32 0, i32 25, !dbg !5816
  %37 = load ptr, ptr %link66, align 8, !dbg !5816
  %driver_data67 = getelementptr inbounds %struct.tty_struct, ptr %37, i32 0, i32 31, !dbg !5817
  %38 = load ptr, ptr %driver_data67, align 8, !dbg !5817
  call void @devpts_pty_kill(ptr noundef %38) #20, !dbg !5818
  br label %if.end68, !dbg !5818

if.end68:                                         ; preds = %if.then65, %if.then62
  call void @mutex_unlock(ptr noundef @devpts_mutex) #20, !dbg !5819
  br label %if.end69, !dbg !5820

if.end69:                                         ; preds = %if.end68, %if.then57
  %39 = load ptr, ptr %tty.addr, align 8, !dbg !5821
  %link70 = getelementptr inbounds %struct.tty_struct, ptr %39, i32 0, i32 25, !dbg !5822
  %40 = load ptr, ptr %link70, align 8, !dbg !5822
  call void @tty_vhangup(ptr noundef %40) #20, !dbg !5823
  br label %if.end71, !dbg !5824

if.end71:                                         ; preds = %if.then28, %if.then33, %if.then42, %if.end69, %if.end43
  ret void, !dbg !5825
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pty_cleanup(ptr noundef %tty) #0 align 16 !dbg !5826 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5828, metadata !DIExpression()), !dbg !5829
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5830
  %port = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4, !dbg !5831
  %1 = load ptr, ptr %port, align 8, !dbg !5831
  call void @tty_port_put(ptr noundef %1) #20, !dbg !5832
  ret void, !dbg !5833
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pty_write(ptr noundef %tty, ptr noundef %buf, i64 noundef %c) #0 align 16 !dbg !5834 {
entry:
  %retval = alloca i64, align 8
  %tty.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %c.addr = alloca i64, align 8
  %to = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5836, metadata !DIExpression()), !dbg !5840
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5837, metadata !DIExpression()), !dbg !5841
  store i64 %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !5838, metadata !DIExpression()), !dbg !5842
  call void @llvm.lifetime.start.p0(i64 8, ptr %to) #19, !dbg !5843
  call void @llvm.dbg.declare(metadata ptr %to, metadata !5839, metadata !DIExpression()), !dbg !5844
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5845
  %link = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 25, !dbg !5846
  %1 = load ptr, ptr %link, align 8, !dbg !5846
  store ptr %1, ptr %to, align 8, !dbg !5844
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5847
  %flow = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 20, !dbg !5849
  %stopped = getelementptr inbounds %struct.anon.16, ptr %flow, i32 0, i32 1, !dbg !5850
  %3 = load i8, ptr %stopped, align 4, !dbg !5850, !range !5851, !noundef !806
  %tobool = trunc i8 %3 to i1, !dbg !5850
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5852

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, ptr %c.addr, align 8, !dbg !5853
  %tobool1 = icmp ne i64 %4, 0, !dbg !5853
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5854

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, ptr %retval, align 8, !dbg !5855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5855

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %to, align 8, !dbg !5856
  %port = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 4, !dbg !5857
  %6 = load ptr, ptr %port, align 8, !dbg !5857
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !5858
  %8 = load i64, ptr %c.addr, align 8, !dbg !5859
  %call = call i32 @tty_insert_flip_string_and_push_buffer(ptr noundef %6, ptr noundef %7, i64 noundef %8) #20, !dbg !5860
  %conv = sext i32 %call to i64, !dbg !5860
  store i64 %conv, ptr %retval, align 8, !dbg !5861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5861

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %to) #19, !dbg !5862
  %9 = load i64, ptr %retval, align 8, !dbg !5862
  ret i64 %9, !dbg !5862
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pty_write_room(ptr noundef %tty) #0 align 16 !dbg !5863 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5865, metadata !DIExpression()), !dbg !5866
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5867
  %flow = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, !dbg !5869
  %stopped = getelementptr inbounds %struct.anon.16, ptr %flow, i32 0, i32 1, !dbg !5870
  %1 = load i8, ptr %stopped, align 4, !dbg !5870, !range !5851, !noundef !806
  %tobool = trunc i8 %1 to i1, !dbg !5870
  br i1 %tobool, label %if.then, label %if.end, !dbg !5871

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5872
  br label %return, !dbg !5872

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5873
  %link = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 25, !dbg !5874
  %3 = load ptr, ptr %link, align 8, !dbg !5874
  %port = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 4, !dbg !5875
  %4 = load ptr, ptr %port, align 8, !dbg !5875
  %call = call i32 @tty_buffer_space_avail(ptr noundef %4) #20, !dbg !5876
  store i32 %call, ptr %retval, align 4, !dbg !5877
  br label %return, !dbg !5877

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !5878
  ret i32 %5, !dbg !5878
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pty_unix98_ioctl(ptr noundef %tty, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5879 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp9 = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5881, metadata !DIExpression()), !dbg !5892
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5882, metadata !DIExpression()), !dbg !5893
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5883, metadata !DIExpression()), !dbg !5894
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !5895
  switch i32 %0, label %sw.epilog [
    i32 1074025521, label %sw.bb
    i32 -2147199943, label %sw.bb1
    i32 21536, label %sw.bb3
    i32 -2147199944, label %sw.bb5
    i32 -2147199952, label %sw.bb7
    i32 1074025526, label %sw.bb11
  ], !dbg !5896

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5897
  %2 = load i64, ptr %arg.addr, align 8, !dbg !5898
  %3 = inttoptr i64 %2 to ptr, !dbg !5899
  %call = call i32 @pty_set_lock(ptr noundef %1, ptr noundef %3) #20, !dbg !5900
  store i32 %call, ptr %retval, align 4, !dbg !5901
  br label %return, !dbg !5901

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !5902
  %5 = load i64, ptr %arg.addr, align 8, !dbg !5903
  %6 = inttoptr i64 %5 to ptr, !dbg !5904
  %call2 = call i32 @pty_get_lock(ptr noundef %4, ptr noundef %6) #20, !dbg !5905
  store i32 %call2, ptr %retval, align 4, !dbg !5906
  br label %return, !dbg !5906

sw.bb3:                                           ; preds = %entry
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !5907
  %8 = load i64, ptr %arg.addr, align 8, !dbg !5908
  %9 = inttoptr i64 %8 to ptr, !dbg !5909
  %call4 = call i32 @pty_set_pktmode(ptr noundef %7, ptr noundef %9) #20, !dbg !5910
  store i32 %call4, ptr %retval, align 4, !dbg !5911
  br label %return, !dbg !5911

sw.bb5:                                           ; preds = %entry
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !5912
  %11 = load i64, ptr %arg.addr, align 8, !dbg !5913
  %12 = inttoptr i64 %11 to ptr, !dbg !5914
  %call6 = call i32 @pty_get_pktmode(ptr noundef %10, ptr noundef %12) #20, !dbg !5915
  store i32 %call6, ptr %retval, align 4, !dbg !5916
  br label %return, !dbg !5916

sw.bb7:                                           ; preds = %entry
  call void @might_fault() #20, !dbg !5917
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #19, !dbg !5918
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5884, metadata !DIExpression()), !dbg !5918
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #19, !dbg !5918
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5888, metadata !DIExpression()), !dbg !5918
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #19, !dbg !5918
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5889, metadata !DIExpression()), !dbg !5918
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #19, !dbg !5918
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5890, metadata !DIExpression()), !dbg !5918
  %13 = load ptr, ptr %tty.addr, align 8, !dbg !5918
  %index = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 1, !dbg !5918
  %14 = load i32, ptr %index, align 4, !dbg !5918
  store i32 %14, ptr %__x, align 4, !dbg !5918
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !5918
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5891, metadata !DIExpression()), !dbg !5918
  %15 = load i64, ptr %arg.addr, align 8, !dbg !5918
  %16 = inttoptr i64 %15 to ptr, !dbg !5918
  store ptr %16, ptr %__ptr, align 8, !dbg !5918
  %17 = load ptr, ptr %__ptr, align 8, !dbg !5918
  store ptr %17, ptr %__ptr_pu, align 8, !dbg !5918
  %18 = load i32, ptr %__x, align 4, !dbg !5918
  store i32 %18, ptr %__val_pu, align 4, !dbg !5918
  %19 = call i64 @llvm.read_register.i64(metadata !5140), !dbg !5918
  %20 = load ptr, ptr %__ptr_pu, align 8, !dbg !5918
  %21 = load i32, ptr %__val_pu, align 4, !dbg !5918
  %22 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %20, i32 %21, i64 4, i64 %19) #19, !dbg !5918, !srcloc !5919
  %asmresult = extractvalue { ptr, i64 } %22, 0, !dbg !5918
  %asmresult8 = extractvalue { ptr, i64 } %22, 1, !dbg !5918
  %23 = ptrtoint ptr %asmresult to i64, !dbg !5918
  %24 = trunc i64 %23 to i32, !dbg !5918
  store i32 %24, ptr %__ret_pu, align 4, !dbg !5918
  call void @llvm.write_register.i64(metadata !5140, i64 %asmresult8), !dbg !5918
  %25 = load ptr, ptr %__ptr, align 8, !dbg !5920
  call void @kmsan_copy_to_user(ptr noundef %25, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #20, !dbg !5920
  %26 = load i32, ptr %__ret_pu, align 4, !dbg !5918
  %conv = sext i32 %26 to i64, !dbg !5918
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5918
  store i64 %expval, ptr %tmp9, align 8, !dbg !5918
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !5917
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #19, !dbg !5917
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #19, !dbg !5917
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #19, !dbg !5917
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #19, !dbg !5917
  %27 = load i64, ptr %tmp9, align 8, !dbg !5918
  store i64 %27, ptr %tmp, align 8, !dbg !5917
  %28 = load i64, ptr %tmp, align 8, !dbg !5917
  %conv10 = trunc i64 %28 to i32, !dbg !5922
  store i32 %conv10, ptr %retval, align 4, !dbg !5923
  br label %return, !dbg !5923

sw.bb11:                                          ; preds = %entry
  %29 = load ptr, ptr %tty.addr, align 8, !dbg !5924
  %30 = load i64, ptr %arg.addr, align 8, !dbg !5925
  %conv12 = trunc i64 %30 to i32, !dbg !5926
  %call13 = call i32 @pty_signal(ptr noundef %29, i32 noundef %conv12) #20, !dbg !5927
  store i32 %call13, ptr %retval, align 4, !dbg !5928
  br label %return, !dbg !5928

sw.epilog:                                        ; preds = %entry
  store i32 -515, ptr %retval, align 4, !dbg !5929
  br label %return, !dbg !5929

return:                                           ; preds = %sw.epilog, %sw.bb11, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %31 = load i32, ptr %retval, align 4, !dbg !5930
  ret i32 %31, !dbg !5930
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pty_unix98_compat_ioctl(ptr noundef %tty, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5931 {
entry:
  %tty.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5933, metadata !DIExpression()), !dbg !5936
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5934, metadata !DIExpression()), !dbg !5937
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5935, metadata !DIExpression()), !dbg !5938
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5939
  %1 = load i32, ptr %cmd.addr, align 4, !dbg !5940
  %2 = load i32, ptr %cmd.addr, align 4, !dbg !5941
  %conv = zext i32 %2 to i64, !dbg !5941
  %cmp = icmp eq i64 %conv, 1074025526, !dbg !5942
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5941

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %arg.addr, align 8, !dbg !5943
  br label %cond.end, !dbg !5941

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %arg.addr, align 8, !dbg !5944
  %conv2 = trunc i64 %4 to i32, !dbg !5944
  %call = call ptr @compat_ptr(i32 noundef %conv2) #20, !dbg !5945
  %5 = ptrtoint ptr %call to i64, !dbg !5946
  br label %cond.end, !dbg !5941

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %5, %cond.false ], !dbg !5941
  %call3 = call i32 @pty_unix98_ioctl(ptr noundef %0, i32 noundef %1, i64 noundef %cond) #20, !dbg !5947
  %conv4 = sext i32 %call3 to i64, !dbg !5947
  ret i64 %conv4, !dbg !5948
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pty_unthrottle(ptr noundef %tty) #0 align 16 !dbg !5949 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5951, metadata !DIExpression()), !dbg !5952
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5953
  %link = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 25, !dbg !5954
  %1 = load ptr, ptr %link, align 8, !dbg !5954
  call void @tty_wakeup(ptr noundef %1) #20, !dbg !5955
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5956
  %flags = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 16, !dbg !5957
  call void @set_bit(i64 noundef 0, ptr noundef %flags) #20, !dbg !5958
  ret void, !dbg !5959
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pty_flush_buffer(ptr noundef %tty) #0 align 16 !dbg !5960 {
entry:
  %tty.addr = alloca ptr, align 8
  %to = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5962, metadata !DIExpression()), !dbg !5964
  call void @llvm.lifetime.start.p0(i64 8, ptr %to) #19, !dbg !5965
  call void @llvm.dbg.declare(metadata ptr %to, metadata !5963, metadata !DIExpression()), !dbg !5966
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5967
  %link = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 25, !dbg !5968
  %1 = load ptr, ptr %link, align 8, !dbg !5968
  store ptr %1, ptr %to, align 8, !dbg !5966
  %2 = load ptr, ptr %to, align 8, !dbg !5969
  %tobool = icmp ne ptr %2, null, !dbg !5969
  br i1 %tobool, label %if.end, label %if.then, !dbg !5971

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5972

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %to, align 8, !dbg !5973
  call void @tty_buffer_flush(ptr noundef %3, ptr noundef null) #20, !dbg !5974
  %4 = load ptr, ptr %to, align 8, !dbg !5975
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 21, !dbg !5977
  %packet = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 4, !dbg !5978
  %5 = load i8, ptr %packet, align 1, !dbg !5978, !range !5851, !noundef !806
  %tobool1 = trunc i8 %5 to i1, !dbg !5978
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !5979

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !5980
  %ctrl3 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 21, !dbg !5982
  %lock = getelementptr inbounds %struct.anon.17, ptr %ctrl3, i32 0, i32 2, !dbg !5983
  call void @spin_lock_irq(ptr noundef %lock) #20, !dbg !5984
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !5985
  %ctrl4 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 21, !dbg !5986
  %pktstatus = getelementptr inbounds %struct.anon.17, ptr %ctrl4, i32 0, i32 3, !dbg !5987
  %8 = load i8, ptr %pktstatus, align 4, !dbg !5988
  %conv = zext i8 %8 to i32, !dbg !5988
  %or = or i32 %conv, 2, !dbg !5988
  %conv5 = trunc i32 %or to i8, !dbg !5988
  store i8 %conv5, ptr %pktstatus, align 4, !dbg !5988
  %9 = load ptr, ptr %to, align 8, !dbg !5989
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 28, !dbg !5989
  %call = call i32 @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #20, !dbg !5989
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !5990
  %ctrl6 = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 21, !dbg !5991
  %lock7 = getelementptr inbounds %struct.anon.17, ptr %ctrl6, i32 0, i32 2, !dbg !5992
  call void @spin_unlock_irq(ptr noundef %lock7) #20, !dbg !5993
  br label %if.end8, !dbg !5994

if.end8:                                          ; preds = %if.then2, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5995
  br label %cleanup, !dbg !5995

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %to) #19, !dbg !5995
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5995

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pty_resize(ptr noundef %tty, ptr noundef %ws) #0 align 16 !dbg !5996 {
entry:
  %tty.addr = alloca ptr, align 8
  %ws.addr = alloca ptr, align 8
  %pgrp = alloca ptr, align 8
  %rpgrp = alloca ptr, align 8
  %pty = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5998, metadata !DIExpression()), !dbg !6004
  store ptr %ws, ptr %ws.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ws.addr, metadata !5999, metadata !DIExpression()), !dbg !6005
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgrp) #19, !dbg !6006
  call void @llvm.dbg.declare(metadata ptr %pgrp, metadata !6000, metadata !DIExpression()), !dbg !6007
  call void @llvm.lifetime.start.p0(i64 8, ptr %rpgrp) #19, !dbg !6006
  call void @llvm.dbg.declare(metadata ptr %rpgrp, metadata !6001, metadata !DIExpression()), !dbg !6008
  call void @llvm.lifetime.start.p0(i64 8, ptr %pty) #19, !dbg !6009
  call void @llvm.dbg.declare(metadata ptr %pty, metadata !6002, metadata !DIExpression()), !dbg !6010
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6011
  %link = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 25, !dbg !6012
  %1 = load ptr, ptr %link, align 8, !dbg !6012
  store ptr %1, ptr %pty, align 8, !dbg !6010
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !6013
  %winsize_mutex = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 12, !dbg !6014
  call void @mutex_lock(ptr noundef %winsize_mutex) #20, !dbg !6015
  %3 = load ptr, ptr %ws.addr, align 8, !dbg !6016
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !6018
  %winsize = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 19, !dbg !6019
  %call = call i32 @memcmp(ptr noundef %3, ptr noundef %winsize, i64 noundef 8) #20, !dbg !6020
  %tobool = icmp ne i32 %call, 0, !dbg !6020
  br i1 %tobool, label %if.end, label %if.then, !dbg !6021

if.then:                                          ; preds = %entry
  br label %done, !dbg !6022

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !6023
  %call1 = call ptr @tty_get_pgrp(ptr noundef %5) #20, !dbg !6024
  store ptr %call1, ptr %pgrp, align 8, !dbg !6025
  %6 = load ptr, ptr %pty, align 8, !dbg !6026
  %call2 = call ptr @tty_get_pgrp(ptr noundef %6) #20, !dbg !6027
  store ptr %call2, ptr %rpgrp, align 8, !dbg !6028
  %7 = load ptr, ptr %pgrp, align 8, !dbg !6029
  %tobool3 = icmp ne ptr %7, null, !dbg !6029
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !6031

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %pgrp, align 8, !dbg !6032
  %call5 = call i32 @kill_pgrp(ptr noundef %8, i32 noundef 28, i32 noundef 1) #20, !dbg !6033
  br label %if.end6, !dbg !6033

if.end6:                                          ; preds = %if.then4, %if.end
  %9 = load ptr, ptr %rpgrp, align 8, !dbg !6034
  %10 = load ptr, ptr %pgrp, align 8, !dbg !6036
  %cmp = icmp ne ptr %9, %10, !dbg !6037
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !6038

land.lhs.true:                                    ; preds = %if.end6
  %11 = load ptr, ptr %rpgrp, align 8, !dbg !6039
  %tobool7 = icmp ne ptr %11, null, !dbg !6039
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !6040

if.then8:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %rpgrp, align 8, !dbg !6041
  %call9 = call i32 @kill_pgrp(ptr noundef %12, i32 noundef 28, i32 noundef 1) #20, !dbg !6042
  br label %if.end10, !dbg !6042

if.end10:                                         ; preds = %if.then8, %land.lhs.true, %if.end6
  %13 = load ptr, ptr %pgrp, align 8, !dbg !6043
  call void @put_pid(ptr noundef %13) #20, !dbg !6044
  %14 = load ptr, ptr %rpgrp, align 8, !dbg !6045
  call void @put_pid(ptr noundef %14) #20, !dbg !6046
  %15 = load ptr, ptr %tty.addr, align 8, !dbg !6047
  %winsize11 = getelementptr inbounds %struct.tty_struct, ptr %15, i32 0, i32 19, !dbg !6048
  %16 = load ptr, ptr %ws.addr, align 8, !dbg !6049
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %winsize11, ptr align 2 %16, i64 8, i1 false), !dbg !6050
  %17 = load ptr, ptr %pty, align 8, !dbg !6051
  %winsize12 = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 19, !dbg !6052
  %18 = load ptr, ptr %ws.addr, align 8, !dbg !6053
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %winsize12, ptr align 2 %18, i64 8, i1 false), !dbg !6054
  br label %done, !dbg !6051

done:                                             ; preds = %if.end10, %if.then
  call void @llvm.dbg.label(metadata !6003), !dbg !6055
  %19 = load ptr, ptr %tty.addr, align 8, !dbg !6056
  %winsize_mutex13 = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 12, !dbg !6057
  call void @mutex_unlock(ptr noundef %winsize_mutex13) #20, !dbg !6058
  call void @llvm.lifetime.end.p0(i64 8, ptr %pty) #19, !dbg !6059
  call void @llvm.lifetime.end.p0(i64 8, ptr %rpgrp) #19, !dbg !6059
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgrp) #19, !dbg !6059
  ret i32 0, !dbg !6060
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pty_show_fdinfo(ptr noundef %tty, ptr noundef %m) #0 align 16 !dbg !6061 {
entry:
  %tty.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6063, metadata !DIExpression()), !dbg !6065
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6064, metadata !DIExpression()), !dbg !6066
  %0 = load ptr, ptr %m.addr, align 8, !dbg !6067
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !6068
  %index = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 1, !dbg !6069
  %2 = load i32, ptr %index, align 4, !dbg !6069
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.13, i32 noundef %2) #20, !dbg !6070
  ret void, !dbg !6071
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !6072 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6076, metadata !DIExpression()), !dbg !6077
  %0 = load i64, ptr %error.addr, align 8, !dbg !6078
  %1 = inttoptr i64 %0 to ptr, !dbg !6079
  ret ptr %1, !dbg !6080
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pty_common_install(ptr noundef %driver, ptr noundef %tty, i1 noundef zeroext %legacy) #0 align 16 !dbg !6081 {
entry:
  %retval = alloca i32, align 4
  %driver.addr = alloca ptr, align 8
  %tty.addr = alloca ptr, align 8
  %legacy.addr = alloca i8, align 1
  %o_tty = alloca ptr, align 8
  %ports = alloca [2 x ptr], align 16
  %idx = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !6085, metadata !DIExpression()), !dbg !6095
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6086, metadata !DIExpression()), !dbg !6096
  %frombool = zext i1 %legacy to i8
  store i8 %frombool, ptr %legacy.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %legacy.addr, metadata !6087, metadata !DIExpression()), !dbg !6097
  call void @llvm.lifetime.start.p0(i64 8, ptr %o_tty) #19, !dbg !6098
  call void @llvm.dbg.declare(metadata ptr %o_tty, metadata !6088, metadata !DIExpression()), !dbg !6099
  call void @llvm.lifetime.start.p0(i64 16, ptr %ports) #19, !dbg !6100
  call void @llvm.dbg.declare(metadata ptr %ports, metadata !6089, metadata !DIExpression()), !dbg !6101
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #19, !dbg !6102
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !6091, metadata !DIExpression()), !dbg !6103
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6104
  %index = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 1, !dbg !6105
  %1 = load i32, ptr %index, align 4, !dbg !6105
  store i32 %1, ptr %idx, align 4, !dbg !6103
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #19, !dbg !6106
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6092, metadata !DIExpression()), !dbg !6107
  store i32 -12, ptr %retval1, align 4, !dbg !6107
  %2 = load ptr, ptr %driver.addr, align 8, !dbg !6108
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %2, i32 0, i32 10, !dbg !6110
  %3 = load i16, ptr %subtype, align 2, !dbg !6110
  %conv = sext i16 %3 to i32, !dbg !6108
  %cmp = icmp ne i32 %conv, 1, !dbg !6111
  br i1 %cmp, label %if.then, label %if.end, !dbg !6112

if.then:                                          ; preds = %entry
  store i32 -5, ptr %retval, align 4, !dbg !6113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6113

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kmalloc(i64 noundef 376, i32 noundef 3264) #24, !dbg !6114
  %arrayidx = getelementptr [2 x ptr], ptr %ports, i64 0, i64 0, !dbg !6115
  store ptr %call, ptr %arrayidx, align 16, !dbg !6116
  %call3 = call noalias ptr @kmalloc(i64 noundef 376, i32 noundef 3264) #24, !dbg !6117
  %arrayidx4 = getelementptr [2 x ptr], ptr %ports, i64 0, i64 1, !dbg !6118
  store ptr %call3, ptr %arrayidx4, align 8, !dbg !6119
  %arrayidx5 = getelementptr [2 x ptr], ptr %ports, i64 0, i64 0, !dbg !6120
  %4 = load ptr, ptr %arrayidx5, align 16, !dbg !6120
  %tobool = icmp ne ptr %4, null, !dbg !6120
  br i1 %tobool, label %lor.lhs.false, label %if.then8, !dbg !6122

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx6 = getelementptr [2 x ptr], ptr %ports, i64 0, i64 1, !dbg !6123
  %5 = load ptr, ptr %arrayidx6, align 8, !dbg !6123
  %tobool7 = icmp ne ptr %5, null, !dbg !6123
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6124

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  br label %err, !dbg !6125

if.end9:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %driver.addr, align 8, !dbg !6126
  %other = getelementptr inbounds %struct.tty_driver, ptr %6, i32 0, i32 14, !dbg !6128
  %7 = load ptr, ptr %other, align 8, !dbg !6128
  %owner = getelementptr inbounds %struct.tty_driver, ptr %7, i32 0, i32 2, !dbg !6129
  %8 = load ptr, ptr %owner, align 8, !dbg !6129
  %call10 = call zeroext i1 @try_module_get(ptr noundef %8) #20, !dbg !6130
  br i1 %call10, label %if.end12, label %if.then11, !dbg !6131

if.then11:                                        ; preds = %if.end9
  br label %err, !dbg !6132

if.end12:                                         ; preds = %if.end9
  %9 = load ptr, ptr %driver.addr, align 8, !dbg !6134
  %other13 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 14, !dbg !6135
  %10 = load ptr, ptr %other13, align 8, !dbg !6135
  %11 = load i32, ptr %idx, align 4, !dbg !6136
  %call14 = call ptr @alloc_tty_struct(ptr noundef %10, i32 noundef %11) #20, !dbg !6137
  store ptr %call14, ptr %o_tty, align 8, !dbg !6138
  %12 = load ptr, ptr %o_tty, align 8, !dbg !6139
  %tobool15 = icmp ne ptr %12, null, !dbg !6139
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !6141

if.then16:                                        ; preds = %if.end12
  br label %err_put_module, !dbg !6142

if.end17:                                         ; preds = %if.end12
  %13 = load ptr, ptr %o_tty, align 8, !dbg !6143
  call void @tty_set_lock_subclass(ptr noundef %13) #20, !dbg !6144
  br label %do.body, !dbg !6145

do.body:                                          ; preds = %if.end17
  br label %do.cond, !dbg !6146

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6146

do.end:                                           ; preds = %do.cond
  %14 = load i8, ptr %legacy.addr, align 1, !dbg !6148, !range !5851, !noundef !806
  %tobool18 = trunc i8 %14 to i1, !dbg !6148
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !6150

if.then19:                                        ; preds = %do.end
  %15 = load ptr, ptr %tty.addr, align 8, !dbg !6151
  call void @tty_init_termios(ptr noundef %15) #20, !dbg !6153
  %16 = load ptr, ptr %o_tty, align 8, !dbg !6154
  call void @tty_init_termios(ptr noundef %16) #20, !dbg !6155
  %17 = load ptr, ptr %o_tty, align 8, !dbg !6156
  %18 = load ptr, ptr %driver.addr, align 8, !dbg !6157
  %other20 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 14, !dbg !6158
  %19 = load ptr, ptr %other20, align 8, !dbg !6158
  %ttys = getelementptr inbounds %struct.tty_driver, ptr %19, i32 0, i32 15, !dbg !6159
  %20 = load ptr, ptr %ttys, align 8, !dbg !6159
  %21 = load i32, ptr %idx, align 4, !dbg !6160
  %idxprom = sext i32 %21 to i64, !dbg !6157
  %arrayidx21 = getelementptr ptr, ptr %20, i64 %idxprom, !dbg !6157
  store ptr %17, ptr %arrayidx21, align 8, !dbg !6161
  %22 = load ptr, ptr %tty.addr, align 8, !dbg !6162
  %23 = load ptr, ptr %driver.addr, align 8, !dbg !6163
  %ttys22 = getelementptr inbounds %struct.tty_driver, ptr %23, i32 0, i32 15, !dbg !6164
  %24 = load ptr, ptr %ttys22, align 8, !dbg !6164
  %25 = load i32, ptr %idx, align 4, !dbg !6165
  %idxprom23 = sext i32 %25 to i64, !dbg !6163
  %arrayidx24 = getelementptr ptr, ptr %24, i64 %idxprom23, !dbg !6163
  store ptr %22, ptr %arrayidx24, align 8, !dbg !6166
  br label %if.end29, !dbg !6167

if.else:                                          ; preds = %do.end
  %26 = load ptr, ptr %tty.addr, align 8, !dbg !6168
  %termios_locked = getelementptr inbounds %struct.tty_struct, ptr %26, i32 0, i32 14, !dbg !6170
  call void @llvm.memset.p0.i64(ptr align 4 %termios_locked, i8 0, i64 44, i1 false), !dbg !6171
  %27 = load ptr, ptr %tty.addr, align 8, !dbg !6172
  %termios = getelementptr inbounds %struct.tty_struct, ptr %27, i32 0, i32 13, !dbg !6173
  %28 = load ptr, ptr %driver.addr, align 8, !dbg !6174
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %28, i32 0, i32 11, !dbg !6175
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %termios, ptr align 4 %init_termios, i64 44, i1 false), !dbg !6175
  %29 = load ptr, ptr %o_tty, align 8, !dbg !6176
  %termios_locked25 = getelementptr inbounds %struct.tty_struct, ptr %29, i32 0, i32 14, !dbg !6177
  call void @llvm.memset.p0.i64(ptr align 4 %termios_locked25, i8 0, i64 44, i1 false), !dbg !6178
  %30 = load ptr, ptr %o_tty, align 8, !dbg !6179
  %termios26 = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 13, !dbg !6180
  %31 = load ptr, ptr %driver.addr, align 8, !dbg !6181
  %other27 = getelementptr inbounds %struct.tty_driver, ptr %31, i32 0, i32 14, !dbg !6182
  %32 = load ptr, ptr %other27, align 8, !dbg !6182
  %init_termios28 = getelementptr inbounds %struct.tty_driver, ptr %32, i32 0, i32 11, !dbg !6183
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %termios26, ptr align 4 %init_termios28, i64 44, i1 false), !dbg !6183
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then19
  %33 = load ptr, ptr %driver.addr, align 8, !dbg !6184
  %other30 = getelementptr inbounds %struct.tty_driver, ptr %33, i32 0, i32 14, !dbg !6185
  %34 = load ptr, ptr %other30, align 8, !dbg !6185
  %call31 = call ptr @tty_driver_kref_get(ptr noundef %34) #20, !dbg !6186
  %35 = load ptr, ptr %o_tty, align 8, !dbg !6187
  %36 = load ptr, ptr %tty.addr, align 8, !dbg !6188
  %link = getelementptr inbounds %struct.tty_struct, ptr %36, i32 0, i32 25, !dbg !6189
  store ptr %35, ptr %link, align 8, !dbg !6190
  %37 = load ptr, ptr %tty.addr, align 8, !dbg !6191
  %38 = load ptr, ptr %o_tty, align 8, !dbg !6192
  %link32 = getelementptr inbounds %struct.tty_struct, ptr %38, i32 0, i32 25, !dbg !6193
  store ptr %37, ptr %link32, align 8, !dbg !6194
  %arrayidx33 = getelementptr [2 x ptr], ptr %ports, i64 0, i64 0, !dbg !6195
  %39 = load ptr, ptr %arrayidx33, align 16, !dbg !6195
  call void @tty_port_init(ptr noundef %39) #20, !dbg !6196
  %arrayidx34 = getelementptr [2 x ptr], ptr %ports, i64 0, i64 1, !dbg !6197
  %40 = load ptr, ptr %arrayidx34, align 8, !dbg !6197
  call void @tty_port_init(ptr noundef %40) #20, !dbg !6198
  %arrayidx35 = getelementptr [2 x ptr], ptr %ports, i64 0, i64 0, !dbg !6199
  %41 = load ptr, ptr %arrayidx35, align 16, !dbg !6199
  %call36 = call i32 @tty_buffer_set_limit(ptr noundef %41, i32 noundef 8192) #20, !dbg !6200
  %arrayidx37 = getelementptr [2 x ptr], ptr %ports, i64 0, i64 1, !dbg !6201
  %42 = load ptr, ptr %arrayidx37, align 8, !dbg !6201
  %call38 = call i32 @tty_buffer_set_limit(ptr noundef %42, i32 noundef 8192) #20, !dbg !6202
  %arrayidx39 = getelementptr [2 x ptr], ptr %ports, i64 0, i64 0, !dbg !6203
  %43 = load ptr, ptr %arrayidx39, align 16, !dbg !6203
  %44 = load ptr, ptr %o_tty, align 8, !dbg !6204
  %port = getelementptr inbounds %struct.tty_struct, ptr %44, i32 0, i32 4, !dbg !6205
  store ptr %43, ptr %port, align 8, !dbg !6206
  %arrayidx40 = getelementptr [2 x ptr], ptr %ports, i64 0, i64 1, !dbg !6207
  %45 = load ptr, ptr %arrayidx40, align 8, !dbg !6207
  %46 = load ptr, ptr %tty.addr, align 8, !dbg !6208
  %port41 = getelementptr inbounds %struct.tty_struct, ptr %46, i32 0, i32 4, !dbg !6209
  store ptr %45, ptr %port41, align 8, !dbg !6210
  %47 = load ptr, ptr %o_tty, align 8, !dbg !6211
  %48 = load ptr, ptr %o_tty, align 8, !dbg !6212
  %port42 = getelementptr inbounds %struct.tty_struct, ptr %48, i32 0, i32 4, !dbg !6213
  %49 = load ptr, ptr %port42, align 8, !dbg !6213
  %itty = getelementptr inbounds %struct.tty_port, ptr %49, i32 0, i32 2, !dbg !6214
  store ptr %47, ptr %itty, align 8, !dbg !6215
  %50 = load ptr, ptr %o_tty, align 8, !dbg !6216
  %port43 = getelementptr inbounds %struct.tty_struct, ptr %50, i32 0, i32 4, !dbg !6217
  %51 = load ptr, ptr %port43, align 8, !dbg !6217
  call void @tty_buffer_set_lock_subclass(ptr noundef %51) #20, !dbg !6218
  %52 = load ptr, ptr %driver.addr, align 8, !dbg !6219
  %call44 = call ptr @tty_driver_kref_get(ptr noundef %52) #20, !dbg !6220
  %53 = load ptr, ptr %tty.addr, align 8, !dbg !6221
  %count = getelementptr inbounds %struct.tty_struct, ptr %53, i32 0, i32 17, !dbg !6222
  %54 = load i32, ptr %count, align 8, !dbg !6223
  %inc = add i32 %54, 1, !dbg !6223
  store i32 %inc, ptr %count, align 8, !dbg !6223
  %55 = load ptr, ptr %o_tty, align 8, !dbg !6224
  %count45 = getelementptr inbounds %struct.tty_struct, ptr %55, i32 0, i32 17, !dbg !6225
  %56 = load i32, ptr %count45, align 8, !dbg !6226
  %inc46 = add i32 %56, 1, !dbg !6226
  store i32 %inc46, ptr %count45, align 8, !dbg !6226
  store i32 0, ptr %retval, align 4, !dbg !6227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6227

err_put_module:                                   ; preds = %if.then16
  call void @llvm.dbg.label(metadata !6093), !dbg !6228
  %57 = load ptr, ptr %driver.addr, align 8, !dbg !6229
  %other47 = getelementptr inbounds %struct.tty_driver, ptr %57, i32 0, i32 14, !dbg !6230
  %58 = load ptr, ptr %other47, align 8, !dbg !6230
  %owner48 = getelementptr inbounds %struct.tty_driver, ptr %58, i32 0, i32 2, !dbg !6231
  %59 = load ptr, ptr %owner48, align 8, !dbg !6231
  call void @module_put(ptr noundef %59) #20, !dbg !6232
  br label %err, !dbg !6232

err:                                              ; preds = %err_put_module, %if.then11, %if.then8
  call void @llvm.dbg.label(metadata !6094), !dbg !6233
  %arrayidx49 = getelementptr [2 x ptr], ptr %ports, i64 0, i64 0, !dbg !6234
  %60 = load ptr, ptr %arrayidx49, align 16, !dbg !6234
  call void @kfree(ptr noundef %60) #20, !dbg !6235
  %arrayidx50 = getelementptr [2 x ptr], ptr %ports, i64 0, i64 1, !dbg !6236
  %61 = load ptr, ptr %arrayidx50, align 8, !dbg !6236
  call void @kfree(ptr noundef %61) #20, !dbg !6237
  %62 = load i32, ptr %retval1, align 4, !dbg !6238
  store i32 %62, ptr %retval, align 4, !dbg !6239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6239

cleanup:                                          ; preds = %err, %if.end29, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #19, !dbg !6240
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #19, !dbg !6240
  call void @llvm.lifetime.end.p0(i64 16, ptr %ports) #19, !dbg !6240
  call void @llvm.lifetime.end.p0(i64 8, ptr %o_tty) #19, !dbg !6240
  %63 = load i32, ptr %retval, align 4, !dbg !6240
  ret i32 %63, !dbg !6240
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6241 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6245, metadata !DIExpression()), !dbg !6250
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6246, metadata !DIExpression()), !dbg !6251
  %0 = load i64, ptr %size.addr, align 8, !dbg !6252
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6253
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6254

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6255
  %tobool = icmp ne i64 %2, 0, !dbg !6255
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6256

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !6257
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6247, metadata !DIExpression()), !dbg !6258
  %3 = load i64, ptr %size.addr, align 8, !dbg !6259
  %cmp = icmp ugt i64 %3, 8192, !dbg !6261
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6262

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6263
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6264
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #24, !dbg !6265
  store ptr %call, ptr %retval, align 8, !dbg !6266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6266

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6267
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #20, !dbg !6267
  store i32 %call2, ptr %index, align 4, !dbg !6268
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6269
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6270
  %9 = ptrtoint ptr %8 to i64, !dbg !6270
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #20, !dbg !6271
  %idxprom = zext i32 %call3 to i64, !dbg !6272
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6272
  %10 = load i32, ptr %index, align 4, !dbg !6273
  %idxprom4 = zext i32 %10 to i64, !dbg !6272
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6272
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6272
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6274
  %13 = load i64, ptr %size.addr, align 8, !dbg !6275
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #25, !dbg !6276
  store ptr %call6, ptr %retval, align 8, !dbg !6277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6277

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !6278
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6279
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6280
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #24, !dbg !6281
  store ptr %call8, ptr %retval, align 8, !dbg !6282
  br label %return, !dbg !6282

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6283
  ret ptr %16, !dbg !6283
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6284 dso_local zeroext i1 @try_module_get(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6287 dso_local ptr @alloc_tty_struct(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6290 dso_local void @tty_set_lock_subclass(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6291 dso_local void @tty_init_termios(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tty_driver_kref_get(ptr noundef %d) #4 align 16 !dbg !6292 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !6296, metadata !DIExpression()), !dbg !6297
  %0 = load ptr, ptr %d.addr, align 8, !dbg !6298
  %kref = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 0, !dbg !6299
  call void @kref_get(ptr noundef %kref) #20, !dbg !6300
  %1 = load ptr, ptr %d.addr, align 8, !dbg !6301
  ret ptr %1, !dbg !6302
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6303 dso_local void @tty_port_init(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6304 dso_local i32 @tty_buffer_set_limit(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6308 dso_local void @tty_buffer_set_lock_subclass(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6309 dso_local void @module_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6310 dso_local void @kfree(ptr noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6313 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !6314 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6318, metadata !DIExpression()), !dbg !6320
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6319, metadata !DIExpression()), !dbg !6321
  %0 = load i64, ptr %size.addr, align 8, !dbg !6322
  %tobool = icmp ne i64 %0, 0, !dbg !6322
  br i1 %tobool, label %if.end, label %if.then, !dbg !6324

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6325
  br label %return, !dbg !6325

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6326
  %cmp = icmp ule i64 %1, 8, !dbg !6328
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6329

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6330
  br label %return, !dbg !6330

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6331
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6333
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6334

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6335
  %cmp4 = icmp ule i64 %3, 96, !dbg !6336
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6337

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6338
  br label %return, !dbg !6338

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6339
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6341
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6342

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6343
  %cmp9 = icmp ule i64 %5, 192, !dbg !6344
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6345

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6346
  br label %return, !dbg !6346

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6347
  %cmp12 = icmp ule i64 %6, 8, !dbg !6349
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6350

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6351
  br label %return, !dbg !6351

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6352
  %cmp15 = icmp ule i64 %7, 16, !dbg !6354
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6355

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6356
  br label %return, !dbg !6356

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6357
  %cmp18 = icmp ule i64 %8, 32, !dbg !6359
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6360

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6361
  br label %return, !dbg !6361

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6362
  %cmp21 = icmp ule i64 %9, 64, !dbg !6364
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6365

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6366
  br label %return, !dbg !6366

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6367
  %cmp24 = icmp ule i64 %10, 128, !dbg !6369
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6370

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6371
  br label %return, !dbg !6371

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6372
  %cmp27 = icmp ule i64 %11, 256, !dbg !6374
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6375

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6376
  br label %return, !dbg !6376

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6377
  %cmp30 = icmp ule i64 %12, 512, !dbg !6379
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6380

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6381
  br label %return, !dbg !6381

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6382
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6384
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6385

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6386
  br label %return, !dbg !6386

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6387
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6389
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6390

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6391
  br label %return, !dbg !6391

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6392
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6394
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6395

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6396
  br label %return, !dbg !6396

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6397
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6399
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6400

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6401
  br label %return, !dbg !6401

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6402
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6404
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6405

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6406
  br label %return, !dbg !6406

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6407
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6409
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6410

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6411
  br label %return, !dbg !6411

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6412
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6414
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6415

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6416
  br label %return, !dbg !6416

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6417
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6419
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6420

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6421
  br label %return, !dbg !6421

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6422
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6424
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6425

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6426
  br label %return, !dbg !6426

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6427
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6429
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6430

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6431
  br label %return, !dbg !6431

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6432
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6434
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6435

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6436
  br label %return, !dbg !6436

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6437
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6439
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6440

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6441
  br label %return, !dbg !6441

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6442, !range !5851, !noundef !806
  %tobool69 = trunc i8 %25 to i1, !dbg !6442
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6444

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6445

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #26, !dbg !6446, !srcloc !6449
  unreachable, !dbg !6446

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6450

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6451

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6452

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6454

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6452

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 480, i32 0, i64 12) #19, !dbg !6456, !srcloc !6458
  br label %do.end75, !dbg !6456

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6452

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6459
  br label %return, !dbg !6459

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6460
  ret i32 %26, !dbg !6460
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6461 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !6467 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6471, metadata !DIExpression()), !dbg !6473
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6472, metadata !DIExpression()), !dbg !6474
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6475
  %and = and i32 %0, 17, !dbg !6475
  %cmp = icmp eq i32 %and, 0, !dbg !6475
  %lnot = xor i1 %cmp, true, !dbg !6475
  %lnot1 = xor i1 %lnot, true, !dbg !6475
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6475
  %conv = sext i32 %lnot.ext to i64, !dbg !6475
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6475
  %tobool = icmp ne i64 %expval, 0, !dbg !6475
  br i1 %tobool, label %if.then, label %if.end, !dbg !6477

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6478
  br label %return, !dbg !6478

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6479
  %and2 = and i32 %1, 1, !dbg !6481
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6481
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6482

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6483
  br label %return, !dbg !6483

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6484
  br label %return, !dbg !6484

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6486
  ret i32 %2, !dbg !6486
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6487 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6488 dso_local void @__compiletime_assert_255() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #4 align 16 !dbg !6489 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6494, metadata !DIExpression()), !dbg !6495
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6496
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6497
  call void @refcount_inc(ptr noundef %refcount) #20, !dbg !6498
  ret void, !dbg !6499
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #4 align 16 !dbg !6500 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6505, metadata !DIExpression()), !dbg !6506
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6507
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #20, !dbg !6508
  ret void, !dbg !6509
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6510 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6514, metadata !DIExpression()), !dbg !6516
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6515, metadata !DIExpression()), !dbg !6517
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6518
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6519
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #20, !dbg !6520
  ret void, !dbg !6521
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6522 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6526, metadata !DIExpression()), !dbg !6530
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6527, metadata !DIExpression()), !dbg !6531
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6528, metadata !DIExpression()), !dbg !6532
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #19, !dbg !6533
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6529, metadata !DIExpression()), !dbg !6534
  %0 = load i32, ptr %i.addr, align 4, !dbg !6535
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6536
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6537
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #20, !dbg !6538
  store i32 %call, ptr %old, align 4, !dbg !6534
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6539
  %tobool = icmp ne ptr %2, null, !dbg !6539
  br i1 %tobool, label %if.then, label %if.end, !dbg !6541

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6542
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6543
  store i32 %3, ptr %4, align 4, !dbg !6544
  br label %if.end, !dbg !6545

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6546
  %tobool1 = icmp ne i32 %5, 0, !dbg !6546
  %lnot = xor i1 %tobool1, true, !dbg !6546
  %lnot2 = xor i1 %lnot, true, !dbg !6546
  %lnot3 = xor i1 %lnot2, true, !dbg !6546
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6546
  %conv = sext i32 %lnot.ext to i64, !dbg !6546
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6546
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6546
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6548

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6549
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #20, !dbg !6550
  br label %if.end18, !dbg !6550

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6551
  %cmp = icmp slt i32 %7, 0, !dbg !6551
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6551

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !6551
  %9 = load i32, ptr %i.addr, align 4, !dbg !6551
  %add = add i32 %8, %9, !dbg !6551
  %cmp7 = icmp slt i32 %add, 0, !dbg !6551
  br label %lor.end, !dbg !6551

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !6551
  %lnot11 = xor i1 %lnot9, true, !dbg !6551
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6551
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6551
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6551
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6551
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6553

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6554
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #20, !dbg !6555
  br label %if.end17, !dbg !6555

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #19, !dbg !6556
  ret void, !dbg !6556
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6557 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6563, metadata !DIExpression()), !dbg !6565
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6564, metadata !DIExpression()), !dbg !6566
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6567
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #20, !dbg !6568
  %1 = load i32, ptr %i.addr, align 4, !dbg !6569
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6570
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #20, !dbg !6571
  ret i32 %call, !dbg !6572
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6573 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6576 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6584, metadata !DIExpression()), !dbg !6586
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6585, metadata !DIExpression()), !dbg !6587
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6588
  %1 = load i64, ptr %size.addr, align 8, !dbg !6589
  %conv = trunc i64 %1 to i32, !dbg !6589
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #20, !dbg !6590
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6591
  %3 = load i64, ptr %size.addr, align 8, !dbg !6591
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #20, !dbg !6591
  ret void, !dbg !6592
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6593 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6596, metadata !DIExpression()), !dbg !6598
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6597, metadata !DIExpression()), !dbg !6599
  %0 = load i32, ptr %i.addr, align 4, !dbg !6600
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6601
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #20, !dbg !6602
  ret i32 %call, !dbg !6603
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6604 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6609, metadata !DIExpression()), !dbg !6611
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6610, metadata !DIExpression()), !dbg !6612
  ret i1 true, !dbg !6613
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6614 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6619, metadata !DIExpression()), !dbg !6622
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6620, metadata !DIExpression()), !dbg !6623
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6621, metadata !DIExpression()), !dbg !6624
  ret void, !dbg !6625
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6626 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6629, metadata !DIExpression()), !dbg !6633
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6630, metadata !DIExpression()), !dbg !6634
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #19, !dbg !6635
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6631, metadata !DIExpression()), !dbg !6635
  %0 = load i32, ptr %i.addr, align 4, !dbg !6635
  store i32 %0, ptr %__ret, align 4, !dbg !6635
  %1 = load i32, ptr %__ret, align 4, !dbg !6635
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6635
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6635
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #19, !dbg !6635, !srcloc !6636
  store i32 %3, ptr %__ret, align 4, !dbg !6635
  %4 = load i32, ptr %__ret, align 4, !dbg !6635
  store i32 %4, ptr %tmp, align 4, !dbg !6635
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #19, !dbg !6637
  %5 = load i32, ptr %tmp, align 4, !dbg !6635
  ret i32 %5, !dbg !6638
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6639 dso_local void @devpts_kill_index(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6642 dso_local void @devpts_release(ptr noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6645 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6653, metadata !DIExpression()), !dbg !6658
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6654, metadata !DIExpression()), !dbg !6659
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #19, !dbg !6660
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6655, metadata !DIExpression()), !dbg !6661
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6662
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6663
  %div = udiv i64 %1, 64, !dbg !6663
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6664
  store ptr %add.ptr, ptr %p, align 8, !dbg !6661
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #19, !dbg !6665
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6656, metadata !DIExpression()), !dbg !6666
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6667
  %rem = urem i64 %2, 64, !dbg !6667
  %shl = shl i64 1, %rem, !dbg !6667
  store i64 %shl, ptr %mask, align 8, !dbg !6666
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #19, !dbg !6668
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6657, metadata !DIExpression()), !dbg !6669
  %3 = load ptr, ptr %p, align 8, !dbg !6670
  %4 = load i64, ptr %3, align 8, !dbg !6671
  store i64 %4, ptr %val, align 8, !dbg !6669
  %5 = load i64, ptr %val, align 8, !dbg !6672
  %6 = load i64, ptr %mask, align 8, !dbg !6673
  %and = and i64 %5, %6, !dbg !6674
  %tobool = icmp ne i64 %and, 0, !dbg !6675
  %lnot = xor i1 %tobool, true, !dbg !6675
  %lnot1 = xor i1 %lnot, true, !dbg !6676
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #19, !dbg !6677
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #19, !dbg !6677
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #19, !dbg !6677
  ret i1 %lnot1, !dbg !6678
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6679 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6682, metadata !DIExpression()), !dbg !6684
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6683, metadata !DIExpression()), !dbg !6685
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6686
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6687
  %div = udiv i64 %1, 64, !dbg !6687
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6688
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !6689
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6690
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6691
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !6692
  ret i1 %call, !dbg !6693
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6694 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6700, metadata !DIExpression()), !dbg !6702
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6701, metadata !DIExpression()), !dbg !6703
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6704
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6705
  %div = sdiv i64 %1, 64, !dbg !6705
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6706
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !6707
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6708
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6709
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !6710
  ret void, !dbg !6711
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6712 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6714, metadata !DIExpression()), !dbg !6716
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6715, metadata !DIExpression()), !dbg !6717
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6718
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6719
  %div = sdiv i64 %1, 64, !dbg !6719
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6720
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !6721
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6722
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6723
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !6724
  ret void, !dbg !6725
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6726 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6728, metadata !DIExpression()), !dbg !6730
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6729, metadata !DIExpression()), !dbg !6731
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6732
  %1 = load i64, ptr %size.addr, align 8, !dbg !6733
  %conv = trunc i64 %1 to i32, !dbg !6733
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #20, !dbg !6734
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6735
  %3 = load i64, ptr %size.addr, align 8, !dbg !6735
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #20, !dbg !6735
  ret void, !dbg !6736
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6737 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6740, metadata !DIExpression()), !dbg !6742
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6741, metadata !DIExpression()), !dbg !6743
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6744
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6745
  br i1 %1, label %cond.true, label %cond.false, !dbg !6745

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6746
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6747
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !6748
  %conv = zext i1 %call to i32, !dbg !6748
  br label %cond.end, !dbg !6745

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6749
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6750
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #20, !dbg !6751
  %conv2 = zext i1 %call1 to i32, !dbg !6751
  br label %cond.end, !dbg !6745

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6745
  %tobool = icmp ne i32 %cond, 0, !dbg !6745
  ret i1 %tobool, !dbg !6752
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6753 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6755, metadata !DIExpression()), !dbg !6757
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6756, metadata !DIExpression()), !dbg !6758
  ret i1 true, !dbg !6759
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6760 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6764, metadata !DIExpression()), !dbg !6766
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6765, metadata !DIExpression()), !dbg !6767
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6768
  %and = and i64 %0, 63, !dbg !6769
  %shl = shl i64 1, %and, !dbg !6770
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6771
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6772
  %shr = ashr i64 %2, 6, !dbg !6773
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6771
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6771
  %and1 = and i64 %shl, %3, !dbg !6774
  %cmp = icmp ne i64 %and1, 0, !dbg !6775
  ret i1 %cmp, !dbg !6776
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6777 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6779, metadata !DIExpression()), !dbg !6782
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6780, metadata !DIExpression()), !dbg !6783
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #19, !dbg !6784
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6781, metadata !DIExpression()), !dbg !6785
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6786
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6787
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #19, !dbg !6788, !srcloc !6789
  %3 = icmp ult i8 %2, 2, !dbg !6788
  call void @llvm.assume(i1 %3), !dbg !6788
  store i8 %2, ptr %oldbit, align 1, !dbg !6788
  %4 = load i8, ptr %oldbit, align 1, !dbg !6790, !range !5851, !noundef !806
  %tobool = trunc i8 %4 to i1, !dbg !6790
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #19, !dbg !6791
  ret i1 %tobool, !dbg !6792
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6793 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6795, metadata !DIExpression()), !dbg !6797
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6796, metadata !DIExpression()), !dbg !6798
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6799
  %1 = load i64, ptr %size.addr, align 8, !dbg !6800
  %conv = trunc i64 %1 to i32, !dbg !6800
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #20, !dbg !6801
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6802
  %3 = load i64, ptr %size.addr, align 8, !dbg !6802
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #20, !dbg !6802
  ret void, !dbg !6803
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6804 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6806, metadata !DIExpression()), !dbg !6808
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6807, metadata !DIExpression()), !dbg !6809
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6810
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6812
  br i1 %1, label %if.then, label %if.else, !dbg !6813

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6814
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6814
  %shr = ashr i64 %3, 3, !dbg !6814
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6814
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6816
  %and = and i64 %4, 7, !dbg !6816
  %sh_prom = trunc i64 %and to i32, !dbg !6816
  %shl = shl i32 1, %sh_prom, !dbg !6816
  %not = xor i32 %shl, -1, !dbg !6817
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #19, !dbg !6818, !srcloc !6819
  br label %if.end, !dbg !6820

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6821
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6823
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #19, !dbg !6824, !srcloc !6825
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6826
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6827 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6829, metadata !DIExpression()), !dbg !6831
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6830, metadata !DIExpression()), !dbg !6832
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6833
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6835
  br i1 %1, label %if.then, label %if.else, !dbg !6836

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6837
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6837
  %shr = ashr i64 %3, 3, !dbg !6837
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6837
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6839
  %and = and i64 %4, 7, !dbg !6839
  %sh_prom = trunc i64 %and to i32, !dbg !6839
  %shl = shl i32 1, %sh_prom, !dbg !6839
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #19, !dbg !6840, !srcloc !6841
  br label %if.end, !dbg !6842

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6843
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6845
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #19, !dbg !6846, !srcloc !6847
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6848
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tty_io_error(ptr noundef %tty) #4 align 16 !dbg !6849 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6853, metadata !DIExpression()), !dbg !6854
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6855
  %flags = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16, !dbg !6855
  %1 = ptrtoint ptr %flags to i64, !dbg !6855
  %cmp = icmp ne i64 %1, 0, !dbg !6855
  %conv = zext i1 %cmp to i32, !dbg !6855
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6855
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !6855

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !6855
  %flags1 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 16, !dbg !6855
  %4 = ptrtoint ptr %flags1 to i64, !dbg !6855
  %cmp2 = icmp ne i64 %4, 0, !dbg !6855
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !6855

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !6855
  %flags5 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 16, !dbg !6855
  %6 = load i64, ptr %flags5, align 8, !dbg !6855
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6855
  br i1 %7, label %cond.true, label %cond.false, !dbg !6855

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !6855
  %flags6 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 16, !dbg !6855
  %call = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %flags6) #20, !dbg !6855
  %conv7 = zext i1 %call to i32, !dbg !6855
  br label %cond.end, !dbg !6855

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !6855
  %flags8 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 16, !dbg !6855
  %call9 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %flags8) #20, !dbg !6855
  %conv10 = zext i1 %call9 to i32, !dbg !6855
  br label %cond.end, !dbg !6855

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !6855
  %tobool = icmp ne i32 %cond, 0, !dbg !6855
  ret i1 %tobool, !dbg !6856
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6857 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #5 align 16 !dbg !6861 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6866, metadata !DIExpression()), !dbg !6867
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6868
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6868
  call void @_raw_spin_lock_irq(ptr noundef %1) #20, !dbg !6868
  ret void, !dbg !6869
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #5 align 16 !dbg !6870 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6872, metadata !DIExpression()), !dbg !6873
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6874
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6874
  call void @_raw_spin_unlock_irq(ptr noundef %1) #20, !dbg !6874
  ret void, !dbg !6875
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6876 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6880 dso_local void @devpts_pty_kill(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6881 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6882 dso_local void @tty_vhangup(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6883 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6888 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6889 dso_local void @tty_port_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6890 dso_local i32 @tty_insert_flip_string_and_push_buffer(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6893 dso_local i32 @tty_buffer_space_avail(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pty_set_lock(ptr noundef %tty, ptr noundef %arg) #0 align 16 !dbg !6896 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %tmp5 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6900, metadata !DIExpression()), !dbg !6910
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6901, metadata !DIExpression()), !dbg !6911
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #19, !dbg !6912
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6902, metadata !DIExpression()), !dbg !6913
  call void @might_fault() #20, !dbg !6914
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #19, !dbg !6915
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6903, metadata !DIExpression()), !dbg !6915
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #19, !dbg !6915
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6907, metadata !DIExpression()), !dbg !6915
  %0 = call i64 @llvm.read_register.i64(metadata !5140), !dbg !6915
  %1 = load ptr, ptr %arg.addr, align 8, !dbg !6915
  %2 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %1, i64 4, i64 %0) #19, !dbg !6915, !srcloc !6916
  %asmresult = extractvalue { ptr, i32, i64 } %2, 0, !dbg !6915
  %asmresult1 = extractvalue { ptr, i32, i64 } %2, 1, !dbg !6915
  %asmresult2 = extractvalue { ptr, i32, i64 } %2, 2, !dbg !6915
  %3 = ptrtoint ptr %asmresult to i64, !dbg !6915
  %4 = trunc i64 %3 to i32, !dbg !6915
  store i32 %4, ptr %__ret_gu, align 4, !dbg !6915
  store i32 %asmresult1, ptr %__val_gu, align 4, !dbg !6915
  call void @llvm.write_register.i64(metadata !5140, i64 %asmresult2), !dbg !6915
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #19, !dbg !6917
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6908, metadata !DIExpression()), !dbg !6917
  %5 = load i32, ptr %__val_gu, align 4, !dbg !6917
  %conv = zext i32 %5 to i64, !dbg !6917
  store i64 %conv, ptr %__tmp, align 8, !dbg !6917
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #20, !dbg !6917
  %6 = load i64, ptr %__tmp, align 8, !dbg !6917
  %conv4 = trunc i64 %6 to i32, !dbg !6917
  store i32 %conv4, ptr %__val_gu, align 4, !dbg !6917
  store i32 %conv4, ptr %tmp3, align 4, !dbg !6917
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #19, !dbg !6915
  %7 = load i32, ptr %tmp3, align 4, !dbg !6917
  %8 = load i32, ptr %__val_gu, align 4, !dbg !6915
  store i32 %8, ptr %val, align 4, !dbg !6915
  %9 = load i32, ptr %__ret_gu, align 4, !dbg !6915
  %conv6 = sext i32 %9 to i64, !dbg !6915
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6915
  store i64 %expval, ptr %tmp5, align 8, !dbg !6915
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #19, !dbg !6914
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #19, !dbg !6914
  %10 = load i64, ptr %tmp5, align 8, !dbg !6915
  store i64 %10, ptr %tmp, align 8, !dbg !6914
  %11 = load i64, ptr %tmp, align 8, !dbg !6914
  %tobool = icmp ne i64 %11, 0, !dbg !6918
  br i1 %tobool, label %if.then, label %if.end, !dbg !6919

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6920

if.end:                                           ; preds = %entry
  %12 = load i32, ptr %val, align 4, !dbg !6921
  %tobool7 = icmp ne i32 %12, 0, !dbg !6921
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !6923

if.then8:                                         ; preds = %if.end
  %13 = load ptr, ptr %tty.addr, align 8, !dbg !6924
  %flags = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 16, !dbg !6925
  call void @set_bit(i64 noundef 16, ptr noundef %flags) #20, !dbg !6926
  br label %if.end10, !dbg !6926

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %tty.addr, align 8, !dbg !6927
  %flags9 = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 16, !dbg !6928
  call void @clear_bit(i64 noundef 16, ptr noundef %flags9) #20, !dbg !6929
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  store i32 0, ptr %retval, align 4, !dbg !6930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6930

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #19, !dbg !6931
  %15 = load i32, ptr %retval, align 4, !dbg !6931
  ret i32 %15, !dbg !6931
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pty_get_lock(ptr noundef %tty, ptr noundef %arg) #0 align 16 !dbg !6932 {
entry:
  %tty.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %locked = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp12 = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6934, metadata !DIExpression()), !dbg !6944
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6935, metadata !DIExpression()), !dbg !6945
  call void @llvm.lifetime.start.p0(i64 4, ptr %locked) #19, !dbg !6946
  call void @llvm.dbg.declare(metadata ptr %locked, metadata !6936, metadata !DIExpression()), !dbg !6947
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6948
  %flags = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16, !dbg !6948
  %1 = ptrtoint ptr %flags to i64, !dbg !6948
  %cmp = icmp ne i64 %1, 0, !dbg !6948
  %conv = zext i1 %cmp to i32, !dbg !6948
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6948
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !6948

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !6948
  %flags1 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 16, !dbg !6948
  %4 = ptrtoint ptr %flags1 to i64, !dbg !6948
  %cmp2 = icmp ne i64 %4, 0, !dbg !6948
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !6948

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !6948
  %flags5 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 16, !dbg !6948
  %6 = load i64, ptr %flags5, align 8, !dbg !6948
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6948
  br i1 %7, label %cond.true, label %cond.false, !dbg !6948

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !6948
  %flags6 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 16, !dbg !6948
  %call = call zeroext i1 @const_test_bit(i64 noundef 16, ptr noundef %flags6) #20, !dbg !6948
  %conv7 = zext i1 %call to i32, !dbg !6948
  br label %cond.end, !dbg !6948

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !6948
  %flags8 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 16, !dbg !6948
  %call9 = call zeroext i1 @_test_bit(i64 noundef 16, ptr noundef %flags8) #20, !dbg !6948
  %conv10 = zext i1 %call9 to i32, !dbg !6948
  br label %cond.end, !dbg !6948

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !6948
  store i32 %cond, ptr %locked, align 4, !dbg !6947
  call void @might_fault() #20, !dbg !6949
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #19, !dbg !6950
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6937, metadata !DIExpression()), !dbg !6950
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #19, !dbg !6950
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6940, metadata !DIExpression()), !dbg !6950
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #19, !dbg !6950
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6941, metadata !DIExpression()), !dbg !6950
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #19, !dbg !6950
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6942, metadata !DIExpression()), !dbg !6950
  %10 = load i32, ptr %locked, align 4, !dbg !6950
  store i32 %10, ptr %__x, align 4, !dbg !6950
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !6950
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6943, metadata !DIExpression()), !dbg !6950
  %11 = load ptr, ptr %arg.addr, align 8, !dbg !6950
  store ptr %11, ptr %__ptr, align 8, !dbg !6950
  %12 = load ptr, ptr %__ptr, align 8, !dbg !6950
  store ptr %12, ptr %__ptr_pu, align 8, !dbg !6950
  %13 = load i32, ptr %__x, align 4, !dbg !6950
  store i32 %13, ptr %__val_pu, align 4, !dbg !6950
  %14 = call i64 @llvm.read_register.i64(metadata !5140), !dbg !6950
  %15 = load ptr, ptr %__ptr_pu, align 8, !dbg !6950
  %16 = load i32, ptr %__val_pu, align 4, !dbg !6950
  %17 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %15, i32 %16, i64 4, i64 %14) #19, !dbg !6950, !srcloc !6951
  %asmresult = extractvalue { ptr, i64 } %17, 0, !dbg !6950
  %asmresult11 = extractvalue { ptr, i64 } %17, 1, !dbg !6950
  %18 = ptrtoint ptr %asmresult to i64, !dbg !6950
  %19 = trunc i64 %18 to i32, !dbg !6950
  store i32 %19, ptr %__ret_pu, align 4, !dbg !6950
  call void @llvm.write_register.i64(metadata !5140, i64 %asmresult11), !dbg !6950
  %20 = load ptr, ptr %__ptr, align 8, !dbg !6952
  call void @kmsan_copy_to_user(ptr noundef %20, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #20, !dbg !6952
  %21 = load i32, ptr %__ret_pu, align 4, !dbg !6950
  %conv13 = sext i32 %21 to i64, !dbg !6950
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6950
  store i64 %expval, ptr %tmp12, align 8, !dbg !6950
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !6949
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #19, !dbg !6949
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #19, !dbg !6949
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #19, !dbg !6949
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #19, !dbg !6949
  %22 = load i64, ptr %tmp12, align 8, !dbg !6950
  store i64 %22, ptr %tmp, align 8, !dbg !6949
  %23 = load i64, ptr %tmp, align 8, !dbg !6949
  %conv14 = trunc i64 %23 to i32, !dbg !6954
  call void @llvm.lifetime.end.p0(i64 4, ptr %locked) #19, !dbg !6955
  ret i32 %conv14, !dbg !6956
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pty_set_pktmode(ptr noundef %tty, ptr noundef %arg) #0 align 16 !dbg !6957 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %pktmode = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %tmp5 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6959, metadata !DIExpression()), !dbg !6969
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6960, metadata !DIExpression()), !dbg !6970
  call void @llvm.lifetime.start.p0(i64 4, ptr %pktmode) #19, !dbg !6971
  call void @llvm.dbg.declare(metadata ptr %pktmode, metadata !6961, metadata !DIExpression()), !dbg !6972
  call void @might_fault() #20, !dbg !6973
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #19, !dbg !6974
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6962, metadata !DIExpression()), !dbg !6974
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #19, !dbg !6974
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6966, metadata !DIExpression()), !dbg !6974
  %0 = call i64 @llvm.read_register.i64(metadata !5140), !dbg !6974
  %1 = load ptr, ptr %arg.addr, align 8, !dbg !6974
  %2 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %1, i64 4, i64 %0) #19, !dbg !6974, !srcloc !6975
  %asmresult = extractvalue { ptr, i32, i64 } %2, 0, !dbg !6974
  %asmresult1 = extractvalue { ptr, i32, i64 } %2, 1, !dbg !6974
  %asmresult2 = extractvalue { ptr, i32, i64 } %2, 2, !dbg !6974
  %3 = ptrtoint ptr %asmresult to i64, !dbg !6974
  %4 = trunc i64 %3 to i32, !dbg !6974
  store i32 %4, ptr %__ret_gu, align 4, !dbg !6974
  store i32 %asmresult1, ptr %__val_gu, align 4, !dbg !6974
  call void @llvm.write_register.i64(metadata !5140, i64 %asmresult2), !dbg !6974
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #19, !dbg !6976
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6967, metadata !DIExpression()), !dbg !6976
  %5 = load i32, ptr %__val_gu, align 4, !dbg !6976
  %conv = zext i32 %5 to i64, !dbg !6976
  store i64 %conv, ptr %__tmp, align 8, !dbg !6976
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #20, !dbg !6976
  %6 = load i64, ptr %__tmp, align 8, !dbg !6976
  %conv4 = trunc i64 %6 to i32, !dbg !6976
  store i32 %conv4, ptr %__val_gu, align 4, !dbg !6976
  store i32 %conv4, ptr %tmp3, align 4, !dbg !6976
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #19, !dbg !6974
  %7 = load i32, ptr %tmp3, align 4, !dbg !6976
  %8 = load i32, ptr %__val_gu, align 4, !dbg !6974
  store i32 %8, ptr %pktmode, align 4, !dbg !6974
  %9 = load i32, ptr %__ret_gu, align 4, !dbg !6974
  %conv6 = sext i32 %9 to i64, !dbg !6974
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6974
  store i64 %expval, ptr %tmp5, align 8, !dbg !6974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #19, !dbg !6973
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #19, !dbg !6973
  %10 = load i64, ptr %tmp5, align 8, !dbg !6974
  store i64 %10, ptr %tmp, align 8, !dbg !6973
  %11 = load i64, ptr %tmp, align 8, !dbg !6973
  %tobool = icmp ne i64 %11, 0, !dbg !6977
  br i1 %tobool, label %if.then, label %if.end, !dbg !6978

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6979

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %tty.addr, align 8, !dbg !6980
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 21, !dbg !6981
  %lock = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 2, !dbg !6982
  call void @spin_lock_irq(ptr noundef %lock) #20, !dbg !6983
  %13 = load i32, ptr %pktmode, align 4, !dbg !6984
  %tobool7 = icmp ne i32 %13, 0, !dbg !6984
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !6986

if.then8:                                         ; preds = %if.end
  %14 = load ptr, ptr %tty.addr, align 8, !dbg !6987
  %ctrl9 = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 21, !dbg !6990
  %packet = getelementptr inbounds %struct.anon.17, ptr %ctrl9, i32 0, i32 4, !dbg !6991
  %15 = load i8, ptr %packet, align 1, !dbg !6991, !range !5851, !noundef !806
  %tobool10 = trunc i8 %15 to i1, !dbg !6991
  br i1 %tobool10, label %if.end18, label %if.then11, !dbg !6992

if.then11:                                        ; preds = %if.then8
  %16 = load ptr, ptr %tty.addr, align 8, !dbg !6993
  %link = getelementptr inbounds %struct.tty_struct, ptr %16, i32 0, i32 25, !dbg !6995
  %17 = load ptr, ptr %link, align 8, !dbg !6995
  %ctrl12 = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 21, !dbg !6996
  %pktstatus = getelementptr inbounds %struct.anon.17, ptr %ctrl12, i32 0, i32 3, !dbg !6997
  store i8 0, ptr %pktstatus, align 4, !dbg !6998
  br label %do.body, !dbg !6999

do.body:                                          ; preds = %if.then11
  br label %do.body13, !dbg !7000

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !7002

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !7002

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !7000, !srcloc !7004
  br label %do.cond14, !dbg !7000

do.cond14:                                        ; preds = %do.end
  br label %do.end15, !dbg !7000

do.end15:                                         ; preds = %do.cond14
  %18 = load ptr, ptr %tty.addr, align 8, !dbg !7005
  %ctrl16 = getelementptr inbounds %struct.tty_struct, ptr %18, i32 0, i32 21, !dbg !7006
  %packet17 = getelementptr inbounds %struct.anon.17, ptr %ctrl16, i32 0, i32 4, !dbg !7007
  store i8 1, ptr %packet17, align 1, !dbg !7008
  br label %if.end18, !dbg !7009

if.end18:                                         ; preds = %do.end15, %if.then8
  br label %if.end21, !dbg !7010

if.else:                                          ; preds = %if.end
  %19 = load ptr, ptr %tty.addr, align 8, !dbg !7011
  %ctrl19 = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 21, !dbg !7012
  %packet20 = getelementptr inbounds %struct.anon.17, ptr %ctrl19, i32 0, i32 4, !dbg !7013
  store i8 0, ptr %packet20, align 1, !dbg !7014
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end18
  %20 = load ptr, ptr %tty.addr, align 8, !dbg !7015
  %ctrl22 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 21, !dbg !7016
  %lock23 = getelementptr inbounds %struct.anon.17, ptr %ctrl22, i32 0, i32 2, !dbg !7017
  call void @spin_unlock_irq(ptr noundef %lock23) #20, !dbg !7018
  store i32 0, ptr %retval, align 4, !dbg !7019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7019

cleanup:                                          ; preds = %if.end21, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pktmode) #19, !dbg !7020
  %21 = load i32, ptr %retval, align 4, !dbg !7020
  ret i32 %21, !dbg !7020
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pty_get_pktmode(ptr noundef %tty, ptr noundef %arg) #0 align 16 !dbg !7021 {
entry:
  %tty.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %pktmode = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp2 = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !7023, metadata !DIExpression()), !dbg !7033
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !7024, metadata !DIExpression()), !dbg !7034
  call void @llvm.lifetime.start.p0(i64 4, ptr %pktmode) #19, !dbg !7035
  call void @llvm.dbg.declare(metadata ptr %pktmode, metadata !7025, metadata !DIExpression()), !dbg !7036
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !7037
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 21, !dbg !7038
  %packet = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 4, !dbg !7039
  %1 = load i8, ptr %packet, align 1, !dbg !7039, !range !5851, !noundef !806
  %tobool = trunc i8 %1 to i1, !dbg !7039
  %conv = zext i1 %tobool to i32, !dbg !7037
  store i32 %conv, ptr %pktmode, align 4, !dbg !7036
  call void @might_fault() #20, !dbg !7040
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #19, !dbg !7041
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !7026, metadata !DIExpression()), !dbg !7041
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #19, !dbg !7041
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !7029, metadata !DIExpression()), !dbg !7041
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #19, !dbg !7041
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !7030, metadata !DIExpression()), !dbg !7041
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #19, !dbg !7041
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !7031, metadata !DIExpression()), !dbg !7041
  %2 = load i32, ptr %pktmode, align 4, !dbg !7041
  store i32 %2, ptr %__x, align 4, !dbg !7041
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !7041
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !7032, metadata !DIExpression()), !dbg !7041
  %3 = load ptr, ptr %arg.addr, align 8, !dbg !7041
  store ptr %3, ptr %__ptr, align 8, !dbg !7041
  %4 = load ptr, ptr %__ptr, align 8, !dbg !7041
  store ptr %4, ptr %__ptr_pu, align 8, !dbg !7041
  %5 = load i32, ptr %__x, align 4, !dbg !7041
  store i32 %5, ptr %__val_pu, align 4, !dbg !7041
  %6 = call i64 @llvm.read_register.i64(metadata !5140), !dbg !7041
  %7 = load ptr, ptr %__ptr_pu, align 8, !dbg !7041
  %8 = load i32, ptr %__val_pu, align 4, !dbg !7041
  %9 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %7, i32 %8, i64 4, i64 %6) #19, !dbg !7041, !srcloc !7042
  %asmresult = extractvalue { ptr, i64 } %9, 0, !dbg !7041
  %asmresult1 = extractvalue { ptr, i64 } %9, 1, !dbg !7041
  %10 = ptrtoint ptr %asmresult to i64, !dbg !7041
  %11 = trunc i64 %10 to i32, !dbg !7041
  store i32 %11, ptr %__ret_pu, align 4, !dbg !7041
  call void @llvm.write_register.i64(metadata !5140, i64 %asmresult1), !dbg !7041
  %12 = load ptr, ptr %__ptr, align 8, !dbg !7043
  call void @kmsan_copy_to_user(ptr noundef %12, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #20, !dbg !7043
  %13 = load i32, ptr %__ret_pu, align 4, !dbg !7041
  %conv3 = sext i32 %13 to i64, !dbg !7041
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !7041
  store i64 %expval, ptr %tmp2, align 8, !dbg !7041
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !7040
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #19, !dbg !7040
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #19, !dbg !7040
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #19, !dbg !7040
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #19, !dbg !7040
  %14 = load i64, ptr %tmp2, align 8, !dbg !7041
  store i64 %14, ptr %tmp, align 8, !dbg !7040
  %15 = load i64, ptr %tmp, align 8, !dbg !7040
  %conv4 = trunc i64 %15 to i32, !dbg !7045
  call void @llvm.lifetime.end.p0(i64 4, ptr %pktmode) #19, !dbg !7046
  ret i32 %conv4, !dbg !7047
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #4 align 16 !dbg !7048 {
entry:
  ret void, !dbg !7050
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #17

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #18

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #4 align 16 !dbg !7051 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7056, metadata !DIExpression()), !dbg !7060
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7057, metadata !DIExpression()), !dbg !7061
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !7058, metadata !DIExpression()), !dbg !7062
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !7059, metadata !DIExpression()), !dbg !7063
  ret void, !dbg !7064
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pty_signal(ptr noundef %tty, i32 noundef %sig) #0 align 16 !dbg !7065 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %sig.addr = alloca i32, align 4
  %pgrp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !7067, metadata !DIExpression()), !dbg !7070
  store i32 %sig, ptr %sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sig.addr, metadata !7068, metadata !DIExpression()), !dbg !7071
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgrp) #19, !dbg !7072
  call void @llvm.dbg.declare(metadata ptr %pgrp, metadata !7069, metadata !DIExpression()), !dbg !7073
  %0 = load i32, ptr %sig.addr, align 4, !dbg !7074
  %cmp = icmp ne i32 %0, 2, !dbg !7076
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !7077

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %sig.addr, align 4, !dbg !7078
  %cmp1 = icmp ne i32 %1, 3, !dbg !7079
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !7080

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %sig.addr, align 4, !dbg !7081
  %cmp3 = icmp ne i32 %2, 20, !dbg !7082
  br i1 %cmp3, label %if.then, label %if.end, !dbg !7083

if.then:                                          ; preds = %land.lhs.true2
  store i32 -22, ptr %retval, align 4, !dbg !7084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7084

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !7085
  %link = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 25, !dbg !7087
  %4 = load ptr, ptr %link, align 8, !dbg !7087
  %tobool = icmp ne ptr %4, null, !dbg !7085
  br i1 %tobool, label %if.then4, label %if.end10, !dbg !7088

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !7089
  %link5 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 25, !dbg !7091
  %6 = load ptr, ptr %link5, align 8, !dbg !7091
  %call = call ptr @tty_get_pgrp(ptr noundef %6) #20, !dbg !7092
  store ptr %call, ptr %pgrp, align 8, !dbg !7093
  %7 = load ptr, ptr %pgrp, align 8, !dbg !7094
  %tobool6 = icmp ne ptr %7, null, !dbg !7094
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !7096

if.then7:                                         ; preds = %if.then4
  %8 = load ptr, ptr %pgrp, align 8, !dbg !7097
  %9 = load i32, ptr %sig.addr, align 4, !dbg !7098
  %call8 = call i32 @kill_pgrp(ptr noundef %8, i32 noundef %9, i32 noundef 1) #20, !dbg !7099
  br label %if.end9, !dbg !7099

if.end9:                                          ; preds = %if.then7, %if.then4
  %10 = load ptr, ptr %pgrp, align 8, !dbg !7100
  call void @put_pid(ptr noundef %10) #20, !dbg !7101
  br label %if.end10, !dbg !7102

if.end10:                                         ; preds = %if.end9, %if.end
  store i32 0, ptr %retval, align 4, !dbg !7103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7103

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgrp) #19, !dbg !7104
  %11 = load i32, ptr %retval, align 4, !dbg !7104
  ret i32 %11, !dbg !7104
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #4 align 16 !dbg !7105 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7109, metadata !DIExpression()), !dbg !7111
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7110, metadata !DIExpression()), !dbg !7112
  ret void, !dbg !7113
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7114 dso_local ptr @tty_get_pgrp(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7117 dso_local i32 @kill_pgrp(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7120 dso_local void @put_pid(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @compat_ptr(i32 noundef %uptr) #4 align 16 !dbg !7123 {
entry:
  %uptr.addr = alloca i32, align 4
  store i32 %uptr, ptr %uptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !7127, metadata !DIExpression()), !dbg !7128
  %0 = load i32, ptr %uptr.addr, align 4, !dbg !7129
  %conv = zext i32 %0 to i64, !dbg !7130
  %1 = inttoptr i64 %conv to ptr, !dbg !7131
  ret ptr %1, !dbg !7132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7133 dso_local void @tty_wakeup(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7134 dso_local void @tty_buffer_flush(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7137 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7141 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pts_unix98_lookup(ptr noundef %driver, ptr noundef %file, i32 noundef %idx) #0 align 16 !dbg !7144 {
entry:
  %retval = alloca ptr, align 8
  %driver.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %tty = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !7146, metadata !DIExpression()), !dbg !7150
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7147, metadata !DIExpression()), !dbg !7151
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !7148, metadata !DIExpression()), !dbg !7152
  call void @llvm.lifetime.start.p0(i64 8, ptr %tty) #19, !dbg !7153
  call void @llvm.dbg.declare(metadata ptr %tty, metadata !7149, metadata !DIExpression()), !dbg !7154
  call void @mutex_lock(ptr noundef @devpts_mutex) #20, !dbg !7155
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7156
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10, !dbg !7157
  %dentry = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !7158
  %1 = load ptr, ptr %dentry, align 8, !dbg !7158
  %call = call ptr @devpts_get_priv(ptr noundef %1) #20, !dbg !7159
  store ptr %call, ptr %tty, align 8, !dbg !7160
  call void @mutex_unlock(ptr noundef @devpts_mutex) #20, !dbg !7161
  %2 = load ptr, ptr %tty, align 8, !dbg !7162
  %tobool = icmp ne ptr %2, null, !dbg !7162
  br i1 %tobool, label %if.end, label %if.then, !dbg !7164

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -5) #20, !dbg !7165
  store ptr %call1, ptr %retval, align 8, !dbg !7166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7166

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tty, align 8, !dbg !7167
  store ptr %3, ptr %retval, align 8, !dbg !7168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7168

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tty) #19, !dbg !7169
  %4 = load ptr, ptr %retval, align 8, !dbg !7169
  ret ptr %4, !dbg !7169
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pty_set_termios(ptr noundef %tty, ptr noundef %old_termios) #0 align 16 !dbg !7170 {
entry:
  %tty.addr = alloca ptr, align 8
  %old_termios.addr = alloca ptr, align 8
  %extproc = alloca i32, align 4
  %old_flow = alloca i32, align 4
  %new_flow = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !7172, metadata !DIExpression()), !dbg !7179
  store ptr %old_termios, ptr %old_termios.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_termios.addr, metadata !7173, metadata !DIExpression()), !dbg !7180
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !7181
  %link = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 25, !dbg !7182
  %1 = load ptr, ptr %link, align 8, !dbg !7182
  %tobool = icmp ne ptr %1, null, !dbg !7181
  br i1 %tobool, label %land.lhs.true, label %if.end71, !dbg !7183

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !7184
  %link1 = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 25, !dbg !7185
  %3 = load ptr, ptr %link1, align 8, !dbg !7185
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 21, !dbg !7186
  %packet = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 4, !dbg !7187
  %4 = load i8, ptr %packet, align 1, !dbg !7187, !range !5851, !noundef !806
  %tobool2 = trunc i8 %4 to i1, !dbg !7187
  br i1 %tobool2, label %if.then, label %if.end71, !dbg !7188

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %extproc) #19, !dbg !7189
  call void @llvm.dbg.declare(metadata ptr %extproc, metadata !7174, metadata !DIExpression()), !dbg !7190
  %5 = load ptr, ptr %old_termios.addr, align 8, !dbg !7191
  %c_lflag = getelementptr inbounds %struct.ktermios, ptr %5, i32 0, i32 3, !dbg !7192
  %6 = load i32, ptr %c_lflag, align 4, !dbg !7192
  %and = and i32 %6, 65536, !dbg !7193
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !7194
  %termios = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 13, !dbg !7194
  %c_lflag3 = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 3, !dbg !7194
  %8 = load i32, ptr %c_lflag3, align 4, !dbg !7194
  %and4 = and i32 %8, 65536, !dbg !7194
  %or = or i32 %and, %and4, !dbg !7195
  store i32 %or, ptr %extproc, align 4, !dbg !7190
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_flow) #19, !dbg !7196
  call void @llvm.dbg.declare(metadata ptr %old_flow, metadata !7177, metadata !DIExpression()), !dbg !7197
  %9 = load ptr, ptr %old_termios.addr, align 8, !dbg !7198
  %c_iflag = getelementptr inbounds %struct.ktermios, ptr %9, i32 0, i32 0, !dbg !7199
  %10 = load i32, ptr %c_iflag, align 4, !dbg !7199
  %and5 = and i32 %10, 1024, !dbg !7200
  %tobool6 = icmp ne i32 %and5, 0, !dbg !7200
  br i1 %tobool6, label %land.lhs.true7, label %land.end, !dbg !7201

land.lhs.true7:                                   ; preds = %if.then
  %11 = load ptr, ptr %old_termios.addr, align 8, !dbg !7202
  %c_cc = getelementptr inbounds %struct.ktermios, ptr %11, i32 0, i32 5, !dbg !7203
  %arrayidx = getelementptr [19 x i8], ptr %c_cc, i64 0, i64 9, !dbg !7202
  %12 = load i8, ptr %arrayidx, align 1, !dbg !7202
  %conv = zext i8 %12 to i32, !dbg !7202
  %cmp = icmp eq i32 %conv, 19, !dbg !7204
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7205

land.rhs:                                         ; preds = %land.lhs.true7
  %13 = load ptr, ptr %old_termios.addr, align 8, !dbg !7206
  %c_cc9 = getelementptr inbounds %struct.ktermios, ptr %13, i32 0, i32 5, !dbg !7207
  %arrayidx10 = getelementptr [19 x i8], ptr %c_cc9, i64 0, i64 8, !dbg !7206
  %14 = load i8, ptr %arrayidx10, align 1, !dbg !7206
  %conv11 = zext i8 %14 to i32, !dbg !7206
  %cmp12 = icmp eq i32 %conv11, 17, !dbg !7208
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true7, %if.then
  %15 = phi i1 [ false, %land.lhs.true7 ], [ false, %if.then ], [ %cmp12, %land.rhs ], !dbg !7209
  %land.ext = zext i1 %15 to i32, !dbg !7205
  store i32 %land.ext, ptr %old_flow, align 4, !dbg !7197
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_flow) #19, !dbg !7210
  call void @llvm.dbg.declare(metadata ptr %new_flow, metadata !7178, metadata !DIExpression()), !dbg !7211
  %16 = load ptr, ptr %tty.addr, align 8, !dbg !7212
  %termios14 = getelementptr inbounds %struct.tty_struct, ptr %16, i32 0, i32 13, !dbg !7212
  %c_iflag15 = getelementptr inbounds %struct.ktermios, ptr %termios14, i32 0, i32 0, !dbg !7212
  %17 = load i32, ptr %c_iflag15, align 8, !dbg !7212
  %and16 = and i32 %17, 1024, !dbg !7212
  %tobool17 = icmp ne i32 %and16, 0, !dbg !7212
  br i1 %tobool17, label %land.lhs.true18, label %land.end32, !dbg !7213

land.lhs.true18:                                  ; preds = %land.end
  %18 = load ptr, ptr %tty.addr, align 8, !dbg !7214
  %termios19 = getelementptr inbounds %struct.tty_struct, ptr %18, i32 0, i32 13, !dbg !7214
  %c_cc20 = getelementptr inbounds %struct.ktermios, ptr %termios19, i32 0, i32 5, !dbg !7214
  %arrayidx21 = getelementptr [19 x i8], ptr %c_cc20, i64 0, i64 9, !dbg !7214
  %19 = load i8, ptr %arrayidx21, align 1, !dbg !7214
  %conv22 = zext i8 %19 to i32, !dbg !7214
  %cmp23 = icmp eq i32 %conv22, 19, !dbg !7215
  br i1 %cmp23, label %land.rhs25, label %land.end32, !dbg !7216

land.rhs25:                                       ; preds = %land.lhs.true18
  %20 = load ptr, ptr %tty.addr, align 8, !dbg !7217
  %termios26 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 13, !dbg !7217
  %c_cc27 = getelementptr inbounds %struct.ktermios, ptr %termios26, i32 0, i32 5, !dbg !7217
  %arrayidx28 = getelementptr [19 x i8], ptr %c_cc27, i64 0, i64 8, !dbg !7217
  %21 = load i8, ptr %arrayidx28, align 1, !dbg !7217
  %conv29 = zext i8 %21 to i32, !dbg !7217
  %cmp30 = icmp eq i32 %conv29, 17, !dbg !7218
  br label %land.end32

land.end32:                                       ; preds = %land.rhs25, %land.lhs.true18, %land.end
  %22 = phi i1 [ false, %land.lhs.true18 ], [ false, %land.end ], [ %cmp30, %land.rhs25 ], !dbg !7209
  %land.ext33 = zext i1 %22 to i32, !dbg !7216
  store i32 %land.ext33, ptr %new_flow, align 4, !dbg !7211
  %23 = load i32, ptr %old_flow, align 4, !dbg !7219
  %24 = load i32, ptr %new_flow, align 4, !dbg !7221
  %cmp34 = icmp ne i32 %23, %24, !dbg !7222
  br i1 %cmp34, label %if.then37, label %lor.lhs.false, !dbg !7223

lor.lhs.false:                                    ; preds = %land.end32
  %25 = load i32, ptr %extproc, align 4, !dbg !7224
  %tobool36 = icmp ne i32 %25, 0, !dbg !7224
  br i1 %tobool36, label %if.then37, label %if.end70, !dbg !7225

if.then37:                                        ; preds = %lor.lhs.false, %land.end32
  %26 = load ptr, ptr %tty.addr, align 8, !dbg !7226
  %ctrl38 = getelementptr inbounds %struct.tty_struct, ptr %26, i32 0, i32 21, !dbg !7228
  %lock = getelementptr inbounds %struct.anon.17, ptr %ctrl38, i32 0, i32 2, !dbg !7229
  call void @spin_lock_irq(ptr noundef %lock) #20, !dbg !7230
  %27 = load i32, ptr %old_flow, align 4, !dbg !7231
  %28 = load i32, ptr %new_flow, align 4, !dbg !7233
  %cmp39 = icmp ne i32 %27, %28, !dbg !7234
  br i1 %cmp39, label %if.then41, label %if.end58, !dbg !7235

if.then41:                                        ; preds = %if.then37
  %29 = load ptr, ptr %tty.addr, align 8, !dbg !7236
  %ctrl42 = getelementptr inbounds %struct.tty_struct, ptr %29, i32 0, i32 21, !dbg !7238
  %pktstatus = getelementptr inbounds %struct.anon.17, ptr %ctrl42, i32 0, i32 3, !dbg !7239
  %30 = load i8, ptr %pktstatus, align 4, !dbg !7240
  %conv43 = zext i8 %30 to i32, !dbg !7240
  %and44 = and i32 %conv43, -49, !dbg !7240
  %conv45 = trunc i32 %and44 to i8, !dbg !7240
  store i8 %conv45, ptr %pktstatus, align 4, !dbg !7240
  %31 = load i32, ptr %new_flow, align 4, !dbg !7241
  %tobool46 = icmp ne i32 %31, 0, !dbg !7241
  br i1 %tobool46, label %if.then47, label %if.else, !dbg !7243

if.then47:                                        ; preds = %if.then41
  %32 = load ptr, ptr %tty.addr, align 8, !dbg !7244
  %ctrl48 = getelementptr inbounds %struct.tty_struct, ptr %32, i32 0, i32 21, !dbg !7245
  %pktstatus49 = getelementptr inbounds %struct.anon.17, ptr %ctrl48, i32 0, i32 3, !dbg !7246
  %33 = load i8, ptr %pktstatus49, align 4, !dbg !7247
  %conv50 = zext i8 %33 to i32, !dbg !7247
  %or51 = or i32 %conv50, 32, !dbg !7247
  %conv52 = trunc i32 %or51 to i8, !dbg !7247
  store i8 %conv52, ptr %pktstatus49, align 4, !dbg !7247
  br label %if.end, !dbg !7244

if.else:                                          ; preds = %if.then41
  %34 = load ptr, ptr %tty.addr, align 8, !dbg !7248
  %ctrl53 = getelementptr inbounds %struct.tty_struct, ptr %34, i32 0, i32 21, !dbg !7249
  %pktstatus54 = getelementptr inbounds %struct.anon.17, ptr %ctrl53, i32 0, i32 3, !dbg !7250
  %35 = load i8, ptr %pktstatus54, align 4, !dbg !7251
  %conv55 = zext i8 %35 to i32, !dbg !7251
  %or56 = or i32 %conv55, 16, !dbg !7251
  %conv57 = trunc i32 %or56 to i8, !dbg !7251
  store i8 %conv57, ptr %pktstatus54, align 4, !dbg !7251
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then47
  br label %if.end58, !dbg !7252

if.end58:                                         ; preds = %if.end, %if.then37
  %36 = load i32, ptr %extproc, align 4, !dbg !7253
  %tobool59 = icmp ne i32 %36, 0, !dbg !7253
  br i1 %tobool59, label %if.then60, label %if.end66, !dbg !7255

if.then60:                                        ; preds = %if.end58
  %37 = load ptr, ptr %tty.addr, align 8, !dbg !7256
  %ctrl61 = getelementptr inbounds %struct.tty_struct, ptr %37, i32 0, i32 21, !dbg !7257
  %pktstatus62 = getelementptr inbounds %struct.anon.17, ptr %ctrl61, i32 0, i32 3, !dbg !7258
  %38 = load i8, ptr %pktstatus62, align 4, !dbg !7259
  %conv63 = zext i8 %38 to i32, !dbg !7259
  %or64 = or i32 %conv63, 64, !dbg !7259
  %conv65 = trunc i32 %or64 to i8, !dbg !7259
  store i8 %conv65, ptr %pktstatus62, align 4, !dbg !7259
  br label %if.end66, !dbg !7256

if.end66:                                         ; preds = %if.then60, %if.end58
  %39 = load ptr, ptr %tty.addr, align 8, !dbg !7260
  %ctrl67 = getelementptr inbounds %struct.tty_struct, ptr %39, i32 0, i32 21, !dbg !7261
  %lock68 = getelementptr inbounds %struct.anon.17, ptr %ctrl67, i32 0, i32 2, !dbg !7262
  call void @spin_unlock_irq(ptr noundef %lock68) #20, !dbg !7263
  %40 = load ptr, ptr %tty.addr, align 8, !dbg !7264
  %link69 = getelementptr inbounds %struct.tty_struct, ptr %40, i32 0, i32 25, !dbg !7264
  %41 = load ptr, ptr %link69, align 8, !dbg !7264
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %41, i32 0, i32 28, !dbg !7264
  %call = call i32 @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #20, !dbg !7264
  br label %if.end70, !dbg !7265

if.end70:                                         ; preds = %if.end66, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_flow) #19, !dbg !7266
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_flow) #19, !dbg !7266
  call void @llvm.lifetime.end.p0(i64 4, ptr %extproc) #19, !dbg !7266
  br label %if.end71, !dbg !7267

if.end71:                                         ; preds = %if.end70, %land.lhs.true, %entry
  %42 = load ptr, ptr %tty.addr, align 8, !dbg !7268
  %termios72 = getelementptr inbounds %struct.tty_struct, ptr %42, i32 0, i32 13, !dbg !7269
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios72, i32 0, i32 2, !dbg !7270
  %43 = load i32, ptr %c_cflag, align 8, !dbg !7271
  %and73 = and i32 %43, -305, !dbg !7271
  store i32 %and73, ptr %c_cflag, align 8, !dbg !7271
  %44 = load ptr, ptr %tty.addr, align 8, !dbg !7272
  %termios74 = getelementptr inbounds %struct.tty_struct, ptr %44, i32 0, i32 13, !dbg !7273
  %c_cflag75 = getelementptr inbounds %struct.ktermios, ptr %termios74, i32 0, i32 2, !dbg !7274
  %45 = load i32, ptr %c_cflag75, align 8, !dbg !7275
  %or76 = or i32 %45, 176, !dbg !7275
  store i32 %or76, ptr %c_cflag75, align 8, !dbg !7275
  ret void, !dbg !7276
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pty_stop(ptr noundef %tty) #0 align 16 !dbg !7277 {
entry:
  %tty.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !7279, metadata !DIExpression()), !dbg !7288
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #19, !dbg !7289
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !7280, metadata !DIExpression()), !dbg !7290
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !7291
  %link = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 25, !dbg !7292
  %1 = load ptr, ptr %link, align 8, !dbg !7292
  %tobool = icmp ne ptr %1, null, !dbg !7291
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7293

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !7294
  %link1 = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 25, !dbg !7295
  %3 = load ptr, ptr %link1, align 8, !dbg !7295
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 21, !dbg !7296
  %packet = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 4, !dbg !7297
  %4 = load i8, ptr %packet, align 1, !dbg !7297, !range !5851, !noundef !806
  %tobool2 = trunc i8 %4 to i1, !dbg !7297
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7298

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !7299

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !7300

do.body3:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #19, !dbg !7301
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !7281, metadata !DIExpression()), !dbg !7301
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #19, !dbg !7301
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !7287, metadata !DIExpression()), !dbg !7301
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !7301
  %conv = zext i1 %cmp to i32, !dbg !7301
  store i32 1, ptr %tmp, align 4, !dbg !7301
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #19, !dbg !7302
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #19, !dbg !7302
  %5 = load i32, ptr %tmp, align 4, !dbg !7301
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !7302
  %ctrl4 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 21, !dbg !7302
  %lock = getelementptr inbounds %struct.anon.17, ptr %ctrl4, i32 0, i32 2, !dbg !7302
  %call = call ptr @spinlock_check(ptr noundef %lock) #20, !dbg !7302
  %call5 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #20, !dbg !7302
  store i64 %call5, ptr %flags, align 8, !dbg !7302
  br label %do.cond, !dbg !7302

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !7302

do.end:                                           ; preds = %do.cond
  br label %do.cond6, !dbg !7300

do.cond6:                                         ; preds = %do.end
  br label %do.end7, !dbg !7300

do.end7:                                          ; preds = %do.cond6
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !7303
  %ctrl8 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 21, !dbg !7304
  %pktstatus = getelementptr inbounds %struct.anon.17, ptr %ctrl8, i32 0, i32 3, !dbg !7305
  %8 = load i8, ptr %pktstatus, align 4, !dbg !7306
  %conv9 = zext i8 %8 to i32, !dbg !7306
  %and = and i32 %conv9, -9, !dbg !7306
  %conv10 = trunc i32 %and to i8, !dbg !7306
  store i8 %conv10, ptr %pktstatus, align 4, !dbg !7306
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !7307
  %ctrl11 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 21, !dbg !7308
  %pktstatus12 = getelementptr inbounds %struct.anon.17, ptr %ctrl11, i32 0, i32 3, !dbg !7309
  %10 = load i8, ptr %pktstatus12, align 4, !dbg !7310
  %conv13 = zext i8 %10 to i32, !dbg !7310
  %or = or i32 %conv13, 4, !dbg !7310
  %conv14 = trunc i32 %or to i8, !dbg !7310
  store i8 %conv14, ptr %pktstatus12, align 4, !dbg !7310
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !7311
  %ctrl15 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 21, !dbg !7312
  %lock16 = getelementptr inbounds %struct.anon.17, ptr %ctrl15, i32 0, i32 2, !dbg !7313
  %12 = load i64, ptr %flags, align 8, !dbg !7314
  call void @spin_unlock_irqrestore(ptr noundef %lock16, i64 noundef %12) #20, !dbg !7315
  %13 = load ptr, ptr %tty.addr, align 8, !dbg !7316
  %link17 = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 25, !dbg !7316
  %14 = load ptr, ptr %link17, align 8, !dbg !7316
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 28, !dbg !7316
  %call18 = call i32 @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef inttoptr (i64 1 to ptr)) #20, !dbg !7316
  br label %if.end, !dbg !7317

if.end:                                           ; preds = %do.end7, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #19, !dbg !7318
  ret void, !dbg !7318
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pty_start(ptr noundef %tty) #0 align 16 !dbg !7319 {
entry:
  %tty.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !7321, metadata !DIExpression()), !dbg !7330
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #19, !dbg !7331
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !7322, metadata !DIExpression()), !dbg !7332
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !7333
  %link = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 25, !dbg !7334
  %1 = load ptr, ptr %link, align 8, !dbg !7334
  %tobool = icmp ne ptr %1, null, !dbg !7333
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7335

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !7336
  %link1 = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 25, !dbg !7337
  %3 = load ptr, ptr %link1, align 8, !dbg !7337
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 21, !dbg !7338
  %packet = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 4, !dbg !7339
  %4 = load i8, ptr %packet, align 1, !dbg !7339, !range !5851, !noundef !806
  %tobool2 = trunc i8 %4 to i1, !dbg !7339
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7340

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !7341

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !7342

do.body3:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #19, !dbg !7343
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !7323, metadata !DIExpression()), !dbg !7343
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #19, !dbg !7343
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !7329, metadata !DIExpression()), !dbg !7343
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !7343
  %conv = zext i1 %cmp to i32, !dbg !7343
  store i32 1, ptr %tmp, align 4, !dbg !7343
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #19, !dbg !7344
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #19, !dbg !7344
  %5 = load i32, ptr %tmp, align 4, !dbg !7343
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !7344
  %ctrl4 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 21, !dbg !7344
  %lock = getelementptr inbounds %struct.anon.17, ptr %ctrl4, i32 0, i32 2, !dbg !7344
  %call = call ptr @spinlock_check(ptr noundef %lock) #20, !dbg !7344
  %call5 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #20, !dbg !7344
  store i64 %call5, ptr %flags, align 8, !dbg !7344
  br label %do.cond, !dbg !7344

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !7344

do.end:                                           ; preds = %do.cond
  br label %do.cond6, !dbg !7342

do.cond6:                                         ; preds = %do.end
  br label %do.end7, !dbg !7342

do.end7:                                          ; preds = %do.cond6
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !7345
  %ctrl8 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 21, !dbg !7346
  %pktstatus = getelementptr inbounds %struct.anon.17, ptr %ctrl8, i32 0, i32 3, !dbg !7347
  %8 = load i8, ptr %pktstatus, align 4, !dbg !7348
  %conv9 = zext i8 %8 to i32, !dbg !7348
  %and = and i32 %conv9, -5, !dbg !7348
  %conv10 = trunc i32 %and to i8, !dbg !7348
  store i8 %conv10, ptr %pktstatus, align 4, !dbg !7348
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !7349
  %ctrl11 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 21, !dbg !7350
  %pktstatus12 = getelementptr inbounds %struct.anon.17, ptr %ctrl11, i32 0, i32 3, !dbg !7351
  %10 = load i8, ptr %pktstatus12, align 4, !dbg !7352
  %conv13 = zext i8 %10 to i32, !dbg !7352
  %or = or i32 %conv13, 8, !dbg !7352
  %conv14 = trunc i32 %or to i8, !dbg !7352
  store i8 %conv14, ptr %pktstatus12, align 4, !dbg !7352
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !7353
  %ctrl15 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 21, !dbg !7354
  %lock16 = getelementptr inbounds %struct.anon.17, ptr %ctrl15, i32 0, i32 2, !dbg !7355
  %12 = load i64, ptr %flags, align 8, !dbg !7356
  call void @spin_unlock_irqrestore(ptr noundef %lock16, i64 noundef %12) #20, !dbg !7357
  %13 = load ptr, ptr %tty.addr, align 8, !dbg !7358
  %link17 = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 25, !dbg !7358
  %14 = load ptr, ptr %link17, align 8, !dbg !7358
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 28, !dbg !7358
  %call18 = call i32 @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef inttoptr (i64 1 to ptr)) #20, !dbg !7358
  br label %if.end, !dbg !7359

if.end:                                           ; preds = %do.end7, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #19, !dbg !7360
  ret void, !dbg !7360
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7361 dso_local ptr @devpts_get_priv(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7364 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !7367 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7371, metadata !DIExpression()), !dbg !7372
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7373
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7374
  ret ptr %1, !dbg !7375
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !7376 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7380, metadata !DIExpression()), !dbg !7386
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7381, metadata !DIExpression()), !dbg !7387
  br label %do.body, !dbg !7388

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #19, !dbg !7389
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !7382, metadata !DIExpression()), !dbg !7389
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #19, !dbg !7389
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !7385, metadata !DIExpression()), !dbg !7389
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !7389
  %conv = zext i1 %cmp to i32, !dbg !7389
  store i32 1, ptr %tmp, align 4, !dbg !7389
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #19, !dbg !7390
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #19, !dbg !7390
  %0 = load i32, ptr %tmp, align 4, !dbg !7389
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !7390
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !7390
  %3 = load i64, ptr %flags.addr, align 8, !dbg !7390
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #20, !dbg !7390
  br label %do.end, !dbg !7390

do.end:                                           ; preds = %do.body
  ret void, !dbg !7391
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7392 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7395 dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7396 dso_local i32 @tty_alloc_file(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7399 dso_local ptr @devpts_acquire(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7402 dso_local i32 @devpts_new_index(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7405 dso_local ptr @tty_init_dev(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7406 dso_local void @tty_add_file(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7407 dso_local ptr @devpts_pty_new(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7410 dso_local void @tty_unlock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7411 dso_local i32 @tty_release(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7412 dso_local void @tty_free_file(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #18 = { nocallback nounwind }
attributes #19 = { nounwind }
attributes #20 = { noredzone }
attributes #21 = { nounwind memory(none) }
attributes #22 = { cold noredzone }
attributes #23 = { cold noredzone noreturn }
attributes #24 = { noredzone allocsize(0) }
attributes #25 = { noredzone allocsize(2) }
attributes #26 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5140}
!llvm.module.flags = !{!5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148}
!llvm.ident = !{!5149}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ptm_driver", scope: !2, file: !3, line: 42, type: !3996, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/tty/.pty.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/tty/pty\22 -D KBUILD_BASENAME=\22pty\22 -D KBUILD_MODNAME=\22pty\22 -D __KBUILD_MODNAME=kmod_pty -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/tty/pty.ll drivers/tty/pty.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !164, globals: !5072, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/tty/pty.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "edc48edaf0d299cdce75ac4000f21164")
!4 = !{!5, !14, !21, !29, !45, !52, !58, !63, !69, !74, !80, !86, !93, !101, !109, !118, !123, !128, !134, !141, !146, !156}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !22, line: 68, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!25 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!26 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!27 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!28 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !30, line: 1325, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!32 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!33 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!34 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!35 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!36 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!37 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!38 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!39 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!40 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!41 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!42 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!43 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!44 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !46, line: 15, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!49 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!50 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!51 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !53, line: 26, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!56 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!57 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !59, line: 2052, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!62 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !64, line: 54, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "USRQUOTA", value: 0)
!67 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!68 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !70, line: 65, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!73 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !75, line: 16, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "TT_NONE", value: 0)
!78 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!79 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !81, line: 45, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!84 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!85 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !87, line: 487, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!90 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!91 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!92 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !94, line: 620, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!95 = !{!96, !97, !98, !99, !100}
!96 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!97 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!98 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!99 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!100 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !94, line: 597, baseType: !102, size: 32, elements: !103)
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !{!104, !105, !106, !107, !108}
!104 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!105 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!106 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!107 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!108 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !87, line: 547, baseType: !7, size: 32, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !117}
!111 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!112 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!113 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!114 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!115 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!116 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!117 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !87, line: 564, baseType: !7, size: 32, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!121 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!122 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !87, line: 577, baseType: !7, size: 32, elements: !124)
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!126 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!127 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !87, line: 503, baseType: !7, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!131 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!132 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!133 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !135, line: 51, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!138 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!139 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!140 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !147, line: 364, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!148 = !{!149, !150, !151, !152, !153, !154, !155}
!149 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!150 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!151 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!152 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!153 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!154 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!155 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !157, line: 119, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!158 = !{!159, !160, !161, !162, !163}
!159 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!160 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!161 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!162 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!163 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!164 = !{!165, !303, !254, !477, !478, !479, !1198, !1160, !5066, !5067, !2420, !5068, !5070, !2216, !2168, !102, !212, !2033, !824}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !168, line: 110, size: 1472, elements: !169)
!168 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!169 = !{!170, !183, !192, !199, !200, !201, !202, !203, !204, !205, !206, !215, !216, !217, !218, !219, !221, !414, !415, !416, !417, !418, !455, !458, !462, !472}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !167, file: !168, line: 111, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !172, line: 13, baseType: !173)
!172 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !174, line: 181, baseType: !175)
!174 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 179, size: 64, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !175, file: !174, line: 180, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !179, line: 22, baseType: !180)
!179 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !181, line: 30, baseType: !182)
!181 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!182 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !167, file: !168, line: 112, baseType: !184, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !185, line: 23, baseType: !186)
!185 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 21, size: 32, elements: !187)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !185, line: 22, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !174, line: 37, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !191, line: 49, baseType: !7)
!191 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!192 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !167, file: !168, line: 113, baseType: !193, size: 32, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !185, line: 28, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 26, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !194, file: !185, line: 27, baseType: !197, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !174, line: 38, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !191, line: 50, baseType: !7)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !167, file: !168, line: 114, baseType: !184, size: 32, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !167, file: !168, line: 115, baseType: !193, size: 32, offset: 160)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !167, file: !168, line: 116, baseType: !184, size: 32, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !167, file: !168, line: 117, baseType: !193, size: 32, offset: 224)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !167, file: !168, line: 118, baseType: !184, size: 32, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !167, file: !168, line: 119, baseType: !193, size: 32, offset: 288)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !167, file: !168, line: 120, baseType: !7, size: 32, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !167, file: !168, line: 121, baseType: !207, size: 64, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !208, line: 24, baseType: !209)
!208 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 24, size: 64, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !209, file: !208, line: 24, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !179, line: 23, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !181, line: 31, baseType: !214)
!214 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !167, file: !168, line: 122, baseType: !207, size: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !167, file: !168, line: 123, baseType: !207, size: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !167, file: !168, line: 124, baseType: !207, size: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !167, file: !168, line: 125, baseType: !207, size: 64, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !167, file: !168, line: 127, baseType: !220, size: 8, offset: 704)
!220 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !167, file: !168, line: 129, baseType: !222, size: 64, offset: 768)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !224, line: 195, size: 1728, elements: !225)
!224 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!225 = !{!226, !235, !240, !258, !299, !302, !304, !311, !312, !313, !314, !319, !320, !321, !323, !324, !376, !399}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !223, file: !224, line: 196, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !157, line: 113, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !157, line: 111, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !228, file: !157, line: 112, baseType: !231, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !174, line: 174, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 172, size: 32, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !232, file: !174, line: 173, baseType: !102, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !223, file: !224, line: 197, baseType: !236, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !224, line: 28, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !174, line: 104, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !179, line: 20, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !181, line: 26, baseType: !102)
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !224, line: 198, baseType: !241, size: 192, offset: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !224, line: 198, size: 192, elements: !242)
!242 = !{!243, !249}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !241, file: !224, line: 199, baseType: !244, size: 128)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !174, line: 190, size: 128, elements: !245)
!245 = !{!246, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !174, line: 191, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !244, file: !174, line: 191, baseType: !247, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !241, file: !224, line: 200, baseType: !250, size: 192, align: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !251, line: 5, size: 192, align: 64, elements: !252)
!251 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!252 = !{!253, !255, !257}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !250, file: !251, line: 6, baseType: !254, size: 64)
!254 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !250, file: !251, line: 7, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !250, file: !251, line: 8, baseType: !256, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !223, file: !224, line: 205, baseType: !259, size: 320, offset: 256)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !260, line: 48, size: 320, elements: !261)
!260 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!261 = !{!262, !263, !264, !269, !298}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !259, file: !260, line: 49, baseType: !171, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !259, file: !260, line: 55, baseType: !171, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !259, file: !260, line: 57, baseType: !265, size: 32, offset: 128)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !266, line: 15, size: 32, elements: !267)
!266 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !265, file: !266, line: 20, baseType: !231, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !259, file: !260, line: 59, baseType: !270, size: 32, offset: 160)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !271, line: 23, baseType: !272)
!271 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !271, line: 14, size: 32, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !272, file: !271, line: 15, baseType: !275, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !276, line: 44, baseType: !277)
!276 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !276, line: 14, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !277, file: !276, line: 15, baseType: !280, size: 32)
!280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !276, line: 15, size: 32, elements: !281)
!281 = !{!282, !283, !290}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !280, file: !276, line: 16, baseType: !231, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !276, line: 24, baseType: !284, size: 16)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !280, file: !276, line: 24, size: 16, elements: !285)
!285 = !{!286, !289}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !284, file: !276, line: 25, baseType: !287, size: 8)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !179, line: 17, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !181, line: 21, baseType: !220)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !284, file: !276, line: 26, baseType: !287, size: 8, offset: 8)
!290 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !276, line: 28, baseType: !291, size: 32)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !280, file: !276, line: 28, size: 32, elements: !292)
!292 = !{!293, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !291, file: !276, line: 29, baseType: !294, size: 16)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !179, line: 19, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !181, line: 24, baseType: !296)
!296 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !291, file: !276, line: 30, baseType: !294, size: 16, offset: 16)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !259, file: !260, line: 60, baseType: !244, size: 128, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !223, file: !224, line: 206, baseType: !300, size: 64, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !224, line: 206, flags: DIFlagFwdDecl)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !223, file: !224, line: 207, baseType: !303, size: 64, offset: 640)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !224, line: 208, baseType: !305, size: 64, offset: 704)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !224, line: 208, size: 64, elements: !306)
!306 = !{!307, !310}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !305, file: !224, line: 209, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !309, line: 8, baseType: !180)
!309 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!310 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !305, file: !224, line: 210, baseType: !308, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !223, file: !224, line: 212, baseType: !308, size: 64, offset: 768)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !223, file: !224, line: 213, baseType: !184, size: 32, offset: 832)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !223, file: !224, line: 214, baseType: !193, size: 32, offset: 864)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !223, file: !224, line: 215, baseType: !315, size: 32, offset: 896)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !224, line: 31, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !174, line: 110, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !179, line: 21, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !181, line: 27, baseType: !7)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !223, file: !224, line: 216, baseType: !296, size: 16, offset: 928)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !223, file: !224, line: 217, baseType: !296, size: 16, offset: 944)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !223, file: !224, line: 221, baseType: !322, size: 16, offset: 960)
!322 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !224, line: 228, baseType: !254, size: 64, offset: 1024)
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !224, line: 245, baseType: !325, size: 320, offset: 1088)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !224, line: 245, size: 320, elements: !326)
!326 = !{!327, !367}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !325, file: !224, line: 246, baseType: !328, size: 320)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !224, line: 114, size: 320, elements: !329)
!329 = !{!330, !331, !344, !347, !364}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !328, file: !224, line: 116, baseType: !254, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !224, line: 117, baseType: !332, size: 64, offset: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !224, line: 117, size: 64, elements: !333)
!333 = !{!334, !343}
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !224, line: 118, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !224, line: 118, size: 64, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !335, file: !224, line: 120, baseType: !294, size: 16)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !335, file: !224, line: 121, baseType: !339, size: 48, offset: 16)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 48, elements: !341)
!340 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!341 = !{!342}
!342 = !DISubrange(count: 6)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !332, file: !224, line: 127, baseType: !254, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !328, file: !224, line: 129, baseType: !345, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !224, line: 102, flags: DIFlagFwdDecl)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !328, file: !224, line: 130, baseType: !348, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !224, line: 108, size: 192, elements: !350)
!350 = !{!351, !360, !361}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !349, file: !224, line: 109, baseType: !352, size: 128, align: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !174, line: 232, size: 128, align: 64, elements: !353)
!353 = !{!354, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !174, line: 233, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !352, file: !174, line: 234, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !355}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !349, file: !224, line: 110, baseType: !227, size: 32, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !349, file: !224, line: 111, baseType: !362, size: 8, offset: 160)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !174, line: 35, baseType: !363)
!363 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !328, file: !224, line: 131, baseType: !365, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!367 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !224, line: 247, baseType: !368, size: 320)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !224, line: 247, size: 320, elements: !369)
!369 = !{!370, !371, !372, !373, !374}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !368, file: !224, line: 248, baseType: !254, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !368, file: !224, line: 249, baseType: !254, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !368, file: !224, line: 250, baseType: !345, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !368, file: !224, line: 251, baseType: !348, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !368, file: !224, line: 252, baseType: !375, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !224, line: 260, baseType: !377, size: 256, offset: 1408)
!377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !224, line: 260, size: 256, elements: !378)
!378 = !{!379, !387}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !377, file: !224, line: 261, baseType: !380, size: 256)
!380 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !224, line: 134, size: 256, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !380, file: !224, line: 135, baseType: !303, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !380, file: !224, line: 136, baseType: !384, size: 256)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 256, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 4)
!387 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !224, line: 262, baseType: !388, size: 256)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !377, file: !224, line: 262, size: 256, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !388, file: !224, line: 264, baseType: !244, size: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !388, file: !224, line: 265, baseType: !392, size: 128, offset: 128)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !393, line: 22, size: 128, elements: !394)
!393 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!394 = !{!395, !398}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !392, file: !393, line: 23, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !393, line: 23, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !392, file: !393, line: 24, baseType: !254, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !223, file: !224, line: 280, baseType: !400, size: 64, offset: 1664)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !224, line: 176, size: 192, elements: !402)
!402 = !{!403, !412, !413}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !401, file: !224, line: 177, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !224, line: 171, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!102, !222, !408, !410, !222}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !401, file: !224, line: 178, baseType: !222, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !401, file: !224, line: 179, baseType: !345, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !167, file: !168, line: 130, baseType: !222, size: 64, offset: 832)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !167, file: !168, line: 131, baseType: !222, size: 64, offset: 896)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !167, file: !168, line: 132, baseType: !222, size: 64, offset: 960)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !167, file: !168, line: 135, baseType: !303, size: 64, offset: 1024)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !167, file: !168, line: 137, baseType: !419, size: 64, offset: 1088)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !421, line: 14, size: 1088, elements: !422)
!421 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!422 = !{!423, !424, !433, !434, !435, !442, !443, !444}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !420, file: !421, line: 15, baseType: !227, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !420, file: !421, line: 17, baseType: !425, size: 320, offset: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !426, line: 22, size: 320, elements: !427)
!426 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!427 = !{!428, !429, !430, !431}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !425, file: !426, line: 23, baseType: !270, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !425, file: !426, line: 24, baseType: !178, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !425, file: !426, line: 26, baseType: !244, size: 128, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !425, file: !426, line: 28, baseType: !432, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !420, file: !421, line: 19, baseType: !254, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !420, file: !421, line: 20, baseType: !171, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !420, file: !421, line: 23, baseType: !436, size: 128, offset: 512)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !174, line: 198, size: 128, elements: !437)
!437 = !{!438, !440}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !174, line: 199, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !436, file: !174, line: 199, baseType: !441, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !420, file: !421, line: 24, baseType: !184, size: 32, offset: 640)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !420, file: !421, line: 29, baseType: !171, size: 64, offset: 704)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !420, file: !421, line: 36, baseType: !445, size: 320, offset: 768)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !446, line: 15, size: 320, elements: !447)
!446 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!447 = !{!448, !449, !450, !451, !452, !453, !454}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !445, file: !446, line: 16, baseType: !270, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !445, file: !446, line: 18, baseType: !102, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !445, file: !446, line: 19, baseType: !102, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !445, file: !446, line: 20, baseType: !102, size: 32, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !445, file: !446, line: 21, baseType: !102, size: 32, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !445, file: !446, line: 22, baseType: !254, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !446, line: 23, baseType: !254, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !167, file: !168, line: 138, baseType: !456, size: 64, offset: 1152)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !185, line: 18, flags: DIFlagFwdDecl)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !167, file: !168, line: 139, baseType: !459, size: 64, offset: 1216)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !461, line: 16, flags: DIFlagFwdDecl)
!461 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!462 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !167, file: !168, line: 140, baseType: !463, size: 64, offset: 1280)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !168, line: 25, size: 64, elements: !465)
!465 = !{!466, !467, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !464, file: !168, line: 26, baseType: !231, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !464, file: !168, line: 27, baseType: !102, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !464, file: !168, line: 28, baseType: !469, offset: 64)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: -1)
!472 = !DIDerivedType(tag: DW_TAG_member, scope: !167, file: !168, line: 142, baseType: !473, size: 128, offset: 1344)
!473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !168, line: 142, size: 128, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !473, file: !168, line: 143, baseType: !102, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !473, file: !168, line: 144, baseType: !352, size: 128, align: 64)
!477 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !481, line: 746, size: 58368, elements: !482)
!481 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!482 = !{!483, !491, !492, !493, !494, !495, !496, !497, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !568, !579, !679, !683, !686, !717, !718, !719, !720, !731, !733, !734, !735, !736, !737, !738, !749, !750, !753, !754, !755, !756, !757, !758, !759, !760, !767, !768, !775, !776, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3383, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3431, !3437, !3438, !3439, !3440, !3441, !3443, !3446, !3453, !3458, !3461, !3464, !3467, !3471, !4461, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4499, !4500, !4501, !4510, !4518, !4519, !4520, !4521, !4522, !4527, !4528, !4529, !4532, !4533, !4536, !4539, !4542, !4550, !4553, !4554, !4640, !4641, !4642, !4643, !4644, !4650, !4651, !4652, !4653, !4656, !4657, !4660, !4674, !4675, !4678, !4679, !4680, !4683, !4684, !4685, !4686, !4687, !4688, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4720, !4721, !4727, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4739, !4811, !4813, !4814, !4815, !4816, !4817, !4818, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !480, file: !481, line: 752, baseType: !484, size: 192)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !485, line: 56, size: 192, elements: !486)
!485 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!486 = !{!487, !488, !489, !490}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !485, line: 57, baseType: !254, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !484, file: !485, line: 58, baseType: !254, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !484, file: !485, line: 59, baseType: !317, size: 32, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !484, file: !485, line: 61, baseType: !317, size: 32, offset: 160)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !480, file: !481, line: 754, baseType: !7, size: 32, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !480, file: !481, line: 767, baseType: !303, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !480, file: !481, line: 768, baseType: !227, size: 32, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !481, line: 770, baseType: !7, size: 32, offset: 352)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !480, file: !481, line: 771, baseType: !7, size: 32, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !480, file: !481, line: 774, baseType: !102, size: 32, offset: 416)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !480, file: !481, line: 775, baseType: !498, size: 128, offset: 448)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !499, line: 58, size: 128, elements: !500)
!499 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!500 = !{!501, !507, !512, !513}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !498, file: !499, line: 59, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !503, line: 60, size: 64, elements: !504)
!503 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !502, file: !503, line: 61, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, scope: !498, file: !499, line: 60, baseType: !508, size: 32, offset: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !498, file: !499, line: 60, size: 32, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !508, file: !499, line: 61, baseType: !7, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !508, file: !499, line: 62, baseType: !231, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !498, file: !499, line: 65, baseType: !294, size: 16, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !498, file: !499, line: 65, baseType: !294, size: 16, offset: 112)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !480, file: !481, line: 776, baseType: !7, size: 32, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !480, file: !481, line: 777, baseType: !254, size: 64, offset: 640)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !480, file: !481, line: 778, baseType: !479, size: 64, offset: 704)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !480, file: !481, line: 787, baseType: !102, size: 32, offset: 768)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !480, file: !481, line: 788, baseType: !102, size: 32, offset: 800)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !480, file: !481, line: 790, baseType: !102, size: 32, offset: 832)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !480, file: !481, line: 792, baseType: !102, size: 32, offset: 864)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !480, file: !481, line: 793, baseType: !102, size: 32, offset: 896)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !480, file: !481, line: 794, baseType: !102, size: 32, offset: 928)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !480, file: !481, line: 795, baseType: !7, size: 32, offset: 960)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !480, file: !481, line: 797, baseType: !525, size: 2048, offset: 1024)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !481, line: 551, size: 2048, elements: !526)
!526 = !{!527, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !547, !550, !551, !552}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !525, file: !481, line: 553, baseType: !528, size: 128)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !481, line: 411, size: 128, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !528, file: !481, line: 412, baseType: !254, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !528, file: !481, line: 413, baseType: !317, size: 32, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !525, file: !481, line: 554, baseType: !250, size: 192, align: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !525, file: !481, line: 555, baseType: !212, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !525, file: !481, line: 556, baseType: !212, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !525, file: !481, line: 558, baseType: !244, size: 128, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !525, file: !481, line: 559, baseType: !7, size: 32, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !525, file: !481, line: 561, baseType: !212, size: 64, offset: 640)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !525, file: !481, line: 562, baseType: !212, size: 64, offset: 704)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !525, file: !481, line: 563, baseType: !212, size: 64, offset: 768)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !525, file: !481, line: 564, baseType: !212, size: 64, offset: 832)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !525, file: !481, line: 565, baseType: !178, size: 64, offset: 896)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !525, file: !481, line: 566, baseType: !212, size: 64, offset: 960)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !525, file: !481, line: 568, baseType: !212, size: 64, offset: 1024)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !525, file: !481, line: 571, baseType: !102, size: 32, offset: 1088)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !525, file: !481, line: 572, baseType: !546, size: 64, offset: 1152)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !525, file: !481, line: 574, baseType: !548, size: 64, offset: 1216)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !481, line: 49, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !525, file: !481, line: 576, baseType: !548, size: 64, offset: 1280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !525, file: !481, line: 578, baseType: !254, size: 64, offset: 1344)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !525, file: !481, line: 588, baseType: !553, size: 512, align: 512, offset: 1536)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !481, line: 497, size: 512, align: 512, elements: !554)
!554 = !{!555, !556, !557, !558, !559, !560, !561, !562, !563}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !553, file: !481, line: 498, baseType: !212, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !553, file: !481, line: 499, baseType: !212, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !553, file: !481, line: 500, baseType: !212, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !553, file: !481, line: 501, baseType: !317, size: 32, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !553, file: !481, line: 502, baseType: !317, size: 32, offset: 224)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !553, file: !481, line: 503, baseType: !254, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !553, file: !481, line: 504, baseType: !254, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !553, file: !481, line: 505, baseType: !254, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !553, file: !481, line: 506, baseType: !564, size: 64, align: 64, offset: 448)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !481, line: 445, size: 64, align: 64, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !564, file: !481, line: 446, baseType: !7, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !564, file: !481, line: 447, baseType: !7, size: 32, offset: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !480, file: !481, line: 798, baseType: !569, size: 384, offset: 3072)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !481, line: 592, size: 384, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !569, file: !481, line: 593, baseType: !244, size: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !569, file: !481, line: 594, baseType: !254, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !569, file: !481, line: 595, baseType: !254, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !569, file: !481, line: 596, baseType: !7, size: 32, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !569, file: !481, line: 597, baseType: !296, size: 16, offset: 288)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !569, file: !481, line: 598, baseType: !296, size: 16, offset: 304)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !569, file: !481, line: 600, baseType: !578, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !480, file: !481, line: 799, baseType: !580, size: 1792, offset: 3456)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !481, line: 610, size: 1792, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !676, !677}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !580, file: !481, line: 611, baseType: !250, size: 192, align: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !580, file: !481, line: 618, baseType: !212, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !580, file: !481, line: 619, baseType: !212, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !580, file: !481, line: 620, baseType: !212, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !580, file: !481, line: 621, baseType: !212, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !580, file: !481, line: 622, baseType: !212, size: 64, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !580, file: !481, line: 629, baseType: !178, size: 64, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !580, file: !481, line: 630, baseType: !212, size: 64, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !481, line: 631, baseType: !7, size: 32, offset: 640)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !580, file: !481, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !580, file: !481, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !580, file: !481, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !580, file: !481, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !580, file: !481, line: 662, baseType: !596, size: 512, offset: 704)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !70, line: 118, size: 512, elements: !597)
!597 = !{!598, !606, !607, !612, !672, !673, !674, !675}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !596, file: !70, line: 119, baseType: !599, size: 256)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !600, line: 9, size: 256, elements: !601)
!600 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !600, line: 10, baseType: !250, size: 192, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !599, file: !600, line: 11, baseType: !604, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !605, line: 29, baseType: !178)
!605 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !596, file: !70, line: 120, baseType: !604, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !596, file: !70, line: 121, baseType: !608, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!69, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !596, file: !70, line: 122, baseType: !613, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !70, line: 159, size: 512, align: 512, elements: !615)
!615 = !{!616, !641, !642, !645, !655, !656, !667, !671}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !614, file: !70, line: 160, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !70, line: 215, size: 4608, align: 512, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !618, file: !70, line: 216, baseType: !270, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !618, file: !70, line: 217, baseType: !7, size: 32, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !618, file: !70, line: 218, baseType: !7, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !618, file: !70, line: 219, baseType: !7, size: 32, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !618, file: !70, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !618, file: !70, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !618, file: !70, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !618, file: !70, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !618, file: !70, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !618, file: !70, line: 226, baseType: !7, size: 32, offset: 160)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !618, file: !70, line: 227, baseType: !296, size: 16, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !618, file: !70, line: 228, baseType: !296, size: 16, offset: 208)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !618, file: !70, line: 229, baseType: !7, size: 32, offset: 224)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !618, file: !70, line: 235, baseType: !604, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !618, file: !70, line: 236, baseType: !611, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !618, file: !70, line: 237, baseType: !604, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !618, file: !70, line: 238, baseType: !611, size: 64, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !618, file: !70, line: 239, baseType: !638, size: 4096, align: 512, offset: 512)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 4096, align: 512, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 8)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !614, file: !70, line: 161, baseType: !7, size: 32, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !614, file: !70, line: 162, baseType: !643, size: 32, offset: 96)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !174, line: 32, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !191, line: 96, baseType: !102)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !614, file: !70, line: 163, baseType: !646, size: 32, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !647, line: 274, baseType: !648)
!647 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !647, line: 274, size: 32, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !648, file: !647, line: 274, baseType: !651, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !647, line: 69, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !647, line: 64, size: 32, elements: !653)
!653 = !{!654}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !652, file: !647, line: 65, baseType: !7, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !614, file: !70, line: 164, baseType: !611, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !614, file: !70, line: 165, baseType: !657, size: 128, offset: 256)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !600, line: 14, size: 128, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !657, file: !600, line: 15, baseType: !660, size: 128)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !251, line: 26, size: 128, elements: !661)
!661 = !{!662, !666}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !660, file: !251, line: 27, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !251, line: 12, size: 64, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !663, file: !251, line: 13, baseType: !256, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !660, file: !251, line: 28, baseType: !256, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !614, file: !70, line: 166, baseType: !668, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!604}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !614, file: !70, line: 167, baseType: !604, size: 64, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !596, file: !70, line: 123, baseType: !287, size: 8, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !596, file: !70, line: 124, baseType: !287, size: 8, offset: 456)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !596, file: !70, line: 125, baseType: !287, size: 8, offset: 464)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !596, file: !70, line: 126, baseType: !287, size: 8, offset: 472)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !580, file: !481, line: 671, baseType: !596, size: 512, offset: 1216)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !580, file: !481, line: 679, baseType: !678, size: 64, offset: 1728)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !480, file: !481, line: 800, baseType: !680, size: 64, offset: 5248)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !481, line: 800, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !480, file: !481, line: 809, baseType: !684, size: 64, offset: 5312)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !481, line: 70, flags: DIFlagFwdDecl)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !480, file: !481, line: 825, baseType: !687, size: 2048, align: 512, offset: 5632)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !481, line: 509, size: 2048, align: 512, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !687, file: !481, line: 511, baseType: !212, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !687, file: !481, line: 512, baseType: !212, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !687, file: !481, line: 513, baseType: !212, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !687, file: !481, line: 514, baseType: !212, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !687, file: !481, line: 515, baseType: !212, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !687, file: !481, line: 516, baseType: !212, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !687, file: !481, line: 518, baseType: !212, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !687, file: !481, line: 519, baseType: !212, size: 64, offset: 448)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !687, file: !481, line: 520, baseType: !178, size: 64, offset: 512)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !687, file: !481, line: 522, baseType: !212, size: 64, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !687, file: !481, line: 523, baseType: !212, size: 64, offset: 640)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !687, file: !481, line: 524, baseType: !178, size: 64, offset: 704)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !687, file: !481, line: 526, baseType: !178, size: 64, offset: 768)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !687, file: !481, line: 527, baseType: !212, size: 64, offset: 832)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !687, file: !481, line: 529, baseType: !212, size: 64, offset: 896)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !687, file: !481, line: 530, baseType: !212, size: 64, offset: 960)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !687, file: !481, line: 531, baseType: !212, size: 64, offset: 1024)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !687, file: !481, line: 532, baseType: !212, size: 64, offset: 1088)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !687, file: !481, line: 533, baseType: !212, size: 64, offset: 1152)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !687, file: !481, line: 535, baseType: !212, size: 64, offset: 1216)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !687, file: !481, line: 536, baseType: !212, size: 64, offset: 1280)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !687, file: !481, line: 537, baseType: !212, size: 64, offset: 1344)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !687, file: !481, line: 538, baseType: !212, size: 64, offset: 1408)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !687, file: !481, line: 539, baseType: !212, size: 64, offset: 1472)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !687, file: !481, line: 540, baseType: !212, size: 64, offset: 1536)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !687, file: !481, line: 541, baseType: !212, size: 64, offset: 1600)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !687, file: !481, line: 542, baseType: !212, size: 64, offset: 1664)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !687, file: !481, line: 543, baseType: !212, size: 64, offset: 1728)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !480, file: !481, line: 833, baseType: !7, size: 32, offset: 7680)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !480, file: !481, line: 836, baseType: !7, size: 32, offset: 7712)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !480, file: !481, line: 837, baseType: !102, size: 32, offset: 7744)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !480, file: !481, line: 838, baseType: !721, size: 64, offset: 7808)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !724, line: 19, baseType: !725)
!724 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !724, line: 19, size: 64, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !725, file: !724, line: 19, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 64, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 1)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !480, file: !481, line: 839, baseType: !732, size: 64, offset: 7872)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !480, file: !481, line: 840, baseType: !723, size: 64, offset: 7936)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !480, file: !481, line: 841, baseType: !303, size: 64, offset: 8000)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !480, file: !481, line: 843, baseType: !296, size: 16, offset: 8064)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !480, file: !481, line: 845, baseType: !296, size: 16, offset: 8080)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !480, file: !481, line: 848, baseType: !102, size: 32, offset: 8096)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !480, file: !481, line: 849, baseType: !739, size: 32, offset: 8128)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !481, line: 718, size: 32, elements: !740)
!740 = !{!741, !748}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !739, file: !481, line: 724, baseType: !742, size: 32)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !481, line: 719, size: 32, elements: !743)
!743 = !{!744, !745, !746, !747}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !742, file: !481, line: 720, baseType: !287, size: 8)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !742, file: !481, line: 721, baseType: !287, size: 8, offset: 8)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !742, file: !481, line: 722, baseType: !287, size: 8, offset: 16)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !742, file: !481, line: 723, baseType: !287, size: 8, offset: 24)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !739, file: !481, line: 725, baseType: !317, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !480, file: !481, line: 850, baseType: !244, size: 128, offset: 8192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !480, file: !481, line: 851, baseType: !751, size: 64, offset: 8320)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !481, line: 60, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !480, file: !481, line: 855, baseType: !254, size: 64, offset: 8384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !480, file: !481, line: 856, baseType: !287, size: 8, offset: 8448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !480, file: !481, line: 857, baseType: !287, size: 8, offset: 8456)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !480, file: !481, line: 858, baseType: !102, size: 32, offset: 8480)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !480, file: !481, line: 859, baseType: !244, size: 128, offset: 8512)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !480, file: !481, line: 860, baseType: !102, size: 32, offset: 8640)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !480, file: !481, line: 861, baseType: !244, size: 128, offset: 8704)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !480, file: !481, line: 873, baseType: !761, size: 256, offset: 8832)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !481, line: 376, size: 256, elements: !762)
!762 = !{!763, !764, !765, !766}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !761, file: !481, line: 381, baseType: !254, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !761, file: !481, line: 384, baseType: !214, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !761, file: !481, line: 389, baseType: !214, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !761, file: !481, line: 392, baseType: !214, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !480, file: !481, line: 875, baseType: !244, size: 128, offset: 9088)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !480, file: !481, line: 877, baseType: !769, size: 320, offset: 9216)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !770, line: 86, size: 320, elements: !771)
!770 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!771 = !{!772, !773, !774}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !769, file: !770, line: 87, baseType: !102, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !769, file: !770, line: 88, baseType: !244, size: 128, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !769, file: !770, line: 89, baseType: !244, size: 128, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !480, file: !481, line: 878, baseType: !250, size: 192, align: 64, offset: 9536)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !480, file: !481, line: 881, baseType: !777, size: 64, offset: 9728)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !30, line: 733, size: 10240, elements: !779)
!779 = !{!780, !3297}
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !778, file: !30, line: 734, baseType: !781, size: 10240)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !778, file: !30, line: 734, size: 10240, elements: !782)
!782 = !{!783, !787, !809, !3176, !3177, !3178, !3179, !3180, !3181, !3188, !3189, !3190, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3229, !3231, !3234, !3277, !3278, !3279, !3282, !3283, !3284, !3287, !3288, !3289, !3295, !3296}
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !30, line: 739, baseType: !784, size: 512, align: 512)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !30, line: 739, size: 512, align: 512, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !784, file: !30, line: 747, baseType: !231, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !781, file: !30, line: 750, baseType: !788, size: 128, offset: 512)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !789, line: 218, size: 128, elements: !790)
!789 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!790 = !{!791, !807, !808}
!791 = !DIDerivedType(tag: DW_TAG_member, scope: !788, file: !789, line: 219, baseType: !792, size: 32)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !788, file: !789, line: 219, size: 32, elements: !793)
!793 = !{!794, !803}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !792, file: !789, line: 220, baseType: !795, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !796, line: 29, baseType: !797)
!796 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !796, line: 17, size: 32, elements: !798)
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !796, line: 18, baseType: !800, size: 32)
!800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !797, file: !796, line: 18, size: 32, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !800, file: !796, line: 19, baseType: !272, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !792, file: !789, line: 221, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !789, line: 197, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !789, line: 197, elements: !806)
!806 = !{}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !788, file: !789, line: 223, baseType: !7, size: 32, offset: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !788, file: !789, line: 224, baseType: !303, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !781, file: !30, line: 752, baseType: !810, size: 64, offset: 640)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!254, !813, !254, !254, !254, !254}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !59, line: 994, size: 1856, align: 64, elements: !815)
!815 = !{!816, !822, !823, !825, !826, !834, !837, !838, !897, !898, !907, !3166, !3167, !3168, !3169, !3170, !3171, !3173, !3174, !3175}
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !814, file: !59, line: 995, baseType: !817, size: 128)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !814, file: !59, line: 995, size: 128, elements: !818)
!818 = !{!819, !820, !821}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !817, file: !59, line: 996, baseType: !502, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !817, file: !59, line: 997, baseType: !352, size: 128, align: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !817, file: !59, line: 998, baseType: !7, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !814, file: !59, line: 1005, baseType: !795, size: 32, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !814, file: !59, line: 1006, baseType: !824, size: 32, offset: 160)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !174, line: 156, baseType: !7)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !814, file: !59, line: 1007, baseType: !171, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !814, file: !59, line: 1008, baseType: !827, size: 256, offset: 256)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !828, line: 66, size: 256, elements: !829)
!828 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!829 = !{!830, !831, !832, !833}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !827, file: !828, line: 67, baseType: !171, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !827, file: !828, line: 68, baseType: !270, size: 32, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !827, file: !828, line: 70, baseType: !265, size: 32, offset: 96)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !827, file: !828, line: 72, baseType: !244, size: 128, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !814, file: !59, line: 1009, baseType: !835, size: 64, offset: 512)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !174, line: 52, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !191, line: 88, baseType: !182)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !814, file: !59, line: 1010, baseType: !7, size: 32, offset: 576)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !814, file: !59, line: 1011, baseType: !839, size: 256, offset: 640)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !59, line: 948, size: 256, elements: !840)
!840 = !{!841, !864, !893, !894, !895, !896}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !839, file: !59, line: 949, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !843, line: 34, baseType: !844)
!843 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !843, line: 25, size: 64, elements: !845)
!845 = !{!846}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !844, file: !843, line: 26, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !848, line: 27, baseType: !849)
!848 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !848, line: 13, size: 64, elements: !850)
!850 = !{!851, !863}
!851 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !848, line: 14, baseType: !852, size: 32)
!852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !849, file: !848, line: 14, size: 32, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !852, file: !848, line: 15, baseType: !231, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !848, line: 16, baseType: !856, size: 32)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !852, file: !848, line: 16, size: 32, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !856, file: !848, line: 18, baseType: !287, size: 8)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !856, file: !848, line: 19, baseType: !860, size: 24, offset: 8)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 24, elements: !861)
!861 = !{!862}
!862 = !DISubrange(count: 3)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !849, file: !848, line: 26, baseType: !275, size: 32, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !839, file: !59, line: 950, baseType: !865, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !867)
!867 = !{!868, !869, !870, !871, !876, !877, !884, !885}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !866, file: !6, line: 61, baseType: !227, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !866, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !866, file: !6, line: 63, baseType: !795, size: 32, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !866, file: !6, line: 65, baseType: !872, size: 256, offset: 128)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !873, size: 256, elements: !385)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !174, line: 194, size: 64, elements: !874)
!874 = !{!875}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !873, file: !174, line: 195, baseType: !439, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !866, file: !6, line: 66, baseType: !873, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !866, file: !6, line: 68, baseType: !878, size: 192, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !879, line: 41, baseType: !880)
!879 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !879, line: 37, size: 192, elements: !881)
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !880, file: !879, line: 38, baseType: !795, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !880, file: !879, line: 39, baseType: !244, size: 128, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !866, file: !6, line: 69, baseType: !352, size: 128, align: 64, offset: 640)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !866, file: !6, line: 70, baseType: !886, offset: 768)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, elements: !470)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !887, file: !6, line: 55, baseType: !102, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !887, file: !6, line: 56, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !839, file: !59, line: 951, baseType: !5, size: 32, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !839, file: !59, line: 952, baseType: !184, size: 32, offset: 160)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !839, file: !59, line: 952, baseType: !184, size: 32, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !839, file: !59, line: 953, baseType: !102, size: 32, offset: 224)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !814, file: !59, line: 1012, baseType: !165, size: 64, offset: 896)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !814, file: !59, line: 1013, baseType: !899, size: 256, offset: 960)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !59, line: 970, size: 256, elements: !900)
!900 = !{!901, !902, !903, !904, !905, !906}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !899, file: !59, line: 971, baseType: !254, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !899, file: !59, line: 972, baseType: !7, size: 32, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !899, file: !59, line: 973, baseType: !7, size: 32, offset: 96)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !899, file: !59, line: 974, baseType: !7, size: 32, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !899, file: !59, line: 975, baseType: !7, size: 32, offset: 160)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !899, file: !59, line: 976, baseType: !835, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !814, file: !59, line: 1014, baseType: !908, size: 128, offset: 1216)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !909, line: 8, size: 128, elements: !910)
!909 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!910 = !{!911, !3165}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !908, file: !909, line: 9, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !914, line: 70, size: 256, elements: !915)
!914 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!915 = !{!916, !3162, !3163, !3164}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !913, file: !914, line: 71, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !919, line: 82, size: 1536, elements: !920)
!919 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!920 = !{!921, !922, !927, !935, !936, !951, !3130, !3132, !3145, !3146, !3147, !3148, !3149, !3154, !3155, !3156}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !918, file: !919, line: 84, baseType: !7, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !918, file: !919, line: 85, baseType: !923, size: 32, offset: 32)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !647, line: 275, baseType: !924)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !647, line: 275, size: 32, elements: !925)
!925 = !{!926}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !924, file: !647, line: 275, baseType: !651, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !918, file: !919, line: 86, baseType: !928, size: 128, offset: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !929, line: 38, size: 128, elements: !930)
!929 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!930 = !{!931, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !928, file: !929, line: 39, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !928, file: !929, line: 39, baseType: !934, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !918, file: !919, line: 87, baseType: !917, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !918, file: !919, line: 88, baseType: !937, size: 128, offset: 256)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !919, line: 49, size: 128, elements: !938)
!938 = !{!939, !948}
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !937, file: !919, line: 50, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !937, file: !919, line: 50, size: 64, elements: !941)
!941 = !{!942, !947}
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !919, line: 51, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !919, line: 51, size: 64, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !943, file: !919, line: 52, baseType: !317, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !943, file: !919, line: 52, baseType: !317, size: 32, offset: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !940, file: !919, line: 54, baseType: !212, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !937, file: !919, line: 56, baseType: !949, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !918, file: !919, line: 89, baseType: !952, size: 64, offset: 384)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !59, line: 641, size: 4800, elements: !954)
!954 = !{!955, !957, !958, !959, !960, !961, !962, !965, !966, !1163, !2936, !2937, !2938, !2939, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !3104, !3107, !3108, !3109, !3126, !3127, !3128, !3129}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !953, file: !59, line: 642, baseType: !956, size: 16)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !174, line: 24, baseType: !296)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !953, file: !59, line: 643, baseType: !296, size: 16, offset: 16)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !953, file: !59, line: 644, baseType: !184, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !953, file: !59, line: 645, baseType: !244, size: 128, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !953, file: !59, line: 646, baseType: !193, size: 32, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !953, file: !59, line: 647, baseType: !7, size: 32, offset: 224)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !953, file: !59, line: 650, baseType: !963, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !59, line: 607, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !953, file: !59, line: 651, baseType: !963, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !953, file: !59, line: 654, baseType: !967, size: 64, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !59, line: 1966, size: 2048, align: 512, elements: !970)
!970 = !{!971, !975, !988, !994, !998, !1002, !1006, !1010, !1014, !1018, !1022, !1023, !1029, !1033, !1070, !1101, !1111, !1117, !1121, !1125, !1129, !1133, !1137, !1143, !1147}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !969, file: !59, line: 1967, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!917, !952, !917, !7}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !969, file: !59, line: 1968, baseType: !976, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!365, !917, !952, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !981, line: 10, size: 128, elements: !982)
!981 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!982 = !{!983, !987}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !980, file: !981, line: 11, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !303}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !980, file: !981, line: 12, baseType: !303, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !969, file: !59, line: 1969, baseType: !989, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!102, !992, !952, !102}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !208, line: 42, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !969, file: !59, line: 1970, baseType: !995, size: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!963, !952, !102, !362}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !969, file: !59, line: 1972, baseType: !999, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!102, !917, !375, !102}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !969, file: !59, line: 1974, baseType: !1003, size: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!102, !992, !952, !917, !956, !362}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !969, file: !59, line: 1976, baseType: !1007, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!102, !917, !952, !917}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !969, file: !59, line: 1977, baseType: !1011, size: 64, offset: 448)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!102, !952, !917}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !969, file: !59, line: 1978, baseType: !1015, size: 64, offset: 512)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!102, !992, !952, !917, !365}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !969, file: !59, line: 1980, baseType: !1019, size: 64, offset: 576)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!102, !992, !952, !917, !956}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !969, file: !59, line: 1982, baseType: !1011, size: 64, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !969, file: !59, line: 1983, baseType: !1024, size: 64, offset: 704)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!102, !992, !952, !917, !956, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !174, line: 21, baseType: !1028)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !174, line: 18, baseType: !317)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !969, file: !59, line: 1985, baseType: !1030, size: 64, offset: 768)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!102, !992, !952, !917, !952, !917, !7}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !969, file: !59, line: 1987, baseType: !1034, size: 64, offset: 832)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!102, !992, !917, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !59, line: 226, size: 640, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1052, !1061, !1062, !1067, !1068, !1069}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1038, file: !59, line: 227, baseType: !7, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1038, file: !59, line: 228, baseType: !956, size: 16, offset: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !59, line: 241, baseType: !1043, size: 32, offset: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !59, line: 241, size: 32, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1043, file: !59, line: 242, baseType: !184, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1043, file: !59, line: 243, baseType: !1047, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1048, line: 16, baseType: !1049)
!1048 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1048, line: 14, size: 32, elements: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1049, file: !1048, line: 15, baseType: !189, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !59, line: 245, baseType: !1053, size: 32, offset: 96)
!1053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !59, line: 245, size: 32, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1053, file: !59, line: 246, baseType: !193, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1053, file: !59, line: 247, baseType: !1057, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1048, line: 20, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1048, line: 18, size: 32, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1058, file: !1048, line: 19, baseType: !197, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1038, file: !59, line: 249, baseType: !835, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1038, file: !59, line: 250, baseType: !1063, size: 128, offset: 192)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !309, line: 13, size: 128, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1063, file: !309, line: 14, baseType: !308, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1063, file: !309, line: 15, baseType: !477, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1038, file: !59, line: 251, baseType: !1063, size: 128, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1038, file: !59, line: 252, baseType: !1063, size: 128, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1038, file: !59, line: 259, baseType: !813, size: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !969, file: !59, line: 1988, baseType: !1071, size: 64, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!102, !992, !1074, !1076, !317, !7}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1078, line: 22, size: 1280, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1077, file: !1078, line: 23, baseType: !317, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1077, file: !1078, line: 24, baseType: !956, size: 16, offset: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1077, file: !1078, line: 25, baseType: !7, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1077, file: !1078, line: 26, baseType: !316, size: 32, offset: 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1077, file: !1078, line: 27, baseType: !212, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1077, file: !1078, line: 28, baseType: !212, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1077, file: !1078, line: 41, baseType: !212, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1077, file: !1078, line: 42, baseType: !1027, size: 32, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1077, file: !1078, line: 43, baseType: !1027, size: 32, offset: 352)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1077, file: !1078, line: 44, baseType: !184, size: 32, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1077, file: !1078, line: 45, baseType: !193, size: 32, offset: 416)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1077, file: !1078, line: 46, baseType: !835, size: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1077, file: !1078, line: 47, baseType: !1063, size: 128, offset: 512)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1077, file: !1078, line: 48, baseType: !1063, size: 128, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1077, file: !1078, line: 49, baseType: !1063, size: 128, offset: 768)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1077, file: !1078, line: 50, baseType: !1063, size: 128, offset: 896)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1077, file: !1078, line: 51, baseType: !212, size: 64, offset: 1024)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1077, file: !1078, line: 52, baseType: !212, size: 64, offset: 1088)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1077, file: !1078, line: 53, baseType: !317, size: 32, offset: 1152)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1077, file: !1078, line: 54, baseType: !317, size: 32, offset: 1184)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1077, file: !1078, line: 55, baseType: !212, size: 64, offset: 1216)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !969, file: !59, line: 1990, baseType: !1102, size: 64, offset: 960)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!1105, !917, !375, !1108}
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !174, line: 66, baseType: !1106)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !191, line: 73, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !191, line: 15, baseType: !477)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 61, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !191, line: 72, baseType: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !191, line: 16, baseType: !254)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !969, file: !59, line: 1991, baseType: !1112, size: 64, offset: 1024)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!102, !952, !1115, !212, !212}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !59, line: 55, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !969, file: !59, line: 1993, baseType: !1118, size: 64, offset: 1088)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!102, !952, !102}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !969, file: !59, line: 1994, baseType: !1122, size: 64, offset: 1152)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!102, !952, !917, !813, !7, !956}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !969, file: !59, line: 1997, baseType: !1126, size: 64, offset: 1216)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!102, !992, !952, !813, !956}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !969, file: !59, line: 1999, baseType: !1130, size: 64, offset: 1280)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!963, !992, !917, !102}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !969, file: !59, line: 2001, baseType: !1134, size: 64, offset: 1344)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!102, !992, !917, !963, !102}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !969, file: !59, line: 2003, baseType: !1138, size: 64, offset: 1408)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!102, !992, !917, !1141}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !59, line: 76, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !969, file: !59, line: 2005, baseType: !1144, size: 64, offset: 1472)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!102, !917, !1141}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !969, file: !59, line: 2006, baseType: !1148, size: 64, offset: 1536)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!1151, !952}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !59, line: 3192, size: 192, elements: !1153)
!1153 = !{!1154, !1162}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1152, file: !59, line: 3193, baseType: !1155, size: 128)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1156, line: 296, size: 128, elements: !1157)
!1156 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1157 = !{!1158, !1159, !1161}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1155, file: !1156, line: 297, baseType: !795, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1155, file: !1156, line: 299, baseType: !1160, size: 32, offset: 32)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !174, line: 154, baseType: !7)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1155, file: !1156, line: 300, baseType: !303, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1152, file: !59, line: 3194, baseType: !317, size: 32, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !953, file: !59, line: 655, baseType: !1164, size: 64, offset: 448)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !59, line: 1190, size: 10752, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1172, !2449, !2581, !2621, !2704, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2721, !2725, !2726, !2729, !2732, !2735, !2738, !2739, !2740, !2781, !2807, !2808, !2809, !2810, !2811, !2812, !2815, !2819, !2828, !2829, !2830, !2831, !2890, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1165, file: !59, line: 1191, baseType: !244, size: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1165, file: !59, line: 1192, baseType: !1027, size: 32, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1165, file: !59, line: 1193, baseType: !220, size: 8, offset: 160)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1165, file: !59, line: 1194, baseType: !254, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1165, file: !59, line: 1195, baseType: !835, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1165, file: !59, line: 1196, baseType: !1173, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !59, line: 2366, size: 576, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1185, !1189, !1193, !1197, !2437, !2438, !2439, !2441, !2442, !2443, !2445, !2446, !2447, !2448}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1174, file: !59, line: 2367, baseType: !365, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1174, file: !59, line: 2368, baseType: !102, size: 32, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1174, file: !59, line: 2376, baseType: !1179, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!102, !1182}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1184, line: 32, flags: DIFlagFwdDecl)
!1184 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1174, file: !59, line: 2377, baseType: !1186, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !59, line: 75, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1174, file: !59, line: 2378, baseType: !1190, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!917, !1173, !102, !365, !303}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1174, file: !59, line: 2380, baseType: !1194, size: 64, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !1164}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1174, file: !59, line: 2381, baseType: !1198, size: 64, offset: 384)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1207, !2080, !2106, !2107, !2108, !2109, !2113, !2116, !2117, !2118, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2186, !2190, !2210, !2230, !2231, !2232, !2233, !2242, !2265, !2266, !2269, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2283, !2284, !2395, !2403, !2404, !2405, !2407, !2411, !2412, !2416, !2417, !2418, !2419, !2421, !2422, !2423, !2430, !2431, !2432, !2436}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1199, file: !15, line: 403, baseType: !14, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1199, file: !15, line: 406, baseType: !244, size: 128, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1199, file: !15, line: 409, baseType: !1204, size: 448, offset: 192)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 448, elements: !1205)
!1205 = !{!1206}
!1206 = !DISubrange(count: 56)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1199, file: !15, line: 417, baseType: !1208, size: 768, offset: 640)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !1209)
!1209 = !{!1210, !2073, !2074, !2075, !2078}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1208, file: !15, line: 46, baseType: !1211, size: 512)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1212, line: 64, size: 512, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1213 = !{!1214, !1215, !1216, !1218, !1262, !1920, !2063, !2068, !2069, !2070, !2071, !2072}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1211, file: !1212, line: 65, baseType: !365, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1211, file: !1212, line: 66, baseType: !244, size: 128, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1211, file: !1212, line: 67, baseType: !1217, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1211, file: !1212, line: 68, baseType: !1219, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1212, line: 168, size: 768, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1220, file: !1212, line: 169, baseType: !244, size: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1220, file: !1212, line: 170, baseType: !795, size: 32, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1220, file: !1212, line: 171, baseType: !1211, size: 512, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1220, file: !1212, line: 172, baseType: !1226, size: 64, offset: 704)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1212, line: 133, size: 192, elements: !1229)
!1229 = !{!1230, !1237, !1242}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1228, file: !1212, line: 134, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!102, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1228, file: !1212, line: 135, baseType: !1238, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!365, !1235}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1228, file: !1212, line: 136, baseType: !1243, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!102, !1235, !1247}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1212, line: 125, size: 20736, elements: !1249)
!1249 = !{!1250, !1252, !1256, !1257, !1261}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1248, file: !1212, line: 126, baseType: !1251, size: 192)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 192, elements: !861)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1248, file: !1212, line: 127, baseType: !1253, size: 4096, offset: 192)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 4096, elements: !1254)
!1254 = !{!1255}
!1255 = !DISubrange(count: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1248, file: !1212, line: 128, baseType: !102, size: 32, offset: 4288)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1248, file: !1212, line: 129, baseType: !1258, size: 16384, offset: 4320)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 16384, elements: !1259)
!1259 = !{!1260}
!1260 = !DISubrange(count: 2048)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1248, file: !1212, line: 130, baseType: !102, size: 32, offset: 20704)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1211, file: !1212, line: 69, baseType: !1263, size: 64, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1265)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1212, line: 116, size: 384, elements: !1266)
!1266 = !{!1267, !1271, !1290, !1880, !1910, !1914}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1265, file: !1212, line: 117, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !1217}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1265, file: !1212, line: 118, baseType: !1272, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1275, line: 254, size: 128, elements: !1276)
!1275 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1276 = !{!1277, !1286}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1274, file: !1275, line: 255, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!1105, !1217, !1281, !375}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1275, line: 30, size: 128, elements: !1283)
!1283 = !{!1284, !1285}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1282, file: !1275, line: 31, baseType: !365, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1282, file: !1275, line: 32, baseType: !956, size: 16, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1274, file: !1275, line: 256, baseType: !1287, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!1105, !1217, !1281, !365, !1108}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1265, file: !1212, line: 119, baseType: !1291, size: 64, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1294)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1275, line: 84, size: 320, elements: !1295)
!1295 = !{!1296, !1297, !1301, !1876, !1878}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1294, file: !1275, line: 85, baseType: !365, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1294, file: !1275, line: 86, baseType: !1298, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!956, !1217, !1281, !102}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1294, file: !1275, line: 88, baseType: !1302, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!956, !1217, !1305, !102}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1275, line: 175, size: 512, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1311, !1867, !1871, !1872}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1306, file: !1275, line: 176, baseType: !1282, size: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1306, file: !1275, line: 177, baseType: !1108, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1306, file: !1275, line: 178, baseType: !303, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1306, file: !1275, line: 179, baseType: !1312, size: 64, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !59, line: 472, size: 1536, align: 64, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1859, !1860, !1861, !1864, !1865, !1866}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1316, file: !59, line: 473, baseType: !952, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1316, file: !59, line: 474, baseType: !1155, size: 128, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1316, file: !59, line: 475, baseType: !259, size: 320, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1316, file: !59, line: 476, baseType: !1160, size: 32, offset: 512)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1316, file: !59, line: 477, baseType: !231, size: 32, offset: 544)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1316, file: !59, line: 482, baseType: !660, size: 128, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1316, file: !59, line: 483, baseType: !254, size: 64, offset: 704)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1316, file: !59, line: 484, baseType: !254, size: 64, offset: 768)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1316, file: !59, line: 485, baseType: !1327, size: 64, offset: 832)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1329)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !59, line: 404, size: 1280, elements: !1330)
!1330 = !{!1331, !1634, !1704, !1708, !1712, !1718, !1724, !1728, !1733, !1737, !1741, !1745, !1823, !1827, !1831, !1835, !1840, !1844, !1851, !1855}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1329, file: !59, line: 405, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!102, !1335, !1632}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !30, line: 74, size: 512, align: 128, elements: !1337)
!1337 = !{!1338, !1339, !1626, !1631}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1336, file: !30, line: 75, baseType: !254, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !30, line: 83, baseType: !1340, size: 320, offset: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1336, file: !30, line: 83, size: 320, elements: !1341)
!1341 = !{!1342, !1363, !1377, !1381, !1625}
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !30, line: 84, baseType: !1343, size: 320)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !30, line: 84, size: 320, elements: !1344)
!1344 = !{!1345, !1356, !1357, !1362}
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !30, line: 90, baseType: !1346, size: 128)
!1346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !30, line: 90, size: 128, elements: !1347)
!1347 = !{!1348, !1349, !1354, !1355}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1346, file: !30, line: 91, baseType: !244, size: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !30, line: 94, baseType: !1350, size: 128)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1346, file: !30, line: 94, size: 128, elements: !1351)
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1350, file: !30, line: 96, baseType: !303, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1350, file: !30, line: 98, baseType: !7, size: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1346, file: !30, line: 102, baseType: !244, size: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1346, file: !30, line: 103, baseType: !244, size: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1343, file: !30, line: 106, baseType: !1315, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !30, line: 107, baseType: !1358, size: 64, offset: 192)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !30, line: 107, size: 64, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1358, file: !30, line: 108, baseType: !254, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1358, file: !30, line: 109, baseType: !254, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1343, file: !30, line: 117, baseType: !254, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !30, line: 119, baseType: !1364, size: 320)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !30, line: 119, size: 320, elements: !1365)
!1365 = !{!1366, !1367, !1370, !1371, !1372}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1364, file: !30, line: 124, baseType: !254, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1364, file: !30, line: 125, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !30, line: 125, flags: DIFlagFwdDecl)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1364, file: !30, line: 126, baseType: !254, size: 64, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1364, file: !30, line: 127, baseType: !254, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, scope: !1364, file: !30, line: 128, baseType: !1373, size: 64, offset: 256)
!1373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1364, file: !30, line: 128, size: 64, elements: !1374)
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1373, file: !30, line: 133, baseType: !254, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1373, file: !30, line: 138, baseType: !171, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !30, line: 141, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !30, line: 141, size: 64, elements: !1379)
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1378, file: !30, line: 142, baseType: !254, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !30, line: 144, baseType: !1382, size: 128)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !30, line: 144, size: 128, elements: !1383)
!1383 = !{!1384, !1624}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1382, file: !30, line: 146, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !22, line: 126, size: 1216, elements: !1387)
!1387 = !{!1388, !1398, !1419, !1430, !1431, !1432, !1433, !1606, !1607, !1608}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1386, file: !22, line: 127, baseType: !1389, size: 384)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !22, line: 21, size: 384, elements: !1390)
!1390 = !{!1391, !1392, !1394, !1395, !1396, !1397}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1389, file: !22, line: 22, baseType: !254, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1389, file: !22, line: 23, baseType: !1393, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1389, file: !22, line: 24, baseType: !1393, size: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1389, file: !22, line: 25, baseType: !254, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1389, file: !22, line: 26, baseType: !254, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1389, file: !22, line: 27, baseType: !254, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1386, file: !22, line: 128, baseType: !1399, size: 128, offset: 384)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1400, line: 105, size: 128, elements: !1401)
!1400 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1399, file: !1400, line: 110, baseType: !254, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1399, file: !1400, line: 118, baseType: !1404, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1400, line: 95, size: 448, elements: !1406)
!1406 = !{!1407, !1408, !1414, !1415, !1416, !1417, !1418}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1405, file: !1400, line: 96, baseType: !171, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1405, file: !1400, line: 97, baseType: !1409, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1400, line: 60, baseType: !1411)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null, !1413}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1405, file: !1400, line: 98, baseType: !1409, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1405, file: !1400, line: 99, baseType: !362, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1405, file: !1400, line: 100, baseType: !362, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1405, file: !1400, line: 101, baseType: !352, size: 128, align: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1405, file: !1400, line: 102, baseType: !1413, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1386, file: !22, line: 129, baseType: !1420, size: 256, offset: 512)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1421, line: 26, size: 256, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1420, file: !1421, line: 27, baseType: !7, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1420, file: !1421, line: 28, baseType: !1425, size: 192, offset: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1426, line: 43, size: 192, elements: !1427)
!1426 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1425, file: !1426, line: 44, baseType: !270, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1425, file: !1426, line: 45, baseType: !244, size: 128, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1386, file: !22, line: 130, baseType: !21, size: 32, offset: 768)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1386, file: !22, line: 131, baseType: !7, size: 32, offset: 800)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1386, file: !22, line: 132, baseType: !254, size: 64, offset: 832)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1386, file: !22, line: 133, baseType: !1434, size: 64, offset: 896)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !22, line: 77, size: 192, elements: !1437)
!1437 = !{!1438, !1442, !1602}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1436, file: !22, line: 83, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !1335}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1436, file: !22, line: 89, baseType: !1443, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!1446, !1447}
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !30, line: 1184, baseType: !7)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1449, line: 512, size: 896, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1450 = !{!1451, !1569, !1570, !1577, !1584, !1594, !1595, !1596, !1598, !1600}
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !1449, line: 513, baseType: !1452, size: 320)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1448, file: !1449, line: 513, size: 320, elements: !1453)
!1453 = !{!1454, !1565, !1566, !1567, !1568}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1452, file: !1449, line: 514, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !30, line: 625, size: 1344, elements: !1457)
!1457 = !{!1458, !1467, !1468, !1476, !1483, !1484, !1489, !1490, !1495, !1496, !1499, !1558, !1559, !1560, !1561, !1562, !1563}
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !30, line: 628, baseType: !1459, size: 128)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !30, line: 628, size: 128, elements: !1460)
!1460 = !{!1461, !1466}
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !30, line: 629, baseType: !1462, size: 128)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1459, file: !30, line: 629, size: 128, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1462, file: !30, line: 631, baseType: !254, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1462, file: !30, line: 632, baseType: !254, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1459, file: !30, line: 635, baseType: !352, size: 128, align: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1456, file: !30, line: 639, baseType: !777, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1456, file: !30, line: 640, baseType: !1469, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1470, line: 297, baseType: !1471)
!1470 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1470, line: 297, size: 64, elements: !1472)
!1472 = !{!1473}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1471, file: !1470, line: 297, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1475, line: 19, baseType: !254)
!1475 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !30, line: 646, baseType: !1477, size: 64, offset: 256)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !30, line: 646, size: 64, elements: !1478)
!1478 = !{!1479, !1482}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1477, file: !30, line: 647, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1481)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !30, line: 542, baseType: !254)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1477, file: !30, line: 648, baseType: !1481, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1456, file: !30, line: 666, baseType: !102, size: 32, offset: 320)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1456, file: !30, line: 667, baseType: !1485, size: 64, offset: 384)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !30, line: 579, size: 320, elements: !1487)
!1487 = !{!1488}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1486, file: !30, line: 580, baseType: !259, size: 320)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1456, file: !30, line: 670, baseType: !362, size: 8, offset: 448)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1456, file: !30, line: 681, baseType: !1491, size: 256, offset: 512)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1456, file: !30, line: 678, size: 256, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1491, file: !30, line: 679, baseType: !250, size: 192, align: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1491, file: !30, line: 680, baseType: !254, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1456, file: !30, line: 689, baseType: !244, size: 128, offset: 768)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1456, file: !30, line: 691, baseType: !1497, size: 64, offset: 896)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !30, line: 691, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1456, file: !30, line: 694, baseType: !1500, size: 64, offset: 960)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1502)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1449, line: 563, size: 1024, elements: !1503)
!1503 = !{!1504, !1508, !1509, !1513, !1517, !1521, !1522, !1526, !1530, !1534, !1535, !1536, !1540, !1544, !1550, !1554}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1502, file: !1449, line: 564, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !1455}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1502, file: !1449, line: 569, baseType: !1505, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1502, file: !1449, line: 571, baseType: !1510, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!102, !1455, !254}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1502, file: !1449, line: 572, baseType: !1514, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!102, !1455}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1502, file: !1449, line: 578, baseType: !1518, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!102, !1455, !254, !254, !254}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1502, file: !1449, line: 580, baseType: !1443, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1502, file: !1449, line: 581, baseType: !1523, size: 64, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1446, !1447, !7}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1502, file: !1449, line: 582, baseType: !1527, size: 64, offset: 448)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!1446, !1447, !254, !254}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1502, file: !1449, line: 584, baseType: !1531, size: 64, offset: 512)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!254, !1455}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1502, file: !1449, line: 588, baseType: !1443, size: 64, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1502, file: !1449, line: 591, baseType: !1443, size: 64, offset: 640)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1502, file: !1449, line: 597, baseType: !1537, size: 64, offset: 704)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!102, !1455, !254, !303, !102, !102}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1502, file: !1449, line: 603, baseType: !1541, size: 64, offset: 768)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!365, !1455}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1502, file: !1449, line: 613, baseType: !1545, size: 64, offset: 832)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!102, !1455, !1548}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !30, line: 717, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1502, file: !1449, line: 625, baseType: !1551, size: 64, offset: 896)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!1548, !1455, !254}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1502, file: !1449, line: 633, baseType: !1555, size: 64, offset: 960)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1335, !1455, !254}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1456, file: !30, line: 697, baseType: !254, size: 64, offset: 1024)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1456, file: !30, line: 699, baseType: !813, size: 64, offset: 1088)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1456, file: !30, line: 700, baseType: !303, size: 64, offset: 1152)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1456, file: !30, line: 711, baseType: !171, size: 64, offset: 1216)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1456, file: !30, line: 717, baseType: !1548, size: 64, offset: 1280)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1456, file: !30, line: 722, baseType: !1564, offset: 1344)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !30, line: 570, elements: !806)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1452, file: !1449, line: 515, baseType: !1160, size: 32, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1452, file: !1449, line: 516, baseType: !254, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1452, file: !1449, line: 517, baseType: !254, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1452, file: !1449, line: 518, baseType: !254, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1448, file: !1449, line: 520, baseType: !29, size: 32, offset: 320)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1448, file: !1449, line: 522, baseType: !1571, size: 64, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1475, line: 22, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1475, line: 22, size: 64, elements: !1574)
!1574 = !{!1575}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1573, file: !1475, line: 22, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1475, line: 15, baseType: !254)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1448, file: !1449, line: 524, baseType: !1578, size: 64, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1470, line: 372, baseType: !1580)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1470, line: 372, size: 64, elements: !1581)
!1581 = !{!1582}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1580, file: !1470, line: 372, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1475, line: 16, baseType: !254)
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !1449, line: 527, baseType: !1585, size: 64, offset: 512)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !1449, line: 527, size: 64, elements: !1586)
!1586 = !{!1587, !1593}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1585, file: !1449, line: 528, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1475, line: 21, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1475, line: 21, size: 64, elements: !1590)
!1590 = !{!1591}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1589, file: !1475, line: 21, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1475, line: 14, baseType: !254)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1585, file: !1449, line: 529, baseType: !1572, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1448, file: !1449, line: 534, baseType: !1335, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1448, file: !1449, line: 535, baseType: !1335, size: 64, offset: 640)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1448, file: !1449, line: 541, baseType: !1597, size: 64, offset: 704)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1448, file: !1449, line: 545, baseType: !1599, size: 64, offset: 768)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1448, file: !1449, line: 549, baseType: !1601, size: 64, offset: 832)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1470, line: 520, baseType: !1335)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1436, file: !22, line: 100, baseType: !1603, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!102, !1385, !254, !254, !102}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1386, file: !22, line: 134, baseType: !303, size: 64, offset: 960)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1386, file: !22, line: 135, baseType: !102, size: 32, offset: 1024)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1386, file: !22, line: 136, baseType: !1609, size: 128, offset: 1088)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1386, file: !22, line: 136, size: 128, elements: !1610)
!1610 = !{!1611, !1617}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1609, file: !22, line: 137, baseType: !1612, size: 128)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1613, line: 6, size: 128, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1612, file: !1613, line: 7, baseType: !212, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1612, file: !1613, line: 8, baseType: !212, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !22, line: 138, baseType: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1609, file: !22, line: 138, elements: !1619)
!1619 = !{!1620, !1622}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1618, file: !22, line: 138, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1618, file: !22, line: 138, elements: !806)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1618, file: !22, line: 138, baseType: !1623)
!1623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1612, elements: !470)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1382, file: !30, line: 147, baseType: !303, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1340, file: !30, line: 161, baseType: !352, size: 128, align: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !30, line: 164, baseType: !1627, size: 32, offset: 384)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1336, file: !30, line: 164, size: 32, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1627, file: !30, line: 169, baseType: !231, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1627, file: !30, line: 177, baseType: !7, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1336, file: !30, line: 181, baseType: !231, size: 32, offset: 416)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !59, line: 309, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1329, file: !59, line: 406, baseType: !1635, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!102, !813, !1638}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !30, line: 293, size: 1536, elements: !1640)
!1640 = !{!1641, !1671, !1685}
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !30, line: 295, baseType: !1642, size: 512)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !30, line: 295, size: 512, elements: !1643)
!1643 = !{!1644, !1670}
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !30, line: 296, baseType: !1645, size: 448)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !30, line: 296, size: 448, elements: !1646)
!1646 = !{!1647, !1648, !1657, !1658, !1659, !1668, !1669}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1645, file: !30, line: 298, baseType: !254, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !30, line: 299, baseType: !1649, size: 128, offset: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1645, file: !30, line: 299, size: 128, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1649, file: !30, line: 300, baseType: !244, size: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1649, file: !30, line: 302, baseType: !1653, size: 128)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1649, file: !30, line: 302, size: 128, elements: !1654)
!1654 = !{!1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1653, file: !30, line: 303, baseType: !303, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1653, file: !30, line: 305, baseType: !7, size: 32, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1645, file: !30, line: 310, baseType: !1315, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1645, file: !30, line: 311, baseType: !254, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !30, line: 312, baseType: !1660, size: 64, offset: 320)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1645, file: !30, line: 312, size: 64, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1660, file: !30, line: 313, baseType: !303, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1660, file: !30, line: 314, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !30, line: 257, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 255, size: 64, elements: !1666)
!1666 = !{!1667}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1665, file: !30, line: 256, baseType: !254, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1645, file: !30, line: 316, baseType: !231, size: 32, offset: 384)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1645, file: !30, line: 317, baseType: !231, size: 32, offset: 416)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1642, file: !30, line: 323, baseType: !1336, size: 512, align: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !30, line: 325, baseType: !1672, size: 512, offset: 512)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !30, line: 325, size: 512, elements: !1673)
!1673 = !{!1674, !1684}
!1674 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !30, line: 326, baseType: !1675, size: 320)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !30, line: 326, size: 320, elements: !1676)
!1676 = !{!1677, !1678, !1679, !1680, !1681, !1682, !1683}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1675, file: !30, line: 327, baseType: !254, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1675, file: !30, line: 328, baseType: !254, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1675, file: !30, line: 329, baseType: !254, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1675, file: !30, line: 331, baseType: !231, size: 32, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1675, file: !30, line: 332, baseType: !231, size: 32, offset: 224)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1675, file: !30, line: 333, baseType: !231, size: 32, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1675, file: !30, line: 335, baseType: !7, size: 32, offset: 288)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1672, file: !30, line: 339, baseType: !1336, size: 512, align: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !30, line: 341, baseType: !1686, size: 512, offset: 1024)
!1686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !30, line: 341, size: 512, elements: !1687)
!1687 = !{!1688, !1697, !1703}
!1688 = !DIDerivedType(tag: DW_TAG_member, scope: !1686, file: !30, line: 342, baseType: !1689, size: 384)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1686, file: !30, line: 342, size: 384, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1689, file: !30, line: 343, baseType: !254, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1689, file: !30, line: 344, baseType: !254, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1689, file: !30, line: 346, baseType: !303, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1689, file: !30, line: 347, baseType: !303, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1689, file: !30, line: 348, baseType: !303, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1689, file: !30, line: 349, baseType: !303, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1686, file: !30, line: 352, baseType: !1698, size: 256)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1686, file: !30, line: 352, size: 256, elements: !1699)
!1699 = !{!1700, !1701, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1698, file: !30, line: 353, baseType: !254, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1698, file: !30, line: 354, baseType: !254, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1698, file: !30, line: 356, baseType: !244, size: 128, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1686, file: !30, line: 359, baseType: !1336, size: 512, align: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1329, file: !59, line: 409, baseType: !1705, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!102, !1315, !1632}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1329, file: !59, line: 412, baseType: !1709, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!362, !1315, !1638}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1329, file: !59, line: 414, baseType: !1713, size: 64, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{null, !1716}
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !59, line: 310, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1329, file: !59, line: 416, baseType: !1719, size: 64, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!102, !813, !1315, !835, !7, !1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1329, file: !59, line: 419, baseType: !1725, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!102, !813, !1315, !835, !7, !7, !1335, !303}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1329, file: !59, line: 424, baseType: !1729, size: 64, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!1732, !1315, !1732}
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !174, line: 131, baseType: !212)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1329, file: !59, line: 425, baseType: !1734, size: 64, offset: 512)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !1638, !1108, !1108}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1329, file: !59, line: 426, baseType: !1738, size: 64, offset: 576)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!362, !1638, !1160}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1329, file: !59, line: 427, baseType: !1742, size: 64, offset: 640)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !1638}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1329, file: !59, line: 428, baseType: !1746, size: 64, offset: 704)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!1105, !1749, !1771}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !59, line: 373, size: 384, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1758, !1759, !1760, !1761}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1750, file: !59, line: 374, baseType: !813, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1750, file: !59, line: 375, baseType: !835, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1750, file: !59, line: 376, baseType: !1755, size: 64, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{null, !1749, !477}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1750, file: !59, line: 377, baseType: !303, size: 64, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1750, file: !59, line: 378, baseType: !102, size: 32, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1750, file: !59, line: 379, baseType: !294, size: 16, offset: 288)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1750, file: !59, line: 380, baseType: !1762, size: 64, offset: 320)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1750, file: !59, line: 380, size: 64, elements: !1763)
!1763 = !{!1764, !1767}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1762, file: !59, line: 386, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !59, line: 386, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1762, file: !59, line: 395, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!1105, !303}
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1773, line: 41, size: 320, elements: !1774)
!1773 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1780, !1785, !1818}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1772, file: !1773, line: 42, baseType: !287, size: 8)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1772, file: !1773, line: 43, baseType: !362, size: 8, offset: 8)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1772, file: !1773, line: 44, baseType: !362, size: 8, offset: 16)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1772, file: !1773, line: 45, baseType: !362, size: 8, offset: 24)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1772, file: !1773, line: 46, baseType: !362, size: 8, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !1773, line: 47, baseType: !1781, size: 64, offset: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !1773, line: 47, size: 64, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1781, file: !1773, line: 48, baseType: !1108, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1781, file: !1773, line: 49, baseType: !102, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !1773, line: 61, baseType: !1786, size: 128, offset: 128)
!1786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !1773, line: 61, size: 128, elements: !1787)
!1787 = !{!1788, !1794}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1786, file: !1773, line: 67, baseType: !1789, size: 128)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1790, line: 17, size: 128, elements: !1791)
!1790 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1791 = !{!1792, !1793}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1789, file: !1790, line: 19, baseType: !303, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1789, file: !1790, line: 20, baseType: !1109, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !1773, line: 68, baseType: !1795, size: 128)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1786, file: !1773, line: 68, size: 128, elements: !1796)
!1796 = !{!1797, !1817}
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1795, file: !1773, line: 69, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1795, file: !1773, line: 69, size: 64, elements: !1799)
!1799 = !{!1800, !1803, !1810, !1814, !1816}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1798, file: !1773, line: 71, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1789)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1798, file: !1773, line: 72, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1773, line: 17, size: 128, elements: !1807)
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1806, file: !1773, line: 18, baseType: !303, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1806, file: !1773, line: 19, baseType: !1108, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1798, file: !1773, line: 73, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1813)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1773, line: 73, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1798, file: !1773, line: 74, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1798, file: !1773, line: 75, baseType: !303, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1795, file: !1773, line: 77, baseType: !1108, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !1773, line: 80, baseType: !1819, size: 64, offset: 256)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !1773, line: 80, size: 64, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1819, file: !1773, line: 81, baseType: !254, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1819, file: !1773, line: 82, baseType: !835, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1329, file: !59, line: 433, baseType: !1824, size: 64, offset: 768)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!102, !1315, !1638, !1638, !45}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1329, file: !59, line: 435, baseType: !1828, size: 64, offset: 832)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!102, !1638}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1329, file: !59, line: 436, baseType: !1832, size: 64, offset: 896)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!362, !1638, !1108, !1108}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1329, file: !59, line: 438, baseType: !1836, size: 64, offset: 960)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !1638, !1839, !1839}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1329, file: !59, line: 439, baseType: !1841, size: 64, offset: 1024)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!102, !1315, !1335}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1329, file: !59, line: 442, baseType: !1845, size: 64, offset: 1088)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!102, !1848, !813, !1850}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !59, line: 66, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1329, file: !59, line: 444, baseType: !1852, size: 64, offset: 1152)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{null, !813}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1329, file: !59, line: 445, baseType: !1856, size: 64, offset: 1216)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!102, !1749, !1771}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1316, file: !59, line: 486, baseType: !254, size: 64, offset: 896)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1316, file: !59, line: 487, baseType: !259, size: 320, offset: 960)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1316, file: !59, line: 488, baseType: !1862, size: 32, offset: 1280)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1863, line: 8, baseType: !317)
!1863 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1316, file: !59, line: 489, baseType: !795, size: 32, offset: 1312)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1316, file: !59, line: 490, baseType: !244, size: 128, offset: 1344)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1316, file: !59, line: 491, baseType: !303, size: 64, offset: 1472)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1306, file: !1275, line: 180, baseType: !1868, size: 64, offset: 320)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!1105, !813, !1217, !1305, !375, !835, !1108}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1306, file: !1275, line: 182, baseType: !1868, size: 64, offset: 384)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1306, file: !1275, line: 184, baseType: !1873, size: 64, offset: 448)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!102, !813, !1217, !1305, !1455}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1294, file: !1275, line: 90, baseType: !1877, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1294, file: !1275, line: 91, baseType: !1879, size: 64, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1265, file: !1212, line: 120, baseType: !1881, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!1884, !1235}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1886)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !53, line: 39, size: 384, elements: !1887)
!1887 = !{!1888, !1889, !1893, !1897, !1905, !1909}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1886, file: !53, line: 40, baseType: !52, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1886, file: !53, line: 41, baseType: !1890, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!362}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1886, file: !53, line: 42, baseType: !1894, size: 64, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!303}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1886, file: !53, line: 43, baseType: !1898, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!1901, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !53, line: 19, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1886, file: !53, line: 44, baseType: !1906, size: 64, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!1901}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1886, file: !53, line: 45, baseType: !984, size: 64, offset: 320)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1265, file: !1212, line: 121, baseType: !1911, size: 64, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!1901, !1235}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1265, file: !1212, line: 122, baseType: !1915, size: 64, offset: 320)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !1235, !1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1211, file: !1212, line: 70, baseType: !1921, size: 64, offset: 384)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1184, line: 190, size: 1152, elements: !1923)
!1923 = !{!1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !2055, !2056, !2057, !2058, !2059, !2062}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1922, file: !1184, line: 191, baseType: !231, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1922, file: !1184, line: 192, baseType: !231, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1922, file: !1184, line: 202, baseType: !1921, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1922, file: !1184, line: 203, baseType: !365, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1922, file: !1184, line: 205, baseType: !250, size: 192, align: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1922, file: !1184, line: 207, baseType: !1901, size: 64, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1922, file: !1184, line: 208, baseType: !7, size: 32, offset: 448)
!1931 = !DIDerivedType(tag: DW_TAG_member, scope: !1922, file: !1184, line: 209, baseType: !1932, size: 256, offset: 512)
!1932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1922, file: !1184, line: 209, size: 256, elements: !1933)
!1933 = !{!1934, !1943, !1947}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1932, file: !1184, line: 210, baseType: !1935, size: 256)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1184, line: 153, size: 256, elements: !1936)
!1936 = !{!1937, !1938, !1939, !1942}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1935, file: !1184, line: 154, baseType: !254, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1935, file: !1184, line: 156, baseType: !663, size: 64, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1935, file: !1184, line: 162, baseType: !1940, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1184, line: 162, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1935, file: !1184, line: 167, baseType: !254, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1932, file: !1184, line: 211, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1184, line: 170, size: 64, elements: !1945)
!1945 = !{!1946}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1944, file: !1184, line: 171, baseType: !1921, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1932, file: !1184, line: 212, baseType: !1948, size: 256)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1184, line: 174, size: 256, elements: !1949)
!1949 = !{!1950, !2050, !2053, !2054}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1948, file: !1184, line: 175, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1184, line: 271, size: 768, elements: !1954)
!1954 = !{!1955, !2014, !2018, !2019, !2020, !2021, !2022, !2026, !2027, !2028, !2029, !2046}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1953, file: !1184, line: 276, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!102, !1959}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1184, line: 251, size: 1216, elements: !1961)
!1961 = !{!1962, !1963, !1964, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1960, file: !1184, line: 253, baseType: !1921, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1960, file: !1184, line: 254, baseType: !813, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1960, file: !1184, line: 255, baseType: !1965, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1967, line: 17, size: 960, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1999, !2000, !2003}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1966, file: !1967, line: 18, baseType: !375, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1966, file: !1967, line: 19, baseType: !1108, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1966, file: !1967, line: 20, baseType: !1108, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1966, file: !1967, line: 21, baseType: !1108, size: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1966, file: !1967, line: 22, baseType: !1108, size: 64, offset: 256)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1966, file: !1967, line: 23, baseType: !835, size: 64, offset: 320)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1966, file: !1967, line: 24, baseType: !835, size: 64, offset: 384)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1966, file: !1967, line: 25, baseType: !827, size: 256, offset: 448)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1966, file: !1967, line: 26, baseType: !1978, size: 64, offset: 704)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1980)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1967, line: 32, size: 256, elements: !1981)
!1981 = !{!1982, !1987, !1991, !1995}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1980, file: !1967, line: 33, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!303, !1965, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1980, file: !1967, line: 34, baseType: !1988, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !1965, !303}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1980, file: !1967, line: 35, baseType: !1992, size: 64, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!303, !1965, !303, !1986}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1980, file: !1967, line: 36, baseType: !1996, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!102, !1965, !303}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1966, file: !1967, line: 27, baseType: !102, size: 32, offset: 768)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1966, file: !1967, line: 28, baseType: !2001, size: 64, offset: 832)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1966, file: !1967, line: 29, baseType: !303, size: 64, offset: 896)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1960, file: !1184, line: 256, baseType: !303, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1960, file: !1184, line: 259, baseType: !827, size: 256, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1960, file: !1184, line: 260, baseType: !827, size: 256, offset: 512)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1960, file: !1184, line: 261, baseType: !102, size: 32, offset: 768)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1960, file: !1184, line: 262, baseType: !244, size: 128, offset: 832)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1960, file: !1184, line: 263, baseType: !375, size: 64, offset: 960)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1960, file: !1184, line: 265, baseType: !1108, size: 64, offset: 1024)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1960, file: !1184, line: 266, baseType: !362, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1960, file: !1184, line: 267, baseType: !362, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1960, file: !1184, line: 268, baseType: !1500, size: 64, offset: 1152)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1953, file: !1184, line: 277, baseType: !2015, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !1959}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1953, file: !1184, line: 290, baseType: !1996, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1953, file: !1184, line: 292, baseType: !1983, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1953, file: !1184, line: 293, baseType: !1992, size: 64, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1953, file: !1184, line: 294, baseType: !1988, size: 64, offset: 320)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1953, file: !1184, line: 296, baseType: !2023, size: 64, offset: 384)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!1105, !1959, !375, !1108, !835}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1953, file: !1184, line: 306, baseType: !1108, size: 64, offset: 448)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1953, file: !1184, line: 313, baseType: !362, size: 8, offset: 512)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1953, file: !1184, line: 314, baseType: !2023, size: 64, offset: 576)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1953, file: !1184, line: 317, baseType: !2030, size: 64, offset: 640)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!2033, !1959, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2034, line: 59, baseType: !7)
!2034 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2037, line: 37, size: 128, elements: !2038)
!2037 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2038 = !{!2039, !2045}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2036, file: !2037, line: 38, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2037, line: 31, baseType: !2041)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !813, !2044, !2035}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2036, file: !2037, line: 39, baseType: !2033, size: 32, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1953, file: !1184, line: 320, baseType: !2047, size: 64, offset: 704)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!102, !1959, !1455}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1948, file: !1184, line: 176, baseType: !2051, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1184, line: 35, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1948, file: !1184, line: 177, baseType: !835, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1948, file: !1184, line: 178, baseType: !1921, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1922, file: !1184, line: 215, baseType: !303, size: 64, offset: 768)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1922, file: !1184, line: 221, baseType: !212, size: 64, offset: 832)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1922, file: !1184, line: 223, baseType: !296, size: 16, offset: 896)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1922, file: !1184, line: 224, baseType: !956, size: 16, offset: 912)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1922, file: !1184, line: 225, baseType: !2060, size: 64, offset: 960)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1184, line: 36, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1922, file: !1184, line: 227, baseType: !352, size: 128, align: 64, offset: 1024)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1211, file: !1212, line: 71, baseType: !2064, size: 32, offset: 448)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2065, line: 19, size: 32, elements: !2066)
!2065 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2066 = !{!2067}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2064, file: !2065, line: 20, baseType: !227, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1211, file: !1212, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1211, file: !1212, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1211, file: !1212, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1211, file: !1212, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1211, file: !1212, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1208, file: !15, line: 47, baseType: !1198, size: 64, offset: 512)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1208, file: !15, line: 48, baseType: !1217, size: 64, offset: 576)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1208, file: !15, line: 49, baseType: !2076, size: 64, offset: 640)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1208, file: !15, line: 50, baseType: !2079, size: 64, offset: 704)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1199, file: !15, line: 418, baseType: !2081, size: 64, offset: 1408)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !2083)
!2083 = !{!2084, !2085, !2090, !2094, !2098, !2102}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2082, file: !15, line: 54, baseType: !1282, size: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2082, file: !15, line: 55, baseType: !2086, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!1105, !2081, !2089, !375}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2082, file: !15, line: 57, baseType: !2091, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!1105, !2081, !2089, !365, !1108}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2082, file: !15, line: 59, baseType: !2095, size: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{null, !1198, !365}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2082, file: !15, line: 60, baseType: !2099, size: 64, offset: 320)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!102, !1198}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2082, file: !15, line: 61, baseType: !2103, size: 64, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{null, !1198}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1199, file: !15, line: 419, baseType: !365, size: 64, offset: 1472)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1199, file: !15, line: 420, baseType: !365, size: 64, offset: 1536)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1199, file: !15, line: 421, baseType: !1217, size: 64, offset: 1600)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1199, file: !15, line: 424, baseType: !2110, size: 64, offset: 1664)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2112)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1199, file: !15, line: 425, baseType: !2114, size: 64, offset: 1728)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1199, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1199, file: !15, line: 435, baseType: !827, size: 256, offset: 1856)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1199, file: !15, line: 437, baseType: !2119, size: 64, offset: 2112)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2121, line: 69, size: 320, elements: !2122)
!2121 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2122 = !{!2123, !2124, !2125, !2142, !2144, !2148, !2149}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2120, file: !2121, line: 70, baseType: !365, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2120, file: !2121, line: 71, baseType: !1198, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2120, file: !2121, line: 72, baseType: !2126, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2121, line: 47, size: 256, elements: !2129)
!2129 = !{!2130, !2131, !2137, !2141}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2128, file: !2121, line: 49, baseType: !7, size: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2128, file: !2121, line: 51, baseType: !2132, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!102, !365, !2135}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2120)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2128, file: !2121, line: 53, baseType: !2138, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!102, !375, !2135}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2128, file: !2121, line: 55, baseType: !984, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2120, file: !2121, line: 73, baseType: !2143, size: 16, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2120, file: !2121, line: 74, baseType: !2145, size: 8, offset: 208)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !179, line: 16, baseType: !2146)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !181, line: 20, baseType: !2147)
!2147 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2120, file: !2121, line: 75, baseType: !287, size: 8, offset: 216)
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !2120, file: !2121, line: 76, baseType: !2150, size: 64, offset: 256)
!2150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2120, file: !2121, line: 76, size: 64, elements: !2151)
!2151 = !{!2152, !2153, !2160}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2150, file: !2121, line: 77, baseType: !303, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2150, file: !2121, line: 78, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2156)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2121, line: 86, size: 128, elements: !2157)
!2157 = !{!2158, !2159}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2156, file: !2121, line: 87, baseType: !7, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2156, file: !2121, line: 88, baseType: !375, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2150, file: !2121, line: 79, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2163)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2121, line: 92, size: 256, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2169, !2170}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2163, file: !2121, line: 94, baseType: !7, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2163, file: !2121, line: 95, baseType: !7, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2163, file: !2121, line: 96, baseType: !2168, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2163, file: !2121, line: 97, baseType: !2126, size: 64, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2163, file: !2121, line: 98, baseType: !303, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1199, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1199, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1199, file: !15, line: 442, baseType: !2110, size: 64, offset: 2240)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1199, file: !15, line: 443, baseType: !2114, size: 64, offset: 2304)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1199, file: !15, line: 444, baseType: !362, size: 8, offset: 2368)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1199, file: !15, line: 451, baseType: !362, size: 8, offset: 2376)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1199, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1199, file: !15, line: 455, baseType: !2179, size: 64, offset: 2432)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2181, line: 23, size: 96, elements: !2182)
!2181 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2182 = !{!2183, !2184, !2185}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2180, file: !2181, line: 24, baseType: !102, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2180, file: !2181, line: 24, baseType: !102, size: 32, offset: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2180, file: !2181, line: 24, baseType: !102, size: 32, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1199, file: !15, line: 458, baseType: !2187, size: 64, offset: 2496)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!102}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1199, file: !15, line: 460, baseType: !2191, size: 4032, align: 512, offset: 2560)
!2191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2192, size: 4032, elements: !2208)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !2193)
!2193 = !{!2194, !2195, !2196}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2192, file: !15, line: 363, baseType: !303, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2192, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2192, file: !15, line: 367, baseType: !2197, size: 448, offset: 128)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !2198)
!2198 = !{!2199, !2200}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2197, file: !15, line: 320, baseType: !1198, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2197, file: !15, line: 321, baseType: !2201, size: 384, offset: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2202, line: 40, size: 384, elements: !2203)
!2202 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2203 = !{!2204}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2201, file: !2202, line: 41, baseType: !2205, size: 384, align: 64)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 384, align: 64, elements: !2206)
!2206 = !{!2207}
!2207 = !DISubrange(count: 2)
!2208 = !{!2209}
!2209 = !DISubrange(count: 7)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1199, file: !15, line: 463, baseType: !2211, size: 192, offset: 6592)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2212, line: 8, size: 192, elements: !2213)
!2212 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2213 = !{!2214, !2215, !2217}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2211, file: !2212, line: 10, baseType: !7, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2211, file: !2212, line: 11, baseType: !2216, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2211, file: !2212, line: 12, baseType: !2218, size: 64, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2220, line: 59, size: 48, elements: !2221)
!2220 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2221 = !{!2222, !2225, !2226, !2227, !2228, !2229}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2219, file: !2220, line: 60, baseType: !2223, size: 16)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !179, line: 18, baseType: !2224)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !181, line: 23, baseType: !322)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2219, file: !2220, line: 61, baseType: !2223, size: 16, offset: 16)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2219, file: !2220, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2219, file: !2220, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2219, file: !2220, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2219, file: !2220, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1199, file: !15, line: 465, baseType: !254, size: 64, offset: 6784)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1199, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1199, file: !15, line: 470, baseType: !244, size: 128, offset: 6912)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1199, file: !15, line: 471, baseType: !2234, size: 64, offset: 7040)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2236, line: 33, size: 96, elements: !2237)
!2236 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2237 = !{!2238, !2239, !2240, !2241}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2235, file: !2236, line: 37, baseType: !102, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2235, file: !2236, line: 43, baseType: !102, size: 32, offset: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2235, file: !2236, line: 45, baseType: !296, size: 16, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2235, file: !2236, line: 47, baseType: !296, size: 16, offset: 80)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1199, file: !15, line: 476, baseType: !2243, size: 64, offset: 7104)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !2245)
!2245 = !{!2246, !2262, !2263, !2264}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2244, file: !15, line: 379, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2249, line: 204, baseType: !2250)
!2249 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2249, line: 197, size: 192, elements: !2251)
!2251 = !{!2252, !2254, !2255, !2256, !2258, !2260}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2250, file: !2249, line: 198, baseType: !2253, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2249, line: 21, baseType: !318)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2250, file: !2249, line: 199, baseType: !220, size: 8, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2250, file: !2249, line: 200, baseType: !220, size: 8, offset: 40)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2250, file: !2249, line: 201, baseType: !2257, size: 16, offset: 48)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2249, line: 17, baseType: !295)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2250, file: !2249, line: 202, baseType: !2259, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2249, line: 16, baseType: !213)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2250, file: !2249, line: 203, baseType: !2261, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2249, line: 22, baseType: !213)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2244, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2244, file: !15, line: 381, baseType: !375, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2244, file: !15, line: 382, baseType: !375, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1199, file: !15, line: 477, baseType: !2244, size: 256, offset: 7168)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1199, file: !15, line: 480, baseType: !2267, size: 64, offset: 7424)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1199, file: !15, line: 483, baseType: !2270, size: 64, offset: 7488)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1199, file: !15, line: 488, baseType: !375, size: 64, offset: 7552)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1199, file: !15, line: 492, baseType: !303, size: 64, offset: 7616)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1199, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1199, file: !15, line: 495, baseType: !303, size: 64, offset: 7744)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1199, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1199, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1199, file: !15, line: 500, baseType: !2279, size: 64, offset: 7872)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2281, line: 45, baseType: !2282)
!2281 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1199, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1199, file: !15, line: 504, baseType: !2285, size: 64, offset: 8000)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2288, line: 96, size: 192, elements: !2289)
!2288 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2289 = !{!2290, !2291, !2356, !2359}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2287, file: !2288, line: 97, baseType: !7, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2287, file: !2288, line: 98, baseType: !2292, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2288, line: 24, size: 3072, elements: !2294)
!2294 = !{!2295, !2297, !2298, !2299, !2300, !2314, !2315, !2316, !2317, !2329, !2341, !2342, !2353, !2354, !2355}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2293, file: !2288, line: 26, baseType: !2296, size: 128)
!2296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 128, elements: !2206)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2293, file: !2288, line: 27, baseType: !2296, size: 128, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2293, file: !2288, line: 28, baseType: !102, size: 32, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2293, file: !2288, line: 31, baseType: !795, size: 32, align: 512, offset: 512)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2293, file: !2288, line: 32, baseType: !2301, size: 960, offset: 576)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2302, line: 206, size: 960, elements: !2303)
!2302 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2303 = !{!2304, !2305, !2308, !2310, !2311, !2313}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2301, file: !2302, line: 207, baseType: !355, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2301, file: !2302, line: 208, baseType: !2306, size: 256, offset: 64)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2307, size: 256, elements: !385)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2301, file: !2302, line: 209, baseType: !2309, size: 256, offset: 320)
!2309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 256, elements: !385)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2301, file: !2302, line: 213, baseType: !477, size: 64, offset: 576)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2301, file: !2302, line: 215, baseType: !2312, size: 256, offset: 640)
!2312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 256, elements: !385)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2301, file: !2302, line: 216, baseType: !287, size: 8, offset: 896)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2293, file: !2288, line: 33, baseType: !254, size: 64, offset: 1536)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2293, file: !2288, line: 34, baseType: !254, size: 64, offset: 1600)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2293, file: !2288, line: 35, baseType: !362, size: 8, offset: 1664)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2293, file: !2288, line: 36, baseType: !2318, size: 320, offset: 1728)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2319, line: 11, size: 320, elements: !2320)
!2319 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2320 = !{!2321, !2322, !2323, !2328}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2318, file: !2319, line: 16, baseType: !436, size: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2318, file: !2319, line: 17, baseType: !254, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2318, file: !2319, line: 18, baseType: !2324, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2327}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2318, file: !2319, line: 19, baseType: !317, size: 32, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2293, file: !2288, line: 37, baseType: !2330, size: 256, offset: 2048)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2331, line: 98, size: 256, elements: !2332)
!2331 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2332 = !{!2333, !2334, !2335}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2330, file: !2331, line: 99, baseType: !171, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2330, file: !2331, line: 100, baseType: !244, size: 128, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2330, file: !2331, line: 101, baseType: !2336, size: 64, offset: 192)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2331, line: 21, baseType: !2337)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !2340}
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2293, file: !2288, line: 38, baseType: !352, size: 128, align: 64, offset: 2304)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2293, file: !2288, line: 39, baseType: !2343, size: 64, offset: 2432)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2288, line: 49, size: 768, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2351, !2352}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2344, file: !2288, line: 50, baseType: !795, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2344, file: !2288, line: 51, baseType: !2309, size: 256, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2344, file: !2288, line: 53, baseType: !2309, size: 256, offset: 320)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2344, file: !2288, line: 54, baseType: !254, size: 64, offset: 576)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2344, file: !2288, line: 55, baseType: !2343, size: 64, offset: 640)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2344, file: !2288, line: 56, baseType: !102, size: 32, offset: 704)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2344, file: !2288, line: 57, baseType: !102, size: 32, offset: 736)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2293, file: !2288, line: 40, baseType: !254, size: 64, offset: 2496)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2293, file: !2288, line: 42, baseType: !102, size: 32, offset: 2560)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2293, file: !2288, line: 43, baseType: !2286, size: 64, offset: 2624)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2287, file: !2288, line: 99, baseType: !2357, offset: 128)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2358, line: 211, elements: !806)
!2358 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2287, file: !2288, line: 100, baseType: !2360, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2288, line: 63, size: 3008, elements: !2362)
!2362 = !{!2363, !2364, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2394}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2361, file: !2288, line: 64, baseType: !2343, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2361, file: !2288, line: 65, baseType: !2365, size: 192, offset: 64)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2343, size: 192, elements: !861)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2361, file: !2288, line: 67, baseType: !102, size: 32, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2361, file: !2288, line: 68, baseType: !827, size: 256, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2361, file: !2288, line: 69, baseType: !795, size: 32, offset: 576)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2361, file: !2288, line: 70, baseType: !827, size: 256, offset: 640)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2361, file: !2288, line: 71, baseType: !254, size: 64, offset: 896)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2361, file: !2288, line: 72, baseType: !254, size: 64, offset: 960)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2361, file: !2288, line: 73, baseType: !254, size: 64, offset: 1024)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2361, file: !2288, line: 74, baseType: !254, size: 64, offset: 1088)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2361, file: !2288, line: 75, baseType: !254, size: 64, offset: 1152)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2361, file: !2288, line: 76, baseType: !254, size: 64, offset: 1216)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2361, file: !2288, line: 77, baseType: !254, size: 64, offset: 1280)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2361, file: !2288, line: 78, baseType: !254, size: 64, offset: 1344)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2361, file: !2288, line: 79, baseType: !362, size: 8, offset: 1408)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2361, file: !2288, line: 80, baseType: !254, size: 64, offset: 1472)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2361, file: !2288, line: 81, baseType: !827, size: 256, offset: 1536)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2361, file: !2288, line: 82, baseType: !1420, size: 256, offset: 1792)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2361, file: !2288, line: 84, baseType: !231, size: 32, offset: 2048)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2361, file: !2288, line: 87, baseType: !254, size: 64, offset: 2112)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2361, file: !2288, line: 88, baseType: !254, size: 64, offset: 2176)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2361, file: !2288, line: 89, baseType: !2386, size: 704, offset: 2240)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2331, line: 111, size: 704, elements: !2387)
!2387 = !{!2388, !2389, !2390, !2393}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2386, file: !2331, line: 112, baseType: !2330, size: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2386, file: !2331, line: 113, baseType: !2318, size: 320, offset: 256)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2386, file: !2331, line: 116, baseType: !2391, size: 64, offset: 576)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2331, line: 18, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2386, file: !2331, line: 117, baseType: !102, size: 32, offset: 640)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2361, file: !2288, line: 90, baseType: !2286, size: 64, offset: 2944)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1199, file: !15, line: 515, baseType: !2396, size: 64, offset: 8064)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2398, line: 117, size: 128, elements: !2399)
!2398 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2399 = !{!2400, !2401, !2402}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2397, file: !2398, line: 118, baseType: !238, size: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2397, file: !2398, line: 119, baseType: !238, size: 32, offset: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2397, file: !2398, line: 120, baseType: !477, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1199, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1199, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1199, file: !15, line: 520, baseType: !2406, size: 64, offset: 8192)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1199, file: !15, line: 523, baseType: !2408, size: 64, offset: 8256)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1199, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1199, file: !15, line: 525, baseType: !2413, size: 64, offset: 8384)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1199, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1199, file: !15, line: 533, baseType: !303, size: 64, offset: 8512)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1199, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1199, file: !15, line: 535, baseType: !2420, size: 64, offset: 8640)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1199, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1199, file: !15, line: 539, baseType: !102, size: 32, offset: 8736)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1199, file: !15, line: 540, baseType: !2424, size: 64, offset: 8768)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2426, line: 32, size: 64, elements: !2427)
!2426 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2427 = !{!2428, !2429}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2425, file: !2426, line: 33, baseType: !238, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2425, file: !2426, line: 34, baseType: !238, size: 32, offset: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1199, file: !15, line: 563, baseType: !244, size: 128, offset: 8832)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1199, file: !15, line: 565, baseType: !244, size: 128, offset: 8960)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1199, file: !15, line: 568, baseType: !2433, size: 64, offset: 9088)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1199, file: !15, line: 570, baseType: !231, size: 32, offset: 9152)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1174, file: !59, line: 2382, baseType: !1173, size: 64, offset: 448)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1174, file: !59, line: 2383, baseType: !873, size: 64, offset: 512)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1174, file: !59, line: 2385, baseType: !2440, offset: 576)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2358, line: 206, elements: !806)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1174, file: !59, line: 2386, baseType: !2440, offset: 576)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1174, file: !59, line: 2387, baseType: !2440, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1174, file: !59, line: 2388, baseType: !2444, offset: 576)
!2444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2440, elements: !861)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1174, file: !59, line: 2390, baseType: !2440, offset: 576)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1174, file: !59, line: 2391, baseType: !2440, offset: 576)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1174, file: !59, line: 2392, baseType: !2440, offset: 576)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1174, file: !59, line: 2393, baseType: !2440, offset: 576)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1165, file: !59, line: 1197, baseType: !2450, size: 64, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2452)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !59, line: 2057, size: 1664, elements: !2453)
!2453 = !{!2454, !2458, !2462, !2463, !2467, !2471, !2475, !2476, !2477, !2481, !2485, !2489, !2490, !2491, !2497, !2501, !2502, !2506, !2507, !2508, !2509, !2513, !2517, !2564, !2579, !2580}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2452, file: !59, line: 2058, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!952, !1164}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2452, file: !59, line: 2059, baseType: !2459, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{null, !952}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2452, file: !59, line: 2060, baseType: !2459, size: 64, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2452, file: !59, line: 2062, baseType: !2464, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !952, !102}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2452, file: !59, line: 2063, baseType: !2468, size: 64, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!102, !952, !1632}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2452, file: !59, line: 2064, baseType: !2472, size: 64, offset: 320)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!102, !952}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2452, file: !59, line: 2065, baseType: !2459, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2452, file: !59, line: 2066, baseType: !1194, size: 64, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2452, file: !59, line: 2067, baseType: !2478, size: 64, offset: 512)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!102, !1164, !102}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2452, file: !59, line: 2068, baseType: !2482, size: 64, offset: 576)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!102, !1164, !58}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2452, file: !59, line: 2069, baseType: !2486, size: 64, offset: 640)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!102, !1164}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2452, file: !59, line: 2070, baseType: !2482, size: 64, offset: 704)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2452, file: !59, line: 2071, baseType: !2486, size: 64, offset: 768)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2452, file: !59, line: 2072, baseType: !2492, size: 64, offset: 832)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!102, !917, !2495}
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !59, line: 62, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2452, file: !59, line: 2073, baseType: !2498, size: 64, offset: 896)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!102, !1164, !2216, !375}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2452, file: !59, line: 2074, baseType: !1194, size: 64, offset: 960)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2452, file: !59, line: 2076, baseType: !2503, size: 64, offset: 1024)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!102, !1965, !917}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2452, file: !59, line: 2077, baseType: !2503, size: 64, offset: 1088)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2452, file: !59, line: 2078, baseType: !2503, size: 64, offset: 1152)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2452, file: !59, line: 2079, baseType: !2503, size: 64, offset: 1216)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2452, file: !59, line: 2081, baseType: !2510, size: 64, offset: 1280)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!1105, !1164, !102, !375, !1108, !835}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2452, file: !59, line: 2082, baseType: !2514, size: 64, offset: 1344)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!1105, !1164, !102, !365, !1108, !835}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2452, file: !59, line: 2083, baseType: !2518, size: 64, offset: 1408)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!2521, !952}
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !64, line: 296, size: 1664, elements: !2524)
!2524 = !{!2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2549, !2550, !2551}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2523, file: !64, line: 297, baseType: !436, size: 128)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2523, file: !64, line: 298, baseType: !244, size: 128, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2523, file: !64, line: 299, baseType: !244, size: 128, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2523, file: !64, line: 300, baseType: !244, size: 128, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2523, file: !64, line: 301, baseType: !827, size: 256, offset: 512)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2523, file: !64, line: 302, baseType: !795, size: 32, offset: 768)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2523, file: !64, line: 303, baseType: !231, size: 32, offset: 800)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2523, file: !64, line: 304, baseType: !1164, size: 64, offset: 832)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2523, file: !64, line: 305, baseType: !2534, size: 64, offset: 896)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !64, line: 68, size: 64, elements: !2535)
!2535 = !{!2536, !2548}
!2536 = !DIDerivedType(tag: DW_TAG_member, scope: !2534, file: !64, line: 69, baseType: !2537, size: 32)
!2537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2534, file: !64, line: 69, size: 32, elements: !2538)
!2538 = !{!2539, !2540, !2541}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2537, file: !64, line: 70, baseType: !184, size: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2537, file: !64, line: 71, baseType: !193, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2537, file: !64, line: 72, baseType: !2542, size: 32)
!2542 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2543, line: 24, baseType: !2544)
!2543 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2543, line: 22, size: 32, elements: !2545)
!2545 = !{!2546}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2544, file: !2543, line: 23, baseType: !2547, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2543, line: 20, baseType: !190)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2534, file: !64, line: 74, baseType: !63, size: 32, offset: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2523, file: !64, line: 306, baseType: !835, size: 64, offset: 960)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2523, file: !64, line: 307, baseType: !254, size: 64, offset: 1024)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2523, file: !64, line: 308, baseType: !2552, size: 576, offset: 1088)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !64, line: 205, size: 576, elements: !2553)
!2553 = !{!2554, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2552, file: !64, line: 206, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !64, line: 66, baseType: !182)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2552, file: !64, line: 207, baseType: !2555, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2552, file: !64, line: 208, baseType: !2555, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2552, file: !64, line: 209, baseType: !2555, size: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2552, file: !64, line: 210, baseType: !2555, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2552, file: !64, line: 211, baseType: !2555, size: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2552, file: !64, line: 212, baseType: !2555, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2552, file: !64, line: 213, baseType: !308, size: 64, offset: 448)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2552, file: !64, line: 214, baseType: !308, size: 64, offset: 512)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2452, file: !59, line: 2085, baseType: !2565, size: 64, offset: 1472)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!477, !1164, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2570, line: 15, size: 256, elements: !2571)
!2570 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2571 = !{!2572, !2573, !2574, !2575, !2576}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2569, file: !2570, line: 16, baseType: !1160, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2569, file: !2570, line: 19, baseType: !102, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2569, file: !2570, line: 26, baseType: !254, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2569, file: !2570, line: 33, baseType: !254, size: 64, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2569, file: !2570, line: 36, baseType: !2577, size: 64, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !30, line: 33, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2452, file: !59, line: 2087, baseType: !2565, size: 64, offset: 1536)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2452, file: !59, line: 2089, baseType: !1194, size: 64, offset: 1600)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1165, file: !59, line: 1198, baseType: !2582, size: 64, offset: 448)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2584)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !64, line: 324, size: 704, elements: !2585)
!2585 = !{!2586, !2590, !2594, !2598, !2599, !2600, !2601, !2602, !2607, !2612, !2616}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2584, file: !64, line: 325, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!102, !2522}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2584, file: !64, line: 326, baseType: !2591, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!2522, !1164, !102}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2584, file: !64, line: 327, baseType: !2595, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{null, !2522}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2584, file: !64, line: 328, baseType: !2587, size: 64, offset: 192)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2584, file: !64, line: 329, baseType: !2587, size: 64, offset: 256)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2584, file: !64, line: 330, baseType: !2587, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2584, file: !64, line: 331, baseType: !2478, size: 64, offset: 384)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2584, file: !64, line: 334, baseType: !2603, size: 64, offset: 448)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!2606, !952}
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2584, file: !64, line: 335, baseType: !2608, size: 64, offset: 512)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!102, !952, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2584, file: !64, line: 337, baseType: !2613, size: 64, offset: 576)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!102, !952, !2606}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2584, file: !64, line: 339, baseType: !2617, size: 64, offset: 640)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!102, !1164, !2620}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1165, file: !59, line: 1199, baseType: !2622, size: 64, offset: 512)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2624)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !64, line: 430, size: 704, elements: !2625)
!2625 = !{!2626, !2630, !2631, !2635, !2636, !2637, !2652, !2675, !2679, !2680, !2703}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2624, file: !64, line: 431, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!102, !1164, !102, !102, !1074}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2624, file: !64, line: 432, baseType: !2478, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2624, file: !64, line: 433, baseType: !2632, size: 64, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!102, !1164, !7}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2624, file: !64, line: 434, baseType: !2632, size: 64, offset: 192)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2624, file: !64, line: 435, baseType: !2478, size: 64, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2624, file: !64, line: 436, baseType: !2638, size: 64, offset: 320)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!102, !1164, !102, !2641}
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !64, line: 417, size: 256, elements: !2643)
!2643 = !{!2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2642, file: !64, line: 418, baseType: !102, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2642, file: !64, line: 419, baseType: !7, size: 32, offset: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2642, file: !64, line: 420, baseType: !7, size: 32, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2642, file: !64, line: 422, baseType: !7, size: 32, offset: 96)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2642, file: !64, line: 423, baseType: !7, size: 32, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2642, file: !64, line: 424, baseType: !7, size: 32, offset: 160)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2642, file: !64, line: 425, baseType: !7, size: 32, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2642, file: !64, line: 426, baseType: !7, size: 32, offset: 224)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2624, file: !64, line: 437, baseType: !2653, size: 64, offset: 384)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!102, !1164, !2534, !2656}
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !64, line: 345, size: 960, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2657, file: !64, line: 346, baseType: !102, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2657, file: !64, line: 347, baseType: !212, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2657, file: !64, line: 348, baseType: !212, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2657, file: !64, line: 349, baseType: !212, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2657, file: !64, line: 350, baseType: !212, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2657, file: !64, line: 351, baseType: !212, size: 64, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2657, file: !64, line: 352, baseType: !212, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2657, file: !64, line: 353, baseType: !178, size: 64, offset: 448)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2657, file: !64, line: 355, baseType: !178, size: 64, offset: 512)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2657, file: !64, line: 356, baseType: !102, size: 32, offset: 576)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2657, file: !64, line: 357, baseType: !102, size: 32, offset: 608)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2657, file: !64, line: 358, baseType: !212, size: 64, offset: 640)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2657, file: !64, line: 359, baseType: !212, size: 64, offset: 704)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2657, file: !64, line: 360, baseType: !212, size: 64, offset: 768)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2657, file: !64, line: 361, baseType: !178, size: 64, offset: 832)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2657, file: !64, line: 362, baseType: !102, size: 32, offset: 896)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2624, file: !64, line: 438, baseType: !2676, size: 64, offset: 448)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!102, !1164, !2620, !2656}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2624, file: !64, line: 440, baseType: !2653, size: 64, offset: 512)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2624, file: !64, line: 441, baseType: !2681, size: 64, offset: 576)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!102, !1164, !2684}
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !64, line: 411, size: 1408, elements: !2686)
!2686 = !{!2687, !2688}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2685, file: !64, line: 412, baseType: !7, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2685, file: !64, line: 413, baseType: !2689, size: 1344, offset: 64)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2690, size: 1344, elements: !861)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !64, line: 397, size: 448, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2702}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2690, file: !64, line: 398, baseType: !7, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2690, file: !64, line: 399, baseType: !7, size: 32, offset: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2690, file: !64, line: 401, baseType: !7, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2690, file: !64, line: 402, baseType: !7, size: 32, offset: 96)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2690, file: !64, line: 403, baseType: !7, size: 32, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2690, file: !64, line: 404, baseType: !7, size: 32, offset: 160)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2690, file: !64, line: 405, baseType: !7, size: 32, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2690, file: !64, line: 406, baseType: !214, size: 64, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2690, file: !64, line: 407, baseType: !2701, size: 64, offset: 320)
!2701 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !174, line: 132, baseType: !212)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2690, file: !64, line: 408, baseType: !2701, size: 64, offset: 384)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2624, file: !64, line: 442, baseType: !2632, size: 64, offset: 640)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1165, file: !59, line: 1200, baseType: !2705, size: 64, offset: 576)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2707)
!2707 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !59, line: 54, flags: DIFlagFwdDecl)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1165, file: !59, line: 1201, baseType: !254, size: 64, offset: 640)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1165, file: !59, line: 1202, baseType: !254, size: 64, offset: 704)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1165, file: !59, line: 1203, baseType: !254, size: 64, offset: 768)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1165, file: !59, line: 1204, baseType: !917, size: 64, offset: 832)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1165, file: !59, line: 1205, baseType: !259, size: 320, offset: 896)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1165, file: !59, line: 1206, baseType: !102, size: 32, offset: 1216)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1165, file: !59, line: 1207, baseType: !231, size: 32, offset: 1248)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1165, file: !59, line: 1209, baseType: !303, size: 64, offset: 1280)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1165, file: !59, line: 1211, baseType: !2717, size: 64, offset: 1344)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2720)
!2720 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !59, line: 1211, flags: DIFlagFwdDecl)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1165, file: !59, line: 1223, baseType: !2722, size: 64, offset: 1408)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !929, line: 34, size: 64, elements: !2723)
!2723 = !{!2724}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2722, file: !929, line: 35, baseType: !932, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1165, file: !59, line: 1224, baseType: !244, size: 128, offset: 1472)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1165, file: !59, line: 1225, baseType: !2727, size: 64, offset: 1600)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !59, line: 1225, flags: DIFlagFwdDecl)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1165, file: !59, line: 1226, baseType: !2730, size: 64, offset: 1664)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !59, line: 1226, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1165, file: !59, line: 1227, baseType: !2733, size: 64, offset: 1728)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !59, line: 50, flags: DIFlagFwdDecl)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1165, file: !59, line: 1228, baseType: !2736, size: 64, offset: 1792)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !59, line: 1228, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1165, file: !59, line: 1229, baseType: !436, size: 128, offset: 1856)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1165, file: !59, line: 1230, baseType: !7, size: 32, offset: 1984)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1165, file: !59, line: 1231, baseType: !2741, size: 2496, offset: 2048)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !64, line: 521, size: 2496, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2747, !2779}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2741, file: !64, line: 522, baseType: !7, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2741, file: !64, line: 523, baseType: !259, size: 320, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2741, file: !64, line: 524, baseType: !2746, size: 192, offset: 384)
!2746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 192, elements: !861)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2741, file: !64, line: 525, baseType: !2748, size: 1728, offset: 576)
!2748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2749, size: 1728, elements: !861)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !64, line: 222, size: 576, elements: !2750)
!2750 = !{!2751, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2749, file: !64, line: 223, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !64, line: 445, size: 256, elements: !2754)
!2754 = !{!2755, !2756, !2769, !2770}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2753, file: !64, line: 446, baseType: !102, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2753, file: !64, line: 447, baseType: !2757, size: 64, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2759)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !64, line: 312, size: 512, elements: !2760)
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2759, file: !64, line: 313, baseType: !2478, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2759, file: !64, line: 314, baseType: !2478, size: 64, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2759, file: !64, line: 315, baseType: !2478, size: 64, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2759, file: !64, line: 316, baseType: !2478, size: 64, offset: 192)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2759, file: !64, line: 317, baseType: !2587, size: 64, offset: 256)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2759, file: !64, line: 318, baseType: !2587, size: 64, offset: 320)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2759, file: !64, line: 319, baseType: !2587, size: 64, offset: 384)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2759, file: !64, line: 320, baseType: !2617, size: 64, offset: 448)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2753, file: !64, line: 448, baseType: !1198, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2753, file: !64, line: 449, baseType: !2752, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2749, file: !64, line: 224, baseType: !102, size: 32, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2749, file: !64, line: 226, baseType: !244, size: 128, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2749, file: !64, line: 227, baseType: !254, size: 64, offset: 256)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2749, file: !64, line: 228, baseType: !7, size: 32, offset: 320)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2749, file: !64, line: 229, baseType: !7, size: 32, offset: 352)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2749, file: !64, line: 230, baseType: !2555, size: 64, offset: 384)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2749, file: !64, line: 231, baseType: !2555, size: 64, offset: 448)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2749, file: !64, line: 232, baseType: !303, size: 64, offset: 512)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2741, file: !64, line: 526, baseType: !2780, size: 192, offset: 2304)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2757, size: 192, elements: !861)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1165, file: !59, line: 1233, baseType: !2782, size: 2368, offset: 4544)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !59, line: 1184, size: 2368, elements: !2783)
!2783 = !{!2784, !2785, !2786}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2782, file: !59, line: 1185, baseType: !296, size: 16)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2782, file: !59, line: 1186, baseType: !296, size: 16, offset: 16)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2782, file: !59, line: 1187, baseType: !2787, size: 2304, offset: 64)
!2787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2788, size: 2304, elements: !861)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2789, line: 12, size: 768, elements: !2790)
!2789 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2790 = !{!2791, !2799, !2800, !2805, !2806}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2788, file: !2789, line: 13, baseType: !2792, size: 384)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2793, line: 17, size: 384, elements: !2794)
!2793 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2794 = !{!2795, !2796, !2797, !2798}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2792, file: !2793, line: 18, baseType: !102, size: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2792, file: !2793, line: 19, baseType: !102, size: 32, offset: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2792, file: !2793, line: 20, baseType: !878, size: 192, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2792, file: !2793, line: 22, baseType: !352, size: 128, align: 64, offset: 256)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2788, file: !2789, line: 14, baseType: !2168, size: 64, offset: 384)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2788, file: !2789, line: 15, baseType: !2801, size: 64, offset: 448)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2802, line: 16, size: 64, elements: !2803)
!2802 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2803 = !{!2804}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2801, file: !2802, line: 17, baseType: !479, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2788, file: !2789, line: 16, baseType: !878, size: 192, offset: 512)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2788, file: !2789, line: 17, baseType: !231, size: 32, offset: 704)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1165, file: !59, line: 1240, baseType: !303, size: 64, offset: 6912)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1165, file: !59, line: 1243, baseType: !317, size: 32, offset: 6976)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1165, file: !59, line: 1245, baseType: !308, size: 64, offset: 7040)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1165, file: !59, line: 1246, baseType: !308, size: 64, offset: 7104)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1165, file: !59, line: 1248, baseType: !318, size: 32, offset: 7168)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1165, file: !59, line: 1249, baseType: !2813, size: 64, offset: 7232)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !59, line: 634, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1165, file: !59, line: 1252, baseType: !2816, size: 256, offset: 7296)
!2816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 256, elements: !2817)
!2817 = !{!2818}
!2818 = !DISubrange(count: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1165, file: !59, line: 1253, baseType: !2820, size: 128, offset: 7552)
!2820 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2821, line: 21, baseType: !2822)
!2821 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2821, line: 19, size: 128, elements: !2823)
!2823 = !{!2824}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2822, file: !2821, line: 20, baseType: !2825, size: 128)
!2825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 128, elements: !2826)
!2826 = !{!2827}
!2827 = !DISubrange(count: 16)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1165, file: !59, line: 1255, baseType: !7, size: 32, offset: 7680)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1165, file: !59, line: 1261, baseType: !827, size: 256, offset: 7744)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1165, file: !59, line: 1267, baseType: !365, size: 64, offset: 8000)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1165, file: !59, line: 1269, baseType: !2832, size: 64, offset: 8064)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2834)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !919, line: 128, size: 1024, align: 512, elements: !2835)
!2835 = !{!2836, !2840, !2841, !2848, !2854, !2858, !2862, !2866, !2867, !2871, !2875, !2880, !2884}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2834, file: !919, line: 129, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!102, !917, !7}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2834, file: !919, line: 130, baseType: !2837, size: 64, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2834, file: !919, line: 131, baseType: !2842, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!102, !2845, !2847}
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2834, file: !919, line: 132, baseType: !2849, size: 64, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!102, !2845, !7, !365, !2852}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !937)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2834, file: !919, line: 134, baseType: !2855, size: 64, offset: 256)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!102, !2845}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2834, file: !919, line: 135, baseType: !2859, size: 64, offset: 320)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!102, !917}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2834, file: !919, line: 136, baseType: !2863, size: 64, offset: 384)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{null, !917}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2834, file: !919, line: 137, baseType: !2863, size: 64, offset: 448)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2834, file: !919, line: 138, baseType: !2868, size: 64, offset: 512)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{null, !917, !952}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2834, file: !919, line: 139, baseType: !2872, size: 64, offset: 576)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!375, !917, !375, !102}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2834, file: !919, line: 140, baseType: !2876, size: 64, offset: 640)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!912, !2879}
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2834, file: !919, line: 141, baseType: !2881, size: 64, offset: 704)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!102, !1074, !362}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2834, file: !919, line: 142, baseType: !2885, size: 64, offset: 768)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!917, !917, !2888}
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1165, file: !59, line: 1271, baseType: !2891, size: 448, offset: 8128)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2570, line: 63, size: 448, elements: !2892)
!2892 = !{!2893, !2898, !2899, !2900, !2901, !2902, !2903}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2891, file: !2570, line: 64, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!254, !2897, !2568}
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2891, file: !2570, line: 66, baseType: !2894, size: 64, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2891, file: !2570, line: 69, baseType: !477, size: 64, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2891, file: !2570, line: 70, baseType: !102, size: 32, offset: 192)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2891, file: !2570, line: 71, baseType: !7, size: 32, offset: 224)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2891, file: !2570, line: 74, baseType: !244, size: 128, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2891, file: !2570, line: 85, baseType: !2904, size: 64, offset: 384)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1165, file: !59, line: 1274, baseType: !171, size: 64, offset: 8576)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1165, file: !59, line: 1280, baseType: !171, size: 64, offset: 8640)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1165, file: !59, line: 1283, baseType: !102, size: 32, offset: 8704)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1165, file: !59, line: 1286, baseType: !1862, size: 32, offset: 8736)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1165, file: !59, line: 1289, baseType: !2391, size: 64, offset: 8768)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1165, file: !59, line: 1290, baseType: !873, size: 64, offset: 8832)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1165, file: !59, line: 1297, baseType: !456, size: 64, offset: 8896)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1165, file: !59, line: 1304, baseType: !2913, size: 64, offset: 8960)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2914, line: 49, size: 64, elements: !2915)
!2914 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2915 = !{!2916}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2913, file: !2914, line: 50, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2914, line: 41, size: 512, align: 512, elements: !2919)
!2919 = !{!2920, !2921, !2926}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2918, file: !2914, line: 43, baseType: !795, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2918, file: !2914, line: 45, baseType: !2922, size: 192, offset: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2914, line: 29, size: 192, elements: !2923)
!2923 = !{!2924, !2925}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2922, file: !2914, line: 30, baseType: !244, size: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2922, file: !2914, line: 32, baseType: !477, size: 64, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2918, file: !2914, line: 46, baseType: !477, size: 64, offset: 256)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1165, file: !59, line: 1305, baseType: !2913, size: 64, offset: 9024)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1165, file: !59, line: 1306, baseType: !352, size: 128, align: 64, offset: 9088)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1165, file: !59, line: 1307, baseType: !2330, size: 256, offset: 9216)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1165, file: !59, line: 1309, baseType: !827, size: 256, offset: 9472)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1165, file: !59, line: 1314, baseType: !102, size: 32, offset: 9728)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1165, file: !59, line: 1317, baseType: !795, size: 32, align: 512, offset: 10240)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1165, file: !59, line: 1318, baseType: !244, size: 128, offset: 10304)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1165, file: !59, line: 1320, baseType: !795, size: 32, offset: 10432)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1165, file: !59, line: 1321, baseType: !244, size: 128, offset: 10496)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !953, file: !59, line: 656, baseType: !1315, size: 64, offset: 512)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !953, file: !59, line: 659, baseType: !303, size: 64, offset: 576)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !953, file: !59, line: 663, baseType: !254, size: 64, offset: 640)
!2939 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !59, line: 671, baseType: !2940, size: 32, offset: 704)
!2940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !953, file: !59, line: 671, size: 32, elements: !2941)
!2941 = !{!2942, !2944}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2940, file: !59, line: 672, baseType: !2943, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2940, file: !59, line: 673, baseType: !7, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !953, file: !59, line: 675, baseType: !1027, size: 32, offset: 736)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !953, file: !59, line: 676, baseType: !835, size: 64, offset: 768)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !953, file: !59, line: 677, baseType: !1063, size: 128, offset: 832)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !953, file: !59, line: 678, baseType: !1063, size: 128, offset: 960)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !953, file: !59, line: 679, baseType: !1063, size: 128, offset: 1088)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !953, file: !59, line: 680, baseType: !795, size: 32, offset: 1216)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !953, file: !59, line: 681, baseType: !296, size: 16, offset: 1248)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !953, file: !59, line: 682, baseType: !287, size: 8, offset: 1264)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !953, file: !59, line: 683, baseType: !287, size: 8, offset: 1272)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !953, file: !59, line: 684, baseType: !2701, size: 64, offset: 1280)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !953, file: !59, line: 691, baseType: !254, size: 64, offset: 1344)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !953, file: !59, line: 692, baseType: !259, size: 320, offset: 1408)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !953, file: !59, line: 694, baseType: !254, size: 64, offset: 1728)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !953, file: !59, line: 695, baseType: !254, size: 64, offset: 1792)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !953, file: !59, line: 697, baseType: !436, size: 128, offset: 1856)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !953, file: !59, line: 698, baseType: !244, size: 128, offset: 1984)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !953, file: !59, line: 707, baseType: !244, size: 128, offset: 2112)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !953, file: !59, line: 708, baseType: !244, size: 128, offset: 2240)
!2963 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !59, line: 709, baseType: !2964, size: 128, offset: 2368)
!2964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !953, file: !59, line: 709, size: 128, elements: !2965)
!2965 = !{!2966, !2967}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2964, file: !59, line: 710, baseType: !873, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2964, file: !59, line: 711, baseType: !352, size: 128, align: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !953, file: !59, line: 713, baseType: !173, size: 64, offset: 2496)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !953, file: !59, line: 714, baseType: !173, size: 64, offset: 2560)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !953, file: !59, line: 715, baseType: !231, size: 32, offset: 2624)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !953, file: !59, line: 716, baseType: !231, size: 32, offset: 2656)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !953, file: !59, line: 717, baseType: !231, size: 32, offset: 2688)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !953, file: !59, line: 719, baseType: !231, size: 32, offset: 2720)
!2974 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !59, line: 721, baseType: !2975, size: 64, offset: 2752)
!2975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !953, file: !59, line: 721, size: 64, elements: !2976)
!2976 = !{!2977, !3103}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2975, file: !59, line: 722, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2980)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !59, line: 1914, size: 2112, elements: !2981)
!2981 = !{!2982, !2983, !2987, !2991, !2995, !2996, !2997, !3003, !3016, !3020, !3024, !3025, !3029, !3030, !3034, !3039, !3040, !3044, !3048, !3054, !3055, !3059, !3060, !3066, !3070, !3071, !3076, !3080, !3084, !3088, !3092, !3093, !3099}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2980, file: !59, line: 1915, baseType: !1198, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2980, file: !59, line: 1916, baseType: !2984, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!835, !813, !835, !102}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2980, file: !59, line: 1917, baseType: !2988, size: 64, offset: 128)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!1105, !813, !375, !1108, !1986}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2980, file: !59, line: 1918, baseType: !2992, size: 64, offset: 192)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!1105, !813, !365, !1108, !1986}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2980, file: !59, line: 1919, baseType: !1746, size: 64, offset: 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2980, file: !59, line: 1920, baseType: !1746, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2980, file: !59, line: 1921, baseType: !2998, size: 64, offset: 384)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!102, !1749, !3001, !7}
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !59, line: 53, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2980, file: !59, line: 1923, baseType: !3004, size: 64, offset: 448)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!102, !813, !3007}
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !59, line: 1858, size: 128, elements: !3009)
!3009 = !{!3010, !3015}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3008, file: !59, line: 1859, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !59, line: 1855, baseType: !3012)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!362, !3007, !365, !102, !835, !212, !7}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3008, file: !59, line: 1860, baseType: !835, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2980, file: !59, line: 1924, baseType: !3017, size: 64, offset: 512)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!2033, !813, !2035}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2980, file: !59, line: 1925, baseType: !3021, size: 64, offset: 576)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!477, !813, !7, !254}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2980, file: !59, line: 1926, baseType: !3021, size: 64, offset: 640)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2980, file: !59, line: 1927, baseType: !3026, size: 64, offset: 704)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!102, !813, !1455}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2980, file: !59, line: 1928, baseType: !254, size: 64, offset: 768)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2980, file: !59, line: 1929, baseType: !3031, size: 64, offset: 832)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!102, !952, !813}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2980, file: !59, line: 1930, baseType: !3035, size: 64, offset: 896)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!102, !813, !3038}
!3038 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !59, line: 1061, baseType: !303)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2980, file: !59, line: 1931, baseType: !3031, size: 64, offset: 960)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2980, file: !59, line: 1932, baseType: !3041, size: 64, offset: 1024)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!102, !813, !835, !835, !102}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2980, file: !59, line: 1933, baseType: !3045, size: 64, offset: 1088)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!102, !102, !813, !102}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2980, file: !59, line: 1934, baseType: !3049, size: 64, offset: 1152)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!102, !813, !102, !3052}
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !59, line: 1063, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2980, file: !59, line: 1935, baseType: !810, size: 64, offset: 1216)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2980, file: !59, line: 1936, baseType: !3056, size: 64, offset: 1280)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!102, !102}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2980, file: !59, line: 1937, baseType: !3049, size: 64, offset: 1344)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2980, file: !59, line: 1938, baseType: !3061, size: 64, offset: 1408)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!1105, !3064, !813, !1986, !1108, !7}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !481, line: 59, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2980, file: !59, line: 1939, baseType: !3067, size: 64, offset: 1472)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!1105, !813, !1986, !3064, !1108, !7}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2980, file: !59, line: 1940, baseType: !1852, size: 64, offset: 1536)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2980, file: !59, line: 1941, baseType: !3072, size: 64, offset: 1600)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!102, !813, !102, !3075, !1723}
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2980, file: !59, line: 1942, baseType: !3077, size: 64, offset: 1664)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!477, !813, !102, !835, !835}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2980, file: !59, line: 1944, baseType: !3081, size: 64, offset: 1728)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{null, !1965, !813}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2980, file: !59, line: 1948, baseType: !3085, size: 64, offset: 1792)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!1105, !813, !835, !813, !835, !1108, !7}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2980, file: !59, line: 1950, baseType: !3089, size: 64, offset: 1856)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!835, !813, !835, !813, !835, !835, !7}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2980, file: !59, line: 1953, baseType: !3041, size: 64, offset: 1920)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2980, file: !59, line: 1954, baseType: !3094, size: 64, offset: 1984)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!102, !3097, !7}
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !59, line: 1911, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2980, file: !59, line: 1955, baseType: !3100, size: 64, offset: 2048)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!102, !3097, !3001, !7}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2975, file: !59, line: 723, baseType: !2459, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !953, file: !59, line: 725, baseType: !3105, size: 64, offset: 2816)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !59, line: 725, flags: DIFlagFwdDecl)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !953, file: !59, line: 726, baseType: !1316, size: 1536, align: 64, offset: 2880)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !953, file: !59, line: 727, baseType: !244, size: 128, offset: 4416)
!3109 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !59, line: 728, baseType: !3110, size: 64, offset: 4544)
!3110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !953, file: !59, line: 728, size: 64, elements: !3111)
!3111 = !{!3112, !3113, !3124, !3125}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3110, file: !59, line: 729, baseType: !3064, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3110, file: !59, line: 730, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3116, line: 14, size: 832, elements: !3117)
!3116 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3117 = !{!3118, !3119, !3120, !3121, !3122, !3123}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3115, file: !3116, line: 15, baseType: !1211, size: 512)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3115, file: !3116, line: 16, baseType: !1198, size: 64, offset: 512)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3115, file: !3116, line: 17, baseType: !2978, size: 64, offset: 576)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3115, file: !3116, line: 18, baseType: !244, size: 128, offset: 640)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3115, file: !3116, line: 19, baseType: !1027, size: 32, offset: 768)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3115, file: !3116, line: 20, baseType: !7, size: 32, offset: 800)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3110, file: !59, line: 731, baseType: !375, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3110, file: !59, line: 732, baseType: !7, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !953, file: !59, line: 735, baseType: !318, size: 32, offset: 4608)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !953, file: !59, line: 738, baseType: !318, size: 32, offset: 4640)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !953, file: !59, line: 739, baseType: !2813, size: 64, offset: 4672)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !953, file: !59, line: 750, baseType: !303, size: 64, offset: 4736)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !918, file: !919, line: 91, baseType: !3131, size: 256, offset: 448)
!3131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 256, elements: !2817)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !918, file: !919, line: 94, baseType: !3133, size: 64, offset: 704)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3134, line: 25, size: 64, elements: !3135)
!3134 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3135 = !{!3136}
!3136 = !DIDerivedType(tag: DW_TAG_member, scope: !3133, file: !3134, line: 26, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3133, file: !3134, line: 26, size: 64, elements: !3138)
!3138 = !{!3139, !3140}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3137, file: !3134, line: 28, baseType: !213, size: 64, align: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !3137, file: !3134, line: 30, baseType: !3141, size: 64)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3137, file: !3134, line: 30, size: 64, elements: !3142)
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3141, file: !3134, line: 31, baseType: !795, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3141, file: !3134, line: 32, baseType: !102, size: 32, offset: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !918, file: !919, line: 95, baseType: !2832, size: 64, offset: 768)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !918, file: !919, line: 96, baseType: !1164, size: 64, offset: 832)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !918, file: !919, line: 97, baseType: !254, size: 64, offset: 896)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !918, file: !919, line: 98, baseType: !303, size: 64, offset: 960)
!3149 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !919, line: 100, baseType: !3150, size: 128, offset: 1024)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !919, line: 100, size: 128, elements: !3151)
!3151 = !{!3152, !3153}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3150, file: !919, line: 101, baseType: !244, size: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3150, file: !919, line: 102, baseType: !2044, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !918, file: !919, line: 104, baseType: !244, size: 128, offset: 1152)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !918, file: !919, line: 105, baseType: !244, size: 128, offset: 1280)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !918, file: !919, line: 113, baseType: !3157, size: 128, offset: 1408)
!3157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !919, line: 109, size: 128, elements: !3158)
!3158 = !{!3159, !3160, !3161}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3157, file: !919, line: 110, baseType: !436, size: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3157, file: !919, line: 111, baseType: !928, size: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3157, file: !919, line: 112, baseType: !352, size: 128, align: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !913, file: !914, line: 72, baseType: !1164, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !913, file: !914, line: 73, baseType: !102, size: 32, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !913, file: !914, line: 74, baseType: !992, size: 64, offset: 192)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !908, file: !909, line: 10, baseType: !917, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !814, file: !59, line: 1015, baseType: !952, size: 64, offset: 1344)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !814, file: !59, line: 1016, baseType: !2978, size: 64, offset: 1408)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !814, file: !59, line: 1018, baseType: !212, size: 64, offset: 1472)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !814, file: !59, line: 1020, baseType: !303, size: 64, offset: 1536)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !814, file: !59, line: 1023, baseType: !303, size: 64, offset: 1600)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !814, file: !59, line: 1027, baseType: !3172, size: 64, offset: 1664)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !814, file: !59, line: 1029, baseType: !1315, size: 64, offset: 1728)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !814, file: !59, line: 1030, baseType: !1862, size: 32, offset: 1792)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !814, file: !59, line: 1031, baseType: !1862, size: 32, offset: 1824)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !781, file: !30, line: 756, baseType: !254, size: 64, offset: 704)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !781, file: !30, line: 757, baseType: !254, size: 64, offset: 768)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !781, file: !30, line: 760, baseType: !254, size: 64, offset: 832)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !781, file: !30, line: 761, baseType: !254, size: 64, offset: 896)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !781, file: !30, line: 763, baseType: !254, size: 64, offset: 960)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !781, file: !30, line: 764, baseType: !3182, size: 64, offset: 1024)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1470, line: 299, baseType: !3184)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1470, line: 299, size: 64, elements: !3185)
!3185 = !{!3186}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3184, file: !1470, line: 299, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1475, line: 18, baseType: !254)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !781, file: !30, line: 773, baseType: !231, size: 32, offset: 1088)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !781, file: !30, line: 785, baseType: !231, size: 32, offset: 1120)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !781, file: !30, line: 795, baseType: !3191, size: 64, offset: 1152)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !30, line: 726, size: 128, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3192, file: !30, line: 727, baseType: !212, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3192, file: !30, line: 728, baseType: !102, size: 32, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !781, file: !30, line: 801, baseType: !254, size: 64, offset: 1216)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !781, file: !30, line: 804, baseType: !171, size: 64, offset: 1280)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !781, file: !30, line: 806, baseType: !102, size: 32, offset: 1344)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !781, file: !30, line: 808, baseType: !795, size: 32, offset: 1376)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !781, file: !30, line: 823, baseType: !259, size: 320, offset: 1408)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !781, file: !30, line: 825, baseType: !244, size: 128, offset: 1728)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !781, file: !30, line: 845, baseType: !102, size: 32, offset: 1856)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !781, file: !30, line: 849, baseType: !254, size: 64, offset: 1920)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !781, file: !30, line: 850, baseType: !254, size: 64, offset: 1984)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !781, file: !30, line: 852, baseType: !254, size: 64, offset: 2048)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !781, file: !30, line: 853, baseType: !254, size: 64, offset: 2112)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !781, file: !30, line: 854, baseType: !173, size: 64, offset: 2176)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !781, file: !30, line: 855, baseType: !254, size: 64, offset: 2240)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !781, file: !30, line: 856, baseType: !254, size: 64, offset: 2304)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !781, file: !30, line: 857, baseType: !254, size: 64, offset: 2368)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !781, file: !30, line: 858, baseType: !254, size: 64, offset: 2432)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !781, file: !30, line: 865, baseType: !651, size: 32, offset: 2496)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !781, file: !30, line: 867, baseType: !795, size: 32, offset: 2528)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !781, file: !30, line: 869, baseType: !254, size: 64, offset: 2560)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !781, file: !30, line: 869, baseType: !254, size: 64, offset: 2624)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !781, file: !30, line: 869, baseType: !254, size: 64, offset: 2688)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !781, file: !30, line: 869, baseType: !254, size: 64, offset: 2752)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !781, file: !30, line: 870, baseType: !254, size: 64, offset: 2816)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !781, file: !30, line: 870, baseType: !254, size: 64, offset: 2880)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !781, file: !30, line: 870, baseType: !254, size: 64, offset: 2944)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !781, file: !30, line: 871, baseType: !254, size: 64, offset: 3008)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !781, file: !30, line: 871, baseType: !254, size: 64, offset: 3072)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !781, file: !30, line: 871, baseType: !254, size: 64, offset: 3136)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !781, file: !30, line: 871, baseType: !254, size: 64, offset: 3200)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !781, file: !30, line: 873, baseType: !3226, size: 3328, offset: 3264)
!3226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 3328, elements: !3227)
!3227 = !{!3228}
!3228 = !DISubrange(count: 52)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !781, file: !30, line: 875, baseType: !3230, size: 1280, offset: 6592)
!3230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 1280, elements: !385)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !781, file: !30, line: 877, baseType: !3232, size: 64, offset: 7872)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !30, line: 877, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !781, file: !30, line: 880, baseType: !3235, size: 1088, offset: 7936)
!3235 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3236, line: 72, baseType: !3237)
!3236 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3236, line: 23, size: 1088, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3246, !3247, !3248, !3249, !3274, !3275, !3276}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3237, file: !3236, line: 28, baseType: !212, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3237, file: !3236, line: 38, baseType: !173, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3237, file: !3236, line: 40, baseType: !254, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3237, file: !3236, line: 43, baseType: !259, size: 320, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3237, file: !3236, line: 44, baseType: !3244, size: 64, offset: 512)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3236, line: 44, flags: DIFlagFwdDecl)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3237, file: !3236, line: 48, baseType: !254, size: 64, offset: 576)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3237, file: !3236, line: 59, baseType: !827, size: 256, offset: 640)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3237, file: !3236, line: 60, baseType: !303, size: 64, offset: 896)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3237, file: !3236, line: 61, baseType: !3250, size: 64, offset: 960)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3252)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3253, line: 13, size: 1216, elements: !3254)
!3253 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3252, file: !3253, line: 14, baseType: !303, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3252, file: !3253, line: 15, baseType: !254, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3252, file: !3253, line: 17, baseType: !254, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3252, file: !3253, line: 17, baseType: !254, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3252, file: !3253, line: 18, baseType: !254, size: 64, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3252, file: !3253, line: 18, baseType: !254, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3252, file: !3253, line: 19, baseType: !1901, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3252, file: !3253, line: 21, baseType: !477, size: 64, offset: 448)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3252, file: !3253, line: 23, baseType: !477, size: 64, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3252, file: !3253, line: 24, baseType: !477, size: 64, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3252, file: !3253, line: 25, baseType: !477, size: 64, offset: 640)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3252, file: !3253, line: 26, baseType: !477, size: 64, offset: 704)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3252, file: !3253, line: 27, baseType: !477, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3252, file: !3253, line: 28, baseType: !477, size: 64, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3252, file: !3253, line: 29, baseType: !477, size: 64, offset: 896)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3252, file: !3253, line: 30, baseType: !477, size: 64, offset: 960)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3252, file: !3253, line: 31, baseType: !477, size: 64, offset: 1024)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3252, file: !3253, line: 32, baseType: !477, size: 64, offset: 1088)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3252, file: !3253, line: 33, baseType: !477, size: 64, offset: 1152)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3237, file: !3236, line: 63, baseType: !231, size: 32, offset: 1024)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3237, file: !3236, line: 69, baseType: !294, size: 16, offset: 1056)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3237, file: !3236, line: 70, baseType: !2223, size: 16, offset: 1072)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !30, line: 882, baseType: !254, size: 64, offset: 9024)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !781, file: !30, line: 885, baseType: !795, size: 32, offset: 9088)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !781, file: !30, line: 886, baseType: !3280, size: 64, offset: 9152)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !30, line: 732, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !781, file: !30, line: 901, baseType: !456, size: 64, offset: 9216)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !781, file: !30, line: 904, baseType: !813, size: 64, offset: 9280)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !781, file: !30, line: 906, baseType: !3285, size: 64, offset: 9344)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !30, line: 906, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !781, file: !30, line: 930, baseType: !231, size: 32, offset: 9408)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !781, file: !30, line: 933, baseType: !231, size: 32, offset: 9440)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !781, file: !30, line: 935, baseType: !3290, size: 64, offset: 9472)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !135, line: 103, size: 64, elements: !3291)
!3291 = !{!3292}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3290, file: !135, line: 104, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !135, line: 101, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !781, file: !30, line: 940, baseType: !171, size: 64, offset: 9536)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !781, file: !30, line: 942, baseType: !2330, size: 256, offset: 9600)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !778, file: !30, line: 986, baseType: !3298, offset: 10240)
!3298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !470)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !480, file: !481, line: 882, baseType: !777, size: 64, offset: 9792)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !480, file: !481, line: 884, baseType: !102, size: 32, offset: 9856)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !480, file: !481, line: 885, baseType: !102, size: 32, offset: 9888)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !480, file: !481, line: 886, baseType: !102, size: 32, offset: 9920)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !480, file: !481, line: 888, baseType: !102, size: 32, offset: 9952)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !480, file: !481, line: 890, baseType: !254, size: 64, offset: 9984)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !480, file: !481, line: 893, baseType: !7, size: 32, offset: 10048)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !480, file: !481, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !480, file: !481, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !480, file: !481, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !480, file: !481, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !480, file: !481, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !480, file: !481, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !480, file: !481, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !480, file: !481, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !480, file: !481, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !480, file: !481, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !480, file: !481, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !480, file: !481, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !480, file: !481, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !480, file: !481, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !480, file: !481, line: 969, baseType: !254, size: 64, offset: 10176)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !480, file: !481, line: 971, baseType: !3322, size: 448, offset: 10240)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !75, line: 25, size: 448, elements: !3323)
!3323 = !{!3324, !3325, !3330}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3322, file: !75, line: 26, baseType: !254, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3322, file: !75, line: 27, baseType: !3326, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!477, !3329}
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, scope: !3322, file: !75, line: 28, baseType: !3331, size: 320, offset: 128)
!3331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3322, file: !75, line: 28, size: 320, elements: !3332)
!3332 = !{!3333, !3343, !3368}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3331, file: !75, line: 37, baseType: !3334, size: 320)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3331, file: !75, line: 30, size: 320, elements: !3335)
!3335 = !{!3336, !3338, !3339, !3340, !3341, !3342}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3334, file: !75, line: 31, baseType: !3337, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3334, file: !75, line: 32, baseType: !317, size: 32, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3334, file: !75, line: 33, baseType: !317, size: 32, offset: 96)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3334, file: !75, line: 34, baseType: !317, size: 32, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3334, file: !75, line: 35, baseType: !212, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3334, file: !75, line: 36, baseType: !3337, size: 64, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3331, file: !75, line: 47, baseType: !3344, size: 192)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3331, file: !75, line: 39, size: 192, elements: !3345)
!3345 = !{!3346, !3347, !3348, !3367}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3344, file: !75, line: 40, baseType: !643, size: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3344, file: !75, line: 41, baseType: !74, size: 32, offset: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, scope: !3344, file: !75, line: 42, baseType: !3349, size: 64, offset: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3344, file: !75, line: 42, size: 64, elements: !3350)
!3350 = !{!3351, !3359}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3349, file: !75, line: 43, baseType: !3352, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3354, line: 7, size: 128, elements: !3355)
!3354 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3355 = !{!3356, !3358}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3353, file: !3354, line: 8, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !191, line: 93, baseType: !182)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3353, file: !3354, line: 9, baseType: !182, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3349, file: !75, line: 44, baseType: !3360, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3362, line: 7, size: 64, elements: !3363)
!3362 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3363 = !{!3364, !3366}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3361, file: !3362, line: 8, baseType: !3365, size: 32)
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3362, line: 5, baseType: !238)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3361, file: !3362, line: 9, baseType: !238, size: 32, offset: 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3344, file: !75, line: 46, baseType: !212, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3331, file: !75, line: 55, baseType: !3369, size: 256)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3331, file: !75, line: 49, size: 256, elements: !3370)
!3370 = !{!3371, !3379, !3380, !3381, !3382}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3369, file: !75, line: 50, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3374, line: 36, size: 64, elements: !3375)
!3374 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3375 = !{!3376, !3377, !3378}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3373, file: !3374, line: 37, baseType: !102, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3373, file: !3374, line: 38, baseType: !322, size: 16, offset: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3373, file: !3374, line: 39, baseType: !322, size: 16, offset: 48)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3369, file: !75, line: 51, baseType: !102, size: 32, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3369, file: !75, line: 52, baseType: !102, size: 32, offset: 96)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3369, file: !75, line: 53, baseType: !254, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3369, file: !75, line: 54, baseType: !254, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !480, file: !481, line: 973, baseType: !3384, size: 32, offset: 10688)
!3384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !174, line: 27, baseType: !3385)
!3385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !191, line: 28, baseType: !102)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !480, file: !481, line: 974, baseType: !3384, size: 32, offset: 10720)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !480, file: !481, line: 978, baseType: !254, size: 64, offset: 10752)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !480, file: !481, line: 987, baseType: !479, size: 64, offset: 10816)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !480, file: !481, line: 990, baseType: !479, size: 64, offset: 10880)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !480, file: !481, line: 995, baseType: !244, size: 128, offset: 10944)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !480, file: !481, line: 996, baseType: !244, size: 128, offset: 11072)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !480, file: !481, line: 997, baseType: !479, size: 64, offset: 11200)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !480, file: !481, line: 1005, baseType: !244, size: 128, offset: 11264)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !480, file: !481, line: 1006, baseType: !244, size: 128, offset: 11392)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !480, file: !481, line: 1009, baseType: !865, size: 64, offset: 11520)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !480, file: !481, line: 1010, baseType: !3397, size: 512, offset: 11584)
!3397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 512, elements: !385)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !480, file: !481, line: 1011, baseType: !244, size: 128, offset: 12096)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !480, file: !481, line: 1012, baseType: !244, size: 128, offset: 12224)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !480, file: !481, line: 1014, baseType: !2079, size: 64, offset: 12352)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !480, file: !481, line: 1017, baseType: !2216, size: 64, offset: 12416)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !480, file: !481, line: 1020, baseType: !2216, size: 64, offset: 12480)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !480, file: !481, line: 1023, baseType: !303, size: 64, offset: 12544)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !480, file: !481, line: 1025, baseType: !212, size: 64, offset: 12608)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !480, file: !481, line: 1026, baseType: !212, size: 64, offset: 12672)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !480, file: !481, line: 1031, baseType: !212, size: 64, offset: 12736)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !480, file: !481, line: 1032, baseType: !3408, size: 192, offset: 12800)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !481, line: 324, size: 192, elements: !3409)
!3409 = !{!3410, !3411, !3412}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3408, file: !481, line: 326, baseType: !212, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3408, file: !481, line: 327, baseType: !212, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3408, file: !481, line: 328, baseType: !270, size: 32, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !480, file: !481, line: 1041, baseType: !254, size: 64, offset: 12992)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !480, file: !481, line: 1042, baseType: !254, size: 64, offset: 13056)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !480, file: !481, line: 1045, baseType: !212, size: 64, offset: 13120)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !480, file: !481, line: 1048, baseType: !212, size: 64, offset: 13184)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !480, file: !481, line: 1051, baseType: !254, size: 64, offset: 13248)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !480, file: !481, line: 1052, baseType: !254, size: 64, offset: 13312)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !480, file: !481, line: 1055, baseType: !3420, size: 640, offset: 13376)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3421, line: 132, size: 640, elements: !3422)
!3421 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3422 = !{!3423, !3429, !3430}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3420, file: !3421, line: 133, baseType: !3424, size: 576)
!3424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3425, size: 576, elements: !861)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3421, line: 117, size: 192, elements: !3426)
!3426 = !{!3427, !3428}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3425, file: !3421, line: 118, baseType: !212, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3425, file: !3421, line: 119, baseType: !657, size: 128, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3420, file: !3421, line: 134, baseType: !7, size: 32, offset: 576)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3420, file: !3421, line: 135, baseType: !7, size: 32, offset: 608)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !480, file: !481, line: 1058, baseType: !3432, size: 448, offset: 14016)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3421, line: 144, size: 448, elements: !3433)
!3433 = !{!3434, !3435, !3436}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3432, file: !3421, line: 145, baseType: !352, size: 128, align: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3432, file: !3421, line: 146, baseType: !827, size: 256, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3432, file: !3421, line: 147, baseType: !7, size: 32, offset: 384)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !480, file: !481, line: 1064, baseType: !165, size: 64, offset: 14464)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !480, file: !481, line: 1067, baseType: !165, size: 64, offset: 14528)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !480, file: !481, line: 1070, baseType: !165, size: 64, offset: 14592)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !480, file: !481, line: 1074, baseType: !222, size: 64, offset: 14656)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !480, file: !481, line: 1084, baseType: !3442, size: 128, offset: 14720)
!3442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 128, elements: !2826)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !480, file: !481, line: 1086, baseType: !3444, size: 64, offset: 14848)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !481, line: 55, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !480, file: !481, line: 1089, baseType: !3447, size: 64, offset: 14912)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3448, line: 12, size: 64, elements: !3449)
!3448 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3449 = !{!3450}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3447, file: !3448, line: 13, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3448, line: 8, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !480, file: !481, line: 1090, baseType: !3454, size: 128, offset: 14976)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3455, line: 13, size: 128, elements: !3456)
!3455 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3456 = !{!3457}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3454, file: !3455, line: 14, baseType: !244, size: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !480, file: !481, line: 1097, baseType: !3459, size: 64, offset: 15104)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !481, line: 50, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !480, file: !481, line: 1100, baseType: !3462, size: 64, offset: 15168)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !481, line: 1100, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !480, file: !481, line: 1103, baseType: !3465, size: 64, offset: 15232)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !481, line: 53, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !480, file: !481, line: 1107, baseType: !3468, size: 64, offset: 15296)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3470, line: 35, flags: DIFlagFwdDecl)
!3470 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !480, file: !481, line: 1110, baseType: !3472, size: 64, offset: 15360)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3474, line: 93, size: 8768, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3523, !3532, !3533, !3535, !3536, !3537, !4392, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4430, !4431, !4438, !4448, !4451, !4452, !4455, !4456, !4457, !4458, !4459, !4460}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3473, file: !3474, line: 94, baseType: !227, size: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3473, file: !3474, line: 95, baseType: !231, size: 32, offset: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3473, file: !3474, line: 96, baseType: !102, size: 32, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3473, file: !3474, line: 97, baseType: !102, size: 32, offset: 96)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3473, file: !3474, line: 98, baseType: !244, size: 128, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3473, file: !3474, line: 100, baseType: !878, size: 192, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3473, file: !3474, line: 103, baseType: !479, size: 64, offset: 448)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3473, file: !3474, line: 106, baseType: !3484, size: 192, offset: 512)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !461, line: 32, size: 192, elements: !3485)
!3485 = !{!3486, !3487}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3484, file: !461, line: 33, baseType: !244, size: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3484, file: !461, line: 34, baseType: !3488, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3489, line: 25, baseType: !3490)
!3489 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3489, line: 23, size: 64, elements: !3491)
!3491 = !{!3492}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3490, file: !3489, line: 24, baseType: !728, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3473, file: !3474, line: 109, baseType: !873, size: 64, offset: 704)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3473, file: !3474, line: 112, baseType: !102, size: 32, offset: 768)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3473, file: !3474, line: 114, baseType: !102, size: 32, offset: 800)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3473, file: !3474, line: 115, baseType: !479, size: 64, offset: 832)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3473, file: !3474, line: 118, baseType: !102, size: 32, offset: 896)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3473, file: !3474, line: 119, baseType: !7, size: 32, offset: 928)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3473, file: !3474, line: 121, baseType: !3500, size: 64, offset: 960)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3474, line: 80, size: 448, elements: !3502)
!3502 = !{!3503, !3504, !3510}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3501, file: !3474, line: 81, baseType: !231, size: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3501, file: !3474, line: 82, baseType: !3505, size: 128, offset: 64)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3474, line: 75, size: 128, elements: !3506)
!3506 = !{!3507, !3508}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3505, file: !3474, line: 76, baseType: !479, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3505, file: !3474, line: 77, baseType: !3509, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3501, file: !3474, line: 83, baseType: !1420, size: 256, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3473, file: !3474, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3473, file: !3474, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3473, file: !3474, line: 138, baseType: !7, size: 32, offset: 1056)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3473, file: !3474, line: 139, baseType: !244, size: 128, offset: 1088)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3473, file: !3474, line: 142, baseType: !596, size: 512, offset: 1216)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3473, file: !3474, line: 143, baseType: !604, size: 64, offset: 1728)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3473, file: !3474, line: 150, baseType: !3518, size: 256, offset: 1792)
!3518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3519, size: 256, elements: !2206)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3474, line: 38, size: 128, elements: !3520)
!3520 = !{!3521, !3522}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3519, file: !3474, line: 39, baseType: !212, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3519, file: !3474, line: 40, baseType: !212, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3473, file: !3474, line: 156, baseType: !3524, size: 192, offset: 2048)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3474, line: 66, size: 192, elements: !3525)
!3525 = !{!3526}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3524, file: !3474, line: 67, baseType: !3527, size: 192)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3474, line: 47, size: 192, elements: !3528)
!3528 = !{!3529, !3530, !3531}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3527, file: !3474, line: 48, baseType: !173, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3527, file: !3474, line: 49, baseType: !173, size: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3527, file: !3474, line: 50, baseType: !173, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3473, file: !3474, line: 160, baseType: !3420, size: 640, offset: 2240)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3473, file: !3474, line: 163, baseType: !3534, size: 256, offset: 2880)
!3534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 256, elements: !385)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3473, file: !3474, line: 169, baseType: !865, size: 64, offset: 3136)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3473, file: !3474, line: 172, baseType: !102, size: 32, offset: 3200)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3473, file: !3474, line: 174, baseType: !3538, size: 64, offset: 3264)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3540, line: 193, size: 5248, elements: !3541)
!3540 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!3541 = !{!3542, !3543, !3544, !3995, !4281, !4282, !4283, !4330, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4347, !4348, !4349, !4350, !4351, !4359, !4368, !4369, !4370, !4371, !4372, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3539, file: !3540, line: 194, baseType: !2064, size: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3539, file: !3540, line: 195, baseType: !102, size: 32, offset: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3539, file: !3540, line: 196, baseType: !3545, size: 64, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !87, line: 705, size: 5824, elements: !3547)
!3547 = !{!3548, !3549, !3550, !3553, !3554, !3607, !3677, !3678, !3679, !3680, !3681, !3688, !3780, !3793, !3803, !3807, !3809, !3810, !3811, !3815, !3822, !3823, !3826, !3829, !3833, !3937, !3938, !3939, !3940, !3941, !3942, !3972, !3973, !3974, !3977, !3980, !3989, !3990, !3991, !3992, !3993, !3994}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3546, file: !87, line: 706, baseType: !1211, size: 512)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3546, file: !87, line: 707, baseType: !3545, size: 64, offset: 512)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3546, file: !87, line: 709, baseType: !3551, size: 64, offset: 576)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !87, line: 37, flags: DIFlagFwdDecl)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3546, file: !87, line: 711, baseType: !365, size: 64, offset: 640)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3546, file: !87, line: 712, baseType: !3555, size: 64, offset: 704)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3557)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !87, line: 89, size: 384, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3567, !3572, !3576}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3557, file: !87, line: 90, baseType: !365, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3557, file: !87, line: 91, baseType: !1291, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3557, file: !87, line: 92, baseType: !3562, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!102, !3565, !1247}
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3546)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3557, file: !87, line: 93, baseType: !3568, size: 64, offset: 192)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!375, !3565, !3571, !1918, !1919}
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3557, file: !87, line: 95, baseType: !3573, size: 64, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{null, !3545}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3557, file: !87, line: 97, baseType: !3577, size: 64, offset: 320)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3579)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !94, line: 286, size: 1472, elements: !3580)
!3580 = !{!3581, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3579, file: !94, line: 287, baseType: !3582, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!102, !3545}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3579, file: !94, line: 288, baseType: !3573, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3579, file: !94, line: 289, baseType: !3582, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3579, file: !94, line: 290, baseType: !3582, size: 64, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3579, file: !94, line: 291, baseType: !3582, size: 64, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3579, file: !94, line: 292, baseType: !3582, size: 64, offset: 320)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3579, file: !94, line: 293, baseType: !3582, size: 64, offset: 384)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3579, file: !94, line: 294, baseType: !3582, size: 64, offset: 448)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3579, file: !94, line: 295, baseType: !3582, size: 64, offset: 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3579, file: !94, line: 296, baseType: !3582, size: 64, offset: 576)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3579, file: !94, line: 297, baseType: !3582, size: 64, offset: 640)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3579, file: !94, line: 298, baseType: !3582, size: 64, offset: 704)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3579, file: !94, line: 299, baseType: !3582, size: 64, offset: 768)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3579, file: !94, line: 300, baseType: !3582, size: 64, offset: 832)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3579, file: !94, line: 301, baseType: !3582, size: 64, offset: 896)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3579, file: !94, line: 302, baseType: !3582, size: 64, offset: 960)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3579, file: !94, line: 303, baseType: !3582, size: 64, offset: 1024)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3579, file: !94, line: 304, baseType: !3582, size: 64, offset: 1088)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3579, file: !94, line: 305, baseType: !3582, size: 64, offset: 1152)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3579, file: !94, line: 306, baseType: !3582, size: 64, offset: 1216)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3579, file: !94, line: 307, baseType: !3582, size: 64, offset: 1280)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3579, file: !94, line: 308, baseType: !3582, size: 64, offset: 1344)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3579, file: !94, line: 309, baseType: !3582, size: 64, offset: 1408)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3546, file: !87, line: 714, baseType: !3608, size: 64, offset: 768)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3610)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3611, line: 80, size: 1344, elements: !3612)
!3611 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3612 = !{!3613, !3614, !3615, !3616, !3617, !3618, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3676}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3610, file: !3611, line: 81, baseType: !365, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3610, file: !3611, line: 82, baseType: !365, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3610, file: !3611, line: 83, baseType: !1291, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3610, file: !3611, line: 84, baseType: !1291, size: 64, offset: 192)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3610, file: !3611, line: 85, baseType: !1291, size: 64, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3610, file: !3611, line: 87, baseType: !3619, size: 64, offset: 320)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!102, !3545, !3622}
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !81, line: 96, size: 1152, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630, !3631, !3635, !3639, !3640, !3641, !3642, !3643, !3651, !3652, !3653, !3654, !3655, !3656}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3623, file: !81, line: 97, baseType: !365, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3623, file: !81, line: 98, baseType: !3608, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3623, file: !81, line: 100, baseType: !1198, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3623, file: !81, line: 101, baseType: !365, size: 64, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3623, file: !81, line: 103, baseType: !362, size: 8, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3623, file: !81, line: 104, baseType: !80, size: 32, offset: 288)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3623, file: !81, line: 106, baseType: !3632, size: 64, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3634)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !81, line: 106, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3623, file: !81, line: 107, baseType: !3636, size: 64, offset: 384)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3638)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !81, line: 107, flags: DIFlagFwdDecl)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3623, file: !81, line: 109, baseType: !3582, size: 64, offset: 448)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3623, file: !81, line: 110, baseType: !3573, size: 64, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3623, file: !81, line: 111, baseType: !3582, size: 64, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3623, file: !81, line: 112, baseType: !3573, size: 64, offset: 640)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3623, file: !81, line: 113, baseType: !3644, size: 64, offset: 704)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!102, !3545, !3647}
!3647 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !94, line: 60, baseType: !3648)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !94, line: 58, size: 32, elements: !3649)
!3649 = !{!3650}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3648, file: !94, line: 59, baseType: !102, size: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3623, file: !81, line: 114, baseType: !3582, size: 64, offset: 768)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3623, file: !81, line: 115, baseType: !1291, size: 64, offset: 832)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3623, file: !81, line: 116, baseType: !1291, size: 64, offset: 896)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3623, file: !81, line: 118, baseType: !3577, size: 64, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3623, file: !81, line: 119, baseType: !3573, size: 64, offset: 1024)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3623, file: !81, line: 121, baseType: !3657, size: 64, offset: 1088)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !81, line: 121, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3610, file: !3611, line: 88, baseType: !3562, size: 64, offset: 384)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3610, file: !3611, line: 89, baseType: !3582, size: 64, offset: 448)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3610, file: !3611, line: 90, baseType: !3573, size: 64, offset: 512)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3610, file: !3611, line: 91, baseType: !3573, size: 64, offset: 576)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3610, file: !3611, line: 92, baseType: !3573, size: 64, offset: 640)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3610, file: !3611, line: 94, baseType: !3582, size: 64, offset: 704)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3610, file: !3611, line: 95, baseType: !3582, size: 64, offset: 768)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3610, file: !3611, line: 97, baseType: !3644, size: 64, offset: 832)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3610, file: !3611, line: 98, baseType: !3582, size: 64, offset: 896)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3610, file: !3611, line: 100, baseType: !3582, size: 64, offset: 960)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3610, file: !3611, line: 102, baseType: !3582, size: 64, offset: 1024)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3610, file: !3611, line: 103, baseType: !3573, size: 64, offset: 1088)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3610, file: !3611, line: 105, baseType: !3577, size: 64, offset: 1152)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3610, file: !3611, line: 107, baseType: !3673, size: 64, offset: 1216)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3675)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3611, line: 107, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3610, file: !3611, line: 109, baseType: !362, size: 8, offset: 1280)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3546, file: !87, line: 715, baseType: !3622, size: 64, offset: 832)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3546, file: !87, line: 717, baseType: !303, size: 64, offset: 896)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3546, file: !87, line: 719, baseType: !303, size: 64, offset: 960)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3546, file: !87, line: 721, baseType: !827, size: 256, offset: 1024)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3546, file: !87, line: 725, baseType: !3682, size: 448, offset: 1280)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !87, line: 517, size: 448, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3682, file: !87, line: 518, baseType: !244, size: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3682, file: !87, line: 519, baseType: !244, size: 128, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3682, file: !87, line: 520, baseType: !244, size: 128, offset: 256)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3682, file: !87, line: 521, baseType: !86, size: 32, offset: 384)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3546, file: !87, line: 726, baseType: !3689, size: 2496, offset: 1728)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !94, line: 663, size: 2496, elements: !3690)
!3690 = !{!3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3773, !3777}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3689, file: !94, line: 664, baseType: !3647, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3689, file: !94, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3689, file: !94, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3689, file: !94, line: 667, baseType: !362, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3689, file: !94, line: 668, baseType: !362, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3689, file: !94, line: 669, baseType: !362, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3689, file: !94, line: 670, baseType: !362, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3689, file: !94, line: 671, baseType: !362, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3689, file: !94, line: 672, baseType: !362, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3689, file: !94, line: 673, baseType: !362, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3689, file: !94, line: 674, baseType: !362, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3689, file: !94, line: 675, baseType: !317, size: 32, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3689, file: !94, line: 676, baseType: !795, size: 32, offset: 96)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3689, file: !94, line: 678, baseType: !244, size: 128, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3689, file: !94, line: 679, baseType: !1420, size: 256, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3689, file: !94, line: 680, baseType: !3707, size: 64, offset: 512)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3709, line: 43, size: 1536, elements: !3710)
!3709 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3710 = !{!3711, !3712, !3713, !3714, !3715, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3708, file: !3709, line: 44, baseType: !365, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3708, file: !3709, line: 45, baseType: !102, size: 32, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3708, file: !3709, line: 46, baseType: !244, size: 128, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3708, file: !3709, line: 47, baseType: !795, size: 32, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3708, file: !3709, line: 48, baseType: !3716, size: 64, offset: 320)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !94, line: 629, flags: DIFlagFwdDecl)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3708, file: !3709, line: 49, baseType: !2318, size: 320, offset: 384)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3708, file: !3709, line: 50, baseType: !254, size: 64, offset: 704)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3708, file: !3709, line: 51, baseType: !604, size: 64, offset: 768)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3708, file: !3709, line: 52, baseType: !604, size: 64, offset: 832)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3708, file: !3709, line: 53, baseType: !604, size: 64, offset: 896)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3708, file: !3709, line: 54, baseType: !604, size: 64, offset: 960)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3708, file: !3709, line: 55, baseType: !604, size: 64, offset: 1024)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3708, file: !3709, line: 56, baseType: !254, size: 64, offset: 1088)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3708, file: !3709, line: 57, baseType: !254, size: 64, offset: 1152)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3708, file: !3709, line: 58, baseType: !254, size: 64, offset: 1216)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3708, file: !3709, line: 59, baseType: !254, size: 64, offset: 1280)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3708, file: !3709, line: 60, baseType: !254, size: 64, offset: 1344)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3708, file: !3709, line: 61, baseType: !3545, size: 64, offset: 1408)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3708, file: !3709, line: 62, baseType: !362, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3708, file: !3709, line: 63, baseType: !362, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3689, file: !94, line: 681, baseType: !362, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3689, file: !94, line: 682, baseType: !362, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3689, file: !94, line: 683, baseType: !362, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3689, file: !94, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3689, file: !94, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3689, file: !94, line: 690, baseType: !596, size: 512, offset: 640)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3689, file: !94, line: 691, baseType: !212, size: 64, offset: 1152)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3689, file: !94, line: 692, baseType: !2330, size: 256, offset: 1216)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3689, file: !94, line: 693, baseType: !878, size: 192, offset: 1472)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3689, file: !94, line: 694, baseType: !3716, size: 64, offset: 1664)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3689, file: !94, line: 695, baseType: !231, size: 32, offset: 1728)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3689, file: !94, line: 696, baseType: !231, size: 32, offset: 1760)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3689, file: !94, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3689, file: !94, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3689, file: !94, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3689, file: !94, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3689, file: !94, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3689, file: !94, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3689, file: !94, line: 703, baseType: !362, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3689, file: !94, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3689, file: !94, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3689, file: !94, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3689, file: !94, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3689, file: !94, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3689, file: !94, line: 709, baseType: !7, size: 32, offset: 1824)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3689, file: !94, line: 710, baseType: !93, size: 32, offset: 1856)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3689, file: !94, line: 711, baseType: !101, size: 32, offset: 1888)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3689, file: !94, line: 712, baseType: !101, size: 32, offset: 1920)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3689, file: !94, line: 713, baseType: !102, size: 32, offset: 1952)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3689, file: !94, line: 714, baseType: !102, size: 32, offset: 1984)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3689, file: !94, line: 715, baseType: !212, size: 64, offset: 2048)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3689, file: !94, line: 716, baseType: !212, size: 64, offset: 2112)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3689, file: !94, line: 717, baseType: !212, size: 64, offset: 2176)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3689, file: !94, line: 718, baseType: !212, size: 64, offset: 2240)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3689, file: !94, line: 720, baseType: !3768, size: 64, offset: 2304)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !94, line: 632, size: 64, elements: !3770)
!3770 = !{!3771, !3772}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3769, file: !94, line: 633, baseType: !795, size: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3769, file: !94, line: 634, baseType: !7, size: 32, offset: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3689, file: !94, line: 721, baseType: !3774, size: 64, offset: 2368)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{null, !3545, !238}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3689, file: !94, line: 722, baseType: !3778, size: 64, offset: 2432)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !94, line: 722, flags: DIFlagFwdDecl)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3546, file: !87, line: 727, baseType: !3781, size: 64, offset: 4224)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !94, line: 742, size: 1792, elements: !3783)
!3783 = !{!3784, !3785, !3786, !3790, !3791, !3792}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3782, file: !94, line: 743, baseType: !3579, size: 1472)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3782, file: !94, line: 744, baseType: !3582, size: 64, offset: 1472)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3782, file: !94, line: 745, baseType: !3787, size: 64, offset: 1536)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !3545, !362}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3782, file: !94, line: 746, baseType: !3582, size: 64, offset: 1600)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3782, file: !94, line: 747, baseType: !3573, size: 64, offset: 1664)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3782, file: !94, line: 748, baseType: !3573, size: 64, offset: 1728)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3546, file: !87, line: 736, baseType: !3794, size: 128, offset: 4288)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !87, line: 529, size: 128, elements: !3795)
!3795 = !{!3796, !3800}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3794, file: !87, line: 531, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3799, line: 13, flags: DIFlagFwdDecl)
!3799 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3794, file: !87, line: 532, baseType: !3801, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !87, line: 49, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3546, file: !87, line: 738, baseType: !3804, size: 64, offset: 4416)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3806)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !87, line: 738, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3546, file: !87, line: 740, baseType: !3808, size: 64, offset: 4480)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3546, file: !87, line: 741, baseType: !212, size: 64, offset: 4544)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3546, file: !87, line: 746, baseType: !212, size: 64, offset: 4608)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3546, file: !87, line: 747, baseType: !3812, size: 64, offset: 4672)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3814)
!3814 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !87, line: 747, flags: DIFlagFwdDecl)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3546, file: !87, line: 749, baseType: !3816, size: 64, offset: 4736)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !87, line: 428, size: 128, elements: !3818)
!3818 = !{!3819, !3820, !3821}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3817, file: !87, line: 433, baseType: !7, size: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3817, file: !87, line: 434, baseType: !7, size: 32, offset: 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3817, file: !87, line: 435, baseType: !254, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3546, file: !87, line: 751, baseType: !244, size: 128, offset: 4800)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3546, file: !87, line: 762, baseType: !3824, size: 64, offset: 4928)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !87, line: 762, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3546, file: !87, line: 770, baseType: !3827, offset: 4992)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3828, line: 5, elements: !806)
!3828 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3546, file: !87, line: 772, baseType: !3830, size: 64, offset: 4992)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3832, line: 18, flags: DIFlagFwdDecl)
!3832 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3546, file: !87, line: 773, baseType: !3834, size: 64, offset: 5056)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3836, line: 41, size: 512, elements: !3837)
!3836 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3837 = !{!3838, !3839, !3933, !3934, !3935, !3936}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3835, file: !3836, line: 42, baseType: !3834, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3835, file: !3836, line: 43, baseType: !3840, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3842)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3836, line: 125, size: 1408, elements: !3843)
!3843 = !{!3844, !3848, !3852, !3858, !3862, !3863, !3868, !3872, !3876, !3880, !3884, !3885, !3889, !3893, !3897, !3908, !3909, !3910, !3911, !3921, !3925, !3929}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3842, file: !3836, line: 126, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!3834, !3834}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3842, file: !3836, line: 127, baseType: !3849, size: 64, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{null, !3834}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3842, file: !3836, line: 128, baseType: !3853, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!362, !3856}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3835)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3842, file: !3836, line: 129, baseType: !3859, size: 64, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!1901, !3856, !3565}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3842, file: !3836, line: 131, baseType: !3853, size: 64, offset: 256)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3842, file: !3836, line: 133, baseType: !3864, size: 64, offset: 320)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!3867, !3856}
!3867 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3836, line: 132, flags: DIFlagFwdDecl)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3842, file: !3836, line: 134, baseType: !3869, size: 64, offset: 384)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!362, !3856, !365}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3842, file: !3836, line: 136, baseType: !3873, size: 64, offset: 448)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!102, !3856, !365, !7, !303, !1108}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3842, file: !3836, line: 141, baseType: !3877, size: 64, offset: 512)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!102, !3856, !365, !2406, !1108}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3842, file: !3836, line: 144, baseType: !3881, size: 64, offset: 576)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!365, !3856}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3842, file: !3836, line: 145, baseType: !3881, size: 64, offset: 640)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3842, file: !3836, line: 146, baseType: !3886, size: 64, offset: 704)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!3834, !3856}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3842, file: !3836, line: 148, baseType: !3890, size: 64, offset: 768)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!3834, !3856, !3834}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3842, file: !3836, line: 151, baseType: !3894, size: 64, offset: 832)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!3834, !3856, !365}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3842, file: !3836, line: 153, baseType: !3898, size: 64, offset: 896)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!102, !3856, !365, !365, !7, !7, !3901}
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3836, line: 94, size: 640, elements: !3903)
!3903 = !{!3904, !3905, !3906}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3902, file: !3836, line: 95, baseType: !3834, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3902, file: !3836, line: 96, baseType: !7, size: 32, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3902, file: !3836, line: 97, baseType: !3907, size: 512, offset: 128)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 512, elements: !639)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3842, file: !3836, line: 158, baseType: !3890, size: 64, offset: 960)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3842, file: !3836, line: 161, baseType: !3886, size: 64, offset: 1024)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3842, file: !3836, line: 163, baseType: !3845, size: 64, offset: 1088)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3842, file: !3836, line: 164, baseType: !3912, size: 64, offset: 1152)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!102, !3856, !3915}
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3836, line: 73, size: 128, elements: !3917)
!3917 = !{!3918, !3919, !3920}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3916, file: !3836, line: 74, baseType: !7, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3916, file: !3836, line: 75, baseType: !7, size: 32, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3916, file: !3836, line: 76, baseType: !3856, size: 64, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3842, file: !3836, line: 166, baseType: !3922, size: 64, offset: 1216)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!303, !3834, !102}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3842, file: !3836, line: 167, baseType: !3926, size: 64, offset: 1280)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!102, !3856, !7}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3842, file: !3836, line: 168, baseType: !3930, size: 64, offset: 1344)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!102, !3834}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3835, file: !3836, line: 44, baseType: !3545, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3835, file: !3836, line: 45, baseType: !244, size: 128, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3835, file: !3836, line: 46, baseType: !244, size: 128, offset: 320)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3835, file: !3836, line: 47, baseType: !287, size: 8, offset: 448)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3546, file: !87, line: 776, baseType: !102, size: 32, offset: 5120)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3546, file: !87, line: 778, baseType: !1027, size: 32, offset: 5152)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3546, file: !87, line: 779, baseType: !317, size: 32, offset: 5184)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3546, file: !87, line: 781, baseType: !795, size: 32, offset: 5216)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3546, file: !87, line: 782, baseType: !244, size: 128, offset: 5248)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3546, file: !87, line: 784, baseType: !3943, size: 64, offset: 5376)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3945)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3946, line: 52, size: 768, elements: !3947)
!3946 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3956, !3960, !3961, !3962, !3963, !3967, !3971}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3945, file: !3946, line: 53, baseType: !365, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3945, file: !3946, line: 55, baseType: !1291, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3945, file: !3946, line: 56, baseType: !1291, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3945, file: !3946, line: 58, baseType: !3562, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3945, file: !3946, line: 59, baseType: !3953, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!375, !3565, !3571}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3945, file: !3946, line: 61, baseType: !3957, size: 64, offset: 320)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{null, !3943}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3945, file: !3946, line: 62, baseType: !3573, size: 64, offset: 384)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3945, file: !3946, line: 64, baseType: !3582, size: 64, offset: 448)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3945, file: !3946, line: 66, baseType: !1884, size: 64, offset: 512)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3945, file: !3946, line: 67, baseType: !3964, size: 64, offset: 576)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!1901, !3565}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3945, file: !3946, line: 69, baseType: !3968, size: 64, offset: 640)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{null, !3565, !1918, !1919}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3945, file: !3946, line: 71, baseType: !3577, size: 64, offset: 704)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3546, file: !87, line: 785, baseType: !1291, size: 64, offset: 5440)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3546, file: !87, line: 787, baseType: !3573, size: 64, offset: 5504)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3546, file: !87, line: 788, baseType: !3975, size: 64, offset: 5568)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !87, line: 46, flags: DIFlagFwdDecl)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3546, file: !87, line: 789, baseType: !3978, size: 64, offset: 5632)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !87, line: 48, flags: DIFlagFwdDecl)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3546, file: !87, line: 791, baseType: !3981, size: 64, offset: 5696)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !87, line: 597, size: 128, elements: !3983)
!3983 = !{!3984, !3985, !3986, !3987, !3988}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3982, file: !87, line: 598, baseType: !109, size: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3982, file: !87, line: 599, baseType: !118, size: 32, offset: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3982, file: !87, line: 600, baseType: !123, size: 32, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3982, file: !87, line: 601, baseType: !362, size: 8, offset: 96)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3982, file: !87, line: 602, baseType: !362, size: 8, offset: 104)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3546, file: !87, line: 793, baseType: !128, size: 32, offset: 5760)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3546, file: !87, line: 795, baseType: !362, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3546, file: !87, line: 796, baseType: !362, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3546, file: !87, line: 797, baseType: !362, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3546, file: !87, line: 798, baseType: !362, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3546, file: !87, line: 799, baseType: !362, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3539, file: !3540, line: 197, baseType: !3996, size: 64, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3998, line: 441, size: 1472, elements: !3999)
!3998 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!3999 = !{!4000, !4001, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4031, !4032, !4036, !4037, !4039, !4160, !4163, !4164, !4280}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3997, file: !3998, line: 442, baseType: !2064, size: 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3997, file: !3998, line: 443, baseType: !4002, size: 64, offset: 64)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3997, file: !3998, line: 444, baseType: !1198, size: 64, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3997, file: !3998, line: 445, baseType: !365, size: 64, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3997, file: !3998, line: 446, baseType: !365, size: 64, offset: 256)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3997, file: !3998, line: 447, baseType: !102, size: 32, offset: 320)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3997, file: !3998, line: 448, baseType: !102, size: 32, offset: 352)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3997, file: !3998, line: 449, baseType: !102, size: 32, offset: 384)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3997, file: !3998, line: 450, baseType: !7, size: 32, offset: 416)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3997, file: !3998, line: 451, baseType: !322, size: 16, offset: 448)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3997, file: !3998, line: 452, baseType: !322, size: 16, offset: 464)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3997, file: !3998, line: 453, baseType: !4013, size: 352, offset: 480)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !4014, line: 30, size: 352, elements: !4015)
!4014 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!4015 = !{!4016, !4018, !4019, !4020, !4021, !4024, !4028, !4030}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !4013, file: !4014, line: 31, baseType: !4017, size: 32)
!4017 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !4014, line: 7, baseType: !7)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !4013, file: !4014, line: 32, baseType: !4017, size: 32, offset: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !4013, file: !4014, line: 33, baseType: !4017, size: 32, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !4013, file: !4014, line: 34, baseType: !4017, size: 32, offset: 96)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !4013, file: !4014, line: 35, baseType: !4022, size: 8, offset: 128)
!4022 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !4023, line: 5, baseType: !220)
!4023 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !4013, file: !4014, line: 36, baseType: !4025, size: 152, offset: 136)
!4025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4022, size: 152, elements: !4026)
!4026 = !{!4027}
!4027 = !DISubrange(count: 19)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !4013, file: !4014, line: 37, baseType: !4029, size: 32, offset: 288)
!4029 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !4023, line: 6, baseType: !7)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !4013, file: !4014, line: 38, baseType: !4029, size: 32, offset: 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3997, file: !3998, line: 454, baseType: !254, size: 64, offset: 832)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3997, file: !3998, line: 455, baseType: !4033, size: 64, offset: 896)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4035, line: 131, flags: DIFlagFwdDecl)
!4035 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3997, file: !3998, line: 456, baseType: !3996, size: 64, offset: 960)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3997, file: !3998, line: 461, baseType: !4038, size: 64, offset: 1024)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3997, file: !3998, line: 462, baseType: !4040, size: 64, offset: 1088)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !4043, line: 101, size: 3008, elements: !4044)
!4043 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!4044 = !{!4045, !4077, !4078, !4079, !4101, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4129, !4155, !4156, !4157, !4158, !4159}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4042, file: !4043, line: 102, baseType: !4046, size: 1088)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !4047, line: 35, size: 1088, elements: !4048)
!4047 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!4048 = !{!4049, !4066, !4067, !4068, !4069, !4070, !4074, !4075, !4076}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4046, file: !4047, line: 36, baseType: !4050, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !4047, line: 10, size: 256, elements: !4052)
!4052 = !{!4053, !4058, !4059, !4060, !4061, !4062, !4063, !4064}
!4053 = !DIDerivedType(tag: DW_TAG_member, scope: !4051, file: !4047, line: 11, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4051, file: !4047, line: 11, size: 64, elements: !4055)
!4055 = !{!4056, !4057}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4054, file: !4047, line: 12, baseType: !4050, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4054, file: !4047, line: 13, baseType: !502, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4051, file: !4047, line: 15, baseType: !7, size: 32, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4051, file: !4047, line: 16, baseType: !7, size: 32, offset: 96)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4051, file: !4047, line: 17, baseType: !7, size: 32, offset: 128)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4051, file: !4047, line: 18, baseType: !7, size: 32, offset: 160)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4051, file: !4047, line: 19, baseType: !7, size: 32, offset: 192)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4051, file: !4047, line: 20, baseType: !362, size: 8, offset: 224)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4051, file: !4047, line: 22, baseType: !4065, align: 64, offset: 256)
!4065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, elements: !470)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4046, file: !4047, line: 37, baseType: !2330, size: 256, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4046, file: !4047, line: 38, baseType: !827, size: 256, offset: 320)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4046, file: !4047, line: 39, baseType: !231, size: 32, offset: 576)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !4046, file: !4047, line: 40, baseType: !4051, size: 256, offset: 640)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4046, file: !4047, line: 41, baseType: !4071, size: 64, offset: 896)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !503, line: 56, size: 64, elements: !4072)
!4072 = !{!4073}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4071, file: !503, line: 57, baseType: !506, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !4046, file: !4047, line: 42, baseType: !231, size: 32, offset: 960)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !4046, file: !4047, line: 43, baseType: !102, size: 32, offset: 992)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4046, file: !4047, line: 44, baseType: !4050, size: 64, offset: 1024)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4042, file: !4043, line: 103, baseType: !3538, size: 64, offset: 1088)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !4042, file: !4043, line: 104, baseType: !3538, size: 64, offset: 1152)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4042, file: !4043, line: 105, baseType: !4080, size: 64, offset: 1216)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4082)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !4043, line: 33, size: 320, elements: !4083)
!4083 = !{!4084, !4088, !4092, !4096, !4100}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !4082, file: !4043, line: 34, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!362, !4041}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !4082, file: !4043, line: 35, baseType: !4089, size: 64, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{null, !4041, !362}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4082, file: !4043, line: 36, baseType: !4093, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{null, !4041}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4082, file: !4043, line: 37, baseType: !4097, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!102, !4041, !3538}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !4082, file: !4043, line: 38, baseType: !4093, size: 64, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !4042, file: !4043, line: 106, baseType: !4102, size: 64, offset: 1280)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4104)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !4043, line: 41, size: 192, elements: !4105)
!4105 = !{!4106, !4112, !4116}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4104, file: !4043, line: 42, baseType: !4107, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!1108, !4041, !4110, !4110, !1108}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4104, file: !4043, line: 44, baseType: !4113, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{null, !4041, !4110, !4110, !1108}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4104, file: !4043, line: 46, baseType: !4093, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4042, file: !4043, line: 107, baseType: !795, size: 32, offset: 1344)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !4042, file: !4043, line: 108, baseType: !102, size: 32, offset: 1376)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4042, file: !4043, line: 109, baseType: !102, size: 32, offset: 1408)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !4042, file: !4043, line: 110, baseType: !878, size: 192, offset: 1472)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !4042, file: !4043, line: 111, baseType: !878, size: 192, offset: 1664)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4042, file: !4043, line: 112, baseType: !254, size: 64, offset: 1856)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !4042, file: !4043, line: 113, baseType: !254, size: 64, offset: 1920)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !4042, file: !4043, line: 114, baseType: !220, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4042, file: !4043, line: 115, baseType: !827, size: 256, offset: 2048)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !4042, file: !4043, line: 116, baseType: !827, size: 256, offset: 2304)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !4042, file: !4043, line: 117, baseType: !4128, size: 64, offset: 2560)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !4042, file: !4043, line: 118, baseType: !4130, size: 192, offset: 2624)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4042, file: !4043, line: 118, size: 192, elements: !4131)
!4131 = !{!4132, !4153}
!4132 = !DIDerivedType(tag: DW_TAG_member, scope: !4130, file: !4043, line: 118, baseType: !4133, size: 192)
!4133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4130, file: !4043, line: 118, size: 192, elements: !4134)
!4134 = !{!4135, !4144, !4145, !4146, !4151, !4152}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !4133, file: !4043, line: 118, baseType: !4136, size: 192)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !4137, line: 44, size: 192, elements: !4138)
!4137 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!4138 = !{!4139, !4140, !4141, !4142, !4143}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4136, file: !4137, line: 45, baseType: !7, size: 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4136, file: !4137, line: 46, baseType: !7, size: 32, offset: 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4136, file: !4137, line: 47, baseType: !7, size: 32, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !4136, file: !4137, line: 48, baseType: !7, size: 32, offset: 96)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4136, file: !4137, line: 49, baseType: !303, size: 64, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4133, file: !4043, line: 118, baseType: !4128, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !4133, file: !4043, line: 118, baseType: !949, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !4133, file: !4043, line: 118, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, elements: !4149)
!4149 = !{!4150}
!4150 = !DISubrange(count: 0)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4133, file: !4043, line: 118, baseType: !4128, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !4133, file: !4043, line: 118, baseType: !949, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4130, file: !4043, line: 118, baseType: !4154, offset: 192)
!4154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !4149)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !4042, file: !4043, line: 119, baseType: !7, size: 32, offset: 2816)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !4042, file: !4043, line: 120, baseType: !7, size: 32, offset: 2848)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !4042, file: !4043, line: 121, baseType: !102, size: 32, offset: 2880)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4042, file: !4043, line: 122, baseType: !2064, size: 32, offset: 2912)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !4042, file: !4043, line: 123, baseType: !303, size: 64, offset: 2944)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3997, file: !3998, line: 463, baseType: !4161, size: 64, offset: 1152)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3997, file: !3998, line: 464, baseType: !303, size: 64, offset: 1216)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3997, file: !3998, line: 470, baseType: !4165, size: 64, offset: 1280)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4167)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3998, line: 357, size: 2176, elements: !4168)
!4168 = !{!4169, !4173, !4177, !4181, !4185, !4189, !4193, !4194, !4198, !4202, !4203, !4207, !4208, !4212, !4216, !4222, !4223, !4224, !4225, !4226, !4227, !4231, !4232, !4233, !4234, !4238, !4242, !4246, !4250, !4262, !4268, !4274, !4275, !4279}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !4167, file: !3998, line: 358, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!3538, !3996, !813, !102}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !4167, file: !3998, line: 360, baseType: !4174, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!102, !3996, !3538}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4167, file: !3998, line: 361, baseType: !4178, size: 64, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{null, !3996, !3538}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4167, file: !3998, line: 362, baseType: !4182, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!102, !3538, !813}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4167, file: !3998, line: 363, baseType: !4186, size: 64, offset: 256)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{null, !3538, !813}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4167, file: !3998, line: 364, baseType: !4190, size: 64, offset: 320)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{null, !3538}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4167, file: !3998, line: 365, baseType: !4190, size: 64, offset: 384)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4167, file: !3998, line: 366, baseType: !4195, size: 64, offset: 448)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!1105, !3538, !4110, !1108}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !4167, file: !3998, line: 367, baseType: !4199, size: 64, offset: 512)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!102, !3538, !287}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !4167, file: !3998, line: 368, baseType: !4190, size: 64, offset: 576)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !4167, file: !3998, line: 369, baseType: !4204, size: 64, offset: 640)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!7, !3538}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !4167, file: !3998, line: 370, baseType: !4204, size: 64, offset: 704)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4167, file: !3998, line: 371, baseType: !4209, size: 64, offset: 768)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!102, !3538, !7, !254}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4167, file: !3998, line: 373, baseType: !4213, size: 64, offset: 832)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!477, !3538, !7, !254}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4167, file: !3998, line: 375, baseType: !4217, size: 64, offset: 896)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{null, !3538, !4220}
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4013)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4167, file: !3998, line: 376, baseType: !4190, size: 64, offset: 960)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !4167, file: !3998, line: 377, baseType: !4190, size: 64, offset: 1024)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4167, file: !3998, line: 378, baseType: !4190, size: 64, offset: 1088)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4167, file: !3998, line: 379, baseType: !4190, size: 64, offset: 1152)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4167, file: !3998, line: 380, baseType: !4190, size: 64, offset: 1216)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !4167, file: !3998, line: 381, baseType: !4228, size: 64, offset: 1280)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!102, !3538, !102}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4167, file: !3998, line: 382, baseType: !4190, size: 64, offset: 1344)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !4167, file: !3998, line: 383, baseType: !4228, size: 64, offset: 1408)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !4167, file: !3998, line: 384, baseType: !4190, size: 64, offset: 1472)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !4167, file: !3998, line: 385, baseType: !4235, size: 64, offset: 1536)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{null, !3538, !102}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !4167, file: !3998, line: 386, baseType: !4239, size: 64, offset: 1600)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !3538, !340}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !4167, file: !3998, line: 387, baseType: !4243, size: 64, offset: 1664)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!102, !3538}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !4167, file: !3998, line: 388, baseType: !4247, size: 64, offset: 1728)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!102, !3538, !7, !7}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !4167, file: !3998, line: 390, baseType: !4251, size: 64, offset: 1792)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!102, !3538, !4254}
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !4256, line: 15, size: 64, elements: !4257)
!4256 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!4257 = !{!4258, !4259, !4260, !4261}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !4255, file: !4256, line: 16, baseType: !296, size: 16)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !4255, file: !4256, line: 17, baseType: !296, size: 16, offset: 16)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !4255, file: !4256, line: 18, baseType: !296, size: 16, offset: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !4255, file: !4256, line: 19, baseType: !296, size: 16, offset: 48)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !4167, file: !3998, line: 391, baseType: !4263, size: 64, offset: 1856)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!102, !3538, !4266}
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3998, line: 16, flags: DIFlagFwdDecl)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !4167, file: !3998, line: 393, baseType: !4269, size: 64, offset: 1920)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!102, !3538, !4272}
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3998, line: 17, flags: DIFlagFwdDecl)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !4167, file: !3998, line: 394, baseType: !4269, size: 64, offset: 1984)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4167, file: !3998, line: 395, baseType: !4276, size: 64, offset: 2048)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{null, !3538, !1965}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !4167, file: !3998, line: 401, baseType: !1996, size: 64, offset: 2112)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3997, file: !3998, line: 471, baseType: !244, size: 128, offset: 1344)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3539, file: !3540, line: 198, baseType: !4041, size: 64, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3539, file: !3540, line: 199, baseType: !4165, size: 64, offset: 256)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !3539, file: !3540, line: 201, baseType: !4284, size: 64, offset: 320)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !4286, line: 269, size: 128, elements: !4287)
!4286 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!4287 = !{!4288, !4329}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4285, file: !4286, line: 270, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !4286, line: 231, size: 1152, elements: !4291)
!4291 = !{!4292, !4293, !4294, !4295, !4296, !4297, !4302, !4306, !4307, !4308, !4309, !4313, !4314, !4318, !4319, !4323, !4327, !4328}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4290, file: !4286, line: 232, baseType: !375, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4290, file: !4286, line: 233, baseType: !102, size: 32, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4290, file: !4286, line: 238, baseType: !4243, size: 64, offset: 128)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4290, file: !4286, line: 239, baseType: !4190, size: 64, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4290, file: !4286, line: 240, baseType: !4190, size: 64, offset: 256)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4290, file: !4286, line: 241, baseType: !4298, size: 64, offset: 320)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!1105, !3538, !813, !4301, !1108, !1723, !254}
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4290, file: !4286, line: 243, baseType: !4303, size: 64, offset: 384)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!1105, !3538, !813, !4110, !1108}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4290, file: !4286, line: 245, baseType: !4209, size: 64, offset: 448)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4290, file: !4286, line: 247, baseType: !4209, size: 64, offset: 512)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4290, file: !4286, line: 249, baseType: !4217, size: 64, offset: 576)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4290, file: !4286, line: 250, baseType: !4310, size: 64, offset: 640)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!2033, !3538, !813, !2035}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4290, file: !4286, line: 252, baseType: !4190, size: 64, offset: 704)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4290, file: !4286, line: 257, baseType: !4315, size: 64, offset: 768)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{null, !3538, !4110, !4110, !1108}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4290, file: !4286, line: 259, baseType: !4190, size: 64, offset: 832)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !4290, file: !4286, line: 260, baseType: !4320, size: 64, offset: 896)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{null, !3538, !362}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !4290, file: !4286, line: 261, baseType: !4324, size: 64, offset: 960)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!1108, !3538, !4110, !4110, !1108}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4290, file: !4286, line: 263, baseType: !4315, size: 64, offset: 1024)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4290, file: !4286, line: 266, baseType: !1198, size: 64, offset: 1088)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4285, file: !4286, line: 271, baseType: !3538, size: 64, offset: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !3539, file: !3540, line: 202, baseType: !4331, size: 384, offset: 384)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !4286, line: 17, size: 384, elements: !4332)
!4332 = !{!4333, !4334, !4335, !4336, !4337}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4331, file: !4286, line: 18, baseType: !171, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4331, file: !4286, line: 19, baseType: !270, size: 32, offset: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !4331, file: !4286, line: 20, baseType: !7, size: 32, offset: 96)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !4331, file: !4286, line: 21, baseType: !244, size: 128, offset: 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !4331, file: !4286, line: 22, baseType: !244, size: 128, offset: 256)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !3539, file: !3540, line: 204, baseType: !827, size: 256, offset: 768)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !3539, file: !3540, line: 205, baseType: !827, size: 256, offset: 1024)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !3539, file: !3540, line: 206, baseType: !827, size: 256, offset: 1280)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !3539, file: !3540, line: 207, baseType: !259, size: 320, offset: 1536)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !3539, file: !3540, line: 208, baseType: !827, size: 256, offset: 1856)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3539, file: !3540, line: 209, baseType: !4013, size: 352, offset: 2112)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !3539, file: !3540, line: 209, baseType: !4013, size: 352, offset: 2464)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3539, file: !3540, line: 210, baseType: !4346, size: 512, offset: 2816)
!4346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 512, elements: !1254)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3539, file: !3540, line: 211, baseType: !254, size: 64, offset: 3328)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3539, file: !3540, line: 212, baseType: !102, size: 32, offset: 3392)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !3539, file: !3540, line: 213, baseType: !7, size: 32, offset: 3424)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !3539, file: !3540, line: 214, baseType: !4255, size: 64, offset: 3456)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !3539, file: !3540, line: 221, baseType: !4352, size: 64, align: 64, offset: 3520)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3539, file: !3540, line: 216, size: 64, align: 64, elements: !4353)
!4353 = !{!4354, !4355, !4356, !4357}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4352, file: !3540, line: 217, baseType: !795, size: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !4352, file: !3540, line: 218, baseType: !362, size: 8, offset: 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !4352, file: !3540, line: 219, baseType: !362, size: 8, offset: 40)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4352, file: !3540, line: 220, baseType: !4358, offset: 64)
!4358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !4149)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3539, file: !3540, line: 230, baseType: !4360, size: 192, align: 64, offset: 3584)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3539, file: !3540, line: 223, size: 192, align: 64, elements: !4361)
!4361 = !{!4362, !4363, !4364, !4365, !4366, !4367}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !4360, file: !3540, line: 224, baseType: !865, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !4360, file: !3540, line: 225, baseType: !865, size: 64, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4360, file: !3540, line: 226, baseType: !795, size: 32, offset: 128)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !4360, file: !3540, line: 227, baseType: !220, size: 8, offset: 160)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !4360, file: !3540, line: 228, baseType: !362, size: 8, offset: 168)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4360, file: !3540, line: 229, baseType: !4358, offset: 192)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !3539, file: !3540, line: 232, baseType: !362, size: 8, offset: 3776)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !3539, file: !3540, line: 233, baseType: !362, size: 8, offset: 3784)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !3539, file: !3540, line: 234, baseType: !102, size: 32, offset: 3808)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3539, file: !3540, line: 236, baseType: !3538, size: 64, offset: 3840)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3539, file: !3540, line: 237, baseType: !4373, size: 64, offset: 3904)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !59, line: 1083, size: 384, elements: !4375)
!4375 = !{!4376, !4377, !4378, !4379, !4380, !4381}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4374, file: !59, line: 1084, baseType: !842, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4374, file: !59, line: 1085, baseType: !102, size: 32, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4374, file: !59, line: 1086, baseType: !102, size: 32, offset: 96)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4374, file: !59, line: 1087, baseType: !4373, size: 64, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4374, file: !59, line: 1088, baseType: !813, size: 64, offset: 192)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4374, file: !59, line: 1089, baseType: !352, size: 128, align: 64, offset: 256)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3539, file: !3540, line: 238, baseType: !878, size: 192, offset: 3968)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3539, file: !3540, line: 239, baseType: !878, size: 192, offset: 4160)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !3539, file: !3540, line: 240, baseType: !2330, size: 256, offset: 4352)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !3539, file: !3540, line: 241, baseType: !303, size: 64, offset: 4608)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3539, file: !3540, line: 242, baseType: !303, size: 64, offset: 4672)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !3539, file: !3540, line: 243, baseType: !795, size: 32, offset: 4736)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !3539, file: !3540, line: 244, baseType: !102, size: 32, offset: 4768)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !3539, file: !3540, line: 245, baseType: !4128, size: 64, offset: 4800)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !3539, file: !3540, line: 247, baseType: !244, size: 128, offset: 4864)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !3539, file: !3540, line: 250, baseType: !2330, size: 256, offset: 4992)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3473, file: !3474, line: 185, baseType: !4393, size: 64, offset: 3328)
!4393 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !647, line: 860, baseType: !4394)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !647, line: 853, size: 64, elements: !4395)
!4395 = !{!4396, !4397}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4394, file: !647, line: 858, baseType: !923, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4394, file: !647, line: 859, baseType: !795, size: 32, offset: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3473, file: !3474, line: 186, baseType: !212, size: 64, offset: 3392)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3473, file: !3474, line: 186, baseType: !212, size: 64, offset: 3456)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3473, file: !3474, line: 186, baseType: !212, size: 64, offset: 3520)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3473, file: !3474, line: 186, baseType: !212, size: 64, offset: 3584)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3473, file: !3474, line: 187, baseType: !212, size: 64, offset: 3648)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3473, file: !3474, line: 188, baseType: !212, size: 64, offset: 3712)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3473, file: !3474, line: 189, baseType: !3408, size: 192, offset: 3776)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3473, file: !3474, line: 190, baseType: !254, size: 64, offset: 3968)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3473, file: !3474, line: 190, baseType: !254, size: 64, offset: 4032)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3473, file: !3474, line: 190, baseType: !254, size: 64, offset: 4096)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3473, file: !3474, line: 190, baseType: !254, size: 64, offset: 4160)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3473, file: !3474, line: 191, baseType: !254, size: 64, offset: 4224)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3473, file: !3474, line: 191, baseType: !254, size: 64, offset: 4288)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3473, file: !3474, line: 191, baseType: !254, size: 64, offset: 4352)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3473, file: !3474, line: 191, baseType: !254, size: 64, offset: 4416)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3473, file: !3474, line: 192, baseType: !254, size: 64, offset: 4480)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3473, file: !3474, line: 192, baseType: !254, size: 64, offset: 4544)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3473, file: !3474, line: 192, baseType: !254, size: 64, offset: 4608)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3473, file: !3474, line: 192, baseType: !254, size: 64, offset: 4672)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3473, file: !3474, line: 193, baseType: !254, size: 64, offset: 4736)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3473, file: !3474, line: 193, baseType: !254, size: 64, offset: 4800)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3473, file: !3474, line: 194, baseType: !4420, size: 448, offset: 4864)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4421, line: 12, size: 448, elements: !4422)
!4421 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4422 = !{!4423, !4424, !4425, !4426, !4427, !4428, !4429}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4420, file: !4421, line: 15, baseType: !212, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4420, file: !4421, line: 17, baseType: !212, size: 64, offset: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4420, file: !4421, line: 19, baseType: !212, size: 64, offset: 128)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4420, file: !4421, line: 21, baseType: !212, size: 64, offset: 192)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4420, file: !4421, line: 29, baseType: !212, size: 64, offset: 256)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4420, file: !4421, line: 35, baseType: !212, size: 64, offset: 320)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4420, file: !4421, line: 44, baseType: !212, size: 64, offset: 384)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3473, file: !3474, line: 202, baseType: !214, size: 64, offset: 5312)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3473, file: !3474, line: 213, baseType: !4432, size: 2048, offset: 5376)
!4432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4433, size: 2048, elements: !2826)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4434, line: 43, size: 128, elements: !4435)
!4434 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4435 = !{!4436, !4437}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4433, file: !4434, line: 44, baseType: !1110, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4433, file: !4434, line: 45, baseType: !1110, size: 64, offset: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3473, file: !3474, line: 216, baseType: !4439, size: 448, offset: 7424)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3474, line: 30, size: 448, elements: !4440)
!4440 = !{!4441, !4442, !4443, !4444, !4445, !4446, !4447}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4439, file: !3474, line: 31, baseType: !102, size: 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4439, file: !3474, line: 32, baseType: !477, size: 64, offset: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4439, file: !3474, line: 33, baseType: !254, size: 64, offset: 128)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4439, file: !3474, line: 34, baseType: !212, size: 64, offset: 192)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4439, file: !3474, line: 34, baseType: !212, size: 64, offset: 256)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4439, file: !3474, line: 35, baseType: !254, size: 64, offset: 320)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4439, file: !3474, line: 35, baseType: !254, size: 64, offset: 384)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3473, file: !3474, line: 219, baseType: !4449, size: 64, offset: 7872)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3474, line: 219, flags: DIFlagFwdDecl)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3473, file: !3474, line: 222, baseType: !7, size: 32, offset: 7936)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3473, file: !3474, line: 223, baseType: !4453, size: 64, offset: 8000)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3474, line: 223, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3473, file: !3474, line: 230, baseType: !362, size: 8, offset: 8064)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3473, file: !3474, line: 231, baseType: !322, size: 16, offset: 8080)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3473, file: !3474, line: 232, baseType: !322, size: 16, offset: 8096)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3473, file: !3474, line: 234, baseType: !777, size: 64, offset: 8128)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3473, file: !3474, line: 237, baseType: !827, size: 256, offset: 8192)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3473, file: !3474, line: 243, baseType: !259, size: 320, offset: 8448)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !480, file: !481, line: 1111, baseType: !4462, size: 64, offset: 15424)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3474, line: 20, size: 16640, elements: !4464)
!4464 = !{!4465, !4466, !4467, !4468}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4463, file: !3474, line: 21, baseType: !795, size: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4463, file: !3474, line: 22, baseType: !227, size: 32, offset: 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4463, file: !3474, line: 23, baseType: !878, size: 192, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4463, file: !3474, line: 24, baseType: !4469, size: 16384, offset: 256)
!4469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4470, size: 16384, elements: !1254)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !461, line: 51, size: 256, elements: !4471)
!4471 = !{!4472}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4470, file: !461, line: 52, baseType: !4473, size: 256)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !461, line: 37, size: 256, elements: !4474)
!4474 = !{!4475, !4482, !4483, !4487}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4473, file: !461, line: 39, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4477, line: 83, baseType: !4478)
!4477 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4477, line: 82, baseType: !4480)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{null, !102}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4473, file: !461, line: 40, baseType: !254, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4473, file: !461, line: 46, baseType: !4484, size: 64, offset: 128)
!4484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4477, line: 86, baseType: !4485)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4477, line: 85, baseType: !2434)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4473, file: !461, line: 48, baseType: !3488, size: 64, offset: 192)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !480, file: !481, line: 1112, baseType: !3488, size: 64, offset: 15488)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !480, file: !481, line: 1113, baseType: !3488, size: 64, offset: 15552)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !480, file: !481, line: 1115, baseType: !3488, size: 64, offset: 15616)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !480, file: !481, line: 1116, baseType: !3484, size: 192, offset: 15680)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !480, file: !481, line: 1117, baseType: !254, size: 64, offset: 15872)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !480, file: !481, line: 1118, baseType: !1108, size: 64, offset: 15936)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !480, file: !481, line: 1119, baseType: !7, size: 32, offset: 16000)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !480, file: !481, line: 1121, baseType: !355, size: 64, offset: 16064)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !480, file: !481, line: 1125, baseType: !4497, size: 64, offset: 16128)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !481, line: 43, flags: DIFlagFwdDecl)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !480, file: !481, line: 1127, baseType: !184, size: 32, offset: 16192)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !480, file: !481, line: 1128, baseType: !7, size: 32, offset: 16224)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !480, file: !481, line: 1130, baseType: !4502, size: 128, offset: 16256)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4503, line: 37, size: 128, elements: !4504)
!4503 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4504 = !{!4505, !4506, !4507}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4502, file: !4503, line: 38, baseType: !102, size: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4502, file: !4503, line: 39, baseType: !231, size: 32, offset: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4502, file: !4503, line: 40, baseType: !4508, size: 64, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4503, line: 24, flags: DIFlagFwdDecl)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !480, file: !481, line: 1131, baseType: !4511, size: 256, offset: 16384)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4512, line: 12, size: 256, elements: !4513)
!4512 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4513 = !{!4514, !4515, !4516, !4517}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4511, file: !4512, line: 13, baseType: !375, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4511, file: !4512, line: 14, baseType: !254, size: 64, offset: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4511, file: !4512, line: 15, baseType: !254, size: 64, offset: 128)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4511, file: !4512, line: 16, baseType: !362, size: 8, offset: 192)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !480, file: !481, line: 1134, baseType: !212, size: 64, offset: 16640)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !480, file: !481, line: 1135, baseType: !212, size: 64, offset: 16704)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !480, file: !481, line: 1138, baseType: !795, size: 32, offset: 16768)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !480, file: !481, line: 1141, baseType: !270, size: 32, offset: 16800)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !480, file: !481, line: 1143, baseType: !4523, size: 64, offset: 16832)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !481, line: 735, size: 64, elements: !4524)
!4524 = !{!4525}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4523, file: !481, line: 736, baseType: !4526, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !480, file: !481, line: 1147, baseType: !660, size: 128, offset: 16896)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !480, file: !481, line: 1149, baseType: !479, size: 64, offset: 17024)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !480, file: !481, line: 1151, baseType: !4530, size: 64, offset: 17088)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !481, line: 1151, flags: DIFlagFwdDecl)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !480, file: !481, line: 1188, baseType: !303, size: 64, offset: 17152)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !480, file: !481, line: 1191, baseType: !4534, size: 64, offset: 17216)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !481, line: 44, flags: DIFlagFwdDecl)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !480, file: !481, line: 1194, baseType: !4537, size: 64, offset: 17280)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !481, line: 45, flags: DIFlagFwdDecl)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !480, file: !481, line: 1197, baseType: !4540, size: 64, offset: 17344)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !481, line: 61, flags: DIFlagFwdDecl)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !480, file: !481, line: 1199, baseType: !4543, size: 64, offset: 17408)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4545, line: 99, size: 128, elements: !4546)
!4545 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4546 = !{!4547, !4548, !4549}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4544, file: !4545, line: 100, baseType: !171, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4544, file: !4545, line: 101, baseType: !231, size: 32, offset: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4544, file: !4545, line: 103, baseType: !296, size: 16, offset: 96)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !480, file: !481, line: 1202, baseType: !4551, size: 64, offset: 17472)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !481, line: 48, flags: DIFlagFwdDecl)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !480, file: !481, line: 1205, baseType: !254, size: 64, offset: 17536)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !480, file: !481, line: 1206, baseType: !4555, size: 64, offset: 17600)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !461, line: 14, baseType: !4557)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !461, line: 12, size: 384, elements: !4558)
!4558 = !{!4559}
!4559 = !DIDerivedType(tag: DW_TAG_member, scope: !4557, file: !461, line: 13, baseType: !4560, size: 384)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4557, file: !461, line: 13, size: 384, elements: !4561)
!4561 = !{!4562, !4563, !4564, !4565}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4560, file: !461, line: 13, baseType: !102, size: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4560, file: !461, line: 13, baseType: !102, size: 32, offset: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4560, file: !461, line: 13, baseType: !102, size: 32, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4560, file: !461, line: 13, baseType: !4566, size: 256, offset: 128)
!4566 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4567, line: 37, size: 256, elements: !4568)
!4567 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4568 = !{!4569, !4574, !4587, !4593, !4602, !4629, !4634}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4566, file: !4567, line: 42, baseType: !4570, size: 64)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4566, file: !4567, line: 39, size: 64, elements: !4571)
!4571 = !{!4572, !4573}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4570, file: !4567, line: 40, baseType: !3385, size: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4570, file: !4567, line: 41, baseType: !190, size: 32, offset: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4566, file: !4567, line: 50, baseType: !4575, size: 192)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4566, file: !4567, line: 45, size: 192, elements: !4576)
!4576 = !{!4577, !4579, !4580, !4586}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4575, file: !4567, line: 46, baseType: !4578, size: 32)
!4578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !191, line: 95, baseType: !102)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4575, file: !4567, line: 47, baseType: !102, size: 32, offset: 32)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4575, file: !4567, line: 48, baseType: !4581, size: 64, offset: 64)
!4581 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4567, line: 11, baseType: !4582)
!4582 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4567, line: 8, size: 64, elements: !4583)
!4583 = !{!4584, !4585}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4582, file: !4567, line: 9, baseType: !102, size: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4582, file: !4567, line: 10, baseType: !303, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4575, file: !4567, line: 49, baseType: !102, size: 32, offset: 128)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4566, file: !4567, line: 57, baseType: !4588, size: 128)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4566, file: !4567, line: 53, size: 128, elements: !4589)
!4589 = !{!4590, !4591, !4592}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4588, file: !4567, line: 54, baseType: !3385, size: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4588, file: !4567, line: 55, baseType: !190, size: 32, offset: 32)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4588, file: !4567, line: 56, baseType: !4581, size: 64, offset: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4566, file: !4567, line: 66, baseType: !4594, size: 256)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4566, file: !4567, line: 60, size: 256, elements: !4595)
!4595 = !{!4596, !4597, !4598, !4599, !4601}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4594, file: !4567, line: 61, baseType: !3385, size: 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4594, file: !4567, line: 62, baseType: !190, size: 32, offset: 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4594, file: !4567, line: 63, baseType: !102, size: 32, offset: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4594, file: !4567, line: 64, baseType: !4600, size: 64, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !191, line: 94, baseType: !1107)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4594, file: !4567, line: 65, baseType: !4600, size: 64, offset: 192)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4566, file: !4567, line: 105, baseType: !4603, size: 256)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4566, file: !4567, line: 69, size: 256, elements: !4604)
!4604 = !{!4605, !4606}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4603, file: !4567, line: 70, baseType: !303, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, scope: !4603, file: !4567, line: 79, baseType: !4607, size: 192, offset: 64)
!4607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4603, file: !4567, line: 79, size: 192, elements: !4608)
!4608 = !{!4609, !4610, !4611, !4618, !4623}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4607, file: !4567, line: 81, baseType: !102, size: 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4607, file: !4567, line: 86, baseType: !322, size: 16)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4607, file: !4567, line: 92, baseType: !4612, size: 192)
!4612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4607, file: !4567, line: 88, size: 192, elements: !4613)
!4613 = !{!4614, !4616, !4617}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4612, file: !4567, line: 89, baseType: !4615, size: 64)
!4615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 64, elements: !639)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4612, file: !4567, line: 90, baseType: !303, size: 64, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4612, file: !4567, line: 91, baseType: !303, size: 64, offset: 128)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4607, file: !4567, line: 97, baseType: !4619, size: 96)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4607, file: !4567, line: 94, size: 96, elements: !4620)
!4620 = !{!4621, !4622}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4619, file: !4567, line: 95, baseType: !4615, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4619, file: !4567, line: 96, baseType: !318, size: 32, offset: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4607, file: !4567, line: 103, baseType: !4624, size: 128)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4607, file: !4567, line: 99, size: 128, elements: !4625)
!4625 = !{!4626, !4627, !4628}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4624, file: !4567, line: 100, baseType: !254, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4624, file: !4567, line: 101, baseType: !318, size: 32, offset: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4624, file: !4567, line: 102, baseType: !318, size: 32, offset: 96)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4566, file: !4567, line: 111, baseType: !4630, size: 128)
!4630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4566, file: !4567, line: 108, size: 128, elements: !4631)
!4631 = !{!4632, !4633}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4630, file: !4567, line: 109, baseType: !477, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4630, file: !4567, line: 110, baseType: !102, size: 32, offset: 64)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4566, file: !4567, line: 118, baseType: !4635, size: 128)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4566, file: !4567, line: 114, size: 128, elements: !4636)
!4636 = !{!4637, !4638, !4639}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4635, file: !4567, line: 115, baseType: !303, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4635, file: !4567, line: 116, baseType: !102, size: 32, offset: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4635, file: !4567, line: 117, baseType: !7, size: 32, offset: 96)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !480, file: !481, line: 1208, baseType: !4420, size: 448, offset: 17664)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !480, file: !481, line: 1215, baseType: !212, size: 64, offset: 18112)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !480, file: !481, line: 1217, baseType: !212, size: 64, offset: 18176)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !480, file: !481, line: 1219, baseType: !212, size: 64, offset: 18240)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !480, file: !481, line: 1223, baseType: !4645, size: 64, offset: 18304)
!4645 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4646, line: 99, baseType: !4647)
!4646 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4646, line: 99, size: 64, elements: !4648)
!4648 = !{!4649}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4647, file: !4646, line: 99, baseType: !728, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !480, file: !481, line: 1225, baseType: !923, size: 32, offset: 18368)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !480, file: !481, line: 1226, baseType: !102, size: 32, offset: 18400)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !480, file: !481, line: 1227, baseType: !102, size: 32, offset: 18432)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !480, file: !481, line: 1231, baseType: !4654, size: 64, offset: 18496)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !481, line: 1231, flags: DIFlagFwdDecl)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !480, file: !481, line: 1233, baseType: !244, size: 128, offset: 18560)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !480, file: !481, line: 1240, baseType: !4658, size: 64, offset: 18688)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !481, line: 62, flags: DIFlagFwdDecl)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !480, file: !481, line: 1242, baseType: !4661, size: 64, offset: 18752)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !4663, line: 392, size: 96, elements: !4664)
!4663 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!4664 = !{!4665, !4671, !4673}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4662, file: !4663, line: 393, baseType: !4666, size: 32)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !4663, line: 388, size: 32, elements: !4667)
!4667 = !{!4668}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4666, file: !4663, line: 389, baseType: !4669, size: 32)
!4669 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !4670, line: 46, baseType: !317)
!4670 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !4662, file: !4663, line: 394, baseType: !4672, size: 32, offset: 32)
!4672 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !4670, line: 42, baseType: !238)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !4662, file: !4663, line: 395, baseType: !4669, size: 32, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !480, file: !481, line: 1244, baseType: !244, size: 128, offset: 18816)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !480, file: !481, line: 1245, baseType: !4676, size: 64, offset: 18944)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !481, line: 51, flags: DIFlagFwdDecl)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !480, file: !481, line: 1246, baseType: !827, size: 256, offset: 19008)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !480, file: !481, line: 1247, baseType: !7, size: 32, offset: 19264)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !480, file: !481, line: 1250, baseType: !4681, size: 64, offset: 19328)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !481, line: 57, flags: DIFlagFwdDecl)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !480, file: !481, line: 1251, baseType: !827, size: 256, offset: 19392)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !480, file: !481, line: 1252, baseType: !244, size: 128, offset: 19648)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !480, file: !481, line: 1259, baseType: !1548, size: 64, offset: 19776)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !480, file: !481, line: 1260, baseType: !322, size: 16, offset: 19840)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !480, file: !481, line: 1261, baseType: !322, size: 16, offset: 19856)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !480, file: !481, line: 1314, baseType: !4689, size: 64, offset: 19904)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4691, line: 62, size: 256, align: 256, elements: !4692)
!4691 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4692 = !{!4693, !4694, !4695, !4696, !4697, !4698, !4699}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4690, file: !4691, line: 75, baseType: !318, size: 32)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4690, file: !4691, line: 90, baseType: !318, size: 32, offset: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4690, file: !4691, line: 112, baseType: !213, size: 64, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4690, file: !4691, line: 132, baseType: !318, size: 32, offset: 128)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4690, file: !4691, line: 140, baseType: !318, size: 32, offset: 160)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4690, file: !4691, line: 149, baseType: !318, size: 32, offset: 192)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4690, file: !4691, line: 154, baseType: !4700, offset: 224)
!4700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, elements: !470)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !480, file: !481, line: 1315, baseType: !317, size: 32, offset: 19968)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !480, file: !481, line: 1316, baseType: !317, size: 32, offset: 20000)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !480, file: !481, line: 1321, baseType: !254, size: 64, offset: 20032)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !480, file: !481, line: 1325, baseType: !102, size: 32, offset: 20096)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !480, file: !481, line: 1326, baseType: !102, size: 32, offset: 20128)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !480, file: !481, line: 1327, baseType: !102, size: 32, offset: 20160)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !480, file: !481, line: 1328, baseType: !102, size: 32, offset: 20192)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !480, file: !481, line: 1329, baseType: !352, size: 128, align: 64, offset: 20224)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !480, file: !481, line: 1332, baseType: !4710, size: 128, offset: 20352)
!4710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4711, line: 51, size: 128, elements: !4712)
!4711 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4712 = !{!4713, !4718, !4719}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4710, file: !4711, line: 60, baseType: !4714, size: 64)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4715, line: 7, size: 64, elements: !4716)
!4715 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4716 = !{!4717}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4714, file: !4715, line: 12, baseType: !725, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4710, file: !4711, line: 63, baseType: !362, size: 8, offset: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4710, file: !4711, line: 70, baseType: !362, size: 8, offset: 72)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !480, file: !481, line: 1335, baseType: !3064, size: 64, offset: 20480)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !480, file: !481, line: 1337, baseType: !4722, size: 128, offset: 20544)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4711, line: 39, size: 128, elements: !4723)
!4723 = !{!4724, !4725, !4726}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4722, file: !4711, line: 40, baseType: !1335, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4722, file: !4711, line: 42, baseType: !318, size: 32, offset: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4722, file: !4711, line: 43, baseType: !318, size: 32, offset: 96)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !480, file: !481, line: 1340, baseType: !4728, size: 64, offset: 20672)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !481, line: 69, flags: DIFlagFwdDecl)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !480, file: !481, line: 1351, baseType: !102, size: 32, offset: 20736)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !480, file: !481, line: 1352, baseType: !102, size: 32, offset: 20768)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !480, file: !481, line: 1354, baseType: !254, size: 64, offset: 20800)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !480, file: !481, line: 1364, baseType: !212, size: 64, offset: 20864)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !480, file: !481, line: 1365, baseType: !212, size: 64, offset: 20928)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !480, file: !481, line: 1412, baseType: !254, size: 64, offset: 20992)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !480, file: !481, line: 1453, baseType: !4737, size: 64, offset: 21056)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !481, line: 1453, flags: DIFlagFwdDecl)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !480, file: !481, line: 1457, baseType: !4740, size: 64, offset: 21120)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !135, line: 61, size: 576, elements: !4742)
!4742 = !{!4743, !4744, !4763, !4766, !4767, !4800, !4810}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4741, file: !135, line: 62, baseType: !134, size: 32)
!4744 = !DIDerivedType(tag: DW_TAG_member, scope: !4741, file: !135, line: 64, baseType: !4745, size: 192, offset: 64)
!4745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4741, file: !135, line: 64, size: 192, elements: !4746)
!4746 = !{!4747, !4758}
!4747 = !DIDerivedType(tag: DW_TAG_member, scope: !4745, file: !135, line: 65, baseType: !4748, size: 192)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4745, file: !135, line: 65, size: 192, elements: !4749)
!4749 = !{!4750, !4757}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4748, file: !135, line: 66, baseType: !4751, size: 128)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4752, line: 50, size: 128, elements: !4753)
!4752 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4753 = !{!4754, !4755, !4756}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4751, file: !4752, line: 52, baseType: !254, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4751, file: !4752, line: 54, baseType: !7, size: 32, offset: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4751, file: !4752, line: 55, baseType: !7, size: 32, offset: 96)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4748, file: !135, line: 67, baseType: !254, size: 64, offset: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, scope: !4745, file: !135, line: 70, baseType: !4759, size: 192)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4745, file: !135, line: 70, size: 192, elements: !4760)
!4760 = !{!4761, !4762}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4759, file: !135, line: 71, baseType: !352, size: 128, align: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4759, file: !135, line: 72, baseType: !254, size: 64, offset: 128)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4741, file: !135, line: 76, baseType: !4764, size: 64, offset: 256)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !135, line: 76, flags: DIFlagFwdDecl)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4741, file: !135, line: 77, baseType: !254, size: 64, offset: 320)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4741, file: !135, line: 79, baseType: !4768, size: 64, offset: 384)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4752, line: 25, size: 256, elements: !4770)
!4770 = !{!4771, !4777, !4781}
!4771 = !DIDerivedType(tag: DW_TAG_member, scope: !4769, file: !4752, line: 26, baseType: !4772, size: 128)
!4772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4769, file: !4752, line: 26, size: 128, elements: !4773)
!4773 = !{!4774, !4776}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4772, file: !4752, line: 27, baseType: !4775, size: 128)
!4775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 128, elements: !2826)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4772, file: !4752, line: 28, baseType: !4775, size: 128)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4769, file: !4752, line: 31, baseType: !4778, size: 64, offset: 128)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4780)
!4780 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4752, line: 23, flags: DIFlagFwdDecl)
!4781 = !DIDerivedType(tag: DW_TAG_member, scope: !4769, file: !4752, line: 33, baseType: !4782, size: 64, offset: 192)
!4782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4769, file: !4752, line: 33, size: 64, elements: !4783)
!4783 = !{!4784, !4790, !4795}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4782, file: !4752, line: 38, baseType: !4785, size: 64)
!4785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4782, file: !4752, line: 34, size: 64, elements: !4786)
!4786 = !{!4787, !4788, !4789}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4785, file: !4752, line: 35, baseType: !238, size: 32)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4785, file: !4752, line: 36, baseType: !287, size: 8, offset: 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4785, file: !4752, line: 37, baseType: !287, size: 8, offset: 40)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4782, file: !4752, line: 42, baseType: !4791, size: 16)
!4791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4782, file: !4752, line: 39, size: 16, elements: !4792)
!4792 = !{!4793, !4794}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4791, file: !4752, line: 40, baseType: !287, size: 8)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4791, file: !4752, line: 41, baseType: !287, size: 8, offset: 8)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4782, file: !4752, line: 46, baseType: !4796, size: 16)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4782, file: !4752, line: 43, size: 16, elements: !4797)
!4797 = !{!4798, !4799}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4796, file: !4752, line: 44, baseType: !287, size: 8)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4796, file: !4752, line: 45, baseType: !287, size: 8, offset: 8)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4741, file: !135, line: 81, baseType: !4801, size: 64, offset: 448)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !135, line: 85, size: 384, elements: !4803)
!4803 = !{!4804, !4805, !4806, !4807, !4808, !4809}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4802, file: !135, line: 86, baseType: !4764, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4802, file: !135, line: 87, baseType: !254, size: 64, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4802, file: !135, line: 88, baseType: !254, size: 64, offset: 128)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4802, file: !135, line: 89, baseType: !254, size: 64, offset: 192)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4802, file: !135, line: 90, baseType: !362, size: 8, offset: 256)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4802, file: !135, line: 92, baseType: !4801, size: 64, offset: 320)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4741, file: !135, line: 82, baseType: !7, size: 32, offset: 512)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !480, file: !481, line: 1463, baseType: !4812, offset: 21184)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !481, line: 739, elements: !806)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !480, file: !481, line: 1470, baseType: !352, size: 128, align: 64, offset: 21184)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !480, file: !481, line: 1471, baseType: !227, size: 32, offset: 21312)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !480, file: !481, line: 1472, baseType: !102, size: 32, offset: 21344)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !480, file: !481, line: 1474, baseType: !479, size: 64, offset: 21376)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !480, file: !481, line: 1475, baseType: !2318, size: 320, offset: 21440)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !480, file: !481, line: 1478, baseType: !4819, size: 64, offset: 21760)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4821, line: 49, size: 512, elements: !4822)
!4821 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4822 = !{!4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4832}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4820, file: !4821, line: 50, baseType: !4819, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4820, file: !4821, line: 51, baseType: !303, size: 64, offset: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4820, file: !4821, line: 52, baseType: !254, size: 64, offset: 128)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4820, file: !4821, line: 53, baseType: !254, size: 64, offset: 192)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4820, file: !4821, line: 54, baseType: !1722, size: 64, offset: 256)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4820, file: !4821, line: 56, baseType: !7, size: 32, offset: 320)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4820, file: !4821, line: 58, baseType: !7, size: 32, offset: 352)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4820, file: !4821, line: 59, baseType: !4831, size: 64, offset: 384)
!4831 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !174, line: 159, baseType: !212)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4820, file: !4821, line: 60, baseType: !1901, size: 64, offset: 448)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !480, file: !481, line: 1482, baseType: !227, size: 32, offset: 21824)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !480, file: !481, line: 1489, baseType: !303, size: 64, offset: 21888)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !480, file: !481, line: 1504, baseType: !303, size: 64, offset: 21952)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !480, file: !481, line: 1505, baseType: !213, size: 64, offset: 22016)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !480, file: !481, line: 1506, baseType: !212, size: 64, offset: 22080)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !480, file: !481, line: 1507, baseType: !213, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !480, file: !481, line: 1508, baseType: !213, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !480, file: !481, line: 1509, baseType: !213, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !480, file: !481, line: 1510, baseType: !352, size: 128, align: 64, offset: 22208)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !480, file: !481, line: 1511, baseType: !102, size: 32, offset: 22336)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !480, file: !481, line: 1515, baseType: !4071, size: 64, offset: 22400)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !480, file: !481, line: 1518, baseType: !4071, size: 64, offset: 22464)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !480, file: !481, line: 1528, baseType: !352, size: 128, align: 64, offset: 22528)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !480, file: !481, line: 1552, baseType: !4847, size: 35328, offset: 23040)
!4847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4848, line: 430, size: 35328, elements: !4849)
!4848 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4849 = !{!4850, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4879, !4880, !4881, !4882, !4883, !4884, !4887, !4888, !4889, !4890}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4847, file: !4848, line: 432, baseType: !4851, size: 192)
!4851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4852, size: 192, elements: !861)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4853, line: 16, size: 64, elements: !4854)
!4853 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4854 = !{!4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4852, file: !4853, line: 17, baseType: !294, size: 16)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4852, file: !4853, line: 18, baseType: !294, size: 16, offset: 16)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4852, file: !4853, line: 19, baseType: !294, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4852, file: !4853, line: 19, baseType: !294, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4852, file: !4853, line: 19, baseType: !294, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4852, file: !4853, line: 19, baseType: !294, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4852, file: !4853, line: 19, baseType: !294, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4852, file: !4853, line: 20, baseType: !294, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4852, file: !4853, line: 20, baseType: !294, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4852, file: !4853, line: 20, baseType: !294, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4852, file: !4853, line: 20, baseType: !294, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4852, file: !4853, line: 20, baseType: !294, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4852, file: !4853, line: 20, baseType: !294, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4847, file: !4848, line: 436, baseType: !254, size: 64, offset: 192)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4847, file: !4848, line: 440, baseType: !296, size: 16, offset: 256)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4847, file: !4848, line: 441, baseType: !296, size: 16, offset: 272)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4847, file: !4848, line: 442, baseType: !296, size: 16, offset: 288)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4847, file: !4848, line: 443, baseType: !296, size: 16, offset: 304)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4847, file: !4848, line: 447, baseType: !254, size: 64, offset: 320)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4847, file: !4848, line: 448, baseType: !254, size: 64, offset: 384)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4847, file: !4848, line: 459, baseType: !4876, size: 256, offset: 448)
!4876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4877, size: 256, elements: !385)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4848, line: 428, flags: DIFlagFwdDecl)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4847, file: !4848, line: 461, baseType: !254, size: 64, offset: 704)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4847, file: !4848, line: 463, baseType: !254, size: 64, offset: 768)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4847, file: !4848, line: 465, baseType: !254, size: 64, offset: 832)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4847, file: !4848, line: 466, baseType: !254, size: 64, offset: 896)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4847, file: !4848, line: 467, baseType: !254, size: 64, offset: 960)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4847, file: !4848, line: 473, baseType: !4885, size: 64, offset: 1024)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4848, line: 10, flags: DIFlagFwdDecl)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4847, file: !4848, line: 480, baseType: !254, size: 64, offset: 1088)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4847, file: !4848, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4847, file: !4848, line: 491, baseType: !317, size: 32, offset: 1184)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4847, file: !4848, line: 501, baseType: !4891, size: 33792, offset: 1536)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4892, line: 448, size: 33792, elements: !4893)
!4892 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4893 = !{!4894, !4895, !4896, !5057, !5058, !5064, !5065}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4891, file: !4892, line: 461, baseType: !7, size: 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4891, file: !4892, line: 468, baseType: !254, size: 64, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4891, file: !4892, line: 476, baseType: !4897, size: 64, offset: 128)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4892, line: 356, size: 33280, align: 512, elements: !4899)
!4899 = !{!4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4898, file: !4892, line: 358, baseType: !7, size: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4898, file: !4892, line: 361, baseType: !7, size: 32, offset: 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4898, file: !4892, line: 364, baseType: !212, size: 64, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4898, file: !4892, line: 367, baseType: !212, size: 64, offset: 128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4898, file: !4892, line: 370, baseType: !212, size: 64, offset: 192)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4898, file: !4892, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4898, file: !4892, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4898, file: !4892, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4898, file: !4892, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4898, file: !4892, line: 397, baseType: !4910, size: 32768, offset: 512)
!4910 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4892, line: 348, size: 32768, elements: !4911)
!4911 = !{!4912, !4927, !4964, !5041, !5053}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4910, file: !4892, line: 349, baseType: !4913, size: 896)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4892, line: 12, size: 896, elements: !4914)
!4914 = !{!4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4926}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4913, file: !4892, line: 13, baseType: !317, size: 32)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4913, file: !4892, line: 14, baseType: !317, size: 32, offset: 32)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4913, file: !4892, line: 15, baseType: !317, size: 32, offset: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4913, file: !4892, line: 16, baseType: !317, size: 32, offset: 96)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4913, file: !4892, line: 17, baseType: !317, size: 32, offset: 128)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4913, file: !4892, line: 18, baseType: !317, size: 32, offset: 160)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4913, file: !4892, line: 19, baseType: !317, size: 32, offset: 192)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4913, file: !4892, line: 22, baseType: !4923, size: 640, offset: 224)
!4923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 640, elements: !4924)
!4924 = !{!4925}
!4925 = !DISubrange(count: 20)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4913, file: !4892, line: 25, baseType: !317, size: 32, offset: 864)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4910, file: !4892, line: 350, baseType: !4928, size: 4096, align: 128)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4892, line: 34, size: 4096, align: 128, elements: !4929)
!4929 = !{!4930, !4931, !4932, !4933, !4934, !4949, !4950, !4951, !4953, !4955, !4959}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4928, file: !4892, line: 35, baseType: !294, size: 16)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4928, file: !4892, line: 36, baseType: !294, size: 16, offset: 16)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4928, file: !4892, line: 37, baseType: !294, size: 16, offset: 32)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4928, file: !4892, line: 38, baseType: !294, size: 16, offset: 48)
!4934 = !DIDerivedType(tag: DW_TAG_member, scope: !4928, file: !4892, line: 39, baseType: !4935, size: 128, offset: 64)
!4935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4928, file: !4892, line: 39, size: 128, elements: !4936)
!4936 = !{!4937, !4942}
!4937 = !DIDerivedType(tag: DW_TAG_member, scope: !4935, file: !4892, line: 40, baseType: !4938, size: 128)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4935, file: !4892, line: 40, size: 128, elements: !4939)
!4939 = !{!4940, !4941}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4938, file: !4892, line: 41, baseType: !212, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4938, file: !4892, line: 42, baseType: !212, size: 64, offset: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, scope: !4935, file: !4892, line: 44, baseType: !4943, size: 128)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4935, file: !4892, line: 44, size: 128, elements: !4944)
!4944 = !{!4945, !4946, !4947, !4948}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4943, file: !4892, line: 45, baseType: !317, size: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4943, file: !4892, line: 46, baseType: !317, size: 32, offset: 32)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4943, file: !4892, line: 47, baseType: !317, size: 32, offset: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4943, file: !4892, line: 48, baseType: !317, size: 32, offset: 96)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4928, file: !4892, line: 51, baseType: !317, size: 32, offset: 192)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4928, file: !4892, line: 52, baseType: !317, size: 32, offset: 224)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4928, file: !4892, line: 55, baseType: !4952, size: 1024, offset: 256)
!4952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 1024, elements: !2817)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4928, file: !4892, line: 58, baseType: !4954, size: 2048, offset: 1280)
!4954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 2048, elements: !1254)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4928, file: !4892, line: 60, baseType: !4956, size: 384, offset: 3328)
!4956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 384, elements: !4957)
!4957 = !{!4958}
!4958 = !DISubrange(count: 12)
!4959 = !DIDerivedType(tag: DW_TAG_member, scope: !4928, file: !4892, line: 62, baseType: !4960, size: 384, offset: 3712)
!4960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4928, file: !4892, line: 62, size: 384, elements: !4961)
!4961 = !{!4962, !4963}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4960, file: !4892, line: 63, baseType: !4956, size: 384)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4960, file: !4892, line: 64, baseType: !4956, size: 384)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4910, file: !4892, line: 351, baseType: !4965, size: 1088)
!4965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4892, line: 79, size: 1088, elements: !4966)
!4966 = !{!4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !5040}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4965, file: !4892, line: 80, baseType: !317, size: 32)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4965, file: !4892, line: 81, baseType: !317, size: 32, offset: 32)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4965, file: !4892, line: 82, baseType: !317, size: 32, offset: 64)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4965, file: !4892, line: 83, baseType: !317, size: 32, offset: 96)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4965, file: !4892, line: 84, baseType: !317, size: 32, offset: 128)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4965, file: !4892, line: 85, baseType: !317, size: 32, offset: 160)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4965, file: !4892, line: 86, baseType: !317, size: 32, offset: 192)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4965, file: !4892, line: 88, baseType: !4923, size: 640, offset: 224)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4965, file: !4892, line: 89, baseType: !287, size: 8, offset: 864)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4965, file: !4892, line: 90, baseType: !287, size: 8, offset: 872)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4965, file: !4892, line: 91, baseType: !287, size: 8, offset: 880)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4965, file: !4892, line: 92, baseType: !287, size: 8, offset: 888)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4965, file: !4892, line: 93, baseType: !287, size: 8, offset: 896)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4965, file: !4892, line: 94, baseType: !287, size: 8, offset: 904)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4965, file: !4892, line: 95, baseType: !4982, size: 64, offset: 960)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4984, line: 11, size: 128, elements: !4985)
!4984 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4985 = !{!4986, !4987}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4983, file: !4984, line: 12, baseType: !477, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4983, file: !4984, line: 13, baseType: !4988, size: 64, offset: 64)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4990, line: 103, size: 1344, elements: !4991)
!4990 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4991 = !{!4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5020, !5021, !5022}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4989, file: !4990, line: 109, baseType: !254, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4989, file: !4990, line: 110, baseType: !254, size: 64, offset: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4989, file: !4990, line: 111, baseType: !254, size: 64, offset: 128)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4989, file: !4990, line: 112, baseType: !254, size: 64, offset: 192)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4989, file: !4990, line: 113, baseType: !254, size: 64, offset: 256)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4989, file: !4990, line: 114, baseType: !254, size: 64, offset: 320)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4989, file: !4990, line: 117, baseType: !254, size: 64, offset: 384)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4989, file: !4990, line: 118, baseType: !254, size: 64, offset: 448)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4989, file: !4990, line: 119, baseType: !254, size: 64, offset: 512)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4989, file: !4990, line: 120, baseType: !254, size: 64, offset: 576)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4989, file: !4990, line: 121, baseType: !254, size: 64, offset: 640)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4989, file: !4990, line: 122, baseType: !254, size: 64, offset: 704)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4989, file: !4990, line: 123, baseType: !254, size: 64, offset: 768)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4989, file: !4990, line: 124, baseType: !254, size: 64, offset: 832)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4989, file: !4990, line: 125, baseType: !254, size: 64, offset: 896)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4989, file: !4990, line: 139, baseType: !254, size: 64, offset: 960)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4989, file: !4990, line: 142, baseType: !254, size: 64, offset: 1024)
!5009 = !DIDerivedType(tag: DW_TAG_member, scope: !4989, file: !4990, line: 144, baseType: !5010, size: 64, offset: 1088)
!5010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4989, file: !4990, line: 144, size: 64, elements: !5011)
!5011 = !{!5012, !5013, !5014}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5010, file: !4990, line: 146, baseType: !294, size: 16)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5010, file: !4990, line: 148, baseType: !212, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5010, file: !4990, line: 150, baseType: !5015, size: 64)
!5015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4990, line: 59, size: 64, elements: !5016)
!5016 = !{!5017, !5018, !5019}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5015, file: !4990, line: 61, baseType: !212, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5015, file: !4990, line: 63, baseType: !212, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5015, file: !4990, line: 65, baseType: !212, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4989, file: !4990, line: 153, baseType: !254, size: 64, offset: 1152)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4989, file: !4990, line: 154, baseType: !254, size: 64, offset: 1216)
!5022 = !DIDerivedType(tag: DW_TAG_member, scope: !4989, file: !4990, line: 156, baseType: !5023, size: 64, offset: 1280)
!5023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4989, file: !4990, line: 156, size: 64, elements: !5024)
!5024 = !{!5025, !5026, !5027}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5023, file: !4990, line: 158, baseType: !294, size: 16)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5023, file: !4990, line: 160, baseType: !212, size: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5023, file: !4990, line: 162, baseType: !5028, size: 64)
!5028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4990, line: 69, size: 64, elements: !5029)
!5029 = !{!5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5028, file: !4990, line: 71, baseType: !212, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5028, file: !4990, line: 73, baseType: !212, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5028, file: !4990, line: 75, baseType: !212, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5028, file: !4990, line: 77, baseType: !212, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5028, file: !4990, line: 80, baseType: !212, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5028, file: !4990, line: 83, baseType: !212, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5028, file: !4990, line: 86, baseType: !212, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5028, file: !4990, line: 88, baseType: !212, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5028, file: !4990, line: 93, baseType: !212, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5028, file: !4990, line: 100, baseType: !212, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4965, file: !4892, line: 96, baseType: !317, size: 32, offset: 1024)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4910, file: !4892, line: 352, baseType: !5042, size: 4608, align: 512)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4892, line: 333, size: 4608, align: 512, elements: !5043)
!5043 = !{!5044, !5045, !5052}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5042, file: !4892, line: 334, baseType: !4928, size: 4096, align: 128)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5042, file: !4892, line: 335, baseType: !5046, size: 512, offset: 4096)
!5046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4892, line: 312, size: 512, elements: !5047)
!5047 = !{!5048, !5049, !5050}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5046, file: !4892, line: 313, baseType: !212, size: 64)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5046, file: !4892, line: 314, baseType: !212, size: 64, offset: 64)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5046, file: !4892, line: 315, baseType: !5051, size: 384, offset: 128)
!5051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 384, elements: !341)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5042, file: !4892, line: 336, baseType: !4065, offset: 4608)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4910, file: !4892, line: 353, baseType: !5054, size: 32768)
!5054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 32768, elements: !5055)
!5055 = !{!5056}
!5056 = !DISubrange(count: 4096)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4891, file: !4892, line: 484, baseType: !4897, size: 64, offset: 192)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4891, file: !4892, line: 491, baseType: !5059, size: 128, offset: 256)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4892, line: 404, size: 128, elements: !5060)
!5060 = !{!5061, !5062, !5063}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5059, file: !4892, line: 424, baseType: !212, size: 64)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5059, file: !4892, line: 432, baseType: !7, size: 32, offset: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5059, file: !4892, line: 440, baseType: !7, size: 32, offset: 96)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4891, file: !4892, line: 498, baseType: !5059, size: 128, offset: 384)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4891, file: !4892, line: 508, baseType: !4898, size: 33280, align: 512, offset: 512)
!5066 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !174, line: 42, baseType: !254)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !340)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !477)
!5072 = !{!5073, !0, !5075, !5080, !5082, !5087, !5090, !5095, !5097, !5099, !5101, !5103, !5108, !5113, !5115, !5117, !5122, !5127, !5129, !5134, !5136, !5138}
!5073 = !DIGlobalVariableExpression(var: !5074, expr: !DIExpression())
!5074 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_pty__287_947_pty_init6288", scope: !2, file: !3, line: 947, type: !303, isLocal: true, isDefinition: true)
!5075 = !DIGlobalVariableExpression(var: !5076, expr: !DIExpression())
!5076 = distinct !DIGlobalVariable(scope: null, file: !3, line: 882, type: !5077, isLocal: true, isDefinition: true)
!5077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 288, elements: !5078)
!5078 = !{!5079}
!5079 = !DISubrange(count: 36)
!5080 = !DIGlobalVariableExpression(var: !5081, expr: !DIExpression())
!5081 = distinct !DIGlobalVariable(scope: null, file: !3, line: 890, type: !5077, isLocal: true, isDefinition: true)
!5082 = !DIGlobalVariableExpression(var: !5083, expr: !DIExpression())
!5083 = distinct !DIGlobalVariable(scope: null, file: !3, line: 892, type: !5084, isLocal: true, isDefinition: true)
!5084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 88, elements: !5085)
!5085 = !{!5086}
!5086 = !DISubrange(count: 11)
!5087 = !DIGlobalVariableExpression(var: !5088, expr: !DIExpression())
!5088 = distinct !DIGlobalVariable(scope: null, file: !3, line: 893, type: !5089, isLocal: true, isDefinition: true)
!5089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 32, elements: !385)
!5090 = !DIGlobalVariableExpression(var: !5091, expr: !DIExpression())
!5091 = distinct !DIGlobalVariable(scope: null, file: !3, line: 908, type: !5092, isLocal: true, isDefinition: true)
!5092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 80, elements: !5093)
!5093 = !{!5094}
!5094 = !DISubrange(count: 10)
!5095 = !DIGlobalVariableExpression(var: !5096, expr: !DIExpression())
!5096 = distinct !DIGlobalVariable(scope: null, file: !3, line: 909, type: !5089, isLocal: true, isDefinition: true)
!5097 = !DIGlobalVariableExpression(var: !5098, expr: !DIExpression())
!5098 = distinct !DIGlobalVariable(scope: null, file: !3, line: 922, type: !5077, isLocal: true, isDefinition: true)
!5099 = !DIGlobalVariableExpression(var: !5100, expr: !DIExpression())
!5100 = distinct !DIGlobalVariable(scope: null, file: !3, line: 924, type: !5077, isLocal: true, isDefinition: true)
!5101 = !DIGlobalVariableExpression(var: !5102, expr: !DIExpression())
!5102 = distinct !DIGlobalVariable(scope: null, file: !3, line: 932, type: !5092, isLocal: true, isDefinition: true)
!5103 = !DIGlobalVariableExpression(var: !5104, expr: !DIExpression())
!5104 = distinct !DIGlobalVariable(scope: null, file: !3, line: 933, type: !5105, isLocal: true, isDefinition: true)
!5105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 280, elements: !5106)
!5106 = !{!5107}
!5107 = !DISubrange(count: 35)
!5108 = !DIGlobalVariableExpression(var: !5109, expr: !DIExpression())
!5109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 934, type: !5110, isLocal: true, isDefinition: true)
!5110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 40, elements: !5111)
!5111 = !{!5112}
!5112 = !DISubrange(count: 5)
!5113 = !DIGlobalVariableExpression(var: !5114, expr: !DIExpression())
!5114 = distinct !DIGlobalVariable(name: "pts_driver", scope: !2, file: !3, line: 43, type: !3996, isLocal: true, isDefinition: true)
!5115 = !DIGlobalVariableExpression(var: !5116, expr: !DIExpression())
!5116 = distinct !DIGlobalVariable(name: "ptm_unix98_ops", scope: !2, file: !3, line: 745, type: !4166, isLocal: true, isDefinition: true)
!5117 = !DIGlobalVariableExpression(var: !5118, expr: !DIExpression())
!5118 = distinct !DIGlobalVariable(scope: null, file: !147, line: 480, type: !5119, isLocal: true, isDefinition: true)
!5119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 168, elements: !5120)
!5120 = !{!5121}
!5121 = !DISubrange(count: 21)
!5122 = !DIGlobalVariableExpression(var: !5123, expr: !DIExpression())
!5123 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !5124, isLocal: true, isDefinition: true)
!5124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 144, elements: !5125)
!5125 = !{!5126}
!5126 = !DISubrange(count: 18)
!5127 = !DIGlobalVariableExpression(var: !5128, expr: !DIExpression())
!5128 = distinct !DIGlobalVariable(name: "devpts_mutex", scope: !2, file: !3, line: 44, type: !827, isLocal: true, isDefinition: true)
!5129 = !DIGlobalVariableExpression(var: !5130, expr: !DIExpression())
!5130 = distinct !DIGlobalVariable(scope: null, file: !3, line: 742, type: !5131, isLocal: true, isDefinition: true)
!5131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 120, elements: !5132)
!5132 = !{!5133}
!5133 = !DISubrange(count: 15)
!5134 = !DIGlobalVariableExpression(var: !5135, expr: !DIExpression())
!5135 = distinct !DIGlobalVariable(name: "pty_unix98_ops", scope: !2, file: !3, line: 762, type: !4166, isLocal: true, isDefinition: true)
!5136 = !DIGlobalVariableExpression(var: !5137, expr: !DIExpression())
!5137 = distinct !DIGlobalVariable(name: "ptmx_fops", scope: !2, file: !3, line: 871, type: !2980, isLocal: true, isDefinition: true)
!5138 = !DIGlobalVariableExpression(var: !5139, expr: !DIExpression())
!5139 = distinct !DIGlobalVariable(name: "ptmx_cdev", scope: !2, file: !3, line: 590, type: !3115, isLocal: true, isDefinition: true)
!5140 = !{!"rsp"}
!5141 = !{i32 7, !"Dwarf Version", i32 5}
!5142 = !{i32 2, !"Debug Info Version", i32 3}
!5143 = !{i32 1, !"wchar_size", i32 2}
!5144 = !{i32 8, !"cf-protection-branch", i32 1}
!5145 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5146 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5147 = !{i32 1, !"Code Model", i32 2}
!5148 = !{i32 1, !"override-stack-alignment", i32 8}
!5149 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5150 = distinct !DISubprogram(name: "ptm_open_peer", scope: !3, file: !3, line: 602, type: !5151, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5153)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{!102, !813, !3538, !102}
!5153 = !{!5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162}
!5154 = !DILocalVariable(name: "master", arg: 1, scope: !5150, file: !3, line: 602, type: !813)
!5155 = !DILocalVariable(name: "tty", arg: 2, scope: !5150, file: !3, line: 602, type: !3538)
!5156 = !DILocalVariable(name: "flags", arg: 3, scope: !5150, file: !3, line: 602, type: !102)
!5157 = !DILocalVariable(name: "fd", scope: !5150, file: !3, line: 604, type: !102)
!5158 = !DILocalVariable(name: "filp", scope: !5150, file: !3, line: 605, type: !813)
!5159 = !DILocalVariable(name: "retval", scope: !5150, file: !3, line: 606, type: !102)
!5160 = !DILocalVariable(name: "path", scope: !5150, file: !3, line: 607, type: !908)
!5161 = !DILabel(scope: !5150, name: "err_put", file: !3, line: 636)
!5162 = !DILabel(scope: !5150, name: "err", file: !3, line: 638)
!5163 = !DILocation(line: 602, column: 32, scope: !5150)
!5164 = !DILocation(line: 602, column: 59, scope: !5150)
!5165 = !DILocation(line: 602, column: 68, scope: !5150)
!5166 = !DILocation(line: 604, column: 2, scope: !5150)
!5167 = !DILocation(line: 604, column: 6, scope: !5150)
!5168 = !DILocation(line: 605, column: 2, scope: !5150)
!5169 = !DILocation(line: 605, column: 15, scope: !5150)
!5170 = !DILocation(line: 606, column: 2, scope: !5150)
!5171 = !DILocation(line: 606, column: 6, scope: !5150)
!5172 = !DILocation(line: 607, column: 2, scope: !5150)
!5173 = !DILocation(line: 607, column: 14, scope: !5150)
!5174 = !DILocation(line: 609, column: 6, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 609, column: 6)
!5176 = !DILocation(line: 609, column: 11, scope: !5175)
!5177 = !DILocation(line: 609, column: 21, scope: !5175)
!5178 = !DILocation(line: 609, column: 18, scope: !5175)
!5179 = !DILocation(line: 609, column: 6, scope: !5150)
!5180 = !DILocation(line: 610, column: 3, scope: !5175)
!5181 = !DILocation(line: 612, column: 27, scope: !5150)
!5182 = !DILocation(line: 612, column: 7, scope: !5150)
!5183 = !DILocation(line: 612, column: 5, scope: !5150)
!5184 = !DILocation(line: 613, column: 6, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 613, column: 6)
!5186 = !DILocation(line: 613, column: 9, scope: !5185)
!5187 = !DILocation(line: 613, column: 6, scope: !5150)
!5188 = !DILocation(line: 614, column: 12, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 613, column: 14)
!5190 = !DILocation(line: 614, column: 10, scope: !5189)
!5191 = !DILocation(line: 615, column: 3, scope: !5189)
!5192 = !DILocation(line: 619, column: 27, scope: !5150)
!5193 = !DILocation(line: 619, column: 35, scope: !5150)
!5194 = !DILocation(line: 619, column: 40, scope: !5150)
!5195 = !DILocation(line: 619, column: 13, scope: !5150)
!5196 = !DILocation(line: 619, column: 7, scope: !5150)
!5197 = !DILocation(line: 619, column: 11, scope: !5150)
!5198 = !DILocation(line: 620, column: 18, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 620, column: 6)
!5200 = !DILocation(line: 620, column: 6, scope: !5199)
!5201 = !DILocation(line: 620, column: 6, scope: !5150)
!5202 = !DILocation(line: 621, column: 25, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 620, column: 24)
!5204 = !DILocation(line: 621, column: 12, scope: !5203)
!5205 = !DILocation(line: 621, column: 10, scope: !5203)
!5206 = !DILocation(line: 622, column: 3, scope: !5203)
!5207 = !DILocation(line: 624, column: 16, scope: !5150)
!5208 = !DILocation(line: 624, column: 21, scope: !5150)
!5209 = !DILocation(line: 624, column: 27, scope: !5150)
!5210 = !DILocation(line: 624, column: 7, scope: !5150)
!5211 = !DILocation(line: 624, column: 14, scope: !5150)
!5212 = !DILocation(line: 626, column: 28, scope: !5150)
!5213 = !DILocation(line: 626, column: 35, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 626, column: 35)
!5215 = !DILocation(line: 626, column: 35, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 626, column: 35)
!5217 = !DILocation(line: 626, column: 9, scope: !5150)
!5218 = !DILocation(line: 626, column: 7, scope: !5150)
!5219 = !DILocation(line: 627, column: 14, scope: !5150)
!5220 = !DILocation(line: 627, column: 2, scope: !5150)
!5221 = !DILocation(line: 628, column: 13, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 628, column: 6)
!5223 = !DILocation(line: 628, column: 6, scope: !5222)
!5224 = !DILocation(line: 628, column: 6, scope: !5150)
!5225 = !DILocation(line: 629, column: 20, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 628, column: 20)
!5227 = !DILocation(line: 629, column: 12, scope: !5226)
!5228 = !DILocation(line: 629, column: 10, scope: !5226)
!5229 = !DILocation(line: 630, column: 3, scope: !5226)
!5230 = !DILocation(line: 633, column: 13, scope: !5150)
!5231 = !DILocation(line: 633, column: 17, scope: !5150)
!5232 = !DILocation(line: 633, column: 2, scope: !5150)
!5233 = !DILocation(line: 634, column: 9, scope: !5150)
!5234 = !DILocation(line: 634, column: 2, scope: !5150)
!5235 = !DILocation(line: 636, column: 1, scope: !5150)
!5236 = !DILocation(line: 637, column: 16, scope: !5150)
!5237 = !DILocation(line: 637, column: 2, scope: !5150)
!5238 = !DILocation(line: 638, column: 1, scope: !5150)
!5239 = !DILocation(line: 639, column: 9, scope: !5150)
!5240 = !DILocation(line: 639, column: 2, scope: !5150)
!5241 = !DILocation(line: 640, column: 1, scope: !5150)
!5242 = !DISubprogram(name: "get_unused_fd_flags", scope: !5243, file: !5243, line: 91, type: !5244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5243 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!5244 = !DISubroutineType(types: !5245)
!5245 = !{!102, !7}
!5246 = !DISubprogram(name: "devpts_mntget", scope: !5247, file: !5247, line: 19, type: !5248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5247 = !DIFile(filename: "./include/linux/devpts_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53ae61dc943614fcd7703319f076e709")
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!912, !813, !5250}
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DICompositeType(tag: DW_TAG_structure_type, name: "pts_fs_info", file: !5247, line: 17, flags: DIFlagFwdDecl)
!5252 = distinct !DISubprogram(name: "IS_ERR", scope: !5253, file: !5253, line: 59, type: !5254, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5256)
!5253 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!362, !1901}
!5256 = !{!5257}
!5257 = !DILocalVariable(name: "ptr", arg: 1, scope: !5252, file: !5253, line: 59, type: !1901)
!5258 = !DILocation(line: 59, column: 60, scope: !5252)
!5259 = !DILocation(line: 61, column: 9, scope: !5252)
!5260 = !DILocation(line: 61, column: 2, scope: !5252)
!5261 = distinct !DISubprogram(name: "PTR_ERR", scope: !5253, file: !5253, line: 49, type: !5262, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5264)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!477, !1901}
!5264 = !{!5265}
!5265 = !DILocalVariable(name: "ptr", arg: 1, scope: !5261, file: !5253, line: 49, type: !1901)
!5266 = !DILocation(line: 49, column: 61, scope: !5261)
!5267 = !DILocation(line: 51, column: 16, scope: !5261)
!5268 = !DILocation(line: 51, column: 9, scope: !5261)
!5269 = !DILocation(line: 51, column: 2, scope: !5261)
!5270 = !DISubprogram(name: "dentry_open", scope: !59, file: !59, line: 2514, type: !5271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{!813, !1074, !102, !165}
!5273 = distinct !DISubprogram(name: "get_current", scope: !5274, file: !5274, line: 39, type: !5275, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5277)
!5274 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!479}
!5277 = !{!5278, !5280, !5282}
!5278 = !DILocalVariable(name: "pscr_ret__", scope: !5279, file: !5274, line: 41, type: !479)
!5279 = distinct !DILexicalBlock(scope: !5273, file: !5274, line: 41, column: 9)
!5280 = !DILocalVariable(name: "__vpp_verify", scope: !5281, file: !5274, line: 41, type: !1901)
!5281 = distinct !DILexicalBlock(scope: !5279, file: !5274, line: 41, column: 9)
!5282 = !DILocalVariable(name: "pfo_val__", scope: !5283, file: !5274, line: 41, type: !212)
!5283 = distinct !DILexicalBlock(scope: !5279, file: !5274, line: 41, column: 9)
!5284 = !DILocation(line: 41, column: 9, scope: !5279)
!5285 = !DILocation(line: 41, column: 9, scope: !5281)
!5286 = !DILocation(line: 41, column: 9, scope: !5283)
!5287 = !{i64 2148555420}
!5288 = !DILocation(line: 41, column: 9, scope: !5273)
!5289 = !DILocation(line: 41, column: 2, scope: !5273)
!5290 = !DISubprogram(name: "mntput", scope: !914, file: !914, line: 87, type: !5291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{null, !912}
!5293 = !DISubprogram(name: "fd_install", scope: !5243, file: !5243, line: 97, type: !5294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{null, !7, !813}
!5296 = !DISubprogram(name: "put_unused_fd", scope: !5243, file: !5243, line: 92, type: !5297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{null, !7}
!5299 = distinct !DISubprogram(name: "__initstub__kmod_pty__287_947_pty_init6", scope: !3, file: !3, line: 947, type: !2188, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5300 = !DILocation(line: 947, column: 1, scope: !5299)
!5301 = distinct !DISubprogram(name: "pty_init", scope: !3, file: !3, line: 941, type: !2188, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5302 = !DILocation(line: 943, column: 2, scope: !5301)
!5303 = !DILocation(line: 944, column: 2, scope: !5301)
!5304 = !DILocation(line: 945, column: 2, scope: !5301)
!5305 = distinct !DISubprogram(name: "legacy_pty_init", scope: !3, file: !3, line: 585, type: !2434, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5306 = !DILocation(line: 585, column: 44, scope: !5305)
!5307 = distinct !DISubprogram(name: "unix98_pty_init", scope: !3, file: !3, line: 873, type: !2434, scopeLine: 874, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5308 = !DILocation(line: 875, column: 15, scope: !5307)
!5309 = !DILocation(line: 875, column: 13, scope: !5307)
!5310 = !DILocation(line: 881, column: 13, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 881, column: 6)
!5312 = !DILocation(line: 881, column: 6, scope: !5311)
!5313 = !DILocation(line: 881, column: 6, scope: !5307)
!5314 = !DILocation(line: 882, column: 3, scope: !5311)
!5315 = !DILocation(line: 883, column: 15, scope: !5307)
!5316 = !DILocation(line: 883, column: 13, scope: !5307)
!5317 = !DILocation(line: 889, column: 13, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 889, column: 6)
!5319 = !DILocation(line: 889, column: 6, scope: !5318)
!5320 = !DILocation(line: 889, column: 6, scope: !5307)
!5321 = !DILocation(line: 890, column: 3, scope: !5318)
!5322 = !DILocation(line: 892, column: 2, scope: !5307)
!5323 = !DILocation(line: 892, column: 14, scope: !5307)
!5324 = !DILocation(line: 892, column: 26, scope: !5307)
!5325 = !DILocation(line: 893, column: 2, scope: !5307)
!5326 = !DILocation(line: 893, column: 14, scope: !5307)
!5327 = !DILocation(line: 893, column: 19, scope: !5307)
!5328 = !DILocation(line: 894, column: 2, scope: !5307)
!5329 = !DILocation(line: 894, column: 14, scope: !5307)
!5330 = !DILocation(line: 894, column: 20, scope: !5307)
!5331 = !DILocation(line: 895, column: 2, scope: !5307)
!5332 = !DILocation(line: 895, column: 14, scope: !5307)
!5333 = !DILocation(line: 895, column: 26, scope: !5307)
!5334 = !DILocation(line: 896, column: 2, scope: !5307)
!5335 = !DILocation(line: 896, column: 14, scope: !5307)
!5336 = !DILocation(line: 896, column: 19, scope: !5307)
!5337 = !DILocation(line: 897, column: 2, scope: !5307)
!5338 = !DILocation(line: 897, column: 14, scope: !5307)
!5339 = !DILocation(line: 897, column: 22, scope: !5307)
!5340 = !DILocation(line: 898, column: 2, scope: !5307)
!5341 = !DILocation(line: 898, column: 14, scope: !5307)
!5342 = !DILocation(line: 898, column: 29, scope: !5307)
!5343 = !DILocation(line: 899, column: 2, scope: !5307)
!5344 = !DILocation(line: 899, column: 14, scope: !5307)
!5345 = !DILocation(line: 899, column: 27, scope: !5307)
!5346 = !DILocation(line: 899, column: 35, scope: !5307)
!5347 = !DILocation(line: 900, column: 2, scope: !5307)
!5348 = !DILocation(line: 900, column: 14, scope: !5307)
!5349 = !DILocation(line: 900, column: 27, scope: !5307)
!5350 = !DILocation(line: 900, column: 35, scope: !5307)
!5351 = !DILocation(line: 901, column: 2, scope: !5307)
!5352 = !DILocation(line: 901, column: 14, scope: !5307)
!5353 = !DILocation(line: 901, column: 27, scope: !5307)
!5354 = !DILocation(line: 901, column: 35, scope: !5307)
!5355 = !DILocation(line: 902, column: 2, scope: !5307)
!5356 = !DILocation(line: 902, column: 14, scope: !5307)
!5357 = !DILocation(line: 902, column: 27, scope: !5307)
!5358 = !DILocation(line: 902, column: 35, scope: !5307)
!5359 = !DILocation(line: 903, column: 2, scope: !5307)
!5360 = !DILocation(line: 903, column: 14, scope: !5307)
!5361 = !DILocation(line: 903, column: 27, scope: !5307)
!5362 = !DILocation(line: 903, column: 36, scope: !5307)
!5363 = !DILocation(line: 904, column: 2, scope: !5307)
!5364 = !DILocation(line: 904, column: 14, scope: !5307)
!5365 = !DILocation(line: 904, column: 27, scope: !5307)
!5366 = !DILocation(line: 904, column: 36, scope: !5307)
!5367 = !DILocation(line: 905, column: 22, scope: !5307)
!5368 = !DILocation(line: 905, column: 2, scope: !5307)
!5369 = !DILocation(line: 905, column: 14, scope: !5307)
!5370 = !DILocation(line: 905, column: 20, scope: !5307)
!5371 = !DILocation(line: 906, column: 21, scope: !5307)
!5372 = !DILocation(line: 906, column: 2, scope: !5307)
!5373 = !DILocation(line: 908, column: 2, scope: !5307)
!5374 = !DILocation(line: 908, column: 14, scope: !5307)
!5375 = !DILocation(line: 908, column: 26, scope: !5307)
!5376 = !DILocation(line: 909, column: 2, scope: !5307)
!5377 = !DILocation(line: 909, column: 14, scope: !5307)
!5378 = !DILocation(line: 909, column: 19, scope: !5307)
!5379 = !DILocation(line: 910, column: 2, scope: !5307)
!5380 = !DILocation(line: 910, column: 14, scope: !5307)
!5381 = !DILocation(line: 910, column: 20, scope: !5307)
!5382 = !DILocation(line: 911, column: 2, scope: !5307)
!5383 = !DILocation(line: 911, column: 14, scope: !5307)
!5384 = !DILocation(line: 911, column: 26, scope: !5307)
!5385 = !DILocation(line: 912, column: 2, scope: !5307)
!5386 = !DILocation(line: 912, column: 14, scope: !5307)
!5387 = !DILocation(line: 912, column: 19, scope: !5307)
!5388 = !DILocation(line: 913, column: 2, scope: !5307)
!5389 = !DILocation(line: 913, column: 14, scope: !5307)
!5390 = !DILocation(line: 913, column: 22, scope: !5307)
!5391 = !DILocation(line: 914, column: 2, scope: !5307)
!5392 = !DILocation(line: 914, column: 14, scope: !5307)
!5393 = !DILocation(line: 914, column: 29, scope: !5307)
!5394 = !DILocation(line: 915, column: 2, scope: !5307)
!5395 = !DILocation(line: 915, column: 14, scope: !5307)
!5396 = !DILocation(line: 915, column: 27, scope: !5307)
!5397 = !DILocation(line: 915, column: 35, scope: !5307)
!5398 = !DILocation(line: 916, column: 2, scope: !5307)
!5399 = !DILocation(line: 916, column: 14, scope: !5307)
!5400 = !DILocation(line: 916, column: 27, scope: !5307)
!5401 = !DILocation(line: 916, column: 36, scope: !5307)
!5402 = !DILocation(line: 917, column: 2, scope: !5307)
!5403 = !DILocation(line: 917, column: 14, scope: !5307)
!5404 = !DILocation(line: 917, column: 27, scope: !5307)
!5405 = !DILocation(line: 917, column: 36, scope: !5307)
!5406 = !DILocation(line: 918, column: 22, scope: !5307)
!5407 = !DILocation(line: 918, column: 2, scope: !5307)
!5408 = !DILocation(line: 918, column: 14, scope: !5307)
!5409 = !DILocation(line: 918, column: 20, scope: !5307)
!5410 = !DILocation(line: 919, column: 21, scope: !5307)
!5411 = !DILocation(line: 919, column: 2, scope: !5307)
!5412 = !DILocation(line: 921, column: 26, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 921, column: 6)
!5414 = !DILocation(line: 921, column: 6, scope: !5413)
!5415 = !DILocation(line: 921, column: 6, scope: !5307)
!5416 = !DILocation(line: 922, column: 3, scope: !5413)
!5417 = !DILocation(line: 923, column: 26, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 923, column: 6)
!5419 = !DILocation(line: 923, column: 6, scope: !5418)
!5420 = !DILocation(line: 923, column: 6, scope: !5307)
!5421 = !DILocation(line: 924, column: 3, scope: !5418)
!5422 = !DILocation(line: 927, column: 2, scope: !5307)
!5423 = !DILocation(line: 928, column: 17, scope: !5307)
!5424 = !DILocation(line: 930, column: 2, scope: !5307)
!5425 = !DILocation(line: 931, column: 6, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 931, column: 6)
!5427 = !DILocation(line: 931, column: 54, scope: !5426)
!5428 = !DILocation(line: 932, column: 6, scope: !5426)
!5429 = !DILocation(line: 932, column: 69, scope: !5426)
!5430 = !DILocation(line: 931, column: 6, scope: !5307)
!5431 = !DILocation(line: 933, column: 3, scope: !5426)
!5432 = !DILocation(line: 934, column: 2, scope: !5307)
!5433 = !DILocation(line: 935, column: 1, scope: !5307)
!5434 = !DISubprogram(name: "__tty_alloc_driver", scope: !3998, file: !3998, line: 476, type: !5435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5435 = !DISubroutineType(types: !5436)
!5436 = !{!3996, !7, !1198, !254}
!5437 = !DISubprogram(name: "panic", scope: !5438, file: !5438, line: 12, type: !5439, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5438 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!5439 = !DISubroutineType(types: !5440)
!5440 = !{null, !365, null}
!5441 = distinct !DISubprogram(name: "tty_set_operations", scope: !3998, file: !3998, line: 492, type: !5442, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5444)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{null, !3996, !4165}
!5444 = !{!5445, !5446}
!5445 = !DILocalVariable(name: "driver", arg: 1, scope: !5441, file: !3998, line: 492, type: !3996)
!5446 = !DILocalVariable(name: "op", arg: 2, scope: !5441, file: !3998, line: 493, type: !4165)
!5447 = !DILocation(line: 492, column: 58, scope: !5441)
!5448 = !DILocation(line: 493, column: 32, scope: !5441)
!5449 = !DILocation(line: 495, column: 16, scope: !5441)
!5450 = !DILocation(line: 495, column: 2, scope: !5441)
!5451 = !DILocation(line: 495, column: 10, scope: !5441)
!5452 = !DILocation(line: 495, column: 14, scope: !5441)
!5453 = !DILocation(line: 496, column: 1, scope: !5441)
!5454 = !DISubprogram(name: "tty_register_driver", scope: !3998, file: !3998, line: 576, type: !5455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{!102, !3996}
!5457 = !DISubprogram(name: "tty_default_fops", scope: !5458, file: !5458, line: 84, type: !5459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5458 = !DIFile(filename: "drivers/tty/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d8857947502225b017f036ab4ca6cb4")
!5459 = !DISubroutineType(types: !5460)
!5460 = !{null, !5461}
!5461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!5462 = distinct !DISubprogram(name: "ptmx_open", scope: !3, file: !3, line: 790, type: !3032, scopeLine: 791, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5463)
!5463 = !{!5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474}
!5464 = !DILocalVariable(name: "inode", arg: 1, scope: !5462, file: !3, line: 790, type: !952)
!5465 = !DILocalVariable(name: "filp", arg: 2, scope: !5462, file: !3, line: 790, type: !813)
!5466 = !DILocalVariable(name: "fsi", scope: !5462, file: !3, line: 792, type: !5250)
!5467 = !DILocalVariable(name: "tty", scope: !5462, file: !3, line: 793, type: !3538)
!5468 = !DILocalVariable(name: "dentry", scope: !5462, file: !3, line: 794, type: !917)
!5469 = !DILocalVariable(name: "retval", scope: !5462, file: !3, line: 795, type: !102)
!5470 = !DILocalVariable(name: "index", scope: !5462, file: !3, line: 796, type: !102)
!5471 = !DILabel(scope: !5462, name: "err_release", file: !3, line: 857)
!5472 = !DILabel(scope: !5462, name: "out", file: !3, line: 862)
!5473 = !DILabel(scope: !5462, name: "out_put_fsi", file: !3, line: 864)
!5474 = !DILabel(scope: !5462, name: "out_free_file", file: !3, line: 866)
!5475 = !DILocation(line: 790, column: 36, scope: !5462)
!5476 = !DILocation(line: 790, column: 56, scope: !5462)
!5477 = !DILocation(line: 792, column: 2, scope: !5462)
!5478 = !DILocation(line: 792, column: 22, scope: !5462)
!5479 = !DILocation(line: 793, column: 2, scope: !5462)
!5480 = !DILocation(line: 793, column: 21, scope: !5462)
!5481 = !DILocation(line: 794, column: 2, scope: !5462)
!5482 = !DILocation(line: 794, column: 17, scope: !5462)
!5483 = !DILocation(line: 795, column: 2, scope: !5462)
!5484 = !DILocation(line: 795, column: 6, scope: !5462)
!5485 = !DILocation(line: 796, column: 2, scope: !5462)
!5486 = !DILocation(line: 796, column: 6, scope: !5462)
!5487 = !DILocation(line: 798, column: 19, scope: !5462)
!5488 = !DILocation(line: 798, column: 26, scope: !5462)
!5489 = !DILocation(line: 798, column: 2, scope: !5462)
!5490 = !DILocation(line: 801, column: 2, scope: !5462)
!5491 = !DILocation(line: 801, column: 8, scope: !5462)
!5492 = !DILocation(line: 801, column: 15, scope: !5462)
!5493 = !DILocation(line: 803, column: 26, scope: !5462)
!5494 = !DILocation(line: 803, column: 11, scope: !5462)
!5495 = !DILocation(line: 803, column: 9, scope: !5462)
!5496 = !DILocation(line: 804, column: 6, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 804, column: 6)
!5498 = !DILocation(line: 804, column: 6, scope: !5462)
!5499 = !DILocation(line: 805, column: 10, scope: !5497)
!5500 = !DILocation(line: 805, column: 3, scope: !5497)
!5501 = !DILocation(line: 807, column: 23, scope: !5462)
!5502 = !DILocation(line: 807, column: 8, scope: !5462)
!5503 = !DILocation(line: 807, column: 6, scope: !5462)
!5504 = !DILocation(line: 808, column: 13, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 808, column: 6)
!5506 = !DILocation(line: 808, column: 6, scope: !5505)
!5507 = !DILocation(line: 808, column: 6, scope: !5462)
!5508 = !DILocation(line: 809, column: 20, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 808, column: 19)
!5510 = !DILocation(line: 809, column: 12, scope: !5509)
!5511 = !DILocation(line: 809, column: 10, scope: !5509)
!5512 = !DILocation(line: 810, column: 3, scope: !5509)
!5513 = !DILocation(line: 814, column: 2, scope: !5462)
!5514 = !DILocation(line: 815, column: 27, scope: !5462)
!5515 = !DILocation(line: 815, column: 10, scope: !5462)
!5516 = !DILocation(line: 815, column: 8, scope: !5462)
!5517 = !DILocation(line: 816, column: 2, scope: !5462)
!5518 = !DILocation(line: 818, column: 11, scope: !5462)
!5519 = !DILocation(line: 818, column: 9, scope: !5462)
!5520 = !DILocation(line: 819, column: 6, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 819, column: 6)
!5522 = !DILocation(line: 819, column: 12, scope: !5521)
!5523 = !DILocation(line: 819, column: 6, scope: !5462)
!5524 = !DILocation(line: 820, column: 3, scope: !5521)
!5525 = !DILocation(line: 823, column: 2, scope: !5462)
!5526 = !DILocation(line: 824, column: 21, scope: !5462)
!5527 = !DILocation(line: 824, column: 33, scope: !5462)
!5528 = !DILocation(line: 824, column: 8, scope: !5462)
!5529 = !DILocation(line: 824, column: 6, scope: !5462)
!5530 = !DILocation(line: 827, column: 2, scope: !5462)
!5531 = !DILocation(line: 829, column: 19, scope: !5462)
!5532 = !DILocation(line: 829, column: 11, scope: !5462)
!5533 = !DILocation(line: 829, column: 9, scope: !5462)
!5534 = !DILocation(line: 830, column: 13, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 830, column: 6)
!5536 = !DILocation(line: 830, column: 6, scope: !5535)
!5537 = !DILocation(line: 830, column: 6, scope: !5462)
!5538 = !DILocation(line: 831, column: 3, scope: !5535)
!5539 = !DILocation(line: 837, column: 25, scope: !5462)
!5540 = !DILocation(line: 837, column: 30, scope: !5462)
!5541 = !DILocation(line: 837, column: 2, scope: !5462)
!5542 = !DILocation(line: 838, column: 21, scope: !5462)
!5543 = !DILocation(line: 838, column: 2, scope: !5462)
!5544 = !DILocation(line: 838, column: 7, scope: !5462)
!5545 = !DILocation(line: 838, column: 19, scope: !5462)
!5546 = !DILocation(line: 840, column: 15, scope: !5462)
!5547 = !DILocation(line: 840, column: 20, scope: !5462)
!5548 = !DILocation(line: 840, column: 2, scope: !5462)
!5549 = !DILocation(line: 842, column: 26, scope: !5462)
!5550 = !DILocation(line: 842, column: 31, scope: !5462)
!5551 = !DILocation(line: 842, column: 38, scope: !5462)
!5552 = !DILocation(line: 842, column: 43, scope: !5462)
!5553 = !DILocation(line: 842, column: 11, scope: !5462)
!5554 = !DILocation(line: 842, column: 9, scope: !5462)
!5555 = !DILocation(line: 843, column: 13, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 843, column: 6)
!5557 = !DILocation(line: 843, column: 6, scope: !5556)
!5558 = !DILocation(line: 843, column: 6, scope: !5462)
!5559 = !DILocation(line: 844, column: 20, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 843, column: 22)
!5561 = !DILocation(line: 844, column: 12, scope: !5560)
!5562 = !DILocation(line: 844, column: 10, scope: !5560)
!5563 = !DILocation(line: 845, column: 3, scope: !5560)
!5564 = !DILocation(line: 847, column: 27, scope: !5462)
!5565 = !DILocation(line: 847, column: 2, scope: !5462)
!5566 = !DILocation(line: 847, column: 7, scope: !5462)
!5567 = !DILocation(line: 847, column: 13, scope: !5462)
!5568 = !DILocation(line: 847, column: 25, scope: !5462)
!5569 = !DILocation(line: 849, column: 11, scope: !5462)
!5570 = !DILocation(line: 849, column: 23, scope: !5462)
!5571 = !DILocation(line: 849, column: 28, scope: !5462)
!5572 = !DILocation(line: 849, column: 33, scope: !5462)
!5573 = !DILocation(line: 849, column: 38, scope: !5462)
!5574 = !DILocation(line: 849, column: 9, scope: !5462)
!5575 = !DILocation(line: 850, column: 6, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 850, column: 6)
!5577 = !DILocation(line: 850, column: 6, scope: !5462)
!5578 = !DILocation(line: 851, column: 3, scope: !5576)
!5579 = !DILocation(line: 853, column: 2, scope: !5462)
!5580 = !DILocation(line: 853, column: 2, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 853, column: 2)
!5582 = !DILocation(line: 855, column: 13, scope: !5462)
!5583 = !DILocation(line: 855, column: 2, scope: !5462)
!5584 = !DILocation(line: 856, column: 2, scope: !5462)
!5585 = !DILocation(line: 857, column: 1, scope: !5462)
!5586 = !DILocation(line: 858, column: 13, scope: !5462)
!5587 = !DILocation(line: 858, column: 2, scope: !5462)
!5588 = !DILocation(line: 860, column: 14, scope: !5462)
!5589 = !DILocation(line: 860, column: 21, scope: !5462)
!5590 = !DILocation(line: 860, column: 2, scope: !5462)
!5591 = !DILocation(line: 861, column: 9, scope: !5462)
!5592 = !DILocation(line: 861, column: 2, scope: !5462)
!5593 = !DILocation(line: 862, column: 1, scope: !5462)
!5594 = !DILocation(line: 863, column: 20, scope: !5462)
!5595 = !DILocation(line: 863, column: 25, scope: !5462)
!5596 = !DILocation(line: 863, column: 2, scope: !5462)
!5597 = !DILocation(line: 864, column: 1, scope: !5462)
!5598 = !DILocation(line: 865, column: 17, scope: !5462)
!5599 = !DILocation(line: 865, column: 2, scope: !5462)
!5600 = !DILocation(line: 866, column: 1, scope: !5462)
!5601 = !DILocation(line: 867, column: 16, scope: !5462)
!5602 = !DILocation(line: 867, column: 2, scope: !5462)
!5603 = !DILocation(line: 868, column: 9, scope: !5462)
!5604 = !DILocation(line: 868, column: 2, scope: !5462)
!5605 = !DILocation(line: 869, column: 1, scope: !5462)
!5606 = !DISubprogram(name: "cdev_init", scope: !3116, file: !3116, line: 23, type: !5607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5607 = !DISubroutineType(types: !5608)
!5608 = !{null, !3114, !2978}
!5609 = !DISubprogram(name: "cdev_add", scope: !3116, file: !3116, line: 29, type: !5610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{!102, !3114, !1027, !7}
!5612 = !DISubprogram(name: "register_chrdev_region", scope: !59, file: !59, line: 2593, type: !5613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5613 = !DISubroutineType(types: !5614)
!5614 = !{!102, !1027, !7, !365}
!5615 = !DISubprogram(name: "device_create", scope: !87, file: !87, line: 1181, type: !5616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5616 = !DISubroutineType(types: !5617)
!5617 = !{!3545, !3943, !3545, !1027, !303, !365, null}
!5618 = distinct !DISubprogram(name: "ptm_unix98_lookup", scope: !3, file: !3, line: 688, type: !4171, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5619)
!5619 = !{!5620, !5621, !5622}
!5620 = !DILocalVariable(name: "driver", arg: 1, scope: !5618, file: !3, line: 688, type: !3996)
!5621 = !DILocalVariable(name: "file", arg: 2, scope: !5618, file: !3, line: 689, type: !813)
!5622 = !DILocalVariable(name: "idx", arg: 3, scope: !5618, file: !3, line: 689, type: !102)
!5623 = !DILocation(line: 688, column: 64, scope: !5618)
!5624 = !DILocation(line: 689, column: 16, scope: !5618)
!5625 = !DILocation(line: 689, column: 26, scope: !5618)
!5626 = !DILocation(line: 692, column: 9, scope: !5618)
!5627 = !DILocation(line: 692, column: 2, scope: !5618)
!5628 = distinct !DISubprogram(name: "pty_unix98_install", scope: !3, file: !3, line: 719, type: !4175, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5629)
!5629 = !{!5630, !5631}
!5630 = !DILocalVariable(name: "driver", arg: 1, scope: !5628, file: !3, line: 719, type: !3996)
!5631 = !DILocalVariable(name: "tty", arg: 2, scope: !5628, file: !3, line: 719, type: !3538)
!5632 = !DILocation(line: 719, column: 50, scope: !5628)
!5633 = !DILocation(line: 719, column: 77, scope: !5628)
!5634 = !DILocation(line: 721, column: 28, scope: !5628)
!5635 = !DILocation(line: 721, column: 36, scope: !5628)
!5636 = !DILocation(line: 721, column: 9, scope: !5628)
!5637 = !DILocation(line: 721, column: 2, scope: !5628)
!5638 = distinct !DISubprogram(name: "pty_unix98_remove", scope: !3, file: !3, line: 725, type: !4179, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5639)
!5639 = !{!5640, !5641, !5642}
!5640 = !DILocalVariable(name: "driver", arg: 1, scope: !5638, file: !3, line: 725, type: !3996)
!5641 = !DILocalVariable(name: "tty", arg: 2, scope: !5638, file: !3, line: 725, type: !3538)
!5642 = !DILocalVariable(name: "fsi", scope: !5638, file: !3, line: 727, type: !5250)
!5643 = !DILocation(line: 725, column: 50, scope: !5638)
!5644 = !DILocation(line: 725, column: 77, scope: !5638)
!5645 = !DILocation(line: 727, column: 2, scope: !5638)
!5646 = !DILocation(line: 727, column: 22, scope: !5638)
!5647 = !DILocation(line: 729, column: 6, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 729, column: 6)
!5649 = !DILocation(line: 729, column: 11, scope: !5648)
!5650 = !DILocation(line: 729, column: 19, scope: !5648)
!5651 = !DILocation(line: 729, column: 27, scope: !5648)
!5652 = !DILocation(line: 729, column: 6, scope: !5638)
!5653 = !DILocation(line: 730, column: 9, scope: !5648)
!5654 = !DILocation(line: 730, column: 14, scope: !5648)
!5655 = !DILocation(line: 730, column: 7, scope: !5648)
!5656 = !DILocation(line: 730, column: 3, scope: !5648)
!5657 = !DILocation(line: 732, column: 9, scope: !5648)
!5658 = !DILocation(line: 732, column: 14, scope: !5648)
!5659 = !DILocation(line: 732, column: 20, scope: !5648)
!5660 = !DILocation(line: 732, column: 7, scope: !5648)
!5661 = !DILocation(line: 734, column: 6, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 734, column: 6)
!5663 = !DILocation(line: 734, column: 6, scope: !5638)
!5664 = !DILocation(line: 735, column: 21, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 734, column: 11)
!5666 = !DILocation(line: 735, column: 26, scope: !5665)
!5667 = !DILocation(line: 735, column: 31, scope: !5665)
!5668 = !DILocation(line: 735, column: 3, scope: !5665)
!5669 = !DILocation(line: 736, column: 18, scope: !5665)
!5670 = !DILocation(line: 736, column: 3, scope: !5665)
!5671 = !DILocation(line: 737, column: 2, scope: !5665)
!5672 = !DILocation(line: 738, column: 1, scope: !5638)
!5673 = distinct !DISubprogram(name: "pty_open", scope: !3, file: !3, line: 220, type: !4183, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5674)
!5674 = !{!5675, !5676, !5677}
!5675 = !DILocalVariable(name: "tty", arg: 1, scope: !5673, file: !3, line: 220, type: !3538)
!5676 = !DILocalVariable(name: "filp", arg: 2, scope: !5673, file: !3, line: 220, type: !813)
!5677 = !DILabel(scope: !5673, name: "out", file: !3, line: 237)
!5678 = !DILocation(line: 220, column: 40, scope: !5673)
!5679 = !DILocation(line: 220, column: 58, scope: !5673)
!5680 = !DILocation(line: 222, column: 7, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5673, file: !3, line: 222, column: 6)
!5682 = !DILocation(line: 222, column: 11, scope: !5681)
!5683 = !DILocation(line: 222, column: 15, scope: !5681)
!5684 = !DILocation(line: 222, column: 20, scope: !5681)
!5685 = !DILocation(line: 222, column: 6, scope: !5673)
!5686 = !DILocation(line: 223, column: 3, scope: !5681)
!5687 = !DILocation(line: 225, column: 6, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5673, file: !3, line: 225, column: 6)
!5689 = !DILocation(line: 225, column: 6, scope: !5673)
!5690 = !DILocation(line: 226, column: 3, scope: !5688)
!5691 = !DILocation(line: 227, column: 6, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5673, file: !3, line: 227, column: 6)
!5693 = !DILocation(line: 227, column: 6, scope: !5673)
!5694 = !DILocation(line: 228, column: 3, scope: !5692)
!5695 = !DILocation(line: 229, column: 6, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5673, file: !3, line: 229, column: 6)
!5697 = !DILocation(line: 229, column: 11, scope: !5696)
!5698 = !DILocation(line: 229, column: 19, scope: !5696)
!5699 = !DILocation(line: 229, column: 27, scope: !5696)
!5700 = !DILocation(line: 229, column: 45, scope: !5696)
!5701 = !DILocation(line: 229, column: 48, scope: !5696)
!5702 = !DILocation(line: 229, column: 53, scope: !5696)
!5703 = !DILocation(line: 229, column: 59, scope: !5696)
!5704 = !DILocation(line: 229, column: 65, scope: !5696)
!5705 = !DILocation(line: 229, column: 6, scope: !5673)
!5706 = !DILocation(line: 230, column: 3, scope: !5696)
!5707 = !DILocation(line: 232, column: 27, scope: !5673)
!5708 = !DILocation(line: 232, column: 32, scope: !5673)
!5709 = !DILocation(line: 232, column: 2, scope: !5673)
!5710 = !DILocation(line: 233, column: 31, scope: !5673)
!5711 = !DILocation(line: 233, column: 36, scope: !5673)
!5712 = !DILocation(line: 233, column: 42, scope: !5673)
!5713 = !DILocation(line: 233, column: 2, scope: !5673)
!5714 = !DILocation(line: 234, column: 26, scope: !5673)
!5715 = !DILocation(line: 234, column: 31, scope: !5673)
!5716 = !DILocation(line: 234, column: 2, scope: !5673)
!5717 = !DILocation(line: 235, column: 2, scope: !5673)
!5718 = !DILocation(line: 237, column: 1, scope: !5673)
!5719 = !DILocation(line: 238, column: 25, scope: !5673)
!5720 = !DILocation(line: 238, column: 30, scope: !5673)
!5721 = !DILocation(line: 238, column: 2, scope: !5673)
!5722 = !DILocation(line: 239, column: 2, scope: !5673)
!5723 = !DILocation(line: 240, column: 1, scope: !5673)
!5724 = distinct !DISubprogram(name: "pty_close", scope: !3, file: !3, line: 47, type: !4187, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5725)
!5725 = !{!5726, !5727, !5728, !5731}
!5726 = !DILocalVariable(name: "tty", arg: 1, scope: !5724, file: !3, line: 47, type: !3538)
!5727 = !DILocalVariable(name: "filp", arg: 2, scope: !5724, file: !3, line: 47, type: !813)
!5728 = !DILocalVariable(name: "__ret_warn_on", scope: !5729, file: !3, line: 50, type: !102)
!5729 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 50, column: 3)
!5730 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 49, column: 6)
!5731 = !DILocalVariable(name: "__flags", scope: !5732, file: !3, line: 50, type: !102)
!5732 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 50, column: 3)
!5733 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 50, column: 3)
!5734 = !DILocation(line: 47, column: 42, scope: !5724)
!5735 = !DILocation(line: 47, column: 60, scope: !5724)
!5736 = !DILocation(line: 49, column: 6, scope: !5730)
!5737 = !DILocation(line: 49, column: 11, scope: !5730)
!5738 = !DILocation(line: 49, column: 19, scope: !5730)
!5739 = !DILocation(line: 49, column: 27, scope: !5730)
!5740 = !DILocation(line: 49, column: 6, scope: !5724)
!5741 = !DILocation(line: 50, column: 3, scope: !5729)
!5742 = !DILocation(line: 50, column: 3, scope: !5733)
!5743 = !DILocation(line: 50, column: 3, scope: !5732)
!5744 = !DILocation(line: 50, column: 3, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 50, column: 3)
!5746 = !DILocation(line: 50, column: 3, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 50, column: 3)
!5748 = !{i64 2154914904, i64 2154914933, i64 2154914979, i64 2154915037, i64 2154915091, i64 2154915145, i64 2154915200, i64 2154915231, i64 2154915539, i64 2154915545, i64 2154915592, i64 2154915615, i64 2154915641}
!5749 = !DILocation(line: 50, column: 3, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 50, column: 3)
!5751 = !DILocation(line: 50, column: 3, scope: !5730)
!5752 = !DILocation(line: 52, column: 20, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 52, column: 7)
!5754 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 51, column: 7)
!5755 = !DILocation(line: 52, column: 7, scope: !5753)
!5756 = !DILocation(line: 52, column: 7, scope: !5754)
!5757 = !DILocation(line: 53, column: 4, scope: !5753)
!5758 = !DILocation(line: 54, column: 7, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 54, column: 7)
!5760 = !DILocation(line: 54, column: 12, scope: !5759)
!5761 = !DILocation(line: 54, column: 18, scope: !5759)
!5762 = !DILocation(line: 54, column: 7, scope: !5754)
!5763 = !DILocation(line: 55, column: 4, scope: !5759)
!5764 = !DILocation(line: 57, column: 25, scope: !5724)
!5765 = !DILocation(line: 57, column: 30, scope: !5724)
!5766 = !DILocation(line: 57, column: 2, scope: !5724)
!5767 = !DILocation(line: 58, column: 2, scope: !5724)
!5768 = !DILocation(line: 59, column: 2, scope: !5724)
!5769 = !DILocation(line: 60, column: 17, scope: !5724)
!5770 = !DILocation(line: 60, column: 22, scope: !5724)
!5771 = !DILocation(line: 60, column: 27, scope: !5724)
!5772 = !DILocation(line: 60, column: 2, scope: !5724)
!5773 = !DILocation(line: 61, column: 2, scope: !5724)
!5774 = !DILocation(line: 61, column: 7, scope: !5724)
!5775 = !DILocation(line: 61, column: 12, scope: !5724)
!5776 = !DILocation(line: 61, column: 19, scope: !5724)
!5777 = !DILocation(line: 62, column: 19, scope: !5724)
!5778 = !DILocation(line: 62, column: 24, scope: !5724)
!5779 = !DILocation(line: 62, column: 29, scope: !5724)
!5780 = !DILocation(line: 62, column: 2, scope: !5724)
!5781 = !DILocation(line: 64, column: 7, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 64, column: 6)
!5783 = !DILocation(line: 64, column: 12, scope: !5782)
!5784 = !DILocation(line: 64, column: 6, scope: !5724)
!5785 = !DILocation(line: 65, column: 3, scope: !5782)
!5786 = !DILocation(line: 66, column: 29, scope: !5724)
!5787 = !DILocation(line: 66, column: 34, scope: !5724)
!5788 = !DILocation(line: 66, column: 40, scope: !5724)
!5789 = !DILocation(line: 66, column: 2, scope: !5724)
!5790 = !DILocation(line: 67, column: 2, scope: !5724)
!5791 = !DILocation(line: 68, column: 2, scope: !5724)
!5792 = !DILocation(line: 69, column: 6, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 69, column: 6)
!5794 = !DILocation(line: 69, column: 11, scope: !5793)
!5795 = !DILocation(line: 69, column: 19, scope: !5793)
!5796 = !DILocation(line: 69, column: 27, scope: !5793)
!5797 = !DILocation(line: 69, column: 6, scope: !5724)
!5798 = !DILocation(line: 70, column: 30, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 69, column: 47)
!5800 = !DILocation(line: 70, column: 35, scope: !5799)
!5801 = !DILocation(line: 70, column: 3, scope: !5799)
!5802 = !DILocation(line: 72, column: 7, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 72, column: 7)
!5804 = !DILocation(line: 72, column: 12, scope: !5803)
!5805 = !DILocation(line: 72, column: 22, scope: !5803)
!5806 = !DILocation(line: 72, column: 19, scope: !5803)
!5807 = !DILocation(line: 72, column: 7, scope: !5799)
!5808 = !DILocation(line: 73, column: 4, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 72, column: 34)
!5810 = !DILocation(line: 74, column: 8, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 74, column: 8)
!5812 = !DILocation(line: 74, column: 13, scope: !5811)
!5813 = !DILocation(line: 74, column: 19, scope: !5811)
!5814 = !DILocation(line: 74, column: 8, scope: !5809)
!5815 = !DILocation(line: 75, column: 21, scope: !5811)
!5816 = !DILocation(line: 75, column: 26, scope: !5811)
!5817 = !DILocation(line: 75, column: 32, scope: !5811)
!5818 = !DILocation(line: 75, column: 5, scope: !5811)
!5819 = !DILocation(line: 76, column: 4, scope: !5809)
!5820 = !DILocation(line: 77, column: 3, scope: !5809)
!5821 = !DILocation(line: 79, column: 15, scope: !5799)
!5822 = !DILocation(line: 79, column: 20, scope: !5799)
!5823 = !DILocation(line: 79, column: 3, scope: !5799)
!5824 = !DILocation(line: 80, column: 2, scope: !5799)
!5825 = !DILocation(line: 81, column: 1, scope: !5724)
!5826 = distinct !DISubprogram(name: "pty_cleanup", scope: !3, file: !3, line: 431, type: !4191, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5827)
!5827 = !{!5828}
!5828 = !DILocalVariable(name: "tty", arg: 1, scope: !5826, file: !3, line: 431, type: !3538)
!5829 = !DILocation(line: 431, column: 44, scope: !5826)
!5830 = !DILocation(line: 433, column: 15, scope: !5826)
!5831 = !DILocation(line: 433, column: 20, scope: !5826)
!5832 = !DILocation(line: 433, column: 2, scope: !5826)
!5833 = !DILocation(line: 434, column: 1, scope: !5826)
!5834 = distinct !DISubprogram(name: "pty_write", scope: !3, file: !3, line: 111, type: !4196, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5835)
!5835 = !{!5836, !5837, !5838, !5839}
!5836 = !DILocalVariable(name: "tty", arg: 1, scope: !5834, file: !3, line: 111, type: !3538)
!5837 = !DILocalVariable(name: "buf", arg: 2, scope: !5834, file: !3, line: 111, type: !4110)
!5838 = !DILocalVariable(name: "c", arg: 3, scope: !5834, file: !3, line: 111, type: !1108)
!5839 = !DILocalVariable(name: "to", scope: !5834, file: !3, line: 113, type: !3538)
!5840 = !DILocation(line: 111, column: 45, scope: !5834)
!5841 = !DILocation(line: 111, column: 60, scope: !5834)
!5842 = !DILocation(line: 111, column: 72, scope: !5834)
!5843 = !DILocation(line: 113, column: 2, scope: !5834)
!5844 = !DILocation(line: 113, column: 21, scope: !5834)
!5845 = !DILocation(line: 113, column: 26, scope: !5834)
!5846 = !DILocation(line: 113, column: 31, scope: !5834)
!5847 = !DILocation(line: 115, column: 6, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5834, file: !3, line: 115, column: 6)
!5849 = !DILocation(line: 115, column: 11, scope: !5848)
!5850 = !DILocation(line: 115, column: 16, scope: !5848)
!5851 = !{i8 0, i8 2}
!5852 = !DILocation(line: 115, column: 24, scope: !5848)
!5853 = !DILocation(line: 115, column: 28, scope: !5848)
!5854 = !DILocation(line: 115, column: 6, scope: !5834)
!5855 = !DILocation(line: 116, column: 3, scope: !5848)
!5856 = !DILocation(line: 118, column: 48, scope: !5834)
!5857 = !DILocation(line: 118, column: 52, scope: !5834)
!5858 = !DILocation(line: 118, column: 58, scope: !5834)
!5859 = !DILocation(line: 118, column: 63, scope: !5834)
!5860 = !DILocation(line: 118, column: 9, scope: !5834)
!5861 = !DILocation(line: 118, column: 2, scope: !5834)
!5862 = !DILocation(line: 119, column: 1, scope: !5834)
!5863 = distinct !DISubprogram(name: "pty_write_room", scope: !3, file: !3, line: 129, type: !4205, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5864)
!5864 = !{!5865}
!5865 = !DILocalVariable(name: "tty", arg: 1, scope: !5863, file: !3, line: 129, type: !3538)
!5866 = !DILocation(line: 129, column: 55, scope: !5863)
!5867 = !DILocation(line: 131, column: 6, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 131, column: 6)
!5869 = !DILocation(line: 131, column: 11, scope: !5868)
!5870 = !DILocation(line: 131, column: 16, scope: !5868)
!5871 = !DILocation(line: 131, column: 6, scope: !5863)
!5872 = !DILocation(line: 132, column: 3, scope: !5868)
!5873 = !DILocation(line: 133, column: 32, scope: !5863)
!5874 = !DILocation(line: 133, column: 37, scope: !5863)
!5875 = !DILocation(line: 133, column: 43, scope: !5863)
!5876 = !DILocation(line: 133, column: 9, scope: !5863)
!5877 = !DILocation(line: 133, column: 2, scope: !5863)
!5878 = !DILocation(line: 134, column: 1, scope: !5863)
!5879 = distinct !DISubprogram(name: "pty_unix98_ioctl", scope: !3, file: !3, line: 642, type: !4210, scopeLine: 644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5880)
!5880 = !{!5881, !5882, !5883, !5884, !5888, !5889, !5890, !5891}
!5881 = !DILocalVariable(name: "tty", arg: 1, scope: !5879, file: !3, line: 642, type: !3538)
!5882 = !DILocalVariable(name: "cmd", arg: 2, scope: !5879, file: !3, line: 643, type: !7)
!5883 = !DILocalVariable(name: "arg", arg: 3, scope: !5879, file: !3, line: 643, type: !254)
!5884 = !DILocalVariable(name: "__ret_pu", scope: !5885, file: !3, line: 655, type: !102)
!5885 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 655, column: 10)
!5886 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 655, column: 10)
!5887 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 645, column: 15)
!5888 = !DILocalVariable(name: "__ptr_pu", scope: !5885, file: !3, line: 655, type: !303)
!5889 = !DILocalVariable(name: "__val_pu", scope: !5885, file: !3, line: 655, type: !7)
!5890 = !DILocalVariable(name: "__x", scope: !5885, file: !3, line: 655, type: !7)
!5891 = !DILocalVariable(name: "__ptr", scope: !5885, file: !3, line: 655, type: !2168)
!5892 = !DILocation(line: 642, column: 48, scope: !5879)
!5893 = !DILocation(line: 643, column: 21, scope: !5879)
!5894 = !DILocation(line: 643, column: 40, scope: !5879)
!5895 = !DILocation(line: 645, column: 10, scope: !5879)
!5896 = !DILocation(line: 645, column: 2, scope: !5879)
!5897 = !DILocation(line: 647, column: 23, scope: !5887)
!5898 = !DILocation(line: 647, column: 42, scope: !5887)
!5899 = !DILocation(line: 647, column: 28, scope: !5887)
!5900 = !DILocation(line: 647, column: 10, scope: !5887)
!5901 = !DILocation(line: 647, column: 3, scope: !5887)
!5902 = !DILocation(line: 649, column: 23, scope: !5887)
!5903 = !DILocation(line: 649, column: 42, scope: !5887)
!5904 = !DILocation(line: 649, column: 28, scope: !5887)
!5905 = !DILocation(line: 649, column: 10, scope: !5887)
!5906 = !DILocation(line: 649, column: 3, scope: !5887)
!5907 = !DILocation(line: 651, column: 26, scope: !5887)
!5908 = !DILocation(line: 651, column: 45, scope: !5887)
!5909 = !DILocation(line: 651, column: 31, scope: !5887)
!5910 = !DILocation(line: 651, column: 10, scope: !5887)
!5911 = !DILocation(line: 651, column: 3, scope: !5887)
!5912 = !DILocation(line: 653, column: 26, scope: !5887)
!5913 = !DILocation(line: 653, column: 45, scope: !5887)
!5914 = !DILocation(line: 653, column: 31, scope: !5887)
!5915 = !DILocation(line: 653, column: 10, scope: !5887)
!5916 = !DILocation(line: 653, column: 3, scope: !5887)
!5917 = !DILocation(line: 655, column: 10, scope: !5886)
!5918 = !DILocation(line: 655, column: 10, scope: !5885)
!5919 = !{i64 2154933788}
!5920 = !DILocation(line: 655, column: 10, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 655, column: 10)
!5922 = !DILocation(line: 655, column: 10, scope: !5887)
!5923 = !DILocation(line: 655, column: 3, scope: !5887)
!5924 = !DILocation(line: 657, column: 21, scope: !5887)
!5925 = !DILocation(line: 657, column: 32, scope: !5887)
!5926 = !DILocation(line: 657, column: 26, scope: !5887)
!5927 = !DILocation(line: 657, column: 10, scope: !5887)
!5928 = !DILocation(line: 657, column: 3, scope: !5887)
!5929 = !DILocation(line: 660, column: 2, scope: !5879)
!5930 = !DILocation(line: 661, column: 1, scope: !5879)
!5931 = distinct !DISubprogram(name: "pty_unix98_compat_ioctl", scope: !3, file: !3, line: 664, type: !4214, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5932)
!5932 = !{!5933, !5934, !5935}
!5933 = !DILocalVariable(name: "tty", arg: 1, scope: !5931, file: !3, line: 664, type: !3538)
!5934 = !DILocalVariable(name: "cmd", arg: 2, scope: !5931, file: !3, line: 665, type: !7)
!5935 = !DILocalVariable(name: "arg", arg: 3, scope: !5931, file: !3, line: 665, type: !254)
!5936 = !DILocation(line: 664, column: 56, scope: !5931)
!5937 = !DILocation(line: 665, column: 19, scope: !5931)
!5938 = !DILocation(line: 665, column: 38, scope: !5931)
!5939 = !DILocation(line: 671, column: 26, scope: !5931)
!5940 = !DILocation(line: 671, column: 31, scope: !5931)
!5941 = !DILocation(line: 672, column: 3, scope: !5931)
!5942 = !DILocation(line: 672, column: 7, scope: !5931)
!5943 = !DILocation(line: 672, column: 20, scope: !5931)
!5944 = !DILocation(line: 672, column: 52, scope: !5931)
!5945 = !DILocation(line: 672, column: 41, scope: !5931)
!5946 = !DILocation(line: 672, column: 26, scope: !5931)
!5947 = !DILocation(line: 671, column: 9, scope: !5931)
!5948 = !DILocation(line: 671, column: 2, scope: !5931)
!5949 = distinct !DISubprogram(name: "pty_unthrottle", scope: !3, file: !3, line: 93, type: !4191, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5950)
!5950 = !{!5951}
!5951 = !DILocalVariable(name: "tty", arg: 1, scope: !5949, file: !3, line: 93, type: !3538)
!5952 = !DILocation(line: 93, column: 47, scope: !5949)
!5953 = !DILocation(line: 95, column: 13, scope: !5949)
!5954 = !DILocation(line: 95, column: 18, scope: !5949)
!5955 = !DILocation(line: 95, column: 2, scope: !5949)
!5956 = !DILocation(line: 96, column: 26, scope: !5949)
!5957 = !DILocation(line: 96, column: 31, scope: !5949)
!5958 = !DILocation(line: 96, column: 2, scope: !5949)
!5959 = !DILocation(line: 97, column: 1, scope: !5949)
!5960 = distinct !DISubprogram(name: "pty_flush_buffer", scope: !3, file: !3, line: 204, type: !4191, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5961)
!5961 = !{!5962, !5963}
!5962 = !DILocalVariable(name: "tty", arg: 1, scope: !5960, file: !3, line: 204, type: !3538)
!5963 = !DILocalVariable(name: "to", scope: !5960, file: !3, line: 206, type: !3538)
!5964 = !DILocation(line: 204, column: 49, scope: !5960)
!5965 = !DILocation(line: 206, column: 2, scope: !5960)
!5966 = !DILocation(line: 206, column: 21, scope: !5960)
!5967 = !DILocation(line: 206, column: 26, scope: !5960)
!5968 = !DILocation(line: 206, column: 31, scope: !5960)
!5969 = !DILocation(line: 208, column: 7, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 208, column: 6)
!5971 = !DILocation(line: 208, column: 6, scope: !5960)
!5972 = !DILocation(line: 209, column: 3, scope: !5970)
!5973 = !DILocation(line: 211, column: 19, scope: !5960)
!5974 = !DILocation(line: 211, column: 2, scope: !5960)
!5975 = !DILocation(line: 212, column: 6, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 212, column: 6)
!5977 = !DILocation(line: 212, column: 10, scope: !5976)
!5978 = !DILocation(line: 212, column: 15, scope: !5976)
!5979 = !DILocation(line: 212, column: 6, scope: !5960)
!5980 = !DILocation(line: 213, column: 18, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 212, column: 23)
!5982 = !DILocation(line: 213, column: 23, scope: !5981)
!5983 = !DILocation(line: 213, column: 28, scope: !5981)
!5984 = !DILocation(line: 213, column: 3, scope: !5981)
!5985 = !DILocation(line: 214, column: 3, scope: !5981)
!5986 = !DILocation(line: 214, column: 8, scope: !5981)
!5987 = !DILocation(line: 214, column: 13, scope: !5981)
!5988 = !DILocation(line: 214, column: 23, scope: !5981)
!5989 = !DILocation(line: 215, column: 3, scope: !5981)
!5990 = !DILocation(line: 216, column: 20, scope: !5981)
!5991 = !DILocation(line: 216, column: 25, scope: !5981)
!5992 = !DILocation(line: 216, column: 30, scope: !5981)
!5993 = !DILocation(line: 216, column: 3, scope: !5981)
!5994 = !DILocation(line: 217, column: 2, scope: !5981)
!5995 = !DILocation(line: 218, column: 1, scope: !5960)
!5996 = distinct !DISubprogram(name: "pty_resize", scope: !3, file: !3, line: 283, type: !4252, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5997)
!5997 = !{!5998, !5999, !6000, !6001, !6002, !6003}
!5998 = !DILocalVariable(name: "tty", arg: 1, scope: !5996, file: !3, line: 283, type: !3538)
!5999 = !DILocalVariable(name: "ws", arg: 2, scope: !5996, file: !3, line: 283, type: !4254)
!6000 = !DILocalVariable(name: "pgrp", scope: !5996, file: !3, line: 285, type: !865)
!6001 = !DILocalVariable(name: "rpgrp", scope: !5996, file: !3, line: 285, type: !865)
!6002 = !DILocalVariable(name: "pty", scope: !5996, file: !3, line: 286, type: !3538)
!6003 = !DILabel(scope: !5996, name: "done", file: !3, line: 307)
!6004 = !DILocation(line: 283, column: 42, scope: !5996)
!6005 = !DILocation(line: 283, column: 64, scope: !5996)
!6006 = !DILocation(line: 285, column: 2, scope: !5996)
!6007 = !DILocation(line: 285, column: 14, scope: !5996)
!6008 = !DILocation(line: 285, column: 21, scope: !5996)
!6009 = !DILocation(line: 286, column: 2, scope: !5996)
!6010 = !DILocation(line: 286, column: 21, scope: !5996)
!6011 = !DILocation(line: 286, column: 27, scope: !5996)
!6012 = !DILocation(line: 286, column: 32, scope: !5996)
!6013 = !DILocation(line: 289, column: 14, scope: !5996)
!6014 = !DILocation(line: 289, column: 19, scope: !5996)
!6015 = !DILocation(line: 289, column: 2, scope: !5996)
!6016 = !DILocation(line: 290, column: 14, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !5996, file: !3, line: 290, column: 6)
!6018 = !DILocation(line: 290, column: 19, scope: !6017)
!6019 = !DILocation(line: 290, column: 24, scope: !6017)
!6020 = !DILocation(line: 290, column: 7, scope: !6017)
!6021 = !DILocation(line: 290, column: 6, scope: !5996)
!6022 = !DILocation(line: 291, column: 3, scope: !6017)
!6023 = !DILocation(line: 294, column: 22, scope: !5996)
!6024 = !DILocation(line: 294, column: 9, scope: !5996)
!6025 = !DILocation(line: 294, column: 7, scope: !5996)
!6026 = !DILocation(line: 295, column: 23, scope: !5996)
!6027 = !DILocation(line: 295, column: 10, scope: !5996)
!6028 = !DILocation(line: 295, column: 8, scope: !5996)
!6029 = !DILocation(line: 297, column: 6, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !5996, file: !3, line: 297, column: 6)
!6031 = !DILocation(line: 297, column: 6, scope: !5996)
!6032 = !DILocation(line: 298, column: 13, scope: !6030)
!6033 = !DILocation(line: 298, column: 3, scope: !6030)
!6034 = !DILocation(line: 299, column: 6, scope: !6035)
!6035 = distinct !DILexicalBlock(scope: !5996, file: !3, line: 299, column: 6)
!6036 = !DILocation(line: 299, column: 15, scope: !6035)
!6037 = !DILocation(line: 299, column: 12, scope: !6035)
!6038 = !DILocation(line: 299, column: 20, scope: !6035)
!6039 = !DILocation(line: 299, column: 23, scope: !6035)
!6040 = !DILocation(line: 299, column: 6, scope: !5996)
!6041 = !DILocation(line: 300, column: 13, scope: !6035)
!6042 = !DILocation(line: 300, column: 3, scope: !6035)
!6043 = !DILocation(line: 302, column: 10, scope: !5996)
!6044 = !DILocation(line: 302, column: 2, scope: !5996)
!6045 = !DILocation(line: 303, column: 10, scope: !5996)
!6046 = !DILocation(line: 303, column: 2, scope: !5996)
!6047 = !DILocation(line: 305, column: 2, scope: !5996)
!6048 = !DILocation(line: 305, column: 7, scope: !5996)
!6049 = !DILocation(line: 305, column: 18, scope: !5996)
!6050 = !DILocation(line: 305, column: 17, scope: !5996)
!6051 = !DILocation(line: 306, column: 2, scope: !5996)
!6052 = !DILocation(line: 306, column: 7, scope: !5996)
!6053 = !DILocation(line: 306, column: 18, scope: !5996)
!6054 = !DILocation(line: 306, column: 17, scope: !5996)
!6055 = !DILocation(line: 307, column: 1, scope: !5996)
!6056 = !DILocation(line: 308, column: 16, scope: !5996)
!6057 = !DILocation(line: 308, column: 21, scope: !5996)
!6058 = !DILocation(line: 308, column: 2, scope: !5996)
!6059 = !DILocation(line: 310, column: 1, scope: !5996)
!6060 = !DILocation(line: 309, column: 2, scope: !5996)
!6061 = distinct !DISubprogram(name: "pty_show_fdinfo", scope: !3, file: !3, line: 740, type: !4277, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6062)
!6062 = !{!6063, !6064}
!6063 = !DILocalVariable(name: "tty", arg: 1, scope: !6061, file: !3, line: 740, type: !3538)
!6064 = !DILocalVariable(name: "m", arg: 2, scope: !6061, file: !3, line: 740, type: !1965)
!6065 = !DILocation(line: 740, column: 48, scope: !6061)
!6066 = !DILocation(line: 740, column: 70, scope: !6061)
!6067 = !DILocation(line: 742, column: 13, scope: !6061)
!6068 = !DILocation(line: 742, column: 36, scope: !6061)
!6069 = !DILocation(line: 742, column: 41, scope: !6061)
!6070 = !DILocation(line: 742, column: 2, scope: !6061)
!6071 = !DILocation(line: 743, column: 1, scope: !6061)
!6072 = distinct !DISubprogram(name: "ERR_PTR", scope: !5253, file: !5253, line: 39, type: !6073, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6075)
!6073 = !DISubroutineType(types: !6074)
!6074 = !{!303, !477}
!6075 = !{!6076}
!6076 = !DILocalVariable(name: "error", arg: 1, scope: !6072, file: !5253, line: 39, type: !477)
!6077 = !DILocation(line: 39, column: 48, scope: !6072)
!6078 = !DILocation(line: 41, column: 18, scope: !6072)
!6079 = !DILocation(line: 41, column: 9, scope: !6072)
!6080 = !DILocation(line: 41, column: 2, scope: !6072)
!6081 = distinct !DISubprogram(name: "pty_common_install", scope: !3, file: !3, line: 359, type: !6082, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6084)
!6082 = !DISubroutineType(types: !6083)
!6083 = !{!102, !3996, !3538, !362}
!6084 = !{!6085, !6086, !6087, !6088, !6089, !6091, !6092, !6093, !6094}
!6085 = !DILocalVariable(name: "driver", arg: 1, scope: !6081, file: !3, line: 359, type: !3996)
!6086 = !DILocalVariable(name: "tty", arg: 2, scope: !6081, file: !3, line: 359, type: !3538)
!6087 = !DILocalVariable(name: "legacy", arg: 3, scope: !6081, file: !3, line: 360, type: !362)
!6088 = !DILocalVariable(name: "o_tty", scope: !6081, file: !3, line: 362, type: !3538)
!6089 = !DILocalVariable(name: "ports", scope: !6081, file: !3, line: 363, type: !6090)
!6090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4041, size: 128, elements: !2206)
!6091 = !DILocalVariable(name: "idx", scope: !6081, file: !3, line: 364, type: !102)
!6092 = !DILocalVariable(name: "retval", scope: !6081, file: !3, line: 365, type: !102)
!6093 = !DILabel(scope: !6081, name: "err_put_module", file: !3, line: 423)
!6094 = !DILabel(scope: !6081, name: "err", file: !3, line: 425)
!6095 = !DILocation(line: 359, column: 50, scope: !6081)
!6096 = !DILocation(line: 359, column: 77, scope: !6081)
!6097 = !DILocation(line: 360, column: 8, scope: !6081)
!6098 = !DILocation(line: 362, column: 2, scope: !6081)
!6099 = !DILocation(line: 362, column: 21, scope: !6081)
!6100 = !DILocation(line: 363, column: 2, scope: !6081)
!6101 = !DILocation(line: 363, column: 19, scope: !6081)
!6102 = !DILocation(line: 364, column: 2, scope: !6081)
!6103 = !DILocation(line: 364, column: 6, scope: !6081)
!6104 = !DILocation(line: 364, column: 12, scope: !6081)
!6105 = !DILocation(line: 364, column: 17, scope: !6081)
!6106 = !DILocation(line: 365, column: 2, scope: !6081)
!6107 = !DILocation(line: 365, column: 6, scope: !6081)
!6108 = !DILocation(line: 368, column: 6, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 368, column: 6)
!6110 = !DILocation(line: 368, column: 14, scope: !6109)
!6111 = !DILocation(line: 368, column: 22, scope: !6109)
!6112 = !DILocation(line: 368, column: 6, scope: !6081)
!6113 = !DILocation(line: 369, column: 3, scope: !6109)
!6114 = !DILocation(line: 371, column: 13, scope: !6081)
!6115 = !DILocation(line: 371, column: 2, scope: !6081)
!6116 = !DILocation(line: 371, column: 11, scope: !6081)
!6117 = !DILocation(line: 372, column: 13, scope: !6081)
!6118 = !DILocation(line: 372, column: 2, scope: !6081)
!6119 = !DILocation(line: 372, column: 11, scope: !6081)
!6120 = !DILocation(line: 373, column: 7, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 373, column: 6)
!6122 = !DILocation(line: 373, column: 16, scope: !6121)
!6123 = !DILocation(line: 373, column: 20, scope: !6121)
!6124 = !DILocation(line: 373, column: 6, scope: !6081)
!6125 = !DILocation(line: 374, column: 3, scope: !6121)
!6126 = !DILocation(line: 375, column: 22, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 375, column: 6)
!6128 = !DILocation(line: 375, column: 30, scope: !6127)
!6129 = !DILocation(line: 375, column: 37, scope: !6127)
!6130 = !DILocation(line: 375, column: 7, scope: !6127)
!6131 = !DILocation(line: 375, column: 6, scope: !6081)
!6132 = !DILocation(line: 377, column: 3, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6127, file: !3, line: 375, column: 45)
!6134 = !DILocation(line: 379, column: 27, scope: !6081)
!6135 = !DILocation(line: 379, column: 35, scope: !6081)
!6136 = !DILocation(line: 379, column: 42, scope: !6081)
!6137 = !DILocation(line: 379, column: 10, scope: !6081)
!6138 = !DILocation(line: 379, column: 8, scope: !6081)
!6139 = !DILocation(line: 380, column: 7, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 380, column: 6)
!6141 = !DILocation(line: 380, column: 6, scope: !6081)
!6142 = !DILocation(line: 381, column: 3, scope: !6140)
!6143 = !DILocation(line: 383, column: 24, scope: !6081)
!6144 = !DILocation(line: 383, column: 2, scope: !6081)
!6145 = !DILocation(line: 384, column: 2, scope: !6081)
!6146 = !DILocation(line: 384, column: 2, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 384, column: 2)
!6148 = !DILocation(line: 386, column: 6, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 386, column: 6)
!6150 = !DILocation(line: 386, column: 6, scope: !6081)
!6151 = !DILocation(line: 389, column: 20, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 386, column: 14)
!6153 = !DILocation(line: 389, column: 3, scope: !6152)
!6154 = !DILocation(line: 390, column: 20, scope: !6152)
!6155 = !DILocation(line: 390, column: 3, scope: !6152)
!6156 = !DILocation(line: 392, column: 30, scope: !6152)
!6157 = !DILocation(line: 392, column: 3, scope: !6152)
!6158 = !DILocation(line: 392, column: 11, scope: !6152)
!6159 = !DILocation(line: 392, column: 18, scope: !6152)
!6160 = !DILocation(line: 392, column: 23, scope: !6152)
!6161 = !DILocation(line: 392, column: 28, scope: !6152)
!6162 = !DILocation(line: 393, column: 23, scope: !6152)
!6163 = !DILocation(line: 393, column: 3, scope: !6152)
!6164 = !DILocation(line: 393, column: 11, scope: !6152)
!6165 = !DILocation(line: 393, column: 16, scope: !6152)
!6166 = !DILocation(line: 393, column: 21, scope: !6152)
!6167 = !DILocation(line: 394, column: 2, scope: !6152)
!6168 = !DILocation(line: 395, column: 11, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 394, column: 9)
!6170 = !DILocation(line: 395, column: 16, scope: !6169)
!6171 = !DILocation(line: 395, column: 3, scope: !6169)
!6172 = !DILocation(line: 396, column: 3, scope: !6169)
!6173 = !DILocation(line: 396, column: 8, scope: !6169)
!6174 = !DILocation(line: 396, column: 18, scope: !6169)
!6175 = !DILocation(line: 396, column: 26, scope: !6169)
!6176 = !DILocation(line: 397, column: 11, scope: !6169)
!6177 = !DILocation(line: 397, column: 18, scope: !6169)
!6178 = !DILocation(line: 397, column: 3, scope: !6169)
!6179 = !DILocation(line: 398, column: 3, scope: !6169)
!6180 = !DILocation(line: 398, column: 10, scope: !6169)
!6181 = !DILocation(line: 398, column: 20, scope: !6169)
!6182 = !DILocation(line: 398, column: 28, scope: !6169)
!6183 = !DILocation(line: 398, column: 35, scope: !6169)
!6184 = !DILocation(line: 404, column: 22, scope: !6081)
!6185 = !DILocation(line: 404, column: 30, scope: !6081)
!6186 = !DILocation(line: 404, column: 2, scope: !6081)
!6187 = !DILocation(line: 406, column: 16, scope: !6081)
!6188 = !DILocation(line: 406, column: 2, scope: !6081)
!6189 = !DILocation(line: 406, column: 7, scope: !6081)
!6190 = !DILocation(line: 406, column: 14, scope: !6081)
!6191 = !DILocation(line: 407, column: 16, scope: !6081)
!6192 = !DILocation(line: 407, column: 2, scope: !6081)
!6193 = !DILocation(line: 407, column: 9, scope: !6081)
!6194 = !DILocation(line: 407, column: 14, scope: !6081)
!6195 = !DILocation(line: 408, column: 16, scope: !6081)
!6196 = !DILocation(line: 408, column: 2, scope: !6081)
!6197 = !DILocation(line: 409, column: 16, scope: !6081)
!6198 = !DILocation(line: 409, column: 2, scope: !6081)
!6199 = !DILocation(line: 410, column: 23, scope: !6081)
!6200 = !DILocation(line: 410, column: 2, scope: !6081)
!6201 = !DILocation(line: 411, column: 23, scope: !6081)
!6202 = !DILocation(line: 411, column: 2, scope: !6081)
!6203 = !DILocation(line: 412, column: 16, scope: !6081)
!6204 = !DILocation(line: 412, column: 2, scope: !6081)
!6205 = !DILocation(line: 412, column: 9, scope: !6081)
!6206 = !DILocation(line: 412, column: 14, scope: !6081)
!6207 = !DILocation(line: 413, column: 14, scope: !6081)
!6208 = !DILocation(line: 413, column: 2, scope: !6081)
!6209 = !DILocation(line: 413, column: 7, scope: !6081)
!6210 = !DILocation(line: 413, column: 12, scope: !6081)
!6211 = !DILocation(line: 414, column: 22, scope: !6081)
!6212 = !DILocation(line: 414, column: 2, scope: !6081)
!6213 = !DILocation(line: 414, column: 9, scope: !6081)
!6214 = !DILocation(line: 414, column: 15, scope: !6081)
!6215 = !DILocation(line: 414, column: 20, scope: !6081)
!6216 = !DILocation(line: 416, column: 31, scope: !6081)
!6217 = !DILocation(line: 416, column: 38, scope: !6081)
!6218 = !DILocation(line: 416, column: 2, scope: !6081)
!6219 = !DILocation(line: 418, column: 22, scope: !6081)
!6220 = !DILocation(line: 418, column: 2, scope: !6081)
!6221 = !DILocation(line: 419, column: 2, scope: !6081)
!6222 = !DILocation(line: 419, column: 7, scope: !6081)
!6223 = !DILocation(line: 419, column: 12, scope: !6081)
!6224 = !DILocation(line: 420, column: 2, scope: !6081)
!6225 = !DILocation(line: 420, column: 9, scope: !6081)
!6226 = !DILocation(line: 420, column: 14, scope: !6081)
!6227 = !DILocation(line: 421, column: 2, scope: !6081)
!6228 = !DILocation(line: 423, column: 1, scope: !6081)
!6229 = !DILocation(line: 424, column: 13, scope: !6081)
!6230 = !DILocation(line: 424, column: 21, scope: !6081)
!6231 = !DILocation(line: 424, column: 28, scope: !6081)
!6232 = !DILocation(line: 424, column: 2, scope: !6081)
!6233 = !DILocation(line: 425, column: 1, scope: !6081)
!6234 = !DILocation(line: 426, column: 8, scope: !6081)
!6235 = !DILocation(line: 426, column: 2, scope: !6081)
!6236 = !DILocation(line: 427, column: 8, scope: !6081)
!6237 = !DILocation(line: 427, column: 2, scope: !6081)
!6238 = !DILocation(line: 428, column: 9, scope: !6081)
!6239 = !DILocation(line: 428, column: 2, scope: !6081)
!6240 = !DILocation(line: 429, column: 1, scope: !6081)
!6241 = distinct !DISubprogram(name: "kmalloc", scope: !147, file: !147, line: 591, type: !6242, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6244)
!6242 = !DISubroutineType(types: !6243)
!6243 = !{!303, !1108, !1160}
!6244 = !{!6245, !6246, !6247}
!6245 = !DILocalVariable(name: "size", arg: 1, scope: !6241, file: !147, line: 591, type: !1108)
!6246 = !DILocalVariable(name: "flags", arg: 2, scope: !6241, file: !147, line: 591, type: !1160)
!6247 = !DILocalVariable(name: "index", scope: !6248, file: !147, line: 594, type: !7)
!6248 = distinct !DILexicalBlock(scope: !6249, file: !147, line: 593, column: 42)
!6249 = distinct !DILexicalBlock(scope: !6241, file: !147, line: 593, column: 6)
!6250 = !DILocation(line: 591, column: 61, scope: !6241)
!6251 = !DILocation(line: 591, column: 73, scope: !6241)
!6252 = !DILocation(line: 593, column: 27, scope: !6249)
!6253 = !DILocation(line: 593, column: 6, scope: !6249)
!6254 = !DILocation(line: 593, column: 33, scope: !6249)
!6255 = !DILocation(line: 593, column: 36, scope: !6249)
!6256 = !DILocation(line: 593, column: 6, scope: !6241)
!6257 = !DILocation(line: 594, column: 3, scope: !6248)
!6258 = !DILocation(line: 594, column: 16, scope: !6248)
!6259 = !DILocation(line: 596, column: 7, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6248, file: !147, line: 596, column: 7)
!6261 = !DILocation(line: 596, column: 12, scope: !6260)
!6262 = !DILocation(line: 596, column: 7, scope: !6248)
!6263 = !DILocation(line: 597, column: 25, scope: !6260)
!6264 = !DILocation(line: 597, column: 31, scope: !6260)
!6265 = !DILocation(line: 597, column: 11, scope: !6260)
!6266 = !DILocation(line: 597, column: 4, scope: !6260)
!6267 = !DILocation(line: 599, column: 11, scope: !6248)
!6268 = !DILocation(line: 599, column: 9, scope: !6248)
!6269 = !DILocation(line: 601, column: 33, scope: !6248)
!6270 = !DILocation(line: 601, column: 40, scope: !6248)
!6271 = !DILocation(line: 601, column: 20, scope: !6248)
!6272 = !DILocation(line: 601, column: 5, scope: !6248)
!6273 = !DILocation(line: 601, column: 51, scope: !6248)
!6274 = !DILocation(line: 602, column: 5, scope: !6248)
!6275 = !DILocation(line: 602, column: 12, scope: !6248)
!6276 = !DILocation(line: 600, column: 10, scope: !6248)
!6277 = !DILocation(line: 600, column: 3, scope: !6248)
!6278 = !DILocation(line: 603, column: 2, scope: !6249)
!6279 = !DILocation(line: 604, column: 19, scope: !6241)
!6280 = !DILocation(line: 604, column: 25, scope: !6241)
!6281 = !DILocation(line: 604, column: 9, scope: !6241)
!6282 = !DILocation(line: 604, column: 2, scope: !6241)
!6283 = !DILocation(line: 605, column: 1, scope: !6241)
!6284 = !DISubprogram(name: "try_module_get", scope: !15, file: !15, line: 696, type: !6285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6285 = !DISubroutineType(types: !6286)
!6286 = !{!362, !1198}
!6287 = !DISubprogram(name: "alloc_tty_struct", scope: !5458, file: !5458, line: 85, type: !6288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6288 = !DISubroutineType(types: !6289)
!6289 = !{!3538, !3996, !102}
!6290 = !DISubprogram(name: "tty_set_lock_subclass", scope: !3540, file: !3540, line: 516, type: !4191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6291 = !DISubprogram(name: "tty_init_termios", scope: !3540, file: !3540, line: 465, type: !4191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6292 = distinct !DISubprogram(name: "tty_driver_kref_get", scope: !3998, file: !3998, line: 486, type: !6293, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6295)
!6293 = !DISubroutineType(types: !6294)
!6294 = !{!3996, !3996}
!6295 = !{!6296}
!6296 = !DILocalVariable(name: "d", arg: 1, scope: !6292, file: !3998, line: 486, type: !3996)
!6297 = !DILocation(line: 486, column: 73, scope: !6292)
!6298 = !DILocation(line: 488, column: 12, scope: !6292)
!6299 = !DILocation(line: 488, column: 15, scope: !6292)
!6300 = !DILocation(line: 488, column: 2, scope: !6292)
!6301 = !DILocation(line: 489, column: 9, scope: !6292)
!6302 = !DILocation(line: 489, column: 2, scope: !6292)
!6303 = !DISubprogram(name: "tty_port_init", scope: !4043, file: !4043, line: 140, type: !4094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6304 = !DISubprogram(name: "tty_buffer_set_limit", scope: !6305, file: !6305, line: 10, type: !6306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6305 = !DIFile(filename: "./include/linux/tty_flip.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04380b3f455bbeb1733f22cd11e51be3")
!6306 = !DISubroutineType(types: !6307)
!6307 = !{!102, !4041, !102}
!6308 = !DISubprogram(name: "tty_buffer_set_lock_subclass", scope: !5458, file: !5458, line: 74, type: !4094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6309 = !DISubprogram(name: "module_put", scope: !15, file: !15, line: 706, type: !2104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6310 = !DISubprogram(name: "kfree", scope: !147, file: !147, line: 227, type: !6311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6311 = !DISubroutineType(types: !6312)
!6312 = !{null, !1901}
!6313 = !DISubprogram(name: "kmalloc_large", scope: !147, file: !147, line: 531, type: !6242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6314 = distinct !DISubprogram(name: "__kmalloc_index", scope: !147, file: !147, line: 444, type: !6315, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6317)
!6315 = !DISubroutineType(types: !6316)
!6316 = !{!7, !1108, !362}
!6317 = !{!6318, !6319}
!6318 = !DILocalVariable(name: "size", arg: 1, scope: !6314, file: !147, line: 444, type: !1108)
!6319 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6314, file: !147, line: 445, type: !362)
!6320 = !DILocation(line: 444, column: 60, scope: !6314)
!6321 = !DILocation(line: 445, column: 16, scope: !6314)
!6322 = !DILocation(line: 447, column: 7, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 447, column: 6)
!6324 = !DILocation(line: 447, column: 6, scope: !6314)
!6325 = !DILocation(line: 448, column: 3, scope: !6323)
!6326 = !DILocation(line: 450, column: 6, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 450, column: 6)
!6328 = !DILocation(line: 450, column: 11, scope: !6327)
!6329 = !DILocation(line: 450, column: 6, scope: !6314)
!6330 = !DILocation(line: 451, column: 3, scope: !6327)
!6331 = !DILocation(line: 453, column: 32, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 453, column: 6)
!6333 = !DILocation(line: 453, column: 37, scope: !6332)
!6334 = !DILocation(line: 453, column: 42, scope: !6332)
!6335 = !DILocation(line: 453, column: 45, scope: !6332)
!6336 = !DILocation(line: 453, column: 50, scope: !6332)
!6337 = !DILocation(line: 453, column: 6, scope: !6314)
!6338 = !DILocation(line: 454, column: 3, scope: !6332)
!6339 = !DILocation(line: 455, column: 32, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 455, column: 6)
!6341 = !DILocation(line: 455, column: 37, scope: !6340)
!6342 = !DILocation(line: 455, column: 43, scope: !6340)
!6343 = !DILocation(line: 455, column: 46, scope: !6340)
!6344 = !DILocation(line: 455, column: 51, scope: !6340)
!6345 = !DILocation(line: 455, column: 6, scope: !6314)
!6346 = !DILocation(line: 456, column: 3, scope: !6340)
!6347 = !DILocation(line: 457, column: 6, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 457, column: 6)
!6349 = !DILocation(line: 457, column: 11, scope: !6348)
!6350 = !DILocation(line: 457, column: 6, scope: !6314)
!6351 = !DILocation(line: 457, column: 26, scope: !6348)
!6352 = !DILocation(line: 458, column: 6, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 458, column: 6)
!6354 = !DILocation(line: 458, column: 11, scope: !6353)
!6355 = !DILocation(line: 458, column: 6, scope: !6314)
!6356 = !DILocation(line: 458, column: 26, scope: !6353)
!6357 = !DILocation(line: 459, column: 6, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 459, column: 6)
!6359 = !DILocation(line: 459, column: 11, scope: !6358)
!6360 = !DILocation(line: 459, column: 6, scope: !6314)
!6361 = !DILocation(line: 459, column: 26, scope: !6358)
!6362 = !DILocation(line: 460, column: 6, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 460, column: 6)
!6364 = !DILocation(line: 460, column: 11, scope: !6363)
!6365 = !DILocation(line: 460, column: 6, scope: !6314)
!6366 = !DILocation(line: 460, column: 26, scope: !6363)
!6367 = !DILocation(line: 461, column: 6, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 461, column: 6)
!6369 = !DILocation(line: 461, column: 11, scope: !6368)
!6370 = !DILocation(line: 461, column: 6, scope: !6314)
!6371 = !DILocation(line: 461, column: 26, scope: !6368)
!6372 = !DILocation(line: 462, column: 6, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 462, column: 6)
!6374 = !DILocation(line: 462, column: 11, scope: !6373)
!6375 = !DILocation(line: 462, column: 6, scope: !6314)
!6376 = !DILocation(line: 462, column: 26, scope: !6373)
!6377 = !DILocation(line: 463, column: 6, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 463, column: 6)
!6379 = !DILocation(line: 463, column: 11, scope: !6378)
!6380 = !DILocation(line: 463, column: 6, scope: !6314)
!6381 = !DILocation(line: 463, column: 26, scope: !6378)
!6382 = !DILocation(line: 464, column: 6, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 464, column: 6)
!6384 = !DILocation(line: 464, column: 11, scope: !6383)
!6385 = !DILocation(line: 464, column: 6, scope: !6314)
!6386 = !DILocation(line: 464, column: 26, scope: !6383)
!6387 = !DILocation(line: 465, column: 6, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 465, column: 6)
!6389 = !DILocation(line: 465, column: 11, scope: !6388)
!6390 = !DILocation(line: 465, column: 6, scope: !6314)
!6391 = !DILocation(line: 465, column: 26, scope: !6388)
!6392 = !DILocation(line: 466, column: 6, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 466, column: 6)
!6394 = !DILocation(line: 466, column: 11, scope: !6393)
!6395 = !DILocation(line: 466, column: 6, scope: !6314)
!6396 = !DILocation(line: 466, column: 26, scope: !6393)
!6397 = !DILocation(line: 467, column: 6, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 467, column: 6)
!6399 = !DILocation(line: 467, column: 11, scope: !6398)
!6400 = !DILocation(line: 467, column: 6, scope: !6314)
!6401 = !DILocation(line: 467, column: 26, scope: !6398)
!6402 = !DILocation(line: 468, column: 6, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 468, column: 6)
!6404 = !DILocation(line: 468, column: 11, scope: !6403)
!6405 = !DILocation(line: 468, column: 6, scope: !6314)
!6406 = !DILocation(line: 468, column: 26, scope: !6403)
!6407 = !DILocation(line: 469, column: 6, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 469, column: 6)
!6409 = !DILocation(line: 469, column: 11, scope: !6408)
!6410 = !DILocation(line: 469, column: 6, scope: !6314)
!6411 = !DILocation(line: 469, column: 26, scope: !6408)
!6412 = !DILocation(line: 470, column: 6, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 470, column: 6)
!6414 = !DILocation(line: 470, column: 11, scope: !6413)
!6415 = !DILocation(line: 470, column: 6, scope: !6314)
!6416 = !DILocation(line: 470, column: 26, scope: !6413)
!6417 = !DILocation(line: 471, column: 6, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 471, column: 6)
!6419 = !DILocation(line: 471, column: 11, scope: !6418)
!6420 = !DILocation(line: 471, column: 6, scope: !6314)
!6421 = !DILocation(line: 471, column: 26, scope: !6418)
!6422 = !DILocation(line: 472, column: 6, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 472, column: 6)
!6424 = !DILocation(line: 472, column: 11, scope: !6423)
!6425 = !DILocation(line: 472, column: 6, scope: !6314)
!6426 = !DILocation(line: 472, column: 26, scope: !6423)
!6427 = !DILocation(line: 473, column: 6, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 473, column: 6)
!6429 = !DILocation(line: 473, column: 11, scope: !6428)
!6430 = !DILocation(line: 473, column: 6, scope: !6314)
!6431 = !DILocation(line: 473, column: 26, scope: !6428)
!6432 = !DILocation(line: 474, column: 6, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 474, column: 6)
!6434 = !DILocation(line: 474, column: 11, scope: !6433)
!6435 = !DILocation(line: 474, column: 6, scope: !6314)
!6436 = !DILocation(line: 474, column: 27, scope: !6433)
!6437 = !DILocation(line: 475, column: 6, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 475, column: 6)
!6439 = !DILocation(line: 475, column: 11, scope: !6438)
!6440 = !DILocation(line: 475, column: 6, scope: !6314)
!6441 = !DILocation(line: 475, column: 32, scope: !6438)
!6442 = !DILocation(line: 477, column: 50, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6314, file: !147, line: 477, column: 6)
!6444 = !DILocation(line: 477, column: 6, scope: !6314)
!6445 = !DILocation(line: 478, column: 3, scope: !6443)
!6446 = !DILocation(line: 478, column: 3, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6448, file: !147, line: 478, column: 3)
!6448 = distinct !DILexicalBlock(scope: !6443, file: !147, line: 478, column: 3)
!6449 = !{i32 -2141352390}
!6450 = !DILocation(line: 478, column: 3, scope: !6448)
!6451 = !DILocation(line: 480, column: 3, scope: !6443)
!6452 = !DILocation(line: 480, column: 3, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6443, file: !147, line: 480, column: 3)
!6454 = !DILocation(line: 480, column: 3, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6453, file: !147, line: 480, column: 3)
!6456 = !DILocation(line: 480, column: 3, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6453, file: !147, line: 480, column: 3)
!6458 = !{i64 2153615109, i64 2153615138, i64 2153615184, i64 2153615242, i64 2153615296, i64 2153615350, i64 2153615405, i64 2153615436}
!6459 = !DILocation(line: 483, column: 2, scope: !6314)
!6460 = !DILocation(line: 484, column: 1, scope: !6314)
!6461 = !DISubprogram(name: "kmalloc_trace", scope: !147, file: !147, line: 525, type: !6462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6462 = !DISubroutineType(types: !6463)
!6463 = !{!303, !6464, !1160, !1108}
!6464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6465, size: 64)
!6465 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6466, line: 325, flags: DIFlagFwdDecl)
!6466 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6467 = distinct !DISubprogram(name: "kmalloc_type", scope: !147, file: !147, line: 401, type: !6468, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6470)
!6468 = !DISubroutineType(types: !6469)
!6469 = !{!146, !1160, !254}
!6470 = !{!6471, !6472}
!6471 = !DILocalVariable(name: "flags", arg: 1, scope: !6467, file: !147, line: 401, type: !1160)
!6472 = !DILocalVariable(name: "caller", arg: 2, scope: !6467, file: !147, line: 401, type: !254)
!6473 = !DILocation(line: 401, column: 67, scope: !6467)
!6474 = !DILocation(line: 401, column: 88, scope: !6467)
!6475 = !DILocation(line: 407, column: 6, scope: !6476)
!6476 = distinct !DILexicalBlock(scope: !6467, file: !147, line: 407, column: 6)
!6477 = !DILocation(line: 407, column: 6, scope: !6467)
!6478 = !DILocation(line: 413, column: 3, scope: !6476)
!6479 = !DILocation(line: 423, column: 38, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6467, file: !147, line: 423, column: 6)
!6481 = !DILocation(line: 423, column: 44, scope: !6480)
!6482 = !DILocation(line: 423, column: 6, scope: !6467)
!6483 = !DILocation(line: 424, column: 3, scope: !6480)
!6484 = !DILocation(line: 426, column: 3, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6467, file: !147, line: 425, column: 6)
!6486 = !DILocation(line: 429, column: 1, scope: !6467)
!6487 = !DISubprogram(name: "__kmalloc", scope: !147, file: !147, line: 488, type: !6242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6488 = !DISubprogram(name: "__compiletime_assert_255", scope: !147, file: !147, line: 478, type: !2434, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6489 = distinct !DISubprogram(name: "kref_get", scope: !2065, file: !2065, line: 43, type: !6490, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6493)
!6490 = !DISubroutineType(types: !6491)
!6491 = !{null, !6492}
!6492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!6493 = !{!6494}
!6494 = !DILocalVariable(name: "kref", arg: 1, scope: !6489, file: !2065, line: 43, type: !6492)
!6495 = !DILocation(line: 43, column: 42, scope: !6489)
!6496 = !DILocation(line: 45, column: 16, scope: !6489)
!6497 = !DILocation(line: 45, column: 22, scope: !6489)
!6498 = !DILocation(line: 45, column: 2, scope: !6489)
!6499 = !DILocation(line: 46, column: 1, scope: !6489)
!6500 = distinct !DISubprogram(name: "refcount_inc", scope: !157, file: !157, line: 265, type: !6501, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6504)
!6501 = !DISubroutineType(types: !6502)
!6502 = !{null, !6503}
!6503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!6504 = !{!6505}
!6505 = !DILocalVariable(name: "r", arg: 1, scope: !6500, file: !157, line: 265, type: !6503)
!6506 = !DILocation(line: 265, column: 45, scope: !6500)
!6507 = !DILocation(line: 267, column: 17, scope: !6500)
!6508 = !DILocation(line: 267, column: 2, scope: !6500)
!6509 = !DILocation(line: 268, column: 1, scope: !6500)
!6510 = distinct !DISubprogram(name: "__refcount_inc", scope: !157, file: !157, line: 248, type: !6511, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6513)
!6511 = !DISubroutineType(types: !6512)
!6512 = !{null, !6503, !2216}
!6513 = !{!6514, !6515}
!6514 = !DILocalVariable(name: "r", arg: 1, scope: !6510, file: !157, line: 248, type: !6503)
!6515 = !DILocalVariable(name: "oldp", arg: 2, scope: !6510, file: !157, line: 248, type: !2216)
!6516 = !DILocation(line: 248, column: 47, scope: !6510)
!6517 = !DILocation(line: 248, column: 55, scope: !6510)
!6518 = !DILocation(line: 250, column: 20, scope: !6510)
!6519 = !DILocation(line: 250, column: 23, scope: !6510)
!6520 = !DILocation(line: 250, column: 2, scope: !6510)
!6521 = !DILocation(line: 251, column: 1, scope: !6510)
!6522 = distinct !DISubprogram(name: "__refcount_add", scope: !157, file: !157, line: 191, type: !6523, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6525)
!6523 = !DISubroutineType(types: !6524)
!6524 = !{null, !102, !6503, !2216}
!6525 = !{!6526, !6527, !6528, !6529}
!6526 = !DILocalVariable(name: "i", arg: 1, scope: !6522, file: !157, line: 191, type: !102)
!6527 = !DILocalVariable(name: "r", arg: 2, scope: !6522, file: !157, line: 191, type: !6503)
!6528 = !DILocalVariable(name: "oldp", arg: 3, scope: !6522, file: !157, line: 191, type: !2216)
!6529 = !DILocalVariable(name: "old", scope: !6522, file: !157, line: 193, type: !102)
!6530 = !DILocation(line: 191, column: 39, scope: !6522)
!6531 = !DILocation(line: 191, column: 54, scope: !6522)
!6532 = !DILocation(line: 191, column: 62, scope: !6522)
!6533 = !DILocation(line: 193, column: 2, scope: !6522)
!6534 = !DILocation(line: 193, column: 6, scope: !6522)
!6535 = !DILocation(line: 193, column: 37, scope: !6522)
!6536 = !DILocation(line: 193, column: 41, scope: !6522)
!6537 = !DILocation(line: 193, column: 44, scope: !6522)
!6538 = !DILocation(line: 193, column: 12, scope: !6522)
!6539 = !DILocation(line: 195, column: 6, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6522, file: !157, line: 195, column: 6)
!6541 = !DILocation(line: 195, column: 6, scope: !6522)
!6542 = !DILocation(line: 196, column: 11, scope: !6540)
!6543 = !DILocation(line: 196, column: 4, scope: !6540)
!6544 = !DILocation(line: 196, column: 9, scope: !6540)
!6545 = !DILocation(line: 196, column: 3, scope: !6540)
!6546 = !DILocation(line: 198, column: 6, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6522, file: !157, line: 198, column: 6)
!6548 = !DILocation(line: 198, column: 6, scope: !6522)
!6549 = !DILocation(line: 199, column: 26, scope: !6547)
!6550 = !DILocation(line: 199, column: 3, scope: !6547)
!6551 = !DILocation(line: 200, column: 11, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !6547, file: !157, line: 200, column: 11)
!6553 = !DILocation(line: 200, column: 11, scope: !6547)
!6554 = !DILocation(line: 201, column: 26, scope: !6552)
!6555 = !DILocation(line: 201, column: 3, scope: !6552)
!6556 = !DILocation(line: 202, column: 1, scope: !6522)
!6557 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !6558, file: !6558, line: 250, type: !6559, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6562)
!6558 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6559 = !DISubroutineType(types: !6560)
!6560 = !{!102, !102, !6561}
!6561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!6562 = !{!6563, !6564}
!6563 = !DILocalVariable(name: "i", arg: 1, scope: !6557, file: !6558, line: 250, type: !102)
!6564 = !DILocalVariable(name: "v", arg: 2, scope: !6557, file: !6558, line: 250, type: !6561)
!6565 = !DILocation(line: 250, column: 30, scope: !6557)
!6566 = !DILocation(line: 250, column: 43, scope: !6557)
!6567 = !DILocation(line: 252, column: 31, scope: !6557)
!6568 = !DILocation(line: 252, column: 2, scope: !6557)
!6569 = !DILocation(line: 253, column: 38, scope: !6557)
!6570 = !DILocation(line: 253, column: 41, scope: !6557)
!6571 = !DILocation(line: 253, column: 9, scope: !6557)
!6572 = !DILocation(line: 253, column: 2, scope: !6557)
!6573 = !DISubprogram(name: "refcount_warn_saturate", scope: !157, file: !157, line: 127, type: !6574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6574 = !DISubroutineType(types: !6575)
!6575 = !{null, !6503, !156}
!6576 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6577, file: !6577, line: 94, type: !6578, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6583)
!6577 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6578 = !DISubroutineType(types: !6579)
!6579 = !{null, !6580, !1108}
!6580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6581, size: 64)
!6581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6582)
!6582 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6583 = !{!6584, !6585}
!6584 = !DILocalVariable(name: "v", arg: 1, scope: !6576, file: !6577, line: 94, type: !6580)
!6585 = !DILocalVariable(name: "size", arg: 2, scope: !6576, file: !6577, line: 94, type: !1108)
!6586 = !DILocation(line: 94, column: 79, scope: !6576)
!6587 = !DILocation(line: 94, column: 89, scope: !6576)
!6588 = !DILocation(line: 96, column: 20, scope: !6576)
!6589 = !DILocation(line: 96, column: 23, scope: !6576)
!6590 = !DILocation(line: 96, column: 2, scope: !6576)
!6591 = !DILocation(line: 97, column: 2, scope: !6576)
!6592 = !DILocation(line: 98, column: 1, scope: !6576)
!6593 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !6594, file: !6594, line: 731, type: !6559, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6595)
!6594 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6595 = !{!6596, !6597}
!6596 = !DILocalVariable(name: "i", arg: 1, scope: !6593, file: !6594, line: 731, type: !102)
!6597 = !DILocalVariable(name: "v", arg: 2, scope: !6593, file: !6594, line: 731, type: !6561)
!6598 = !DILocation(line: 731, column: 34, scope: !6593)
!6599 = !DILocation(line: 731, column: 47, scope: !6593)
!6600 = !DILocation(line: 736, column: 31, scope: !6593)
!6601 = !DILocation(line: 736, column: 34, scope: !6593)
!6602 = !DILocation(line: 736, column: 9, scope: !6593)
!6603 = !DILocation(line: 736, column: 2, scope: !6593)
!6604 = distinct !DISubprogram(name: "kasan_check_write", scope: !6605, file: !6605, line: 44, type: !6606, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6608)
!6605 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6606 = !DISubroutineType(types: !6607)
!6607 = !{!362, !6580, !7}
!6608 = !{!6609, !6610}
!6609 = !DILocalVariable(name: "p", arg: 1, scope: !6604, file: !6605, line: 44, type: !6580)
!6610 = !DILocalVariable(name: "size", arg: 2, scope: !6604, file: !6605, line: 44, type: !7)
!6611 = !DILocation(line: 44, column: 59, scope: !6604)
!6612 = !DILocation(line: 44, column: 75, scope: !6604)
!6613 = !DILocation(line: 46, column: 2, scope: !6604)
!6614 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6615, file: !6615, line: 229, type: !6616, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6618)
!6615 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6616 = !DISubroutineType(types: !6617)
!6617 = !{null, !6580, !1108, !102}
!6618 = !{!6619, !6620, !6621}
!6619 = !DILocalVariable(name: "ptr", arg: 1, scope: !6614, file: !6615, line: 229, type: !6580)
!6620 = !DILocalVariable(name: "size", arg: 2, scope: !6614, file: !6615, line: 229, type: !1108)
!6621 = !DILocalVariable(name: "type", arg: 3, scope: !6614, file: !6615, line: 230, type: !102)
!6622 = !DILocation(line: 229, column: 60, scope: !6614)
!6623 = !DILocation(line: 229, column: 72, scope: !6614)
!6624 = !DILocation(line: 230, column: 15, scope: !6614)
!6625 = !DILocation(line: 230, column: 23, scope: !6614)
!6626 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !6627, file: !6627, line: 95, type: !6559, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6628)
!6627 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6628 = !{!6629, !6630, !6631}
!6629 = !DILocalVariable(name: "i", arg: 1, scope: !6626, file: !6627, line: 95, type: !102)
!6630 = !DILocalVariable(name: "v", arg: 2, scope: !6626, file: !6627, line: 95, type: !6561)
!6631 = !DILocalVariable(name: "__ret", scope: !6632, file: !6627, line: 97, type: !102)
!6632 = distinct !DILexicalBlock(scope: !6626, file: !6627, line: 97, column: 9)
!6633 = !DILocation(line: 95, column: 54, scope: !6626)
!6634 = !DILocation(line: 95, column: 67, scope: !6626)
!6635 = !DILocation(line: 97, column: 9, scope: !6632)
!6636 = !{i64 2148815213, i64 2148815252, i64 2148815273, i64 2148815310, i64 2148815333, i64 2148815342}
!6637 = !DILocation(line: 97, column: 9, scope: !6626)
!6638 = !DILocation(line: 97, column: 2, scope: !6626)
!6639 = !DISubprogram(name: "devpts_kill_index", scope: !5247, file: !5247, line: 24, type: !6640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6640 = !DISubroutineType(types: !6641)
!6641 = !{null, !5250, !102}
!6642 = !DISubprogram(name: "devpts_release", scope: !5247, file: !5247, line: 21, type: !6643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6643 = !DISubroutineType(types: !6644)
!6644 = !{null, !5250}
!6645 = distinct !DISubprogram(name: "const_test_bit", scope: !6646, file: !6646, line: 166, type: !6647, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6652)
!6646 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6647 = !DISubroutineType(types: !6648)
!6648 = !{!362, !254, !6649}
!6649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6650, size: 64)
!6650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6651)
!6651 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !254)
!6652 = !{!6653, !6654, !6655, !6656, !6657}
!6653 = !DILocalVariable(name: "nr", arg: 1, scope: !6645, file: !6646, line: 166, type: !254)
!6654 = !DILocalVariable(name: "addr", arg: 2, scope: !6645, file: !6646, line: 166, type: !6649)
!6655 = !DILocalVariable(name: "p", scope: !6645, file: !6646, line: 168, type: !5067)
!6656 = !DILocalVariable(name: "mask", scope: !6645, file: !6646, line: 169, type: !254)
!6657 = !DILocalVariable(name: "val", scope: !6645, file: !6646, line: 170, type: !254)
!6658 = !DILocation(line: 166, column: 30, scope: !6645)
!6659 = !DILocation(line: 166, column: 64, scope: !6645)
!6660 = !DILocation(line: 168, column: 2, scope: !6645)
!6661 = !DILocation(line: 168, column: 23, scope: !6645)
!6662 = !DILocation(line: 168, column: 50, scope: !6645)
!6663 = !DILocation(line: 168, column: 57, scope: !6645)
!6664 = !DILocation(line: 168, column: 55, scope: !6645)
!6665 = !DILocation(line: 169, column: 2, scope: !6645)
!6666 = !DILocation(line: 169, column: 16, scope: !6645)
!6667 = !DILocation(line: 169, column: 23, scope: !6645)
!6668 = !DILocation(line: 170, column: 2, scope: !6645)
!6669 = !DILocation(line: 170, column: 16, scope: !6645)
!6670 = !DILocation(line: 170, column: 23, scope: !6645)
!6671 = !DILocation(line: 170, column: 22, scope: !6645)
!6672 = !DILocation(line: 172, column: 12, scope: !6645)
!6673 = !DILocation(line: 172, column: 18, scope: !6645)
!6674 = !DILocation(line: 172, column: 16, scope: !6645)
!6675 = !DILocation(line: 172, column: 10, scope: !6645)
!6676 = !DILocation(line: 172, column: 9, scope: !6645)
!6677 = !DILocation(line: 173, column: 1, scope: !6645)
!6678 = !DILocation(line: 172, column: 2, scope: !6645)
!6679 = distinct !DISubprogram(name: "_test_bit", scope: !6680, file: !6680, line: 139, type: !6647, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6681)
!6680 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6681 = !{!6682, !6683}
!6682 = !DILocalVariable(name: "nr", arg: 1, scope: !6679, file: !6680, line: 139, type: !254)
!6683 = !DILocalVariable(name: "addr", arg: 2, scope: !6679, file: !6680, line: 139, type: !6649)
!6684 = !DILocation(line: 139, column: 25, scope: !6679)
!6685 = !DILocation(line: 139, column: 59, scope: !6679)
!6686 = !DILocation(line: 141, column: 25, scope: !6679)
!6687 = !DILocation(line: 141, column: 32, scope: !6679)
!6688 = !DILocation(line: 141, column: 30, scope: !6679)
!6689 = !DILocation(line: 141, column: 2, scope: !6679)
!6690 = !DILocation(line: 142, column: 23, scope: !6679)
!6691 = !DILocation(line: 142, column: 27, scope: !6679)
!6692 = !DILocation(line: 142, column: 9, scope: !6679)
!6693 = !DILocation(line: 142, column: 2, scope: !6679)
!6694 = distinct !DISubprogram(name: "clear_bit", scope: !6695, file: !6695, line: 39, type: !6696, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6699)
!6695 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6696 = !DISubroutineType(types: !6697)
!6697 = !{null, !477, !6698}
!6698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6651, size: 64)
!6699 = !{!6700, !6701}
!6700 = !DILocalVariable(name: "nr", arg: 1, scope: !6694, file: !6695, line: 39, type: !477)
!6701 = !DILocalVariable(name: "addr", arg: 2, scope: !6694, file: !6695, line: 39, type: !6698)
!6702 = !DILocation(line: 39, column: 44, scope: !6694)
!6703 = !DILocation(line: 39, column: 72, scope: !6694)
!6704 = !DILocation(line: 41, column: 26, scope: !6694)
!6705 = !DILocation(line: 41, column: 33, scope: !6694)
!6706 = !DILocation(line: 41, column: 31, scope: !6694)
!6707 = !DILocation(line: 41, column: 2, scope: !6694)
!6708 = !DILocation(line: 42, column: 17, scope: !6694)
!6709 = !DILocation(line: 42, column: 21, scope: !6694)
!6710 = !DILocation(line: 42, column: 2, scope: !6694)
!6711 = !DILocation(line: 43, column: 1, scope: !6694)
!6712 = distinct !DISubprogram(name: "set_bit", scope: !6695, file: !6695, line: 26, type: !6696, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6713)
!6713 = !{!6714, !6715}
!6714 = !DILocalVariable(name: "nr", arg: 1, scope: !6712, file: !6695, line: 26, type: !477)
!6715 = !DILocalVariable(name: "addr", arg: 2, scope: !6712, file: !6695, line: 26, type: !6698)
!6716 = !DILocation(line: 26, column: 42, scope: !6712)
!6717 = !DILocation(line: 26, column: 70, scope: !6712)
!6718 = !DILocation(line: 28, column: 26, scope: !6712)
!6719 = !DILocation(line: 28, column: 33, scope: !6712)
!6720 = !DILocation(line: 28, column: 31, scope: !6712)
!6721 = !DILocation(line: 28, column: 2, scope: !6712)
!6722 = !DILocation(line: 29, column: 15, scope: !6712)
!6723 = !DILocation(line: 29, column: 19, scope: !6712)
!6724 = !DILocation(line: 29, column: 2, scope: !6712)
!6725 = !DILocation(line: 30, column: 1, scope: !6712)
!6726 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6577, file: !6577, line: 66, type: !6578, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6727)
!6727 = !{!6728, !6729}
!6728 = !DILocalVariable(name: "v", arg: 1, scope: !6726, file: !6577, line: 66, type: !6580)
!6729 = !DILocalVariable(name: "size", arg: 2, scope: !6726, file: !6577, line: 66, type: !1108)
!6730 = !DILocation(line: 66, column: 73, scope: !6726)
!6731 = !DILocation(line: 66, column: 83, scope: !6726)
!6732 = !DILocation(line: 68, column: 19, scope: !6726)
!6733 = !DILocation(line: 68, column: 22, scope: !6726)
!6734 = !DILocation(line: 68, column: 2, scope: !6726)
!6735 = !DILocation(line: 69, column: 2, scope: !6726)
!6736 = !DILocation(line: 70, column: 1, scope: !6726)
!6737 = distinct !DISubprogram(name: "arch_test_bit", scope: !6738, file: !6738, line: 237, type: !6647, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6739)
!6738 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6739 = !{!6740, !6741}
!6740 = !DILocalVariable(name: "nr", arg: 1, scope: !6737, file: !6738, line: 237, type: !254)
!6741 = !DILocalVariable(name: "addr", arg: 2, scope: !6737, file: !6738, line: 237, type: !6649)
!6742 = !DILocation(line: 237, column: 29, scope: !6737)
!6743 = !DILocation(line: 237, column: 63, scope: !6737)
!6744 = !DILocation(line: 239, column: 30, scope: !6737)
!6745 = !DILocation(line: 239, column: 9, scope: !6737)
!6746 = !DILocation(line: 239, column: 54, scope: !6737)
!6747 = !DILocation(line: 239, column: 58, scope: !6737)
!6748 = !DILocation(line: 239, column: 36, scope: !6737)
!6749 = !DILocation(line: 240, column: 26, scope: !6737)
!6750 = !DILocation(line: 240, column: 30, scope: !6737)
!6751 = !DILocation(line: 240, column: 8, scope: !6737)
!6752 = !DILocation(line: 239, column: 2, scope: !6737)
!6753 = distinct !DISubprogram(name: "kasan_check_read", scope: !6605, file: !6605, line: 40, type: !6606, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6754)
!6754 = !{!6755, !6756}
!6755 = !DILocalVariable(name: "p", arg: 1, scope: !6753, file: !6605, line: 40, type: !6580)
!6756 = !DILocalVariable(name: "size", arg: 2, scope: !6753, file: !6605, line: 40, type: !7)
!6757 = !DILocation(line: 40, column: 58, scope: !6753)
!6758 = !DILocation(line: 40, column: 74, scope: !6753)
!6759 = !DILocation(line: 42, column: 2, scope: !6753)
!6760 = distinct !DISubprogram(name: "constant_test_bit", scope: !6738, file: !6738, line: 204, type: !6761, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6763)
!6761 = !DISubroutineType(types: !6762)
!6762 = !{!362, !477, !6649}
!6763 = !{!6764, !6765}
!6764 = !DILocalVariable(name: "nr", arg: 1, scope: !6760, file: !6738, line: 204, type: !477)
!6765 = !DILocalVariable(name: "addr", arg: 2, scope: !6760, file: !6738, line: 204, type: !6649)
!6766 = !DILocation(line: 204, column: 52, scope: !6760)
!6767 = !DILocation(line: 204, column: 86, scope: !6760)
!6768 = !DILocation(line: 206, column: 19, scope: !6760)
!6769 = !DILocation(line: 206, column: 22, scope: !6760)
!6770 = !DILocation(line: 206, column: 15, scope: !6760)
!6771 = !DILocation(line: 207, column: 4, scope: !6760)
!6772 = !DILocation(line: 207, column: 9, scope: !6760)
!6773 = !DILocation(line: 207, column: 12, scope: !6760)
!6774 = !DILocation(line: 206, column: 44, scope: !6760)
!6775 = !DILocation(line: 207, column: 37, scope: !6760)
!6776 = !DILocation(line: 206, column: 2, scope: !6760)
!6777 = distinct !DISubprogram(name: "variable_test_bit", scope: !6738, file: !6738, line: 224, type: !6761, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6778)
!6778 = !{!6779, !6780, !6781}
!6779 = !DILocalVariable(name: "nr", arg: 1, scope: !6777, file: !6738, line: 224, type: !477)
!6780 = !DILocalVariable(name: "addr", arg: 2, scope: !6777, file: !6738, line: 224, type: !6649)
!6781 = !DILocalVariable(name: "oldbit", scope: !6777, file: !6738, line: 226, type: !362)
!6782 = !DILocation(line: 224, column: 52, scope: !6777)
!6783 = !DILocation(line: 224, column: 86, scope: !6777)
!6784 = !DILocation(line: 226, column: 2, scope: !6777)
!6785 = !DILocation(line: 226, column: 7, scope: !6777)
!6786 = !DILocation(line: 231, column: 33, scope: !6777)
!6787 = !DILocation(line: 231, column: 46, scope: !6777)
!6788 = !DILocation(line: 228, column: 2, scope: !6777)
!6789 = !{i64 2148365007, i64 2148365081}
!6790 = !DILocation(line: 233, column: 9, scope: !6777)
!6791 = !DILocation(line: 234, column: 1, scope: !6777)
!6792 = !DILocation(line: 233, column: 2, scope: !6777)
!6793 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6577, file: !6577, line: 80, type: !6578, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6794)
!6794 = !{!6795, !6796}
!6795 = !DILocalVariable(name: "v", arg: 1, scope: !6793, file: !6577, line: 80, type: !6580)
!6796 = !DILocalVariable(name: "size", arg: 2, scope: !6793, file: !6577, line: 80, type: !1108)
!6797 = !DILocation(line: 80, column: 74, scope: !6793)
!6798 = !DILocation(line: 80, column: 84, scope: !6793)
!6799 = !DILocation(line: 82, column: 20, scope: !6793)
!6800 = !DILocation(line: 82, column: 23, scope: !6793)
!6801 = !DILocation(line: 82, column: 2, scope: !6793)
!6802 = !DILocation(line: 83, column: 2, scope: !6793)
!6803 = !DILocation(line: 84, column: 1, scope: !6793)
!6804 = distinct !DISubprogram(name: "arch_clear_bit", scope: !6738, file: !6738, line: 72, type: !6696, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6805)
!6805 = !{!6806, !6807}
!6806 = !DILocalVariable(name: "nr", arg: 1, scope: !6804, file: !6738, line: 72, type: !477)
!6807 = !DILocalVariable(name: "addr", arg: 2, scope: !6804, file: !6738, line: 72, type: !6698)
!6808 = !DILocation(line: 72, column: 21, scope: !6804)
!6809 = !DILocation(line: 72, column: 49, scope: !6804)
!6810 = !DILocation(line: 74, column: 27, scope: !6811)
!6811 = distinct !DILexicalBlock(scope: !6804, file: !6738, line: 74, column: 6)
!6812 = !DILocation(line: 74, column: 6, scope: !6811)
!6813 = !DILocation(line: 74, column: 6, scope: !6804)
!6814 = !DILocation(line: 76, column: 6, scope: !6815)
!6815 = distinct !DILexicalBlock(scope: !6811, file: !6738, line: 74, column: 32)
!6816 = !DILocation(line: 77, column: 13, scope: !6815)
!6817 = !DILocation(line: 77, column: 12, scope: !6815)
!6818 = !DILocation(line: 75, column: 3, scope: !6815)
!6819 = !{i64 2148352683, i64 2148352722, i64 2148352743, i64 2148352780, i64 2148352803, i64 2148352673}
!6820 = !DILocation(line: 78, column: 2, scope: !6815)
!6821 = !DILocation(line: 80, column: 8, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6811, file: !6738, line: 78, column: 9)
!6823 = !DILocation(line: 80, column: 32, scope: !6822)
!6824 = !DILocation(line: 79, column: 3, scope: !6822)
!6825 = !{i64 2148352968, i64 2148353007, i64 2148353028, i64 2148353065, i64 2148353088, i64 2148352958}
!6826 = !DILocation(line: 82, column: 1, scope: !6804)
!6827 = distinct !DISubprogram(name: "arch_set_bit", scope: !6738, file: !6738, line: 52, type: !6696, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6828)
!6828 = !{!6829, !6830}
!6829 = !DILocalVariable(name: "nr", arg: 1, scope: !6827, file: !6738, line: 52, type: !477)
!6830 = !DILocalVariable(name: "addr", arg: 2, scope: !6827, file: !6738, line: 52, type: !6698)
!6831 = !DILocation(line: 52, column: 19, scope: !6827)
!6832 = !DILocation(line: 52, column: 47, scope: !6827)
!6833 = !DILocation(line: 54, column: 27, scope: !6834)
!6834 = distinct !DILexicalBlock(scope: !6827, file: !6738, line: 54, column: 6)
!6835 = !DILocation(line: 54, column: 6, scope: !6834)
!6836 = !DILocation(line: 54, column: 6, scope: !6827)
!6837 = !DILocation(line: 56, column: 6, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6834, file: !6738, line: 54, column: 32)
!6839 = !DILocation(line: 57, column: 12, scope: !6838)
!6840 = !DILocation(line: 55, column: 3, scope: !6838)
!6841 = !{i64 2148351395, i64 2148351434, i64 2148351455, i64 2148351492, i64 2148351515, i64 2148351385}
!6842 = !DILocation(line: 59, column: 2, scope: !6838)
!6843 = !DILocation(line: 61, column: 8, scope: !6844)
!6844 = distinct !DILexicalBlock(scope: !6834, file: !6738, line: 59, column: 9)
!6845 = !DILocation(line: 61, column: 32, scope: !6844)
!6846 = !DILocation(line: 60, column: 3, scope: !6844)
!6847 = !{i64 2148351680, i64 2148351719, i64 2148351740, i64 2148351777, i64 2148351800, i64 2148351670}
!6848 = !DILocation(line: 63, column: 1, scope: !6827)
!6849 = distinct !DISubprogram(name: "tty_io_error", scope: !3540, file: !3540, line: 333, type: !6850, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6852)
!6850 = !DISubroutineType(types: !6851)
!6851 = !{!362, !3538}
!6852 = !{!6853}
!6853 = !DILocalVariable(name: "tty", arg: 1, scope: !6849, file: !3540, line: 333, type: !3538)
!6854 = !DILocation(line: 333, column: 52, scope: !6849)
!6855 = !DILocation(line: 335, column: 9, scope: !6849)
!6856 = !DILocation(line: 335, column: 2, scope: !6849)
!6857 = !DISubprogram(name: "__wake_up", scope: !879, file: !879, line: 212, type: !6858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6858 = !DISubroutineType(types: !6859)
!6859 = !{!102, !6860, !7, !102, !303}
!6860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!6861 = distinct !DISubprogram(name: "spin_lock_irq", scope: !6862, file: !6862, line: 374, type: !6863, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6865)
!6862 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6863 = !DISubroutineType(types: !6864)
!6864 = !{null, !1599}
!6865 = !{!6866}
!6866 = !DILocalVariable(name: "lock", arg: 1, scope: !6861, file: !6862, line: 374, type: !1599)
!6867 = !DILocation(line: 374, column: 55, scope: !6861)
!6868 = !DILocation(line: 376, column: 2, scope: !6861)
!6869 = !DILocation(line: 377, column: 1, scope: !6861)
!6870 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !6862, file: !6862, line: 399, type: !6863, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6871)
!6871 = !{!6872}
!6872 = !DILocalVariable(name: "lock", arg: 1, scope: !6870, file: !6862, line: 399, type: !1599)
!6873 = !DILocation(line: 399, column: 57, scope: !6870)
!6874 = !DILocation(line: 401, column: 2, scope: !6870)
!6875 = !DILocation(line: 402, column: 1, scope: !6870)
!6876 = !DISubprogram(name: "mutex_lock", scope: !828, file: !828, line: 227, type: !6877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6877 = !DISubroutineType(types: !6878)
!6878 = !{null, !6879}
!6879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!6880 = !DISubprogram(name: "devpts_pty_kill", scope: !5247, file: !5247, line: 31, type: !2864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6881 = !DISubprogram(name: "mutex_unlock", scope: !828, file: !828, line: 246, type: !6877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6882 = !DISubprogram(name: "tty_vhangup", scope: !3540, file: !3540, line: 426, type: !4191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6883 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !6884, file: !6884, line: 29, type: !6885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6884 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6885 = !DISubroutineType(types: !6886)
!6886 = !{null, !6887}
!6887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!6888 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !6884, file: !6884, line: 41, type: !6885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6889 = !DISubprogram(name: "tty_port_put", scope: !4043, file: !4043, line: 162, type: !4094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6890 = !DISubprogram(name: "tty_insert_flip_string_and_push_buffer", scope: !5458, file: !5458, line: 117, type: !6891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6891 = !DISubroutineType(types: !6892)
!6892 = !{!102, !4041, !4110, !1108}
!6893 = !DISubprogram(name: "tty_buffer_space_avail", scope: !6305, file: !6305, line: 11, type: !6894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6894 = !DISubroutineType(types: !6895)
!6895 = !{!7, !4041}
!6896 = distinct !DISubprogram(name: "pty_set_lock", scope: !3, file: !3, line: 137, type: !6897, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6899)
!6897 = !DISubroutineType(types: !6898)
!6898 = !{!102, !3538, !2216}
!6899 = !{!6900, !6901, !6902, !6903, !6907, !6908}
!6900 = !DILocalVariable(name: "tty", arg: 1, scope: !6896, file: !3, line: 137, type: !3538)
!6901 = !DILocalVariable(name: "arg", arg: 2, scope: !6896, file: !3, line: 137, type: !2216)
!6902 = !DILocalVariable(name: "val", scope: !6896, file: !3, line: 139, type: !102)
!6903 = !DILocalVariable(name: "__ret_gu", scope: !6904, file: !3, line: 141, type: !102)
!6904 = distinct !DILexicalBlock(scope: !6905, file: !3, line: 141, column: 6)
!6905 = distinct !DILexicalBlock(scope: !6906, file: !3, line: 141, column: 6)
!6906 = distinct !DILexicalBlock(scope: !6896, file: !3, line: 141, column: 6)
!6907 = !DILocalVariable(name: "__val_gu", scope: !6904, file: !3, line: 141, type: !7)
!6908 = !DILocalVariable(name: "__tmp", scope: !6909, file: !3, line: 141, type: !212)
!6909 = distinct !DILexicalBlock(scope: !6904, file: !3, line: 141, column: 6)
!6910 = !DILocation(line: 137, column: 44, scope: !6896)
!6911 = !DILocation(line: 137, column: 61, scope: !6896)
!6912 = !DILocation(line: 139, column: 2, scope: !6896)
!6913 = !DILocation(line: 139, column: 6, scope: !6896)
!6914 = !DILocation(line: 141, column: 6, scope: !6905)
!6915 = !DILocation(line: 141, column: 6, scope: !6904)
!6916 = !{i64 2154916450}
!6917 = !DILocation(line: 141, column: 6, scope: !6909)
!6918 = !DILocation(line: 141, column: 6, scope: !6906)
!6919 = !DILocation(line: 141, column: 6, scope: !6896)
!6920 = !DILocation(line: 142, column: 3, scope: !6906)
!6921 = !DILocation(line: 143, column: 6, scope: !6922)
!6922 = distinct !DILexicalBlock(scope: !6896, file: !3, line: 143, column: 6)
!6923 = !DILocation(line: 143, column: 6, scope: !6896)
!6924 = !DILocation(line: 144, column: 26, scope: !6922)
!6925 = !DILocation(line: 144, column: 31, scope: !6922)
!6926 = !DILocation(line: 144, column: 3, scope: !6922)
!6927 = !DILocation(line: 146, column: 28, scope: !6922)
!6928 = !DILocation(line: 146, column: 33, scope: !6922)
!6929 = !DILocation(line: 146, column: 3, scope: !6922)
!6930 = !DILocation(line: 147, column: 2, scope: !6896)
!6931 = !DILocation(line: 148, column: 1, scope: !6896)
!6932 = distinct !DISubprogram(name: "pty_get_lock", scope: !3, file: !3, line: 150, type: !6897, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6933)
!6933 = !{!6934, !6935, !6936, !6937, !6940, !6941, !6942, !6943}
!6934 = !DILocalVariable(name: "tty", arg: 1, scope: !6932, file: !3, line: 150, type: !3538)
!6935 = !DILocalVariable(name: "arg", arg: 2, scope: !6932, file: !3, line: 150, type: !2216)
!6936 = !DILocalVariable(name: "locked", scope: !6932, file: !3, line: 152, type: !102)
!6937 = !DILocalVariable(name: "__ret_pu", scope: !6938, file: !3, line: 154, type: !102)
!6938 = distinct !DILexicalBlock(scope: !6939, file: !3, line: 154, column: 9)
!6939 = distinct !DILexicalBlock(scope: !6932, file: !3, line: 154, column: 9)
!6940 = !DILocalVariable(name: "__ptr_pu", scope: !6938, file: !3, line: 154, type: !303)
!6941 = !DILocalVariable(name: "__val_pu", scope: !6938, file: !3, line: 154, type: !102)
!6942 = !DILocalVariable(name: "__x", scope: !6938, file: !3, line: 154, type: !102)
!6943 = !DILocalVariable(name: "__ptr", scope: !6938, file: !3, line: 154, type: !2216)
!6944 = !DILocation(line: 150, column: 44, scope: !6932)
!6945 = !DILocation(line: 150, column: 61, scope: !6932)
!6946 = !DILocation(line: 152, column: 2, scope: !6932)
!6947 = !DILocation(line: 152, column: 6, scope: !6932)
!6948 = !DILocation(line: 152, column: 15, scope: !6932)
!6949 = !DILocation(line: 154, column: 9, scope: !6939)
!6950 = !DILocation(line: 154, column: 9, scope: !6938)
!6951 = !{i64 2154918928}
!6952 = !DILocation(line: 154, column: 9, scope: !6953)
!6953 = distinct !DILexicalBlock(scope: !6938, file: !3, line: 154, column: 9)
!6954 = !DILocation(line: 154, column: 9, scope: !6932)
!6955 = !DILocation(line: 155, column: 1, scope: !6932)
!6956 = !DILocation(line: 154, column: 2, scope: !6932)
!6957 = distinct !DISubprogram(name: "pty_set_pktmode", scope: !3, file: !3, line: 158, type: !6897, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6958)
!6958 = !{!6959, !6960, !6961, !6962, !6966, !6967}
!6959 = !DILocalVariable(name: "tty", arg: 1, scope: !6957, file: !3, line: 158, type: !3538)
!6960 = !DILocalVariable(name: "arg", arg: 2, scope: !6957, file: !3, line: 158, type: !2216)
!6961 = !DILocalVariable(name: "pktmode", scope: !6957, file: !3, line: 160, type: !102)
!6962 = !DILocalVariable(name: "__ret_gu", scope: !6963, file: !3, line: 162, type: !102)
!6963 = distinct !DILexicalBlock(scope: !6964, file: !3, line: 162, column: 6)
!6964 = distinct !DILexicalBlock(scope: !6965, file: !3, line: 162, column: 6)
!6965 = distinct !DILexicalBlock(scope: !6957, file: !3, line: 162, column: 6)
!6966 = !DILocalVariable(name: "__val_gu", scope: !6963, file: !3, line: 162, type: !7)
!6967 = !DILocalVariable(name: "__tmp", scope: !6968, file: !3, line: 162, type: !212)
!6968 = distinct !DILexicalBlock(scope: !6963, file: !3, line: 162, column: 6)
!6969 = !DILocation(line: 158, column: 47, scope: !6957)
!6970 = !DILocation(line: 158, column: 64, scope: !6957)
!6971 = !DILocation(line: 160, column: 2, scope: !6957)
!6972 = !DILocation(line: 160, column: 6, scope: !6957)
!6973 = !DILocation(line: 162, column: 6, scope: !6964)
!6974 = !DILocation(line: 162, column: 6, scope: !6963)
!6975 = !{i64 2154923848}
!6976 = !DILocation(line: 162, column: 6, scope: !6968)
!6977 = !DILocation(line: 162, column: 6, scope: !6965)
!6978 = !DILocation(line: 162, column: 6, scope: !6957)
!6979 = !DILocation(line: 163, column: 3, scope: !6965)
!6980 = !DILocation(line: 165, column: 17, scope: !6957)
!6981 = !DILocation(line: 165, column: 22, scope: !6957)
!6982 = !DILocation(line: 165, column: 27, scope: !6957)
!6983 = !DILocation(line: 165, column: 2, scope: !6957)
!6984 = !DILocation(line: 166, column: 6, scope: !6985)
!6985 = distinct !DILexicalBlock(scope: !6957, file: !3, line: 166, column: 6)
!6986 = !DILocation(line: 166, column: 6, scope: !6957)
!6987 = !DILocation(line: 167, column: 8, scope: !6988)
!6988 = distinct !DILexicalBlock(scope: !6989, file: !3, line: 167, column: 7)
!6989 = distinct !DILexicalBlock(scope: !6985, file: !3, line: 166, column: 15)
!6990 = !DILocation(line: 167, column: 13, scope: !6988)
!6991 = !DILocation(line: 167, column: 18, scope: !6988)
!6992 = !DILocation(line: 167, column: 7, scope: !6989)
!6993 = !DILocation(line: 168, column: 4, scope: !6994)
!6994 = distinct !DILexicalBlock(scope: !6988, file: !3, line: 167, column: 26)
!6995 = !DILocation(line: 168, column: 9, scope: !6994)
!6996 = !DILocation(line: 168, column: 15, scope: !6994)
!6997 = !DILocation(line: 168, column: 20, scope: !6994)
!6998 = !DILocation(line: 168, column: 30, scope: !6994)
!6999 = !DILocation(line: 169, column: 4, scope: !6994)
!7000 = !DILocation(line: 169, column: 4, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6994, file: !3, line: 169, column: 4)
!7002 = !DILocation(line: 169, column: 4, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !7001, file: !3, line: 169, column: 4)
!7004 = !{i64 2154925557}
!7005 = !DILocation(line: 170, column: 4, scope: !6994)
!7006 = !DILocation(line: 170, column: 9, scope: !6994)
!7007 = !DILocation(line: 170, column: 14, scope: !6994)
!7008 = !DILocation(line: 170, column: 21, scope: !6994)
!7009 = !DILocation(line: 171, column: 3, scope: !6994)
!7010 = !DILocation(line: 172, column: 2, scope: !6989)
!7011 = !DILocation(line: 173, column: 3, scope: !6985)
!7012 = !DILocation(line: 173, column: 8, scope: !6985)
!7013 = !DILocation(line: 173, column: 13, scope: !6985)
!7014 = !DILocation(line: 173, column: 20, scope: !6985)
!7015 = !DILocation(line: 174, column: 19, scope: !6957)
!7016 = !DILocation(line: 174, column: 24, scope: !6957)
!7017 = !DILocation(line: 174, column: 29, scope: !6957)
!7018 = !DILocation(line: 174, column: 2, scope: !6957)
!7019 = !DILocation(line: 176, column: 2, scope: !6957)
!7020 = !DILocation(line: 177, column: 1, scope: !6957)
!7021 = distinct !DISubprogram(name: "pty_get_pktmode", scope: !3, file: !3, line: 180, type: !6897, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7022)
!7022 = !{!7023, !7024, !7025, !7026, !7029, !7030, !7031, !7032}
!7023 = !DILocalVariable(name: "tty", arg: 1, scope: !7021, file: !3, line: 180, type: !3538)
!7024 = !DILocalVariable(name: "arg", arg: 2, scope: !7021, file: !3, line: 180, type: !2216)
!7025 = !DILocalVariable(name: "pktmode", scope: !7021, file: !3, line: 182, type: !102)
!7026 = !DILocalVariable(name: "__ret_pu", scope: !7027, file: !3, line: 184, type: !102)
!7027 = distinct !DILexicalBlock(scope: !7028, file: !3, line: 184, column: 9)
!7028 = distinct !DILexicalBlock(scope: !7021, file: !3, line: 184, column: 9)
!7029 = !DILocalVariable(name: "__ptr_pu", scope: !7027, file: !3, line: 184, type: !303)
!7030 = !DILocalVariable(name: "__val_pu", scope: !7027, file: !3, line: 184, type: !102)
!7031 = !DILocalVariable(name: "__x", scope: !7027, file: !3, line: 184, type: !102)
!7032 = !DILocalVariable(name: "__ptr", scope: !7027, file: !3, line: 184, type: !2216)
!7033 = !DILocation(line: 180, column: 47, scope: !7021)
!7034 = !DILocation(line: 180, column: 64, scope: !7021)
!7035 = !DILocation(line: 182, column: 2, scope: !7021)
!7036 = !DILocation(line: 182, column: 6, scope: !7021)
!7037 = !DILocation(line: 182, column: 16, scope: !7021)
!7038 = !DILocation(line: 182, column: 21, scope: !7021)
!7039 = !DILocation(line: 182, column: 26, scope: !7021)
!7040 = !DILocation(line: 184, column: 9, scope: !7028)
!7041 = !DILocation(line: 184, column: 9, scope: !7027)
!7042 = !{i64 2154926171}
!7043 = !DILocation(line: 184, column: 9, scope: !7044)
!7044 = distinct !DILexicalBlock(scope: !7027, file: !3, line: 184, column: 9)
!7045 = !DILocation(line: 184, column: 9, scope: !7021)
!7046 = !DILocation(line: 185, column: 1, scope: !7021)
!7047 = !DILocation(line: 184, column: 2, scope: !7021)
!7048 = distinct !DISubprogram(name: "might_fault", scope: !7049, file: !7049, line: 202, type: !2434, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7049 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!7050 = !DILocation(line: 202, column: 40, scope: !7048)
!7051 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !7052, file: !7052, line: 76, type: !7053, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7055)
!7052 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!7053 = !DISubroutineType(types: !7054)
!7054 = !{null, !303, !1901, !1108, !1108}
!7055 = !{!7056, !7057, !7058, !7059}
!7056 = !DILocalVariable(name: "to", arg: 1, scope: !7051, file: !7052, line: 76, type: !303)
!7057 = !DILocalVariable(name: "from", arg: 2, scope: !7051, file: !7052, line: 76, type: !1901)
!7058 = !DILocalVariable(name: "to_copy", arg: 3, scope: !7051, file: !7052, line: 77, type: !1108)
!7059 = !DILocalVariable(name: "left", arg: 4, scope: !7051, file: !7052, line: 77, type: !1108)
!7060 = !DILocation(line: 76, column: 52, scope: !7051)
!7061 = !DILocation(line: 76, column: 68, scope: !7051)
!7062 = !DILocation(line: 77, column: 18, scope: !7051)
!7063 = !DILocation(line: 77, column: 34, scope: !7051)
!7064 = !DILocation(line: 79, column: 1, scope: !7051)
!7065 = distinct !DISubprogram(name: "pty_signal", scope: !3, file: !3, line: 188, type: !4229, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7066)
!7066 = !{!7067, !7068, !7069}
!7067 = !DILocalVariable(name: "tty", arg: 1, scope: !7065, file: !3, line: 188, type: !3538)
!7068 = !DILocalVariable(name: "sig", arg: 2, scope: !7065, file: !3, line: 188, type: !102)
!7069 = !DILocalVariable(name: "pgrp", scope: !7065, file: !3, line: 190, type: !865)
!7070 = !DILocation(line: 188, column: 42, scope: !7065)
!7071 = !DILocation(line: 188, column: 51, scope: !7065)
!7072 = !DILocation(line: 190, column: 2, scope: !7065)
!7073 = !DILocation(line: 190, column: 14, scope: !7065)
!7074 = !DILocation(line: 192, column: 6, scope: !7075)
!7075 = distinct !DILexicalBlock(scope: !7065, file: !3, line: 192, column: 6)
!7076 = !DILocation(line: 192, column: 10, scope: !7075)
!7077 = !DILocation(line: 192, column: 20, scope: !7075)
!7078 = !DILocation(line: 192, column: 23, scope: !7075)
!7079 = !DILocation(line: 192, column: 27, scope: !7075)
!7080 = !DILocation(line: 192, column: 38, scope: !7075)
!7081 = !DILocation(line: 192, column: 41, scope: !7075)
!7082 = !DILocation(line: 192, column: 45, scope: !7075)
!7083 = !DILocation(line: 192, column: 6, scope: !7065)
!7084 = !DILocation(line: 193, column: 3, scope: !7075)
!7085 = !DILocation(line: 195, column: 6, scope: !7086)
!7086 = distinct !DILexicalBlock(scope: !7065, file: !3, line: 195, column: 6)
!7087 = !DILocation(line: 195, column: 11, scope: !7086)
!7088 = !DILocation(line: 195, column: 6, scope: !7065)
!7089 = !DILocation(line: 196, column: 23, scope: !7090)
!7090 = distinct !DILexicalBlock(scope: !7086, file: !3, line: 195, column: 17)
!7091 = !DILocation(line: 196, column: 28, scope: !7090)
!7092 = !DILocation(line: 196, column: 10, scope: !7090)
!7093 = !DILocation(line: 196, column: 8, scope: !7090)
!7094 = !DILocation(line: 197, column: 7, scope: !7095)
!7095 = distinct !DILexicalBlock(scope: !7090, file: !3, line: 197, column: 7)
!7096 = !DILocation(line: 197, column: 7, scope: !7090)
!7097 = !DILocation(line: 198, column: 14, scope: !7095)
!7098 = !DILocation(line: 198, column: 20, scope: !7095)
!7099 = !DILocation(line: 198, column: 4, scope: !7095)
!7100 = !DILocation(line: 199, column: 11, scope: !7090)
!7101 = !DILocation(line: 199, column: 3, scope: !7090)
!7102 = !DILocation(line: 200, column: 2, scope: !7090)
!7103 = !DILocation(line: 201, column: 2, scope: !7065)
!7104 = !DILocation(line: 202, column: 1, scope: !7065)
!7105 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !7052, file: !7052, line: 70, type: !7106, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7108)
!7106 = !DISubroutineType(types: !7107)
!7107 = !{null, !1901, !1108}
!7108 = !{!7109, !7110}
!7109 = !DILocalVariable(name: "address", arg: 1, scope: !7105, file: !7052, line: 70, type: !1901)
!7110 = !DILocalVariable(name: "size", arg: 2, scope: !7105, file: !7052, line: 70, type: !1108)
!7111 = !DILocation(line: 70, column: 54, scope: !7105)
!7112 = !DILocation(line: 70, column: 70, scope: !7105)
!7113 = !DILocation(line: 72, column: 1, scope: !7105)
!7114 = !DISubprogram(name: "tty_get_pgrp", scope: !3540, file: !3540, line: 345, type: !7115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7115 = !DISubroutineType(types: !7116)
!7116 = !{!865, !3538}
!7117 = !DISubprogram(name: "kill_pgrp", scope: !3474, file: !3474, line: 341, type: !7118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7118 = !DISubroutineType(types: !7119)
!7119 = !{!102, !865, !102, !102}
!7120 = !DISubprogram(name: "put_pid", scope: !6, file: !6, line: 92, type: !7121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7121 = !DISubroutineType(types: !7122)
!7122 = !{null, !865}
!7123 = distinct !DISubprogram(name: "compat_ptr", scope: !4663, file: !4663, line: 977, type: !7124, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7126)
!7124 = !DISubroutineType(types: !7125)
!7125 = !{!303, !4669}
!7126 = !{!7127}
!7127 = !DILocalVariable(name: "uptr", arg: 1, scope: !7123, file: !4663, line: 977, type: !4669)
!7128 = !DILocation(line: 977, column: 53, scope: !7123)
!7129 = !DILocation(line: 979, column: 39, scope: !7123)
!7130 = !DILocation(line: 979, column: 24, scope: !7123)
!7131 = !DILocation(line: 979, column: 9, scope: !7123)
!7132 = !DILocation(line: 979, column: 2, scope: !7123)
!7133 = !DISubprogram(name: "tty_wakeup", scope: !3540, file: !3540, line: 459, type: !4191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7134 = !DISubprogram(name: "tty_buffer_flush", scope: !5458, file: !5458, line: 72, type: !7135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7135 = !DISubroutineType(types: !7136)
!7136 = !{null, !3538, !4284}
!7137 = !DISubprogram(name: "memcmp", scope: !7138, file: !7138, line: 196, type: !7139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7138 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!7139 = !DISubroutineType(types: !7140)
!7140 = !{!102, !1901, !1901, !1109}
!7141 = !DISubprogram(name: "seq_printf", scope: !1967, file: !1967, line: 119, type: !7142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7142 = !DISubroutineType(types: !7143)
!7143 = !{null, !1965, !365, null}
!7144 = distinct !DISubprogram(name: "pts_unix98_lookup", scope: !3, file: !3, line: 705, type: !4171, scopeLine: 707, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7145)
!7145 = !{!7146, !7147, !7148, !7149}
!7146 = !DILocalVariable(name: "driver", arg: 1, scope: !7144, file: !3, line: 705, type: !3996)
!7147 = !DILocalVariable(name: "file", arg: 2, scope: !7144, file: !3, line: 706, type: !813)
!7148 = !DILocalVariable(name: "idx", arg: 3, scope: !7144, file: !3, line: 706, type: !102)
!7149 = !DILocalVariable(name: "tty", scope: !7144, file: !3, line: 708, type: !3538)
!7150 = !DILocation(line: 705, column: 64, scope: !7144)
!7151 = !DILocation(line: 706, column: 16, scope: !7144)
!7152 = !DILocation(line: 706, column: 26, scope: !7144)
!7153 = !DILocation(line: 708, column: 2, scope: !7144)
!7154 = !DILocation(line: 708, column: 21, scope: !7144)
!7155 = !DILocation(line: 710, column: 2, scope: !7144)
!7156 = !DILocation(line: 711, column: 24, scope: !7144)
!7157 = !DILocation(line: 711, column: 30, scope: !7144)
!7158 = !DILocation(line: 711, column: 37, scope: !7144)
!7159 = !DILocation(line: 711, column: 8, scope: !7144)
!7160 = !DILocation(line: 711, column: 6, scope: !7144)
!7161 = !DILocation(line: 712, column: 2, scope: !7144)
!7162 = !DILocation(line: 714, column: 7, scope: !7163)
!7163 = distinct !DILexicalBlock(scope: !7144, file: !3, line: 714, column: 6)
!7164 = !DILocation(line: 714, column: 6, scope: !7144)
!7165 = !DILocation(line: 715, column: 10, scope: !7163)
!7166 = !DILocation(line: 715, column: 3, scope: !7163)
!7167 = !DILocation(line: 716, column: 9, scope: !7144)
!7168 = !DILocation(line: 716, column: 2, scope: !7144)
!7169 = !DILocation(line: 717, column: 1, scope: !7144)
!7170 = distinct !DISubprogram(name: "pty_set_termios", scope: !3, file: !3, line: 242, type: !4218, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7171)
!7171 = !{!7172, !7173, !7174, !7177, !7178}
!7172 = !DILocalVariable(name: "tty", arg: 1, scope: !7170, file: !3, line: 242, type: !3538)
!7173 = !DILocalVariable(name: "old_termios", arg: 2, scope: !7170, file: !3, line: 243, type: !4220)
!7174 = !DILocalVariable(name: "extproc", scope: !7175, file: !3, line: 247, type: !102)
!7175 = distinct !DILexicalBlock(scope: !7176, file: !3, line: 246, column: 43)
!7176 = distinct !DILexicalBlock(scope: !7170, file: !3, line: 246, column: 6)
!7177 = !DILocalVariable(name: "old_flow", scope: !7175, file: !3, line: 248, type: !102)
!7178 = !DILocalVariable(name: "new_flow", scope: !7175, file: !3, line: 251, type: !102)
!7179 = !DILocation(line: 242, column: 48, scope: !7170)
!7180 = !DILocation(line: 243, column: 31, scope: !7170)
!7181 = !DILocation(line: 246, column: 6, scope: !7176)
!7182 = !DILocation(line: 246, column: 11, scope: !7176)
!7183 = !DILocation(line: 246, column: 16, scope: !7176)
!7184 = !DILocation(line: 246, column: 19, scope: !7176)
!7185 = !DILocation(line: 246, column: 24, scope: !7176)
!7186 = !DILocation(line: 246, column: 30, scope: !7176)
!7187 = !DILocation(line: 246, column: 35, scope: !7176)
!7188 = !DILocation(line: 246, column: 6, scope: !7170)
!7189 = !DILocation(line: 247, column: 3, scope: !7175)
!7190 = !DILocation(line: 247, column: 7, scope: !7175)
!7191 = !DILocation(line: 247, column: 18, scope: !7175)
!7192 = !DILocation(line: 247, column: 31, scope: !7175)
!7193 = !DILocation(line: 247, column: 39, scope: !7175)
!7194 = !DILocation(line: 247, column: 52, scope: !7175)
!7195 = !DILocation(line: 247, column: 50, scope: !7175)
!7196 = !DILocation(line: 248, column: 3, scope: !7175)
!7197 = !DILocation(line: 248, column: 7, scope: !7175)
!7198 = !DILocation(line: 248, column: 20, scope: !7175)
!7199 = !DILocation(line: 248, column: 33, scope: !7175)
!7200 = !DILocation(line: 248, column: 41, scope: !7175)
!7201 = !DILocation(line: 248, column: 49, scope: !7175)
!7202 = !DILocation(line: 249, column: 6, scope: !7175)
!7203 = !DILocation(line: 249, column: 19, scope: !7175)
!7204 = !DILocation(line: 249, column: 31, scope: !7175)
!7205 = !DILocation(line: 249, column: 42, scope: !7175)
!7206 = !DILocation(line: 250, column: 6, scope: !7175)
!7207 = !DILocation(line: 250, column: 19, scope: !7175)
!7208 = !DILocation(line: 250, column: 32, scope: !7175)
!7209 = !DILocation(line: 0, scope: !7175)
!7210 = !DILocation(line: 251, column: 3, scope: !7175)
!7211 = !DILocation(line: 251, column: 7, scope: !7175)
!7212 = !DILocation(line: 251, column: 19, scope: !7175)
!7213 = !DILocation(line: 251, column: 31, scope: !7175)
!7214 = !DILocation(line: 252, column: 5, scope: !7175)
!7215 = !DILocation(line: 252, column: 20, scope: !7175)
!7216 = !DILocation(line: 252, column: 30, scope: !7175)
!7217 = !DILocation(line: 253, column: 5, scope: !7175)
!7218 = !DILocation(line: 253, column: 21, scope: !7175)
!7219 = !DILocation(line: 254, column: 8, scope: !7220)
!7220 = distinct !DILexicalBlock(scope: !7175, file: !3, line: 254, column: 7)
!7221 = !DILocation(line: 254, column: 20, scope: !7220)
!7222 = !DILocation(line: 254, column: 17, scope: !7220)
!7223 = !DILocation(line: 254, column: 30, scope: !7220)
!7224 = !DILocation(line: 254, column: 33, scope: !7220)
!7225 = !DILocation(line: 254, column: 7, scope: !7175)
!7226 = !DILocation(line: 255, column: 19, scope: !7227)
!7227 = distinct !DILexicalBlock(scope: !7220, file: !3, line: 254, column: 42)
!7228 = !DILocation(line: 255, column: 24, scope: !7227)
!7229 = !DILocation(line: 255, column: 29, scope: !7227)
!7230 = !DILocation(line: 255, column: 4, scope: !7227)
!7231 = !DILocation(line: 256, column: 8, scope: !7232)
!7232 = distinct !DILexicalBlock(scope: !7227, file: !3, line: 256, column: 8)
!7233 = !DILocation(line: 256, column: 20, scope: !7232)
!7234 = !DILocation(line: 256, column: 17, scope: !7232)
!7235 = !DILocation(line: 256, column: 8, scope: !7227)
!7236 = !DILocation(line: 257, column: 5, scope: !7237)
!7237 = distinct !DILexicalBlock(scope: !7232, file: !3, line: 256, column: 30)
!7238 = !DILocation(line: 257, column: 10, scope: !7237)
!7239 = !DILocation(line: 257, column: 15, scope: !7237)
!7240 = !DILocation(line: 257, column: 25, scope: !7237)
!7241 = !DILocation(line: 258, column: 9, scope: !7242)
!7242 = distinct !DILexicalBlock(scope: !7237, file: !3, line: 258, column: 9)
!7243 = !DILocation(line: 258, column: 9, scope: !7237)
!7244 = !DILocation(line: 259, column: 6, scope: !7242)
!7245 = !DILocation(line: 259, column: 11, scope: !7242)
!7246 = !DILocation(line: 259, column: 16, scope: !7242)
!7247 = !DILocation(line: 259, column: 26, scope: !7242)
!7248 = !DILocation(line: 261, column: 6, scope: !7242)
!7249 = !DILocation(line: 261, column: 11, scope: !7242)
!7250 = !DILocation(line: 261, column: 16, scope: !7242)
!7251 = !DILocation(line: 261, column: 26, scope: !7242)
!7252 = !DILocation(line: 262, column: 4, scope: !7237)
!7253 = !DILocation(line: 263, column: 8, scope: !7254)
!7254 = distinct !DILexicalBlock(scope: !7227, file: !3, line: 263, column: 8)
!7255 = !DILocation(line: 263, column: 8, scope: !7227)
!7256 = !DILocation(line: 264, column: 5, scope: !7254)
!7257 = !DILocation(line: 264, column: 10, scope: !7254)
!7258 = !DILocation(line: 264, column: 15, scope: !7254)
!7259 = !DILocation(line: 264, column: 25, scope: !7254)
!7260 = !DILocation(line: 265, column: 21, scope: !7227)
!7261 = !DILocation(line: 265, column: 26, scope: !7227)
!7262 = !DILocation(line: 265, column: 31, scope: !7227)
!7263 = !DILocation(line: 265, column: 4, scope: !7227)
!7264 = !DILocation(line: 266, column: 4, scope: !7227)
!7265 = !DILocation(line: 267, column: 3, scope: !7227)
!7266 = !DILocation(line: 268, column: 2, scope: !7176)
!7267 = !DILocation(line: 268, column: 2, scope: !7175)
!7268 = !DILocation(line: 270, column: 2, scope: !7170)
!7269 = !DILocation(line: 270, column: 7, scope: !7170)
!7270 = !DILocation(line: 270, column: 15, scope: !7170)
!7271 = !DILocation(line: 270, column: 23, scope: !7170)
!7272 = !DILocation(line: 271, column: 2, scope: !7170)
!7273 = !DILocation(line: 271, column: 7, scope: !7170)
!7274 = !DILocation(line: 271, column: 15, scope: !7170)
!7275 = !DILocation(line: 271, column: 23, scope: !7170)
!7276 = !DILocation(line: 272, column: 1, scope: !7170)
!7277 = distinct !DISubprogram(name: "pty_stop", scope: !3, file: !3, line: 335, type: !4191, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7278)
!7278 = !{!7279, !7280, !7281, !7287}
!7279 = !DILocalVariable(name: "tty", arg: 1, scope: !7277, file: !3, line: 335, type: !3538)
!7280 = !DILocalVariable(name: "flags", scope: !7277, file: !3, line: 337, type: !254)
!7281 = !DILocalVariable(name: "__dummy", scope: !7282, file: !3, line: 340, type: !254)
!7282 = distinct !DILexicalBlock(scope: !7283, file: !3, line: 340, column: 3)
!7283 = distinct !DILexicalBlock(scope: !7284, file: !3, line: 340, column: 3)
!7284 = distinct !DILexicalBlock(scope: !7285, file: !3, line: 340, column: 3)
!7285 = distinct !DILexicalBlock(scope: !7286, file: !3, line: 339, column: 43)
!7286 = distinct !DILexicalBlock(scope: !7277, file: !3, line: 339, column: 6)
!7287 = !DILocalVariable(name: "__dummy2", scope: !7282, file: !3, line: 340, type: !254)
!7288 = !DILocation(line: 335, column: 41, scope: !7277)
!7289 = !DILocation(line: 337, column: 2, scope: !7277)
!7290 = !DILocation(line: 337, column: 16, scope: !7277)
!7291 = !DILocation(line: 339, column: 6, scope: !7286)
!7292 = !DILocation(line: 339, column: 11, scope: !7286)
!7293 = !DILocation(line: 339, column: 16, scope: !7286)
!7294 = !DILocation(line: 339, column: 19, scope: !7286)
!7295 = !DILocation(line: 339, column: 24, scope: !7286)
!7296 = !DILocation(line: 339, column: 30, scope: !7286)
!7297 = !DILocation(line: 339, column: 35, scope: !7286)
!7298 = !DILocation(line: 339, column: 6, scope: !7277)
!7299 = !DILocation(line: 340, column: 3, scope: !7285)
!7300 = !DILocation(line: 340, column: 3, scope: !7284)
!7301 = !DILocation(line: 340, column: 3, scope: !7282)
!7302 = !DILocation(line: 340, column: 3, scope: !7283)
!7303 = !DILocation(line: 341, column: 3, scope: !7285)
!7304 = !DILocation(line: 341, column: 8, scope: !7285)
!7305 = !DILocation(line: 341, column: 13, scope: !7285)
!7306 = !DILocation(line: 341, column: 23, scope: !7285)
!7307 = !DILocation(line: 342, column: 3, scope: !7285)
!7308 = !DILocation(line: 342, column: 8, scope: !7285)
!7309 = !DILocation(line: 342, column: 13, scope: !7285)
!7310 = !DILocation(line: 342, column: 23, scope: !7285)
!7311 = !DILocation(line: 343, column: 27, scope: !7285)
!7312 = !DILocation(line: 343, column: 32, scope: !7285)
!7313 = !DILocation(line: 343, column: 37, scope: !7285)
!7314 = !DILocation(line: 343, column: 43, scope: !7285)
!7315 = !DILocation(line: 343, column: 3, scope: !7285)
!7316 = !DILocation(line: 344, column: 3, scope: !7285)
!7317 = !DILocation(line: 345, column: 2, scope: !7285)
!7318 = !DILocation(line: 346, column: 1, scope: !7277)
!7319 = distinct !DISubprogram(name: "pty_start", scope: !3, file: !3, line: 322, type: !4191, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7320)
!7320 = !{!7321, !7322, !7323, !7329}
!7321 = !DILocalVariable(name: "tty", arg: 1, scope: !7319, file: !3, line: 322, type: !3538)
!7322 = !DILocalVariable(name: "flags", scope: !7319, file: !3, line: 324, type: !254)
!7323 = !DILocalVariable(name: "__dummy", scope: !7324, file: !3, line: 327, type: !254)
!7324 = distinct !DILexicalBlock(scope: !7325, file: !3, line: 327, column: 3)
!7325 = distinct !DILexicalBlock(scope: !7326, file: !3, line: 327, column: 3)
!7326 = distinct !DILexicalBlock(scope: !7327, file: !3, line: 327, column: 3)
!7327 = distinct !DILexicalBlock(scope: !7328, file: !3, line: 326, column: 43)
!7328 = distinct !DILexicalBlock(scope: !7319, file: !3, line: 326, column: 6)
!7329 = !DILocalVariable(name: "__dummy2", scope: !7324, file: !3, line: 327, type: !254)
!7330 = !DILocation(line: 322, column: 42, scope: !7319)
!7331 = !DILocation(line: 324, column: 2, scope: !7319)
!7332 = !DILocation(line: 324, column: 16, scope: !7319)
!7333 = !DILocation(line: 326, column: 6, scope: !7328)
!7334 = !DILocation(line: 326, column: 11, scope: !7328)
!7335 = !DILocation(line: 326, column: 16, scope: !7328)
!7336 = !DILocation(line: 326, column: 19, scope: !7328)
!7337 = !DILocation(line: 326, column: 24, scope: !7328)
!7338 = !DILocation(line: 326, column: 30, scope: !7328)
!7339 = !DILocation(line: 326, column: 35, scope: !7328)
!7340 = !DILocation(line: 326, column: 6, scope: !7319)
!7341 = !DILocation(line: 327, column: 3, scope: !7327)
!7342 = !DILocation(line: 327, column: 3, scope: !7326)
!7343 = !DILocation(line: 327, column: 3, scope: !7324)
!7344 = !DILocation(line: 327, column: 3, scope: !7325)
!7345 = !DILocation(line: 328, column: 3, scope: !7327)
!7346 = !DILocation(line: 328, column: 8, scope: !7327)
!7347 = !DILocation(line: 328, column: 13, scope: !7327)
!7348 = !DILocation(line: 328, column: 23, scope: !7327)
!7349 = !DILocation(line: 329, column: 3, scope: !7327)
!7350 = !DILocation(line: 329, column: 8, scope: !7327)
!7351 = !DILocation(line: 329, column: 13, scope: !7327)
!7352 = !DILocation(line: 329, column: 23, scope: !7327)
!7353 = !DILocation(line: 330, column: 27, scope: !7327)
!7354 = !DILocation(line: 330, column: 32, scope: !7327)
!7355 = !DILocation(line: 330, column: 37, scope: !7327)
!7356 = !DILocation(line: 330, column: 43, scope: !7327)
!7357 = !DILocation(line: 330, column: 3, scope: !7327)
!7358 = !DILocation(line: 331, column: 3, scope: !7327)
!7359 = !DILocation(line: 332, column: 2, scope: !7327)
!7360 = !DILocation(line: 333, column: 1, scope: !7319)
!7361 = !DISubprogram(name: "devpts_get_priv", scope: !5247, file: !5247, line: 29, type: !7362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7362 = !DISubroutineType(types: !7363)
!7363 = !{!303, !917}
!7364 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6884, file: !6884, line: 32, type: !7365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7365 = !DISubroutineType(types: !7366)
!7366 = !{!254, !6887}
!7367 = distinct !DISubprogram(name: "spinlock_check", scope: !6862, file: !6862, line: 324, type: !7368, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7370)
!7368 = !DISubroutineType(types: !7369)
!7369 = !{!6887, !1599}
!7370 = !{!7371}
!7371 = !DILocalVariable(name: "lock", arg: 1, scope: !7367, file: !6862, line: 324, type: !1599)
!7372 = !DILocation(line: 324, column: 67, scope: !7367)
!7373 = !DILocation(line: 326, column: 10, scope: !7367)
!7374 = !DILocation(line: 326, column: 16, scope: !7367)
!7375 = !DILocation(line: 326, column: 2, scope: !7367)
!7376 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6862, file: !6862, line: 404, type: !7377, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7379)
!7377 = !DISubroutineType(types: !7378)
!7378 = !{null, !1599, !254}
!7379 = !{!7380, !7381, !7382, !7385}
!7380 = !DILocalVariable(name: "lock", arg: 1, scope: !7376, file: !6862, line: 404, type: !1599)
!7381 = !DILocalVariable(name: "flags", arg: 2, scope: !7376, file: !6862, line: 404, type: !254)
!7382 = !DILocalVariable(name: "__dummy", scope: !7383, file: !6862, line: 406, type: !254)
!7383 = distinct !DILexicalBlock(scope: !7384, file: !6862, line: 406, column: 2)
!7384 = distinct !DILexicalBlock(scope: !7376, file: !6862, line: 406, column: 2)
!7385 = !DILocalVariable(name: "__dummy2", scope: !7383, file: !6862, line: 406, type: !254)
!7386 = !DILocation(line: 404, column: 64, scope: !7376)
!7387 = !DILocation(line: 404, column: 84, scope: !7376)
!7388 = !DILocation(line: 406, column: 2, scope: !7376)
!7389 = !DILocation(line: 406, column: 2, scope: !7383)
!7390 = !DILocation(line: 406, column: 2, scope: !7384)
!7391 = !DILocation(line: 407, column: 1, scope: !7376)
!7392 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6884, file: !6884, line: 43, type: !7393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7393 = !DISubroutineType(types: !7394)
!7394 = !{null, !6887, !254}
!7395 = !DISubprogram(name: "nonseekable_open", scope: !59, file: !59, line: 3021, type: !3032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7396 = !DISubprogram(name: "tty_alloc_file", scope: !5458, file: !5458, line: 86, type: !7397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7397 = !DISubroutineType(types: !7398)
!7398 = !{!102, !813}
!7399 = !DISubprogram(name: "devpts_acquire", scope: !5247, file: !5247, line: 20, type: !7400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7400 = !DISubroutineType(types: !7401)
!7401 = !{!5250, !813}
!7402 = !DISubprogram(name: "devpts_new_index", scope: !5247, file: !5247, line: 23, type: !7403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7403 = !DISubroutineType(types: !7404)
!7404 = !{!102, !5250}
!7405 = !DISubprogram(name: "tty_init_dev", scope: !3540, file: !3540, line: 463, type: !6288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7406 = !DISubprogram(name: "tty_add_file", scope: !5458, file: !5458, line: 87, type: !4187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7407 = !DISubprogram(name: "devpts_pty_new", scope: !5247, file: !5247, line: 27, type: !7408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7408 = !DISubroutineType(types: !7409)
!7409 = !{!917, !5250, !102, !303}
!7410 = !DISubprogram(name: "tty_unlock", scope: !3540, file: !3540, line: 513, type: !4191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7411 = !DISubprogram(name: "tty_release", scope: !5458, file: !5458, line: 89, type: !3032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7412 = !DISubprogram(name: "tty_free_file", scope: !5458, file: !5458, line: 88, type: !1853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
