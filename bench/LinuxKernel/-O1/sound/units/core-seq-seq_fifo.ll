; ModuleID = 'sound/core/seq/seq_fifo.c'
source_filename = "sound/core/seq/seq_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_seq_fifo = type { ptr, ptr, ptr, i32, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.snd_seq_event_cell = type { %union.anon.13, ptr, ptr }
%union.anon.13 = type { %struct.snd_seq_event }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.snd_seq_event_data }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%union.snd_seq_event_data = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.poll_table_struct = type { ptr, i32 }
%struct.snd_seq_pool = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }

@snd_seq_fifo_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [16 x i8] c"&f->input_sleep\00", align 1, !dbg !4020
@.str.1 = private unnamed_addr constant [26 x i8] c"sound/core/seq/seq_fifo.c\00", align 1, !dbg !4022
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4027
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_seq_fifo_new(i32 noundef %poolsize) #0 align 16 !dbg !2 {
entry:
  %retval = alloca ptr, align 8
  %poolsize.addr = alloca i32, align 4
  %f = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store i32 %poolsize, ptr %poolsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %poolsize.addr, metadata !4033, metadata !DIExpression()), !dbg !4044
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #15, !dbg !4045
  call void @llvm.dbg.declare(metadata ptr %f, metadata !4034, metadata !DIExpression()), !dbg !4046
  %call = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #16, !dbg !4047
  store ptr %call, ptr %f, align 8, !dbg !4048
  %0 = load ptr, ptr %f, align 8, !dbg !4049
  %tobool = icmp ne ptr %0, null, !dbg !4049
  br i1 %tobool, label %if.end, label %if.then, !dbg !4051

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4052

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %poolsize.addr, align 4, !dbg !4053
  %call1 = call ptr @snd_seq_pool_new(i32 noundef %1) #17, !dbg !4054
  %2 = load ptr, ptr %f, align 8, !dbg !4055
  %pool = getelementptr inbounds %struct.snd_seq_fifo, ptr %2, i32 0, i32 0, !dbg !4056
  store ptr %call1, ptr %pool, align 8, !dbg !4057
  %3 = load ptr, ptr %f, align 8, !dbg !4058
  %pool2 = getelementptr inbounds %struct.snd_seq_fifo, ptr %3, i32 0, i32 0, !dbg !4060
  %4 = load ptr, ptr %pool2, align 8, !dbg !4060
  %cmp = icmp eq ptr %4, null, !dbg !4061
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !4062

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %f, align 8, !dbg !4063
  call void @kfree(ptr noundef %5) #17, !dbg !4065
  store ptr null, ptr %retval, align 8, !dbg !4066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4066

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %f, align 8, !dbg !4067
  %pool5 = getelementptr inbounds %struct.snd_seq_fifo, ptr %6, i32 0, i32 0, !dbg !4069
  %7 = load ptr, ptr %pool5, align 8, !dbg !4069
  %call6 = call i32 @snd_seq_pool_init(ptr noundef %7) #17, !dbg !4070
  %cmp7 = icmp slt i32 %call6, 0, !dbg !4071
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !4072

if.then8:                                         ; preds = %if.end4
  %8 = load ptr, ptr %f, align 8, !dbg !4073
  %pool9 = getelementptr inbounds %struct.snd_seq_fifo, ptr %8, i32 0, i32 0, !dbg !4075
  %call10 = call i32 @snd_seq_pool_delete(ptr noundef %pool9) #17, !dbg !4076
  %9 = load ptr, ptr %f, align 8, !dbg !4077
  call void @kfree(ptr noundef %9) #17, !dbg !4078
  store ptr null, ptr %retval, align 8, !dbg !4079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4079

if.end11:                                         ; preds = %if.end4
  br label %do.body, !dbg !4080

do.body:                                          ; preds = %if.end11
  %10 = load ptr, ptr %f, align 8, !dbg !4081
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %10, i32 0, i32 4, !dbg !4081
  %call12 = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !4081
  %11 = load ptr, ptr %f, align 8, !dbg !4081
  %lock13 = getelementptr inbounds %struct.snd_seq_fifo, ptr %11, i32 0, i32 4, !dbg !4081
  %12 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !4081
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %12, i32 0, i32 0, !dbg !4081
  %13 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !4081
  %counter = getelementptr inbounds %struct.atomic_t, ptr %13, i32 0, i32 0, !dbg !4081
  store i32 0, ptr %counter, align 4, !dbg !4081
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lock13, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !4081
  br label %do.cond, !dbg !4081

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4081

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %f, align 8, !dbg !4083
  %use_lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %14, i32 0, i32 5, !dbg !4083
  call void @atomic_set(ptr noundef %use_lock, i32 noundef 0) #17, !dbg !4083
  br label %do.body14, !dbg !4084

do.body14:                                        ; preds = %do.end
  %15 = load ptr, ptr %f, align 8, !dbg !4085
  %input_sleep = getelementptr inbounds %struct.snd_seq_fifo, ptr %15, i32 0, i32 6, !dbg !4085
  call void @__init_waitqueue_head(ptr noundef %input_sleep, ptr noundef @.str, ptr noundef @snd_seq_fifo_new.__key) #17, !dbg !4085
  br label %do.cond15, !dbg !4085

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4085

do.end16:                                         ; preds = %do.cond15
  %16 = load ptr, ptr %f, align 8, !dbg !4087
  %overflow = getelementptr inbounds %struct.snd_seq_fifo, ptr %16, i32 0, i32 7, !dbg !4088
  call void @atomic_set(ptr noundef %overflow, i32 noundef 0) #17, !dbg !4089
  %17 = load ptr, ptr %f, align 8, !dbg !4090
  %head = getelementptr inbounds %struct.snd_seq_fifo, ptr %17, i32 0, i32 1, !dbg !4091
  store ptr null, ptr %head, align 8, !dbg !4092
  %18 = load ptr, ptr %f, align 8, !dbg !4093
  %tail = getelementptr inbounds %struct.snd_seq_fifo, ptr %18, i32 0, i32 2, !dbg !4094
  store ptr null, ptr %tail, align 8, !dbg !4095
  %19 = load ptr, ptr %f, align 8, !dbg !4096
  %cells = getelementptr inbounds %struct.snd_seq_fifo, ptr %19, i32 0, i32 3, !dbg !4097
  store i32 0, ptr %cells, align 8, !dbg !4098
  %20 = load ptr, ptr %f, align 8, !dbg !4099
  store ptr %20, ptr %retval, align 8, !dbg !4100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4100

cleanup:                                          ; preds = %do.end16, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #15, !dbg !4101
  %21 = load ptr, ptr %retval, align 8, !dbg !4101
  ret ptr %21, !dbg !4101
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !4102 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4106, metadata !DIExpression()), !dbg !4108
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4107, metadata !DIExpression()), !dbg !4109
  %0 = load i64, ptr %size.addr, align 8, !dbg !4110
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4111
  %or = or i32 %1, 256, !dbg !4112
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !4113
  ret ptr %call, !dbg !4114
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4115 dso_local ptr @snd_seq_pool_new(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4118 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4121 dso_local i32 @snd_seq_pool_init(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4124 dso_local i32 @snd_seq_pool_delete(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !4128 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4135, metadata !DIExpression()), !dbg !4136
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4137
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4138
  ret ptr %1, !dbg !4139
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !4140 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4146, metadata !DIExpression()), !dbg !4148
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4147, metadata !DIExpression()), !dbg !4149
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4150
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #17, !dbg !4151
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4152
  %2 = load i32, ptr %i.addr, align 4, !dbg !4153
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #17, !dbg !4154
  ret void, !dbg !4155
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4156 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_fifo_delete(ptr noundef %fifo) #0 align 16 !dbg !4161 {
entry:
  %fifo.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on9 = alloca i32, align 4
  %tmp17 = alloca i64, align 8
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4166, metadata !DIExpression()), !dbg !4174
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #15, !dbg !4175
  call void @llvm.dbg.declare(metadata ptr %f, metadata !4167, metadata !DIExpression()), !dbg !4176
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4177
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4168, metadata !DIExpression()), !dbg !4177
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4177
  %tobool = icmp ne ptr %0, null, !dbg !4177
  %lnot = xor i1 %tobool, true, !dbg !4177
  %lnot1 = xor i1 %lnot, true, !dbg !4177
  %lnot2 = xor i1 %lnot1, true, !dbg !4177
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4177
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4177
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4177
  %tobool3 = icmp ne i32 %1, 0, !dbg !4177
  %lnot4 = xor i1 %tobool3, true, !dbg !4177
  %lnot6 = xor i1 %lnot4, true, !dbg !4177
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4177
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4177
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4177
  store i64 %expval, ptr %tmp, align 8, !dbg !4177
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4178
  %2 = load i64, ptr %tmp, align 8, !dbg !4177
  %tobool8 = icmp ne i64 %2, 0, !dbg !4178
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4179

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4180

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fifo.addr, align 8, !dbg !4181
  %4 = load ptr, ptr %3, align 8, !dbg !4182
  store ptr %4, ptr %f, align 8, !dbg !4183
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on9) #15, !dbg !4184
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on9, metadata !4171, metadata !DIExpression()), !dbg !4184
  %5 = load ptr, ptr %f, align 8, !dbg !4184
  %tobool10 = icmp ne ptr %5, null, !dbg !4184
  %lnot11 = xor i1 %tobool10, true, !dbg !4184
  %lnot13 = xor i1 %lnot11, true, !dbg !4184
  %lnot15 = xor i1 %lnot13, true, !dbg !4184
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !4184
  store i32 %lnot.ext16, ptr %__ret_warn_on9, align 4, !dbg !4184
  %6 = load i32, ptr %__ret_warn_on9, align 4, !dbg !4184
  %tobool18 = icmp ne i32 %6, 0, !dbg !4184
  %lnot19 = xor i1 %tobool18, true, !dbg !4184
  %lnot21 = xor i1 %lnot19, true, !dbg !4184
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4184
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4184
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !4184
  store i64 %expval24, ptr %tmp17, align 8, !dbg !4184
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on9) #15, !dbg !4185
  %7 = load i64, ptr %tmp17, align 8, !dbg !4184
  %tobool25 = icmp ne i64 %7, 0, !dbg !4185
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4186

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4187

if.end27:                                         ; preds = %if.end
  %8 = load ptr, ptr %fifo.addr, align 8, !dbg !4188
  store ptr null, ptr %8, align 8, !dbg !4189
  %9 = load ptr, ptr %f, align 8, !dbg !4190
  %pool = getelementptr inbounds %struct.snd_seq_fifo, ptr %9, i32 0, i32 0, !dbg !4192
  %10 = load ptr, ptr %pool, align 8, !dbg !4192
  %tobool28 = icmp ne ptr %10, null, !dbg !4190
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !4193

if.then29:                                        ; preds = %if.end27
  %11 = load ptr, ptr %f, align 8, !dbg !4194
  %pool30 = getelementptr inbounds %struct.snd_seq_fifo, ptr %11, i32 0, i32 0, !dbg !4195
  %12 = load ptr, ptr %pool30, align 8, !dbg !4195
  call void @snd_seq_pool_mark_closing(ptr noundef %12) #17, !dbg !4196
  br label %if.end31, !dbg !4196

if.end31:                                         ; preds = %if.then29, %if.end27
  %13 = load ptr, ptr %f, align 8, !dbg !4197
  call void @snd_seq_fifo_clear(ptr noundef %13) #17, !dbg !4198
  %14 = load ptr, ptr %f, align 8, !dbg !4199
  %input_sleep = getelementptr inbounds %struct.snd_seq_fifo, ptr %14, i32 0, i32 6, !dbg !4201
  %call = call i32 @waitqueue_active(ptr noundef %input_sleep) #17, !dbg !4202
  %tobool32 = icmp ne i32 %call, 0, !dbg !4202
  br i1 %tobool32, label %if.then33, label %if.end36, !dbg !4203

if.then33:                                        ; preds = %if.end31
  %15 = load ptr, ptr %f, align 8, !dbg !4204
  %input_sleep34 = getelementptr inbounds %struct.snd_seq_fifo, ptr %15, i32 0, i32 6, !dbg !4204
  %call35 = call i32 @__wake_up(ptr noundef %input_sleep34, i32 noundef 3, i32 noundef 1, ptr noundef null) #17, !dbg !4204
  br label %if.end36, !dbg !4204

if.end36:                                         ; preds = %if.then33, %if.end31
  %16 = load ptr, ptr %f, align 8, !dbg !4205
  %pool37 = getelementptr inbounds %struct.snd_seq_fifo, ptr %16, i32 0, i32 0, !dbg !4207
  %17 = load ptr, ptr %pool37, align 8, !dbg !4207
  %tobool38 = icmp ne ptr %17, null, !dbg !4205
  br i1 %tobool38, label %if.then39, label %if.end44, !dbg !4208

if.then39:                                        ; preds = %if.end36
  %18 = load ptr, ptr %f, align 8, !dbg !4209
  %pool40 = getelementptr inbounds %struct.snd_seq_fifo, ptr %18, i32 0, i32 0, !dbg !4211
  %19 = load ptr, ptr %pool40, align 8, !dbg !4211
  %call41 = call i32 @snd_seq_pool_done(ptr noundef %19) #17, !dbg !4212
  %20 = load ptr, ptr %f, align 8, !dbg !4213
  %pool42 = getelementptr inbounds %struct.snd_seq_fifo, ptr %20, i32 0, i32 0, !dbg !4214
  %call43 = call i32 @snd_seq_pool_delete(ptr noundef %pool42) #17, !dbg !4215
  br label %if.end44, !dbg !4216

if.end44:                                         ; preds = %if.then39, %if.end36
  %21 = load ptr, ptr %f, align 8, !dbg !4217
  call void @kfree(ptr noundef %21) #17, !dbg !4218
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4219
  br label %cleanup, !dbg !4219

cleanup:                                          ; preds = %if.end44, %if.then26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #15, !dbg !4219
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4219

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4220 dso_local void @snd_seq_pool_mark_closing(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_fifo_clear(ptr noundef %f) #0 align 16 !dbg !4223 {
entry:
  %f.addr = alloca ptr, align 8
  %cell = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4227, metadata !DIExpression()), !dbg !4229
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #15, !dbg !4230
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !4228, metadata !DIExpression()), !dbg !4231
  %0 = load ptr, ptr %f.addr, align 8, !dbg !4232
  %overflow = getelementptr inbounds %struct.snd_seq_fifo, ptr %0, i32 0, i32 7, !dbg !4233
  call void @atomic_set(ptr noundef %overflow, i32 noundef 0) #17, !dbg !4234
  %1 = load ptr, ptr %f.addr, align 8, !dbg !4235
  %use_lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %1, i32 0, i32 5, !dbg !4235
  call void @snd_use_lock_sync_helper(ptr noundef %use_lock, ptr noundef @.str.1, i32 noundef 90) #17, !dbg !4235
  %2 = load ptr, ptr %f.addr, align 8, !dbg !4236
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %2, i32 0, i32 4, !dbg !4237
  call void @spin_lock_irq(ptr noundef %lock) #17, !dbg !4238
  br label %while.cond, !dbg !4239

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %f.addr, align 8, !dbg !4240
  %call = call ptr @fifo_cell_out(ptr noundef %3) #17, !dbg !4241
  store ptr %call, ptr %cell, align 8, !dbg !4242
  %cmp = icmp ne ptr %call, null, !dbg !4243
  br i1 %cmp, label %while.body, label %while.end, !dbg !4239

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %cell, align 8, !dbg !4244
  call void @snd_seq_cell_free(ptr noundef %4) #17, !dbg !4246
  br label %while.cond, !dbg !4239, !llvm.loop !4247

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %f.addr, align 8, !dbg !4251
  %lock1 = getelementptr inbounds %struct.snd_seq_fifo, ptr %5, i32 0, i32 4, !dbg !4252
  call void @spin_unlock_irq(ptr noundef %lock1) #17, !dbg !4253
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #15, !dbg !4254
  ret void, !dbg !4254
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @waitqueue_active(ptr noundef %wq_head) #8 align 16 !dbg !4255 {
entry:
  %wq_head.addr = alloca ptr, align 8
  store ptr %wq_head, ptr %wq_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_head.addr, metadata !4259, metadata !DIExpression()), !dbg !4260
  %0 = load ptr, ptr %wq_head.addr, align 8, !dbg !4261
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1, !dbg !4262
  %call = call i32 @list_empty(ptr noundef %head) #17, !dbg !4263
  %tobool = icmp ne i32 %call, 0, !dbg !4264
  %lnot = xor i1 %tobool, true, !dbg !4264
  %lnot.ext = zext i1 %lnot to i32, !dbg !4264
  ret i32 %lnot.ext, !dbg !4265
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4266 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4269 dso_local i32 @snd_seq_pool_done(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4270 dso_local void @snd_use_lock_sync_helper(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #5 align 16 !dbg !4274 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4278, metadata !DIExpression()), !dbg !4279
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4280
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4280
  call void @_raw_spin_lock_irq(ptr noundef %1) #17, !dbg !4280
  ret void, !dbg !4281
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fifo_cell_out(ptr noundef %f) #0 align 16 !dbg !4282 {
entry:
  %f.addr = alloca ptr, align 8
  %cell = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4286, metadata !DIExpression()), !dbg !4288
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #15, !dbg !4289
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !4287, metadata !DIExpression()), !dbg !4290
  %0 = load ptr, ptr %f.addr, align 8, !dbg !4291
  %head = getelementptr inbounds %struct.snd_seq_fifo, ptr %0, i32 0, i32 1, !dbg !4292
  %1 = load ptr, ptr %head, align 8, !dbg !4292
  store ptr %1, ptr %cell, align 8, !dbg !4293
  %2 = load ptr, ptr %cell, align 8, !dbg !4294
  %tobool = icmp ne ptr %2, null, !dbg !4294
  br i1 %tobool, label %if.then, label %if.end5, !dbg !4296

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cell, align 8, !dbg !4297
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %3, i32 0, i32 2, !dbg !4299
  %4 = load ptr, ptr %next, align 8, !dbg !4299
  %5 = load ptr, ptr %f.addr, align 8, !dbg !4300
  %head1 = getelementptr inbounds %struct.snd_seq_fifo, ptr %5, i32 0, i32 1, !dbg !4301
  store ptr %4, ptr %head1, align 8, !dbg !4302
  %6 = load ptr, ptr %f.addr, align 8, !dbg !4303
  %tail = getelementptr inbounds %struct.snd_seq_fifo, ptr %6, i32 0, i32 2, !dbg !4305
  %7 = load ptr, ptr %tail, align 8, !dbg !4305
  %8 = load ptr, ptr %cell, align 8, !dbg !4306
  %cmp = icmp eq ptr %7, %8, !dbg !4307
  br i1 %cmp, label %if.then2, label %if.end, !dbg !4308

if.then2:                                         ; preds = %if.then
  %9 = load ptr, ptr %f.addr, align 8, !dbg !4309
  %tail3 = getelementptr inbounds %struct.snd_seq_fifo, ptr %9, i32 0, i32 2, !dbg !4310
  store ptr null, ptr %tail3, align 8, !dbg !4311
  br label %if.end, !dbg !4309

if.end:                                           ; preds = %if.then2, %if.then
  %10 = load ptr, ptr %cell, align 8, !dbg !4312
  %next4 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %10, i32 0, i32 2, !dbg !4313
  store ptr null, ptr %next4, align 8, !dbg !4314
  %11 = load ptr, ptr %f.addr, align 8, !dbg !4315
  %cells = getelementptr inbounds %struct.snd_seq_fifo, ptr %11, i32 0, i32 3, !dbg !4316
  %12 = load i32, ptr %cells, align 8, !dbg !4317
  %dec = add i32 %12, -1, !dbg !4317
  store i32 %dec, ptr %cells, align 8, !dbg !4317
  br label %if.end5, !dbg !4318

if.end5:                                          ; preds = %if.end, %entry
  %13 = load ptr, ptr %cell, align 8, !dbg !4319
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #15, !dbg !4320
  ret ptr %13, !dbg !4321
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4322 dso_local void @snd_seq_cell_free(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #5 align 16 !dbg !4325 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4327, metadata !DIExpression()), !dbg !4328
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4329
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4329
  call void @_raw_spin_unlock_irq(ptr noundef %1) #17, !dbg !4329
  ret void, !dbg !4330
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_fifo_event_in(ptr noundef %f, ptr noundef %event) #0 align 16 !dbg !4331 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  %cell = alloca ptr, align 8
  %flags = alloca i64, align 8
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp22 = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4335, metadata !DIExpression()), !dbg !4348
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4336, metadata !DIExpression()), !dbg !4349
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #15, !dbg !4350
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !4337, metadata !DIExpression()), !dbg !4351
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !4352
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4338, metadata !DIExpression()), !dbg !4353
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4354
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4339, metadata !DIExpression()), !dbg !4355
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4356
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4340, metadata !DIExpression()), !dbg !4356
  %0 = load ptr, ptr %f.addr, align 8, !dbg !4356
  %tobool = icmp ne ptr %0, null, !dbg !4356
  %lnot = xor i1 %tobool, true, !dbg !4356
  %lnot1 = xor i1 %lnot, true, !dbg !4356
  %lnot2 = xor i1 %lnot1, true, !dbg !4356
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4356
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4356
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4356
  %tobool3 = icmp ne i32 %1, 0, !dbg !4356
  %lnot4 = xor i1 %tobool3, true, !dbg !4356
  %lnot6 = xor i1 %lnot4, true, !dbg !4356
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4356
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4356
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4356
  store i64 %expval, ptr %tmp, align 8, !dbg !4356
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4357
  %2 = load i64, ptr %tmp, align 8, !dbg !4356
  %tobool8 = icmp ne i64 %2, 0, !dbg !4357
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4358

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4359

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %f.addr, align 8, !dbg !4360
  %use_lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %3, i32 0, i32 5, !dbg !4360
  call void @atomic_inc(ptr noundef %use_lock) #17, !dbg !4360
  %4 = load ptr, ptr %f.addr, align 8, !dbg !4361
  %pool = getelementptr inbounds %struct.snd_seq_fifo, ptr %4, i32 0, i32 0, !dbg !4362
  %5 = load ptr, ptr %pool, align 8, !dbg !4362
  %6 = load ptr, ptr %event.addr, align 8, !dbg !4363
  %call = call i32 @snd_seq_event_dup(ptr noundef %5, ptr noundef %6, ptr noundef %cell, i32 noundef 1, ptr noundef null, ptr noundef null) #17, !dbg !4364
  store i32 %call, ptr %err, align 4, !dbg !4365
  %7 = load i32, ptr %err, align 4, !dbg !4366
  %cmp = icmp slt i32 %7, 0, !dbg !4368
  br i1 %cmp, label %if.then10, label %if.end18, !dbg !4369

if.then10:                                        ; preds = %if.end
  %8 = load i32, ptr %err, align 4, !dbg !4370
  %cmp11 = icmp eq i32 %8, -12, !dbg !4373
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !4374

lor.lhs.false:                                    ; preds = %if.then10
  %9 = load i32, ptr %err, align 4, !dbg !4375
  %cmp13 = icmp eq i32 %9, -11, !dbg !4376
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !4377

if.then15:                                        ; preds = %lor.lhs.false, %if.then10
  %10 = load ptr, ptr %f.addr, align 8, !dbg !4378
  %overflow = getelementptr inbounds %struct.snd_seq_fifo, ptr %10, i32 0, i32 7, !dbg !4379
  call void @atomic_inc(ptr noundef %overflow) #17, !dbg !4380
  br label %if.end16, !dbg !4380

if.end16:                                         ; preds = %if.then15, %lor.lhs.false
  %11 = load ptr, ptr %f.addr, align 8, !dbg !4381
  %use_lock17 = getelementptr inbounds %struct.snd_seq_fifo, ptr %11, i32 0, i32 5, !dbg !4381
  call void @atomic_dec(ptr noundef %use_lock17) #17, !dbg !4381
  %12 = load i32, ptr %err, align 4, !dbg !4382
  store i32 %12, ptr %retval, align 4, !dbg !4383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4383

if.end18:                                         ; preds = %if.end
  br label %do.body, !dbg !4384

do.body:                                          ; preds = %if.end18
  br label %do.body19, !dbg !4385

do.body19:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !4386
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4343, metadata !DIExpression()), !dbg !4386
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !4386
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4347, metadata !DIExpression()), !dbg !4386
  %cmp20 = icmp eq ptr %__dummy, %__dummy2, !dbg !4386
  %conv21 = zext i1 %cmp20 to i32, !dbg !4386
  store i32 1, ptr %tmp22, align 4, !dbg !4386
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !4387
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !4387
  %13 = load i32, ptr %tmp22, align 4, !dbg !4386
  %14 = load ptr, ptr %f.addr, align 8, !dbg !4387
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %14, i32 0, i32 4, !dbg !4387
  %call23 = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !4387
  %call24 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call23) #17, !dbg !4387
  store i64 %call24, ptr %flags, align 8, !dbg !4387
  br label %do.cond, !dbg !4387

do.cond:                                          ; preds = %do.body19
  br label %do.end, !dbg !4387

do.end:                                           ; preds = %do.cond
  br label %do.cond25, !dbg !4385

do.cond25:                                        ; preds = %do.end
  br label %do.end26, !dbg !4385

do.end26:                                         ; preds = %do.cond25
  %15 = load ptr, ptr %f.addr, align 8, !dbg !4388
  %tail = getelementptr inbounds %struct.snd_seq_fifo, ptr %15, i32 0, i32 2, !dbg !4390
  %16 = load ptr, ptr %tail, align 8, !dbg !4390
  %cmp27 = icmp ne ptr %16, null, !dbg !4391
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !4392

if.then29:                                        ; preds = %do.end26
  %17 = load ptr, ptr %cell, align 8, !dbg !4393
  %18 = load ptr, ptr %f.addr, align 8, !dbg !4394
  %tail30 = getelementptr inbounds %struct.snd_seq_fifo, ptr %18, i32 0, i32 2, !dbg !4395
  %19 = load ptr, ptr %tail30, align 8, !dbg !4395
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %19, i32 0, i32 2, !dbg !4396
  store ptr %17, ptr %next, align 8, !dbg !4397
  br label %if.end31, !dbg !4394

if.end31:                                         ; preds = %if.then29, %do.end26
  %20 = load ptr, ptr %cell, align 8, !dbg !4398
  %21 = load ptr, ptr %f.addr, align 8, !dbg !4399
  %tail32 = getelementptr inbounds %struct.snd_seq_fifo, ptr %21, i32 0, i32 2, !dbg !4400
  store ptr %20, ptr %tail32, align 8, !dbg !4401
  %22 = load ptr, ptr %f.addr, align 8, !dbg !4402
  %head = getelementptr inbounds %struct.snd_seq_fifo, ptr %22, i32 0, i32 1, !dbg !4404
  %23 = load ptr, ptr %head, align 8, !dbg !4404
  %cmp33 = icmp eq ptr %23, null, !dbg !4405
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !4406

if.then35:                                        ; preds = %if.end31
  %24 = load ptr, ptr %cell, align 8, !dbg !4407
  %25 = load ptr, ptr %f.addr, align 8, !dbg !4408
  %head36 = getelementptr inbounds %struct.snd_seq_fifo, ptr %25, i32 0, i32 1, !dbg !4409
  store ptr %24, ptr %head36, align 8, !dbg !4410
  br label %if.end37, !dbg !4408

if.end37:                                         ; preds = %if.then35, %if.end31
  %26 = load ptr, ptr %cell, align 8, !dbg !4411
  %next38 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %26, i32 0, i32 2, !dbg !4412
  store ptr null, ptr %next38, align 8, !dbg !4413
  %27 = load ptr, ptr %f.addr, align 8, !dbg !4414
  %cells = getelementptr inbounds %struct.snd_seq_fifo, ptr %27, i32 0, i32 3, !dbg !4415
  %28 = load i32, ptr %cells, align 8, !dbg !4416
  %inc = add i32 %28, 1, !dbg !4416
  store i32 %inc, ptr %cells, align 8, !dbg !4416
  %29 = load ptr, ptr %f.addr, align 8, !dbg !4417
  %lock39 = getelementptr inbounds %struct.snd_seq_fifo, ptr %29, i32 0, i32 4, !dbg !4418
  %30 = load i64, ptr %flags, align 8, !dbg !4419
  call void @spin_unlock_irqrestore(ptr noundef %lock39, i64 noundef %30) #17, !dbg !4420
  %31 = load ptr, ptr %f.addr, align 8, !dbg !4421
  %input_sleep = getelementptr inbounds %struct.snd_seq_fifo, ptr %31, i32 0, i32 6, !dbg !4423
  %call40 = call i32 @waitqueue_active(ptr noundef %input_sleep) #17, !dbg !4424
  %tobool41 = icmp ne i32 %call40, 0, !dbg !4424
  br i1 %tobool41, label %if.then42, label %if.end45, !dbg !4425

if.then42:                                        ; preds = %if.end37
  %32 = load ptr, ptr %f.addr, align 8, !dbg !4426
  %input_sleep43 = getelementptr inbounds %struct.snd_seq_fifo, ptr %32, i32 0, i32 6, !dbg !4426
  %call44 = call i32 @__wake_up(ptr noundef %input_sleep43, i32 noundef 3, i32 noundef 1, ptr noundef null) #17, !dbg !4426
  br label %if.end45, !dbg !4426

if.end45:                                         ; preds = %if.then42, %if.end37
  %33 = load ptr, ptr %f.addr, align 8, !dbg !4427
  %use_lock46 = getelementptr inbounds %struct.snd_seq_fifo, ptr %33, i32 0, i32 5, !dbg !4427
  call void @atomic_dec(ptr noundef %use_lock46) #17, !dbg !4427
  store i32 0, ptr %retval, align 4, !dbg !4428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4428

cleanup:                                          ; preds = %if.end45, %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4429
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !4429
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #15, !dbg !4429
  %34 = load i32, ptr %retval, align 4, !dbg !4429
  ret i32 %34, !dbg !4429
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #5 align 16 !dbg !4430 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4434, metadata !DIExpression()), !dbg !4435
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4436
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !4437
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4438
  call void @raw_atomic_inc(ptr noundef %1) #17, !dbg !4439
  ret void, !dbg !4440
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4441 dso_local i32 @snd_seq_event_dup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #5 align 16 !dbg !4446 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4448, metadata !DIExpression()), !dbg !4449
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4450
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !4451
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4452
  call void @raw_atomic_dec(ptr noundef %1) #17, !dbg !4453
  ret void, !dbg !4454
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4455 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !4459 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4463, metadata !DIExpression()), !dbg !4469
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4464, metadata !DIExpression()), !dbg !4470
  br label %do.body, !dbg !4471

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !4472
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4465, metadata !DIExpression()), !dbg !4472
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !4472
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4468, metadata !DIExpression()), !dbg !4472
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4472
  %conv = zext i1 %cmp to i32, !dbg !4472
  store i32 1, ptr %tmp, align 4, !dbg !4472
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !4473
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !4473
  %0 = load i32, ptr %tmp, align 4, !dbg !4472
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !4473
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !4473
  %3 = load i64, ptr %flags.addr, align 8, !dbg !4473
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #17, !dbg !4473
  br label %do.end, !dbg !4473

do.end:                                           ; preds = %do.body
  ret void, !dbg !4474
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_fifo_cell_out(ptr noundef %f, ptr noundef %cellp, i32 noundef %nonblock) #0 align 16 !dbg !4475 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %cellp.addr = alloca ptr, align 8
  %nonblock.addr = alloca i32, align 4
  %cell = alloca ptr, align 8
  %flags = alloca i64, align 8
  %wait = alloca %struct.wait_queue_entry, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp36 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %__dummy47 = alloca i64, align 8
  %__dummy248 = alloca i64, align 8
  %tmp51 = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4479, metadata !DIExpression()), !dbg !4518
  store ptr %cellp, ptr %cellp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cellp.addr, metadata !4480, metadata !DIExpression()), !dbg !4519
  store i32 %nonblock, ptr %nonblock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nonblock.addr, metadata !4481, metadata !DIExpression()), !dbg !4520
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #15, !dbg !4521
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !4482, metadata !DIExpression()), !dbg !4522
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !4523
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4483, metadata !DIExpression()), !dbg !4524
  call void @llvm.lifetime.start.p0(i64 40, ptr %wait) #15, !dbg !4525
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !4484, metadata !DIExpression()), !dbg !4526
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4527
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4497, metadata !DIExpression()), !dbg !4527
  %0 = load ptr, ptr %f.addr, align 8, !dbg !4527
  %tobool = icmp ne ptr %0, null, !dbg !4527
  %lnot = xor i1 %tobool, true, !dbg !4527
  %lnot1 = xor i1 %lnot, true, !dbg !4527
  %lnot2 = xor i1 %lnot1, true, !dbg !4527
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4527
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4527
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4527
  %tobool3 = icmp ne i32 %1, 0, !dbg !4527
  %lnot4 = xor i1 %tobool3, true, !dbg !4527
  %lnot6 = xor i1 %lnot4, true, !dbg !4527
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4527
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4527
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4527
  store i64 %expval, ptr %tmp, align 8, !dbg !4527
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4528
  %2 = load i64, ptr %tmp, align 8, !dbg !4527
  %tobool8 = icmp ne i64 %2, 0, !dbg !4528
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4529

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4530

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %cellp.addr, align 8, !dbg !4531
  store ptr null, ptr %3, align 8, !dbg !4532
  %call = call ptr @get_current() #17, !dbg !4533
  call void @init_waitqueue_entry(ptr noundef %wait, ptr noundef %call) #17, !dbg !4534
  br label %do.body, !dbg !4535

do.body:                                          ; preds = %if.end
  br label %do.body9, !dbg !4536

do.body9:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !4537
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4500, metadata !DIExpression()), !dbg !4537
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !4537
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4504, metadata !DIExpression()), !dbg !4537
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4537
  %conv10 = zext i1 %cmp to i32, !dbg !4537
  store i32 1, ptr %tmp11, align 4, !dbg !4537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !4538
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !4538
  %4 = load i32, ptr %tmp11, align 4, !dbg !4537
  %5 = load ptr, ptr %f.addr, align 8, !dbg !4538
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %5, i32 0, i32 4, !dbg !4538
  %call12 = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !4538
  %call13 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call12) #17, !dbg !4538
  store i64 %call13, ptr %flags, align 8, !dbg !4538
  br label %do.cond, !dbg !4538

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4538

do.end:                                           ; preds = %do.cond
  br label %do.cond14, !dbg !4536

do.cond14:                                        ; preds = %do.end
  br label %do.end15, !dbg !4536

do.end15:                                         ; preds = %do.cond14
  br label %while.cond, !dbg !4539

while.cond:                                       ; preds = %if.end65, %do.end15
  %6 = load ptr, ptr %f.addr, align 8, !dbg !4540
  %call16 = call ptr @fifo_cell_out(ptr noundef %6) #17, !dbg !4541
  store ptr %call16, ptr %cell, align 8, !dbg !4542
  %cmp17 = icmp eq ptr %call16, null, !dbg !4543
  br i1 %cmp17, label %while.body, label %while.end, !dbg !4539

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %nonblock.addr, align 4, !dbg !4544
  %tobool19 = icmp ne i32 %7, 0, !dbg !4544
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !4546

if.then20:                                        ; preds = %while.body
  %8 = load ptr, ptr %f.addr, align 8, !dbg !4547
  %lock21 = getelementptr inbounds %struct.snd_seq_fifo, ptr %8, i32 0, i32 4, !dbg !4549
  %9 = load i64, ptr %flags, align 8, !dbg !4550
  call void @spin_unlock_irqrestore(ptr noundef %lock21, i64 noundef %9) #17, !dbg !4551
  store i32 -11, ptr %retval, align 4, !dbg !4552
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4552

if.end22:                                         ; preds = %while.body
  br label %do.body23, !dbg !4553

do.body23:                                        ; preds = %if.end22
  br label %do.body24, !dbg !4554

do.body24:                                        ; preds = %do.body23
  br label %do.cond25, !dbg !4555

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !4555

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !4554

do.body27:                                        ; preds = %do.end26
  br label %do.body28, !dbg !4557

do.body28:                                        ; preds = %do.body27
  br label %do.cond29, !dbg !4558

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !4558

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !4557

do.body31:                                        ; preds = %do.end30
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #15, !dbg !4560
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !4505, metadata !DIExpression()), !dbg !4560
  %call32 = call ptr @get_current() #17, !dbg !4560
  %__state = getelementptr inbounds %struct.task_struct, ptr %call32, i32 0, i32 1, !dbg !4560
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !4560
  br label %do.body33, !dbg !4560

do.body33:                                        ; preds = %do.body31
  br label %do.cond34, !dbg !4561

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !4561

do.end35:                                         ; preds = %do.cond34
  %10 = load ptr, ptr %__ai_ptr, align 8, !dbg !4560
  call void @instrument_atomic_read_write(ptr noundef %10, i64 noundef 4) #17, !dbg !4560
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !4563
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4511, metadata !DIExpression()), !dbg !4563
  store i32 1, ptr %__ret, align 4, !dbg !4563
  %11 = load i32, ptr %__ret, align 4, !dbg !4563
  %12 = load ptr, ptr %__ai_ptr, align 8, !dbg !4563
  %13 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %12, i32 %11, ptr elementtype(i32) %12) #15, !dbg !4563, !srcloc !4564
  store i32 %13, ptr %__ret, align 4, !dbg !4563
  %14 = load i32, ptr %__ret, align 4, !dbg !4563
  store i32 %14, ptr %tmp37, align 4, !dbg !4563
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !4560
  %15 = load i32, ptr %tmp37, align 4, !dbg !4563
  store i32 %15, ptr %tmp36, align 4, !dbg !4560
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #15, !dbg !4565
  %16 = load i32, ptr %tmp36, align 4, !dbg !4560
  br label %do.cond38, !dbg !4565

do.cond38:                                        ; preds = %do.end35
  br label %do.end39, !dbg !4565

do.end39:                                         ; preds = %do.cond38
  br label %do.cond40, !dbg !4557

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !4557

do.end41:                                         ; preds = %do.cond40
  br label %do.cond42, !dbg !4554

do.cond42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !4554

do.end43:                                         ; preds = %do.cond42
  %17 = load ptr, ptr %f.addr, align 8, !dbg !4566
  %input_sleep = getelementptr inbounds %struct.snd_seq_fifo, ptr %17, i32 0, i32 6, !dbg !4567
  call void @add_wait_queue(ptr noundef %input_sleep, ptr noundef %wait) #17, !dbg !4568
  %18 = load ptr, ptr %f.addr, align 8, !dbg !4569
  %lock44 = getelementptr inbounds %struct.snd_seq_fifo, ptr %18, i32 0, i32 4, !dbg !4570
  %19 = load i64, ptr %flags, align 8, !dbg !4571
  call void @spin_unlock_irqrestore(ptr noundef %lock44, i64 noundef %19) #17, !dbg !4572
  call void @schedule() #17, !dbg !4573
  br label %do.body45, !dbg !4574

do.body45:                                        ; preds = %do.end43
  br label %do.body46, !dbg !4575

do.body46:                                        ; preds = %do.body45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy47) #15, !dbg !4576
  call void @llvm.dbg.declare(metadata ptr %__dummy47, metadata !4513, metadata !DIExpression()), !dbg !4576
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy248) #15, !dbg !4576
  call void @llvm.dbg.declare(metadata ptr %__dummy248, metadata !4517, metadata !DIExpression()), !dbg !4576
  %cmp49 = icmp eq ptr %__dummy47, %__dummy248, !dbg !4576
  %conv50 = zext i1 %cmp49 to i32, !dbg !4576
  store i32 1, ptr %tmp51, align 4, !dbg !4576
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy248) #15, !dbg !4577
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy47) #15, !dbg !4577
  %20 = load i32, ptr %tmp51, align 4, !dbg !4576
  %21 = load ptr, ptr %f.addr, align 8, !dbg !4577
  %lock52 = getelementptr inbounds %struct.snd_seq_fifo, ptr %21, i32 0, i32 4, !dbg !4577
  %call53 = call ptr @spinlock_check(ptr noundef %lock52) #17, !dbg !4577
  %call54 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call53) #17, !dbg !4577
  store i64 %call54, ptr %flags, align 8, !dbg !4577
  br label %do.cond55, !dbg !4577

do.cond55:                                        ; preds = %do.body46
  br label %do.end56, !dbg !4577

do.end56:                                         ; preds = %do.cond55
  br label %do.cond57, !dbg !4575

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !4575

do.end58:                                         ; preds = %do.cond57
  %22 = load ptr, ptr %f.addr, align 8, !dbg !4578
  %input_sleep59 = getelementptr inbounds %struct.snd_seq_fifo, ptr %22, i32 0, i32 6, !dbg !4579
  call void @remove_wait_queue(ptr noundef %input_sleep59, ptr noundef %wait) #17, !dbg !4580
  %call60 = call ptr @get_current() #17, !dbg !4581
  %call61 = call i32 @signal_pending(ptr noundef %call60) #17, !dbg !4583
  %tobool62 = icmp ne i32 %call61, 0, !dbg !4583
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !4584

if.then63:                                        ; preds = %do.end58
  %23 = load ptr, ptr %f.addr, align 8, !dbg !4585
  %lock64 = getelementptr inbounds %struct.snd_seq_fifo, ptr %23, i32 0, i32 4, !dbg !4587
  %24 = load i64, ptr %flags, align 8, !dbg !4588
  call void @spin_unlock_irqrestore(ptr noundef %lock64, i64 noundef %24) #17, !dbg !4589
  store i32 -512, ptr %retval, align 4, !dbg !4590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4590

if.end65:                                         ; preds = %do.end58
  br label %while.cond, !dbg !4539, !llvm.loop !4591

while.end:                                        ; preds = %while.cond
  %25 = load ptr, ptr %f.addr, align 8, !dbg !4593
  %lock66 = getelementptr inbounds %struct.snd_seq_fifo, ptr %25, i32 0, i32 4, !dbg !4594
  %26 = load i64, ptr %flags, align 8, !dbg !4595
  call void @spin_unlock_irqrestore(ptr noundef %lock66, i64 noundef %26) #17, !dbg !4596
  %27 = load ptr, ptr %cell, align 8, !dbg !4597
  %28 = load ptr, ptr %cellp.addr, align 8, !dbg !4598
  store ptr %27, ptr %28, align 8, !dbg !4599
  store i32 0, ptr %retval, align 4, !dbg !4600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4600

cleanup:                                          ; preds = %while.end, %if.then63, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr %wait) #15, !dbg !4601
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !4601
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #15, !dbg !4601
  %29 = load i32, ptr %retval, align 4, !dbg !4601
  ret i32 %29, !dbg !4601
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_waitqueue_entry(ptr noundef %wq_entry, ptr noundef %p) #8 align 16 !dbg !4602 {
entry:
  %wq_entry.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %wq_entry, ptr %wq_entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_entry.addr, metadata !4606, metadata !DIExpression()), !dbg !4608
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4607, metadata !DIExpression()), !dbg !4609
  %0 = load ptr, ptr %wq_entry.addr, align 8, !dbg !4610
  %flags = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 0, !dbg !4611
  store i32 0, ptr %flags, align 8, !dbg !4612
  %1 = load ptr, ptr %p.addr, align 8, !dbg !4613
  %2 = load ptr, ptr %wq_entry.addr, align 8, !dbg !4614
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1, !dbg !4615
  store ptr %1, ptr %private, align 8, !dbg !4616
  %3 = load ptr, ptr %wq_entry.addr, align 8, !dbg !4617
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2, !dbg !4618
  store ptr @default_wake_function, ptr %func, align 8, !dbg !4619
  ret void, !dbg !4620
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !4621 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4632
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4626, metadata !DIExpression()), !dbg !4632
  br label %do.body, !dbg !4632

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4633
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4628, metadata !DIExpression()), !dbg !4633
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4633
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4633
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4632
  br label %do.cond, !dbg !4633

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4633

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !4634
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4630, metadata !DIExpression()), !dbg !4634
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #18, !dbg !4634, !srcloc !4635
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4634
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4634
  %3 = inttoptr i64 %2 to ptr, !dbg !4634
  store ptr %3, ptr %tmp, align 8, !dbg !4634
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !4632
  %4 = load ptr, ptr %tmp, align 8, !dbg !4634
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4632
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4632
  store ptr %5, ptr %tmp1, align 8, !dbg !4632
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4636
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4632
  ret ptr %6, !dbg !4637
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4638 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4646, metadata !DIExpression()), !dbg !4648
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4647, metadata !DIExpression()), !dbg !4649
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4650
  %1 = load i64, ptr %size.addr, align 8, !dbg !4651
  %conv = trunc i64 %1 to i32, !dbg !4651
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !4652
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4653
  %3 = load i64, ptr %size.addr, align 8, !dbg !4653
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !4653
  ret void, !dbg !4654
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4655 dso_local void @add_wait_queue(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4658 dso_local void @schedule() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4659 dso_local void @remove_wait_queue(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #8 align 16 !dbg !4660 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4664, metadata !DIExpression()), !dbg !4665
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4666
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #17, !dbg !4666
  %tobool = icmp ne i32 %call, 0, !dbg !4666
  %lnot = xor i1 %tobool, true, !dbg !4666
  %lnot1 = xor i1 %lnot, true, !dbg !4666
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4666
  %conv = sext i32 %lnot.ext to i64, !dbg !4666
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4666
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4666
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4668

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !4669
  br label %return, !dbg !4669

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !4670
  %call3 = call i32 @task_sigpending(ptr noundef %1) #17, !dbg !4671
  store i32 %call3, ptr %retval, align 4, !dbg !4672
  br label %return, !dbg !4672

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4673
  ret i32 %2, !dbg !4673
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_fifo_cell_putback(ptr noundef %f, ptr noundef %cell) #0 align 16 !dbg !4674 {
entry:
  %f.addr = alloca ptr, align 8
  %cell.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4678, metadata !DIExpression()), !dbg !4688
  store ptr %cell, ptr %cell.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cell.addr, metadata !4679, metadata !DIExpression()), !dbg !4689
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !4690
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4680, metadata !DIExpression()), !dbg !4691
  %0 = load ptr, ptr %cell.addr, align 8, !dbg !4692
  %tobool = icmp ne ptr %0, null, !dbg !4692
  br i1 %tobool, label %if.then, label %if.end10, !dbg !4693

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4694

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !4695

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !4696
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4681, metadata !DIExpression()), !dbg !4696
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !4696
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4687, metadata !DIExpression()), !dbg !4696
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4696
  %conv = zext i1 %cmp to i32, !dbg !4696
  store i32 1, ptr %tmp, align 4, !dbg !4696
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !4697
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !4697
  %1 = load i32, ptr %tmp, align 4, !dbg !4696
  %2 = load ptr, ptr %f.addr, align 8, !dbg !4697
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %2, i32 0, i32 4, !dbg !4697
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !4697
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !4697
  store i64 %call2, ptr %flags, align 8, !dbg !4697
  br label %do.cond, !dbg !4697

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4697

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !4695

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4695

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %f.addr, align 8, !dbg !4698
  %head = getelementptr inbounds %struct.snd_seq_fifo, ptr %3, i32 0, i32 1, !dbg !4699
  %4 = load ptr, ptr %head, align 8, !dbg !4699
  %5 = load ptr, ptr %cell.addr, align 8, !dbg !4700
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %5, i32 0, i32 2, !dbg !4701
  store ptr %4, ptr %next, align 8, !dbg !4702
  %6 = load ptr, ptr %cell.addr, align 8, !dbg !4703
  %7 = load ptr, ptr %f.addr, align 8, !dbg !4704
  %head5 = getelementptr inbounds %struct.snd_seq_fifo, ptr %7, i32 0, i32 1, !dbg !4705
  store ptr %6, ptr %head5, align 8, !dbg !4706
  %8 = load ptr, ptr %f.addr, align 8, !dbg !4707
  %tail = getelementptr inbounds %struct.snd_seq_fifo, ptr %8, i32 0, i32 2, !dbg !4709
  %9 = load ptr, ptr %tail, align 8, !dbg !4709
  %tobool6 = icmp ne ptr %9, null, !dbg !4707
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !4710

if.then7:                                         ; preds = %do.end4
  %10 = load ptr, ptr %cell.addr, align 8, !dbg !4711
  %11 = load ptr, ptr %f.addr, align 8, !dbg !4712
  %tail8 = getelementptr inbounds %struct.snd_seq_fifo, ptr %11, i32 0, i32 2, !dbg !4713
  store ptr %10, ptr %tail8, align 8, !dbg !4714
  br label %if.end, !dbg !4712

if.end:                                           ; preds = %if.then7, %do.end4
  %12 = load ptr, ptr %f.addr, align 8, !dbg !4715
  %cells = getelementptr inbounds %struct.snd_seq_fifo, ptr %12, i32 0, i32 3, !dbg !4716
  %13 = load i32, ptr %cells, align 8, !dbg !4717
  %inc = add i32 %13, 1, !dbg !4717
  store i32 %inc, ptr %cells, align 8, !dbg !4717
  %14 = load ptr, ptr %f.addr, align 8, !dbg !4718
  %lock9 = getelementptr inbounds %struct.snd_seq_fifo, ptr %14, i32 0, i32 4, !dbg !4719
  %15 = load i64, ptr %flags, align 8, !dbg !4720
  call void @spin_unlock_irqrestore(ptr noundef %lock9, i64 noundef %15) #17, !dbg !4721
  br label %if.end10, !dbg !4722

if.end10:                                         ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !4723
  ret void, !dbg !4723
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_fifo_poll_wait(ptr noundef %f, ptr noundef %file, ptr noundef %wait) #0 align 16 !dbg !4724 {
entry:
  %f.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4730, metadata !DIExpression()), !dbg !4733
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4731, metadata !DIExpression()), !dbg !4734
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !4732, metadata !DIExpression()), !dbg !4735
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4736
  %1 = load ptr, ptr %f.addr, align 8, !dbg !4737
  %input_sleep = getelementptr inbounds %struct.snd_seq_fifo, ptr %1, i32 0, i32 6, !dbg !4738
  %2 = load ptr, ptr %wait.addr, align 8, !dbg !4739
  call void @poll_wait(ptr noundef %0, ptr noundef %input_sleep, ptr noundef %2) #17, !dbg !4740
  %3 = load ptr, ptr %f.addr, align 8, !dbg !4741
  %cells = getelementptr inbounds %struct.snd_seq_fifo, ptr %3, i32 0, i32 3, !dbg !4742
  %4 = load i32, ptr %cells, align 8, !dbg !4742
  %cmp = icmp sgt i32 %4, 0, !dbg !4743
  %conv = zext i1 %cmp to i32, !dbg !4743
  ret i32 %conv, !dbg !4744
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poll_wait(ptr noundef %filp, ptr noundef %wait_address, ptr noundef %p) #8 align 16 !dbg !4745 {
entry:
  %filp.addr = alloca ptr, align 8
  %wait_address.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !4749, metadata !DIExpression()), !dbg !4752
  store ptr %wait_address, ptr %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait_address.addr, metadata !4750, metadata !DIExpression()), !dbg !4753
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4751, metadata !DIExpression()), !dbg !4754
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4755
  %tobool = icmp ne ptr %0, null, !dbg !4755
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4757

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !4758
  %_qproc = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 0, !dbg !4759
  %2 = load ptr, ptr %_qproc, align 8, !dbg !4759
  %tobool1 = icmp ne ptr %2, null, !dbg !4758
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !4760

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %wait_address.addr, align 8, !dbg !4761
  %tobool3 = icmp ne ptr %3, null, !dbg !4761
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4762

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %p.addr, align 8, !dbg !4763
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, ptr %4, i32 0, i32 0, !dbg !4765
  %5 = load ptr, ptr %_qproc4, align 8, !dbg !4765
  %6 = load ptr, ptr %filp.addr, align 8, !dbg !4766
  %7 = load ptr, ptr %wait_address.addr, align 8, !dbg !4767
  %8 = load ptr, ptr %p.addr, align 8, !dbg !4768
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #17, !dbg !4763
  br label %do.body, !dbg !4769

do.body:                                          ; preds = %if.then
  br label %do.body5, !dbg !4770

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !4772

do.end:                                           ; preds = %do.body5
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4770, !srcloc !4774
  br label %do.end6, !dbg !4770

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !4775

if.end:                                           ; preds = %do.end6, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !4776
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_fifo_resize(ptr noundef %f, i32 noundef %poolsize) #0 align 16 !dbg !4777 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %poolsize.addr = alloca i32, align 4
  %newpool = alloca ptr, align 8
  %oldpool = alloca ptr, align 8
  %cell = alloca ptr, align 8
  %next = alloca ptr, align 8
  %oldhead = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4781, metadata !DIExpression()), !dbg !4791
  store i32 %poolsize, ptr %poolsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %poolsize.addr, metadata !4782, metadata !DIExpression()), !dbg !4792
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpool) #15, !dbg !4793
  call void @llvm.dbg.declare(metadata ptr %newpool, metadata !4783, metadata !DIExpression()), !dbg !4794
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldpool) #15, !dbg !4793
  call void @llvm.dbg.declare(metadata ptr %oldpool, metadata !4784, metadata !DIExpression()), !dbg !4795
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #15, !dbg !4796
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !4785, metadata !DIExpression()), !dbg !4797
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !4796
  call void @llvm.dbg.declare(metadata ptr %next, metadata !4786, metadata !DIExpression()), !dbg !4798
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldhead) #15, !dbg !4796
  call void @llvm.dbg.declare(metadata ptr %oldhead, metadata !4787, metadata !DIExpression()), !dbg !4799
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4800
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4788, metadata !DIExpression()), !dbg !4800
  %0 = load ptr, ptr %f.addr, align 8, !dbg !4800
  %tobool = icmp ne ptr %0, null, !dbg !4800
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !4800

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %f.addr, align 8, !dbg !4800
  %pool = getelementptr inbounds %struct.snd_seq_fifo, ptr %1, i32 0, i32 0, !dbg !4800
  %2 = load ptr, ptr %pool, align 8, !dbg !4800
  %tobool1 = icmp ne ptr %2, null, !dbg !4800
  %lnot = xor i1 %tobool1, true, !dbg !4800
  br label %lor.end, !dbg !4800

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %3, true, !dbg !4800
  %lnot3 = xor i1 %lnot2, true, !dbg !4800
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4800
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4800
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !4800
  %tobool4 = icmp ne i32 %4, 0, !dbg !4800
  %lnot5 = xor i1 %tobool4, true, !dbg !4800
  %lnot7 = xor i1 %lnot5, true, !dbg !4800
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4800
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4800
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4800
  store i64 %expval, ptr %tmp, align 8, !dbg !4800
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4801
  %5 = load i64, ptr %tmp, align 8, !dbg !4800
  %tobool9 = icmp ne i64 %5, 0, !dbg !4801
  br i1 %tobool9, label %if.then, label %if.end, !dbg !4802

if.then:                                          ; preds = %lor.end
  store i32 -22, ptr %retval, align 4, !dbg !4803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4803

if.end:                                           ; preds = %lor.end
  %6 = load i32, ptr %poolsize.addr, align 4, !dbg !4804
  %call = call ptr @snd_seq_pool_new(i32 noundef %6) #17, !dbg !4805
  store ptr %call, ptr %newpool, align 8, !dbg !4806
  %7 = load ptr, ptr %newpool, align 8, !dbg !4807
  %cmp = icmp eq ptr %7, null, !dbg !4809
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !4810

if.then11:                                        ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4811

if.end12:                                         ; preds = %if.end
  %8 = load ptr, ptr %newpool, align 8, !dbg !4812
  %call13 = call i32 @snd_seq_pool_init(ptr noundef %8) #17, !dbg !4814
  %cmp14 = icmp slt i32 %call13, 0, !dbg !4815
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !4816

if.then16:                                        ; preds = %if.end12
  %call17 = call i32 @snd_seq_pool_delete(ptr noundef %newpool) #17, !dbg !4817
  store i32 -12, ptr %retval, align 4, !dbg !4819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4819

if.end18:                                         ; preds = %if.end12
  %9 = load ptr, ptr %f.addr, align 8, !dbg !4820
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %9, i32 0, i32 4, !dbg !4821
  call void @spin_lock_irq(ptr noundef %lock) #17, !dbg !4822
  %10 = load ptr, ptr %f.addr, align 8, !dbg !4823
  %pool19 = getelementptr inbounds %struct.snd_seq_fifo, ptr %10, i32 0, i32 0, !dbg !4824
  %11 = load ptr, ptr %pool19, align 8, !dbg !4824
  store ptr %11, ptr %oldpool, align 8, !dbg !4825
  %12 = load ptr, ptr %f.addr, align 8, !dbg !4826
  %head = getelementptr inbounds %struct.snd_seq_fifo, ptr %12, i32 0, i32 1, !dbg !4827
  %13 = load ptr, ptr %head, align 8, !dbg !4827
  store ptr %13, ptr %oldhead, align 8, !dbg !4828
  %14 = load ptr, ptr %newpool, align 8, !dbg !4829
  %15 = load ptr, ptr %f.addr, align 8, !dbg !4830
  %pool20 = getelementptr inbounds %struct.snd_seq_fifo, ptr %15, i32 0, i32 0, !dbg !4831
  store ptr %14, ptr %pool20, align 8, !dbg !4832
  %16 = load ptr, ptr %f.addr, align 8, !dbg !4833
  %head21 = getelementptr inbounds %struct.snd_seq_fifo, ptr %16, i32 0, i32 1, !dbg !4834
  store ptr null, ptr %head21, align 8, !dbg !4835
  %17 = load ptr, ptr %f.addr, align 8, !dbg !4836
  %tail = getelementptr inbounds %struct.snd_seq_fifo, ptr %17, i32 0, i32 2, !dbg !4837
  store ptr null, ptr %tail, align 8, !dbg !4838
  %18 = load ptr, ptr %f.addr, align 8, !dbg !4839
  %cells = getelementptr inbounds %struct.snd_seq_fifo, ptr %18, i32 0, i32 3, !dbg !4840
  store i32 0, ptr %cells, align 8, !dbg !4841
  %19 = load ptr, ptr %f.addr, align 8, !dbg !4842
  %lock22 = getelementptr inbounds %struct.snd_seq_fifo, ptr %19, i32 0, i32 4, !dbg !4843
  call void @spin_unlock_irq(ptr noundef %lock22) #17, !dbg !4844
  %20 = load ptr, ptr %oldpool, align 8, !dbg !4845
  call void @snd_seq_pool_mark_closing(ptr noundef %20) #17, !dbg !4846
  %21 = load ptr, ptr %f.addr, align 8, !dbg !4847
  %use_lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %21, i32 0, i32 5, !dbg !4847
  call void @snd_use_lock_sync_helper(ptr noundef %use_lock, ptr noundef @.str.1, i32 noundef 256) #17, !dbg !4847
  %22 = load ptr, ptr %oldhead, align 8, !dbg !4848
  store ptr %22, ptr %cell, align 8, !dbg !4850
  br label %for.cond, !dbg !4851

for.cond:                                         ; preds = %for.inc, %if.end18
  %23 = load ptr, ptr %cell, align 8, !dbg !4852
  %tobool23 = icmp ne ptr %23, null, !dbg !4854
  br i1 %tobool23, label %for.body, label %for.end, !dbg !4854

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %cell, align 8, !dbg !4855
  %next24 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %24, i32 0, i32 2, !dbg !4857
  %25 = load ptr, ptr %next24, align 8, !dbg !4857
  store ptr %25, ptr %next, align 8, !dbg !4858
  %26 = load ptr, ptr %cell, align 8, !dbg !4859
  call void @snd_seq_cell_free(ptr noundef %26) #17, !dbg !4860
  br label %for.inc, !dbg !4861

for.inc:                                          ; preds = %for.body
  %27 = load ptr, ptr %next, align 8, !dbg !4862
  store ptr %27, ptr %cell, align 8, !dbg !4863
  br label %for.cond, !dbg !4864, !llvm.loop !4865

for.end:                                          ; preds = %for.cond
  %call25 = call i32 @snd_seq_pool_delete(ptr noundef %oldpool) #17, !dbg !4867
  store i32 0, ptr %retval, align 4, !dbg !4868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4868

cleanup:                                          ; preds = %for.end, %if.then16, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldhead) #15, !dbg !4869
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !4869
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #15, !dbg !4869
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldpool) #15, !dbg !4869
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpool) #15, !dbg !4869
  %28 = load i32, ptr %retval, align 4, !dbg !4869
  ret i32 %28, !dbg !4869
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_fifo_unused_cells(ptr noundef %f) #0 align 16 !dbg !4870 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cells = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4874, metadata !DIExpression()), !dbg !4882
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !4883
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4875, metadata !DIExpression()), !dbg !4884
  call void @llvm.lifetime.start.p0(i64 4, ptr %cells) #15, !dbg !4885
  call void @llvm.dbg.declare(metadata ptr %cells, metadata !4876, metadata !DIExpression()), !dbg !4886
  %0 = load ptr, ptr %f.addr, align 8, !dbg !4887
  %tobool = icmp ne ptr %0, null, !dbg !4887
  br i1 %tobool, label %if.end, label %if.then, !dbg !4889

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4890

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %f.addr, align 8, !dbg !4891
  %use_lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %1, i32 0, i32 5, !dbg !4891
  call void @atomic_inc(ptr noundef %use_lock) #17, !dbg !4891
  br label %do.body, !dbg !4892

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !4893

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !4894
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4877, metadata !DIExpression()), !dbg !4894
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !4894
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4881, metadata !DIExpression()), !dbg !4894
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4894
  %conv = zext i1 %cmp to i32, !dbg !4894
  store i32 1, ptr %tmp, align 4, !dbg !4894
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !4895
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !4895
  %2 = load i32, ptr %tmp, align 4, !dbg !4894
  %3 = load ptr, ptr %f.addr, align 8, !dbg !4895
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %3, i32 0, i32 4, !dbg !4895
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !4895
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !4895
  store i64 %call2, ptr %flags, align 8, !dbg !4895
  br label %do.cond, !dbg !4895

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4895

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !4893

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4893

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr %f.addr, align 8, !dbg !4896
  %pool = getelementptr inbounds %struct.snd_seq_fifo, ptr %4, i32 0, i32 0, !dbg !4897
  %5 = load ptr, ptr %pool, align 8, !dbg !4897
  %call5 = call i32 @snd_seq_unused_cells(ptr noundef %5) #17, !dbg !4898
  store i32 %call5, ptr %cells, align 4, !dbg !4899
  %6 = load ptr, ptr %f.addr, align 8, !dbg !4900
  %lock6 = getelementptr inbounds %struct.snd_seq_fifo, ptr %6, i32 0, i32 4, !dbg !4901
  %7 = load i64, ptr %flags, align 8, !dbg !4902
  call void @spin_unlock_irqrestore(ptr noundef %lock6, i64 noundef %7) #17, !dbg !4903
  %8 = load ptr, ptr %f.addr, align 8, !dbg !4904
  %use_lock7 = getelementptr inbounds %struct.snd_seq_fifo, ptr %8, i32 0, i32 5, !dbg !4904
  call void @atomic_dec(ptr noundef %use_lock7) #17, !dbg !4904
  %9 = load i32, ptr %cells, align 4, !dbg !4905
  store i32 %9, ptr %retval, align 4, !dbg !4906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4906

cleanup:                                          ; preds = %do.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cells) #15, !dbg !4907
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !4907
  %10 = load i32, ptr %retval, align 4, !dbg !4907
  ret i32 %10, !dbg !4907
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_seq_unused_cells(ptr noundef %pool) #8 align 16 !dbg !4908 {
entry:
  %pool.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !4910, metadata !DIExpression()), !dbg !4911
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !4912
  %tobool = icmp ne ptr %0, null, !dbg !4912
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4912

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !4913
  %total_elements = getelementptr inbounds %struct.snd_seq_pool, ptr %1, i32 0, i32 2, !dbg !4914
  %2 = load i32, ptr %total_elements, align 8, !dbg !4914
  %3 = load ptr, ptr %pool.addr, align 8, !dbg !4915
  %counter = getelementptr inbounds %struct.snd_seq_pool, ptr %3, i32 0, i32 3, !dbg !4916
  %call = call i32 @atomic_read(ptr noundef %counter) #17, !dbg !4917
  %sub = sub i32 %2, %call, !dbg !4918
  br label %cond.end, !dbg !4912

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4912

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !4912
  ret i32 %cond, !dbg !4919
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !4920 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4922, metadata !DIExpression()), !dbg !4927
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4923, metadata !DIExpression()), !dbg !4928
  %0 = load i64, ptr %size.addr, align 8, !dbg !4929
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4930
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4931

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4932
  %tobool = icmp ne i64 %2, 0, !dbg !4932
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4933

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !4934
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4924, metadata !DIExpression()), !dbg !4935
  %3 = load i64, ptr %size.addr, align 8, !dbg !4936
  %cmp = icmp ugt i64 %3, 8192, !dbg !4938
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4939

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4940
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4941
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4942
  store ptr %call, ptr %retval, align 8, !dbg !4943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4943

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4944
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !4944
  store i32 %call2, ptr %index, align 4, !dbg !4945
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4946
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4947
  %9 = ptrtoint ptr %8 to i64, !dbg !4947
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !4948
  %idxprom = zext i32 %call3 to i64, !dbg !4949
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4949
  %10 = load i32, ptr %index, align 4, !dbg !4950
  %idxprom4 = zext i32 %10 to i64, !dbg !4949
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4949
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4949
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4951
  %13 = load i64, ptr %size.addr, align 8, !dbg !4952
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !4953
  store ptr %call6, ptr %retval, align 8, !dbg !4954
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4954

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !4955
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4956
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4957
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4958
  store ptr %call8, ptr %retval, align 8, !dbg !4959
  br label %return, !dbg !4959

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4960
  ret ptr %16, !dbg !4960
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4961 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !4962 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4966, metadata !DIExpression()), !dbg !4968
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4967, metadata !DIExpression()), !dbg !4969
  %0 = load i64, ptr %size.addr, align 8, !dbg !4970
  %tobool = icmp ne i64 %0, 0, !dbg !4970
  br i1 %tobool, label %if.end, label %if.then, !dbg !4972

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4973
  br label %return, !dbg !4973

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4974
  %cmp = icmp ule i64 %1, 8, !dbg !4976
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4977

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4978
  br label %return, !dbg !4978

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4979
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4981
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4982

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4983
  %cmp4 = icmp ule i64 %3, 96, !dbg !4984
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4985

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4986
  br label %return, !dbg !4986

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4987
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4989
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4990

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4991
  %cmp9 = icmp ule i64 %5, 192, !dbg !4992
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4993

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4994
  br label %return, !dbg !4994

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4995
  %cmp12 = icmp ule i64 %6, 8, !dbg !4997
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4998

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4999
  br label %return, !dbg !4999

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5000
  %cmp15 = icmp ule i64 %7, 16, !dbg !5002
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5003

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5004
  br label %return, !dbg !5004

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5005
  %cmp18 = icmp ule i64 %8, 32, !dbg !5007
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5008

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5009
  br label %return, !dbg !5009

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5010
  %cmp21 = icmp ule i64 %9, 64, !dbg !5012
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5013

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5014
  br label %return, !dbg !5014

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5015
  %cmp24 = icmp ule i64 %10, 128, !dbg !5017
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5018

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5019
  br label %return, !dbg !5019

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5020
  %cmp27 = icmp ule i64 %11, 256, !dbg !5022
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5023

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5024
  br label %return, !dbg !5024

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5025
  %cmp30 = icmp ule i64 %12, 512, !dbg !5027
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5028

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5029
  br label %return, !dbg !5029

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5030
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5032
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5033

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5034
  br label %return, !dbg !5034

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5035
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5037
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5038

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5039
  br label %return, !dbg !5039

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5040
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5042
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5043

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5044
  br label %return, !dbg !5044

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5045
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5047
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5048

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5049
  br label %return, !dbg !5049

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5050
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5052
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5053

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5054
  br label %return, !dbg !5054

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5055
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5057
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5058

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5059
  br label %return, !dbg !5059

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5060
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5062
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5063

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5064
  br label %return, !dbg !5064

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5065
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5067
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5068

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5069
  br label %return, !dbg !5069

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5070
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5072
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5073

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5074
  br label %return, !dbg !5074

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5075
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5077
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5078

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5079
  br label %return, !dbg !5079

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5080
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5082
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5083

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5084
  br label %return, !dbg !5084

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5085
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5087
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5088

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5089
  br label %return, !dbg !5089

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5090, !range !5092, !noundef !642
  %tobool69 = trunc i8 %25 to i1, !dbg !5090
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5093

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5094

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #20, !dbg !5095, !srcloc !5098
  unreachable, !dbg !5095

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5099

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5100

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5101

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5103

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5101

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #15, !dbg !5105, !srcloc !5107
  br label %do.end75, !dbg !5105

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5101

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5108
  br label %return, !dbg !5108

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5109
  ret i32 %26, !dbg !5109
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5110 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !5116 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5120, metadata !DIExpression()), !dbg !5122
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5121, metadata !DIExpression()), !dbg !5123
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5124
  %and = and i32 %0, 17, !dbg !5124
  %cmp = icmp eq i32 %and, 0, !dbg !5124
  %lnot = xor i1 %cmp, true, !dbg !5124
  %lnot1 = xor i1 %lnot, true, !dbg !5124
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5124
  %conv = sext i32 %lnot.ext to i64, !dbg !5124
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5124
  %tobool = icmp ne i64 %expval, 0, !dbg !5124
  br i1 %tobool, label %if.then, label %if.end, !dbg !5126

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5127
  br label %return, !dbg !5127

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5128
  %and2 = and i32 %1, 1, !dbg !5130
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5130
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5131

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5132
  br label %return, !dbg !5132

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5133
  br label %return, !dbg !5133

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5135
  ret i32 %2, !dbg !5135
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5136 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5137 dso_local void @__compiletime_assert_206() #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5138 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5140, metadata !DIExpression()), !dbg !5142
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5141, metadata !DIExpression()), !dbg !5143
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5144
  %1 = load i64, ptr %size.addr, align 8, !dbg !5145
  %conv = trunc i64 %1 to i32, !dbg !5145
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !5146
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5147
  %3 = load i64, ptr %size.addr, align 8, !dbg !5147
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !5147
  ret void, !dbg !5148
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !5149 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5152, metadata !DIExpression()), !dbg !5154
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5153, metadata !DIExpression()), !dbg !5155
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5156
  %1 = load i32, ptr %i.addr, align 4, !dbg !5157
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #17, !dbg !5158
  ret void, !dbg !5159
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !5160 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5165, metadata !DIExpression()), !dbg !5167
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5166, metadata !DIExpression()), !dbg !5168
  ret i1 true, !dbg !5169
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #8 align 16 !dbg !5170 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5175, metadata !DIExpression()), !dbg !5178
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5176, metadata !DIExpression()), !dbg !5179
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5177, metadata !DIExpression()), !dbg !5180
  ret void, !dbg !5181
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !5182 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5185, metadata !DIExpression()), !dbg !5187
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5186, metadata !DIExpression()), !dbg !5188
  br label %do.body, !dbg !5189

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !5190
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5190
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !5190
  store volatile i32 %0, ptr %counter, align 4, !dbg !5190
  br label %do.end, !dbg !5190

do.end:                                           ; preds = %do.body
  ret void, !dbg !5192
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #8 align 16 !dbg !5193 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5200, metadata !DIExpression()), !dbg !5201
  br label %do.body, !dbg !5202

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5204

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5202
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5202
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5202
  store ptr %1, ptr %tmp, align 8, !dbg !5204
  %2 = load ptr, ptr %tmp, align 8, !dbg !5202
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5206
  %cmp = icmp eq ptr %2, %3, !dbg !5207
  %conv = zext i1 %cmp to i32, !dbg !5207
  ret i32 %conv, !dbg !5208
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5209 dso_local void @_raw_spin_lock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5212 dso_local void @_raw_spin_unlock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #5 align 16 !dbg !5213 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5215, metadata !DIExpression()), !dbg !5216
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5217
  call void @arch_atomic_inc(ptr noundef %0) #17, !dbg !5218
  ret void, !dbg !5219
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #5 align 16 !dbg !5220 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5222, metadata !DIExpression()), !dbg !5223
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5224
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5225
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #15, !dbg !5226, !srcloc !5227
  ret void, !dbg !5228
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #5 align 16 !dbg !5229 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5231, metadata !DIExpression()), !dbg !5232
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5233
  call void @arch_atomic_dec(ptr noundef %0) #17, !dbg !5234
  ret void, !dbg !5235
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #5 align 16 !dbg !5236 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5238, metadata !DIExpression()), !dbg !5239
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5240
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5241
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #15, !dbg !5242, !srcloc !5243
  ret void, !dbg !5244
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5245 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #8 align 16 !dbg !5248 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5252, metadata !DIExpression()), !dbg !5254
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5253, metadata !DIExpression()), !dbg !5255
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5256
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !5256
  %1 = load i32, ptr %flag.addr, align 4, !dbg !5257
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #17, !dbg !5258
  ret i32 %call, !dbg !5259
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #8 align 16 !dbg !5260 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5264
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #17, !dbg !5264
  %tobool = icmp ne i32 %call, 0, !dbg !5264
  %lnot = xor i1 %tobool, true, !dbg !5264
  %lnot1 = xor i1 %lnot, true, !dbg !5264
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5264
  %conv = sext i32 %lnot.ext to i64, !dbg !5264
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5264
  %conv2 = trunc i64 %expval to i32, !dbg !5264
  ret i32 %conv2, !dbg !5265
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #8 align 16 !dbg !5266 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5272, metadata !DIExpression()), !dbg !5274
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5273, metadata !DIExpression()), !dbg !5275
  %0 = load i32, ptr %flag.addr, align 4, !dbg !5276
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5276
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5276

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !5276
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !5276
  %3 = ptrtoint ptr %flags to i64, !dbg !5276
  %cmp = icmp ne i64 %3, 0, !dbg !5276
  %conv = zext i1 %cmp to i32, !dbg !5276
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5276
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !5276

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !5276
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !5276
  %6 = ptrtoint ptr %flags2 to i64, !dbg !5276
  %cmp3 = icmp ne i64 %6, 0, !dbg !5276
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5276

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !5276
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !5276
  %8 = load i64, ptr %flags6, align 8, !dbg !5276
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5276
  br i1 %9, label %cond.true, label %cond.false, !dbg !5276

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !5276
  %conv7 = sext i32 %10 to i64, !dbg !5276
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !5276
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !5276
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #17, !dbg !5276
  %conv9 = zext i1 %call to i32, !dbg !5276
  br label %cond.end, !dbg !5276

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !5276
  %conv10 = sext i32 %12 to i64, !dbg !5276
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !5276
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !5276
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #17, !dbg !5276
  %conv13 = zext i1 %call12 to i32, !dbg !5276
  br label %cond.end, !dbg !5276

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !5276
  ret i32 %cond, !dbg !5277
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5278 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5286, metadata !DIExpression()), !dbg !5291
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5287, metadata !DIExpression()), !dbg !5292
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !5293
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5288, metadata !DIExpression()), !dbg !5294
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5295
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5296
  %div = udiv i64 %1, 64, !dbg !5296
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5297
  store ptr %add.ptr, ptr %p, align 8, !dbg !5294
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !5298
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5289, metadata !DIExpression()), !dbg !5299
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5300
  %rem = urem i64 %2, 64, !dbg !5300
  %shl = shl i64 1, %rem, !dbg !5300
  store i64 %shl, ptr %mask, align 8, !dbg !5299
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !5301
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5290, metadata !DIExpression()), !dbg !5302
  %3 = load ptr, ptr %p, align 8, !dbg !5303
  %4 = load i64, ptr %3, align 8, !dbg !5304
  store i64 %4, ptr %val, align 8, !dbg !5302
  %5 = load i64, ptr %val, align 8, !dbg !5305
  %6 = load i64, ptr %mask, align 8, !dbg !5306
  %and = and i64 %5, %6, !dbg !5307
  %tobool = icmp ne i64 %and, 0, !dbg !5308
  %lnot = xor i1 %tobool, true, !dbg !5308
  %lnot1 = xor i1 %lnot, true, !dbg !5309
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !5310
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !5310
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !5310
  ret i1 %lnot1, !dbg !5311
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5312 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5315, metadata !DIExpression()), !dbg !5317
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5316, metadata !DIExpression()), !dbg !5318
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5319
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5320
  %div = udiv i64 %1, 64, !dbg !5320
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5321
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5322
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5323
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5324
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5325
  ret i1 %call, !dbg !5326
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5327 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5329, metadata !DIExpression()), !dbg !5331
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5330, metadata !DIExpression()), !dbg !5332
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5333
  %1 = load i64, ptr %size.addr, align 8, !dbg !5334
  %conv = trunc i64 %1 to i32, !dbg !5334
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !5335
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5336
  %3 = load i64, ptr %size.addr, align 8, !dbg !5336
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !5336
  ret void, !dbg !5337
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5338 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5341, metadata !DIExpression()), !dbg !5343
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5342, metadata !DIExpression()), !dbg !5344
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5345
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5346
  br i1 %1, label %cond.true, label %cond.false, !dbg !5346

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5347
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5348
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5349
  %conv = zext i1 %call to i32, !dbg !5349
  br label %cond.end, !dbg !5346

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5350
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5351
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !5352
  %conv2 = zext i1 %call1 to i32, !dbg !5352
  br label %cond.end, !dbg !5346

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5346
  %tobool = icmp ne i32 %cond, 0, !dbg !5346
  ret i1 %tobool, !dbg !5353
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !5354 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5356, metadata !DIExpression()), !dbg !5358
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5357, metadata !DIExpression()), !dbg !5359
  ret i1 true, !dbg !5360
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5361 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5365, metadata !DIExpression()), !dbg !5367
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5366, metadata !DIExpression()), !dbg !5368
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5369
  %and = and i64 %0, 63, !dbg !5370
  %shl = shl i64 1, %and, !dbg !5371
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5372
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5373
  %shr = ashr i64 %2, 6, !dbg !5374
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5372
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5372
  %and1 = and i64 %shl, %3, !dbg !5375
  %cmp = icmp ne i64 %and1, 0, !dbg !5376
  ret i1 %cmp, !dbg !5377
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5378 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5380, metadata !DIExpression()), !dbg !5383
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5381, metadata !DIExpression()), !dbg !5384
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !5385
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5382, metadata !DIExpression()), !dbg !5386
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5387
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5388
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !5389, !srcloc !5390
  %3 = icmp ult i8 %2, 2, !dbg !5389
  call void @llvm.assume(i1 %3), !dbg !5389
  store i8 %2, ptr %oldbit, align 1, !dbg !5389
  %4 = load i8, ptr %oldbit, align 1, !dbg !5391, !range !5092, !noundef !642
  %tobool = trunc i8 %4 to i1, !dbg !5391
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !5392
  ret i1 %tobool, !dbg !5393
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #5 align 16 !dbg !5394 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5400, metadata !DIExpression()), !dbg !5401
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5402
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #17, !dbg !5403
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5404
  %call = call i32 @raw_atomic_read(ptr noundef %1) #17, !dbg !5405
  ret i32 %call, !dbg !5406
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #5 align 16 !dbg !5407 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5409, metadata !DIExpression()), !dbg !5410
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5411
  %call = call i32 @arch_atomic_read(ptr noundef %0) #17, !dbg !5412
  ret i32 %call, !dbg !5413
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #5 align 16 !dbg !5414 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5418
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5418
  %1 = load volatile i32, ptr %counter, align 4, !dbg !5418
  ret i32 %1, !dbg !5419
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { nounwind memory(none) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!219}
!llvm.module.flags = !{!4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042}
!llvm.ident = !{!4043}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 39, type: !2270, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "snd_seq_fifo_new", scope: !3, file: !3, line: 18, type: !4, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4032)
!3 = !DIFile(filename: "sound/core/seq/seq_fifo.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "67ebdbcebae4748ba9c536b7f8f6df1b")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !70}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_fifo", file: !8, line: 15, size: 576, elements: !9)
!8 = !DIFile(filename: "sound/core/seq/seq_fifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f9a6a9d1550e1802b6f3ad57d2f25ac")
!9 = !{!10, !210, !211, !212, !213, !214, !217, !218}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !7, file: !8, line: 16, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_pool", file: !13, line: 43, size: 704, elements: !14)
!13 = !DIFile(filename: "sound/core/seq/seq_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "00d141c657921506643a42c8b258f674")
!14 = !{!15, !146, !147, !148, !154, !155, !156, !157, !158, !159, !160, !161, !209}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !12, file: !13, line: 44, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_event_cell", file: !13, line: 29, size: 384, elements: !18)
!18 = !{!19, !144, !145}
!19 = !DIDerivedType(tag: DW_TAG_member, scope: !17, file: !13, line: 30, baseType: !20, size: 224)
!20 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !17, file: !13, line: 30, size: 224, elements: !21)
!21 = !{!22, !136}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !20, file: !13, line: 31, baseType: !23, size: 224)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_event", file: !24, line: 271, size: 224, elements: !25)
!24 = !DIFile(filename: "./include/uapi/sound/asequencer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a270bda5db28a911babca63673f52743")
!25 = !{!26, !29, !30, !32, !33, !44, !49, !50}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !23, file: !24, line: 272, baseType: !27, size: 8)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_event_type_t", file: !24, line: 139, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !24, line: 273, baseType: !28, size: 8, offset: 8)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !23, file: !24, line: 274, baseType: !31, size: 8, offset: 16)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !23, file: !24, line: 276, baseType: !28, size: 8, offset: 24)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !23, file: !24, line: 277, baseType: !34, size: 64, offset: 32)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_seq_timestamp", file: !24, line: 225, size: 64, elements: !35)
!35 = !{!36, !39}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !34, file: !24, line: 226, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_tick_time_t", file: !24, line: 223, baseType: !38)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !34, file: !24, line: 227, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_real_time", file: !24, line: 218, size: 64, elements: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !40, file: !24, line: 219, baseType: !38, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !40, file: !24, line: 220, baseType: !38, size: 32, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !23, file: !24, line: 279, baseType: !45, size: 16, offset: 96)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_addr", file: !24, line: 142, size: 16, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !45, file: !24, line: 143, baseType: !28, size: 8)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !45, file: !24, line: 144, baseType: !28, size: 8, offset: 8)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !23, file: !24, line: 280, baseType: !45, size: 16, offset: 112)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !23, file: !24, line: 282, baseType: !51, size: 96, offset: 128)
!51 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_seq_event_data", file: !24, line: 256, size: 96, elements: !52)
!52 = !{!53, !61, !71, !78, !85, !91, !116, !117, !118, !123, !128}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !51, file: !24, line: 257, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_note", file: !24, line: 180, size: 64, elements: !55)
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !54, file: !24, line: 181, baseType: !28, size: 8)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !54, file: !24, line: 182, baseType: !28, size: 8, offset: 8)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "velocity", scope: !54, file: !24, line: 183, baseType: !28, size: 8, offset: 16)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "off_velocity", scope: !54, file: !24, line: 184, baseType: !28, size: 8, offset: 24)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !54, file: !24, line: 185, baseType: !38, size: 32, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !51, file: !24, line: 258, baseType: !62, size: 96)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_ctrl", file: !24, line: 189, size: 96, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !62, file: !24, line: 190, baseType: !28, size: 8)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "unused1", scope: !62, file: !24, line: 191, baseType: !28, size: 8, offset: 8)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !62, file: !24, line: 191, baseType: !28, size: 8, offset: 16)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !62, file: !24, line: 191, baseType: !28, size: 8, offset: 24)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !62, file: !24, line: 192, baseType: !38, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !62, file: !24, line: 193, baseType: !70, size: 32, offset: 64)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "raw8", scope: !51, file: !24, line: 259, baseType: !72, size: 96)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_raw8", file: !24, line: 197, size: 96, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !72, file: !24, line: 198, baseType: !75, size: 96)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 96, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 12)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "raw32", scope: !51, file: !24, line: 260, baseType: !79, size: 96)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_raw32", file: !24, line: 202, size: 96, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !79, file: !24, line: 203, baseType: !82, size: 96)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 96, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 3)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !51, file: !24, line: 261, baseType: !86, size: 96)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_ext", file: !24, line: 207, size: 96, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !86, file: !24, line: 208, baseType: !38, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !86, file: !24, line: 209, baseType: !90, size: 64, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !51, file: !24, line: 262, baseType: !92, size: 96)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_queue_control", file: !24, line: 236, size: 96, elements: !93)
!93 = !{!94, !95, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !92, file: !24, line: 237, baseType: !28, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !92, file: !24, line: 238, baseType: !96, size: 24, offset: 8)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 24, elements: !83)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !92, file: !24, line: 246, baseType: !98, size: 64, offset: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !92, file: !24, line: 239, size: 64, elements: !99)
!99 = !{!100, !101, !102, !103, !108, !112}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !98, file: !24, line: 240, baseType: !70, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !98, file: !24, line: 241, baseType: !34, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !98, file: !24, line: 242, baseType: !38, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "skew", scope: !98, file: !24, line: 243, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_queue_skew", file: !24, line: 230, size: 64, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !104, file: !24, line: 231, baseType: !38, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !104, file: !24, line: 232, baseType: !38, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "d32", scope: !98, file: !24, line: 244, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 2)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "d8", scope: !98, file: !24, line: 245, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !51, file: !24, line: 263, baseType: !34, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !51, file: !24, line: 264, baseType: !45, size: 16)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !51, file: !24, line: 265, baseType: !119, size: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_connect", file: !24, line: 148, size: 32, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sender", scope: !119, file: !24, line: 149, baseType: !45, size: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !119, file: !24, line: 150, baseType: !45, size: 16, offset: 16)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !51, file: !24, line: 266, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_result", file: !24, line: 212, size: 64, elements: !125)
!125 = !{!126, !127}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !124, file: !24, line: 213, baseType: !70, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !124, file: !24, line: 214, baseType: !70, size: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "quote", scope: !51, file: !24, line: 267, baseType: !129, size: 96)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_quote", file: !24, line: 250, size: 96, elements: !130)
!130 = !{!131, !132, !134}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !129, file: !24, line: 251, baseType: !45, size: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !129, file: !24, line: 252, baseType: !133, size: 16, offset: 16)
!133 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !129, file: !24, line: 253, baseType: !135, size: 64, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ump", scope: !20, file: !13, line: 32, baseType: !137, size: 224)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__snd_seq_event", file: !13, line: 15, size: 224, elements: !138)
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !137, file: !13, line: 16, baseType: !23, size: 224)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !137, file: !13, line: 25, baseType: !141, size: 224)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !13, line: 20, size: 224, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !141, file: !13, line: 21, baseType: !23, size: 224)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !17, file: !13, line: 34, baseType: !11, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !17, file: !13, line: 35, baseType: !16, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !12, file: !13, line: 45, baseType: !16, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "total_elements", scope: !12, file: !13, line: 47, baseType: !70, size: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !12, file: !13, line: 48, baseType: !149, size: 32, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !150, line: 174, baseType: !151)
!150 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 172, size: 32, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !151, file: !150, line: 173, baseType: !70, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !12, file: !13, line: 50, baseType: !70, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "room", scope: !12, file: !13, line: 51, baseType: !70, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !12, file: !13, line: 53, baseType: !70, size: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "max_used", scope: !12, file: !13, line: 56, baseType: !70, size: 32, offset: 288)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_nopool", scope: !12, file: !13, line: 57, baseType: !70, size: 32, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_failures", scope: !12, file: !13, line: 58, baseType: !70, size: 32, offset: 352)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_success", scope: !12, file: !13, line: 59, baseType: !70, size: 32, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "output_sleep", scope: !12, file: !13, line: 62, baseType: !162, size: 192, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !163, line: 41, baseType: !164)
!163 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !163, line: 37, size: 192, elements: !165)
!165 = !{!166, !203}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !164, file: !163, line: 38, baseType: !167, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !168, line: 29, baseType: !169)
!168 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !168, line: 17, size: 32, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !168, line: 18, baseType: !172, size: 32)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !168, line: 18, size: 32, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !172, file: !168, line: 19, baseType: !175, size: 32)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !176, line: 14, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !175, file: !176, line: 15, baseType: !179, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !180, line: 44, baseType: !181)
!180 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !180, line: 14, size: 32, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !180, line: 15, baseType: !184, size: 32)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !180, line: 15, size: 32, elements: !185)
!185 = !{!186, !187, !196}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !184, file: !180, line: 16, baseType: !149, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !184, file: !180, line: 24, baseType: !188, size: 16)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !184, file: !180, line: 24, size: 16, elements: !189)
!189 = !{!190, !195}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !188, file: !180, line: 25, baseType: !191, size: 8)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !192, line: 17, baseType: !193)
!192 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !194, line: 21, baseType: !28)
!194 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !188, file: !180, line: 26, baseType: !191, size: 8, offset: 8)
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !184, file: !180, line: 28, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !184, file: !180, line: 28, size: 32, elements: !198)
!198 = !{!199, !202}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !197, file: !180, line: 29, baseType: !200, size: 16)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !192, line: 19, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !194, line: 24, baseType: !133)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !197, file: !180, line: 30, baseType: !200, size: 16, offset: 16)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !164, file: !163, line: 39, baseType: !204, size: 128, offset: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !150, line: 190, size: 128, elements: !205)
!205 = !{!206, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !204, file: !150, line: 191, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !204, file: !150, line: 191, baseType: !207, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !12, file: !13, line: 65, baseType: !167, size: 32, offset: 640)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !7, file: !8, line: 17, baseType: !16, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !7, file: !8, line: 18, baseType: !16, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "cells", scope: !7, file: !8, line: 19, baseType: !70, size: 32, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !7, file: !8, line: 20, baseType: !167, size: 32, offset: 224)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "use_lock", scope: !7, file: !8, line: 21, baseType: !215, size: 32, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_use_lock_t", file: !216, line: 7, baseType: !149)
!216 = !DIFile(filename: "sound/core/seq/seq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "87f5d997a3ce18199b25dc23b768dfb6")
!217 = !DIDerivedType(tag: DW_TAG_member, name: "input_sleep", scope: !7, file: !8, line: 22, baseType: !162, size: 192, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !7, file: !8, line: 23, baseType: !149, size: 32, offset: 512)
!219 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/seq/.seq_fifo.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/seq/snd-seq\22 -D KBUILD_BASENAME=\22seq_fifo\22 -D KBUILD_MODNAME=\22snd_seq\22 -D __KBUILD_MODNAME=kmod_snd_seq -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/seq/seq_fifo.ll sound/core/seq/seq_fifo.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !220, retainedTypes: !293, globals: !4019, splitDebugInlining: false, nameTableKind: None)
!220 = !{!221, !229, !236, !243, !249, !254, !260, !265, !271, !278, !283}
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !222, line: 9, baseType: !38, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!223 = !{!224, !225, !226, !227, !228}
!224 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!225 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!226 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!227 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!228 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !230, line: 312, baseType: !38, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!231 = !{!232, !233, !234, !235}
!232 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!233 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!234 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!235 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !237, line: 15, baseType: !38, size: 32, elements: !238)
!237 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!238 = !{!239, !240, !241, !242}
!239 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!240 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!241 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!242 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !244, line: 26, baseType: !38, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!245 = !{!246, !247, !248}
!246 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!247 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!248 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !250, line: 2052, baseType: !38, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!251 = !{!252, !253}
!252 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!253 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !255, line: 54, baseType: !38, size: 32, elements: !256)
!255 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!256 = !{!257, !258, !259}
!257 = !DIEnumerator(name: "USRQUOTA", value: 0)
!258 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!259 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !261, line: 65, baseType: !38, size: 32, elements: !262)
!261 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!262 = !{!263, !264}
!263 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!264 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !266, line: 16, baseType: !38, size: 32, elements: !267)
!266 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!267 = !{!268, !269, !270}
!268 = !DIEnumerator(name: "TT_NONE", value: 0)
!269 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!270 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !272, line: 51, baseType: !38, size: 32, elements: !273)
!272 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!273 = !{!274, !275, !276, !277}
!274 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!275 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!276 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!277 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !279, line: 10, baseType: !38, size: 32, elements: !280)
!279 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!280 = !{!281, !282}
!281 = !DIEnumerator(name: "false", value: 0)
!282 = !DIEnumerator(name: "true", value: 1)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !284, line: 364, baseType: !38, size: 32, elements: !285)
!284 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!285 = !{!286, !287, !288, !289, !290, !291, !292}
!286 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!287 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!288 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!289 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!290 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!291 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!292 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!293 = !{!294, !90, !295, !296, !298, !301, !302, !4014, !2250, !4015, !4017}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !150, line: 154, baseType: !38)
!295 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !207)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !304, line: 746, size: 58368, elements: !305)
!304 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!305 = !{!306, !316, !317, !318, !324, !325, !326, !327, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !411, !422, !522, !526, !529, !560, !561, !562, !563, !574, !576, !577, !578, !579, !580, !581, !592, !593, !596, !597, !598, !599, !600, !601, !602, !603, !610, !611, !618, !619, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3205, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3253, !3259, !3260, !3261, !3262, !3263, !3265, !3268, !3275, !3280, !3283, !3286, !3289, !3292, !3430, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3468, !3469, !3470, !3479, !3487, !3488, !3489, !3490, !3491, !3496, !3497, !3498, !3501, !3502, !3505, !3508, !3511, !3519, !3522, !3523, !3609, !3610, !3611, !3612, !3613, !3619, !3620, !3621, !3622, !3625, !3626, !3629, !3632, !3633, !3636, !3637, !3638, !3641, !3642, !3643, !3644, !3645, !3646, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3678, !3679, !3685, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3697, !3769, !3771, !3772, !3773, !3774, !3775, !3776, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3793, !3794, !3795}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !303, file: !304, line: 752, baseType: !307, size: 192)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !308, line: 56, size: 192, elements: !309)
!308 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!309 = !{!310, !311, !312, !315}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !308, line: 57, baseType: !295, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !307, file: !308, line: 58, baseType: !295, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !307, file: !308, line: 59, baseType: !313, size: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !192, line: 21, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !194, line: 27, baseType: !38)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !307, file: !308, line: 61, baseType: !313, size: 32, offset: 160)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !303, file: !304, line: 754, baseType: !38, size: 32, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !303, file: !304, line: 767, baseType: !90, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !303, file: !304, line: 768, baseType: !319, size: 32, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !320, line: 113, baseType: !321)
!320 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !320, line: 111, size: 32, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !321, file: !320, line: 112, baseType: !149, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !304, line: 770, baseType: !38, size: 32, offset: 352)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !303, file: !304, line: 771, baseType: !38, size: 32, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !303, file: !304, line: 774, baseType: !70, size: 32, offset: 416)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !303, file: !304, line: 775, baseType: !328, size: 128, offset: 448)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !329, line: 58, size: 128, elements: !330)
!329 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!330 = !{!331, !337, !342, !343}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !328, file: !329, line: 59, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !333, line: 60, size: 64, elements: !334)
!333 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !333, line: 61, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !329, line: 60, baseType: !338, size: 32, offset: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !329, line: 60, size: 32, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !338, file: !329, line: 61, baseType: !38, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !338, file: !329, line: 62, baseType: !149, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !328, file: !329, line: 65, baseType: !200, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !328, file: !329, line: 65, baseType: !200, size: 16, offset: 112)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !303, file: !304, line: 776, baseType: !38, size: 32, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !303, file: !304, line: 777, baseType: !295, size: 64, offset: 640)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !303, file: !304, line: 778, baseType: !302, size: 64, offset: 704)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !303, file: !304, line: 787, baseType: !70, size: 32, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !303, file: !304, line: 788, baseType: !70, size: 32, offset: 800)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !303, file: !304, line: 790, baseType: !70, size: 32, offset: 832)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !303, file: !304, line: 792, baseType: !70, size: 32, offset: 864)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !303, file: !304, line: 793, baseType: !70, size: 32, offset: 896)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !303, file: !304, line: 794, baseType: !70, size: 32, offset: 928)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !303, file: !304, line: 795, baseType: !38, size: 32, offset: 960)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !303, file: !304, line: 797, baseType: !355, size: 2048, offset: 1024)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !304, line: 551, size: 2048, elements: !356)
!356 = !{!357, !362, !370, !374, !375, !376, !377, !378, !379, !380, !381, !385, !386, !387, !388, !390, !393, !394, !395}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !355, file: !304, line: 553, baseType: !358, size: 128)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !304, line: 411, size: 128, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !358, file: !304, line: 412, baseType: !295, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !358, file: !304, line: 413, baseType: !313, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !355, file: !304, line: 554, baseType: !363, size: 192, align: 64, offset: 128)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !364, line: 5, size: 192, align: 64, elements: !365)
!364 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!365 = !{!366, !367, !369}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !363, file: !364, line: 6, baseType: !295, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !363, file: !364, line: 7, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !363, file: !364, line: 8, baseType: !368, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !355, file: !304, line: 555, baseType: !371, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !192, line: 23, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !194, line: 31, baseType: !373)
!373 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !355, file: !304, line: 556, baseType: !371, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !355, file: !304, line: 558, baseType: !204, size: 128, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !355, file: !304, line: 559, baseType: !38, size: 32, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !355, file: !304, line: 561, baseType: !371, size: 64, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !355, file: !304, line: 562, baseType: !371, size: 64, offset: 704)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !355, file: !304, line: 563, baseType: !371, size: 64, offset: 768)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !355, file: !304, line: 564, baseType: !371, size: 64, offset: 832)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !355, file: !304, line: 565, baseType: !382, size: 64, offset: 896)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !192, line: 22, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !194, line: 30, baseType: !384)
!384 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !355, file: !304, line: 566, baseType: !371, size: 64, offset: 960)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !355, file: !304, line: 568, baseType: !371, size: 64, offset: 1024)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !355, file: !304, line: 571, baseType: !70, size: 32, offset: 1088)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !355, file: !304, line: 572, baseType: !389, size: 64, offset: 1152)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !355, file: !304, line: 574, baseType: !391, size: 64, offset: 1216)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !304, line: 49, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !355, file: !304, line: 576, baseType: !391, size: 64, offset: 1280)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !355, file: !304, line: 578, baseType: !295, size: 64, offset: 1344)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !355, file: !304, line: 588, baseType: !396, size: 512, align: 512, offset: 1536)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !304, line: 497, size: 512, align: 512, elements: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !396, file: !304, line: 498, baseType: !371, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !396, file: !304, line: 499, baseType: !371, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !396, file: !304, line: 500, baseType: !371, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !396, file: !304, line: 501, baseType: !313, size: 32, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !396, file: !304, line: 502, baseType: !313, size: 32, offset: 224)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !396, file: !304, line: 503, baseType: !295, size: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !396, file: !304, line: 504, baseType: !295, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !396, file: !304, line: 505, baseType: !295, size: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !396, file: !304, line: 506, baseType: !407, size: 64, align: 64, offset: 448)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !304, line: 445, size: 64, align: 64, elements: !408)
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !407, file: !304, line: 446, baseType: !38, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !407, file: !304, line: 447, baseType: !38, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !303, file: !304, line: 798, baseType: !412, size: 384, offset: 3072)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !304, line: 592, size: 384, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !412, file: !304, line: 593, baseType: !204, size: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !412, file: !304, line: 594, baseType: !295, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !412, file: !304, line: 595, baseType: !295, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !412, file: !304, line: 596, baseType: !38, size: 32, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !412, file: !304, line: 597, baseType: !133, size: 16, offset: 288)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !412, file: !304, line: 598, baseType: !133, size: 16, offset: 304)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !412, file: !304, line: 600, baseType: !421, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !303, file: !304, line: 799, baseType: !423, size: 1792, offset: 3456)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !304, line: 610, size: 1792, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !519, !520}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !423, file: !304, line: 611, baseType: !363, size: 192, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !423, file: !304, line: 618, baseType: !371, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !423, file: !304, line: 619, baseType: !371, size: 64, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !423, file: !304, line: 620, baseType: !371, size: 64, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !423, file: !304, line: 621, baseType: !371, size: 64, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !423, file: !304, line: 622, baseType: !371, size: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !423, file: !304, line: 629, baseType: !382, size: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !423, file: !304, line: 630, baseType: !371, size: 64, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !304, line: 631, baseType: !38, size: 32, offset: 640)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !423, file: !304, line: 653, baseType: !38, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !423, file: !304, line: 654, baseType: !38, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !423, file: !304, line: 655, baseType: !38, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !423, file: !304, line: 656, baseType: !38, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !423, file: !304, line: 662, baseType: !439, size: 512, offset: 704)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !261, line: 118, size: 512, elements: !440)
!440 = !{!441, !449, !450, !455, !515, !516, !517, !518}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !439, file: !261, line: 119, baseType: !442, size: 256)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !443, line: 9, size: 256, elements: !444)
!443 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !442, file: !443, line: 10, baseType: !363, size: 192, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !442, file: !443, line: 11, baseType: !447, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !448, line: 29, baseType: !382)
!448 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !439, file: !261, line: 120, baseType: !447, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !439, file: !261, line: 121, baseType: !451, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!260, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !439, file: !261, line: 122, baseType: !456, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !261, line: 159, size: 512, align: 512, elements: !458)
!458 = !{!459, !483, !484, !488, !498, !499, !510, !514}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !457, file: !261, line: 160, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !261, line: 215, size: 4608, align: 512, elements: !462)
!462 = !{!463, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !461, file: !261, line: 216, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !176, line: 23, baseType: !175)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !461, file: !261, line: 217, baseType: !38, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !461, file: !261, line: 218, baseType: !38, size: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !461, file: !261, line: 219, baseType: !38, size: 32, offset: 96)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !461, file: !261, line: 220, baseType: !38, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !461, file: !261, line: 221, baseType: !38, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !461, file: !261, line: 222, baseType: !38, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !461, file: !261, line: 223, baseType: !38, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !461, file: !261, line: 224, baseType: !38, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !461, file: !261, line: 226, baseType: !38, size: 32, offset: 160)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !461, file: !261, line: 227, baseType: !133, size: 16, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !461, file: !261, line: 228, baseType: !133, size: 16, offset: 208)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !461, file: !261, line: 229, baseType: !38, size: 32, offset: 224)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !461, file: !261, line: 235, baseType: !447, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !461, file: !261, line: 236, baseType: !454, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !461, file: !261, line: 237, baseType: !447, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !461, file: !261, line: 238, baseType: !454, size: 64, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !461, file: !261, line: 239, baseType: !482, size: 4096, align: 512, offset: 512)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 4096, align: 512, elements: !114)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !457, file: !261, line: 161, baseType: !38, size: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !457, file: !261, line: 162, baseType: !485, size: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !150, line: 32, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !487, line: 96, baseType: !70)
!487 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!488 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !457, file: !261, line: 163, baseType: !489, size: 32, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !490, line: 274, baseType: !491)
!490 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !490, line: 274, size: 32, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !491, file: !490, line: 274, baseType: !494, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !490, line: 69, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !490, line: 64, size: 32, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !495, file: !490, line: 65, baseType: !38, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !457, file: !261, line: 164, baseType: !454, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !457, file: !261, line: 165, baseType: !500, size: 128, offset: 256)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !443, line: 14, size: 128, elements: !501)
!501 = !{!502}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !500, file: !443, line: 15, baseType: !503, size: 128)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !364, line: 26, size: 128, elements: !504)
!504 = !{!505, !509}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !503, file: !364, line: 27, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !364, line: 12, size: 64, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !506, file: !364, line: 13, baseType: !368, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !503, file: !364, line: 28, baseType: !368, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !457, file: !261, line: 166, baseType: !511, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!447}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !457, file: !261, line: 167, baseType: !447, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !439, file: !261, line: 123, baseType: !191, size: 8, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !439, file: !261, line: 124, baseType: !191, size: 8, offset: 456)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !439, file: !261, line: 125, baseType: !191, size: 8, offset: 464)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !439, file: !261, line: 126, baseType: !191, size: 8, offset: 472)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !423, file: !304, line: 671, baseType: !439, size: 512, offset: 1216)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !423, file: !304, line: 679, baseType: !521, size: 64, offset: 1728)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !303, file: !304, line: 800, baseType: !523, size: 64, offset: 5248)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !304, line: 800, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !303, file: !304, line: 809, baseType: !527, size: 64, offset: 5312)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !304, line: 70, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !303, file: !304, line: 825, baseType: !530, size: 2048, align: 512, offset: 5632)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !304, line: 509, size: 2048, align: 512, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !530, file: !304, line: 511, baseType: !371, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !530, file: !304, line: 512, baseType: !371, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !530, file: !304, line: 513, baseType: !371, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !530, file: !304, line: 514, baseType: !371, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !530, file: !304, line: 515, baseType: !371, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !530, file: !304, line: 516, baseType: !371, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !530, file: !304, line: 518, baseType: !371, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !530, file: !304, line: 519, baseType: !371, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !530, file: !304, line: 520, baseType: !382, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !530, file: !304, line: 522, baseType: !371, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !530, file: !304, line: 523, baseType: !371, size: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !530, file: !304, line: 524, baseType: !382, size: 64, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !530, file: !304, line: 526, baseType: !382, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !530, file: !304, line: 527, baseType: !371, size: 64, offset: 832)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !530, file: !304, line: 529, baseType: !371, size: 64, offset: 896)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !530, file: !304, line: 530, baseType: !371, size: 64, offset: 960)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !530, file: !304, line: 531, baseType: !371, size: 64, offset: 1024)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !530, file: !304, line: 532, baseType: !371, size: 64, offset: 1088)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !530, file: !304, line: 533, baseType: !371, size: 64, offset: 1152)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !530, file: !304, line: 535, baseType: !371, size: 64, offset: 1216)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !530, file: !304, line: 536, baseType: !371, size: 64, offset: 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !530, file: !304, line: 537, baseType: !371, size: 64, offset: 1344)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !530, file: !304, line: 538, baseType: !371, size: 64, offset: 1408)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !530, file: !304, line: 539, baseType: !371, size: 64, offset: 1472)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !530, file: !304, line: 540, baseType: !371, size: 64, offset: 1536)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !530, file: !304, line: 541, baseType: !371, size: 64, offset: 1600)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !530, file: !304, line: 542, baseType: !371, size: 64, offset: 1664)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !530, file: !304, line: 543, baseType: !371, size: 64, offset: 1728)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !303, file: !304, line: 833, baseType: !38, size: 32, offset: 7680)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !303, file: !304, line: 836, baseType: !38, size: 32, offset: 7712)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !303, file: !304, line: 837, baseType: !70, size: 32, offset: 7744)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !303, file: !304, line: 838, baseType: !564, size: 64, offset: 7808)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !567, line: 19, baseType: !568)
!567 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !567, line: 19, size: 64, elements: !569)
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !568, file: !567, line: 19, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 64, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 1)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !303, file: !304, line: 839, baseType: !575, size: 64, offset: 7872)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !303, file: !304, line: 840, baseType: !566, size: 64, offset: 7936)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !303, file: !304, line: 841, baseType: !90, size: 64, offset: 8000)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !303, file: !304, line: 843, baseType: !133, size: 16, offset: 8064)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !303, file: !304, line: 845, baseType: !133, size: 16, offset: 8080)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !303, file: !304, line: 848, baseType: !70, size: 32, offset: 8096)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !303, file: !304, line: 849, baseType: !582, size: 32, offset: 8128)
!582 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !304, line: 718, size: 32, elements: !583)
!583 = !{!584, !591}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !582, file: !304, line: 724, baseType: !585, size: 32)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !582, file: !304, line: 719, size: 32, elements: !586)
!586 = !{!587, !588, !589, !590}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !585, file: !304, line: 720, baseType: !191, size: 8)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !585, file: !304, line: 721, baseType: !191, size: 8, offset: 8)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !585, file: !304, line: 722, baseType: !191, size: 8, offset: 16)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !585, file: !304, line: 723, baseType: !191, size: 8, offset: 24)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !582, file: !304, line: 725, baseType: !313, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !303, file: !304, line: 850, baseType: !204, size: 128, offset: 8192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !303, file: !304, line: 851, baseType: !594, size: 64, offset: 8320)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !304, line: 60, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !303, file: !304, line: 855, baseType: !295, size: 64, offset: 8384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !303, file: !304, line: 856, baseType: !191, size: 8, offset: 8448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !303, file: !304, line: 857, baseType: !191, size: 8, offset: 8456)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !303, file: !304, line: 858, baseType: !70, size: 32, offset: 8480)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !303, file: !304, line: 859, baseType: !204, size: 128, offset: 8512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !303, file: !304, line: 860, baseType: !70, size: 32, offset: 8640)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !303, file: !304, line: 861, baseType: !204, size: 128, offset: 8704)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !303, file: !304, line: 873, baseType: !604, size: 256, offset: 8832)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !304, line: 376, size: 256, elements: !605)
!605 = !{!606, !607, !608, !609}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !604, file: !304, line: 381, baseType: !295, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !604, file: !304, line: 384, baseType: !373, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !604, file: !304, line: 389, baseType: !373, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !604, file: !304, line: 392, baseType: !373, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !303, file: !304, line: 875, baseType: !204, size: 128, offset: 9088)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !303, file: !304, line: 877, baseType: !612, size: 320, offset: 9216)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !613, line: 86, size: 320, elements: !614)
!613 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!614 = !{!615, !616, !617}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !612, file: !613, line: 87, baseType: !70, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !612, file: !613, line: 88, baseType: !204, size: 128, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !612, file: !613, line: 89, baseType: !204, size: 128, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !303, file: !304, line: 878, baseType: !363, size: 192, align: 64, offset: 9536)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !303, file: !304, line: 881, baseType: !620, size: 64, offset: 9728)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !622, line: 733, size: 10240, elements: !623)
!622 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!623 = !{!624, !3119}
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !622, line: 734, baseType: !625, size: 10240)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !621, file: !622, line: 734, size: 10240, elements: !626)
!626 = !{!627, !631, !645, !2998, !2999, !3000, !3001, !3002, !3003, !3010, !3011, !3012, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3051, !3053, !3056, !3099, !3100, !3101, !3104, !3105, !3106, !3109, !3110, !3111, !3117, !3118}
!627 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !622, line: 739, baseType: !628, size: 512, align: 512)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !622, line: 739, size: 512, align: 512, elements: !629)
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !628, file: !622, line: 747, baseType: !149, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !625, file: !622, line: 750, baseType: !632, size: 128, offset: 512)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !633, line: 218, size: 128, elements: !634)
!633 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!634 = !{!635, !643, !644}
!635 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !633, line: 219, baseType: !636, size: 32)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !633, line: 219, size: 32, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !636, file: !633, line: 220, baseType: !167, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !636, file: !633, line: 221, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !633, line: 197, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !633, line: 197, elements: !642)
!642 = !{}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !632, file: !633, line: 223, baseType: !38, size: 32, offset: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !632, file: !633, line: 224, baseType: !90, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !625, file: !622, line: 752, baseType: !646, size: 64, offset: 640)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!295, !649, !295, !295, !295, !295}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !250, line: 994, size: 1856, align: 64, elements: !651)
!651 = !{!652, !666, !667, !669, !676, !688, !691, !692, !760, !974, !983, !2988, !2989, !2990, !2991, !2992, !2993, !2995, !2996, !2997}
!652 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !250, line: 995, baseType: !653, size: 128)
!653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !250, line: 995, size: 128, elements: !654)
!654 = !{!655, !656, !665}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !653, file: !250, line: 996, baseType: !332, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !653, file: !250, line: 997, baseType: !657, size: 128, align: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !150, line: 232, size: 128, align: 64, elements: !658)
!658 = !{!659, !661}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !657, file: !150, line: 233, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !657, file: !150, line: 234, baseType: !662, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !660}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !653, file: !250, line: 998, baseType: !38, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !650, file: !250, line: 1005, baseType: !167, size: 32, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !650, file: !250, line: 1006, baseType: !668, size: 32, offset: 160)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !150, line: 156, baseType: !38)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !650, file: !250, line: 1007, baseType: !670, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !671, line: 13, baseType: !672)
!671 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !150, line: 181, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 179, size: 64, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !673, file: !150, line: 180, baseType: !382, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !650, file: !250, line: 1008, baseType: !677, size: 256, offset: 256)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !678, line: 66, size: 256, elements: !679)
!678 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!679 = !{!680, !681, !682, !687}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !677, file: !678, line: 67, baseType: !670, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !677, file: !678, line: 68, baseType: !464, size: 32, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !677, file: !678, line: 70, baseType: !683, size: 32, offset: 96)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !684, line: 15, size: 32, elements: !685)
!684 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !683, file: !684, line: 20, baseType: !149, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !677, file: !678, line: 72, baseType: !204, size: 128, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !650, file: !250, line: 1009, baseType: !689, size: 64, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !150, line: 52, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !487, line: 88, baseType: !384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !650, file: !250, line: 1010, baseType: !38, size: 32, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !650, file: !250, line: 1011, baseType: !693, size: 256, offset: 640)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !250, line: 948, size: 256, elements: !694)
!694 = !{!695, !716, !749, !750, !758, !759}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !693, file: !250, line: 949, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !697, line: 34, baseType: !698)
!697 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !697, line: 25, size: 64, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !698, file: !697, line: 26, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !702, line: 27, baseType: !703)
!702 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !702, line: 13, size: 64, elements: !704)
!704 = !{!705, !715}
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !702, line: 14, baseType: !706, size: 32)
!706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !702, line: 14, size: 32, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !706, file: !702, line: 15, baseType: !149, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !702, line: 16, baseType: !710, size: 32)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !706, file: !702, line: 16, size: 32, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !710, file: !702, line: 18, baseType: !191, size: 8)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !710, file: !702, line: 19, baseType: !714, size: 24, offset: 8)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 24, elements: !83)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !703, file: !702, line: 26, baseType: !179, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !693, file: !250, line: 950, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !222, line: 59, size: 768, elements: !719)
!719 = !{!720, !721, !722, !723, !736, !737, !738, !739}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !718, file: !222, line: 61, baseType: !319, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !718, file: !222, line: 62, baseType: !38, size: 32, offset: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !718, file: !222, line: 63, baseType: !167, size: 32, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !718, file: !222, line: 65, baseType: !724, size: 256, offset: 128)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 256, elements: !734)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !150, line: 194, size: 64, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !725, file: !150, line: 195, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !150, line: 198, size: 128, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !729, file: !150, line: 199, baseType: !728, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !729, file: !150, line: 199, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!734 = !{!735}
!735 = !DISubrange(count: 4)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !718, file: !222, line: 66, baseType: !725, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !718, file: !222, line: 68, baseType: !162, size: 192, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !718, file: !222, line: 69, baseType: !657, size: 128, align: 64, offset: 640)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !718, file: !222, line: 70, baseType: !740, offset: 768)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, elements: !747)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !222, line: 54, size: 128, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !741, file: !222, line: 55, baseType: !70, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !741, file: !222, line: 56, baseType: !745, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !222, line: 56, flags: DIFlagFwdDecl)
!747 = !{!748}
!748 = !DISubrange(count: -1)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !693, file: !250, line: 951, baseType: !221, size: 32, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !693, file: !250, line: 952, baseType: !751, size: 32, offset: 160)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !752, line: 23, baseType: !753)
!752 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 21, size: 32, elements: !754)
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !753, file: !752, line: 22, baseType: !756, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !150, line: 37, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !487, line: 49, baseType: !38)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !693, file: !250, line: 952, baseType: !751, size: 32, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !693, file: !250, line: 953, baseType: !70, size: 32, offset: 224)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !650, file: !250, line: 1012, baseType: !761, size: 64, offset: 896)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !764, line: 110, size: 1472, elements: !765)
!764 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!765 = !{!766, !767, !768, !775, !776, !777, !778, !779, !780, !781, !782, !788, !789, !790, !791, !792, !793, !919, !920, !921, !922, !923, !954, !957, !961, !969}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !763, file: !764, line: 111, baseType: !670, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !763, file: !764, line: 112, baseType: !751, size: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !763, file: !764, line: 113, baseType: !769, size: 32, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !752, line: 28, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 26, size: 32, elements: !771)
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !770, file: !752, line: 27, baseType: !773, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !150, line: 38, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !487, line: 50, baseType: !38)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !763, file: !764, line: 114, baseType: !751, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !763, file: !764, line: 115, baseType: !769, size: 32, offset: 160)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !763, file: !764, line: 116, baseType: !751, size: 32, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !763, file: !764, line: 117, baseType: !769, size: 32, offset: 224)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !763, file: !764, line: 118, baseType: !751, size: 32, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !763, file: !764, line: 119, baseType: !769, size: 32, offset: 288)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !763, file: !764, line: 120, baseType: !38, size: 32, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !763, file: !764, line: 121, baseType: !783, size: 64, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !784, line: 24, baseType: !785)
!784 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !784, line: 24, size: 64, elements: !786)
!786 = !{!787}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !785, file: !784, line: 24, baseType: !371, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !763, file: !764, line: 122, baseType: !783, size: 64, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !763, file: !764, line: 123, baseType: !783, size: 64, offset: 512)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !763, file: !764, line: 124, baseType: !783, size: 64, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !763, file: !764, line: 125, baseType: !783, size: 64, offset: 640)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !763, file: !764, line: 127, baseType: !28, size: 8, offset: 704)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !763, file: !764, line: 129, baseType: !794, size: 64, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !796, line: 195, size: 1728, elements: !797)
!796 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!797 = !{!798, !799, !804, !809, !818, !821, !822, !829, !830, !831, !832, !835, !836, !837, !839, !840, !883, !904}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !795, file: !796, line: 196, baseType: !319, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !795, file: !796, line: 197, baseType: !800, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !796, line: 28, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !150, line: 104, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !192, line: 20, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !194, line: 26, baseType: !70)
!804 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !796, line: 198, baseType: !805, size: 192, offset: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !796, line: 198, size: 192, elements: !806)
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !805, file: !796, line: 199, baseType: !204, size: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !805, file: !796, line: 200, baseType: !363, size: 192, align: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !795, file: !796, line: 205, baseType: !810, size: 320, offset: 256)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !811, line: 48, size: 320, elements: !812)
!811 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!812 = !{!813, !814, !815, !816, !817}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !810, file: !811, line: 49, baseType: !670, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !810, file: !811, line: 55, baseType: !670, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !810, file: !811, line: 57, baseType: !683, size: 32, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !810, file: !811, line: 59, baseType: !464, size: 32, offset: 160)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !810, file: !811, line: 60, baseType: !204, size: 128, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !795, file: !796, line: 206, baseType: !819, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !796, line: 206, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !795, file: !796, line: 207, baseType: !90, size: 64, offset: 640)
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !796, line: 208, baseType: !823, size: 64, offset: 704)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !796, line: 208, size: 64, elements: !824)
!824 = !{!825, !828}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !823, file: !796, line: 209, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !827, line: 8, baseType: !383)
!827 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!828 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !823, file: !796, line: 210, baseType: !826, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !795, file: !796, line: 212, baseType: !826, size: 64, offset: 768)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !795, file: !796, line: 213, baseType: !751, size: 32, offset: 832)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !795, file: !796, line: 214, baseType: !769, size: 32, offset: 864)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !795, file: !796, line: 215, baseType: !833, size: 32, offset: 896)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !796, line: 31, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !150, line: 110, baseType: !313)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !795, file: !796, line: 216, baseType: !133, size: 16, offset: 928)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !795, file: !796, line: 217, baseType: !133, size: 16, offset: 944)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !795, file: !796, line: 221, baseType: !838, size: 16, offset: 960)
!838 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !795, file: !796, line: 228, baseType: !295, size: 64, offset: 1024)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !796, line: 245, baseType: !841, size: 320, offset: 1088)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !796, line: 245, size: 320, elements: !842)
!842 = !{!843, !874}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !841, file: !796, line: 246, baseType: !844, size: 320)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !796, line: 114, size: 320, elements: !845)
!845 = !{!846, !847, !859, !862, !871}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !844, file: !796, line: 116, baseType: !295, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !796, line: 117, baseType: !848, size: 64, offset: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !796, line: 117, size: 64, elements: !849)
!849 = !{!850, !858}
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !796, line: 118, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !848, file: !796, line: 118, size: 64, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !851, file: !796, line: 120, baseType: !200, size: 16)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !851, file: !796, line: 121, baseType: !855, size: 48, offset: 16)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 48, elements: !856)
!856 = !{!857}
!857 = !DISubrange(count: 6)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !848, file: !796, line: 127, baseType: !295, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !844, file: !796, line: 129, baseType: !860, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !796, line: 102, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !844, file: !796, line: 130, baseType: !863, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !796, line: 108, size: 192, elements: !865)
!865 = !{!866, !867, !868}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !864, file: !796, line: 109, baseType: !657, size: 128, align: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !864, file: !796, line: 110, baseType: !319, size: 32, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !864, file: !796, line: 111, baseType: !869, size: 8, offset: 160)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !150, line: 35, baseType: !870)
!870 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !844, file: !796, line: 131, baseType: !872, size: 64, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !796, line: 247, baseType: !875, size: 320)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !841, file: !796, line: 247, size: 320, elements: !876)
!876 = !{!877, !878, !879, !880, !881}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !875, file: !796, line: 248, baseType: !295, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !875, file: !796, line: 249, baseType: !295, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !875, file: !796, line: 250, baseType: !860, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !875, file: !796, line: 251, baseType: !863, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !875, file: !796, line: 252, baseType: !882, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !796, line: 260, baseType: !884, size: 256, offset: 1408)
!884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !796, line: 260, size: 256, elements: !885)
!885 = !{!886, !892}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !884, file: !796, line: 261, baseType: !887, size: 256)
!887 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !796, line: 134, size: 256, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !887, file: !796, line: 135, baseType: !90, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !887, file: !796, line: 136, baseType: !891, size: 256)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !734)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !796, line: 262, baseType: !893, size: 256)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !884, file: !796, line: 262, size: 256, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !893, file: !796, line: 264, baseType: !204, size: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !893, file: !796, line: 265, baseType: !897, size: 128, offset: 128)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !898, line: 22, size: 128, elements: !899)
!898 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!899 = !{!900, !903}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !897, file: !898, line: 23, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !898, line: 23, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !897, file: !898, line: 24, baseType: !295, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !795, file: !796, line: 280, baseType: !905, size: 64, offset: 1664)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !796, line: 176, size: 192, elements: !907)
!907 = !{!908, !917, !918}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !906, file: !796, line: 177, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !796, line: 171, baseType: !910)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!70, !794, !913, !915, !794}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !906, file: !796, line: 178, baseType: !794, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !906, file: !796, line: 179, baseType: !860, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !763, file: !764, line: 130, baseType: !794, size: 64, offset: 832)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !763, file: !764, line: 131, baseType: !794, size: 64, offset: 896)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !763, file: !764, line: 132, baseType: !794, size: 64, offset: 960)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !763, file: !764, line: 135, baseType: !90, size: 64, offset: 1024)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !763, file: !764, line: 137, baseType: !924, size: 64, offset: 1088)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !926, line: 14, size: 1088, elements: !927)
!926 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!927 = !{!928, !929, !938, !939, !940, !941, !942, !943}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !925, file: !926, line: 15, baseType: !319, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !925, file: !926, line: 17, baseType: !930, size: 320, offset: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !931, line: 22, size: 320, elements: !932)
!931 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!932 = !{!933, !934, !935, !936}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !930, file: !931, line: 23, baseType: !464, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !930, file: !931, line: 24, baseType: !382, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !930, file: !931, line: 26, baseType: !204, size: 128, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !930, file: !931, line: 28, baseType: !937, size: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !925, file: !926, line: 19, baseType: !295, size: 64, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !925, file: !926, line: 20, baseType: !670, size: 64, offset: 448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !925, file: !926, line: 23, baseType: !729, size: 128, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !925, file: !926, line: 24, baseType: !751, size: 32, offset: 640)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !925, file: !926, line: 29, baseType: !670, size: 64, offset: 704)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !925, file: !926, line: 36, baseType: !944, size: 320, offset: 768)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !945, line: 15, size: 320, elements: !946)
!945 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!946 = !{!947, !948, !949, !950, !951, !952, !953}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !944, file: !945, line: 16, baseType: !464, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !944, file: !945, line: 18, baseType: !70, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !944, file: !945, line: 19, baseType: !70, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !944, file: !945, line: 20, baseType: !70, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !944, file: !945, line: 21, baseType: !70, size: 32, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !944, file: !945, line: 22, baseType: !295, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !945, line: 23, baseType: !295, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !763, file: !764, line: 138, baseType: !955, size: 64, offset: 1152)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !752, line: 18, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !763, file: !764, line: 139, baseType: !958, size: 64, offset: 1216)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !960, line: 16, flags: DIFlagFwdDecl)
!960 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!961 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !763, file: !764, line: 140, baseType: !962, size: 64, offset: 1280)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !764, line: 25, size: 64, elements: !964)
!964 = !{!965, !966, !967}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !963, file: !764, line: 26, baseType: !149, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !963, file: !764, line: 27, baseType: !70, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !963, file: !764, line: 28, baseType: !968, offset: 64)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, elements: !747)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !763, file: !764, line: 142, baseType: !970, size: 128, offset: 1344)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !763, file: !764, line: 142, size: 128, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !970, file: !764, line: 143, baseType: !70, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !970, file: !764, line: 144, baseType: !657, size: 128, align: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !650, file: !250, line: 1013, baseType: !975, size: 256, offset: 960)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !250, line: 970, size: 256, elements: !976)
!976 = !{!977, !978, !979, !980, !981, !982}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !975, file: !250, line: 971, baseType: !295, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !975, file: !250, line: 972, baseType: !38, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !975, file: !250, line: 973, baseType: !38, size: 32, offset: 96)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !975, file: !250, line: 974, baseType: !38, size: 32, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !975, file: !250, line: 975, baseType: !38, size: 32, offset: 160)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !975, file: !250, line: 976, baseType: !689, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !650, file: !250, line: 1014, baseType: !984, size: 128, offset: 1216)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !985, line: 8, size: 128, elements: !986)
!985 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!986 = !{!987, !2987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !984, file: !985, line: 9, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !990, line: 70, size: 256, elements: !991)
!990 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!991 = !{!992, !2984, !2985, !2986}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !989, file: !990, line: 71, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !995, line: 82, size: 1536, elements: !996)
!995 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!996 = !{!997, !998, !1003, !1011, !1012, !1027, !2952, !2954, !2967, !2968, !2969, !2970, !2971, !2976, !2977, !2978}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !994, file: !995, line: 84, baseType: !38, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !994, file: !995, line: 85, baseType: !999, size: 32, offset: 32)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !490, line: 275, baseType: !1000)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !490, line: 275, size: 32, elements: !1001)
!1001 = !{!1002}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1000, file: !490, line: 275, baseType: !494, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !994, file: !995, line: 86, baseType: !1004, size: 128, offset: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1005, line: 38, size: 128, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1006 = !{!1007, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1004, file: !1005, line: 39, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1004, file: !1005, line: 39, baseType: !1010, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !994, file: !995, line: 87, baseType: !993, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !994, file: !995, line: 88, baseType: !1013, size: 128, offset: 256)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !995, line: 49, size: 128, elements: !1014)
!1014 = !{!1015, !1024}
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !995, line: 50, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1013, file: !995, line: 50, size: 64, elements: !1017)
!1017 = !{!1018, !1023}
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !995, line: 51, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1016, file: !995, line: 51, size: 64, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1019, file: !995, line: 52, baseType: !313, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1019, file: !995, line: 52, baseType: !313, size: 32, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1016, file: !995, line: 54, baseType: !371, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1013, file: !995, line: 56, baseType: !1025, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !994, file: !995, line: 89, baseType: !1028, size: 64, offset: 384)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !250, line: 641, size: 4800, elements: !1030)
!1030 = !{!1031, !1033, !1034, !1035, !1036, !1037, !1038, !1041, !1042, !1239, !2766, !2767, !2768, !2769, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2934, !2937, !2938, !2939, !2948, !2949, !2950, !2951}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1029, file: !250, line: 642, baseType: !1032, size: 16)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !150, line: 24, baseType: !133)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1029, file: !250, line: 643, baseType: !133, size: 16, offset: 16)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1029, file: !250, line: 644, baseType: !751, size: 32, offset: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1029, file: !250, line: 645, baseType: !204, size: 128, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1029, file: !250, line: 646, baseType: !769, size: 32, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1029, file: !250, line: 647, baseType: !38, size: 32, offset: 224)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1029, file: !250, line: 650, baseType: !1039, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !250, line: 607, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1029, file: !250, line: 651, baseType: !1039, size: 64, offset: 320)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1029, file: !250, line: 654, baseType: !1043, size: 64, offset: 384)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !250, line: 1966, size: 2048, align: 512, elements: !1046)
!1046 = !{!1047, !1051, !1064, !1070, !1074, !1078, !1082, !1086, !1090, !1094, !1098, !1099, !1105, !1109, !1147, !1178, !1188, !1194, !1198, !1202, !1206, !1210, !1214, !1220, !1224}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1045, file: !250, line: 1967, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!993, !1028, !993, !38}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1045, file: !250, line: 1968, baseType: !1052, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!872, !993, !1028, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1057, line: 10, size: 128, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1058 = !{!1059, !1063}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1056, file: !1057, line: 11, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !90}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1056, file: !1057, line: 12, baseType: !90, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1045, file: !250, line: 1969, baseType: !1065, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!70, !1068, !1028, !70}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !784, line: 42, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1045, file: !250, line: 1970, baseType: !1071, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!1039, !1028, !70, !869}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1045, file: !250, line: 1972, baseType: !1075, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!70, !993, !882, !70}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1045, file: !250, line: 1974, baseType: !1079, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!70, !1068, !1028, !993, !1032, !869}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1045, file: !250, line: 1976, baseType: !1083, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!70, !993, !1028, !993}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1045, file: !250, line: 1977, baseType: !1087, size: 64, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!70, !1028, !993}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1045, file: !250, line: 1978, baseType: !1091, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!70, !1068, !1028, !993, !872}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1045, file: !250, line: 1980, baseType: !1095, size: 64, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!70, !1068, !1028, !993, !1032}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1045, file: !250, line: 1982, baseType: !1087, size: 64, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1045, file: !250, line: 1983, baseType: !1100, size: 64, offset: 704)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!70, !1068, !1028, !993, !1032, !1103}
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !150, line: 21, baseType: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !150, line: 18, baseType: !313)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1045, file: !250, line: 1985, baseType: !1106, size: 64, offset: 768)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!70, !1068, !1028, !993, !1028, !993, !38}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1045, file: !250, line: 1987, baseType: !1110, size: 64, offset: 832)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!70, !1068, !993, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !250, line: 226, size: 640, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1128, !1137, !1138, !1144, !1145, !1146}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1114, file: !250, line: 227, baseType: !38, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1114, file: !250, line: 228, baseType: !1032, size: 16, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !250, line: 241, baseType: !1119, size: 32, offset: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !250, line: 241, size: 32, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1119, file: !250, line: 242, baseType: !751, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1119, file: !250, line: 243, baseType: !1123, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1124, line: 16, baseType: !1125)
!1124 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1124, line: 14, size: 32, elements: !1126)
!1126 = !{!1127}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1125, file: !1124, line: 15, baseType: !756, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !250, line: 245, baseType: !1129, size: 32, offset: 96)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !250, line: 245, size: 32, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1129, file: !250, line: 246, baseType: !769, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1129, file: !250, line: 247, baseType: !1133, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1124, line: 20, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1124, line: 18, size: 32, elements: !1135)
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1134, file: !1124, line: 19, baseType: !773, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1114, file: !250, line: 249, baseType: !689, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1114, file: !250, line: 250, baseType: !1139, size: 128, offset: 192)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !827, line: 13, size: 128, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1139, file: !827, line: 14, baseType: !826, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1139, file: !827, line: 15, baseType: !1143, size: 64, offset: 64)
!1143 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1114, file: !250, line: 251, baseType: !1139, size: 128, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1114, file: !250, line: 252, baseType: !1139, size: 128, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1114, file: !250, line: 259, baseType: !649, size: 64, offset: 576)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1045, file: !250, line: 1988, baseType: !1148, size: 64, offset: 896)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!70, !1068, !1151, !1153, !313, !38}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1155, line: 22, size: 1280, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1154, file: !1155, line: 23, baseType: !313, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1154, file: !1155, line: 24, baseType: !1032, size: 16, offset: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1154, file: !1155, line: 25, baseType: !38, size: 32, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1154, file: !1155, line: 26, baseType: !834, size: 32, offset: 96)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1154, file: !1155, line: 27, baseType: !371, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1154, file: !1155, line: 28, baseType: !371, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1154, file: !1155, line: 41, baseType: !371, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1154, file: !1155, line: 42, baseType: !1103, size: 32, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1154, file: !1155, line: 43, baseType: !1103, size: 32, offset: 352)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1154, file: !1155, line: 44, baseType: !751, size: 32, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1154, file: !1155, line: 45, baseType: !769, size: 32, offset: 416)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1154, file: !1155, line: 46, baseType: !689, size: 64, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1154, file: !1155, line: 47, baseType: !1139, size: 128, offset: 512)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1154, file: !1155, line: 48, baseType: !1139, size: 128, offset: 640)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1154, file: !1155, line: 49, baseType: !1139, size: 128, offset: 768)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1154, file: !1155, line: 50, baseType: !1139, size: 128, offset: 896)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1154, file: !1155, line: 51, baseType: !371, size: 64, offset: 1024)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1154, file: !1155, line: 52, baseType: !371, size: 64, offset: 1088)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1154, file: !1155, line: 53, baseType: !313, size: 32, offset: 1152)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1154, file: !1155, line: 54, baseType: !313, size: 32, offset: 1184)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1154, file: !1155, line: 55, baseType: !371, size: 64, offset: 1216)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1045, file: !250, line: 1990, baseType: !1179, size: 64, offset: 960)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!1182, !993, !882, !1185}
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !150, line: 66, baseType: !1183)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !487, line: 73, baseType: !1184)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !487, line: 15, baseType: !1143)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !150, line: 61, baseType: !1186)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !487, line: 72, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !487, line: 16, baseType: !295)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1045, file: !250, line: 1991, baseType: !1189, size: 64, offset: 1024)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!70, !1028, !1192, !371, !371}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !250, line: 55, flags: DIFlagFwdDecl)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1045, file: !250, line: 1993, baseType: !1195, size: 64, offset: 1088)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!70, !1028, !70}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1045, file: !250, line: 1994, baseType: !1199, size: 64, offset: 1152)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!70, !1028, !993, !649, !38, !1032}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1045, file: !250, line: 1997, baseType: !1203, size: 64, offset: 1216)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!70, !1068, !1028, !649, !1032}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1045, file: !250, line: 1999, baseType: !1207, size: 64, offset: 1280)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!1039, !1068, !993, !70}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1045, file: !250, line: 2001, baseType: !1211, size: 64, offset: 1344)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!70, !1068, !993, !1039, !70}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1045, file: !250, line: 2003, baseType: !1215, size: 64, offset: 1408)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!70, !1068, !993, !1218}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !250, line: 76, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1045, file: !250, line: 2005, baseType: !1221, size: 64, offset: 1472)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!70, !993, !1218}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1045, file: !250, line: 2006, baseType: !1225, size: 64, offset: 1536)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!1228, !1028}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !250, line: 3192, size: 192, elements: !1230)
!1230 = !{!1231, !1238}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1229, file: !250, line: 3193, baseType: !1232, size: 128)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1233, line: 296, size: 128, elements: !1234)
!1233 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1234 = !{!1235, !1236, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1232, file: !1233, line: 297, baseType: !167, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1232, file: !1233, line: 299, baseType: !294, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1232, file: !1233, line: 300, baseType: !90, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1229, file: !250, line: 3194, baseType: !313, size: 32, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1029, file: !250, line: 655, baseType: !1240, size: 64, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !250, line: 1190, size: 10752, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !2279, !2411, !2451, !2534, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2551, !2555, !2556, !2559, !2562, !2565, !2568, !2569, !2570, !2611, !2637, !2638, !2639, !2640, !2641, !2642, !2645, !2649, !2658, !2659, !2660, !2661, !2720, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1241, file: !250, line: 1191, baseType: !204, size: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1241, file: !250, line: 1192, baseType: !1103, size: 32, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1241, file: !250, line: 1193, baseType: !28, size: 8, offset: 160)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1241, file: !250, line: 1194, baseType: !295, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1241, file: !250, line: 1195, baseType: !689, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1241, file: !250, line: 1196, baseType: !1249, size: 64, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !250, line: 2366, size: 576, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1261, !1265, !1269, !1273, !2267, !2268, !2269, !2271, !2272, !2273, !2275, !2276, !2277, !2278}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1250, file: !250, line: 2367, baseType: !872, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1250, file: !250, line: 2368, baseType: !70, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1250, file: !250, line: 2376, baseType: !1255, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!70, !1258}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1260, line: 32, flags: DIFlagFwdDecl)
!1260 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1250, file: !250, line: 2377, baseType: !1262, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1264)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !250, line: 75, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1250, file: !250, line: 2378, baseType: !1266, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!993, !1249, !70, !872, !90}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1250, file: !250, line: 2380, baseType: !1270, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !1240}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1250, file: !250, line: 2381, baseType: !1274, size: 64, offset: 384)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !230, line: 402, size: 9216, align: 512, elements: !1276)
!1276 = !{!1277, !1278, !1279, !1283, !1912, !1938, !1939, !1940, !1941, !1945, !1948, !1949, !1950, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2018, !2022, !2040, !2060, !2061, !2062, !2063, !2072, !2095, !2096, !2099, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2113, !2114, !2225, !2233, !2234, !2235, !2237, !2241, !2242, !2246, !2247, !2248, !2249, !2251, !2252, !2253, !2260, !2261, !2262, !2266}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1275, file: !230, line: 403, baseType: !229, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1275, file: !230, line: 406, baseType: !204, size: 128, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1275, file: !230, line: 409, baseType: !1280, size: 448, offset: 192)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 448, elements: !1281)
!1281 = !{!1282}
!1282 = !DISubrange(count: 56)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1275, file: !230, line: 417, baseType: !1284, size: 768, offset: 640)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !230, line: 45, size: 768, elements: !1285)
!1285 = !{!1286, !1895, !1896, !1897, !1900}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1284, file: !230, line: 46, baseType: !1287, size: 512)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1288, line: 64, size: 512, elements: !1289)
!1288 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1289 = !{!1290, !1291, !1292, !1294, !1338, !1766, !1885, !1890, !1891, !1892, !1893, !1894}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1287, file: !1288, line: 65, baseType: !872, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1287, file: !1288, line: 66, baseType: !204, size: 128, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1287, file: !1288, line: 67, baseType: !1293, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1287, file: !1288, line: 68, baseType: !1295, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1288, line: 168, size: 768, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1296, file: !1288, line: 169, baseType: !204, size: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1296, file: !1288, line: 170, baseType: !167, size: 32, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1296, file: !1288, line: 171, baseType: !1287, size: 512, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1296, file: !1288, line: 172, baseType: !1302, size: 64, offset: 704)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1288, line: 133, size: 192, elements: !1305)
!1305 = !{!1306, !1313, !1318}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1304, file: !1288, line: 134, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!70, !1311}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1304, file: !1288, line: 135, baseType: !1314, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!872, !1311}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1304, file: !1288, line: 136, baseType: !1319, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!70, !1311, !1323}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1288, line: 125, size: 20736, elements: !1325)
!1325 = !{!1326, !1328, !1332, !1333, !1337}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1324, file: !1288, line: 126, baseType: !1327, size: 192)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !882, size: 192, elements: !83)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1324, file: !1288, line: 127, baseType: !1329, size: 4096, offset: 192)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !882, size: 4096, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1324, file: !1288, line: 128, baseType: !70, size: 32, offset: 4288)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1324, file: !1288, line: 129, baseType: !1334, size: 16384, offset: 4320)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 16384, elements: !1335)
!1335 = !{!1336}
!1336 = !DISubrange(count: 2048)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1324, file: !1288, line: 130, baseType: !70, size: 32, offset: 20704)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1287, file: !1288, line: 69, baseType: !1339, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1288, line: 116, size: 384, elements: !1342)
!1342 = !{!1343, !1347, !1366, !1726, !1756, !1760}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1341, file: !1288, line: 117, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !1293}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1341, file: !1288, line: 118, baseType: !1348, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1350)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1351, line: 254, size: 128, elements: !1352)
!1351 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1352 = !{!1353, !1362}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1350, file: !1351, line: 255, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!1182, !1293, !1357, !882}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1351, line: 30, size: 128, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1358, file: !1351, line: 31, baseType: !872, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1358, file: !1351, line: 32, baseType: !1032, size: 16, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1350, file: !1351, line: 256, baseType: !1363, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!1182, !1293, !1357, !872, !1185}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1341, file: !1288, line: 119, baseType: !1367, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1370)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1351, line: 84, size: 320, elements: !1371)
!1371 = !{!1372, !1373, !1377, !1722, !1724}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1370, file: !1351, line: 85, baseType: !872, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1370, file: !1351, line: 86, baseType: !1374, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1032, !1293, !1357, !70}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1370, file: !1351, line: 88, baseType: !1378, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!1032, !1293, !1381, !70}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1351, line: 175, size: 512, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1656, !1660, !1661}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1382, file: !1351, line: 176, baseType: !1358, size: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1382, file: !1351, line: 177, baseType: !1185, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1382, file: !1351, line: 178, baseType: !90, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1382, file: !1351, line: 179, baseType: !1388, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!1391}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !250, line: 472, size: 1536, align: 64, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1648, !1649, !1650, !1653, !1654, !1655}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1392, file: !250, line: 473, baseType: !1028, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1392, file: !250, line: 474, baseType: !1232, size: 128, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1392, file: !250, line: 475, baseType: !810, size: 320, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1392, file: !250, line: 476, baseType: !294, size: 32, offset: 512)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1392, file: !250, line: 477, baseType: !149, size: 32, offset: 544)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1392, file: !250, line: 482, baseType: !503, size: 128, offset: 576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1392, file: !250, line: 483, baseType: !295, size: 64, offset: 704)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1392, file: !250, line: 484, baseType: !295, size: 64, offset: 768)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1392, file: !250, line: 485, baseType: !1403, size: 64, offset: 832)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1405)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !250, line: 404, size: 1280, elements: !1406)
!1406 = !{!1407, !1473, !1543, !1547, !1551, !1557, !1563, !1567, !1572, !1576, !1580, !1584, !1612, !1616, !1620, !1624, !1629, !1633, !1640, !1644}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1405, file: !250, line: 405, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!70, !1411, !1471}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !622, line: 74, size: 512, align: 128, elements: !1413)
!1413 = !{!1414, !1415, !1465, !1470}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1412, file: !622, line: 75, baseType: !295, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !622, line: 83, baseType: !1416, size: 320, offset: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !622, line: 83, size: 320, elements: !1417)
!1417 = !{!1418, !1439, !1453, !1457, !1464}
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !622, line: 84, baseType: !1419, size: 320)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1416, file: !622, line: 84, size: 320, elements: !1420)
!1420 = !{!1421, !1432, !1433, !1438}
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !622, line: 90, baseType: !1422, size: 128)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1419, file: !622, line: 90, size: 128, elements: !1423)
!1423 = !{!1424, !1425, !1430, !1431}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1422, file: !622, line: 91, baseType: !204, size: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !622, line: 94, baseType: !1426, size: 128)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1422, file: !622, line: 94, size: 128, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1426, file: !622, line: 96, baseType: !90, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1426, file: !622, line: 98, baseType: !38, size: 32, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1422, file: !622, line: 102, baseType: !204, size: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1422, file: !622, line: 103, baseType: !204, size: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1419, file: !622, line: 106, baseType: !1391, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !622, line: 107, baseType: !1434, size: 64, offset: 192)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1419, file: !622, line: 107, size: 64, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1434, file: !622, line: 108, baseType: !295, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1434, file: !622, line: 109, baseType: !295, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1419, file: !622, line: 117, baseType: !295, size: 64, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !622, line: 119, baseType: !1440, size: 320)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1416, file: !622, line: 119, size: 320, elements: !1441)
!1441 = !{!1442, !1443, !1446, !1447, !1448}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1440, file: !622, line: 124, baseType: !295, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1440, file: !622, line: 125, baseType: !1444, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !622, line: 125, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1440, file: !622, line: 126, baseType: !295, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1440, file: !622, line: 127, baseType: !295, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !622, line: 128, baseType: !1449, size: 64, offset: 256)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !622, line: 128, size: 64, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1449, file: !622, line: 133, baseType: !295, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1449, file: !622, line: 138, baseType: !670, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !622, line: 141, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1416, file: !622, line: 141, size: 64, elements: !1455)
!1455 = !{!1456}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1454, file: !622, line: 142, baseType: !295, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !622, line: 144, baseType: !1458, size: 128)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1416, file: !622, line: 144, size: 128, elements: !1459)
!1459 = !{!1460, !1463}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1458, file: !622, line: 146, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !622, line: 146, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1458, file: !622, line: 147, baseType: !90, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1416, file: !622, line: 161, baseType: !657, size: 128, align: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !622, line: 164, baseType: !1466, size: 32, offset: 384)
!1466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !622, line: 164, size: 32, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1466, file: !622, line: 169, baseType: !149, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1466, file: !622, line: 177, baseType: !38, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1412, file: !622, line: 181, baseType: !149, size: 32, offset: 416)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !250, line: 309, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1405, file: !250, line: 406, baseType: !1474, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!70, !649, !1477}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !622, line: 293, size: 1536, elements: !1479)
!1479 = !{!1480, !1510, !1524}
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !622, line: 295, baseType: !1481, size: 512)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1478, file: !622, line: 295, size: 512, elements: !1482)
!1482 = !{!1483, !1509}
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !622, line: 296, baseType: !1484, size: 448)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1481, file: !622, line: 296, size: 448, elements: !1485)
!1485 = !{!1486, !1487, !1496, !1497, !1498, !1507, !1508}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1484, file: !622, line: 298, baseType: !295, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !622, line: 299, baseType: !1488, size: 128, offset: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1484, file: !622, line: 299, size: 128, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1488, file: !622, line: 300, baseType: !204, size: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !622, line: 302, baseType: !1492, size: 128)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1488, file: !622, line: 302, size: 128, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1492, file: !622, line: 303, baseType: !90, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1492, file: !622, line: 305, baseType: !38, size: 32, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1484, file: !622, line: 310, baseType: !1391, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1484, file: !622, line: 311, baseType: !295, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !622, line: 312, baseType: !1499, size: 64, offset: 320)
!1499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1484, file: !622, line: 312, size: 64, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1499, file: !622, line: 313, baseType: !90, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1499, file: !622, line: 314, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !622, line: 257, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !622, line: 255, size: 64, elements: !1505)
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1504, file: !622, line: 256, baseType: !295, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1484, file: !622, line: 316, baseType: !149, size: 32, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1484, file: !622, line: 317, baseType: !149, size: 32, offset: 416)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1481, file: !622, line: 323, baseType: !1412, size: 512, align: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !622, line: 325, baseType: !1511, size: 512, offset: 512)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1478, file: !622, line: 325, size: 512, elements: !1512)
!1512 = !{!1513, !1523}
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !622, line: 326, baseType: !1514, size: 320)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1511, file: !622, line: 326, size: 320, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1514, file: !622, line: 327, baseType: !295, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1514, file: !622, line: 328, baseType: !295, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1514, file: !622, line: 329, baseType: !295, size: 64, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1514, file: !622, line: 331, baseType: !149, size: 32, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1514, file: !622, line: 332, baseType: !149, size: 32, offset: 224)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1514, file: !622, line: 333, baseType: !149, size: 32, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1514, file: !622, line: 335, baseType: !38, size: 32, offset: 288)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1511, file: !622, line: 339, baseType: !1412, size: 512, align: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !622, line: 341, baseType: !1525, size: 512, offset: 1024)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1478, file: !622, line: 341, size: 512, elements: !1526)
!1526 = !{!1527, !1536, !1542}
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !622, line: 342, baseType: !1528, size: 384)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1525, file: !622, line: 342, size: 384, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533, !1534, !1535}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1528, file: !622, line: 343, baseType: !295, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1528, file: !622, line: 344, baseType: !295, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1528, file: !622, line: 346, baseType: !90, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1528, file: !622, line: 347, baseType: !90, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1528, file: !622, line: 348, baseType: !90, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1528, file: !622, line: 349, baseType: !90, size: 64, offset: 320)
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !622, line: 352, baseType: !1537, size: 256)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1525, file: !622, line: 352, size: 256, elements: !1538)
!1538 = !{!1539, !1540, !1541}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1537, file: !622, line: 353, baseType: !295, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1537, file: !622, line: 354, baseType: !295, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1537, file: !622, line: 356, baseType: !204, size: 128, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1525, file: !622, line: 359, baseType: !1412, size: 512, align: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1405, file: !250, line: 409, baseType: !1544, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!70, !1391, !1471}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1405, file: !250, line: 412, baseType: !1548, size: 64, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!869, !1391, !1477}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1405, file: !250, line: 414, baseType: !1552, size: 64, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !250, line: 310, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1405, file: !250, line: 416, baseType: !1558, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!70, !649, !1391, !689, !38, !1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1405, file: !250, line: 419, baseType: !1564, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!70, !649, !1391, !689, !38, !38, !1411, !90}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1405, file: !250, line: 424, baseType: !1568, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!1571, !1391, !1571}
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !150, line: 131, baseType: !371)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1405, file: !250, line: 425, baseType: !1573, size: 64, offset: 512)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !1477, !1185, !1185}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1405, file: !250, line: 426, baseType: !1577, size: 64, offset: 576)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!869, !1477, !294}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1405, file: !250, line: 427, baseType: !1581, size: 64, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !1477}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1405, file: !250, line: 428, baseType: !1585, size: 64, offset: 704)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1182, !1588, !1610}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !250, line: 373, size: 384, elements: !1590)
!1590 = !{!1591, !1592, !1593, !1597, !1598, !1599, !1600}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1589, file: !250, line: 374, baseType: !649, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1589, file: !250, line: 375, baseType: !689, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1589, file: !250, line: 376, baseType: !1594, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !1588, !1143}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1589, file: !250, line: 377, baseType: !90, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1589, file: !250, line: 378, baseType: !70, size: 32, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1589, file: !250, line: 379, baseType: !200, size: 16, offset: 288)
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !250, line: 380, baseType: !1601, size: 64, offset: 320)
!1601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1589, file: !250, line: 380, size: 64, elements: !1602)
!1602 = !{!1603, !1606}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1601, file: !250, line: 386, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !250, line: 386, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1601, file: !250, line: 395, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!1182, !90}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !250, line: 69, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1405, file: !250, line: 433, baseType: !1613, size: 64, offset: 768)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!70, !1391, !1477, !1477, !236}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1405, file: !250, line: 435, baseType: !1617, size: 64, offset: 832)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!70, !1477}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1405, file: !250, line: 436, baseType: !1621, size: 64, offset: 896)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!869, !1477, !1185, !1185}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1405, file: !250, line: 438, baseType: !1625, size: 64, offset: 960)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !1477, !1628, !1628}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1405, file: !250, line: 439, baseType: !1630, size: 64, offset: 1024)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!70, !1391, !1411}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1405, file: !250, line: 442, baseType: !1634, size: 64, offset: 1088)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!70, !1637, !649, !1639}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !250, line: 66, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1405, file: !250, line: 444, baseType: !1641, size: 64, offset: 1152)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !649}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1405, file: !250, line: 445, baseType: !1645, size: 64, offset: 1216)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!70, !1588, !1610}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1392, file: !250, line: 486, baseType: !295, size: 64, offset: 896)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1392, file: !250, line: 487, baseType: !810, size: 320, offset: 960)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1392, file: !250, line: 488, baseType: !1651, size: 32, offset: 1280)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1652, line: 8, baseType: !313)
!1652 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1392, file: !250, line: 489, baseType: !167, size: 32, offset: 1312)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1392, file: !250, line: 490, baseType: !204, size: 128, offset: 1344)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1392, file: !250, line: 491, baseType: !90, size: 64, offset: 1472)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1382, file: !1351, line: 180, baseType: !1657, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!1182, !649, !1293, !1381, !882, !689, !1185}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1382, file: !1351, line: 182, baseType: !1657, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1382, file: !1351, line: 184, baseType: !1662, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!70, !649, !1293, !1381, !1665}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !622, line: 625, size: 1344, elements: !1667)
!1667 = !{!1668, !1677, !1678, !1686, !1693, !1694, !1699, !1700, !1705, !1706, !1709, !1713, !1714, !1715, !1716, !1717, !1720}
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !622, line: 628, baseType: !1669, size: 128)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1666, file: !622, line: 628, size: 128, elements: !1670)
!1670 = !{!1671, !1676}
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !622, line: 629, baseType: !1672, size: 128)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1669, file: !622, line: 629, size: 128, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1672, file: !622, line: 631, baseType: !295, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1672, file: !622, line: 632, baseType: !295, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1669, file: !622, line: 635, baseType: !657, size: 128, align: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1666, file: !622, line: 639, baseType: !620, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1666, file: !622, line: 640, baseType: !1679, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1680, line: 297, baseType: !1681)
!1680 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1680, line: 297, size: 64, elements: !1682)
!1682 = !{!1683}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1681, file: !1680, line: 297, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1685, line: 19, baseType: !295)
!1685 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !622, line: 646, baseType: !1687, size: 64, offset: 256)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1666, file: !622, line: 646, size: 64, elements: !1688)
!1688 = !{!1689, !1692}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1687, file: !622, line: 647, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !622, line: 542, baseType: !295)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1687, file: !622, line: 648, baseType: !1691, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1666, file: !622, line: 666, baseType: !70, size: 32, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1666, file: !622, line: 667, baseType: !1695, size: 64, offset: 384)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !622, line: 579, size: 320, elements: !1697)
!1697 = !{!1698}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1696, file: !622, line: 580, baseType: !810, size: 320)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1666, file: !622, line: 670, baseType: !869, size: 8, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1666, file: !622, line: 681, baseType: !1701, size: 256, offset: 512)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1666, file: !622, line: 678, size: 256, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1701, file: !622, line: 679, baseType: !363, size: 192, align: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1701, file: !622, line: 680, baseType: !295, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1666, file: !622, line: 689, baseType: !204, size: 128, offset: 768)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1666, file: !622, line: 691, baseType: !1707, size: 64, offset: 896)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !622, line: 691, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1666, file: !622, line: 694, baseType: !1710, size: 64, offset: 960)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1712)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !622, line: 694, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1666, file: !622, line: 697, baseType: !295, size: 64, offset: 1024)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1666, file: !622, line: 699, baseType: !649, size: 64, offset: 1088)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1666, file: !622, line: 700, baseType: !90, size: 64, offset: 1152)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1666, file: !622, line: 711, baseType: !670, size: 64, offset: 1216)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1666, file: !622, line: 717, baseType: !1718, size: 64, offset: 1280)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !304, line: 54, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1666, file: !622, line: 722, baseType: !1721, offset: 1344)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !622, line: 570, elements: !642)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1370, file: !1351, line: 90, baseType: !1723, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1370, file: !1351, line: 91, baseType: !1725, size: 64, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1341, file: !1288, line: 120, baseType: !1727, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!1730, !1311}
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1732)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !244, line: 39, size: 384, elements: !1733)
!1733 = !{!1734, !1735, !1739, !1743, !1751, !1755}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1732, file: !244, line: 40, baseType: !243, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1732, file: !244, line: 41, baseType: !1736, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!869}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1732, file: !244, line: 42, baseType: !1740, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!90}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1732, file: !244, line: 43, baseType: !1744, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1747, !1749}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !244, line: 19, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1732, file: !244, line: 44, baseType: !1752, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!1747}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1732, file: !244, line: 45, baseType: !1060, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1341, file: !1288, line: 121, baseType: !1757, size: 64, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1747, !1311}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1341, file: !1288, line: 122, baseType: !1761, size: 64, offset: 320)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1311, !1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1287, file: !1288, line: 70, baseType: !1767, size: 64, offset: 384)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1260, line: 190, size: 1152, elements: !1769)
!1769 = !{!1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1877, !1878, !1879, !1880, !1881, !1884}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1768, file: !1260, line: 191, baseType: !149, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1768, file: !1260, line: 192, baseType: !149, size: 32, offset: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1768, file: !1260, line: 202, baseType: !1767, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1768, file: !1260, line: 203, baseType: !872, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1768, file: !1260, line: 205, baseType: !363, size: 192, align: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1768, file: !1260, line: 207, baseType: !1747, size: 64, offset: 384)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1768, file: !1260, line: 208, baseType: !38, size: 32, offset: 448)
!1777 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !1260, line: 209, baseType: !1778, size: 256, offset: 512)
!1778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1768, file: !1260, line: 209, size: 256, elements: !1779)
!1779 = !{!1780, !1789, !1793}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1778, file: !1260, line: 210, baseType: !1781, size: 256)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1260, line: 153, size: 256, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1788}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1781, file: !1260, line: 154, baseType: !295, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1781, file: !1260, line: 156, baseType: !506, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1781, file: !1260, line: 162, baseType: !1786, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1260, line: 162, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1781, file: !1260, line: 167, baseType: !295, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1778, file: !1260, line: 211, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1260, line: 170, size: 64, elements: !1791)
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1790, file: !1260, line: 171, baseType: !1767, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1778, file: !1260, line: 212, baseType: !1794, size: 256)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1260, line: 174, size: 256, elements: !1795)
!1795 = !{!1796, !1872, !1875, !1876}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1794, file: !1260, line: 175, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1799)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1260, line: 271, size: 768, elements: !1800)
!1800 = !{!1801, !1823, !1827, !1831, !1836, !1840, !1844, !1848, !1849, !1850, !1851, !1868}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1799, file: !1260, line: 276, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!70, !1805}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1260, line: 251, size: 1216, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1806, file: !1260, line: 253, baseType: !1767, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1806, file: !1260, line: 254, baseType: !649, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1806, file: !1260, line: 255, baseType: !1811, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !304, line: 66, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1806, file: !1260, line: 256, baseType: !90, size: 64, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1806, file: !1260, line: 259, baseType: !677, size: 256, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1806, file: !1260, line: 260, baseType: !677, size: 256, offset: 512)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1806, file: !1260, line: 261, baseType: !70, size: 32, offset: 768)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1806, file: !1260, line: 262, baseType: !204, size: 128, offset: 832)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1806, file: !1260, line: 263, baseType: !882, size: 64, offset: 960)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1806, file: !1260, line: 265, baseType: !1185, size: 64, offset: 1024)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1806, file: !1260, line: 266, baseType: !869, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1806, file: !1260, line: 267, baseType: !869, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1806, file: !1260, line: 268, baseType: !1710, size: 64, offset: 1152)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1799, file: !1260, line: 277, baseType: !1824, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !1805}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1799, file: !1260, line: 290, baseType: !1828, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!70, !1811, !90}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1799, file: !1260, line: 292, baseType: !1832, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!90, !1811, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1799, file: !1260, line: 293, baseType: !1837, size: 64, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!90, !1811, !90, !1835}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1799, file: !1260, line: 294, baseType: !1841, size: 64, offset: 320)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !1811, !90}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1799, file: !1260, line: 296, baseType: !1845, size: 64, offset: 384)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!1182, !1805, !882, !1185, !689}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1799, file: !1260, line: 306, baseType: !1185, size: 64, offset: 448)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1799, file: !1260, line: 313, baseType: !869, size: 8, offset: 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1799, file: !1260, line: 314, baseType: !1845, size: 64, offset: 576)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1799, file: !1260, line: 317, baseType: !1852, size: 64, offset: 640)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!1855, !1805, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1856, line: 59, baseType: !38)
!1856 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1859, line: 37, size: 128, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1860 = !{!1861, !1867}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1858, file: !1859, line: 38, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1859, line: 31, baseType: !1863)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !649, !1866, !1857}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1858, file: !1859, line: 39, baseType: !1855, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1799, file: !1260, line: 320, baseType: !1869, size: 64, offset: 704)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!70, !1805, !1665}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1794, file: !1260, line: 176, baseType: !1873, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1260, line: 35, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1794, file: !1260, line: 177, baseType: !689, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1794, file: !1260, line: 178, baseType: !1767, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1768, file: !1260, line: 215, baseType: !90, size: 64, offset: 768)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1768, file: !1260, line: 221, baseType: !371, size: 64, offset: 832)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1768, file: !1260, line: 223, baseType: !133, size: 16, offset: 896)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1768, file: !1260, line: 224, baseType: !1032, size: 16, offset: 912)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1768, file: !1260, line: 225, baseType: !1882, size: 64, offset: 960)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1260, line: 36, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1768, file: !1260, line: 227, baseType: !657, size: 128, align: 64, offset: 1024)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1287, file: !1288, line: 71, baseType: !1886, size: 32, offset: 448)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1887, line: 19, size: 32, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1888 = !{!1889}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1886, file: !1887, line: 20, baseType: !319, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1287, file: !1288, line: 73, baseType: !38, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1287, file: !1288, line: 74, baseType: !38, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1287, file: !1288, line: 75, baseType: !38, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1287, file: !1288, line: 76, baseType: !38, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1287, file: !1288, line: 77, baseType: !38, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1284, file: !230, line: 47, baseType: !1274, size: 64, offset: 512)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1284, file: !230, line: 48, baseType: !1293, size: 64, offset: 576)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1284, file: !230, line: 49, baseType: !1898, size: 64, offset: 640)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !230, line: 49, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1284, file: !230, line: 50, baseType: !1901, size: 64, offset: 704)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1903, line: 26, size: 256, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1902, file: !1903, line: 27, baseType: !38, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1902, file: !1903, line: 28, baseType: !1907, size: 192, offset: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1908, line: 43, size: 192, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1907, file: !1908, line: 44, baseType: !464, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1907, file: !1908, line: 45, baseType: !204, size: 128, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1275, file: !230, line: 418, baseType: !1913, size: 64, offset: 1408)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !230, line: 53, size: 448, elements: !1915)
!1915 = !{!1916, !1917, !1922, !1926, !1930, !1934}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1914, file: !230, line: 54, baseType: !1358, size: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1914, file: !230, line: 55, baseType: !1918, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!1182, !1913, !1921, !882}
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1914, file: !230, line: 57, baseType: !1923, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!1182, !1913, !1921, !872, !1185}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1914, file: !230, line: 59, baseType: !1927, size: 64, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !1274, !872}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1914, file: !230, line: 60, baseType: !1931, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!70, !1274}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1914, file: !230, line: 61, baseType: !1935, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !1274}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1275, file: !230, line: 419, baseType: !872, size: 64, offset: 1472)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1275, file: !230, line: 420, baseType: !872, size: 64, offset: 1536)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1275, file: !230, line: 421, baseType: !1293, size: 64, offset: 1600)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1275, file: !230, line: 424, baseType: !1942, size: 64, offset: 1664)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1944)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !230, line: 424, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1275, file: !230, line: 425, baseType: !1946, size: 64, offset: 1728)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1275, file: !230, line: 426, baseType: !38, size: 32, offset: 1792)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1275, file: !230, line: 435, baseType: !677, size: 256, offset: 1856)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1275, file: !230, line: 437, baseType: !1951, size: 64, offset: 2112)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1953, line: 69, size: 320, elements: !1954)
!1953 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1954 = !{!1955, !1956, !1957, !1974, !1976, !1980, !1981}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1952, file: !1953, line: 70, baseType: !872, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1952, file: !1953, line: 71, baseType: !1274, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1952, file: !1953, line: 72, baseType: !1958, size: 64, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1960)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1953, line: 47, size: 256, elements: !1961)
!1961 = !{!1962, !1963, !1969, !1973}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1960, file: !1953, line: 49, baseType: !38, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1960, file: !1953, line: 51, baseType: !1964, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!70, !872, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1952)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1960, file: !1953, line: 53, baseType: !1970, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!70, !882, !1967}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1960, file: !1953, line: 55, baseType: !1060, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1952, file: !1953, line: 73, baseType: !1975, size: 16, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1952, file: !1953, line: 74, baseType: !1977, size: 8, offset: 208)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !192, line: 16, baseType: !1978)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !194, line: 20, baseType: !1979)
!1979 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1952, file: !1953, line: 75, baseType: !191, size: 8, offset: 216)
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !1953, line: 76, baseType: !1982, size: 64, offset: 256)
!1982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1952, file: !1953, line: 76, size: 64, elements: !1983)
!1983 = !{!1984, !1985, !1992}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1982, file: !1953, line: 77, baseType: !90, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1982, file: !1953, line: 78, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1988)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1953, line: 86, size: 128, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1988, file: !1953, line: 87, baseType: !38, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1988, file: !1953, line: 88, baseType: !882, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1982, file: !1953, line: 79, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1995)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1953, line: 92, size: 256, elements: !1996)
!1996 = !{!1997, !1998, !1999, !2001, !2002}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1995, file: !1953, line: 94, baseType: !38, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1995, file: !1953, line: 95, baseType: !38, size: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1995, file: !1953, line: 96, baseType: !2000, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1995, file: !1953, line: 97, baseType: !1958, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1995, file: !1953, line: 98, baseType: !90, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1275, file: !230, line: 438, baseType: !38, size: 32, offset: 2176)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1275, file: !230, line: 441, baseType: !38, size: 32, offset: 2208)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1275, file: !230, line: 442, baseType: !1942, size: 64, offset: 2240)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1275, file: !230, line: 443, baseType: !1946, size: 64, offset: 2304)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1275, file: !230, line: 444, baseType: !869, size: 8, offset: 2368)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1275, file: !230, line: 451, baseType: !869, size: 8, offset: 2376)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1275, file: !230, line: 454, baseType: !38, size: 32, offset: 2400)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1275, file: !230, line: 455, baseType: !2011, size: 64, offset: 2432)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2013, line: 23, size: 96, elements: !2014)
!2013 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2014 = !{!2015, !2016, !2017}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2012, file: !2013, line: 24, baseType: !70, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2012, file: !2013, line: 24, baseType: !70, size: 32, offset: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2012, file: !2013, line: 24, baseType: !70, size: 32, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1275, file: !230, line: 458, baseType: !2019, size: 64, offset: 2496)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!70}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1275, file: !230, line: 460, baseType: !2023, size: 4032, align: 512, offset: 2560)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2024, size: 4032, elements: !2038)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !230, line: 362, size: 576, elements: !2025)
!2025 = !{!2026, !2027, !2028}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2024, file: !230, line: 363, baseType: !90, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2024, file: !230, line: 364, baseType: !38, size: 32, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2024, file: !230, line: 367, baseType: !2029, size: 448, offset: 128)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !230, line: 319, size: 448, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2029, file: !230, line: 320, baseType: !1274, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2029, file: !230, line: 321, baseType: !2033, size: 384, offset: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2034, line: 40, size: 384, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2035 = !{!2036}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2033, file: !2034, line: 41, baseType: !2037, size: 384, align: 64)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 384, align: 64, elements: !110)
!2038 = !{!2039}
!2039 = !DISubrange(count: 7)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1275, file: !230, line: 463, baseType: !2041, size: 192, offset: 6592)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2042, line: 8, size: 192, elements: !2043)
!2042 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2043 = !{!2044, !2045, !2047}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2041, file: !2042, line: 10, baseType: !38, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2041, file: !2042, line: 11, baseType: !2046, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2041, file: !2042, line: 12, baseType: !2048, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2050, line: 59, size: 48, elements: !2051)
!2050 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2051 = !{!2052, !2055, !2056, !2057, !2058, !2059}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2049, file: !2050, line: 60, baseType: !2053, size: 16)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !192, line: 18, baseType: !2054)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !194, line: 23, baseType: !838)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2049, file: !2050, line: 61, baseType: !2053, size: 16, offset: 16)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2049, file: !2050, line: 63, baseType: !38, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2049, file: !2050, line: 64, baseType: !38, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2049, file: !2050, line: 65, baseType: !38, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2049, file: !2050, line: 66, baseType: !38, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1275, file: !230, line: 465, baseType: !295, size: 64, offset: 6784)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1275, file: !230, line: 469, baseType: !38, size: 32, offset: 6848)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1275, file: !230, line: 470, baseType: !204, size: 128, offset: 6912)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1275, file: !230, line: 471, baseType: !2064, size: 64, offset: 7040)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2066, line: 33, size: 96, elements: !2067)
!2066 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2067 = !{!2068, !2069, !2070, !2071}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2065, file: !2066, line: 37, baseType: !70, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2065, file: !2066, line: 43, baseType: !70, size: 32, offset: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2065, file: !2066, line: 45, baseType: !133, size: 16, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2065, file: !2066, line: 47, baseType: !133, size: 16, offset: 80)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1275, file: !230, line: 476, baseType: !2073, size: 64, offset: 7104)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !230, line: 378, size: 256, elements: !2075)
!2075 = !{!2076, !2092, !2093, !2094}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2074, file: !230, line: 379, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2079, line: 204, baseType: !2080)
!2079 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2079, line: 197, size: 192, elements: !2081)
!2081 = !{!2082, !2084, !2085, !2086, !2088, !2090}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2080, file: !2079, line: 198, baseType: !2083, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2079, line: 21, baseType: !314)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2080, file: !2079, line: 199, baseType: !28, size: 8, offset: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2080, file: !2079, line: 200, baseType: !28, size: 8, offset: 40)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2080, file: !2079, line: 201, baseType: !2087, size: 16, offset: 48)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2079, line: 17, baseType: !201)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2080, file: !2079, line: 202, baseType: !2089, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2079, line: 16, baseType: !372)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2080, file: !2079, line: 203, baseType: !2091, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2079, line: 22, baseType: !372)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2074, file: !230, line: 380, baseType: !38, size: 32, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2074, file: !230, line: 381, baseType: !882, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2074, file: !230, line: 382, baseType: !882, size: 64, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1275, file: !230, line: 477, baseType: !2074, size: 256, offset: 7168)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1275, file: !230, line: 480, baseType: !2097, size: 64, offset: 7424)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !230, line: 480, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1275, file: !230, line: 483, baseType: !2100, size: 64, offset: 7488)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !230, line: 483, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1275, file: !230, line: 488, baseType: !882, size: 64, offset: 7552)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1275, file: !230, line: 492, baseType: !90, size: 64, offset: 7616)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1275, file: !230, line: 493, baseType: !38, size: 32, offset: 7680)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1275, file: !230, line: 495, baseType: !90, size: 64, offset: 7744)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1275, file: !230, line: 496, baseType: !38, size: 32, offset: 7808)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1275, file: !230, line: 499, baseType: !38, size: 32, offset: 7840)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1275, file: !230, line: 500, baseType: !2109, size: 64, offset: 7872)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2111, line: 45, baseType: !2112)
!2111 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1275, file: !230, line: 503, baseType: !38, size: 32, offset: 7936)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1275, file: !230, line: 504, baseType: !2115, size: 64, offset: 8000)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2118, line: 96, size: 192, elements: !2119)
!2118 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2119 = !{!2120, !2121, !2186, !2189}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2117, file: !2118, line: 97, baseType: !38, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2117, file: !2118, line: 98, baseType: !2122, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2118, line: 24, size: 3072, elements: !2124)
!2124 = !{!2125, !2127, !2128, !2129, !2130, !2144, !2145, !2146, !2147, !2159, !2171, !2172, !2183, !2184, !2185}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2123, file: !2118, line: 26, baseType: !2126, size: 128)
!2126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 128, elements: !110)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2123, file: !2118, line: 27, baseType: !2126, size: 128, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2123, file: !2118, line: 28, baseType: !70, size: 32, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2123, file: !2118, line: 31, baseType: !167, size: 32, align: 512, offset: 512)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2123, file: !2118, line: 32, baseType: !2131, size: 960, offset: 576)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2132, line: 206, size: 960, elements: !2133)
!2132 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2133 = !{!2134, !2135, !2138, !2140, !2141, !2143}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2131, file: !2132, line: 207, baseType: !660, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2131, file: !2132, line: 208, baseType: !2136, size: 256, offset: 64)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2137, size: 256, elements: !734)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2131, file: !2132, line: 209, baseType: !2139, size: 256, offset: 320)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 256, elements: !734)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2131, file: !2132, line: 213, baseType: !1143, size: 64, offset: 576)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2131, file: !2132, line: 215, baseType: !2142, size: 256, offset: 640)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1143, size: 256, elements: !734)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2131, file: !2132, line: 216, baseType: !191, size: 8, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2123, file: !2118, line: 33, baseType: !295, size: 64, offset: 1536)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2123, file: !2118, line: 34, baseType: !295, size: 64, offset: 1600)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2123, file: !2118, line: 35, baseType: !869, size: 8, offset: 1664)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2123, file: !2118, line: 36, baseType: !2148, size: 320, offset: 1728)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2149, line: 11, size: 320, elements: !2150)
!2149 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2150 = !{!2151, !2152, !2153, !2158}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2148, file: !2149, line: 16, baseType: !729, size: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2148, file: !2149, line: 17, baseType: !295, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2148, file: !2149, line: 18, baseType: !2154, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{null, !2157}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2148, file: !2149, line: 19, baseType: !313, size: 32, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2123, file: !2118, line: 37, baseType: !2160, size: 256, offset: 2048)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2161, line: 98, size: 256, elements: !2162)
!2161 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2162 = !{!2163, !2164, !2165}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2160, file: !2161, line: 99, baseType: !670, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2160, file: !2161, line: 100, baseType: !204, size: 128, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2160, file: !2161, line: 101, baseType: !2166, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2161, line: 21, baseType: !2167)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{null, !2170}
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2123, file: !2118, line: 38, baseType: !657, size: 128, align: 64, offset: 2304)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2123, file: !2118, line: 39, baseType: !2173, size: 64, offset: 2432)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2118, line: 49, size: 768, elements: !2175)
!2175 = !{!2176, !2177, !2178, !2179, !2180, !2181, !2182}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2174, file: !2118, line: 50, baseType: !167, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2174, file: !2118, line: 51, baseType: !2139, size: 256, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2174, file: !2118, line: 53, baseType: !2139, size: 256, offset: 320)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2174, file: !2118, line: 54, baseType: !295, size: 64, offset: 576)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2174, file: !2118, line: 55, baseType: !2173, size: 64, offset: 640)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2174, file: !2118, line: 56, baseType: !70, size: 32, offset: 704)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2174, file: !2118, line: 57, baseType: !70, size: 32, offset: 736)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2123, file: !2118, line: 40, baseType: !295, size: 64, offset: 2496)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2123, file: !2118, line: 42, baseType: !70, size: 32, offset: 2560)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2123, file: !2118, line: 43, baseType: !2116, size: 64, offset: 2624)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2117, file: !2118, line: 99, baseType: !2187, offset: 128)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2188, line: 211, elements: !642)
!2188 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2117, file: !2118, line: 100, baseType: !2190, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2118, line: 63, size: 3008, elements: !2192)
!2192 = !{!2193, !2194, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2224}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2191, file: !2118, line: 64, baseType: !2173, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2191, file: !2118, line: 65, baseType: !2195, size: 192, offset: 64)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2173, size: 192, elements: !83)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2191, file: !2118, line: 67, baseType: !70, size: 32, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2191, file: !2118, line: 68, baseType: !677, size: 256, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2191, file: !2118, line: 69, baseType: !167, size: 32, offset: 576)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2191, file: !2118, line: 70, baseType: !677, size: 256, offset: 640)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2191, file: !2118, line: 71, baseType: !295, size: 64, offset: 896)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2191, file: !2118, line: 72, baseType: !295, size: 64, offset: 960)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2191, file: !2118, line: 73, baseType: !295, size: 64, offset: 1024)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2191, file: !2118, line: 74, baseType: !295, size: 64, offset: 1088)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2191, file: !2118, line: 75, baseType: !295, size: 64, offset: 1152)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2191, file: !2118, line: 76, baseType: !295, size: 64, offset: 1216)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2191, file: !2118, line: 77, baseType: !295, size: 64, offset: 1280)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2191, file: !2118, line: 78, baseType: !295, size: 64, offset: 1344)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2191, file: !2118, line: 79, baseType: !869, size: 8, offset: 1408)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2191, file: !2118, line: 80, baseType: !295, size: 64, offset: 1472)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2191, file: !2118, line: 81, baseType: !677, size: 256, offset: 1536)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2191, file: !2118, line: 82, baseType: !1902, size: 256, offset: 1792)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2191, file: !2118, line: 84, baseType: !149, size: 32, offset: 2048)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2191, file: !2118, line: 87, baseType: !295, size: 64, offset: 2112)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2191, file: !2118, line: 88, baseType: !295, size: 64, offset: 2176)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2191, file: !2118, line: 89, baseType: !2216, size: 704, offset: 2240)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2161, line: 111, size: 704, elements: !2217)
!2217 = !{!2218, !2219, !2220, !2223}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2216, file: !2161, line: 112, baseType: !2160, size: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2216, file: !2161, line: 113, baseType: !2148, size: 320, offset: 256)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2216, file: !2161, line: 116, baseType: !2221, size: 64, offset: 576)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2161, line: 18, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2216, file: !2161, line: 117, baseType: !70, size: 32, offset: 640)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2191, file: !2118, line: 90, baseType: !2116, size: 64, offset: 2944)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1275, file: !230, line: 515, baseType: !2226, size: 64, offset: 8064)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2228, line: 117, size: 128, elements: !2229)
!2228 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2229 = !{!2230, !2231, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2227, file: !2228, line: 118, baseType: !802, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2227, file: !2228, line: 119, baseType: !802, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2227, file: !2228, line: 120, baseType: !1143, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1275, file: !230, line: 516, baseType: !38, size: 32, offset: 8128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1275, file: !230, line: 519, baseType: !38, size: 32, offset: 8160)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1275, file: !230, line: 520, baseType: !2236, size: 64, offset: 8192)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1275, file: !230, line: 523, baseType: !2238, size: 64, offset: 8256)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !230, line: 523, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1275, file: !230, line: 524, baseType: !38, size: 32, offset: 8320)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1275, file: !230, line: 525, baseType: !2243, size: 64, offset: 8384)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !230, line: 525, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1275, file: !230, line: 526, baseType: !38, size: 32, offset: 8448)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1275, file: !230, line: 533, baseType: !90, size: 64, offset: 8512)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1275, file: !230, line: 534, baseType: !38, size: 32, offset: 8576)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1275, file: !230, line: 535, baseType: !2250, size: 64, offset: 8640)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1275, file: !230, line: 536, baseType: !38, size: 32, offset: 8704)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1275, file: !230, line: 539, baseType: !70, size: 32, offset: 8736)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1275, file: !230, line: 540, baseType: !2254, size: 64, offset: 8768)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2256, line: 32, size: 64, elements: !2257)
!2256 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2257 = !{!2258, !2259}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2255, file: !2256, line: 33, baseType: !802, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2255, file: !2256, line: 34, baseType: !802, size: 32, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1275, file: !230, line: 563, baseType: !204, size: 128, offset: 8832)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1275, file: !230, line: 565, baseType: !204, size: 128, offset: 8960)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1275, file: !230, line: 568, baseType: !2263, size: 64, offset: 9088)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1275, file: !230, line: 570, baseType: !149, size: 32, offset: 9152)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1250, file: !250, line: 2382, baseType: !1249, size: 64, offset: 448)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1250, file: !250, line: 2383, baseType: !725, size: 64, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1250, file: !250, line: 2385, baseType: !2270, offset: 576)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2188, line: 206, elements: !642)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1250, file: !250, line: 2386, baseType: !2270, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1250, file: !250, line: 2387, baseType: !2270, offset: 576)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1250, file: !250, line: 2388, baseType: !2274, offset: 576)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2270, elements: !83)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1250, file: !250, line: 2390, baseType: !2270, offset: 576)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1250, file: !250, line: 2391, baseType: !2270, offset: 576)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1250, file: !250, line: 2392, baseType: !2270, offset: 576)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1250, file: !250, line: 2393, baseType: !2270, offset: 576)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1241, file: !250, line: 1197, baseType: !2280, size: 64, offset: 384)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2282)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !250, line: 2057, size: 1664, elements: !2283)
!2283 = !{!2284, !2288, !2292, !2293, !2297, !2301, !2305, !2306, !2307, !2311, !2315, !2319, !2320, !2321, !2327, !2331, !2332, !2336, !2337, !2338, !2339, !2343, !2347, !2394, !2409, !2410}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2282, file: !250, line: 2058, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!1028, !1240}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2282, file: !250, line: 2059, baseType: !2289, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{null, !1028}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2282, file: !250, line: 2060, baseType: !2289, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2282, file: !250, line: 2062, baseType: !2294, size: 64, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{null, !1028, !70}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2282, file: !250, line: 2063, baseType: !2298, size: 64, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!70, !1028, !1471}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2282, file: !250, line: 2064, baseType: !2302, size: 64, offset: 320)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!70, !1028}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2282, file: !250, line: 2065, baseType: !2289, size: 64, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2282, file: !250, line: 2066, baseType: !1270, size: 64, offset: 448)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2282, file: !250, line: 2067, baseType: !2308, size: 64, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!70, !1240, !70}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2282, file: !250, line: 2068, baseType: !2312, size: 64, offset: 576)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!70, !1240, !249}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2282, file: !250, line: 2069, baseType: !2316, size: 64, offset: 640)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!70, !1240}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2282, file: !250, line: 2070, baseType: !2312, size: 64, offset: 704)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2282, file: !250, line: 2071, baseType: !2316, size: 64, offset: 768)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2282, file: !250, line: 2072, baseType: !2322, size: 64, offset: 832)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!70, !993, !2325}
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !250, line: 62, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2282, file: !250, line: 2073, baseType: !2328, size: 64, offset: 896)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!70, !1240, !2046, !882}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2282, file: !250, line: 2074, baseType: !1270, size: 64, offset: 960)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2282, file: !250, line: 2076, baseType: !2333, size: 64, offset: 1024)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!70, !1811, !993}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2282, file: !250, line: 2077, baseType: !2333, size: 64, offset: 1088)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2282, file: !250, line: 2078, baseType: !2333, size: 64, offset: 1152)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2282, file: !250, line: 2079, baseType: !2333, size: 64, offset: 1216)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2282, file: !250, line: 2081, baseType: !2340, size: 64, offset: 1280)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!1182, !1240, !70, !882, !1185, !689}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2282, file: !250, line: 2082, baseType: !2344, size: 64, offset: 1344)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!1182, !1240, !70, !872, !1185, !689}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2282, file: !250, line: 2083, baseType: !2348, size: 64, offset: 1408)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!2351, !1028}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !255, line: 296, size: 1664, elements: !2354)
!2354 = !{!2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2379, !2380, !2381}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2353, file: !255, line: 297, baseType: !729, size: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2353, file: !255, line: 298, baseType: !204, size: 128, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2353, file: !255, line: 299, baseType: !204, size: 128, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2353, file: !255, line: 300, baseType: !204, size: 128, offset: 384)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2353, file: !255, line: 301, baseType: !677, size: 256, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2353, file: !255, line: 302, baseType: !167, size: 32, offset: 768)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2353, file: !255, line: 303, baseType: !149, size: 32, offset: 800)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2353, file: !255, line: 304, baseType: !1240, size: 64, offset: 832)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2353, file: !255, line: 305, baseType: !2364, size: 64, offset: 896)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !255, line: 68, size: 64, elements: !2365)
!2365 = !{!2366, !2378}
!2366 = !DIDerivedType(tag: DW_TAG_member, scope: !2364, file: !255, line: 69, baseType: !2367, size: 32)
!2367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2364, file: !255, line: 69, size: 32, elements: !2368)
!2368 = !{!2369, !2370, !2371}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2367, file: !255, line: 70, baseType: !751, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2367, file: !255, line: 71, baseType: !769, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2367, file: !255, line: 72, baseType: !2372, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2373, line: 24, baseType: !2374)
!2373 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2373, line: 22, size: 32, elements: !2375)
!2375 = !{!2376}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2374, file: !2373, line: 23, baseType: !2377, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2373, line: 20, baseType: !757)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2364, file: !255, line: 74, baseType: !254, size: 32, offset: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2353, file: !255, line: 306, baseType: !689, size: 64, offset: 960)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2353, file: !255, line: 307, baseType: !295, size: 64, offset: 1024)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2353, file: !255, line: 308, baseType: !2382, size: 576, offset: 1088)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !255, line: 205, size: 576, elements: !2383)
!2383 = !{!2384, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2382, file: !255, line: 206, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !255, line: 66, baseType: !384)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2382, file: !255, line: 207, baseType: !2385, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2382, file: !255, line: 208, baseType: !2385, size: 64, offset: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2382, file: !255, line: 209, baseType: !2385, size: 64, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2382, file: !255, line: 210, baseType: !2385, size: 64, offset: 256)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2382, file: !255, line: 211, baseType: !2385, size: 64, offset: 320)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2382, file: !255, line: 212, baseType: !2385, size: 64, offset: 384)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2382, file: !255, line: 213, baseType: !826, size: 64, offset: 448)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2382, file: !255, line: 214, baseType: !826, size: 64, offset: 512)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2282, file: !250, line: 2085, baseType: !2395, size: 64, offset: 1472)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!1143, !1240, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2400, line: 15, size: 256, elements: !2401)
!2400 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2401 = !{!2402, !2403, !2404, !2405, !2406}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2399, file: !2400, line: 16, baseType: !294, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2399, file: !2400, line: 19, baseType: !70, size: 32, offset: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2399, file: !2400, line: 26, baseType: !295, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2399, file: !2400, line: 33, baseType: !295, size: 64, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2399, file: !2400, line: 36, baseType: !2407, size: 64, offset: 192)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !622, line: 33, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2282, file: !250, line: 2087, baseType: !2395, size: 64, offset: 1536)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2282, file: !250, line: 2089, baseType: !1270, size: 64, offset: 1600)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1241, file: !250, line: 1198, baseType: !2412, size: 64, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2414)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !255, line: 324, size: 704, elements: !2415)
!2415 = !{!2416, !2420, !2424, !2428, !2429, !2430, !2431, !2432, !2437, !2442, !2446}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2414, file: !255, line: 325, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!70, !2352}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2414, file: !255, line: 326, baseType: !2421, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!2352, !1240, !70}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2414, file: !255, line: 327, baseType: !2425, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !2352}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2414, file: !255, line: 328, baseType: !2417, size: 64, offset: 192)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2414, file: !255, line: 329, baseType: !2417, size: 64, offset: 256)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2414, file: !255, line: 330, baseType: !2417, size: 64, offset: 320)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2414, file: !255, line: 331, baseType: !2308, size: 64, offset: 384)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2414, file: !255, line: 334, baseType: !2433, size: 64, offset: 448)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!2436, !1028}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2414, file: !255, line: 335, baseType: !2438, size: 64, offset: 512)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!70, !1028, !2441}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2414, file: !255, line: 337, baseType: !2443, size: 64, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!70, !1028, !2436}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2414, file: !255, line: 339, baseType: !2447, size: 64, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!70, !1240, !2450}
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1241, file: !250, line: 1199, baseType: !2452, size: 64, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2454)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !255, line: 430, size: 704, elements: !2455)
!2455 = !{!2456, !2460, !2461, !2465, !2466, !2467, !2482, !2505, !2509, !2510, !2533}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2454, file: !255, line: 431, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!70, !1240, !70, !70, !1151}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2454, file: !255, line: 432, baseType: !2308, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2454, file: !255, line: 433, baseType: !2462, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!70, !1240, !38}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2454, file: !255, line: 434, baseType: !2462, size: 64, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2454, file: !255, line: 435, baseType: !2308, size: 64, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2454, file: !255, line: 436, baseType: !2468, size: 64, offset: 320)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!70, !1240, !70, !2471}
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !255, line: 417, size: 256, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2472, file: !255, line: 418, baseType: !70, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2472, file: !255, line: 419, baseType: !38, size: 32, offset: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2472, file: !255, line: 420, baseType: !38, size: 32, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2472, file: !255, line: 422, baseType: !38, size: 32, offset: 96)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2472, file: !255, line: 423, baseType: !38, size: 32, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2472, file: !255, line: 424, baseType: !38, size: 32, offset: 160)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2472, file: !255, line: 425, baseType: !38, size: 32, offset: 192)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2472, file: !255, line: 426, baseType: !38, size: 32, offset: 224)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2454, file: !255, line: 437, baseType: !2483, size: 64, offset: 384)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!70, !1240, !2364, !2486}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !255, line: 345, size: 960, elements: !2488)
!2488 = !{!2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2487, file: !255, line: 346, baseType: !70, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2487, file: !255, line: 347, baseType: !371, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2487, file: !255, line: 348, baseType: !371, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2487, file: !255, line: 349, baseType: !371, size: 64, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2487, file: !255, line: 350, baseType: !371, size: 64, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2487, file: !255, line: 351, baseType: !371, size: 64, offset: 320)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2487, file: !255, line: 352, baseType: !371, size: 64, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2487, file: !255, line: 353, baseType: !382, size: 64, offset: 448)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2487, file: !255, line: 355, baseType: !382, size: 64, offset: 512)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2487, file: !255, line: 356, baseType: !70, size: 32, offset: 576)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2487, file: !255, line: 357, baseType: !70, size: 32, offset: 608)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2487, file: !255, line: 358, baseType: !371, size: 64, offset: 640)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2487, file: !255, line: 359, baseType: !371, size: 64, offset: 704)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2487, file: !255, line: 360, baseType: !371, size: 64, offset: 768)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2487, file: !255, line: 361, baseType: !382, size: 64, offset: 832)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2487, file: !255, line: 362, baseType: !70, size: 32, offset: 896)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2454, file: !255, line: 438, baseType: !2506, size: 64, offset: 448)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!70, !1240, !2450, !2486}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2454, file: !255, line: 440, baseType: !2483, size: 64, offset: 512)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2454, file: !255, line: 441, baseType: !2511, size: 64, offset: 576)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!70, !1240, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !255, line: 411, size: 1408, elements: !2516)
!2516 = !{!2517, !2518}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2515, file: !255, line: 412, baseType: !38, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2515, file: !255, line: 413, baseType: !2519, size: 1344, offset: 64)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2520, size: 1344, elements: !83)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !255, line: 397, size: 448, elements: !2521)
!2521 = !{!2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2532}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2520, file: !255, line: 398, baseType: !38, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2520, file: !255, line: 399, baseType: !38, size: 32, offset: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2520, file: !255, line: 401, baseType: !38, size: 32, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2520, file: !255, line: 402, baseType: !38, size: 32, offset: 96)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2520, file: !255, line: 403, baseType: !38, size: 32, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2520, file: !255, line: 404, baseType: !38, size: 32, offset: 160)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2520, file: !255, line: 405, baseType: !38, size: 32, offset: 192)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2520, file: !255, line: 406, baseType: !373, size: 64, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2520, file: !255, line: 407, baseType: !2531, size: 64, offset: 320)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !150, line: 132, baseType: !371)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2520, file: !255, line: 408, baseType: !2531, size: 64, offset: 384)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2454, file: !255, line: 442, baseType: !2462, size: 64, offset: 640)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1241, file: !250, line: 1200, baseType: !2535, size: 64, offset: 576)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2537)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !250, line: 54, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1241, file: !250, line: 1201, baseType: !295, size: 64, offset: 640)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1241, file: !250, line: 1202, baseType: !295, size: 64, offset: 704)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1241, file: !250, line: 1203, baseType: !295, size: 64, offset: 768)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1241, file: !250, line: 1204, baseType: !993, size: 64, offset: 832)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1241, file: !250, line: 1205, baseType: !810, size: 320, offset: 896)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1241, file: !250, line: 1206, baseType: !70, size: 32, offset: 1216)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1241, file: !250, line: 1207, baseType: !149, size: 32, offset: 1248)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1241, file: !250, line: 1209, baseType: !90, size: 64, offset: 1280)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1241, file: !250, line: 1211, baseType: !2547, size: 64, offset: 1344)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2550)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !250, line: 1211, flags: DIFlagFwdDecl)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1241, file: !250, line: 1223, baseType: !2552, size: 64, offset: 1408)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1005, line: 34, size: 64, elements: !2553)
!2553 = !{!2554}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2552, file: !1005, line: 35, baseType: !1008, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1241, file: !250, line: 1224, baseType: !204, size: 128, offset: 1472)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1241, file: !250, line: 1225, baseType: !2557, size: 64, offset: 1600)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !250, line: 1225, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1241, file: !250, line: 1226, baseType: !2560, size: 64, offset: 1664)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !250, line: 1226, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1241, file: !250, line: 1227, baseType: !2563, size: 64, offset: 1728)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !250, line: 50, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1241, file: !250, line: 1228, baseType: !2566, size: 64, offset: 1792)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !250, line: 1228, flags: DIFlagFwdDecl)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1241, file: !250, line: 1229, baseType: !729, size: 128, offset: 1856)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1241, file: !250, line: 1230, baseType: !38, size: 32, offset: 1984)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1241, file: !250, line: 1231, baseType: !2571, size: 2496, offset: 2048)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !255, line: 521, size: 2496, elements: !2572)
!2572 = !{!2573, !2574, !2575, !2577, !2609}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2571, file: !255, line: 522, baseType: !38, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2571, file: !255, line: 523, baseType: !810, size: 320, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2571, file: !255, line: 524, baseType: !2576, size: 192, offset: 384)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 192, elements: !83)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2571, file: !255, line: 525, baseType: !2578, size: 1728, offset: 576)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2579, size: 1728, elements: !83)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !255, line: 222, size: 576, elements: !2580)
!2580 = !{!2581, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2579, file: !255, line: 223, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !255, line: 445, size: 256, elements: !2584)
!2584 = !{!2585, !2586, !2599, !2600}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2583, file: !255, line: 446, baseType: !70, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2583, file: !255, line: 447, baseType: !2587, size: 64, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2589)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !255, line: 312, size: 512, elements: !2590)
!2590 = !{!2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2589, file: !255, line: 313, baseType: !2308, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2589, file: !255, line: 314, baseType: !2308, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2589, file: !255, line: 315, baseType: !2308, size: 64, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2589, file: !255, line: 316, baseType: !2308, size: 64, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2589, file: !255, line: 317, baseType: !2417, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2589, file: !255, line: 318, baseType: !2417, size: 64, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2589, file: !255, line: 319, baseType: !2417, size: 64, offset: 384)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2589, file: !255, line: 320, baseType: !2447, size: 64, offset: 448)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2583, file: !255, line: 448, baseType: !1274, size: 64, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2583, file: !255, line: 449, baseType: !2582, size: 64, offset: 192)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2579, file: !255, line: 224, baseType: !70, size: 32, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2579, file: !255, line: 226, baseType: !204, size: 128, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2579, file: !255, line: 227, baseType: !295, size: 64, offset: 256)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2579, file: !255, line: 228, baseType: !38, size: 32, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2579, file: !255, line: 229, baseType: !38, size: 32, offset: 352)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2579, file: !255, line: 230, baseType: !2385, size: 64, offset: 384)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2579, file: !255, line: 231, baseType: !2385, size: 64, offset: 448)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2579, file: !255, line: 232, baseType: !90, size: 64, offset: 512)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2571, file: !255, line: 526, baseType: !2610, size: 192, offset: 2304)
!2610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2587, size: 192, elements: !83)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1241, file: !250, line: 1233, baseType: !2612, size: 2368, offset: 4544)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !250, line: 1184, size: 2368, elements: !2613)
!2613 = !{!2614, !2615, !2616}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2612, file: !250, line: 1185, baseType: !133, size: 16)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2612, file: !250, line: 1186, baseType: !133, size: 16, offset: 16)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2612, file: !250, line: 1187, baseType: !2617, size: 2304, offset: 64)
!2617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2618, size: 2304, elements: !83)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2619, line: 12, size: 768, elements: !2620)
!2619 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2620 = !{!2621, !2629, !2630, !2635, !2636}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2618, file: !2619, line: 13, baseType: !2622, size: 384)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2623, line: 17, size: 384, elements: !2624)
!2623 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2624 = !{!2625, !2626, !2627, !2628}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2622, file: !2623, line: 18, baseType: !70, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2622, file: !2623, line: 19, baseType: !70, size: 32, offset: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2622, file: !2623, line: 20, baseType: !162, size: 192, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2622, file: !2623, line: 22, baseType: !657, size: 128, align: 64, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2618, file: !2619, line: 14, baseType: !2000, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2618, file: !2619, line: 15, baseType: !2631, size: 64, offset: 448)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2632, line: 16, size: 64, elements: !2633)
!2632 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2633 = !{!2634}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2631, file: !2632, line: 17, baseType: !302, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2618, file: !2619, line: 16, baseType: !162, size: 192, offset: 512)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2618, file: !2619, line: 17, baseType: !149, size: 32, offset: 704)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1241, file: !250, line: 1240, baseType: !90, size: 64, offset: 6912)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1241, file: !250, line: 1243, baseType: !313, size: 32, offset: 6976)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1241, file: !250, line: 1245, baseType: !826, size: 64, offset: 7040)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1241, file: !250, line: 1246, baseType: !826, size: 64, offset: 7104)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1241, file: !250, line: 1248, baseType: !314, size: 32, offset: 7168)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1241, file: !250, line: 1249, baseType: !2643, size: 64, offset: 7232)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !250, line: 634, flags: DIFlagFwdDecl)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1241, file: !250, line: 1252, baseType: !2646, size: 256, offset: 7296)
!2646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !2647)
!2647 = !{!2648}
!2648 = !DISubrange(count: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1241, file: !250, line: 1253, baseType: !2650, size: 128, offset: 7552)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2651, line: 21, baseType: !2652)
!2651 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2651, line: 19, size: 128, elements: !2653)
!2653 = !{!2654}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2652, file: !2651, line: 20, baseType: !2655, size: 128)
!2655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 128, elements: !2656)
!2656 = !{!2657}
!2657 = !DISubrange(count: 16)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1241, file: !250, line: 1255, baseType: !38, size: 32, offset: 7680)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1241, file: !250, line: 1261, baseType: !677, size: 256, offset: 7744)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1241, file: !250, line: 1267, baseType: !872, size: 64, offset: 8000)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1241, file: !250, line: 1269, baseType: !2662, size: 64, offset: 8064)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2664)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !995, line: 128, size: 1024, align: 512, elements: !2665)
!2665 = !{!2666, !2670, !2671, !2678, !2684, !2688, !2692, !2696, !2697, !2701, !2705, !2710, !2714}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2664, file: !995, line: 129, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!70, !993, !38}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2664, file: !995, line: 130, baseType: !2667, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2664, file: !995, line: 131, baseType: !2672, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!70, !2675, !2677}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2664, file: !995, line: 132, baseType: !2679, size: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!70, !2675, !38, !872, !2682}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2664, file: !995, line: 134, baseType: !2685, size: 64, offset: 256)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!70, !2675}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2664, file: !995, line: 135, baseType: !2689, size: 64, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!70, !993}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2664, file: !995, line: 136, baseType: !2693, size: 64, offset: 384)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{null, !993}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2664, file: !995, line: 137, baseType: !2693, size: 64, offset: 448)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2664, file: !995, line: 138, baseType: !2698, size: 64, offset: 512)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{null, !993, !1028}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2664, file: !995, line: 139, baseType: !2702, size: 64, offset: 576)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!882, !993, !882, !70}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2664, file: !995, line: 140, baseType: !2706, size: 64, offset: 640)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!988, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2664, file: !995, line: 141, baseType: !2711, size: 64, offset: 704)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!70, !1151, !869}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2664, file: !995, line: 142, baseType: !2715, size: 64, offset: 768)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!993, !993, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1029)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1241, file: !250, line: 1271, baseType: !2721, size: 448, offset: 8128)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2400, line: 63, size: 448, elements: !2722)
!2722 = !{!2723, !2728, !2729, !2730, !2731, !2732, !2733}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2721, file: !2400, line: 64, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!295, !2727, !2398}
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2721, file: !2400, line: 66, baseType: !2724, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2721, file: !2400, line: 69, baseType: !1143, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2721, file: !2400, line: 70, baseType: !70, size: 32, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2721, file: !2400, line: 71, baseType: !38, size: 32, offset: 224)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2721, file: !2400, line: 74, baseType: !204, size: 128, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2721, file: !2400, line: 85, baseType: !2734, size: 64, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1241, file: !250, line: 1274, baseType: !670, size: 64, offset: 8576)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1241, file: !250, line: 1280, baseType: !670, size: 64, offset: 8640)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1241, file: !250, line: 1283, baseType: !70, size: 32, offset: 8704)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1241, file: !250, line: 1286, baseType: !1651, size: 32, offset: 8736)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1241, file: !250, line: 1289, baseType: !2221, size: 64, offset: 8768)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1241, file: !250, line: 1290, baseType: !725, size: 64, offset: 8832)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1241, file: !250, line: 1297, baseType: !955, size: 64, offset: 8896)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1241, file: !250, line: 1304, baseType: !2743, size: 64, offset: 8960)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2744, line: 49, size: 64, elements: !2745)
!2744 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2745 = !{!2746}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2743, file: !2744, line: 50, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2744, line: 41, size: 512, align: 512, elements: !2749)
!2749 = !{!2750, !2751, !2756}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2748, file: !2744, line: 43, baseType: !167, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2748, file: !2744, line: 45, baseType: !2752, size: 192, offset: 64)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2744, line: 29, size: 192, elements: !2753)
!2753 = !{!2754, !2755}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2752, file: !2744, line: 30, baseType: !204, size: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2752, file: !2744, line: 32, baseType: !1143, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2748, file: !2744, line: 46, baseType: !1143, size: 64, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1241, file: !250, line: 1305, baseType: !2743, size: 64, offset: 9024)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1241, file: !250, line: 1306, baseType: !657, size: 128, align: 64, offset: 9088)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1241, file: !250, line: 1307, baseType: !2160, size: 256, offset: 9216)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1241, file: !250, line: 1309, baseType: !677, size: 256, offset: 9472)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1241, file: !250, line: 1314, baseType: !70, size: 32, offset: 9728)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1241, file: !250, line: 1317, baseType: !167, size: 32, align: 512, offset: 10240)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1241, file: !250, line: 1318, baseType: !204, size: 128, offset: 10304)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1241, file: !250, line: 1320, baseType: !167, size: 32, offset: 10432)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1241, file: !250, line: 1321, baseType: !204, size: 128, offset: 10496)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1029, file: !250, line: 656, baseType: !1391, size: 64, offset: 512)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1029, file: !250, line: 659, baseType: !90, size: 64, offset: 576)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1029, file: !250, line: 663, baseType: !295, size: 64, offset: 640)
!2769 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !250, line: 671, baseType: !2770, size: 32, offset: 704)
!2770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1029, file: !250, line: 671, size: 32, elements: !2771)
!2771 = !{!2772, !2774}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2770, file: !250, line: 672, baseType: !2773, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2770, file: !250, line: 673, baseType: !38, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1029, file: !250, line: 675, baseType: !1103, size: 32, offset: 736)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1029, file: !250, line: 676, baseType: !689, size: 64, offset: 768)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1029, file: !250, line: 677, baseType: !1139, size: 128, offset: 832)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1029, file: !250, line: 678, baseType: !1139, size: 128, offset: 960)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1029, file: !250, line: 679, baseType: !1139, size: 128, offset: 1088)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1029, file: !250, line: 680, baseType: !167, size: 32, offset: 1216)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1029, file: !250, line: 681, baseType: !133, size: 16, offset: 1248)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1029, file: !250, line: 682, baseType: !191, size: 8, offset: 1264)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1029, file: !250, line: 683, baseType: !191, size: 8, offset: 1272)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1029, file: !250, line: 684, baseType: !2531, size: 64, offset: 1280)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1029, file: !250, line: 691, baseType: !295, size: 64, offset: 1344)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1029, file: !250, line: 692, baseType: !810, size: 320, offset: 1408)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1029, file: !250, line: 694, baseType: !295, size: 64, offset: 1728)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1029, file: !250, line: 695, baseType: !295, size: 64, offset: 1792)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1029, file: !250, line: 697, baseType: !729, size: 128, offset: 1856)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1029, file: !250, line: 698, baseType: !204, size: 128, offset: 1984)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1029, file: !250, line: 707, baseType: !204, size: 128, offset: 2112)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1029, file: !250, line: 708, baseType: !204, size: 128, offset: 2240)
!2793 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !250, line: 709, baseType: !2794, size: 128, offset: 2368)
!2794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1029, file: !250, line: 709, size: 128, elements: !2795)
!2795 = !{!2796, !2797}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2794, file: !250, line: 710, baseType: !725, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2794, file: !250, line: 711, baseType: !657, size: 128, align: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1029, file: !250, line: 713, baseType: !672, size: 64, offset: 2496)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1029, file: !250, line: 714, baseType: !672, size: 64, offset: 2560)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1029, file: !250, line: 715, baseType: !149, size: 32, offset: 2624)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1029, file: !250, line: 716, baseType: !149, size: 32, offset: 2656)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1029, file: !250, line: 717, baseType: !149, size: 32, offset: 2688)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1029, file: !250, line: 719, baseType: !149, size: 32, offset: 2720)
!2804 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !250, line: 721, baseType: !2805, size: 64, offset: 2752)
!2805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1029, file: !250, line: 721, size: 64, elements: !2806)
!2806 = !{!2807, !2933}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2805, file: !250, line: 722, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2810)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !250, line: 1914, size: 2112, elements: !2811)
!2811 = !{!2812, !2813, !2817, !2821, !2825, !2826, !2827, !2833, !2846, !2850, !2854, !2855, !2859, !2860, !2864, !2869, !2870, !2874, !2878, !2884, !2885, !2889, !2890, !2896, !2900, !2901, !2906, !2910, !2914, !2918, !2922, !2923, !2929}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2810, file: !250, line: 1915, baseType: !1274, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2810, file: !250, line: 1916, baseType: !2814, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!689, !649, !689, !70}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2810, file: !250, line: 1917, baseType: !2818, size: 64, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!1182, !649, !882, !1185, !1835}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2810, file: !250, line: 1918, baseType: !2822, size: 64, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!1182, !649, !872, !1185, !1835}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2810, file: !250, line: 1919, baseType: !1585, size: 64, offset: 256)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2810, file: !250, line: 1920, baseType: !1585, size: 64, offset: 320)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2810, file: !250, line: 1921, baseType: !2828, size: 64, offset: 384)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!70, !1588, !2831, !38}
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !250, line: 53, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2810, file: !250, line: 1923, baseType: !2834, size: 64, offset: 448)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!70, !649, !2837}
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !250, line: 1858, size: 128, elements: !2839)
!2839 = !{!2840, !2845}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2838, file: !250, line: 1859, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !250, line: 1855, baseType: !2842)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!869, !2837, !872, !70, !689, !371, !38}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2838, file: !250, line: 1860, baseType: !689, size: 64, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2810, file: !250, line: 1924, baseType: !2847, size: 64, offset: 512)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!1855, !649, !1857}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2810, file: !250, line: 1925, baseType: !2851, size: 64, offset: 576)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!1143, !649, !38, !295}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2810, file: !250, line: 1926, baseType: !2851, size: 64, offset: 640)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2810, file: !250, line: 1927, baseType: !2856, size: 64, offset: 704)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!70, !649, !1665}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2810, file: !250, line: 1928, baseType: !295, size: 64, offset: 768)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2810, file: !250, line: 1929, baseType: !2861, size: 64, offset: 832)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!70, !1028, !649}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2810, file: !250, line: 1930, baseType: !2865, size: 64, offset: 896)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!70, !649, !2868}
!2868 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !250, line: 1061, baseType: !90)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2810, file: !250, line: 1931, baseType: !2861, size: 64, offset: 960)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2810, file: !250, line: 1932, baseType: !2871, size: 64, offset: 1024)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!70, !649, !689, !689, !70}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2810, file: !250, line: 1933, baseType: !2875, size: 64, offset: 1088)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!70, !70, !649, !70}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2810, file: !250, line: 1934, baseType: !2879, size: 64, offset: 1152)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!70, !649, !70, !2882}
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !250, line: 1063, flags: DIFlagFwdDecl)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2810, file: !250, line: 1935, baseType: !646, size: 64, offset: 1216)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2810, file: !250, line: 1936, baseType: !2886, size: 64, offset: 1280)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!70, !70}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2810, file: !250, line: 1937, baseType: !2879, size: 64, offset: 1344)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2810, file: !250, line: 1938, baseType: !2891, size: 64, offset: 1408)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!1182, !2894, !649, !1835, !1185, !38}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !304, line: 59, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2810, file: !250, line: 1939, baseType: !2897, size: 64, offset: 1472)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!1182, !649, !1835, !2894, !1185, !38}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2810, file: !250, line: 1940, baseType: !1641, size: 64, offset: 1536)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2810, file: !250, line: 1941, baseType: !2902, size: 64, offset: 1600)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!70, !649, !70, !2905, !1562}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2810, file: !250, line: 1942, baseType: !2907, size: 64, offset: 1664)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!1143, !649, !70, !689, !689}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2810, file: !250, line: 1944, baseType: !2911, size: 64, offset: 1728)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !1811, !649}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2810, file: !250, line: 1948, baseType: !2915, size: 64, offset: 1792)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!1182, !649, !689, !649, !689, !1185, !38}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2810, file: !250, line: 1950, baseType: !2919, size: 64, offset: 1856)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!689, !649, !689, !649, !689, !689, !38}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2810, file: !250, line: 1953, baseType: !2871, size: 64, offset: 1920)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2810, file: !250, line: 1954, baseType: !2924, size: 64, offset: 1984)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!70, !2927, !38}
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !250, line: 1911, flags: DIFlagFwdDecl)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2810, file: !250, line: 1955, baseType: !2930, size: 64, offset: 2048)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!70, !2927, !2831, !38}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2805, file: !250, line: 723, baseType: !2289, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1029, file: !250, line: 725, baseType: !2935, size: 64, offset: 2816)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !250, line: 725, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1029, file: !250, line: 726, baseType: !1392, size: 1536, align: 64, offset: 2880)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1029, file: !250, line: 727, baseType: !204, size: 128, offset: 4416)
!2939 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !250, line: 728, baseType: !2940, size: 64, offset: 4544)
!2940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1029, file: !250, line: 728, size: 64, elements: !2941)
!2941 = !{!2942, !2943, !2946, !2947}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2940, file: !250, line: 729, baseType: !2894, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2940, file: !250, line: 730, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !250, line: 730, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2940, file: !250, line: 731, baseType: !882, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2940, file: !250, line: 732, baseType: !38, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1029, file: !250, line: 735, baseType: !314, size: 32, offset: 4608)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1029, file: !250, line: 738, baseType: !314, size: 32, offset: 4640)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1029, file: !250, line: 739, baseType: !2643, size: 64, offset: 4672)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1029, file: !250, line: 750, baseType: !90, size: 64, offset: 4736)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !994, file: !995, line: 91, baseType: !2953, size: 256, offset: 448)
!2953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !2647)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !994, file: !995, line: 94, baseType: !2955, size: 64, offset: 704)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2956, line: 25, size: 64, elements: !2957)
!2956 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2957 = !{!2958}
!2958 = !DIDerivedType(tag: DW_TAG_member, scope: !2955, file: !2956, line: 26, baseType: !2959, size: 64)
!2959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2955, file: !2956, line: 26, size: 64, elements: !2960)
!2960 = !{!2961, !2962}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2959, file: !2956, line: 28, baseType: !372, size: 64, align: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, scope: !2959, file: !2956, line: 30, baseType: !2963, size: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2959, file: !2956, line: 30, size: 64, elements: !2964)
!2964 = !{!2965, !2966}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2963, file: !2956, line: 31, baseType: !167, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2963, file: !2956, line: 32, baseType: !70, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !994, file: !995, line: 95, baseType: !2662, size: 64, offset: 768)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !994, file: !995, line: 96, baseType: !1240, size: 64, offset: 832)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !994, file: !995, line: 97, baseType: !295, size: 64, offset: 896)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !994, file: !995, line: 98, baseType: !90, size: 64, offset: 960)
!2971 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !995, line: 100, baseType: !2972, size: 128, offset: 1024)
!2972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !995, line: 100, size: 128, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2972, file: !995, line: 101, baseType: !204, size: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2972, file: !995, line: 102, baseType: !1866, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !994, file: !995, line: 104, baseType: !204, size: 128, offset: 1152)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !994, file: !995, line: 105, baseType: !204, size: 128, offset: 1280)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !994, file: !995, line: 113, baseType: !2979, size: 128, offset: 1408)
!2979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !995, line: 109, size: 128, elements: !2980)
!2980 = !{!2981, !2982, !2983}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2979, file: !995, line: 110, baseType: !729, size: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2979, file: !995, line: 111, baseType: !1004, size: 128)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2979, file: !995, line: 112, baseType: !657, size: 128, align: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !989, file: !990, line: 72, baseType: !1240, size: 64, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !989, file: !990, line: 73, baseType: !70, size: 32, offset: 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !989, file: !990, line: 74, baseType: !1068, size: 64, offset: 192)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !984, file: !985, line: 10, baseType: !993, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !650, file: !250, line: 1015, baseType: !1028, size: 64, offset: 1344)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !650, file: !250, line: 1016, baseType: !2808, size: 64, offset: 1408)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !650, file: !250, line: 1018, baseType: !371, size: 64, offset: 1472)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !650, file: !250, line: 1020, baseType: !90, size: 64, offset: 1536)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !650, file: !250, line: 1023, baseType: !90, size: 64, offset: 1600)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !650, file: !250, line: 1027, baseType: !2994, size: 64, offset: 1664)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !650, file: !250, line: 1029, baseType: !1391, size: 64, offset: 1728)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !650, file: !250, line: 1030, baseType: !1651, size: 32, offset: 1792)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !650, file: !250, line: 1031, baseType: !1651, size: 32, offset: 1824)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !625, file: !622, line: 756, baseType: !295, size: 64, offset: 704)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !625, file: !622, line: 757, baseType: !295, size: 64, offset: 768)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !625, file: !622, line: 760, baseType: !295, size: 64, offset: 832)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !625, file: !622, line: 761, baseType: !295, size: 64, offset: 896)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !625, file: !622, line: 763, baseType: !295, size: 64, offset: 960)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !625, file: !622, line: 764, baseType: !3004, size: 64, offset: 1024)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1680, line: 299, baseType: !3006)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1680, line: 299, size: 64, elements: !3007)
!3007 = !{!3008}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3006, file: !1680, line: 299, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1685, line: 18, baseType: !295)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !625, file: !622, line: 773, baseType: !149, size: 32, offset: 1088)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !625, file: !622, line: 785, baseType: !149, size: 32, offset: 1120)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !625, file: !622, line: 795, baseType: !3013, size: 64, offset: 1152)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !622, line: 726, size: 128, elements: !3015)
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3014, file: !622, line: 727, baseType: !371, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3014, file: !622, line: 728, baseType: !70, size: 32, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !625, file: !622, line: 801, baseType: !295, size: 64, offset: 1216)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !625, file: !622, line: 804, baseType: !670, size: 64, offset: 1280)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !625, file: !622, line: 806, baseType: !70, size: 32, offset: 1344)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !625, file: !622, line: 808, baseType: !167, size: 32, offset: 1376)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !625, file: !622, line: 823, baseType: !810, size: 320, offset: 1408)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !625, file: !622, line: 825, baseType: !204, size: 128, offset: 1728)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !625, file: !622, line: 845, baseType: !70, size: 32, offset: 1856)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !625, file: !622, line: 849, baseType: !295, size: 64, offset: 1920)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !625, file: !622, line: 850, baseType: !295, size: 64, offset: 1984)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !625, file: !622, line: 852, baseType: !295, size: 64, offset: 2048)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !625, file: !622, line: 853, baseType: !295, size: 64, offset: 2112)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !625, file: !622, line: 854, baseType: !672, size: 64, offset: 2176)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !625, file: !622, line: 855, baseType: !295, size: 64, offset: 2240)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !625, file: !622, line: 856, baseType: !295, size: 64, offset: 2304)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !625, file: !622, line: 857, baseType: !295, size: 64, offset: 2368)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !625, file: !622, line: 858, baseType: !295, size: 64, offset: 2432)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !625, file: !622, line: 865, baseType: !494, size: 32, offset: 2496)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !625, file: !622, line: 867, baseType: !167, size: 32, offset: 2528)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !625, file: !622, line: 869, baseType: !295, size: 64, offset: 2560)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !625, file: !622, line: 869, baseType: !295, size: 64, offset: 2624)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !625, file: !622, line: 869, baseType: !295, size: 64, offset: 2688)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !625, file: !622, line: 869, baseType: !295, size: 64, offset: 2752)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !625, file: !622, line: 870, baseType: !295, size: 64, offset: 2816)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !625, file: !622, line: 870, baseType: !295, size: 64, offset: 2880)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !625, file: !622, line: 870, baseType: !295, size: 64, offset: 2944)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !625, file: !622, line: 871, baseType: !295, size: 64, offset: 3008)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !625, file: !622, line: 871, baseType: !295, size: 64, offset: 3072)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !625, file: !622, line: 871, baseType: !295, size: 64, offset: 3136)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !625, file: !622, line: 871, baseType: !295, size: 64, offset: 3200)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !625, file: !622, line: 873, baseType: !3048, size: 3328, offset: 3264)
!3048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 3328, elements: !3049)
!3049 = !{!3050}
!3050 = !DISubrange(count: 52)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !625, file: !622, line: 875, baseType: !3052, size: 1280, offset: 6592)
!3052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !930, size: 1280, elements: !734)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !625, file: !622, line: 877, baseType: !3054, size: 64, offset: 7872)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !622, line: 877, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !625, file: !622, line: 880, baseType: !3057, size: 1088, offset: 7936)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3058, line: 72, baseType: !3059)
!3058 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3058, line: 23, size: 1088, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3064, !3065, !3068, !3069, !3070, !3071, !3096, !3097, !3098}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3059, file: !3058, line: 28, baseType: !371, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3059, file: !3058, line: 38, baseType: !672, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3059, file: !3058, line: 40, baseType: !295, size: 64, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3059, file: !3058, line: 43, baseType: !810, size: 320, offset: 192)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3059, file: !3058, line: 44, baseType: !3066, size: 64, offset: 512)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3058, line: 44, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3059, file: !3058, line: 48, baseType: !295, size: 64, offset: 576)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3059, file: !3058, line: 59, baseType: !677, size: 256, offset: 640)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3059, file: !3058, line: 60, baseType: !90, size: 64, offset: 896)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3059, file: !3058, line: 61, baseType: !3072, size: 64, offset: 960)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3074)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3075, line: 13, size: 1216, elements: !3076)
!3075 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3076 = !{!3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3074, file: !3075, line: 14, baseType: !90, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3074, file: !3075, line: 15, baseType: !295, size: 64, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3074, file: !3075, line: 17, baseType: !295, size: 64, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3074, file: !3075, line: 17, baseType: !295, size: 64, offset: 192)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3074, file: !3075, line: 18, baseType: !295, size: 64, offset: 256)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3074, file: !3075, line: 18, baseType: !295, size: 64, offset: 320)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3074, file: !3075, line: 19, baseType: !1747, size: 64, offset: 384)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3074, file: !3075, line: 21, baseType: !1143, size: 64, offset: 448)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3074, file: !3075, line: 23, baseType: !1143, size: 64, offset: 512)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3074, file: !3075, line: 24, baseType: !1143, size: 64, offset: 576)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3074, file: !3075, line: 25, baseType: !1143, size: 64, offset: 640)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3074, file: !3075, line: 26, baseType: !1143, size: 64, offset: 704)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3074, file: !3075, line: 27, baseType: !1143, size: 64, offset: 768)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3074, file: !3075, line: 28, baseType: !1143, size: 64, offset: 832)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3074, file: !3075, line: 29, baseType: !1143, size: 64, offset: 896)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3074, file: !3075, line: 30, baseType: !1143, size: 64, offset: 960)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3074, file: !3075, line: 31, baseType: !1143, size: 64, offset: 1024)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3074, file: !3075, line: 32, baseType: !1143, size: 64, offset: 1088)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3074, file: !3075, line: 33, baseType: !1143, size: 64, offset: 1152)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3059, file: !3058, line: 63, baseType: !149, size: 32, offset: 1024)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3059, file: !3058, line: 69, baseType: !200, size: 16, offset: 1056)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3059, file: !3058, line: 70, baseType: !2053, size: 16, offset: 1072)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !625, file: !622, line: 882, baseType: !295, size: 64, offset: 9024)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !625, file: !622, line: 885, baseType: !167, size: 32, offset: 9088)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !625, file: !622, line: 886, baseType: !3102, size: 64, offset: 9152)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !622, line: 732, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !625, file: !622, line: 901, baseType: !955, size: 64, offset: 9216)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !625, file: !622, line: 904, baseType: !649, size: 64, offset: 9280)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !625, file: !622, line: 906, baseType: !3107, size: 64, offset: 9344)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !622, line: 906, flags: DIFlagFwdDecl)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !625, file: !622, line: 930, baseType: !149, size: 32, offset: 9408)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !625, file: !622, line: 933, baseType: !149, size: 32, offset: 9440)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !625, file: !622, line: 935, baseType: !3112, size: 64, offset: 9472)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !272, line: 103, size: 64, elements: !3113)
!3113 = !{!3114}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3112, file: !272, line: 104, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !272, line: 101, flags: DIFlagFwdDecl)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !625, file: !622, line: 940, baseType: !670, size: 64, offset: 9536)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !625, file: !622, line: 942, baseType: !2160, size: 256, offset: 9600)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !621, file: !622, line: 986, baseType: !3120, offset: 10240)
!3120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, elements: !747)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !303, file: !304, line: 882, baseType: !620, size: 64, offset: 9792)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !303, file: !304, line: 884, baseType: !70, size: 32, offset: 9856)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !303, file: !304, line: 885, baseType: !70, size: 32, offset: 9888)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !303, file: !304, line: 886, baseType: !70, size: 32, offset: 9920)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !303, file: !304, line: 888, baseType: !70, size: 32, offset: 9952)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !303, file: !304, line: 890, baseType: !295, size: 64, offset: 9984)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !303, file: !304, line: 893, baseType: !38, size: 32, offset: 10048)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !303, file: !304, line: 896, baseType: !38, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !303, file: !304, line: 897, baseType: !38, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !303, file: !304, line: 898, baseType: !38, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !303, file: !304, line: 899, baseType: !38, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !303, file: !304, line: 919, baseType: !38, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !303, file: !304, line: 922, baseType: !38, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !303, file: !304, line: 923, baseType: !38, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !303, file: !304, line: 925, baseType: !38, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !303, file: !304, line: 939, baseType: !38, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !303, file: !304, line: 941, baseType: !38, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !303, file: !304, line: 944, baseType: !38, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !303, file: !304, line: 956, baseType: !38, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !303, file: !304, line: 962, baseType: !38, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !303, file: !304, line: 966, baseType: !38, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !303, file: !304, line: 969, baseType: !295, size: 64, offset: 10176)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !303, file: !304, line: 971, baseType: !3144, size: 448, offset: 10240)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !266, line: 25, size: 448, elements: !3145)
!3145 = !{!3146, !3147, !3152}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3144, file: !266, line: 26, baseType: !295, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3144, file: !266, line: 27, baseType: !3148, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!1143, !3151}
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, scope: !3144, file: !266, line: 28, baseType: !3153, size: 320, offset: 128)
!3153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3144, file: !266, line: 28, size: 320, elements: !3154)
!3154 = !{!3155, !3165, !3190}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3153, file: !266, line: 37, baseType: !3156, size: 320)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3153, file: !266, line: 30, size: 320, elements: !3157)
!3157 = !{!3158, !3160, !3161, !3162, !3163, !3164}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3156, file: !266, line: 31, baseType: !3159, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3156, file: !266, line: 32, baseType: !313, size: 32, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3156, file: !266, line: 33, baseType: !313, size: 32, offset: 96)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3156, file: !266, line: 34, baseType: !313, size: 32, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3156, file: !266, line: 35, baseType: !371, size: 64, offset: 192)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3156, file: !266, line: 36, baseType: !3159, size: 64, offset: 256)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3153, file: !266, line: 47, baseType: !3166, size: 192)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3153, file: !266, line: 39, size: 192, elements: !3167)
!3167 = !{!3168, !3169, !3170, !3189}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3166, file: !266, line: 40, baseType: !485, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3166, file: !266, line: 41, baseType: !265, size: 32, offset: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, scope: !3166, file: !266, line: 42, baseType: !3171, size: 64, offset: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3166, file: !266, line: 42, size: 64, elements: !3172)
!3172 = !{!3173, !3181}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3171, file: !266, line: 43, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3176, line: 7, size: 128, elements: !3177)
!3176 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3177 = !{!3178, !3180}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3175, file: !3176, line: 8, baseType: !3179, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !487, line: 93, baseType: !384)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3175, file: !3176, line: 9, baseType: !384, size: 64, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3171, file: !266, line: 44, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3184, line: 7, size: 64, elements: !3185)
!3184 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3185 = !{!3186, !3188}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3183, file: !3184, line: 8, baseType: !3187, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3184, line: 5, baseType: !802)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3183, file: !3184, line: 9, baseType: !802, size: 32, offset: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3166, file: !266, line: 46, baseType: !371, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3153, file: !266, line: 55, baseType: !3191, size: 256)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3153, file: !266, line: 49, size: 256, elements: !3192)
!3192 = !{!3193, !3201, !3202, !3203, !3204}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3191, file: !266, line: 50, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3196, line: 36, size: 64, elements: !3197)
!3196 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3197 = !{!3198, !3199, !3200}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3195, file: !3196, line: 37, baseType: !70, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3195, file: !3196, line: 38, baseType: !838, size: 16, offset: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3195, file: !3196, line: 39, baseType: !838, size: 16, offset: 48)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3191, file: !266, line: 51, baseType: !70, size: 32, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3191, file: !266, line: 52, baseType: !70, size: 32, offset: 96)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3191, file: !266, line: 53, baseType: !295, size: 64, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3191, file: !266, line: 54, baseType: !295, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !303, file: !304, line: 973, baseType: !3206, size: 32, offset: 10688)
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !150, line: 27, baseType: !3207)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !487, line: 28, baseType: !70)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !303, file: !304, line: 974, baseType: !3206, size: 32, offset: 10720)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !303, file: !304, line: 978, baseType: !295, size: 64, offset: 10752)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !303, file: !304, line: 987, baseType: !302, size: 64, offset: 10816)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !303, file: !304, line: 990, baseType: !302, size: 64, offset: 10880)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !303, file: !304, line: 995, baseType: !204, size: 128, offset: 10944)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !303, file: !304, line: 996, baseType: !204, size: 128, offset: 11072)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !303, file: !304, line: 997, baseType: !302, size: 64, offset: 11200)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !303, file: !304, line: 1005, baseType: !204, size: 128, offset: 11264)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !303, file: !304, line: 1006, baseType: !204, size: 128, offset: 11392)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !303, file: !304, line: 1009, baseType: !717, size: 64, offset: 11520)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !303, file: !304, line: 1010, baseType: !3219, size: 512, offset: 11584)
!3219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 512, elements: !734)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !303, file: !304, line: 1011, baseType: !204, size: 128, offset: 12096)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !303, file: !304, line: 1012, baseType: !204, size: 128, offset: 12224)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !303, file: !304, line: 1014, baseType: !1901, size: 64, offset: 12352)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !303, file: !304, line: 1017, baseType: !2046, size: 64, offset: 12416)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !303, file: !304, line: 1020, baseType: !2046, size: 64, offset: 12480)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !303, file: !304, line: 1023, baseType: !90, size: 64, offset: 12544)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !303, file: !304, line: 1025, baseType: !371, size: 64, offset: 12608)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !303, file: !304, line: 1026, baseType: !371, size: 64, offset: 12672)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !303, file: !304, line: 1031, baseType: !371, size: 64, offset: 12736)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !303, file: !304, line: 1032, baseType: !3230, size: 192, offset: 12800)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !304, line: 324, size: 192, elements: !3231)
!3231 = !{!3232, !3233, !3234}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3230, file: !304, line: 326, baseType: !371, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3230, file: !304, line: 327, baseType: !371, size: 64, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3230, file: !304, line: 328, baseType: !464, size: 32, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !303, file: !304, line: 1041, baseType: !295, size: 64, offset: 12992)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !303, file: !304, line: 1042, baseType: !295, size: 64, offset: 13056)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !303, file: !304, line: 1045, baseType: !371, size: 64, offset: 13120)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !303, file: !304, line: 1048, baseType: !371, size: 64, offset: 13184)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !303, file: !304, line: 1051, baseType: !295, size: 64, offset: 13248)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !303, file: !304, line: 1052, baseType: !295, size: 64, offset: 13312)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !303, file: !304, line: 1055, baseType: !3242, size: 640, offset: 13376)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3243, line: 132, size: 640, elements: !3244)
!3243 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3244 = !{!3245, !3251, !3252}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3242, file: !3243, line: 133, baseType: !3246, size: 576)
!3246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3247, size: 576, elements: !83)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3243, line: 117, size: 192, elements: !3248)
!3248 = !{!3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3247, file: !3243, line: 118, baseType: !371, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3247, file: !3243, line: 119, baseType: !500, size: 128, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3242, file: !3243, line: 134, baseType: !38, size: 32, offset: 576)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3242, file: !3243, line: 135, baseType: !38, size: 32, offset: 608)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !303, file: !304, line: 1058, baseType: !3254, size: 448, offset: 14016)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3243, line: 144, size: 448, elements: !3255)
!3255 = !{!3256, !3257, !3258}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3254, file: !3243, line: 145, baseType: !657, size: 128, align: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3254, file: !3243, line: 146, baseType: !677, size: 256, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3254, file: !3243, line: 147, baseType: !38, size: 32, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !303, file: !304, line: 1064, baseType: !761, size: 64, offset: 14464)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !303, file: !304, line: 1067, baseType: !761, size: 64, offset: 14528)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !303, file: !304, line: 1070, baseType: !761, size: 64, offset: 14592)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !303, file: !304, line: 1074, baseType: !794, size: 64, offset: 14656)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !303, file: !304, line: 1084, baseType: !3264, size: 128, offset: 14720)
!3264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !2656)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !303, file: !304, line: 1086, baseType: !3266, size: 64, offset: 14848)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !304, line: 55, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !303, file: !304, line: 1089, baseType: !3269, size: 64, offset: 14912)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3270, line: 12, size: 64, elements: !3271)
!3270 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3271 = !{!3272}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3269, file: !3270, line: 13, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3270, line: 8, flags: DIFlagFwdDecl)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !303, file: !304, line: 1090, baseType: !3276, size: 128, offset: 14976)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3277, line: 13, size: 128, elements: !3278)
!3277 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3278 = !{!3279}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3276, file: !3277, line: 14, baseType: !204, size: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !303, file: !304, line: 1097, baseType: !3281, size: 64, offset: 15104)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !304, line: 50, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !303, file: !304, line: 1100, baseType: !3284, size: 64, offset: 15168)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !304, line: 1100, flags: DIFlagFwdDecl)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !303, file: !304, line: 1103, baseType: !3287, size: 64, offset: 15232)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !304, line: 53, flags: DIFlagFwdDecl)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !303, file: !304, line: 1107, baseType: !3290, size: 64, offset: 15296)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !304, line: 56, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !303, file: !304, line: 1110, baseType: !3293, size: 64, offset: 15360)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3295, line: 93, size: 8768, elements: !3296)
!3295 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3344, !3353, !3354, !3356, !3357, !3358, !3361, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3399, !3400, !3407, !3417, !3420, !3421, !3424, !3425, !3426, !3427, !3428, !3429}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3294, file: !3295, line: 94, baseType: !319, size: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3294, file: !3295, line: 95, baseType: !149, size: 32, offset: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3294, file: !3295, line: 96, baseType: !70, size: 32, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3294, file: !3295, line: 97, baseType: !70, size: 32, offset: 96)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3294, file: !3295, line: 98, baseType: !204, size: 128, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3294, file: !3295, line: 100, baseType: !162, size: 192, offset: 256)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3294, file: !3295, line: 103, baseType: !302, size: 64, offset: 448)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3294, file: !3295, line: 106, baseType: !3305, size: 192, offset: 512)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !960, line: 32, size: 192, elements: !3306)
!3306 = !{!3307, !3308}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3305, file: !960, line: 33, baseType: !204, size: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3305, file: !960, line: 34, baseType: !3309, size: 64, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3310, line: 25, baseType: !3311)
!3310 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3310, line: 23, size: 64, elements: !3312)
!3312 = !{!3313}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3311, file: !3310, line: 24, baseType: !571, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3294, file: !3295, line: 109, baseType: !725, size: 64, offset: 704)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3294, file: !3295, line: 112, baseType: !70, size: 32, offset: 768)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3294, file: !3295, line: 114, baseType: !70, size: 32, offset: 800)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3294, file: !3295, line: 115, baseType: !302, size: 64, offset: 832)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3294, file: !3295, line: 118, baseType: !70, size: 32, offset: 896)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3294, file: !3295, line: 119, baseType: !38, size: 32, offset: 928)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3294, file: !3295, line: 121, baseType: !3321, size: 64, offset: 960)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3295, line: 80, size: 448, elements: !3323)
!3323 = !{!3324, !3325, !3331}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3322, file: !3295, line: 81, baseType: !149, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3322, file: !3295, line: 82, baseType: !3326, size: 128, offset: 64)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3295, line: 75, size: 128, elements: !3327)
!3327 = !{!3328, !3329}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3326, file: !3295, line: 76, baseType: !302, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3326, file: !3295, line: 77, baseType: !3330, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3322, file: !3295, line: 83, baseType: !1902, size: 256, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3294, file: !3295, line: 132, baseType: !38, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3294, file: !3295, line: 133, baseType: !38, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3294, file: !3295, line: 138, baseType: !38, size: 32, offset: 1056)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3294, file: !3295, line: 139, baseType: !204, size: 128, offset: 1088)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3294, file: !3295, line: 142, baseType: !439, size: 512, offset: 1216)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3294, file: !3295, line: 143, baseType: !447, size: 64, offset: 1728)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3294, file: !3295, line: 150, baseType: !3339, size: 256, offset: 1792)
!3339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3340, size: 256, elements: !110)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3295, line: 38, size: 128, elements: !3341)
!3341 = !{!3342, !3343}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3340, file: !3295, line: 39, baseType: !371, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3340, file: !3295, line: 40, baseType: !371, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3294, file: !3295, line: 156, baseType: !3345, size: 192, offset: 2048)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3295, line: 66, size: 192, elements: !3346)
!3346 = !{!3347}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3345, file: !3295, line: 67, baseType: !3348, size: 192)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3295, line: 47, size: 192, elements: !3349)
!3349 = !{!3350, !3351, !3352}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3348, file: !3295, line: 48, baseType: !672, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3348, file: !3295, line: 49, baseType: !672, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3348, file: !3295, line: 50, baseType: !672, size: 64, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3294, file: !3295, line: 160, baseType: !3242, size: 640, offset: 2240)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3294, file: !3295, line: 163, baseType: !3355, size: 256, offset: 2880)
!3355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 256, elements: !734)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3294, file: !3295, line: 169, baseType: !717, size: 64, offset: 3136)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3294, file: !3295, line: 172, baseType: !70, size: 32, offset: 3200)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3294, file: !3295, line: 174, baseType: !3359, size: 64, offset: 3264)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3295, line: 174, flags: DIFlagFwdDecl)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3294, file: !3295, line: 185, baseType: !3362, size: 64, offset: 3328)
!3362 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !490, line: 860, baseType: !3363)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 853, size: 64, elements: !3364)
!3364 = !{!3365, !3366}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3363, file: !490, line: 858, baseType: !999, size: 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3363, file: !490, line: 859, baseType: !167, size: 32, offset: 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3294, file: !3295, line: 186, baseType: !371, size: 64, offset: 3392)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3294, file: !3295, line: 186, baseType: !371, size: 64, offset: 3456)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3294, file: !3295, line: 186, baseType: !371, size: 64, offset: 3520)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3294, file: !3295, line: 186, baseType: !371, size: 64, offset: 3584)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3294, file: !3295, line: 187, baseType: !371, size: 64, offset: 3648)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3294, file: !3295, line: 188, baseType: !371, size: 64, offset: 3712)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3294, file: !3295, line: 189, baseType: !3230, size: 192, offset: 3776)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3294, file: !3295, line: 190, baseType: !295, size: 64, offset: 3968)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3294, file: !3295, line: 190, baseType: !295, size: 64, offset: 4032)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3294, file: !3295, line: 190, baseType: !295, size: 64, offset: 4096)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3294, file: !3295, line: 190, baseType: !295, size: 64, offset: 4160)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3294, file: !3295, line: 191, baseType: !295, size: 64, offset: 4224)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3294, file: !3295, line: 191, baseType: !295, size: 64, offset: 4288)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3294, file: !3295, line: 191, baseType: !295, size: 64, offset: 4352)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3294, file: !3295, line: 191, baseType: !295, size: 64, offset: 4416)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3294, file: !3295, line: 192, baseType: !295, size: 64, offset: 4480)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3294, file: !3295, line: 192, baseType: !295, size: 64, offset: 4544)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3294, file: !3295, line: 192, baseType: !295, size: 64, offset: 4608)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3294, file: !3295, line: 192, baseType: !295, size: 64, offset: 4672)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3294, file: !3295, line: 193, baseType: !295, size: 64, offset: 4736)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3294, file: !3295, line: 193, baseType: !295, size: 64, offset: 4800)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3294, file: !3295, line: 194, baseType: !3389, size: 448, offset: 4864)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3390, line: 12, size: 448, elements: !3391)
!3390 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3391 = !{!3392, !3393, !3394, !3395, !3396, !3397, !3398}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3389, file: !3390, line: 15, baseType: !371, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3389, file: !3390, line: 17, baseType: !371, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3389, file: !3390, line: 19, baseType: !371, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3389, file: !3390, line: 21, baseType: !371, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3389, file: !3390, line: 29, baseType: !371, size: 64, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3389, file: !3390, line: 35, baseType: !371, size: 64, offset: 320)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3389, file: !3390, line: 44, baseType: !371, size: 64, offset: 384)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3294, file: !3295, line: 202, baseType: !373, size: 64, offset: 5312)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3294, file: !3295, line: 213, baseType: !3401, size: 2048, offset: 5376)
!3401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3402, size: 2048, elements: !2656)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3403, line: 43, size: 128, elements: !3404)
!3403 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3404 = !{!3405, !3406}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3402, file: !3403, line: 44, baseType: !1187, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3402, file: !3403, line: 45, baseType: !1187, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3294, file: !3295, line: 216, baseType: !3408, size: 448, offset: 7424)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3295, line: 30, size: 448, elements: !3409)
!3409 = !{!3410, !3411, !3412, !3413, !3414, !3415, !3416}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3408, file: !3295, line: 31, baseType: !70, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3408, file: !3295, line: 32, baseType: !1143, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3408, file: !3295, line: 33, baseType: !295, size: 64, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3408, file: !3295, line: 34, baseType: !371, size: 64, offset: 192)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3408, file: !3295, line: 34, baseType: !371, size: 64, offset: 256)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3408, file: !3295, line: 35, baseType: !295, size: 64, offset: 320)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3408, file: !3295, line: 35, baseType: !295, size: 64, offset: 384)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3294, file: !3295, line: 219, baseType: !3418, size: 64, offset: 7872)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3295, line: 219, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3294, file: !3295, line: 222, baseType: !38, size: 32, offset: 7936)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3294, file: !3295, line: 223, baseType: !3422, size: 64, offset: 8000)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3295, line: 223, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3294, file: !3295, line: 230, baseType: !869, size: 8, offset: 8064)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3294, file: !3295, line: 231, baseType: !838, size: 16, offset: 8080)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3294, file: !3295, line: 232, baseType: !838, size: 16, offset: 8096)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3294, file: !3295, line: 234, baseType: !620, size: 64, offset: 8128)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3294, file: !3295, line: 237, baseType: !677, size: 256, offset: 8192)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3294, file: !3295, line: 243, baseType: !810, size: 320, offset: 8448)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !303, file: !304, line: 1111, baseType: !3431, size: 64, offset: 15424)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3295, line: 20, size: 16640, elements: !3433)
!3433 = !{!3434, !3435, !3436, !3437}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3432, file: !3295, line: 21, baseType: !167, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3432, file: !3295, line: 22, baseType: !319, size: 32, offset: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3432, file: !3295, line: 23, baseType: !162, size: 192, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3432, file: !3295, line: 24, baseType: !3438, size: 16384, offset: 256)
!3438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3439, size: 16384, elements: !1330)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !960, line: 51, size: 256, elements: !3440)
!3440 = !{!3441}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3439, file: !960, line: 52, baseType: !3442, size: 256)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !960, line: 37, size: 256, elements: !3443)
!3443 = !{!3444, !3451, !3452, !3456}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3442, file: !960, line: 39, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3446, line: 83, baseType: !3447)
!3446 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3446, line: 82, baseType: !3449)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{null, !70}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3442, file: !960, line: 40, baseType: !295, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3442, file: !960, line: 46, baseType: !3453, size: 64, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3446, line: 86, baseType: !3454)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3446, line: 85, baseType: !2264)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3442, file: !960, line: 48, baseType: !3309, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !303, file: !304, line: 1112, baseType: !3309, size: 64, offset: 15488)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !303, file: !304, line: 1113, baseType: !3309, size: 64, offset: 15552)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !303, file: !304, line: 1115, baseType: !3309, size: 64, offset: 15616)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !303, file: !304, line: 1116, baseType: !3305, size: 192, offset: 15680)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !303, file: !304, line: 1117, baseType: !295, size: 64, offset: 15872)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !303, file: !304, line: 1118, baseType: !1185, size: 64, offset: 15936)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !303, file: !304, line: 1119, baseType: !38, size: 32, offset: 16000)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !303, file: !304, line: 1121, baseType: !660, size: 64, offset: 16064)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !303, file: !304, line: 1125, baseType: !3466, size: 64, offset: 16128)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !304, line: 43, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !303, file: !304, line: 1127, baseType: !751, size: 32, offset: 16192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !303, file: !304, line: 1128, baseType: !38, size: 32, offset: 16224)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !303, file: !304, line: 1130, baseType: !3471, size: 128, offset: 16256)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3472, line: 37, size: 128, elements: !3473)
!3472 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3473 = !{!3474, !3475, !3476}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3471, file: !3472, line: 38, baseType: !70, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3471, file: !3472, line: 39, baseType: !149, size: 32, offset: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3471, file: !3472, line: 40, baseType: !3477, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3472, line: 24, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !303, file: !304, line: 1131, baseType: !3480, size: 256, offset: 16384)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3481, line: 12, size: 256, elements: !3482)
!3481 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3482 = !{!3483, !3484, !3485, !3486}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3480, file: !3481, line: 13, baseType: !882, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3480, file: !3481, line: 14, baseType: !295, size: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3480, file: !3481, line: 15, baseType: !295, size: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3480, file: !3481, line: 16, baseType: !869, size: 8, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !303, file: !304, line: 1134, baseType: !371, size: 64, offset: 16640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !303, file: !304, line: 1135, baseType: !371, size: 64, offset: 16704)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !303, file: !304, line: 1138, baseType: !167, size: 32, offset: 16768)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !303, file: !304, line: 1141, baseType: !464, size: 32, offset: 16800)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !303, file: !304, line: 1143, baseType: !3492, size: 64, offset: 16832)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !304, line: 735, size: 64, elements: !3493)
!3493 = !{!3494}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3492, file: !304, line: 736, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !303, file: !304, line: 1147, baseType: !503, size: 128, offset: 16896)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !303, file: !304, line: 1149, baseType: !302, size: 64, offset: 17024)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !303, file: !304, line: 1151, baseType: !3499, size: 64, offset: 17088)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !304, line: 1151, flags: DIFlagFwdDecl)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !303, file: !304, line: 1188, baseType: !90, size: 64, offset: 17152)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !303, file: !304, line: 1191, baseType: !3503, size: 64, offset: 17216)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !304, line: 44, flags: DIFlagFwdDecl)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !303, file: !304, line: 1194, baseType: !3506, size: 64, offset: 17280)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !304, line: 45, flags: DIFlagFwdDecl)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !303, file: !304, line: 1197, baseType: !3509, size: 64, offset: 17344)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !304, line: 61, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !303, file: !304, line: 1199, baseType: !3512, size: 64, offset: 17408)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3514, line: 99, size: 128, elements: !3515)
!3514 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3515 = !{!3516, !3517, !3518}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3513, file: !3514, line: 100, baseType: !670, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3513, file: !3514, line: 101, baseType: !149, size: 32, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3513, file: !3514, line: 103, baseType: !133, size: 16, offset: 96)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !303, file: !304, line: 1202, baseType: !3520, size: 64, offset: 17472)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !304, line: 48, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !303, file: !304, line: 1205, baseType: !295, size: 64, offset: 17536)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !303, file: !304, line: 1206, baseType: !3524, size: 64, offset: 17600)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !960, line: 14, baseType: !3526)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !960, line: 12, size: 384, elements: !3527)
!3527 = !{!3528}
!3528 = !DIDerivedType(tag: DW_TAG_member, scope: !3526, file: !960, line: 13, baseType: !3529, size: 384)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3526, file: !960, line: 13, size: 384, elements: !3530)
!3530 = !{!3531, !3532, !3533, !3534}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3529, file: !960, line: 13, baseType: !70, size: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3529, file: !960, line: 13, baseType: !70, size: 32, offset: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3529, file: !960, line: 13, baseType: !70, size: 32, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3529, file: !960, line: 13, baseType: !3535, size: 256, offset: 128)
!3535 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3536, line: 37, size: 256, elements: !3537)
!3536 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3537 = !{!3538, !3543, !3556, !3562, !3571, !3598, !3603}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3535, file: !3536, line: 42, baseType: !3539, size: 64)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3535, file: !3536, line: 39, size: 64, elements: !3540)
!3540 = !{!3541, !3542}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3539, file: !3536, line: 40, baseType: !3207, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3539, file: !3536, line: 41, baseType: !757, size: 32, offset: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3535, file: !3536, line: 50, baseType: !3544, size: 192)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3535, file: !3536, line: 45, size: 192, elements: !3545)
!3545 = !{!3546, !3548, !3549, !3555}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3544, file: !3536, line: 46, baseType: !3547, size: 32)
!3547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !487, line: 95, baseType: !70)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3544, file: !3536, line: 47, baseType: !70, size: 32, offset: 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3544, file: !3536, line: 48, baseType: !3550, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3536, line: 11, baseType: !3551)
!3551 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3536, line: 8, size: 64, elements: !3552)
!3552 = !{!3553, !3554}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3551, file: !3536, line: 9, baseType: !70, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3551, file: !3536, line: 10, baseType: !90, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3544, file: !3536, line: 49, baseType: !70, size: 32, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3535, file: !3536, line: 57, baseType: !3557, size: 128)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3535, file: !3536, line: 53, size: 128, elements: !3558)
!3558 = !{!3559, !3560, !3561}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3557, file: !3536, line: 54, baseType: !3207, size: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3557, file: !3536, line: 55, baseType: !757, size: 32, offset: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3557, file: !3536, line: 56, baseType: !3550, size: 64, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3535, file: !3536, line: 66, baseType: !3563, size: 256)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3535, file: !3536, line: 60, size: 256, elements: !3564)
!3564 = !{!3565, !3566, !3567, !3568, !3570}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3563, file: !3536, line: 61, baseType: !3207, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3563, file: !3536, line: 62, baseType: !757, size: 32, offset: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3563, file: !3536, line: 63, baseType: !70, size: 32, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3563, file: !3536, line: 64, baseType: !3569, size: 64, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !487, line: 94, baseType: !1184)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3563, file: !3536, line: 65, baseType: !3569, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3535, file: !3536, line: 105, baseType: !3572, size: 256)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3535, file: !3536, line: 69, size: 256, elements: !3573)
!3573 = !{!3574, !3575}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3572, file: !3536, line: 70, baseType: !90, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, scope: !3572, file: !3536, line: 79, baseType: !3576, size: 192, offset: 64)
!3576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3572, file: !3536, line: 79, size: 192, elements: !3577)
!3577 = !{!3578, !3579, !3580, !3587, !3592}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3576, file: !3536, line: 81, baseType: !70, size: 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3576, file: !3536, line: 86, baseType: !838, size: 16)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3576, file: !3536, line: 92, baseType: !3581, size: 192)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !3536, line: 88, size: 192, elements: !3582)
!3582 = !{!3583, !3585, !3586}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3581, file: !3536, line: 89, baseType: !3584, size: 64)
!3584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !114)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3581, file: !3536, line: 90, baseType: !90, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3581, file: !3536, line: 91, baseType: !90, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3576, file: !3536, line: 97, baseType: !3588, size: 96)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !3536, line: 94, size: 96, elements: !3589)
!3589 = !{!3590, !3591}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3588, file: !3536, line: 95, baseType: !3584, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3588, file: !3536, line: 96, baseType: !314, size: 32, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3576, file: !3536, line: 103, baseType: !3593, size: 128)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !3536, line: 99, size: 128, elements: !3594)
!3594 = !{!3595, !3596, !3597}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3593, file: !3536, line: 100, baseType: !295, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3593, file: !3536, line: 101, baseType: !314, size: 32, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3593, file: !3536, line: 102, baseType: !314, size: 32, offset: 96)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3535, file: !3536, line: 111, baseType: !3599, size: 128)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3535, file: !3536, line: 108, size: 128, elements: !3600)
!3600 = !{!3601, !3602}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3599, file: !3536, line: 109, baseType: !1143, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3599, file: !3536, line: 110, baseType: !70, size: 32, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3535, file: !3536, line: 118, baseType: !3604, size: 128)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3535, file: !3536, line: 114, size: 128, elements: !3605)
!3605 = !{!3606, !3607, !3608}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3604, file: !3536, line: 115, baseType: !90, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3604, file: !3536, line: 116, baseType: !70, size: 32, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3604, file: !3536, line: 117, baseType: !38, size: 32, offset: 96)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !303, file: !304, line: 1208, baseType: !3389, size: 448, offset: 17664)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !303, file: !304, line: 1215, baseType: !371, size: 64, offset: 18112)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !303, file: !304, line: 1217, baseType: !371, size: 64, offset: 18176)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !303, file: !304, line: 1219, baseType: !371, size: 64, offset: 18240)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !303, file: !304, line: 1223, baseType: !3614, size: 64, offset: 18304)
!3614 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3615, line: 99, baseType: !3616)
!3615 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3615, line: 99, size: 64, elements: !3617)
!3617 = !{!3618}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3616, file: !3615, line: 99, baseType: !571, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !303, file: !304, line: 1225, baseType: !999, size: 32, offset: 18368)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !303, file: !304, line: 1226, baseType: !70, size: 32, offset: 18400)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !303, file: !304, line: 1227, baseType: !70, size: 32, offset: 18432)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !303, file: !304, line: 1231, baseType: !3623, size: 64, offset: 18496)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !304, line: 1231, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !303, file: !304, line: 1233, baseType: !204, size: 128, offset: 18560)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !303, file: !304, line: 1240, baseType: !3627, size: 64, offset: 18688)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !304, line: 62, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !303, file: !304, line: 1242, baseType: !3630, size: 64, offset: 18752)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !304, line: 1242, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !303, file: !304, line: 1244, baseType: !204, size: 128, offset: 18816)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !303, file: !304, line: 1245, baseType: !3634, size: 64, offset: 18944)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !304, line: 51, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !303, file: !304, line: 1246, baseType: !677, size: 256, offset: 19008)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !303, file: !304, line: 1247, baseType: !38, size: 32, offset: 19264)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !303, file: !304, line: 1250, baseType: !3639, size: 64, offset: 19328)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !304, line: 57, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !303, file: !304, line: 1251, baseType: !677, size: 256, offset: 19392)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !303, file: !304, line: 1252, baseType: !204, size: 128, offset: 19648)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !303, file: !304, line: 1259, baseType: !1718, size: 64, offset: 19776)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !303, file: !304, line: 1260, baseType: !838, size: 16, offset: 19840)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !303, file: !304, line: 1261, baseType: !838, size: 16, offset: 19856)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !303, file: !304, line: 1314, baseType: !3647, size: 64, offset: 19904)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3649, line: 62, size: 256, align: 256, elements: !3650)
!3649 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3656, !3657}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3648, file: !3649, line: 75, baseType: !314, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3648, file: !3649, line: 90, baseType: !314, size: 32, offset: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3648, file: !3649, line: 112, baseType: !372, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3648, file: !3649, line: 132, baseType: !314, size: 32, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3648, file: !3649, line: 140, baseType: !314, size: 32, offset: 160)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3648, file: !3649, line: 149, baseType: !314, size: 32, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3648, file: !3649, line: 154, baseType: !3658, offset: 224)
!3658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, elements: !747)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !303, file: !304, line: 1315, baseType: !313, size: 32, offset: 19968)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !303, file: !304, line: 1316, baseType: !313, size: 32, offset: 20000)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !303, file: !304, line: 1321, baseType: !295, size: 64, offset: 20032)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !303, file: !304, line: 1325, baseType: !70, size: 32, offset: 20096)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !303, file: !304, line: 1326, baseType: !70, size: 32, offset: 20128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !303, file: !304, line: 1327, baseType: !70, size: 32, offset: 20160)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !303, file: !304, line: 1328, baseType: !70, size: 32, offset: 20192)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !303, file: !304, line: 1329, baseType: !657, size: 128, align: 64, offset: 20224)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !303, file: !304, line: 1332, baseType: !3668, size: 128, offset: 20352)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3669, line: 51, size: 128, elements: !3670)
!3669 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3670 = !{!3671, !3676, !3677}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3668, file: !3669, line: 60, baseType: !3672, size: 64)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3673, line: 7, size: 64, elements: !3674)
!3673 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3674 = !{!3675}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3672, file: !3673, line: 12, baseType: !568, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3668, file: !3669, line: 63, baseType: !869, size: 8, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3668, file: !3669, line: 70, baseType: !869, size: 8, offset: 72)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !303, file: !304, line: 1335, baseType: !2894, size: 64, offset: 20480)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !303, file: !304, line: 1337, baseType: !3680, size: 128, offset: 20544)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3669, line: 39, size: 128, elements: !3681)
!3681 = !{!3682, !3683, !3684}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3680, file: !3669, line: 40, baseType: !1411, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3680, file: !3669, line: 42, baseType: !314, size: 32, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3680, file: !3669, line: 43, baseType: !314, size: 32, offset: 96)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !303, file: !304, line: 1340, baseType: !3686, size: 64, offset: 20672)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !304, line: 69, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !303, file: !304, line: 1351, baseType: !70, size: 32, offset: 20736)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !303, file: !304, line: 1352, baseType: !70, size: 32, offset: 20768)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !303, file: !304, line: 1354, baseType: !295, size: 64, offset: 20800)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !303, file: !304, line: 1364, baseType: !371, size: 64, offset: 20864)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !303, file: !304, line: 1365, baseType: !371, size: 64, offset: 20928)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !303, file: !304, line: 1412, baseType: !295, size: 64, offset: 20992)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !303, file: !304, line: 1453, baseType: !3695, size: 64, offset: 21056)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !304, line: 1453, flags: DIFlagFwdDecl)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !303, file: !304, line: 1457, baseType: !3698, size: 64, offset: 21120)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !272, line: 61, size: 576, elements: !3700)
!3700 = !{!3701, !3702, !3721, !3724, !3725, !3758, !3768}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3699, file: !272, line: 62, baseType: !271, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !272, line: 64, baseType: !3703, size: 192, offset: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3699, file: !272, line: 64, size: 192, elements: !3704)
!3704 = !{!3705, !3716}
!3705 = !DIDerivedType(tag: DW_TAG_member, scope: !3703, file: !272, line: 65, baseType: !3706, size: 192)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3703, file: !272, line: 65, size: 192, elements: !3707)
!3707 = !{!3708, !3715}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3706, file: !272, line: 66, baseType: !3709, size: 128)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3710, line: 50, size: 128, elements: !3711)
!3710 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3711 = !{!3712, !3713, !3714}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3709, file: !3710, line: 52, baseType: !295, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3709, file: !3710, line: 54, baseType: !38, size: 32, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3709, file: !3710, line: 55, baseType: !38, size: 32, offset: 96)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3706, file: !272, line: 67, baseType: !295, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_member, scope: !3703, file: !272, line: 70, baseType: !3717, size: 192)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3703, file: !272, line: 70, size: 192, elements: !3718)
!3718 = !{!3719, !3720}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3717, file: !272, line: 71, baseType: !657, size: 128, align: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3717, file: !272, line: 72, baseType: !295, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3699, file: !272, line: 76, baseType: !3722, size: 64, offset: 256)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !272, line: 76, flags: DIFlagFwdDecl)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3699, file: !272, line: 77, baseType: !295, size: 64, offset: 320)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3699, file: !272, line: 79, baseType: !3726, size: 64, offset: 384)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3710, line: 25, size: 256, elements: !3728)
!3728 = !{!3729, !3735, !3739}
!3729 = !DIDerivedType(tag: DW_TAG_member, scope: !3727, file: !3710, line: 26, baseType: !3730, size: 128)
!3730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3727, file: !3710, line: 26, size: 128, elements: !3731)
!3731 = !{!3732, !3734}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3730, file: !3710, line: 27, baseType: !3733, size: 128)
!3733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 128, elements: !2656)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3730, file: !3710, line: 28, baseType: !3733, size: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3727, file: !3710, line: 31, baseType: !3736, size: 64, offset: 128)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3738)
!3738 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3710, line: 23, flags: DIFlagFwdDecl)
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !3727, file: !3710, line: 33, baseType: !3740, size: 64, offset: 192)
!3740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3727, file: !3710, line: 33, size: 64, elements: !3741)
!3741 = !{!3742, !3748, !3753}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3740, file: !3710, line: 38, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3740, file: !3710, line: 34, size: 64, elements: !3744)
!3744 = !{!3745, !3746, !3747}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3743, file: !3710, line: 35, baseType: !802, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3743, file: !3710, line: 36, baseType: !191, size: 8, offset: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3743, file: !3710, line: 37, baseType: !191, size: 8, offset: 40)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3740, file: !3710, line: 42, baseType: !3749, size: 16)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3740, file: !3710, line: 39, size: 16, elements: !3750)
!3750 = !{!3751, !3752}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3749, file: !3710, line: 40, baseType: !191, size: 8)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3749, file: !3710, line: 41, baseType: !191, size: 8, offset: 8)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3740, file: !3710, line: 46, baseType: !3754, size: 16)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3740, file: !3710, line: 43, size: 16, elements: !3755)
!3755 = !{!3756, !3757}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3754, file: !3710, line: 44, baseType: !191, size: 8)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3754, file: !3710, line: 45, baseType: !191, size: 8, offset: 8)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3699, file: !272, line: 81, baseType: !3759, size: 64, offset: 448)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !272, line: 85, size: 384, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3760, file: !272, line: 86, baseType: !3722, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3760, file: !272, line: 87, baseType: !295, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3760, file: !272, line: 88, baseType: !295, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3760, file: !272, line: 89, baseType: !295, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3760, file: !272, line: 90, baseType: !869, size: 8, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3760, file: !272, line: 92, baseType: !3759, size: 64, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3699, file: !272, line: 82, baseType: !38, size: 32, offset: 512)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !303, file: !304, line: 1463, baseType: !3770, offset: 21184)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !304, line: 739, elements: !642)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !303, file: !304, line: 1470, baseType: !657, size: 128, align: 64, offset: 21184)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !303, file: !304, line: 1471, baseType: !319, size: 32, offset: 21312)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !303, file: !304, line: 1472, baseType: !70, size: 32, offset: 21344)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !303, file: !304, line: 1474, baseType: !302, size: 64, offset: 21376)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !303, file: !304, line: 1475, baseType: !2148, size: 320, offset: 21440)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !303, file: !304, line: 1478, baseType: !3777, size: 64, offset: 21760)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !304, line: 1478, flags: DIFlagFwdDecl)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !303, file: !304, line: 1482, baseType: !319, size: 32, offset: 21824)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !303, file: !304, line: 1489, baseType: !90, size: 64, offset: 21888)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !303, file: !304, line: 1504, baseType: !90, size: 64, offset: 21952)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !303, file: !304, line: 1505, baseType: !372, size: 64, offset: 22016)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !303, file: !304, line: 1506, baseType: !371, size: 64, offset: 22080)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !303, file: !304, line: 1507, baseType: !372, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !303, file: !304, line: 1508, baseType: !372, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !303, file: !304, line: 1509, baseType: !372, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !303, file: !304, line: 1510, baseType: !657, size: 128, align: 64, offset: 22208)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !303, file: !304, line: 1511, baseType: !70, size: 32, offset: 22336)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !303, file: !304, line: 1515, baseType: !3790, size: 64, offset: 22400)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !333, line: 56, size: 64, elements: !3791)
!3791 = !{!3792}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3790, file: !333, line: 57, baseType: !336, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !303, file: !304, line: 1518, baseType: !3790, size: 64, offset: 22464)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !303, file: !304, line: 1528, baseType: !657, size: 128, align: 64, offset: 22528)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !303, file: !304, line: 1552, baseType: !3796, size: 35328, offset: 23040)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3797, line: 430, size: 35328, elements: !3798)
!3797 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3798 = !{!3799, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3828, !3829, !3830, !3831, !3832, !3833, !3836, !3837, !3838, !3839}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3796, file: !3797, line: 432, baseType: !3800, size: 192)
!3800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3801, size: 192, elements: !83)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3802, line: 16, size: 64, elements: !3803)
!3802 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3801, file: !3802, line: 17, baseType: !200, size: 16)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3801, file: !3802, line: 18, baseType: !200, size: 16, offset: 16)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3801, file: !3802, line: 19, baseType: !200, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3801, file: !3802, line: 19, baseType: !200, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3801, file: !3802, line: 19, baseType: !200, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3801, file: !3802, line: 19, baseType: !200, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3801, file: !3802, line: 19, baseType: !200, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3801, file: !3802, line: 20, baseType: !200, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3801, file: !3802, line: 20, baseType: !200, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3801, file: !3802, line: 20, baseType: !200, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3801, file: !3802, line: 20, baseType: !200, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3801, file: !3802, line: 20, baseType: !200, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3801, file: !3802, line: 20, baseType: !200, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3796, file: !3797, line: 436, baseType: !295, size: 64, offset: 192)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3796, file: !3797, line: 440, baseType: !133, size: 16, offset: 256)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3796, file: !3797, line: 441, baseType: !133, size: 16, offset: 272)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3796, file: !3797, line: 442, baseType: !133, size: 16, offset: 288)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3796, file: !3797, line: 443, baseType: !133, size: 16, offset: 304)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3796, file: !3797, line: 447, baseType: !295, size: 64, offset: 320)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3796, file: !3797, line: 448, baseType: !295, size: 64, offset: 384)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3796, file: !3797, line: 459, baseType: !3825, size: 256, offset: 448)
!3825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3826, size: 256, elements: !734)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3797, line: 428, flags: DIFlagFwdDecl)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3796, file: !3797, line: 461, baseType: !295, size: 64, offset: 704)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3796, file: !3797, line: 463, baseType: !295, size: 64, offset: 768)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3796, file: !3797, line: 465, baseType: !295, size: 64, offset: 832)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3796, file: !3797, line: 466, baseType: !295, size: 64, offset: 896)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3796, file: !3797, line: 467, baseType: !295, size: 64, offset: 960)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3796, file: !3797, line: 473, baseType: !3834, size: 64, offset: 1024)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3797, line: 10, flags: DIFlagFwdDecl)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3796, file: !3797, line: 480, baseType: !295, size: 64, offset: 1088)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3796, file: !3797, line: 482, baseType: !38, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3796, file: !3797, line: 491, baseType: !313, size: 32, offset: 1184)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3796, file: !3797, line: 501, baseType: !3840, size: 33792, offset: 1536)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3841, line: 448, size: 33792, elements: !3842)
!3841 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3842 = !{!3843, !3844, !3845, !4005, !4006, !4012, !4013}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3840, file: !3841, line: 461, baseType: !38, size: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3840, file: !3841, line: 468, baseType: !295, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3840, file: !3841, line: 476, baseType: !3846, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3841, line: 356, size: 33280, align: 512, elements: !3848)
!3848 = !{!3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3847, file: !3841, line: 358, baseType: !38, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3847, file: !3841, line: 361, baseType: !38, size: 32, offset: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3847, file: !3841, line: 364, baseType: !371, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3847, file: !3841, line: 367, baseType: !371, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3847, file: !3841, line: 370, baseType: !371, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3847, file: !3841, line: 373, baseType: !38, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3847, file: !3841, line: 376, baseType: !38, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3847, file: !3841, line: 391, baseType: !38, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3847, file: !3841, line: 394, baseType: !38, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3847, file: !3841, line: 397, baseType: !3859, size: 32768, offset: 512)
!3859 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3841, line: 348, size: 32768, elements: !3860)
!3860 = !{!3861, !3876, !3911, !3988, !4001}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3859, file: !3841, line: 349, baseType: !3862, size: 896)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3841, line: 12, size: 896, elements: !3863)
!3863 = !{!3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3875}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3862, file: !3841, line: 13, baseType: !313, size: 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3862, file: !3841, line: 14, baseType: !313, size: 32, offset: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3862, file: !3841, line: 15, baseType: !313, size: 32, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3862, file: !3841, line: 16, baseType: !313, size: 32, offset: 96)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3862, file: !3841, line: 17, baseType: !313, size: 32, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3862, file: !3841, line: 18, baseType: !313, size: 32, offset: 160)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3862, file: !3841, line: 19, baseType: !313, size: 32, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3862, file: !3841, line: 22, baseType: !3872, size: 640, offset: 224)
!3872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 640, elements: !3873)
!3873 = !{!3874}
!3874 = !DISubrange(count: 20)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3862, file: !3841, line: 25, baseType: !313, size: 32, offset: 864)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3859, file: !3841, line: 350, baseType: !3877, size: 4096, align: 128)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3841, line: 34, size: 4096, align: 128, elements: !3878)
!3878 = !{!3879, !3880, !3881, !3882, !3883, !3898, !3899, !3900, !3902, !3904, !3906}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3877, file: !3841, line: 35, baseType: !200, size: 16)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3877, file: !3841, line: 36, baseType: !200, size: 16, offset: 16)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3877, file: !3841, line: 37, baseType: !200, size: 16, offset: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3877, file: !3841, line: 38, baseType: !200, size: 16, offset: 48)
!3883 = !DIDerivedType(tag: DW_TAG_member, scope: !3877, file: !3841, line: 39, baseType: !3884, size: 128, offset: 64)
!3884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3877, file: !3841, line: 39, size: 128, elements: !3885)
!3885 = !{!3886, !3891}
!3886 = !DIDerivedType(tag: DW_TAG_member, scope: !3884, file: !3841, line: 40, baseType: !3887, size: 128)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3884, file: !3841, line: 40, size: 128, elements: !3888)
!3888 = !{!3889, !3890}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3887, file: !3841, line: 41, baseType: !371, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3887, file: !3841, line: 42, baseType: !371, size: 64, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, scope: !3884, file: !3841, line: 44, baseType: !3892, size: 128)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3884, file: !3841, line: 44, size: 128, elements: !3893)
!3893 = !{!3894, !3895, !3896, !3897}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3892, file: !3841, line: 45, baseType: !313, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3892, file: !3841, line: 46, baseType: !313, size: 32, offset: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3892, file: !3841, line: 47, baseType: !313, size: 32, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3892, file: !3841, line: 48, baseType: !313, size: 32, offset: 96)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3877, file: !3841, line: 51, baseType: !313, size: 32, offset: 192)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3877, file: !3841, line: 52, baseType: !313, size: 32, offset: 224)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3877, file: !3841, line: 55, baseType: !3901, size: 1024, offset: 256)
!3901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 1024, elements: !2647)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3877, file: !3841, line: 58, baseType: !3903, size: 2048, offset: 1280)
!3903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 2048, elements: !1330)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3877, file: !3841, line: 60, baseType: !3905, size: 384, offset: 3328)
!3905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 384, elements: !76)
!3906 = !DIDerivedType(tag: DW_TAG_member, scope: !3877, file: !3841, line: 62, baseType: !3907, size: 384, offset: 3712)
!3907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3877, file: !3841, line: 62, size: 384, elements: !3908)
!3908 = !{!3909, !3910}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3907, file: !3841, line: 63, baseType: !3905, size: 384)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3907, file: !3841, line: 64, baseType: !3905, size: 384)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3859, file: !3841, line: 351, baseType: !3912, size: 1088)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3841, line: 79, size: 1088, elements: !3913)
!3913 = !{!3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3987}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3912, file: !3841, line: 80, baseType: !313, size: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3912, file: !3841, line: 81, baseType: !313, size: 32, offset: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3912, file: !3841, line: 82, baseType: !313, size: 32, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3912, file: !3841, line: 83, baseType: !313, size: 32, offset: 96)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3912, file: !3841, line: 84, baseType: !313, size: 32, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3912, file: !3841, line: 85, baseType: !313, size: 32, offset: 160)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3912, file: !3841, line: 86, baseType: !313, size: 32, offset: 192)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3912, file: !3841, line: 88, baseType: !3872, size: 640, offset: 224)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3912, file: !3841, line: 89, baseType: !191, size: 8, offset: 864)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3912, file: !3841, line: 90, baseType: !191, size: 8, offset: 872)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3912, file: !3841, line: 91, baseType: !191, size: 8, offset: 880)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3912, file: !3841, line: 92, baseType: !191, size: 8, offset: 888)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3912, file: !3841, line: 93, baseType: !191, size: 8, offset: 896)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3912, file: !3841, line: 94, baseType: !191, size: 8, offset: 904)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3912, file: !3841, line: 95, baseType: !3929, size: 64, offset: 960)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3931, line: 11, size: 128, elements: !3932)
!3931 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3932 = !{!3933, !3934}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3930, file: !3931, line: 12, baseType: !1143, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3930, file: !3931, line: 13, baseType: !3935, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3937, line: 103, size: 1344, elements: !3938)
!3937 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3938 = !{!3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3967, !3968, !3969}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3936, file: !3937, line: 109, baseType: !295, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3936, file: !3937, line: 110, baseType: !295, size: 64, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3936, file: !3937, line: 111, baseType: !295, size: 64, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3936, file: !3937, line: 112, baseType: !295, size: 64, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3936, file: !3937, line: 113, baseType: !295, size: 64, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3936, file: !3937, line: 114, baseType: !295, size: 64, offset: 320)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3936, file: !3937, line: 117, baseType: !295, size: 64, offset: 384)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3936, file: !3937, line: 118, baseType: !295, size: 64, offset: 448)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3936, file: !3937, line: 119, baseType: !295, size: 64, offset: 512)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3936, file: !3937, line: 120, baseType: !295, size: 64, offset: 576)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3936, file: !3937, line: 121, baseType: !295, size: 64, offset: 640)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3936, file: !3937, line: 122, baseType: !295, size: 64, offset: 704)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3936, file: !3937, line: 123, baseType: !295, size: 64, offset: 768)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3936, file: !3937, line: 124, baseType: !295, size: 64, offset: 832)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3936, file: !3937, line: 125, baseType: !295, size: 64, offset: 896)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3936, file: !3937, line: 139, baseType: !295, size: 64, offset: 960)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3936, file: !3937, line: 142, baseType: !295, size: 64, offset: 1024)
!3956 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !3937, line: 144, baseType: !3957, size: 64, offset: 1088)
!3957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3936, file: !3937, line: 144, size: 64, elements: !3958)
!3958 = !{!3959, !3960, !3961}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3957, file: !3937, line: 146, baseType: !200, size: 16)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3957, file: !3937, line: 148, baseType: !371, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3957, file: !3937, line: 150, baseType: !3962, size: 64)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3937, line: 59, size: 64, elements: !3963)
!3963 = !{!3964, !3965, !3966}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3962, file: !3937, line: 61, baseType: !371, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3962, file: !3937, line: 63, baseType: !371, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3962, file: !3937, line: 65, baseType: !371, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3936, file: !3937, line: 153, baseType: !295, size: 64, offset: 1152)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3936, file: !3937, line: 154, baseType: !295, size: 64, offset: 1216)
!3969 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !3937, line: 156, baseType: !3970, size: 64, offset: 1280)
!3970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3936, file: !3937, line: 156, size: 64, elements: !3971)
!3971 = !{!3972, !3973, !3974}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3970, file: !3937, line: 158, baseType: !200, size: 16)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3970, file: !3937, line: 160, baseType: !371, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3970, file: !3937, line: 162, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3937, line: 69, size: 64, elements: !3976)
!3976 = !{!3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3975, file: !3937, line: 71, baseType: !371, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3975, file: !3937, line: 73, baseType: !371, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3975, file: !3937, line: 75, baseType: !371, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3975, file: !3937, line: 77, baseType: !371, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3975, file: !3937, line: 80, baseType: !371, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3975, file: !3937, line: 83, baseType: !371, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3975, file: !3937, line: 86, baseType: !371, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3975, file: !3937, line: 88, baseType: !371, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3975, file: !3937, line: 93, baseType: !371, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3975, file: !3937, line: 100, baseType: !371, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3912, file: !3841, line: 96, baseType: !313, size: 32, offset: 1024)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3859, file: !3841, line: 352, baseType: !3989, size: 4608, align: 512)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3841, line: 333, size: 4608, align: 512, elements: !3990)
!3990 = !{!3991, !3992, !3999}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3989, file: !3841, line: 334, baseType: !3877, size: 4096, align: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3989, file: !3841, line: 335, baseType: !3993, size: 512, offset: 4096)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3841, line: 312, size: 512, elements: !3994)
!3994 = !{!3995, !3996, !3997}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3993, file: !3841, line: 313, baseType: !371, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3993, file: !3841, line: 314, baseType: !371, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3993, file: !3841, line: 315, baseType: !3998, size: 384, offset: 128)
!3998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 384, elements: !856)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3989, file: !3841, line: 336, baseType: !4000, offset: 4608)
!4000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, elements: !747)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3859, file: !3841, line: 353, baseType: !4002, size: 32768)
!4002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 32768, elements: !4003)
!4003 = !{!4004}
!4004 = !DISubrange(count: 4096)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3840, file: !3841, line: 484, baseType: !3846, size: 64, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3840, file: !3841, line: 491, baseType: !4007, size: 128, offset: 256)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3841, line: 404, size: 128, elements: !4008)
!4008 = !{!4009, !4010, !4011}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4007, file: !3841, line: 424, baseType: !371, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4007, file: !3841, line: 432, baseType: !38, size: 32, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4007, file: !3841, line: 440, baseType: !38, size: 32, offset: 96)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3840, file: !3841, line: 498, baseType: !4007, size: 128, offset: 384)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3840, file: !3841, line: 508, baseType: !3847, size: 33280, align: 512, offset: 512)
!4014 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !150, line: 42, baseType: !295)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!4019 = !{!0, !4020, !4022, !4027}
!4020 = !DIGlobalVariableExpression(var: !4021, expr: !DIExpression())
!4021 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !3264, isLocal: true, isDefinition: true)
!4022 = !DIGlobalVariableExpression(var: !4023, expr: !DIExpression())
!4023 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !4024, isLocal: true, isDefinition: true)
!4024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 208, elements: !4025)
!4025 = !{!4026}
!4026 = !DISubrange(count: 26)
!4027 = !DIGlobalVariableExpression(var: !4028, expr: !DIExpression())
!4028 = distinct !DIGlobalVariable(scope: null, file: !284, line: 480, type: !4029, isLocal: true, isDefinition: true)
!4029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 168, elements: !4030)
!4030 = !{!4031}
!4031 = !DISubrange(count: 21)
!4032 = !{!4033, !4034}
!4033 = !DILocalVariable(name: "poolsize", arg: 1, scope: !2, file: !3, line: 18, type: !70)
!4034 = !DILocalVariable(name: "f", scope: !2, file: !3, line: 20, type: !6)
!4035 = !{i32 7, !"Dwarf Version", i32 5}
!4036 = !{i32 2, !"Debug Info Version", i32 3}
!4037 = !{i32 1, !"wchar_size", i32 2}
!4038 = !{i32 8, !"cf-protection-branch", i32 1}
!4039 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4040 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4041 = !{i32 1, !"Code Model", i32 2}
!4042 = !{i32 1, !"override-stack-alignment", i32 8}
!4043 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4044 = !DILocation(line: 18, column: 43, scope: !2)
!4045 = !DILocation(line: 20, column: 2, scope: !2)
!4046 = !DILocation(line: 20, column: 23, scope: !2)
!4047 = !DILocation(line: 22, column: 6, scope: !2)
!4048 = !DILocation(line: 22, column: 4, scope: !2)
!4049 = !DILocation(line: 23, column: 7, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !2, file: !3, line: 23, column: 6)
!4051 = !DILocation(line: 23, column: 6, scope: !2)
!4052 = !DILocation(line: 24, column: 3, scope: !4050)
!4053 = !DILocation(line: 26, column: 29, scope: !2)
!4054 = !DILocation(line: 26, column: 12, scope: !2)
!4055 = !DILocation(line: 26, column: 2, scope: !2)
!4056 = !DILocation(line: 26, column: 5, scope: !2)
!4057 = !DILocation(line: 26, column: 10, scope: !2)
!4058 = !DILocation(line: 27, column: 6, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !2, file: !3, line: 27, column: 6)
!4060 = !DILocation(line: 27, column: 9, scope: !4059)
!4061 = !DILocation(line: 27, column: 14, scope: !4059)
!4062 = !DILocation(line: 27, column: 6, scope: !2)
!4063 = !DILocation(line: 28, column: 9, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 27, column: 23)
!4065 = !DILocation(line: 28, column: 3, scope: !4064)
!4066 = !DILocation(line: 29, column: 3, scope: !4064)
!4067 = !DILocation(line: 31, column: 24, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !2, file: !3, line: 31, column: 6)
!4069 = !DILocation(line: 31, column: 27, scope: !4068)
!4070 = !DILocation(line: 31, column: 6, scope: !4068)
!4071 = !DILocation(line: 31, column: 33, scope: !4068)
!4072 = !DILocation(line: 31, column: 6, scope: !2)
!4073 = !DILocation(line: 32, column: 24, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 31, column: 38)
!4075 = !DILocation(line: 32, column: 27, scope: !4074)
!4076 = !DILocation(line: 32, column: 3, scope: !4074)
!4077 = !DILocation(line: 33, column: 9, scope: !4074)
!4078 = !DILocation(line: 33, column: 3, scope: !4074)
!4079 = !DILocation(line: 34, column: 3, scope: !4074)
!4080 = !DILocation(line: 37, column: 2, scope: !2)
!4081 = !DILocation(line: 37, column: 2, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !2, file: !3, line: 37, column: 2)
!4083 = !DILocation(line: 38, column: 2, scope: !2)
!4084 = !DILocation(line: 39, column: 2, scope: !2)
!4085 = !DILocation(line: 39, column: 2, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !2, file: !3, line: 39, column: 2)
!4087 = !DILocation(line: 40, column: 14, scope: !2)
!4088 = !DILocation(line: 40, column: 17, scope: !2)
!4089 = !DILocation(line: 40, column: 2, scope: !2)
!4090 = !DILocation(line: 42, column: 2, scope: !2)
!4091 = !DILocation(line: 42, column: 5, scope: !2)
!4092 = !DILocation(line: 42, column: 10, scope: !2)
!4093 = !DILocation(line: 43, column: 2, scope: !2)
!4094 = !DILocation(line: 43, column: 5, scope: !2)
!4095 = !DILocation(line: 43, column: 10, scope: !2)
!4096 = !DILocation(line: 44, column: 2, scope: !2)
!4097 = !DILocation(line: 44, column: 5, scope: !2)
!4098 = !DILocation(line: 44, column: 11, scope: !2)
!4099 = !DILocation(line: 46, column: 9, scope: !2)
!4100 = !DILocation(line: 46, column: 2, scope: !2)
!4101 = !DILocation(line: 47, column: 1, scope: !2)
!4102 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 719, type: !4103, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!90, !1185, !294}
!4105 = !{!4106, !4107}
!4106 = !DILocalVariable(name: "size", arg: 1, scope: !4102, file: !284, line: 719, type: !1185)
!4107 = !DILocalVariable(name: "flags", arg: 2, scope: !4102, file: !284, line: 719, type: !294)
!4108 = !DILocation(line: 719, column: 52, scope: !4102)
!4109 = !DILocation(line: 719, column: 64, scope: !4102)
!4110 = !DILocation(line: 721, column: 17, scope: !4102)
!4111 = !DILocation(line: 721, column: 23, scope: !4102)
!4112 = !DILocation(line: 721, column: 29, scope: !4102)
!4113 = !DILocation(line: 721, column: 9, scope: !4102)
!4114 = !DILocation(line: 721, column: 2, scope: !4102)
!4115 = !DISubprogram(name: "snd_seq_pool_new", scope: !13, file: !13, line: 94, type: !4116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!11, !70}
!4118 = !DISubprogram(name: "kfree", scope: !284, file: !284, line: 227, type: !4119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !1747}
!4121 = !DISubprogram(name: "snd_seq_pool_init", scope: !13, file: !13, line: 87, type: !4122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!70, !11}
!4124 = !DISubprogram(name: "snd_seq_pool_delete", scope: !13, file: !13, line: 97, type: !4125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!70, !4127}
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!4128 = distinct !DISubprogram(name: "spinlock_check", scope: !4129, file: !4129, line: 324, type: !4130, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4134)
!4129 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!4132, !4133}
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!4134 = !{!4135}
!4135 = !DILocalVariable(name: "lock", arg: 1, scope: !4128, file: !4129, line: 324, type: !4133)
!4136 = !DILocation(line: 324, column: 67, scope: !4128)
!4137 = !DILocation(line: 326, column: 10, scope: !4128)
!4138 = !DILocation(line: 326, column: 16, scope: !4128)
!4139 = !DILocation(line: 326, column: 2, scope: !4128)
!4140 = distinct !DISubprogram(name: "atomic_set", scope: !4141, file: !4141, line: 65, type: !4142, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4145)
!4141 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4142 = !DISubroutineType(types: !4143)
!4143 = !{null, !4144, !70}
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!4145 = !{!4146, !4147}
!4146 = !DILocalVariable(name: "v", arg: 1, scope: !4140, file: !4141, line: 65, type: !4144)
!4147 = !DILocalVariable(name: "i", arg: 2, scope: !4140, file: !4141, line: 65, type: !70)
!4148 = !DILocation(line: 65, column: 22, scope: !4140)
!4149 = !DILocation(line: 65, column: 29, scope: !4140)
!4150 = !DILocation(line: 67, column: 26, scope: !4140)
!4151 = !DILocation(line: 67, column: 2, scope: !4140)
!4152 = !DILocation(line: 68, column: 17, scope: !4140)
!4153 = !DILocation(line: 68, column: 20, scope: !4140)
!4154 = !DILocation(line: 68, column: 2, scope: !4140)
!4155 = !DILocation(line: 69, column: 1, scope: !4140)
!4156 = !DISubprogram(name: "__init_waitqueue_head", scope: !163, file: !163, line: 64, type: !4157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{null, !4159, !872, !4160}
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!4161 = distinct !DISubprogram(name: "snd_seq_fifo_delete", scope: !3, file: !3, line: 49, type: !4162, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4165)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{null, !4164}
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!4165 = !{!4166, !4167, !4168, !4171}
!4166 = !DILocalVariable(name: "fifo", arg: 1, scope: !4161, file: !3, line: 49, type: !4164)
!4167 = !DILocalVariable(name: "f", scope: !4161, file: !3, line: 51, type: !6)
!4168 = !DILocalVariable(name: "__ret_warn_on", scope: !4169, file: !3, line: 53, type: !70)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !3, line: 53, column: 6)
!4170 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 53, column: 6)
!4171 = !DILocalVariable(name: "__ret_warn_on", scope: !4172, file: !3, line: 56, type: !70)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 56, column: 6)
!4173 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 56, column: 6)
!4174 = !DILocation(line: 49, column: 48, scope: !4161)
!4175 = !DILocation(line: 51, column: 2, scope: !4161)
!4176 = !DILocation(line: 51, column: 23, scope: !4161)
!4177 = !DILocation(line: 53, column: 6, scope: !4169)
!4178 = !DILocation(line: 53, column: 6, scope: !4170)
!4179 = !DILocation(line: 53, column: 6, scope: !4161)
!4180 = !DILocation(line: 54, column: 3, scope: !4170)
!4181 = !DILocation(line: 55, column: 7, scope: !4161)
!4182 = !DILocation(line: 55, column: 6, scope: !4161)
!4183 = !DILocation(line: 55, column: 4, scope: !4161)
!4184 = !DILocation(line: 56, column: 6, scope: !4172)
!4185 = !DILocation(line: 56, column: 6, scope: !4173)
!4186 = !DILocation(line: 56, column: 6, scope: !4161)
!4187 = !DILocation(line: 57, column: 3, scope: !4173)
!4188 = !DILocation(line: 58, column: 3, scope: !4161)
!4189 = !DILocation(line: 58, column: 8, scope: !4161)
!4190 = !DILocation(line: 60, column: 6, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 60, column: 6)
!4192 = !DILocation(line: 60, column: 9, scope: !4191)
!4193 = !DILocation(line: 60, column: 6, scope: !4161)
!4194 = !DILocation(line: 61, column: 29, scope: !4191)
!4195 = !DILocation(line: 61, column: 32, scope: !4191)
!4196 = !DILocation(line: 61, column: 3, scope: !4191)
!4197 = !DILocation(line: 63, column: 21, scope: !4161)
!4198 = !DILocation(line: 63, column: 2, scope: !4161)
!4199 = !DILocation(line: 66, column: 24, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 66, column: 6)
!4201 = !DILocation(line: 66, column: 27, scope: !4200)
!4202 = !DILocation(line: 66, column: 6, scope: !4200)
!4203 = !DILocation(line: 66, column: 6, scope: !4161)
!4204 = !DILocation(line: 67, column: 3, scope: !4200)
!4205 = !DILocation(line: 72, column: 6, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 72, column: 6)
!4207 = !DILocation(line: 72, column: 9, scope: !4206)
!4208 = !DILocation(line: 72, column: 6, scope: !4161)
!4209 = !DILocation(line: 73, column: 21, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4206, file: !3, line: 72, column: 15)
!4211 = !DILocation(line: 73, column: 24, scope: !4210)
!4212 = !DILocation(line: 73, column: 3, scope: !4210)
!4213 = !DILocation(line: 74, column: 24, scope: !4210)
!4214 = !DILocation(line: 74, column: 27, scope: !4210)
!4215 = !DILocation(line: 74, column: 3, scope: !4210)
!4216 = !DILocation(line: 75, column: 2, scope: !4210)
!4217 = !DILocation(line: 77, column: 8, scope: !4161)
!4218 = !DILocation(line: 77, column: 2, scope: !4161)
!4219 = !DILocation(line: 78, column: 1, scope: !4161)
!4220 = !DISubprogram(name: "snd_seq_pool_mark_closing", scope: !13, file: !13, line: 90, type: !4221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{null, !11}
!4223 = distinct !DISubprogram(name: "snd_seq_fifo_clear", scope: !3, file: !3, line: 83, type: !4224, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4226)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{null, !6}
!4226 = !{!4227, !4228}
!4227 = !DILocalVariable(name: "f", arg: 1, scope: !4223, file: !3, line: 83, type: !6)
!4228 = !DILocalVariable(name: "cell", scope: !4223, file: !3, line: 85, type: !16)
!4229 = !DILocation(line: 83, column: 46, scope: !4223)
!4230 = !DILocation(line: 85, column: 2, scope: !4223)
!4231 = !DILocation(line: 85, column: 29, scope: !4223)
!4232 = !DILocation(line: 88, column: 14, scope: !4223)
!4233 = !DILocation(line: 88, column: 17, scope: !4223)
!4234 = !DILocation(line: 88, column: 2, scope: !4223)
!4235 = !DILocation(line: 90, column: 2, scope: !4223)
!4236 = !DILocation(line: 91, column: 17, scope: !4223)
!4237 = !DILocation(line: 91, column: 20, scope: !4223)
!4238 = !DILocation(line: 91, column: 2, scope: !4223)
!4239 = !DILocation(line: 93, column: 2, scope: !4223)
!4240 = !DILocation(line: 93, column: 31, scope: !4223)
!4241 = !DILocation(line: 93, column: 17, scope: !4223)
!4242 = !DILocation(line: 93, column: 15, scope: !4223)
!4243 = !DILocation(line: 93, column: 35, scope: !4223)
!4244 = !DILocation(line: 94, column: 21, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 93, column: 44)
!4246 = !DILocation(line: 94, column: 3, scope: !4245)
!4247 = distinct !{!4247, !4239, !4248, !4249, !4250}
!4248 = !DILocation(line: 95, column: 2, scope: !4223)
!4249 = !{!"llvm.loop.mustprogress"}
!4250 = !{!"llvm.loop.unroll.disable"}
!4251 = !DILocation(line: 96, column: 19, scope: !4223)
!4252 = !DILocation(line: 96, column: 22, scope: !4223)
!4253 = !DILocation(line: 96, column: 2, scope: !4223)
!4254 = !DILocation(line: 97, column: 1, scope: !4223)
!4255 = distinct !DISubprogram(name: "waitqueue_active", scope: !163, file: !163, line: 127, type: !4256, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!70, !4159}
!4258 = !{!4259}
!4259 = !DILocalVariable(name: "wq_head", arg: 1, scope: !4255, file: !163, line: 127, type: !4159)
!4260 = !DILocation(line: 127, column: 60, scope: !4255)
!4261 = !DILocation(line: 129, column: 22, scope: !4255)
!4262 = !DILocation(line: 129, column: 31, scope: !4255)
!4263 = !DILocation(line: 129, column: 10, scope: !4255)
!4264 = !DILocation(line: 129, column: 9, scope: !4255)
!4265 = !DILocation(line: 129, column: 2, scope: !4255)
!4266 = !DISubprogram(name: "__wake_up", scope: !163, file: !163, line: 212, type: !4267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!70, !4159, !38, !70, !90}
!4269 = !DISubprogram(name: "snd_seq_pool_done", scope: !13, file: !13, line: 91, type: !4122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4270 = !DISubprogram(name: "snd_use_lock_sync_helper", scope: !216, file: !216, line: 19, type: !4271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{null, !4273, !872, !70}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!4274 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4129, file: !4129, line: 374, type: !4275, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4277)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{null, !4133}
!4277 = !{!4278}
!4278 = !DILocalVariable(name: "lock", arg: 1, scope: !4274, file: !4129, line: 374, type: !4133)
!4279 = !DILocation(line: 374, column: 55, scope: !4274)
!4280 = !DILocation(line: 376, column: 2, scope: !4274)
!4281 = !DILocation(line: 377, column: 1, scope: !4274)
!4282 = distinct !DISubprogram(name: "fifo_cell_out", scope: !3, file: !3, line: 142, type: !4283, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!16, !6}
!4285 = !{!4286, !4287}
!4286 = !DILocalVariable(name: "f", arg: 1, scope: !4282, file: !3, line: 142, type: !6)
!4287 = !DILocalVariable(name: "cell", scope: !4282, file: !3, line: 144, type: !16)
!4288 = !DILocation(line: 142, column: 70, scope: !4282)
!4289 = !DILocation(line: 144, column: 2, scope: !4282)
!4290 = !DILocation(line: 144, column: 29, scope: !4282)
!4291 = !DILocation(line: 146, column: 9, scope: !4282)
!4292 = !DILocation(line: 146, column: 12, scope: !4282)
!4293 = !DILocation(line: 146, column: 7, scope: !4282)
!4294 = !DILocation(line: 147, column: 6, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 147, column: 6)
!4296 = !DILocation(line: 147, column: 6, scope: !4282)
!4297 = !DILocation(line: 148, column: 13, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 147, column: 12)
!4299 = !DILocation(line: 148, column: 19, scope: !4298)
!4300 = !DILocation(line: 148, column: 3, scope: !4298)
!4301 = !DILocation(line: 148, column: 6, scope: !4298)
!4302 = !DILocation(line: 148, column: 11, scope: !4298)
!4303 = !DILocation(line: 151, column: 7, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4298, file: !3, line: 151, column: 7)
!4305 = !DILocation(line: 151, column: 10, scope: !4304)
!4306 = !DILocation(line: 151, column: 18, scope: !4304)
!4307 = !DILocation(line: 151, column: 15, scope: !4304)
!4308 = !DILocation(line: 151, column: 7, scope: !4298)
!4309 = !DILocation(line: 152, column: 4, scope: !4304)
!4310 = !DILocation(line: 152, column: 7, scope: !4304)
!4311 = !DILocation(line: 152, column: 12, scope: !4304)
!4312 = !DILocation(line: 154, column: 3, scope: !4298)
!4313 = !DILocation(line: 154, column: 9, scope: !4298)
!4314 = !DILocation(line: 154, column: 14, scope: !4298)
!4315 = !DILocation(line: 155, column: 3, scope: !4298)
!4316 = !DILocation(line: 155, column: 6, scope: !4298)
!4317 = !DILocation(line: 155, column: 11, scope: !4298)
!4318 = !DILocation(line: 156, column: 2, scope: !4298)
!4319 = !DILocation(line: 158, column: 9, scope: !4282)
!4320 = !DILocation(line: 159, column: 1, scope: !4282)
!4321 = !DILocation(line: 158, column: 2, scope: !4282)
!4322 = !DISubprogram(name: "snd_seq_cell_free", scope: !13, file: !13, line: 68, type: !4323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{null, !16}
!4325 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4129, file: !4129, line: 399, type: !4275, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4326)
!4326 = !{!4327}
!4327 = !DILocalVariable(name: "lock", arg: 1, scope: !4325, file: !4129, line: 399, type: !4133)
!4328 = !DILocation(line: 399, column: 57, scope: !4325)
!4329 = !DILocation(line: 401, column: 2, scope: !4325)
!4330 = !DILocation(line: 402, column: 1, scope: !4325)
!4331 = distinct !DISubprogram(name: "snd_seq_fifo_event_in", scope: !3, file: !3, line: 101, type: !4332, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4334)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!70, !6, !135}
!4334 = !{!4335, !4336, !4337, !4338, !4339, !4340, !4343, !4347}
!4335 = !DILocalVariable(name: "f", arg: 1, scope: !4331, file: !3, line: 101, type: !6)
!4336 = !DILocalVariable(name: "event", arg: 2, scope: !4331, file: !3, line: 102, type: !135)
!4337 = !DILocalVariable(name: "cell", scope: !4331, file: !3, line: 104, type: !16)
!4338 = !DILocalVariable(name: "flags", scope: !4331, file: !3, line: 105, type: !295)
!4339 = !DILocalVariable(name: "err", scope: !4331, file: !3, line: 106, type: !70)
!4340 = !DILocalVariable(name: "__ret_warn_on", scope: !4341, file: !3, line: 108, type: !70)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 108, column: 6)
!4342 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 108, column: 6)
!4343 = !DILocalVariable(name: "__dummy", scope: !4344, file: !3, line: 121, type: !295)
!4344 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 121, column: 2)
!4345 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 121, column: 2)
!4346 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 121, column: 2)
!4347 = !DILocalVariable(name: "__dummy2", scope: !4344, file: !3, line: 121, type: !295)
!4348 = !DILocation(line: 101, column: 48, scope: !4331)
!4349 = !DILocation(line: 102, column: 28, scope: !4331)
!4350 = !DILocation(line: 104, column: 2, scope: !4331)
!4351 = !DILocation(line: 104, column: 29, scope: !4331)
!4352 = !DILocation(line: 105, column: 2, scope: !4331)
!4353 = !DILocation(line: 105, column: 16, scope: !4331)
!4354 = !DILocation(line: 106, column: 2, scope: !4331)
!4355 = !DILocation(line: 106, column: 6, scope: !4331)
!4356 = !DILocation(line: 108, column: 6, scope: !4341)
!4357 = !DILocation(line: 108, column: 6, scope: !4342)
!4358 = !DILocation(line: 108, column: 6, scope: !4331)
!4359 = !DILocation(line: 109, column: 3, scope: !4342)
!4360 = !DILocation(line: 111, column: 2, scope: !4331)
!4361 = !DILocation(line: 112, column: 26, scope: !4331)
!4362 = !DILocation(line: 112, column: 29, scope: !4331)
!4363 = !DILocation(line: 112, column: 35, scope: !4331)
!4364 = !DILocation(line: 112, column: 8, scope: !4331)
!4365 = !DILocation(line: 112, column: 6, scope: !4331)
!4366 = !DILocation(line: 113, column: 6, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 113, column: 6)
!4368 = !DILocation(line: 113, column: 10, scope: !4367)
!4369 = !DILocation(line: 113, column: 6, scope: !4331)
!4370 = !DILocation(line: 114, column: 8, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 114, column: 7)
!4372 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 113, column: 15)
!4373 = !DILocation(line: 114, column: 12, scope: !4371)
!4374 = !DILocation(line: 114, column: 24, scope: !4371)
!4375 = !DILocation(line: 114, column: 28, scope: !4371)
!4376 = !DILocation(line: 114, column: 32, scope: !4371)
!4377 = !DILocation(line: 114, column: 7, scope: !4372)
!4378 = !DILocation(line: 115, column: 16, scope: !4371)
!4379 = !DILocation(line: 115, column: 19, scope: !4371)
!4380 = !DILocation(line: 115, column: 4, scope: !4371)
!4381 = !DILocation(line: 116, column: 3, scope: !4372)
!4382 = !DILocation(line: 117, column: 10, scope: !4372)
!4383 = !DILocation(line: 117, column: 3, scope: !4372)
!4384 = !DILocation(line: 121, column: 2, scope: !4331)
!4385 = !DILocation(line: 121, column: 2, scope: !4346)
!4386 = !DILocation(line: 121, column: 2, scope: !4344)
!4387 = !DILocation(line: 121, column: 2, scope: !4345)
!4388 = !DILocation(line: 122, column: 6, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 122, column: 6)
!4390 = !DILocation(line: 122, column: 9, scope: !4389)
!4391 = !DILocation(line: 122, column: 14, scope: !4389)
!4392 = !DILocation(line: 122, column: 6, scope: !4331)
!4393 = !DILocation(line: 123, column: 19, scope: !4389)
!4394 = !DILocation(line: 123, column: 3, scope: !4389)
!4395 = !DILocation(line: 123, column: 6, scope: !4389)
!4396 = !DILocation(line: 123, column: 12, scope: !4389)
!4397 = !DILocation(line: 123, column: 17, scope: !4389)
!4398 = !DILocation(line: 124, column: 12, scope: !4331)
!4399 = !DILocation(line: 124, column: 2, scope: !4331)
!4400 = !DILocation(line: 124, column: 5, scope: !4331)
!4401 = !DILocation(line: 124, column: 10, scope: !4331)
!4402 = !DILocation(line: 125, column: 6, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 125, column: 6)
!4404 = !DILocation(line: 125, column: 9, scope: !4403)
!4405 = !DILocation(line: 125, column: 14, scope: !4403)
!4406 = !DILocation(line: 125, column: 6, scope: !4331)
!4407 = !DILocation(line: 126, column: 13, scope: !4403)
!4408 = !DILocation(line: 126, column: 3, scope: !4403)
!4409 = !DILocation(line: 126, column: 6, scope: !4403)
!4410 = !DILocation(line: 126, column: 11, scope: !4403)
!4411 = !DILocation(line: 127, column: 2, scope: !4331)
!4412 = !DILocation(line: 127, column: 8, scope: !4331)
!4413 = !DILocation(line: 127, column: 13, scope: !4331)
!4414 = !DILocation(line: 128, column: 2, scope: !4331)
!4415 = !DILocation(line: 128, column: 5, scope: !4331)
!4416 = !DILocation(line: 128, column: 10, scope: !4331)
!4417 = !DILocation(line: 129, column: 26, scope: !4331)
!4418 = !DILocation(line: 129, column: 29, scope: !4331)
!4419 = !DILocation(line: 129, column: 35, scope: !4331)
!4420 = !DILocation(line: 129, column: 2, scope: !4331)
!4421 = !DILocation(line: 132, column: 24, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 132, column: 6)
!4423 = !DILocation(line: 132, column: 27, scope: !4422)
!4424 = !DILocation(line: 132, column: 6, scope: !4422)
!4425 = !DILocation(line: 132, column: 6, scope: !4331)
!4426 = !DILocation(line: 133, column: 3, scope: !4422)
!4427 = !DILocation(line: 135, column: 2, scope: !4331)
!4428 = !DILocation(line: 137, column: 2, scope: !4331)
!4429 = !DILocation(line: 139, column: 1, scope: !4331)
!4430 = distinct !DISubprogram(name: "atomic_inc", scope: !4141, file: !4141, line: 433, type: !4431, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4433)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{null, !4144}
!4433 = !{!4434}
!4434 = !DILocalVariable(name: "v", arg: 1, scope: !4430, file: !4141, line: 433, type: !4144)
!4435 = !DILocation(line: 433, column: 22, scope: !4430)
!4436 = !DILocation(line: 435, column: 31, scope: !4430)
!4437 = !DILocation(line: 435, column: 2, scope: !4430)
!4438 = !DILocation(line: 436, column: 17, scope: !4430)
!4439 = !DILocation(line: 436, column: 2, scope: !4430)
!4440 = !DILocation(line: 437, column: 1, scope: !4430)
!4441 = !DISubprogram(name: "snd_seq_event_dup", scope: !13, file: !13, line: 70, type: !4442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!70, !11, !135, !4444, !70, !649, !4445}
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!4446 = distinct !DISubprogram(name: "atomic_dec", scope: !4141, file: !4141, line: 590, type: !4431, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4447)
!4447 = !{!4448}
!4448 = !DILocalVariable(name: "v", arg: 1, scope: !4446, file: !4141, line: 590, type: !4144)
!4449 = !DILocation(line: 590, column: 22, scope: !4446)
!4450 = !DILocation(line: 592, column: 31, scope: !4446)
!4451 = !DILocation(line: 592, column: 2, scope: !4446)
!4452 = !DILocation(line: 593, column: 17, scope: !4446)
!4453 = !DILocation(line: 593, column: 2, scope: !4446)
!4454 = !DILocation(line: 594, column: 1, scope: !4446)
!4455 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4456, file: !4456, line: 32, type: !4457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4456 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!295, !4132}
!4459 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4129, file: !4129, line: 404, type: !4460, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4462)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{null, !4133, !295}
!4462 = !{!4463, !4464, !4465, !4468}
!4463 = !DILocalVariable(name: "lock", arg: 1, scope: !4459, file: !4129, line: 404, type: !4133)
!4464 = !DILocalVariable(name: "flags", arg: 2, scope: !4459, file: !4129, line: 404, type: !295)
!4465 = !DILocalVariable(name: "__dummy", scope: !4466, file: !4129, line: 406, type: !295)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !4129, line: 406, column: 2)
!4467 = distinct !DILexicalBlock(scope: !4459, file: !4129, line: 406, column: 2)
!4468 = !DILocalVariable(name: "__dummy2", scope: !4466, file: !4129, line: 406, type: !295)
!4469 = !DILocation(line: 404, column: 64, scope: !4459)
!4470 = !DILocation(line: 404, column: 84, scope: !4459)
!4471 = !DILocation(line: 406, column: 2, scope: !4459)
!4472 = !DILocation(line: 406, column: 2, scope: !4466)
!4473 = !DILocation(line: 406, column: 2, scope: !4467)
!4474 = !DILocation(line: 407, column: 1, scope: !4459)
!4475 = distinct !DISubprogram(name: "snd_seq_fifo_cell_out", scope: !3, file: !3, line: 162, type: !4476, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4478)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!70, !6, !4444, !70}
!4478 = !{!4479, !4480, !4481, !4482, !4483, !4484, !4497, !4500, !4504, !4505, !4511, !4513, !4517}
!4479 = !DILocalVariable(name: "f", arg: 1, scope: !4475, file: !3, line: 162, type: !6)
!4480 = !DILocalVariable(name: "cellp", arg: 2, scope: !4475, file: !3, line: 163, type: !4444)
!4481 = !DILocalVariable(name: "nonblock", arg: 3, scope: !4475, file: !3, line: 163, type: !70)
!4482 = !DILocalVariable(name: "cell", scope: !4475, file: !3, line: 165, type: !16)
!4483 = !DILocalVariable(name: "flags", scope: !4475, file: !3, line: 166, type: !295)
!4484 = !DILocalVariable(name: "wait", scope: !4475, file: !3, line: 167, type: !4485)
!4485 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !163, line: 14, baseType: !4486)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !163, line: 30, size: 320, elements: !4487)
!4487 = !{!4488, !4489, !4490, !4496}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4486, file: !163, line: 31, baseType: !38, size: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4486, file: !163, line: 32, baseType: !90, size: 64, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4486, file: !163, line: 33, baseType: !4491, size: 64, offset: 128)
!4491 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !163, line: 16, baseType: !4492)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!70, !4495, !38, !70, !90}
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4486, file: !163, line: 34, baseType: !204, size: 128, offset: 192)
!4497 = !DILocalVariable(name: "__ret_warn_on", scope: !4498, file: !3, line: 169, type: !70)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 169, column: 6)
!4499 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 169, column: 6)
!4500 = !DILocalVariable(name: "__dummy", scope: !4501, file: !3, line: 174, type: !295)
!4501 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 174, column: 2)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 174, column: 2)
!4503 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 174, column: 2)
!4504 = !DILocalVariable(name: "__dummy2", scope: !4501, file: !3, line: 174, type: !295)
!4505 = !DILocalVariable(name: "__ai_ptr", scope: !4506, file: !3, line: 181, type: !2000)
!4506 = distinct !DILexicalBlock(scope: !4507, file: !3, line: 181, column: 3)
!4507 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 181, column: 3)
!4508 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 181, column: 3)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 181, column: 3)
!4510 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 175, column: 44)
!4511 = !DILocalVariable(name: "__ret", scope: !4512, file: !3, line: 181, type: !38)
!4512 = distinct !DILexicalBlock(scope: !4506, file: !3, line: 181, column: 3)
!4513 = !DILocalVariable(name: "__dummy", scope: !4514, file: !3, line: 185, type: !295)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 185, column: 3)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 185, column: 3)
!4516 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 185, column: 3)
!4517 = !DILocalVariable(name: "__dummy2", scope: !4514, file: !3, line: 185, type: !295)
!4518 = !DILocation(line: 162, column: 48, scope: !4475)
!4519 = !DILocation(line: 163, column: 34, scope: !4475)
!4520 = !DILocation(line: 163, column: 45, scope: !4475)
!4521 = !DILocation(line: 165, column: 2, scope: !4475)
!4522 = !DILocation(line: 165, column: 29, scope: !4475)
!4523 = !DILocation(line: 166, column: 2, scope: !4475)
!4524 = !DILocation(line: 166, column: 16, scope: !4475)
!4525 = !DILocation(line: 167, column: 2, scope: !4475)
!4526 = !DILocation(line: 167, column: 21, scope: !4475)
!4527 = !DILocation(line: 169, column: 6, scope: !4498)
!4528 = !DILocation(line: 169, column: 6, scope: !4499)
!4529 = !DILocation(line: 169, column: 6, scope: !4475)
!4530 = !DILocation(line: 170, column: 3, scope: !4499)
!4531 = !DILocation(line: 172, column: 3, scope: !4475)
!4532 = !DILocation(line: 172, column: 9, scope: !4475)
!4533 = !DILocation(line: 173, column: 30, scope: !4475)
!4534 = !DILocation(line: 173, column: 2, scope: !4475)
!4535 = !DILocation(line: 174, column: 2, scope: !4475)
!4536 = !DILocation(line: 174, column: 2, scope: !4503)
!4537 = !DILocation(line: 174, column: 2, scope: !4501)
!4538 = !DILocation(line: 174, column: 2, scope: !4502)
!4539 = !DILocation(line: 175, column: 2, scope: !4475)
!4540 = !DILocation(line: 175, column: 31, scope: !4475)
!4541 = !DILocation(line: 175, column: 17, scope: !4475)
!4542 = !DILocation(line: 175, column: 15, scope: !4475)
!4543 = !DILocation(line: 175, column: 35, scope: !4475)
!4544 = !DILocation(line: 176, column: 7, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 176, column: 7)
!4546 = !DILocation(line: 176, column: 7, scope: !4510)
!4547 = !DILocation(line: 178, column: 28, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 176, column: 17)
!4549 = !DILocation(line: 178, column: 31, scope: !4548)
!4550 = !DILocation(line: 178, column: 37, scope: !4548)
!4551 = !DILocation(line: 178, column: 4, scope: !4548)
!4552 = !DILocation(line: 179, column: 4, scope: !4548)
!4553 = !DILocation(line: 181, column: 3, scope: !4510)
!4554 = !DILocation(line: 181, column: 3, scope: !4509)
!4555 = !DILocation(line: 181, column: 3, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 181, column: 3)
!4557 = !DILocation(line: 181, column: 3, scope: !4508)
!4558 = !DILocation(line: 181, column: 3, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 181, column: 3)
!4560 = !DILocation(line: 181, column: 3, scope: !4506)
!4561 = !DILocation(line: 181, column: 3, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4506, file: !3, line: 181, column: 3)
!4563 = !DILocation(line: 181, column: 3, scope: !4512)
!4564 = !{i64 2154026276}
!4565 = !DILocation(line: 181, column: 3, scope: !4507)
!4566 = !DILocation(line: 182, column: 19, scope: !4510)
!4567 = !DILocation(line: 182, column: 22, scope: !4510)
!4568 = !DILocation(line: 182, column: 3, scope: !4510)
!4569 = !DILocation(line: 183, column: 27, scope: !4510)
!4570 = !DILocation(line: 183, column: 30, scope: !4510)
!4571 = !DILocation(line: 183, column: 36, scope: !4510)
!4572 = !DILocation(line: 183, column: 3, scope: !4510)
!4573 = !DILocation(line: 184, column: 3, scope: !4510)
!4574 = !DILocation(line: 185, column: 3, scope: !4510)
!4575 = !DILocation(line: 185, column: 3, scope: !4516)
!4576 = !DILocation(line: 185, column: 3, scope: !4514)
!4577 = !DILocation(line: 185, column: 3, scope: !4515)
!4578 = !DILocation(line: 186, column: 22, scope: !4510)
!4579 = !DILocation(line: 186, column: 25, scope: !4510)
!4580 = !DILocation(line: 186, column: 3, scope: !4510)
!4581 = !DILocation(line: 187, column: 22, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 187, column: 7)
!4583 = !DILocation(line: 187, column: 7, scope: !4582)
!4584 = !DILocation(line: 187, column: 7, scope: !4510)
!4585 = !DILocation(line: 188, column: 28, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 187, column: 32)
!4587 = !DILocation(line: 188, column: 31, scope: !4586)
!4588 = !DILocation(line: 188, column: 37, scope: !4586)
!4589 = !DILocation(line: 188, column: 4, scope: !4586)
!4590 = !DILocation(line: 189, column: 4, scope: !4586)
!4591 = distinct !{!4591, !4539, !4592, !4249, !4250}
!4592 = !DILocation(line: 191, column: 2, scope: !4475)
!4593 = !DILocation(line: 192, column: 26, scope: !4475)
!4594 = !DILocation(line: 192, column: 29, scope: !4475)
!4595 = !DILocation(line: 192, column: 35, scope: !4475)
!4596 = !DILocation(line: 192, column: 2, scope: !4475)
!4597 = !DILocation(line: 193, column: 11, scope: !4475)
!4598 = !DILocation(line: 193, column: 3, scope: !4475)
!4599 = !DILocation(line: 193, column: 9, scope: !4475)
!4600 = !DILocation(line: 195, column: 2, scope: !4475)
!4601 = !DILocation(line: 196, column: 1, scope: !4475)
!4602 = distinct !DISubprogram(name: "init_waitqueue_entry", scope: !163, file: !163, line: 82, type: !4603, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4605)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{null, !4495, !302}
!4605 = !{!4606, !4607}
!4606 = !DILocalVariable(name: "wq_entry", arg: 1, scope: !4602, file: !163, line: 82, type: !4495)
!4607 = !DILocalVariable(name: "p", arg: 2, scope: !4602, file: !163, line: 82, type: !302)
!4608 = !DILocation(line: 82, column: 66, scope: !4602)
!4609 = !DILocation(line: 82, column: 96, scope: !4602)
!4610 = !DILocation(line: 84, column: 2, scope: !4602)
!4611 = !DILocation(line: 84, column: 12, scope: !4602)
!4612 = !DILocation(line: 84, column: 19, scope: !4602)
!4613 = !DILocation(line: 85, column: 22, scope: !4602)
!4614 = !DILocation(line: 85, column: 2, scope: !4602)
!4615 = !DILocation(line: 85, column: 12, scope: !4602)
!4616 = !DILocation(line: 85, column: 20, scope: !4602)
!4617 = !DILocation(line: 86, column: 2, scope: !4602)
!4618 = !DILocation(line: 86, column: 12, scope: !4602)
!4619 = !DILocation(line: 86, column: 18, scope: !4602)
!4620 = !DILocation(line: 87, column: 1, scope: !4602)
!4621 = distinct !DISubprogram(name: "get_current", scope: !4622, file: !4622, line: 39, type: !4623, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4625)
!4622 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!302}
!4625 = !{!4626, !4628, !4630}
!4626 = !DILocalVariable(name: "pscr_ret__", scope: !4627, file: !4622, line: 41, type: !302)
!4627 = distinct !DILexicalBlock(scope: !4621, file: !4622, line: 41, column: 9)
!4628 = !DILocalVariable(name: "__vpp_verify", scope: !4629, file: !4622, line: 41, type: !1747)
!4629 = distinct !DILexicalBlock(scope: !4627, file: !4622, line: 41, column: 9)
!4630 = !DILocalVariable(name: "pfo_val__", scope: !4631, file: !4622, line: 41, type: !371)
!4631 = distinct !DILexicalBlock(scope: !4627, file: !4622, line: 41, column: 9)
!4632 = !DILocation(line: 41, column: 9, scope: !4627)
!4633 = !DILocation(line: 41, column: 9, scope: !4629)
!4634 = !DILocation(line: 41, column: 9, scope: !4631)
!4635 = !{i64 2148265050}
!4636 = !DILocation(line: 41, column: 9, scope: !4621)
!4637 = !DILocation(line: 41, column: 2, scope: !4621)
!4638 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4639, file: !4639, line: 94, type: !4640, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4645)
!4639 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4640 = !DISubroutineType(types: !4641)
!4641 = !{null, !4642, !1185}
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4644)
!4644 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4645 = !{!4646, !4647}
!4646 = !DILocalVariable(name: "v", arg: 1, scope: !4638, file: !4639, line: 94, type: !4642)
!4647 = !DILocalVariable(name: "size", arg: 2, scope: !4638, file: !4639, line: 94, type: !1185)
!4648 = !DILocation(line: 94, column: 79, scope: !4638)
!4649 = !DILocation(line: 94, column: 89, scope: !4638)
!4650 = !DILocation(line: 96, column: 20, scope: !4638)
!4651 = !DILocation(line: 96, column: 23, scope: !4638)
!4652 = !DILocation(line: 96, column: 2, scope: !4638)
!4653 = !DILocation(line: 97, column: 2, scope: !4638)
!4654 = !DILocation(line: 98, column: 1, scope: !4638)
!4655 = !DISubprogram(name: "add_wait_queue", scope: !163, file: !163, line: 166, type: !4656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{null, !4159, !4495}
!4658 = !DISubprogram(name: "schedule", scope: !304, file: !304, line: 303, type: !2264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4659 = !DISubprogram(name: "remove_wait_queue", scope: !163, file: !163, line: 169, type: !4656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4660 = distinct !DISubprogram(name: "signal_pending", scope: !3295, file: !3295, line: 392, type: !4661, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4663)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!70, !302}
!4663 = !{!4664}
!4664 = !DILocalVariable(name: "p", arg: 1, scope: !4660, file: !3295, line: 392, type: !302)
!4665 = !DILocation(line: 392, column: 54, scope: !4660)
!4666 = !DILocation(line: 399, column: 6, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4660, file: !3295, line: 399, column: 6)
!4668 = !DILocation(line: 399, column: 6, scope: !4660)
!4669 = !DILocation(line: 400, column: 3, scope: !4667)
!4670 = !DILocation(line: 401, column: 25, scope: !4660)
!4671 = !DILocation(line: 401, column: 9, scope: !4660)
!4672 = !DILocation(line: 401, column: 2, scope: !4660)
!4673 = !DILocation(line: 402, column: 1, scope: !4660)
!4674 = distinct !DISubprogram(name: "snd_seq_fifo_cell_putback", scope: !3, file: !3, line: 199, type: !4675, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4677)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{null, !6, !16}
!4677 = !{!4678, !4679, !4680, !4681, !4687}
!4678 = !DILocalVariable(name: "f", arg: 1, scope: !4674, file: !3, line: 199, type: !6)
!4679 = !DILocalVariable(name: "cell", arg: 2, scope: !4674, file: !3, line: 200, type: !16)
!4680 = !DILocalVariable(name: "flags", scope: !4674, file: !3, line: 202, type: !295)
!4681 = !DILocalVariable(name: "__dummy", scope: !4682, file: !3, line: 205, type: !295)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 205, column: 3)
!4683 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 205, column: 3)
!4684 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 205, column: 3)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 204, column: 12)
!4686 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 204, column: 6)
!4687 = !DILocalVariable(name: "__dummy2", scope: !4682, file: !3, line: 205, type: !295)
!4688 = !DILocation(line: 199, column: 53, scope: !4674)
!4689 = !DILocation(line: 200, column: 38, scope: !4674)
!4690 = !DILocation(line: 202, column: 2, scope: !4674)
!4691 = !DILocation(line: 202, column: 16, scope: !4674)
!4692 = !DILocation(line: 204, column: 6, scope: !4686)
!4693 = !DILocation(line: 204, column: 6, scope: !4674)
!4694 = !DILocation(line: 205, column: 3, scope: !4685)
!4695 = !DILocation(line: 205, column: 3, scope: !4684)
!4696 = !DILocation(line: 205, column: 3, scope: !4682)
!4697 = !DILocation(line: 205, column: 3, scope: !4683)
!4698 = !DILocation(line: 206, column: 16, scope: !4685)
!4699 = !DILocation(line: 206, column: 19, scope: !4685)
!4700 = !DILocation(line: 206, column: 3, scope: !4685)
!4701 = !DILocation(line: 206, column: 9, scope: !4685)
!4702 = !DILocation(line: 206, column: 14, scope: !4685)
!4703 = !DILocation(line: 207, column: 13, scope: !4685)
!4704 = !DILocation(line: 207, column: 3, scope: !4685)
!4705 = !DILocation(line: 207, column: 6, scope: !4685)
!4706 = !DILocation(line: 207, column: 11, scope: !4685)
!4707 = !DILocation(line: 208, column: 8, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 208, column: 7)
!4709 = !DILocation(line: 208, column: 11, scope: !4708)
!4710 = !DILocation(line: 208, column: 7, scope: !4685)
!4711 = !DILocation(line: 209, column: 14, scope: !4708)
!4712 = !DILocation(line: 209, column: 4, scope: !4708)
!4713 = !DILocation(line: 209, column: 7, scope: !4708)
!4714 = !DILocation(line: 209, column: 12, scope: !4708)
!4715 = !DILocation(line: 210, column: 3, scope: !4685)
!4716 = !DILocation(line: 210, column: 6, scope: !4685)
!4717 = !DILocation(line: 210, column: 11, scope: !4685)
!4718 = !DILocation(line: 211, column: 27, scope: !4685)
!4719 = !DILocation(line: 211, column: 30, scope: !4685)
!4720 = !DILocation(line: 211, column: 36, scope: !4685)
!4721 = !DILocation(line: 211, column: 3, scope: !4685)
!4722 = !DILocation(line: 212, column: 2, scope: !4685)
!4723 = !DILocation(line: 213, column: 1, scope: !4674)
!4724 = distinct !DISubprogram(name: "snd_seq_fifo_poll_wait", scope: !3, file: !3, line: 217, type: !4725, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4729)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!70, !6, !649, !4727}
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1859, line: 40, baseType: !1858)
!4729 = !{!4730, !4731, !4732}
!4730 = !DILocalVariable(name: "f", arg: 1, scope: !4724, file: !3, line: 217, type: !6)
!4731 = !DILocalVariable(name: "file", arg: 2, scope: !4724, file: !3, line: 217, type: !649)
!4732 = !DILocalVariable(name: "wait", arg: 3, scope: !4724, file: !3, line: 218, type: !4727)
!4733 = !DILocation(line: 217, column: 49, scope: !4724)
!4734 = !DILocation(line: 217, column: 65, scope: !4724)
!4735 = !DILocation(line: 218, column: 19, scope: !4724)
!4736 = !DILocation(line: 220, column: 12, scope: !4724)
!4737 = !DILocation(line: 220, column: 19, scope: !4724)
!4738 = !DILocation(line: 220, column: 22, scope: !4724)
!4739 = !DILocation(line: 220, column: 35, scope: !4724)
!4740 = !DILocation(line: 220, column: 2, scope: !4724)
!4741 = !DILocation(line: 221, column: 10, scope: !4724)
!4742 = !DILocation(line: 221, column: 13, scope: !4724)
!4743 = !DILocation(line: 221, column: 19, scope: !4724)
!4744 = !DILocation(line: 221, column: 2, scope: !4724)
!4745 = distinct !DISubprogram(name: "poll_wait", scope: !1859, file: !1859, line: 42, type: !4746, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4748)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{null, !649, !1866, !4727}
!4748 = !{!4749, !4750, !4751}
!4749 = !DILocalVariable(name: "filp", arg: 1, scope: !4745, file: !1859, line: 42, type: !649)
!4750 = !DILocalVariable(name: "wait_address", arg: 2, scope: !4745, file: !1859, line: 42, type: !1866)
!4751 = !DILocalVariable(name: "p", arg: 3, scope: !4745, file: !1859, line: 42, type: !4727)
!4752 = !DILocation(line: 42, column: 44, scope: !4745)
!4753 = !DILocation(line: 42, column: 70, scope: !4745)
!4754 = !DILocation(line: 42, column: 96, scope: !4745)
!4755 = !DILocation(line: 44, column: 6, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4745, file: !1859, line: 44, column: 6)
!4757 = !DILocation(line: 44, column: 8, scope: !4756)
!4758 = !DILocation(line: 44, column: 11, scope: !4756)
!4759 = !DILocation(line: 44, column: 14, scope: !4756)
!4760 = !DILocation(line: 44, column: 21, scope: !4756)
!4761 = !DILocation(line: 44, column: 24, scope: !4756)
!4762 = !DILocation(line: 44, column: 6, scope: !4745)
!4763 = !DILocation(line: 45, column: 3, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4756, file: !1859, line: 44, column: 38)
!4765 = !DILocation(line: 45, column: 6, scope: !4764)
!4766 = !DILocation(line: 45, column: 13, scope: !4764)
!4767 = !DILocation(line: 45, column: 19, scope: !4764)
!4768 = !DILocation(line: 45, column: 33, scope: !4764)
!4769 = !DILocation(line: 52, column: 3, scope: !4764)
!4770 = !DILocation(line: 52, column: 3, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4764, file: !1859, line: 52, column: 3)
!4772 = !DILocation(line: 52, column: 3, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4771, file: !1859, line: 52, column: 3)
!4774 = !{i64 2154008246}
!4775 = !DILocation(line: 53, column: 2, scope: !4764)
!4776 = !DILocation(line: 54, column: 1, scope: !4745)
!4777 = distinct !DISubprogram(name: "snd_seq_fifo_resize", scope: !3, file: !3, line: 225, type: !4778, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4780)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!70, !6, !70}
!4780 = !{!4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788}
!4781 = !DILocalVariable(name: "f", arg: 1, scope: !4777, file: !3, line: 225, type: !6)
!4782 = !DILocalVariable(name: "poolsize", arg: 2, scope: !4777, file: !3, line: 225, type: !70)
!4783 = !DILocalVariable(name: "newpool", scope: !4777, file: !3, line: 227, type: !11)
!4784 = !DILocalVariable(name: "oldpool", scope: !4777, file: !3, line: 227, type: !11)
!4785 = !DILocalVariable(name: "cell", scope: !4777, file: !3, line: 228, type: !16)
!4786 = !DILocalVariable(name: "next", scope: !4777, file: !3, line: 228, type: !16)
!4787 = !DILocalVariable(name: "oldhead", scope: !4777, file: !3, line: 228, type: !16)
!4788 = !DILocalVariable(name: "__ret_warn_on", scope: !4789, file: !3, line: 230, type: !70)
!4789 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 230, column: 6)
!4790 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 230, column: 6)
!4791 = !DILocation(line: 225, column: 46, scope: !4777)
!4792 = !DILocation(line: 225, column: 53, scope: !4777)
!4793 = !DILocation(line: 227, column: 2, scope: !4777)
!4794 = !DILocation(line: 227, column: 23, scope: !4777)
!4795 = !DILocation(line: 227, column: 33, scope: !4777)
!4796 = !DILocation(line: 228, column: 2, scope: !4777)
!4797 = !DILocation(line: 228, column: 29, scope: !4777)
!4798 = !DILocation(line: 228, column: 36, scope: !4777)
!4799 = !DILocation(line: 228, column: 43, scope: !4777)
!4800 = !DILocation(line: 230, column: 6, scope: !4789)
!4801 = !DILocation(line: 230, column: 6, scope: !4790)
!4802 = !DILocation(line: 230, column: 6, scope: !4777)
!4803 = !DILocation(line: 231, column: 3, scope: !4790)
!4804 = !DILocation(line: 234, column: 29, scope: !4777)
!4805 = !DILocation(line: 234, column: 12, scope: !4777)
!4806 = !DILocation(line: 234, column: 10, scope: !4777)
!4807 = !DILocation(line: 235, column: 6, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 235, column: 6)
!4809 = !DILocation(line: 235, column: 14, scope: !4808)
!4810 = !DILocation(line: 235, column: 6, scope: !4777)
!4811 = !DILocation(line: 236, column: 3, scope: !4808)
!4812 = !DILocation(line: 237, column: 24, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 237, column: 6)
!4814 = !DILocation(line: 237, column: 6, scope: !4813)
!4815 = !DILocation(line: 237, column: 33, scope: !4813)
!4816 = !DILocation(line: 237, column: 6, scope: !4777)
!4817 = !DILocation(line: 238, column: 3, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 237, column: 38)
!4819 = !DILocation(line: 239, column: 3, scope: !4818)
!4820 = !DILocation(line: 242, column: 17, scope: !4777)
!4821 = !DILocation(line: 242, column: 20, scope: !4777)
!4822 = !DILocation(line: 242, column: 2, scope: !4777)
!4823 = !DILocation(line: 244, column: 12, scope: !4777)
!4824 = !DILocation(line: 244, column: 15, scope: !4777)
!4825 = !DILocation(line: 244, column: 10, scope: !4777)
!4826 = !DILocation(line: 245, column: 12, scope: !4777)
!4827 = !DILocation(line: 245, column: 15, scope: !4777)
!4828 = !DILocation(line: 245, column: 10, scope: !4777)
!4829 = !DILocation(line: 247, column: 12, scope: !4777)
!4830 = !DILocation(line: 247, column: 2, scope: !4777)
!4831 = !DILocation(line: 247, column: 5, scope: !4777)
!4832 = !DILocation(line: 247, column: 10, scope: !4777)
!4833 = !DILocation(line: 248, column: 2, scope: !4777)
!4834 = !DILocation(line: 248, column: 5, scope: !4777)
!4835 = !DILocation(line: 248, column: 10, scope: !4777)
!4836 = !DILocation(line: 249, column: 2, scope: !4777)
!4837 = !DILocation(line: 249, column: 5, scope: !4777)
!4838 = !DILocation(line: 249, column: 10, scope: !4777)
!4839 = !DILocation(line: 250, column: 2, scope: !4777)
!4840 = !DILocation(line: 250, column: 5, scope: !4777)
!4841 = !DILocation(line: 250, column: 11, scope: !4777)
!4842 = !DILocation(line: 252, column: 19, scope: !4777)
!4843 = !DILocation(line: 252, column: 22, scope: !4777)
!4844 = !DILocation(line: 252, column: 2, scope: !4777)
!4845 = !DILocation(line: 255, column: 28, scope: !4777)
!4846 = !DILocation(line: 255, column: 2, scope: !4777)
!4847 = !DILocation(line: 256, column: 2, scope: !4777)
!4848 = !DILocation(line: 259, column: 14, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 259, column: 2)
!4850 = !DILocation(line: 259, column: 12, scope: !4849)
!4851 = !DILocation(line: 259, column: 7, scope: !4849)
!4852 = !DILocation(line: 259, column: 23, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 259, column: 2)
!4854 = !DILocation(line: 259, column: 2, scope: !4849)
!4855 = !DILocation(line: 260, column: 10, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 259, column: 42)
!4857 = !DILocation(line: 260, column: 16, scope: !4856)
!4858 = !DILocation(line: 260, column: 8, scope: !4856)
!4859 = !DILocation(line: 261, column: 21, scope: !4856)
!4860 = !DILocation(line: 261, column: 3, scope: !4856)
!4861 = !DILocation(line: 262, column: 2, scope: !4856)
!4862 = !DILocation(line: 259, column: 36, scope: !4853)
!4863 = !DILocation(line: 259, column: 34, scope: !4853)
!4864 = !DILocation(line: 259, column: 2, scope: !4853)
!4865 = distinct !{!4865, !4854, !4866, !4249, !4250}
!4866 = !DILocation(line: 262, column: 2, scope: !4849)
!4867 = !DILocation(line: 263, column: 2, scope: !4777)
!4868 = !DILocation(line: 265, column: 2, scope: !4777)
!4869 = !DILocation(line: 266, column: 1, scope: !4777)
!4870 = distinct !DISubprogram(name: "snd_seq_fifo_unused_cells", scope: !3, file: !3, line: 269, type: !4871, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4873)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!70, !6}
!4873 = !{!4874, !4875, !4876, !4877, !4881}
!4874 = !DILocalVariable(name: "f", arg: 1, scope: !4870, file: !3, line: 269, type: !6)
!4875 = !DILocalVariable(name: "flags", scope: !4870, file: !3, line: 271, type: !295)
!4876 = !DILocalVariable(name: "cells", scope: !4870, file: !3, line: 272, type: !70)
!4877 = !DILocalVariable(name: "__dummy", scope: !4878, file: !3, line: 278, type: !295)
!4878 = distinct !DILexicalBlock(scope: !4879, file: !3, line: 278, column: 2)
!4879 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 278, column: 2)
!4880 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 278, column: 2)
!4881 = !DILocalVariable(name: "__dummy2", scope: !4878, file: !3, line: 278, type: !295)
!4882 = !DILocation(line: 269, column: 52, scope: !4870)
!4883 = !DILocation(line: 271, column: 2, scope: !4870)
!4884 = !DILocation(line: 271, column: 16, scope: !4870)
!4885 = !DILocation(line: 272, column: 2, scope: !4870)
!4886 = !DILocation(line: 272, column: 6, scope: !4870)
!4887 = !DILocation(line: 274, column: 7, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 274, column: 6)
!4889 = !DILocation(line: 274, column: 6, scope: !4870)
!4890 = !DILocation(line: 275, column: 3, scope: !4888)
!4891 = !DILocation(line: 277, column: 2, scope: !4870)
!4892 = !DILocation(line: 278, column: 2, scope: !4870)
!4893 = !DILocation(line: 278, column: 2, scope: !4880)
!4894 = !DILocation(line: 278, column: 2, scope: !4878)
!4895 = !DILocation(line: 278, column: 2, scope: !4879)
!4896 = !DILocation(line: 279, column: 31, scope: !4870)
!4897 = !DILocation(line: 279, column: 34, scope: !4870)
!4898 = !DILocation(line: 279, column: 10, scope: !4870)
!4899 = !DILocation(line: 279, column: 8, scope: !4870)
!4900 = !DILocation(line: 280, column: 26, scope: !4870)
!4901 = !DILocation(line: 280, column: 29, scope: !4870)
!4902 = !DILocation(line: 280, column: 35, scope: !4870)
!4903 = !DILocation(line: 280, column: 2, scope: !4870)
!4904 = !DILocation(line: 281, column: 2, scope: !4870)
!4905 = !DILocation(line: 282, column: 9, scope: !4870)
!4906 = !DILocation(line: 282, column: 2, scope: !4870)
!4907 = !DILocation(line: 283, column: 1, scope: !4870)
!4908 = distinct !DISubprogram(name: "snd_seq_unused_cells", scope: !13, file: !13, line: 75, type: !4122, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4909)
!4909 = !{!4910}
!4910 = !DILocalVariable(name: "pool", arg: 1, scope: !4908, file: !13, line: 75, type: !11)
!4911 = !DILocation(line: 75, column: 61, scope: !4908)
!4912 = !DILocation(line: 77, column: 9, scope: !4908)
!4913 = !DILocation(line: 77, column: 16, scope: !4908)
!4914 = !DILocation(line: 77, column: 22, scope: !4908)
!4915 = !DILocation(line: 77, column: 52, scope: !4908)
!4916 = !DILocation(line: 77, column: 58, scope: !4908)
!4917 = !DILocation(line: 77, column: 39, scope: !4908)
!4918 = !DILocation(line: 77, column: 37, scope: !4908)
!4919 = !DILocation(line: 77, column: 2, scope: !4908)
!4920 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 591, type: !4103, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4921)
!4921 = !{!4922, !4923, !4924}
!4922 = !DILocalVariable(name: "size", arg: 1, scope: !4920, file: !284, line: 591, type: !1185)
!4923 = !DILocalVariable(name: "flags", arg: 2, scope: !4920, file: !284, line: 591, type: !294)
!4924 = !DILocalVariable(name: "index", scope: !4925, file: !284, line: 594, type: !38)
!4925 = distinct !DILexicalBlock(scope: !4926, file: !284, line: 593, column: 42)
!4926 = distinct !DILexicalBlock(scope: !4920, file: !284, line: 593, column: 6)
!4927 = !DILocation(line: 591, column: 61, scope: !4920)
!4928 = !DILocation(line: 591, column: 73, scope: !4920)
!4929 = !DILocation(line: 593, column: 27, scope: !4926)
!4930 = !DILocation(line: 593, column: 6, scope: !4926)
!4931 = !DILocation(line: 593, column: 33, scope: !4926)
!4932 = !DILocation(line: 593, column: 36, scope: !4926)
!4933 = !DILocation(line: 593, column: 6, scope: !4920)
!4934 = !DILocation(line: 594, column: 3, scope: !4925)
!4935 = !DILocation(line: 594, column: 16, scope: !4925)
!4936 = !DILocation(line: 596, column: 7, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4925, file: !284, line: 596, column: 7)
!4938 = !DILocation(line: 596, column: 12, scope: !4937)
!4939 = !DILocation(line: 596, column: 7, scope: !4925)
!4940 = !DILocation(line: 597, column: 25, scope: !4937)
!4941 = !DILocation(line: 597, column: 31, scope: !4937)
!4942 = !DILocation(line: 597, column: 11, scope: !4937)
!4943 = !DILocation(line: 597, column: 4, scope: !4937)
!4944 = !DILocation(line: 599, column: 11, scope: !4925)
!4945 = !DILocation(line: 599, column: 9, scope: !4925)
!4946 = !DILocation(line: 601, column: 33, scope: !4925)
!4947 = !DILocation(line: 601, column: 40, scope: !4925)
!4948 = !DILocation(line: 601, column: 20, scope: !4925)
!4949 = !DILocation(line: 601, column: 5, scope: !4925)
!4950 = !DILocation(line: 601, column: 51, scope: !4925)
!4951 = !DILocation(line: 602, column: 5, scope: !4925)
!4952 = !DILocation(line: 602, column: 12, scope: !4925)
!4953 = !DILocation(line: 600, column: 10, scope: !4925)
!4954 = !DILocation(line: 600, column: 3, scope: !4925)
!4955 = !DILocation(line: 603, column: 2, scope: !4926)
!4956 = !DILocation(line: 604, column: 19, scope: !4920)
!4957 = !DILocation(line: 604, column: 25, scope: !4920)
!4958 = !DILocation(line: 604, column: 9, scope: !4920)
!4959 = !DILocation(line: 604, column: 2, scope: !4920)
!4960 = !DILocation(line: 605, column: 1, scope: !4920)
!4961 = !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 531, type: !4103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4962 = distinct !DISubprogram(name: "__kmalloc_index", scope: !284, file: !284, line: 444, type: !4963, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4965)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!38, !1185, !869}
!4965 = !{!4966, !4967}
!4966 = !DILocalVariable(name: "size", arg: 1, scope: !4962, file: !284, line: 444, type: !1185)
!4967 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4962, file: !284, line: 445, type: !869)
!4968 = !DILocation(line: 444, column: 60, scope: !4962)
!4969 = !DILocation(line: 445, column: 16, scope: !4962)
!4970 = !DILocation(line: 447, column: 7, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 447, column: 6)
!4972 = !DILocation(line: 447, column: 6, scope: !4962)
!4973 = !DILocation(line: 448, column: 3, scope: !4971)
!4974 = !DILocation(line: 450, column: 6, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 450, column: 6)
!4976 = !DILocation(line: 450, column: 11, scope: !4975)
!4977 = !DILocation(line: 450, column: 6, scope: !4962)
!4978 = !DILocation(line: 451, column: 3, scope: !4975)
!4979 = !DILocation(line: 453, column: 32, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 453, column: 6)
!4981 = !DILocation(line: 453, column: 37, scope: !4980)
!4982 = !DILocation(line: 453, column: 42, scope: !4980)
!4983 = !DILocation(line: 453, column: 45, scope: !4980)
!4984 = !DILocation(line: 453, column: 50, scope: !4980)
!4985 = !DILocation(line: 453, column: 6, scope: !4962)
!4986 = !DILocation(line: 454, column: 3, scope: !4980)
!4987 = !DILocation(line: 455, column: 32, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 455, column: 6)
!4989 = !DILocation(line: 455, column: 37, scope: !4988)
!4990 = !DILocation(line: 455, column: 43, scope: !4988)
!4991 = !DILocation(line: 455, column: 46, scope: !4988)
!4992 = !DILocation(line: 455, column: 51, scope: !4988)
!4993 = !DILocation(line: 455, column: 6, scope: !4962)
!4994 = !DILocation(line: 456, column: 3, scope: !4988)
!4995 = !DILocation(line: 457, column: 6, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 457, column: 6)
!4997 = !DILocation(line: 457, column: 11, scope: !4996)
!4998 = !DILocation(line: 457, column: 6, scope: !4962)
!4999 = !DILocation(line: 457, column: 26, scope: !4996)
!5000 = !DILocation(line: 458, column: 6, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 458, column: 6)
!5002 = !DILocation(line: 458, column: 11, scope: !5001)
!5003 = !DILocation(line: 458, column: 6, scope: !4962)
!5004 = !DILocation(line: 458, column: 26, scope: !5001)
!5005 = !DILocation(line: 459, column: 6, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 459, column: 6)
!5007 = !DILocation(line: 459, column: 11, scope: !5006)
!5008 = !DILocation(line: 459, column: 6, scope: !4962)
!5009 = !DILocation(line: 459, column: 26, scope: !5006)
!5010 = !DILocation(line: 460, column: 6, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 460, column: 6)
!5012 = !DILocation(line: 460, column: 11, scope: !5011)
!5013 = !DILocation(line: 460, column: 6, scope: !4962)
!5014 = !DILocation(line: 460, column: 26, scope: !5011)
!5015 = !DILocation(line: 461, column: 6, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 461, column: 6)
!5017 = !DILocation(line: 461, column: 11, scope: !5016)
!5018 = !DILocation(line: 461, column: 6, scope: !4962)
!5019 = !DILocation(line: 461, column: 26, scope: !5016)
!5020 = !DILocation(line: 462, column: 6, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 462, column: 6)
!5022 = !DILocation(line: 462, column: 11, scope: !5021)
!5023 = !DILocation(line: 462, column: 6, scope: !4962)
!5024 = !DILocation(line: 462, column: 26, scope: !5021)
!5025 = !DILocation(line: 463, column: 6, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 463, column: 6)
!5027 = !DILocation(line: 463, column: 11, scope: !5026)
!5028 = !DILocation(line: 463, column: 6, scope: !4962)
!5029 = !DILocation(line: 463, column: 26, scope: !5026)
!5030 = !DILocation(line: 464, column: 6, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 464, column: 6)
!5032 = !DILocation(line: 464, column: 11, scope: !5031)
!5033 = !DILocation(line: 464, column: 6, scope: !4962)
!5034 = !DILocation(line: 464, column: 26, scope: !5031)
!5035 = !DILocation(line: 465, column: 6, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 465, column: 6)
!5037 = !DILocation(line: 465, column: 11, scope: !5036)
!5038 = !DILocation(line: 465, column: 6, scope: !4962)
!5039 = !DILocation(line: 465, column: 26, scope: !5036)
!5040 = !DILocation(line: 466, column: 6, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 466, column: 6)
!5042 = !DILocation(line: 466, column: 11, scope: !5041)
!5043 = !DILocation(line: 466, column: 6, scope: !4962)
!5044 = !DILocation(line: 466, column: 26, scope: !5041)
!5045 = !DILocation(line: 467, column: 6, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 467, column: 6)
!5047 = !DILocation(line: 467, column: 11, scope: !5046)
!5048 = !DILocation(line: 467, column: 6, scope: !4962)
!5049 = !DILocation(line: 467, column: 26, scope: !5046)
!5050 = !DILocation(line: 468, column: 6, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 468, column: 6)
!5052 = !DILocation(line: 468, column: 11, scope: !5051)
!5053 = !DILocation(line: 468, column: 6, scope: !4962)
!5054 = !DILocation(line: 468, column: 26, scope: !5051)
!5055 = !DILocation(line: 469, column: 6, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 469, column: 6)
!5057 = !DILocation(line: 469, column: 11, scope: !5056)
!5058 = !DILocation(line: 469, column: 6, scope: !4962)
!5059 = !DILocation(line: 469, column: 26, scope: !5056)
!5060 = !DILocation(line: 470, column: 6, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 470, column: 6)
!5062 = !DILocation(line: 470, column: 11, scope: !5061)
!5063 = !DILocation(line: 470, column: 6, scope: !4962)
!5064 = !DILocation(line: 470, column: 26, scope: !5061)
!5065 = !DILocation(line: 471, column: 6, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 471, column: 6)
!5067 = !DILocation(line: 471, column: 11, scope: !5066)
!5068 = !DILocation(line: 471, column: 6, scope: !4962)
!5069 = !DILocation(line: 471, column: 26, scope: !5066)
!5070 = !DILocation(line: 472, column: 6, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 472, column: 6)
!5072 = !DILocation(line: 472, column: 11, scope: !5071)
!5073 = !DILocation(line: 472, column: 6, scope: !4962)
!5074 = !DILocation(line: 472, column: 26, scope: !5071)
!5075 = !DILocation(line: 473, column: 6, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 473, column: 6)
!5077 = !DILocation(line: 473, column: 11, scope: !5076)
!5078 = !DILocation(line: 473, column: 6, scope: !4962)
!5079 = !DILocation(line: 473, column: 26, scope: !5076)
!5080 = !DILocation(line: 474, column: 6, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 474, column: 6)
!5082 = !DILocation(line: 474, column: 11, scope: !5081)
!5083 = !DILocation(line: 474, column: 6, scope: !4962)
!5084 = !DILocation(line: 474, column: 27, scope: !5081)
!5085 = !DILocation(line: 475, column: 6, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 475, column: 6)
!5087 = !DILocation(line: 475, column: 11, scope: !5086)
!5088 = !DILocation(line: 475, column: 6, scope: !4962)
!5089 = !DILocation(line: 475, column: 32, scope: !5086)
!5090 = !DILocation(line: 477, column: 50, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !4962, file: !284, line: 477, column: 6)
!5092 = !{i8 0, i8 2}
!5093 = !DILocation(line: 477, column: 6, scope: !4962)
!5094 = !DILocation(line: 478, column: 3, scope: !5091)
!5095 = !DILocation(line: 478, column: 3, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !284, line: 478, column: 3)
!5097 = distinct !DILexicalBlock(scope: !5091, file: !284, line: 478, column: 3)
!5098 = !{i32 -2142293602}
!5099 = !DILocation(line: 478, column: 3, scope: !5097)
!5100 = !DILocation(line: 480, column: 3, scope: !5091)
!5101 = !DILocation(line: 480, column: 3, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5091, file: !284, line: 480, column: 3)
!5103 = !DILocation(line: 480, column: 3, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5102, file: !284, line: 480, column: 3)
!5105 = !DILocation(line: 480, column: 3, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5102, file: !284, line: 480, column: 3)
!5107 = !{i64 2152673897, i64 2152673926, i64 2152673972, i64 2152674030, i64 2152674084, i64 2152674138, i64 2152674193, i64 2152674224}
!5108 = !DILocation(line: 483, column: 2, scope: !4962)
!5109 = !DILocation(line: 484, column: 1, scope: !4962)
!5110 = !DISubprogram(name: "kmalloc_trace", scope: !284, file: !284, line: 525, type: !5111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!90, !5113, !294, !1185}
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5115, line: 11, flags: DIFlagFwdDecl)
!5115 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5116 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 401, type: !5117, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5119)
!5117 = !DISubroutineType(types: !5118)
!5118 = !{!283, !294, !295}
!5119 = !{!5120, !5121}
!5120 = !DILocalVariable(name: "flags", arg: 1, scope: !5116, file: !284, line: 401, type: !294)
!5121 = !DILocalVariable(name: "caller", arg: 2, scope: !5116, file: !284, line: 401, type: !295)
!5122 = !DILocation(line: 401, column: 67, scope: !5116)
!5123 = !DILocation(line: 401, column: 88, scope: !5116)
!5124 = !DILocation(line: 407, column: 6, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5116, file: !284, line: 407, column: 6)
!5126 = !DILocation(line: 407, column: 6, scope: !5116)
!5127 = !DILocation(line: 413, column: 3, scope: !5125)
!5128 = !DILocation(line: 423, column: 38, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5116, file: !284, line: 423, column: 6)
!5130 = !DILocation(line: 423, column: 44, scope: !5129)
!5131 = !DILocation(line: 423, column: 6, scope: !5116)
!5132 = !DILocation(line: 424, column: 3, scope: !5129)
!5133 = !DILocation(line: 426, column: 3, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5116, file: !284, line: 425, column: 6)
!5135 = !DILocation(line: 429, column: 1, scope: !5116)
!5136 = !DISubprogram(name: "__kmalloc", scope: !284, file: !284, line: 488, type: !4103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5137 = !DISubprogram(name: "__compiletime_assert_206", scope: !284, file: !284, line: 478, type: !2264, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5138 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4639, file: !4639, line: 80, type: !4640, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5139)
!5139 = !{!5140, !5141}
!5140 = !DILocalVariable(name: "v", arg: 1, scope: !5138, file: !4639, line: 80, type: !4642)
!5141 = !DILocalVariable(name: "size", arg: 2, scope: !5138, file: !4639, line: 80, type: !1185)
!5142 = !DILocation(line: 80, column: 74, scope: !5138)
!5143 = !DILocation(line: 80, column: 84, scope: !5138)
!5144 = !DILocation(line: 82, column: 20, scope: !5138)
!5145 = !DILocation(line: 82, column: 23, scope: !5138)
!5146 = !DILocation(line: 82, column: 2, scope: !5138)
!5147 = !DILocation(line: 83, column: 2, scope: !5138)
!5148 = !DILocation(line: 84, column: 1, scope: !5138)
!5149 = distinct !DISubprogram(name: "raw_atomic_set", scope: !5150, file: !5150, line: 488, type: !4142, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5151)
!5150 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5151 = !{!5152, !5153}
!5152 = !DILocalVariable(name: "v", arg: 1, scope: !5149, file: !5150, line: 488, type: !4144)
!5153 = !DILocalVariable(name: "i", arg: 2, scope: !5149, file: !5150, line: 488, type: !70)
!5154 = !DILocation(line: 488, column: 26, scope: !5149)
!5155 = !DILocation(line: 488, column: 33, scope: !5149)
!5156 = !DILocation(line: 490, column: 18, scope: !5149)
!5157 = !DILocation(line: 490, column: 21, scope: !5149)
!5158 = !DILocation(line: 490, column: 2, scope: !5149)
!5159 = !DILocation(line: 491, column: 1, scope: !5149)
!5160 = distinct !DISubprogram(name: "kasan_check_write", scope: !5161, file: !5161, line: 44, type: !5162, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5164)
!5161 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5162 = !DISubroutineType(types: !5163)
!5163 = !{!869, !4642, !38}
!5164 = !{!5165, !5166}
!5165 = !DILocalVariable(name: "p", arg: 1, scope: !5160, file: !5161, line: 44, type: !4642)
!5166 = !DILocalVariable(name: "size", arg: 2, scope: !5160, file: !5161, line: 44, type: !38)
!5167 = !DILocation(line: 44, column: 59, scope: !5160)
!5168 = !DILocation(line: 44, column: 75, scope: !5160)
!5169 = !DILocation(line: 46, column: 2, scope: !5160)
!5170 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5171, file: !5171, line: 229, type: !5172, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5174)
!5171 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5172 = !DISubroutineType(types: !5173)
!5173 = !{null, !4642, !1185, !70}
!5174 = !{!5175, !5176, !5177}
!5175 = !DILocalVariable(name: "ptr", arg: 1, scope: !5170, file: !5171, line: 229, type: !4642)
!5176 = !DILocalVariable(name: "size", arg: 2, scope: !5170, file: !5171, line: 229, type: !1185)
!5177 = !DILocalVariable(name: "type", arg: 3, scope: !5170, file: !5171, line: 230, type: !70)
!5178 = !DILocation(line: 229, column: 60, scope: !5170)
!5179 = !DILocation(line: 229, column: 72, scope: !5170)
!5180 = !DILocation(line: 230, column: 15, scope: !5170)
!5181 = !DILocation(line: 230, column: 23, scope: !5170)
!5182 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5183, file: !5183, line: 26, type: !4142, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5184)
!5183 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5184 = !{!5185, !5186}
!5185 = !DILocalVariable(name: "v", arg: 1, scope: !5182, file: !5183, line: 26, type: !4144)
!5186 = !DILocalVariable(name: "i", arg: 2, scope: !5182, file: !5183, line: 26, type: !70)
!5187 = !DILocation(line: 26, column: 55, scope: !5182)
!5188 = !DILocation(line: 26, column: 62, scope: !5182)
!5189 = !DILocation(line: 28, column: 2, scope: !5182)
!5190 = !DILocation(line: 28, column: 2, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5182, file: !5183, line: 28, column: 2)
!5192 = !DILocation(line: 29, column: 1, scope: !5182)
!5193 = distinct !DISubprogram(name: "list_empty", scope: !5194, file: !5194, line: 371, type: !5195, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5199)
!5194 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!70, !5197}
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!5199 = !{!5200}
!5200 = !DILocalVariable(name: "head", arg: 1, scope: !5193, file: !5194, line: 371, type: !5197)
!5201 = !DILocation(line: 371, column: 54, scope: !5193)
!5202 = !DILocation(line: 373, column: 9, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5193, file: !5194, line: 373, column: 9)
!5204 = !DILocation(line: 373, column: 9, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5203, file: !5194, line: 373, column: 9)
!5206 = !DILocation(line: 373, column: 34, scope: !5193)
!5207 = !DILocation(line: 373, column: 31, scope: !5193)
!5208 = !DILocation(line: 373, column: 2, scope: !5193)
!5209 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !4456, file: !4456, line: 29, type: !5210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{null, !4132}
!5212 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !4456, file: !4456, line: 41, type: !5210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5213 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !5150, file: !5150, line: 976, type: !4431, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5214)
!5214 = !{!5215}
!5215 = !DILocalVariable(name: "v", arg: 1, scope: !5213, file: !5150, line: 976, type: !4144)
!5216 = !DILocation(line: 976, column: 26, scope: !5213)
!5217 = !DILocation(line: 979, column: 18, scope: !5213)
!5218 = !DILocation(line: 979, column: 2, scope: !5213)
!5219 = !DILocation(line: 983, column: 1, scope: !5213)
!5220 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !5183, file: !5183, line: 51, type: !4431, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5221)
!5221 = !{!5222}
!5222 = !DILocalVariable(name: "v", arg: 1, scope: !5220, file: !5183, line: 51, type: !4144)
!5223 = !DILocation(line: 51, column: 55, scope: !5220)
!5224 = !DILocation(line: 54, column: 16, scope: !5220)
!5225 = !DILocation(line: 54, column: 19, scope: !5220)
!5226 = !DILocation(line: 53, column: 2, scope: !5220)
!5227 = !{i64 2148472066, i64 2148472105, i64 2148472126, i64 2148472163, i64 2148472186, i64 2148472056}
!5228 = !DILocation(line: 55, column: 1, scope: !5220)
!5229 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !5150, file: !5150, line: 1194, type: !4431, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5230)
!5230 = !{!5231}
!5231 = !DILocalVariable(name: "v", arg: 1, scope: !5229, file: !5150, line: 1194, type: !4144)
!5232 = !DILocation(line: 1194, column: 26, scope: !5229)
!5233 = !DILocation(line: 1197, column: 18, scope: !5229)
!5234 = !DILocation(line: 1197, column: 2, scope: !5229)
!5235 = !DILocation(line: 1201, column: 1, scope: !5229)
!5236 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !5183, file: !5183, line: 58, type: !4431, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5237)
!5237 = !{!5238}
!5238 = !DILocalVariable(name: "v", arg: 1, scope: !5236, file: !5183, line: 58, type: !4144)
!5239 = !DILocation(line: 58, column: 55, scope: !5236)
!5240 = !DILocation(line: 61, column: 16, scope: !5236)
!5241 = !DILocation(line: 61, column: 19, scope: !5236)
!5242 = !DILocation(line: 60, column: 2, scope: !5236)
!5243 = !{i64 2148472429, i64 2148472468, i64 2148472489, i64 2148472526, i64 2148472549, i64 2148472419}
!5244 = !DILocation(line: 62, column: 1, scope: !5236)
!5245 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4456, file: !4456, line: 43, type: !5246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{null, !4132, !295}
!5248 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !304, file: !304, line: 2066, type: !5249, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5251)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!70, !302, !70}
!5251 = !{!5252, !5253}
!5252 = !DILocalVariable(name: "tsk", arg: 1, scope: !5248, file: !304, line: 2066, type: !302)
!5253 = !DILocalVariable(name: "flag", arg: 2, scope: !5248, file: !304, line: 2066, type: !70)
!5254 = !DILocation(line: 2066, column: 60, scope: !5248)
!5255 = !DILocation(line: 2066, column: 69, scope: !5248)
!5256 = !DILocation(line: 2068, column: 29, scope: !5248)
!5257 = !DILocation(line: 2068, column: 52, scope: !5248)
!5258 = !DILocation(line: 2068, column: 9, scope: !5248)
!5259 = !DILocation(line: 2068, column: 2, scope: !5248)
!5260 = distinct !DISubprogram(name: "task_sigpending", scope: !3295, file: !3295, line: 387, type: !4661, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5261)
!5261 = !{!5262}
!5262 = !DILocalVariable(name: "p", arg: 1, scope: !5260, file: !3295, line: 387, type: !302)
!5263 = !DILocation(line: 387, column: 55, scope: !5260)
!5264 = !DILocation(line: 389, column: 9, scope: !5260)
!5265 = !DILocation(line: 389, column: 2, scope: !5260)
!5266 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !5267, file: !5267, line: 116, type: !5268, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5271)
!5267 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!70, !5270, !70}
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!5271 = !{!5272, !5273}
!5272 = !DILocalVariable(name: "ti", arg: 1, scope: !5266, file: !5267, line: 116, type: !5270)
!5273 = !DILocalVariable(name: "flag", arg: 2, scope: !5266, file: !5267, line: 116, type: !70)
!5274 = !DILocation(line: 116, column: 59, scope: !5266)
!5275 = !DILocation(line: 116, column: 67, scope: !5266)
!5276 = !DILocation(line: 118, column: 9, scope: !5266)
!5277 = !DILocation(line: 118, column: 2, scope: !5266)
!5278 = distinct !DISubprogram(name: "const_test_bit", scope: !5279, file: !5279, line: 166, type: !5280, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5285)
!5279 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5280 = !DISubroutineType(types: !5281)
!5281 = !{!869, !295, !5282}
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5284)
!5284 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !295)
!5285 = !{!5286, !5287, !5288, !5289, !5290}
!5286 = !DILocalVariable(name: "nr", arg: 1, scope: !5278, file: !5279, line: 166, type: !295)
!5287 = !DILocalVariable(name: "addr", arg: 2, scope: !5278, file: !5279, line: 166, type: !5282)
!5288 = !DILocalVariable(name: "p", scope: !5278, file: !5279, line: 168, type: !4015)
!5289 = !DILocalVariable(name: "mask", scope: !5278, file: !5279, line: 169, type: !295)
!5290 = !DILocalVariable(name: "val", scope: !5278, file: !5279, line: 170, type: !295)
!5291 = !DILocation(line: 166, column: 30, scope: !5278)
!5292 = !DILocation(line: 166, column: 64, scope: !5278)
!5293 = !DILocation(line: 168, column: 2, scope: !5278)
!5294 = !DILocation(line: 168, column: 23, scope: !5278)
!5295 = !DILocation(line: 168, column: 50, scope: !5278)
!5296 = !DILocation(line: 168, column: 57, scope: !5278)
!5297 = !DILocation(line: 168, column: 55, scope: !5278)
!5298 = !DILocation(line: 169, column: 2, scope: !5278)
!5299 = !DILocation(line: 169, column: 16, scope: !5278)
!5300 = !DILocation(line: 169, column: 23, scope: !5278)
!5301 = !DILocation(line: 170, column: 2, scope: !5278)
!5302 = !DILocation(line: 170, column: 16, scope: !5278)
!5303 = !DILocation(line: 170, column: 23, scope: !5278)
!5304 = !DILocation(line: 170, column: 22, scope: !5278)
!5305 = !DILocation(line: 172, column: 12, scope: !5278)
!5306 = !DILocation(line: 172, column: 18, scope: !5278)
!5307 = !DILocation(line: 172, column: 16, scope: !5278)
!5308 = !DILocation(line: 172, column: 10, scope: !5278)
!5309 = !DILocation(line: 172, column: 9, scope: !5278)
!5310 = !DILocation(line: 173, column: 1, scope: !5278)
!5311 = !DILocation(line: 172, column: 2, scope: !5278)
!5312 = distinct !DISubprogram(name: "_test_bit", scope: !5313, file: !5313, line: 139, type: !5280, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5314)
!5313 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5314 = !{!5315, !5316}
!5315 = !DILocalVariable(name: "nr", arg: 1, scope: !5312, file: !5313, line: 139, type: !295)
!5316 = !DILocalVariable(name: "addr", arg: 2, scope: !5312, file: !5313, line: 139, type: !5282)
!5317 = !DILocation(line: 139, column: 25, scope: !5312)
!5318 = !DILocation(line: 139, column: 59, scope: !5312)
!5319 = !DILocation(line: 141, column: 25, scope: !5312)
!5320 = !DILocation(line: 141, column: 32, scope: !5312)
!5321 = !DILocation(line: 141, column: 30, scope: !5312)
!5322 = !DILocation(line: 141, column: 2, scope: !5312)
!5323 = !DILocation(line: 142, column: 23, scope: !5312)
!5324 = !DILocation(line: 142, column: 27, scope: !5312)
!5325 = !DILocation(line: 142, column: 9, scope: !5312)
!5326 = !DILocation(line: 142, column: 2, scope: !5312)
!5327 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4639, file: !4639, line: 66, type: !4640, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5328)
!5328 = !{!5329, !5330}
!5329 = !DILocalVariable(name: "v", arg: 1, scope: !5327, file: !4639, line: 66, type: !4642)
!5330 = !DILocalVariable(name: "size", arg: 2, scope: !5327, file: !4639, line: 66, type: !1185)
!5331 = !DILocation(line: 66, column: 73, scope: !5327)
!5332 = !DILocation(line: 66, column: 83, scope: !5327)
!5333 = !DILocation(line: 68, column: 19, scope: !5327)
!5334 = !DILocation(line: 68, column: 22, scope: !5327)
!5335 = !DILocation(line: 68, column: 2, scope: !5327)
!5336 = !DILocation(line: 69, column: 2, scope: !5327)
!5337 = !DILocation(line: 70, column: 1, scope: !5327)
!5338 = distinct !DISubprogram(name: "arch_test_bit", scope: !5339, file: !5339, line: 237, type: !5280, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5340)
!5339 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5340 = !{!5341, !5342}
!5341 = !DILocalVariable(name: "nr", arg: 1, scope: !5338, file: !5339, line: 237, type: !295)
!5342 = !DILocalVariable(name: "addr", arg: 2, scope: !5338, file: !5339, line: 237, type: !5282)
!5343 = !DILocation(line: 237, column: 29, scope: !5338)
!5344 = !DILocation(line: 237, column: 63, scope: !5338)
!5345 = !DILocation(line: 239, column: 30, scope: !5338)
!5346 = !DILocation(line: 239, column: 9, scope: !5338)
!5347 = !DILocation(line: 239, column: 54, scope: !5338)
!5348 = !DILocation(line: 239, column: 58, scope: !5338)
!5349 = !DILocation(line: 239, column: 36, scope: !5338)
!5350 = !DILocation(line: 240, column: 26, scope: !5338)
!5351 = !DILocation(line: 240, column: 30, scope: !5338)
!5352 = !DILocation(line: 240, column: 8, scope: !5338)
!5353 = !DILocation(line: 239, column: 2, scope: !5338)
!5354 = distinct !DISubprogram(name: "kasan_check_read", scope: !5161, file: !5161, line: 40, type: !5162, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5355)
!5355 = !{!5356, !5357}
!5356 = !DILocalVariable(name: "p", arg: 1, scope: !5354, file: !5161, line: 40, type: !4642)
!5357 = !DILocalVariable(name: "size", arg: 2, scope: !5354, file: !5161, line: 40, type: !38)
!5358 = !DILocation(line: 40, column: 58, scope: !5354)
!5359 = !DILocation(line: 40, column: 74, scope: !5354)
!5360 = !DILocation(line: 42, column: 2, scope: !5354)
!5361 = distinct !DISubprogram(name: "constant_test_bit", scope: !5339, file: !5339, line: 204, type: !5362, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5364)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!869, !1143, !5282}
!5364 = !{!5365, !5366}
!5365 = !DILocalVariable(name: "nr", arg: 1, scope: !5361, file: !5339, line: 204, type: !1143)
!5366 = !DILocalVariable(name: "addr", arg: 2, scope: !5361, file: !5339, line: 204, type: !5282)
!5367 = !DILocation(line: 204, column: 52, scope: !5361)
!5368 = !DILocation(line: 204, column: 86, scope: !5361)
!5369 = !DILocation(line: 206, column: 19, scope: !5361)
!5370 = !DILocation(line: 206, column: 22, scope: !5361)
!5371 = !DILocation(line: 206, column: 15, scope: !5361)
!5372 = !DILocation(line: 207, column: 4, scope: !5361)
!5373 = !DILocation(line: 207, column: 9, scope: !5361)
!5374 = !DILocation(line: 207, column: 12, scope: !5361)
!5375 = !DILocation(line: 206, column: 44, scope: !5361)
!5376 = !DILocation(line: 207, column: 37, scope: !5361)
!5377 = !DILocation(line: 206, column: 2, scope: !5361)
!5378 = distinct !DISubprogram(name: "variable_test_bit", scope: !5339, file: !5339, line: 224, type: !5362, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5379)
!5379 = !{!5380, !5381, !5382}
!5380 = !DILocalVariable(name: "nr", arg: 1, scope: !5378, file: !5339, line: 224, type: !1143)
!5381 = !DILocalVariable(name: "addr", arg: 2, scope: !5378, file: !5339, line: 224, type: !5282)
!5382 = !DILocalVariable(name: "oldbit", scope: !5378, file: !5339, line: 226, type: !869)
!5383 = !DILocation(line: 224, column: 52, scope: !5378)
!5384 = !DILocation(line: 224, column: 86, scope: !5378)
!5385 = !DILocation(line: 226, column: 2, scope: !5378)
!5386 = !DILocation(line: 226, column: 7, scope: !5378)
!5387 = !DILocation(line: 231, column: 33, scope: !5378)
!5388 = !DILocation(line: 231, column: 46, scope: !5378)
!5389 = !DILocation(line: 228, column: 2, scope: !5378)
!5390 = !{i64 2148016023, i64 2148016097}
!5391 = !DILocation(line: 233, column: 9, scope: !5378)
!5392 = !DILocation(line: 234, column: 1, scope: !5378)
!5393 = !DILocation(line: 233, column: 2, scope: !5378)
!5394 = distinct !DISubprogram(name: "atomic_read", scope: !4141, file: !4141, line: 30, type: !5395, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5399)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!70, !5397}
!5397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5398, size: 64)
!5398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!5399 = !{!5400}
!5400 = !DILocalVariable(name: "v", arg: 1, scope: !5394, file: !4141, line: 30, type: !5397)
!5401 = !DILocation(line: 30, column: 29, scope: !5394)
!5402 = !DILocation(line: 32, column: 25, scope: !5394)
!5403 = !DILocation(line: 32, column: 2, scope: !5394)
!5404 = !DILocation(line: 33, column: 25, scope: !5394)
!5405 = !DILocation(line: 33, column: 9, scope: !5394)
!5406 = !DILocation(line: 33, column: 2, scope: !5394)
!5407 = distinct !DISubprogram(name: "raw_atomic_read", scope: !5150, file: !5150, line: 442, type: !5395, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5408)
!5408 = !{!5409}
!5409 = !DILocalVariable(name: "v", arg: 1, scope: !5407, file: !5150, line: 442, type: !5397)
!5410 = !DILocation(line: 442, column: 33, scope: !5407)
!5411 = !DILocation(line: 444, column: 26, scope: !5407)
!5412 = !DILocation(line: 444, column: 9, scope: !5407)
!5413 = !DILocation(line: 444, column: 2, scope: !5407)
!5414 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5183, file: !5183, line: 17, type: !5395, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !5415)
!5415 = !{!5416}
!5416 = !DILocalVariable(name: "v", arg: 1, scope: !5414, file: !5183, line: 17, type: !5397)
!5417 = !DILocation(line: 17, column: 61, scope: !5414)
!5418 = !DILocation(line: 23, column: 9, scope: !5414)
!5419 = !DILocation(line: 23, column: 2, scope: !5414)
