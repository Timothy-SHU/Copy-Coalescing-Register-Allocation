; ModuleID = 'sound/core/seq/seq_memory.c'
source_filename = "sound/core/seq/seq_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_seq_dump_var_event: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_seq_dump_var_event ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_seq_expand_var_event: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_seq_expand_var_event ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_seq_expand_var_event_at: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_seq_expand_var_event_at ; .previous"

%struct.lock_class_key = type {}
%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.snd_seq_event_data }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%union.snd_seq_event_data = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.snd_seq_ev_ext = type <{ i32, ptr }>
%struct.snd_seq_event_cell = type { %union.anon, ptr, ptr }
%union.anon = type { %struct.snd_seq_event }
%struct.snd_seq_pool = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.rb_node = type { i64, ptr, ptr }
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
%struct.poll_table_struct = type { ptr, i32 }
%struct.snd_info_buffer = type { ptr, i32, i32, i32, i32, i32 }

@__UNIQUE_ID___addressable_snd_seq_dump_var_event289 = internal global ptr @snd_seq_dump_var_event, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_snd_seq_expand_var_event290 = internal global ptr @snd_seq_expand_var_event, section ".discard.addressable", align 8, !dbg !4220
@__UNIQUE_ID___addressable_snd_seq_expand_var_event_at291 = internal global ptr @snd_seq_expand_var_event_at, section ".discard.addressable", align 8, !dbg !4222
@snd_seq_pool_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4224
@.str = private unnamed_addr constant [20 x i8] c"&pool->output_sleep\00", align 1, !dbg !4232
@.str.1 = private unnamed_addr constant [27 x i8] c"%sPool size          : %d\0A\00", align 1, !dbg !4235
@.str.2 = private unnamed_addr constant [27 x i8] c"%sCells in use       : %d\0A\00", align 1, !dbg !4240
@.str.3 = private unnamed_addr constant [27 x i8] c"%sPeak cells in use  : %d\0A\00", align 1, !dbg !4242
@.str.4 = private unnamed_addr constant [27 x i8] c"%sAlloc success      : %d\0A\00", align 1, !dbg !4244
@.str.5 = private unnamed_addr constant [27 x i8] c"%sAlloc failures     : %d\0A\00", align 1, !dbg !4246
@.str.6 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4248
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4254
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_snd_seq_dump_var_event289, ptr @__UNIQUE_ID___addressable_snd_seq_expand_var_event290, ptr @__UNIQUE_ID___addressable_snd_seq_expand_var_event_at291], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_dump_var_event(ptr noundef %event, ptr noundef %func, ptr noundef %private_data) #0 align 16 !dbg !4269 {
entry:
  %event.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %private_data.addr = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4280, metadata !DIExpression()), !dbg !4283
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !4281, metadata !DIExpression()), !dbg !4284
  store ptr %private_data, ptr %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private_data.addr, metadata !4282, metadata !DIExpression()), !dbg !4285
  %0 = load ptr, ptr %event.addr, align 8, !dbg !4286
  %1 = load ptr, ptr %func.addr, align 8, !dbg !4287
  %2 = load ptr, ptr %private_data.addr, align 8, !dbg !4288
  %call = call i32 @dump_var_event(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0) #21, !dbg !4289
  ret i32 %call, !dbg !4290
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dump_var_event(ptr noundef %event, ptr noundef %func, ptr noundef %private_data, i32 noundef %offset, i32 noundef %maxlen) #0 align 16 !dbg !4291 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %private_data.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %maxlen.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %err = alloca i32, align 4
  %cell = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %curptr = alloca ptr, align 8
  %size = alloca i32, align 4
  %size49 = alloca i32, align 4
  %curptr50 = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4295, metadata !DIExpression()), !dbg !4314
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !4296, metadata !DIExpression()), !dbg !4315
  store ptr %private_data, ptr %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private_data.addr, metadata !4297, metadata !DIExpression()), !dbg !4316
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4298, metadata !DIExpression()), !dbg !4317
  store i32 %maxlen, ptr %maxlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxlen.addr, metadata !4299, metadata !DIExpression()), !dbg !4318
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #22, !dbg !4319
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4300, metadata !DIExpression()), !dbg !4320
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #22, !dbg !4319
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4301, metadata !DIExpression()), !dbg !4321
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #22, !dbg !4322
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !4302, metadata !DIExpression()), !dbg !4323
  %0 = load ptr, ptr %event.addr, align 8, !dbg !4324
  %call = call i32 @get_var_len(ptr noundef %0) #21, !dbg !4325
  store i32 %call, ptr %len, align 4, !dbg !4326
  %1 = load i32, ptr %len, align 4, !dbg !4327
  %cmp = icmp sle i32 %1, 0, !dbg !4329
  br i1 %cmp, label %if.then, label %if.end, !dbg !4330

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %len, align 4, !dbg !4331
  store i32 %2, ptr %retval, align 4, !dbg !4332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !4332

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %len, align 4, !dbg !4333
  %4 = load i32, ptr %offset.addr, align 4, !dbg !4335
  %cmp1 = icmp sle i32 %3, %4, !dbg !4336
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4337

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !4338

if.end3:                                          ; preds = %if.end
  %5 = load i32, ptr %maxlen.addr, align 4, !dbg !4339
  %tobool = icmp ne i32 %5, 0, !dbg !4339
  br i1 %tobool, label %land.lhs.true, label %if.end7, !dbg !4341

land.lhs.true:                                    ; preds = %if.end3
  %6 = load i32, ptr %len, align 4, !dbg !4342
  %7 = load i32, ptr %offset.addr, align 4, !dbg !4343
  %8 = load i32, ptr %maxlen.addr, align 4, !dbg !4344
  %add = add i32 %7, %8, !dbg !4345
  %cmp4 = icmp sgt i32 %6, %add, !dbg !4346
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !4347

if.then5:                                         ; preds = %land.lhs.true
  %9 = load i32, ptr %offset.addr, align 4, !dbg !4348
  %10 = load i32, ptr %maxlen.addr, align 4, !dbg !4349
  %add6 = add i32 %9, %10, !dbg !4350
  store i32 %add6, ptr %len, align 4, !dbg !4351
  br label %if.end7, !dbg !4352

if.end7:                                          ; preds = %if.then5, %land.lhs.true, %if.end3
  %11 = load ptr, ptr %event.addr, align 8, !dbg !4353
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %11, i32 0, i32 7, !dbg !4354
  %len8 = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data, i32 0, i32 0, !dbg !4355
  %12 = load i32, ptr %len8, align 4, !dbg !4355
  %and = and i32 %12, -2147483648, !dbg !4356
  %tobool9 = icmp ne i32 %and, 0, !dbg !4356
  br i1 %tobool9, label %if.then10, label %if.end31, !dbg !4357

if.then10:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf) #22, !dbg !4358
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4303, metadata !DIExpression()), !dbg !4359
  call void @llvm.lifetime.start.p0(i64 8, ptr %curptr) #22, !dbg !4360
  call void @llvm.dbg.declare(metadata ptr %curptr, metadata !4306, metadata !DIExpression()), !dbg !4361
  %13 = load ptr, ptr %event.addr, align 8, !dbg !4362
  %data11 = getelementptr inbounds %struct.snd_seq_event, ptr %13, i32 0, i32 7, !dbg !4363
  %ptr = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data11, i32 0, i32 1, !dbg !4364
  %14 = load ptr, ptr %ptr, align 4, !dbg !4364
  store ptr %14, ptr %curptr, align 8, !dbg !4361
  %15 = load i32, ptr %offset.addr, align 4, !dbg !4365
  %16 = load ptr, ptr %curptr, align 8, !dbg !4366
  %idx.ext = sext i32 %15 to i64, !dbg !4366
  %add.ptr = getelementptr i8, ptr %16, i64 %idx.ext, !dbg !4366
  store ptr %add.ptr, ptr %curptr, align 8, !dbg !4366
  %17 = load i32, ptr %offset.addr, align 4, !dbg !4367
  %18 = load i32, ptr %len, align 4, !dbg !4368
  %sub = sub i32 %18, %17, !dbg !4368
  store i32 %sub, ptr %len, align 4, !dbg !4368
  br label %while.cond, !dbg !4369

while.cond:                                       ; preds = %cleanup.cont, %if.then10
  %19 = load i32, ptr %len, align 4, !dbg !4370
  %cmp12 = icmp sgt i32 %19, 0, !dbg !4371
  br i1 %cmp12, label %while.body, label %while.end, !dbg !4369

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #22, !dbg !4372
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4307, metadata !DIExpression()), !dbg !4373
  store i32 32, ptr %size, align 4, !dbg !4373
  %20 = load i32, ptr %len, align 4, !dbg !4374
  %21 = load i32, ptr %size, align 4, !dbg !4376
  %cmp13 = icmp slt i32 %20, %21, !dbg !4377
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !4378

if.then14:                                        ; preds = %while.body
  %22 = load i32, ptr %len, align 4, !dbg !4379
  store i32 %22, ptr %size, align 4, !dbg !4380
  br label %if.end15, !dbg !4381

if.end15:                                         ; preds = %if.then14, %while.body
  %arraydecay = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !4382
  %23 = load ptr, ptr %curptr, align 8, !dbg !4384
  %24 = load i32, ptr %size, align 4, !dbg !4385
  %conv = sext i32 %24 to i64, !dbg !4385
  %call16 = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %23, i64 noundef %conv) #21, !dbg !4386
  %tobool17 = icmp ne i64 %call16, 0, !dbg !4386
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !4387

if.then18:                                        ; preds = %if.end15
  store i32 -14, ptr %retval, align 4, !dbg !4388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4388

if.end19:                                         ; preds = %if.end15
  %25 = load ptr, ptr %func.addr, align 8, !dbg !4389
  %26 = load ptr, ptr %private_data.addr, align 8, !dbg !4390
  %arraydecay20 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !4391
  %27 = load i32, ptr %size, align 4, !dbg !4392
  %call21 = call i32 %25(ptr noundef %26, ptr noundef %arraydecay20, i32 noundef %27) #21, !dbg !4389
  store i32 %call21, ptr %err, align 4, !dbg !4393
  %28 = load i32, ptr %err, align 4, !dbg !4394
  %cmp22 = icmp slt i32 %28, 0, !dbg !4396
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !4397

if.then24:                                        ; preds = %if.end19
  %29 = load i32, ptr %err, align 4, !dbg !4398
  store i32 %29, ptr %retval, align 4, !dbg !4399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4399

if.end25:                                         ; preds = %if.end19
  %30 = load i32, ptr %size, align 4, !dbg !4400
  %31 = load ptr, ptr %curptr, align 8, !dbg !4401
  %idx.ext26 = sext i32 %30 to i64, !dbg !4401
  %add.ptr27 = getelementptr i8, ptr %31, i64 %idx.ext26, !dbg !4401
  store ptr %add.ptr27, ptr %curptr, align 8, !dbg !4401
  %32 = load i32, ptr %size, align 4, !dbg !4402
  %33 = load i32, ptr %len, align 4, !dbg !4403
  %sub28 = sub i32 %33, %32, !dbg !4403
  store i32 %sub28, ptr %len, align 4, !dbg !4403
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4404
  br label %cleanup, !dbg !4404

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #22, !dbg !4404
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !4369, !llvm.loop !4405

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !4408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !4408

cleanup29:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %curptr) #22, !dbg !4409
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf) #22, !dbg !4409
  br label %cleanup74

if.end31:                                         ; preds = %if.end7
  %34 = load ptr, ptr %event.addr, align 8, !dbg !4410
  %data32 = getelementptr inbounds %struct.snd_seq_event, ptr %34, i32 0, i32 7, !dbg !4412
  %len33 = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data32, i32 0, i32 0, !dbg !4413
  %35 = load i32, ptr %len33, align 4, !dbg !4413
  %and34 = and i32 %35, 1073741824, !dbg !4414
  %tobool35 = icmp ne i32 %and34, 0, !dbg !4414
  br i1 %tobool35, label %if.end43, label %if.then36, !dbg !4415

if.then36:                                        ; preds = %if.end31
  %36 = load ptr, ptr %func.addr, align 8, !dbg !4416
  %37 = load ptr, ptr %private_data.addr, align 8, !dbg !4417
  %38 = load ptr, ptr %event.addr, align 8, !dbg !4418
  %data37 = getelementptr inbounds %struct.snd_seq_event, ptr %38, i32 0, i32 7, !dbg !4419
  %ptr38 = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data37, i32 0, i32 1, !dbg !4420
  %39 = load ptr, ptr %ptr38, align 4, !dbg !4420
  %40 = load i32, ptr %offset.addr, align 4, !dbg !4421
  %idx.ext39 = sext i32 %40 to i64, !dbg !4422
  %add.ptr40 = getelementptr i8, ptr %39, i64 %idx.ext39, !dbg !4422
  %41 = load i32, ptr %len, align 4, !dbg !4423
  %42 = load i32, ptr %offset.addr, align 4, !dbg !4424
  %sub41 = sub i32 %41, %42, !dbg !4425
  %call42 = call i32 %36(ptr noundef %37, ptr noundef %add.ptr40, i32 noundef %sub41) #21, !dbg !4416
  store i32 %call42, ptr %retval, align 4, !dbg !4426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !4426

if.end43:                                         ; preds = %if.end31
  %43 = load ptr, ptr %event.addr, align 8, !dbg !4427
  %data44 = getelementptr inbounds %struct.snd_seq_event, ptr %43, i32 0, i32 7, !dbg !4428
  %ptr45 = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data44, i32 0, i32 1, !dbg !4429
  %44 = load ptr, ptr %ptr45, align 4, !dbg !4429
  store ptr %44, ptr %cell, align 8, !dbg !4430
  br label %for.cond, !dbg !4431

for.cond:                                         ; preds = %for.inc, %if.end43
  %45 = load i32, ptr %len, align 4, !dbg !4432
  %cmp46 = icmp sgt i32 %45, 0, !dbg !4433
  br i1 %cmp46, label %land.rhs, label %land.end, !dbg !4434

land.rhs:                                         ; preds = %for.cond
  %46 = load ptr, ptr %cell, align 8, !dbg !4435
  %tobool48 = icmp ne ptr %46, null, !dbg !4434
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %47 = phi i1 [ false, %for.cond ], [ %tobool48, %land.rhs ], !dbg !4436
  br i1 %47, label %for.body, label %for.end, !dbg !4437

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %size49) #22, !dbg !4438
  call void @llvm.dbg.declare(metadata ptr %size49, metadata !4309, metadata !DIExpression()), !dbg !4439
  store i32 28, ptr %size49, align 4, !dbg !4439
  call void @llvm.lifetime.start.p0(i64 8, ptr %curptr50) #22, !dbg !4440
  call void @llvm.dbg.declare(metadata ptr %curptr50, metadata !4313, metadata !DIExpression()), !dbg !4441
  %48 = load ptr, ptr %cell, align 8, !dbg !4442
  %49 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %48, i32 0, i32 0, !dbg !4443
  store ptr %49, ptr %curptr50, align 8, !dbg !4441
  %50 = load i32, ptr %offset.addr, align 4, !dbg !4444
  %51 = load i32, ptr %size49, align 4, !dbg !4446
  %cmp51 = icmp sge i32 %50, %51, !dbg !4447
  br i1 %cmp51, label %if.then53, label %if.end56, !dbg !4448

if.then53:                                        ; preds = %for.body
  %52 = load i32, ptr %size49, align 4, !dbg !4449
  %53 = load i32, ptr %offset.addr, align 4, !dbg !4451
  %sub54 = sub i32 %53, %52, !dbg !4451
  store i32 %sub54, ptr %offset.addr, align 4, !dbg !4451
  %54 = load i32, ptr %size49, align 4, !dbg !4452
  %55 = load i32, ptr %len, align 4, !dbg !4453
  %sub55 = sub i32 %55, %54, !dbg !4453
  store i32 %sub55, ptr %len, align 4, !dbg !4453
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !4454

if.end56:                                         ; preds = %for.body
  %56 = load i32, ptr %len, align 4, !dbg !4455
  %57 = load i32, ptr %size49, align 4, !dbg !4457
  %cmp57 = icmp slt i32 %56, %57, !dbg !4458
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !4459

if.then59:                                        ; preds = %if.end56
  %58 = load i32, ptr %len, align 4, !dbg !4460
  store i32 %58, ptr %size49, align 4, !dbg !4461
  br label %if.end60, !dbg !4462

if.end60:                                         ; preds = %if.then59, %if.end56
  %59 = load ptr, ptr %func.addr, align 8, !dbg !4463
  %60 = load ptr, ptr %private_data.addr, align 8, !dbg !4464
  %61 = load ptr, ptr %curptr50, align 8, !dbg !4465
  %62 = load i32, ptr %offset.addr, align 4, !dbg !4466
  %idx.ext61 = sext i32 %62 to i64, !dbg !4467
  %add.ptr62 = getelementptr i8, ptr %61, i64 %idx.ext61, !dbg !4467
  %63 = load i32, ptr %size49, align 4, !dbg !4468
  %64 = load i32, ptr %offset.addr, align 4, !dbg !4469
  %sub63 = sub i32 %63, %64, !dbg !4470
  %call64 = call i32 %59(ptr noundef %60, ptr noundef %add.ptr62, i32 noundef %sub63) #21, !dbg !4463
  store i32 %call64, ptr %err, align 4, !dbg !4471
  %65 = load i32, ptr %err, align 4, !dbg !4472
  %cmp65 = icmp slt i32 %65, 0, !dbg !4474
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !4475

if.then67:                                        ; preds = %if.end60
  %66 = load i32, ptr %err, align 4, !dbg !4476
  store i32 %66, ptr %retval, align 4, !dbg !4477
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !4477

if.end68:                                         ; preds = %if.end60
  store i32 0, ptr %offset.addr, align 4, !dbg !4478
  %67 = load i32, ptr %size49, align 4, !dbg !4479
  %68 = load i32, ptr %len, align 4, !dbg !4480
  %sub69 = sub i32 %68, %67, !dbg !4480
  store i32 %sub69, ptr %len, align 4, !dbg !4480
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4481
  br label %cleanup70, !dbg !4481

cleanup70:                                        ; preds = %if.end68, %if.then67, %if.then53
  call void @llvm.lifetime.end.p0(i64 8, ptr %curptr50) #22, !dbg !4481
  call void @llvm.lifetime.end.p0(i64 4, ptr %size49) #22, !dbg !4481
  %cleanup.dest72 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest72, label %cleanup74 [
    i32 0, label %cleanup.cont73
    i32 6, label %for.inc
  ]

cleanup.cont73:                                   ; preds = %cleanup70
  br label %for.inc, !dbg !4482

for.inc:                                          ; preds = %cleanup.cont73, %cleanup70
  %69 = load ptr, ptr %cell, align 8, !dbg !4483
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %69, i32 0, i32 2, !dbg !4484
  %70 = load ptr, ptr %next, align 8, !dbg !4484
  store ptr %70, ptr %cell, align 8, !dbg !4485
  br label %for.cond, !dbg !4486, !llvm.loop !4487

for.end:                                          ; preds = %land.end
  store i32 0, ptr %retval, align 4, !dbg !4489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !4489

cleanup74:                                        ; preds = %for.end, %cleanup70, %if.then36, %cleanup29, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #22, !dbg !4490
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #22, !dbg !4490
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #22, !dbg !4490
  %71 = load i32, ptr %retval, align 4, !dbg !4490
  ret i32 %71, !dbg !4490
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_expand_var_event(ptr noundef %event, i32 noundef %count, ptr noundef %buf, i32 noundef %in_kernel, i32 noundef %size_aligned) #0 align 16 !dbg !4491 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %in_kernel.addr = alloca i32, align 4
  %size_aligned.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %newlen = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__y = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4495, metadata !DIExpression()), !dbg !4506
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4496, metadata !DIExpression()), !dbg !4507
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4497, metadata !DIExpression()), !dbg !4508
  store i32 %in_kernel, ptr %in_kernel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %in_kernel.addr, metadata !4498, metadata !DIExpression()), !dbg !4509
  store i32 %size_aligned, ptr %size_aligned.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size_aligned.addr, metadata !4499, metadata !DIExpression()), !dbg !4510
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #22, !dbg !4511
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4500, metadata !DIExpression()), !dbg !4512
  call void @llvm.lifetime.start.p0(i64 4, ptr %newlen) #22, !dbg !4511
  call void @llvm.dbg.declare(metadata ptr %newlen, metadata !4501, metadata !DIExpression()), !dbg !4513
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #22, !dbg !4511
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4502, metadata !DIExpression()), !dbg !4514
  %0 = load ptr, ptr %event.addr, align 8, !dbg !4515
  %call = call i32 @get_var_len(ptr noundef %0) #21, !dbg !4516
  store i32 %call, ptr %len, align 4, !dbg !4517
  %1 = load i32, ptr %len, align 4, !dbg !4518
  %cmp = icmp slt i32 %1, 0, !dbg !4520
  br i1 %cmp, label %if.then, label %if.end, !dbg !4521

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %len, align 4, !dbg !4522
  store i32 %2, ptr %retval, align 4, !dbg !4523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4523

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %len, align 4, !dbg !4524
  store i32 %3, ptr %newlen, align 4, !dbg !4525
  %4 = load i32, ptr %size_aligned.addr, align 4, !dbg !4526
  %cmp1 = icmp sgt i32 %4, 0, !dbg !4527
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4528

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__y) #22, !dbg !4529
  call void @llvm.dbg.declare(metadata ptr %__y, metadata !4503, metadata !DIExpression()), !dbg !4529
  %5 = load i32, ptr %size_aligned.addr, align 4, !dbg !4529
  store i32 %5, ptr %__y, align 4, !dbg !4529
  %6 = load i32, ptr %len, align 4, !dbg !4529
  %7 = load i32, ptr %__y, align 4, !dbg !4529
  %sub = sub i32 %7, 1, !dbg !4529
  %add = add i32 %6, %sub, !dbg !4529
  %8 = load i32, ptr %__y, align 4, !dbg !4529
  %div = sdiv i32 %add, %8, !dbg !4529
  %9 = load i32, ptr %__y, align 4, !dbg !4529
  %mul = mul i32 %div, %9, !dbg !4529
  store i32 %mul, ptr %tmp, align 4, !dbg !4529
  call void @llvm.lifetime.end.p0(i64 4, ptr %__y) #22, !dbg !4530
  %10 = load i32, ptr %tmp, align 4, !dbg !4529
  store i32 %10, ptr %newlen, align 4, !dbg !4531
  br label %if.end3, !dbg !4532

if.end3:                                          ; preds = %if.then2, %if.end
  %11 = load i32, ptr %count.addr, align 4, !dbg !4533
  %12 = load i32, ptr %newlen, align 4, !dbg !4535
  %cmp4 = icmp slt i32 %11, %12, !dbg !4536
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4537

if.then5:                                         ; preds = %if.end3
  store i32 -11, ptr %retval, align 4, !dbg !4538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4538

if.end6:                                          ; preds = %if.end3
  %13 = load ptr, ptr %event.addr, align 8, !dbg !4539
  %14 = load i32, ptr %len, align 4, !dbg !4540
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !4541
  %16 = load i32, ptr %in_kernel.addr, align 4, !dbg !4542
  %tobool = icmp ne i32 %16, 0, !dbg !4542
  %call7 = call i32 @expand_var_event(ptr noundef %13, i32 noundef 0, i32 noundef %14, ptr noundef %15, i1 noundef zeroext %tobool) #21, !dbg !4543
  store i32 %call7, ptr %err, align 4, !dbg !4544
  %17 = load i32, ptr %err, align 4, !dbg !4545
  %cmp8 = icmp slt i32 %17, 0, !dbg !4547
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4548

if.then9:                                         ; preds = %if.end6
  %18 = load i32, ptr %err, align 4, !dbg !4549
  store i32 %18, ptr %retval, align 4, !dbg !4550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4550

if.end10:                                         ; preds = %if.end6
  %19 = load i32, ptr %len, align 4, !dbg !4551
  %20 = load i32, ptr %newlen, align 4, !dbg !4553
  %cmp11 = icmp ne i32 %19, %20, !dbg !4554
  br i1 %cmp11, label %if.then12, label %if.end25, !dbg !4555

if.then12:                                        ; preds = %if.end10
  %21 = load i32, ptr %in_kernel.addr, align 4, !dbg !4556
  %tobool13 = icmp ne i32 %21, 0, !dbg !4556
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !4559

if.then14:                                        ; preds = %if.then12
  %22 = load ptr, ptr %buf.addr, align 8, !dbg !4560
  %23 = load i32, ptr %len, align 4, !dbg !4561
  %idx.ext = sext i32 %23 to i64, !dbg !4562
  %add.ptr = getelementptr i8, ptr %22, i64 %idx.ext, !dbg !4562
  %24 = load i32, ptr %newlen, align 4, !dbg !4563
  %25 = load i32, ptr %len, align 4, !dbg !4564
  %sub15 = sub i32 %24, %25, !dbg !4565
  %conv = sext i32 %sub15 to i64, !dbg !4563
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv, i1 false), !dbg !4566
  br label %if.end24, !dbg !4566

if.else:                                          ; preds = %if.then12
  %26 = load ptr, ptr %buf.addr, align 8, !dbg !4567
  %27 = load i32, ptr %len, align 4, !dbg !4569
  %idx.ext16 = sext i32 %27 to i64, !dbg !4570
  %add.ptr17 = getelementptr i8, ptr %26, i64 %idx.ext16, !dbg !4570
  %28 = load i32, ptr %newlen, align 4, !dbg !4571
  %29 = load i32, ptr %len, align 4, !dbg !4572
  %sub18 = sub i32 %28, %29, !dbg !4573
  %conv19 = sext i32 %sub18 to i64, !dbg !4571
  %call20 = call i64 @clear_user(ptr noundef %add.ptr17, i64 noundef %conv19) #21, !dbg !4574
  %tobool21 = icmp ne i64 %call20, 0, !dbg !4574
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4575

if.then22:                                        ; preds = %if.else
  store i32 -14, ptr %retval, align 4, !dbg !4576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4576

if.end23:                                         ; preds = %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then14
  br label %if.end25, !dbg !4577

if.end25:                                         ; preds = %if.end24, %if.end10
  %30 = load i32, ptr %newlen, align 4, !dbg !4578
  store i32 %30, ptr %retval, align 4, !dbg !4579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4579

cleanup:                                          ; preds = %if.end25, %if.then22, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #22, !dbg !4580
  call void @llvm.lifetime.end.p0(i64 4, ptr %newlen) #22, !dbg !4580
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #22, !dbg !4580
  %31 = load i32, ptr %retval, align 4, !dbg !4580
  ret i32 %31, !dbg !4580
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_var_len(ptr noundef %event) #0 align 16 !dbg !4581 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4585, metadata !DIExpression()), !dbg !4586
  %0 = load ptr, ptr %event.addr, align 8, !dbg !4587
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %0, i32 0, i32 1, !dbg !4589
  %1 = load i8, ptr %flags, align 1, !dbg !4589
  %conv = zext i8 %1 to i32, !dbg !4587
  %and = and i32 %conv, 12, !dbg !4590
  %cmp = icmp ne i32 %and, 4, !dbg !4591
  br i1 %cmp, label %if.then, label %if.end, !dbg !4592

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4593
  br label %return, !dbg !4593

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %event.addr, align 8, !dbg !4594
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %2, i32 0, i32 7, !dbg !4595
  %len = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data, i32 0, i32 0, !dbg !4596
  %3 = load i32, ptr %len, align 4, !dbg !4596
  %and2 = and i32 %3, 1073741823, !dbg !4597
  store i32 %and2, ptr %retval, align 4, !dbg !4598
  br label %return, !dbg !4598

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !4599
  ret i32 %4, !dbg !4599
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @expand_var_event(ptr noundef %event, i32 noundef %offset, i32 noundef %size, ptr noundef %buf, i1 noundef zeroext %in_kernel) #0 align 16 !dbg !4600 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %in_kernel.addr = alloca i8, align 1
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4604, metadata !DIExpression()), !dbg !4609
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4605, metadata !DIExpression()), !dbg !4610
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4606, metadata !DIExpression()), !dbg !4611
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4607, metadata !DIExpression()), !dbg !4612
  %frombool = zext i1 %in_kernel to i8
  store i8 %frombool, ptr %in_kernel.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %in_kernel.addr, metadata !4608, metadata !DIExpression()), !dbg !4613
  %0 = load ptr, ptr %event.addr, align 8, !dbg !4614
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %0, i32 0, i32 7, !dbg !4616
  %len = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data, i32 0, i32 0, !dbg !4617
  %1 = load i32, ptr %len, align 4, !dbg !4617
  %and = and i32 %1, -2147483648, !dbg !4618
  %tobool = icmp ne i32 %and, 0, !dbg !4618
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4619

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %in_kernel.addr, align 1, !dbg !4620, !range !4623, !noundef !1295
  %tobool1 = trunc i8 %2 to i1, !dbg !4620
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !4624

if.then2:                                         ; preds = %if.then
  store i32 -22, ptr %retval, align 4, !dbg !4625
  br label %return, !dbg !4625

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !4626
  %4 = load ptr, ptr %event.addr, align 8, !dbg !4628
  %data3 = getelementptr inbounds %struct.snd_seq_event, ptr %4, i32 0, i32 7, !dbg !4629
  %ptr = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data3, i32 0, i32 1, !dbg !4630
  %5 = load ptr, ptr %ptr, align 4, !dbg !4630
  %6 = load i32, ptr %offset.addr, align 4, !dbg !4631
  %idx.ext = sext i32 %6 to i64, !dbg !4632
  %add.ptr = getelementptr i8, ptr %5, i64 %idx.ext, !dbg !4632
  %7 = load i32, ptr %size.addr, align 4, !dbg !4633
  %conv = sext i32 %7 to i64, !dbg !4633
  %call = call i64 @copy_from_user(ptr noundef %3, ptr noundef %add.ptr, i64 noundef %conv) #21, !dbg !4634
  %tobool4 = icmp ne i64 %call, 0, !dbg !4634
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4635

if.then5:                                         ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !4636
  br label %return, !dbg !4636

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4637
  br label %return, !dbg !4637

if.end7:                                          ; preds = %entry
  %8 = load ptr, ptr %event.addr, align 8, !dbg !4638
  %9 = load i8, ptr %in_kernel.addr, align 1, !dbg !4639, !range !4623, !noundef !1295
  %tobool8 = trunc i8 %9 to i1, !dbg !4639
  %10 = zext i1 %tobool8 to i64, !dbg !4639
  %cond = select i1 %tobool8, ptr @seq_copy_in_kernel, ptr @seq_copy_in_user, !dbg !4639
  %11 = load i32, ptr %offset.addr, align 4, !dbg !4640
  %12 = load i32, ptr %size.addr, align 4, !dbg !4641
  %call10 = call i32 @dump_var_event(ptr noundef %8, ptr noundef %cond, ptr noundef %buf.addr, i32 noundef %11, i32 noundef %12) #21, !dbg !4642
  store i32 %call10, ptr %retval, align 4, !dbg !4643
  br label %return, !dbg !4643

return:                                           ; preds = %if.end7, %if.end6, %if.then5, %if.then2
  %13 = load i32, ptr %retval, align 4, !dbg !4644
  ret i32 %13, !dbg !4644
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @clear_user(ptr noundef %to, i64 noundef %n) #4 align 16 !dbg !4645 {
entry:
  %retval = alloca i64, align 8
  %to.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4650, metadata !DIExpression()), !dbg !4652
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4651, metadata !DIExpression()), !dbg !4653
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4654
  %1 = load i64, ptr %n.addr, align 8, !dbg !4656
  %call = call zeroext i1 @__access_ok(ptr noundef %0, i64 noundef %1) #21, !dbg !4657
  br i1 %call, label %if.then, label %if.end, !dbg !4658

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4659
  %3 = load i64, ptr %n.addr, align 8, !dbg !4660
  %call1 = call i64 @__clear_user(ptr noundef %2, i64 noundef %3) #21, !dbg !4661
  store i64 %call1, ptr %retval, align 8, !dbg !4662
  br label %return, !dbg !4662

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %n.addr, align 8, !dbg !4663
  store i64 %4, ptr %retval, align 8, !dbg !4664
  br label %return, !dbg !4664

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !4665
  ret i64 %5, !dbg !4665
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_expand_var_event_at(ptr noundef %event, i32 noundef %count, ptr noundef %buf, i32 noundef %offset) #0 align 16 !dbg !4666 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4670, metadata !DIExpression()), !dbg !4676
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4671, metadata !DIExpression()), !dbg !4677
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4672, metadata !DIExpression()), !dbg !4678
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4673, metadata !DIExpression()), !dbg !4679
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #22, !dbg !4680
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4674, metadata !DIExpression()), !dbg !4681
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #22, !dbg !4680
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4675, metadata !DIExpression()), !dbg !4682
  %0 = load ptr, ptr %event.addr, align 8, !dbg !4683
  %call = call i32 @get_var_len(ptr noundef %0) #21, !dbg !4684
  store i32 %call, ptr %len, align 4, !dbg !4685
  %1 = load i32, ptr %len, align 4, !dbg !4686
  %cmp = icmp slt i32 %1, 0, !dbg !4688
  br i1 %cmp, label %if.then, label %if.end, !dbg !4689

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %len, align 4, !dbg !4690
  store i32 %2, ptr %retval, align 4, !dbg !4691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4691

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %len, align 4, !dbg !4692
  %4 = load i32, ptr %offset.addr, align 4, !dbg !4694
  %cmp1 = icmp sle i32 %3, %4, !dbg !4695
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4696

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4697
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4697

if.end3:                                          ; preds = %if.end
  %5 = load i32, ptr %offset.addr, align 4, !dbg !4698
  %6 = load i32, ptr %len, align 4, !dbg !4699
  %sub = sub i32 %6, %5, !dbg !4699
  store i32 %sub, ptr %len, align 4, !dbg !4699
  %7 = load i32, ptr %len, align 4, !dbg !4700
  %8 = load i32, ptr %count.addr, align 4, !dbg !4702
  %cmp4 = icmp sgt i32 %7, %8, !dbg !4703
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4704

if.then5:                                         ; preds = %if.end3
  %9 = load i32, ptr %count.addr, align 4, !dbg !4705
  store i32 %9, ptr %len, align 4, !dbg !4706
  br label %if.end6, !dbg !4707

if.end6:                                          ; preds = %if.then5, %if.end3
  %10 = load ptr, ptr %event.addr, align 8, !dbg !4708
  %11 = load i32, ptr %offset.addr, align 4, !dbg !4709
  %12 = load i32, ptr %count.addr, align 4, !dbg !4710
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !4711
  %call7 = call i32 @expand_var_event(ptr noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef %13, i1 noundef zeroext true) #21, !dbg !4712
  store i32 %call7, ptr %err, align 4, !dbg !4713
  %14 = load i32, ptr %err, align 4, !dbg !4714
  %cmp8 = icmp slt i32 %14, 0, !dbg !4716
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4717

if.then9:                                         ; preds = %if.end6
  %15 = load i32, ptr %err, align 4, !dbg !4718
  store i32 %15, ptr %retval, align 4, !dbg !4719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4719

if.end10:                                         ; preds = %if.end6
  %16 = load i32, ptr %len, align 4, !dbg !4720
  store i32 %16, ptr %retval, align 4, !dbg !4721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4721

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #22, !dbg !4722
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #22, !dbg !4722
  %17 = load i32, ptr %retval, align 4, !dbg !4722
  ret i32 %17, !dbg !4722
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_cell_free(ptr noundef %cell) #0 align 16 !dbg !4723 {
entry:
  %cell.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %pool = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on10 = alloca i32, align 4
  %tmp18 = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp31 = alloca i32, align 4
  %curp = alloca ptr, align 8
  %nextptr = alloca ptr, align 8
  store ptr %cell, ptr %cell.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cell.addr, metadata !4727, metadata !DIExpression()), !dbg !4747
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #22, !dbg !4748
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4728, metadata !DIExpression()), !dbg !4749
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #22, !dbg !4750
  call void @llvm.dbg.declare(metadata ptr %pool, metadata !4729, metadata !DIExpression()), !dbg !4751
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #22, !dbg !4752
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4730, metadata !DIExpression()), !dbg !4752
  %0 = load ptr, ptr %cell.addr, align 8, !dbg !4752
  %tobool = icmp ne ptr %0, null, !dbg !4752
  %lnot = xor i1 %tobool, true, !dbg !4752
  %lnot1 = xor i1 %lnot, true, !dbg !4752
  %lnot2 = xor i1 %lnot1, true, !dbg !4752
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4752
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4752
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4752
  %tobool3 = icmp ne i32 %1, 0, !dbg !4752
  %lnot4 = xor i1 %tobool3, true, !dbg !4752
  %lnot6 = xor i1 %lnot4, true, !dbg !4752
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4752
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4752
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4752
  store i64 %expval, ptr %tmp, align 8, !dbg !4752
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #22, !dbg !4753
  %2 = load i64, ptr %tmp, align 8, !dbg !4752
  %tobool8 = icmp ne i64 %2, 0, !dbg !4753
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4754

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4755

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %cell.addr, align 8, !dbg !4756
  %pool9 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %3, i32 0, i32 1, !dbg !4757
  %4 = load ptr, ptr %pool9, align 8, !dbg !4757
  store ptr %4, ptr %pool, align 8, !dbg !4758
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on10) #22, !dbg !4759
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on10, metadata !4733, metadata !DIExpression()), !dbg !4759
  %5 = load ptr, ptr %pool, align 8, !dbg !4759
  %tobool11 = icmp ne ptr %5, null, !dbg !4759
  %lnot12 = xor i1 %tobool11, true, !dbg !4759
  %lnot14 = xor i1 %lnot12, true, !dbg !4759
  %lnot16 = xor i1 %lnot14, true, !dbg !4759
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !4759
  store i32 %lnot.ext17, ptr %__ret_warn_on10, align 4, !dbg !4759
  %6 = load i32, ptr %__ret_warn_on10, align 4, !dbg !4759
  %tobool19 = icmp ne i32 %6, 0, !dbg !4759
  %lnot20 = xor i1 %tobool19, true, !dbg !4759
  %lnot22 = xor i1 %lnot20, true, !dbg !4759
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4759
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4759
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4759
  store i64 %expval25, ptr %tmp18, align 8, !dbg !4759
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on10) #22, !dbg !4760
  %7 = load i64, ptr %tmp18, align 8, !dbg !4759
  %tobool26 = icmp ne i64 %7, 0, !dbg !4760
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !4761

if.then27:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4762

if.end28:                                         ; preds = %if.end
  br label %do.body, !dbg !4763

do.body:                                          ; preds = %if.end28
  br label %do.body29, !dbg !4764

do.body29:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #22, !dbg !4765
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4736, metadata !DIExpression()), !dbg !4765
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #22, !dbg !4765
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4740, metadata !DIExpression()), !dbg !4765
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4765
  %conv30 = zext i1 %cmp to i32, !dbg !4765
  store i32 1, ptr %tmp31, align 4, !dbg !4765
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #22, !dbg !4766
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #22, !dbg !4766
  %8 = load i32, ptr %tmp31, align 4, !dbg !4765
  %9 = load ptr, ptr %pool, align 8, !dbg !4766
  %lock = getelementptr inbounds %struct.snd_seq_pool, ptr %9, i32 0, i32 12, !dbg !4766
  %call = call ptr @spinlock_check(ptr noundef %lock) #21, !dbg !4766
  %call32 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #21, !dbg !4766
  store i64 %call32, ptr %flags, align 8, !dbg !4766
  br label %do.cond, !dbg !4766

do.cond:                                          ; preds = %do.body29
  br label %do.end, !dbg !4766

do.end:                                           ; preds = %do.cond
  br label %do.cond33, !dbg !4764

do.cond33:                                        ; preds = %do.end
  br label %do.end34, !dbg !4764

do.end34:                                         ; preds = %do.cond33
  %10 = load ptr, ptr %pool, align 8, !dbg !4767
  %11 = load ptr, ptr %cell.addr, align 8, !dbg !4768
  call void @free_cell(ptr noundef %10, ptr noundef %11) #21, !dbg !4769
  %12 = load ptr, ptr %cell.addr, align 8, !dbg !4770
  %13 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %12, i32 0, i32 0, !dbg !4770
  %flags35 = getelementptr inbounds %struct.snd_seq_event, ptr %13, i32 0, i32 1, !dbg !4770
  %14 = load i8, ptr %flags35, align 1, !dbg !4770
  %conv36 = zext i8 %14 to i32, !dbg !4770
  %and = and i32 %conv36, 12, !dbg !4770
  %cmp37 = icmp eq i32 %and, 4, !dbg !4770
  br i1 %cmp37, label %if.then39, label %if.end47, !dbg !4771

if.then39:                                        ; preds = %do.end34
  %15 = load ptr, ptr %cell.addr, align 8, !dbg !4772
  %16 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %15, i32 0, i32 0, !dbg !4773
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %16, i32 0, i32 7, !dbg !4774
  %len = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data, i32 0, i32 0, !dbg !4775
  %17 = load i32, ptr %len, align 8, !dbg !4775
  %and40 = and i32 %17, 1073741824, !dbg !4776
  %tobool41 = icmp ne i32 %and40, 0, !dbg !4776
  br i1 %tobool41, label %if.then42, label %if.end46, !dbg !4777

if.then42:                                        ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 8, ptr %curp) #22, !dbg !4778
  call void @llvm.dbg.declare(metadata ptr %curp, metadata !4741, metadata !DIExpression()), !dbg !4779
  call void @llvm.lifetime.start.p0(i64 8, ptr %nextptr) #22, !dbg !4778
  call void @llvm.dbg.declare(metadata ptr %nextptr, metadata !4746, metadata !DIExpression()), !dbg !4780
  %18 = load ptr, ptr %cell.addr, align 8, !dbg !4781
  %19 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %18, i32 0, i32 0, !dbg !4782
  %data43 = getelementptr inbounds %struct.snd_seq_event, ptr %19, i32 0, i32 7, !dbg !4783
  %ptr = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data43, i32 0, i32 1, !dbg !4784
  %20 = load ptr, ptr %ptr, align 4, !dbg !4784
  store ptr %20, ptr %curp, align 8, !dbg !4785
  br label %for.cond, !dbg !4786

for.cond:                                         ; preds = %for.inc, %if.then42
  %21 = load ptr, ptr %curp, align 8, !dbg !4787
  %tobool44 = icmp ne ptr %21, null, !dbg !4790
  br i1 %tobool44, label %for.body, label %for.end, !dbg !4790

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %curp, align 8, !dbg !4791
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %22, i32 0, i32 2, !dbg !4793
  %23 = load ptr, ptr %next, align 8, !dbg !4793
  store ptr %23, ptr %nextptr, align 8, !dbg !4794
  %24 = load ptr, ptr %pool, align 8, !dbg !4795
  %free = getelementptr inbounds %struct.snd_seq_pool, ptr %24, i32 0, i32 1, !dbg !4796
  %25 = load ptr, ptr %free, align 8, !dbg !4796
  %26 = load ptr, ptr %curp, align 8, !dbg !4797
  %next45 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %26, i32 0, i32 2, !dbg !4798
  store ptr %25, ptr %next45, align 8, !dbg !4799
  %27 = load ptr, ptr %pool, align 8, !dbg !4800
  %28 = load ptr, ptr %curp, align 8, !dbg !4801
  call void @free_cell(ptr noundef %27, ptr noundef %28) #21, !dbg !4802
  br label %for.inc, !dbg !4803

for.inc:                                          ; preds = %for.body
  %29 = load ptr, ptr %nextptr, align 8, !dbg !4804
  store ptr %29, ptr %curp, align 8, !dbg !4805
  br label %for.cond, !dbg !4806, !llvm.loop !4807

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %nextptr) #22, !dbg !4809
  call void @llvm.lifetime.end.p0(i64 8, ptr %curp) #22, !dbg !4809
  br label %if.end46, !dbg !4810

if.end46:                                         ; preds = %for.end, %if.then39
  br label %if.end47, !dbg !4811

if.end47:                                         ; preds = %if.end46, %do.end34
  %30 = load ptr, ptr %pool, align 8, !dbg !4812
  %output_sleep = getelementptr inbounds %struct.snd_seq_pool, ptr %30, i32 0, i32 11, !dbg !4814
  %call48 = call i32 @waitqueue_active(ptr noundef %output_sleep) #21, !dbg !4815
  %tobool49 = icmp ne i32 %call48, 0, !dbg !4815
  br i1 %tobool49, label %if.then50, label %if.end57, !dbg !4816

if.then50:                                        ; preds = %if.end47
  %31 = load ptr, ptr %pool, align 8, !dbg !4817
  %call51 = call i32 @snd_seq_output_ok(ptr noundef %31) #21, !dbg !4820
  %tobool52 = icmp ne i32 %call51, 0, !dbg !4820
  br i1 %tobool52, label %if.then53, label %if.end56, !dbg !4821

if.then53:                                        ; preds = %if.then50
  %32 = load ptr, ptr %pool, align 8, !dbg !4822
  %output_sleep54 = getelementptr inbounds %struct.snd_seq_pool, ptr %32, i32 0, i32 11, !dbg !4822
  %call55 = call i32 @__wake_up(ptr noundef %output_sleep54, i32 noundef 3, i32 noundef 1, ptr noundef null) #21, !dbg !4822
  br label %if.end56, !dbg !4822

if.end56:                                         ; preds = %if.then53, %if.then50
  br label %if.end57, !dbg !4823

if.end57:                                         ; preds = %if.end56, %if.end47
  %33 = load ptr, ptr %pool, align 8, !dbg !4824
  %lock58 = getelementptr inbounds %struct.snd_seq_pool, ptr %33, i32 0, i32 12, !dbg !4825
  %34 = load i64, ptr %flags, align 8, !dbg !4826
  call void @spin_unlock_irqrestore(ptr noundef %lock58, i64 noundef %34) #21, !dbg !4827
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4828
  br label %cleanup, !dbg !4828

cleanup:                                          ; preds = %if.end57, %if.then27, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #22, !dbg !4828
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #22, !dbg !4828
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4828

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4829 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !4834 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4839, metadata !DIExpression()), !dbg !4840
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4841
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4842
  ret ptr %1, !dbg !4843
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cell(ptr noundef %pool, ptr noundef %cell) #7 align 16 !dbg !4844 {
entry:
  %pool.addr = alloca ptr, align 8
  %cell.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !4848, metadata !DIExpression()), !dbg !4850
  store ptr %cell, ptr %cell.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cell.addr, metadata !4849, metadata !DIExpression()), !dbg !4851
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !4852
  %free = getelementptr inbounds %struct.snd_seq_pool, ptr %0, i32 0, i32 1, !dbg !4853
  %1 = load ptr, ptr %free, align 8, !dbg !4853
  %2 = load ptr, ptr %cell.addr, align 8, !dbg !4854
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %2, i32 0, i32 2, !dbg !4855
  store ptr %1, ptr %next, align 8, !dbg !4856
  %3 = load ptr, ptr %cell.addr, align 8, !dbg !4857
  %4 = load ptr, ptr %pool.addr, align 8, !dbg !4858
  %free1 = getelementptr inbounds %struct.snd_seq_pool, ptr %4, i32 0, i32 1, !dbg !4859
  store ptr %3, ptr %free1, align 8, !dbg !4860
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !4861
  %counter = getelementptr inbounds %struct.snd_seq_pool, ptr %5, i32 0, i32 3, !dbg !4862
  call void @atomic_dec(ptr noundef %counter) #21, !dbg !4863
  ret void, !dbg !4864
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @waitqueue_active(ptr noundef %wq_head) #7 align 16 !dbg !4865 {
entry:
  %wq_head.addr = alloca ptr, align 8
  store ptr %wq_head, ptr %wq_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_head.addr, metadata !4870, metadata !DIExpression()), !dbg !4871
  %0 = load ptr, ptr %wq_head.addr, align 8, !dbg !4872
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1, !dbg !4873
  %call = call i32 @list_empty(ptr noundef %head) #21, !dbg !4874
  %tobool = icmp ne i32 %call, 0, !dbg !4875
  %lnot = xor i1 %tobool, true, !dbg !4875
  %lnot.ext = zext i1 %lnot to i32, !dbg !4875
  ret i32 %lnot.ext, !dbg !4876
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_seq_output_ok(ptr noundef %pool) #7 align 16 !dbg !4877 {
entry:
  %pool.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !4881, metadata !DIExpression()), !dbg !4882
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !4883
  %call = call i32 @snd_seq_pool_available(ptr noundef %0) #21, !dbg !4884
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !4885
  %room = getelementptr inbounds %struct.snd_seq_pool, ptr %1, i32 0, i32 5, !dbg !4886
  %2 = load i32, ptr %room, align 4, !dbg !4886
  %cmp = icmp sge i32 %call, %2, !dbg !4887
  %conv = zext i1 %cmp to i32, !dbg !4887
  ret i32 %conv, !dbg !4888
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4889 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !4892 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4896, metadata !DIExpression()), !dbg !4902
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4897, metadata !DIExpression()), !dbg !4903
  br label %do.body, !dbg !4904

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #22, !dbg !4905
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4898, metadata !DIExpression()), !dbg !4905
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #22, !dbg !4905
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4901, metadata !DIExpression()), !dbg !4905
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4905
  %conv = zext i1 %cmp to i32, !dbg !4905
  store i32 1, ptr %tmp, align 4, !dbg !4905
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #22, !dbg !4906
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #22, !dbg !4906
  %0 = load i32, ptr %tmp, align 4, !dbg !4905
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !4906
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !4906
  %3 = load i64, ptr %flags.addr, align 8, !dbg !4906
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #21, !dbg !4906
  br label %do.end, !dbg !4906

do.end:                                           ; preds = %do.body
  ret void, !dbg !4907
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_event_dup(ptr noundef %pool, ptr noundef %event, ptr noundef %cellp, i32 noundef %nonblock, ptr noundef %file, ptr noundef %mutexp) #0 align 16 !dbg !4908 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  %cellp.addr = alloca ptr, align 8
  %nonblock.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %mutexp.addr = alloca ptr, align 8
  %ncells = alloca i32, align 4
  %err = alloca i32, align 4
  %extlen = alloca i32, align 4
  %cell = alloca ptr, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %len22 = alloca i32, align 4
  %is_chained = alloca i32, align 4
  %is_usrptr = alloca i32, align 4
  %src = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tail = alloca ptr, align 8
  %buf = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !4914, metadata !DIExpression()), !dbg !4935
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4915, metadata !DIExpression()), !dbg !4936
  store ptr %cellp, ptr %cellp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cellp.addr, metadata !4916, metadata !DIExpression()), !dbg !4937
  store i32 %nonblock, ptr %nonblock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nonblock.addr, metadata !4917, metadata !DIExpression()), !dbg !4938
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4918, metadata !DIExpression()), !dbg !4939
  store ptr %mutexp, ptr %mutexp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mutexp.addr, metadata !4919, metadata !DIExpression()), !dbg !4940
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncells) #22, !dbg !4941
  call void @llvm.dbg.declare(metadata ptr %ncells, metadata !4920, metadata !DIExpression()), !dbg !4942
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #22, !dbg !4941
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4921, metadata !DIExpression()), !dbg !4943
  call void @llvm.lifetime.start.p0(i64 4, ptr %extlen) #22, !dbg !4944
  call void @llvm.dbg.declare(metadata ptr %extlen, metadata !4922, metadata !DIExpression()), !dbg !4945
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #22, !dbg !4946
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !4923, metadata !DIExpression()), !dbg !4947
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #22, !dbg !4948
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4924, metadata !DIExpression()), !dbg !4949
  %0 = load ptr, ptr %cellp.addr, align 8, !dbg !4950
  store ptr null, ptr %0, align 8, !dbg !4951
  store i32 0, ptr %ncells, align 4, !dbg !4952
  store i32 0, ptr %extlen, align 4, !dbg !4953
  %1 = load ptr, ptr %event.addr, align 8, !dbg !4954
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %1, i32 0, i32 1, !dbg !4954
  %2 = load i8, ptr %flags, align 1, !dbg !4954
  %conv = zext i8 %2 to i32, !dbg !4954
  %and = and i32 %conv, 12, !dbg !4954
  %cmp = icmp eq i32 %and, 4, !dbg !4954
  br i1 %cmp, label %if.then, label %if.end, !dbg !4956

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %event.addr, align 8, !dbg !4957
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %3, i32 0, i32 7, !dbg !4959
  %len = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data, i32 0, i32 0, !dbg !4960
  %4 = load i32, ptr %len, align 4, !dbg !4960
  %and2 = and i32 %4, 1073741823, !dbg !4961
  store i32 %and2, ptr %extlen, align 4, !dbg !4962
  %5 = load i32, ptr %extlen, align 4, !dbg !4963
  %conv3 = zext i32 %5 to i64, !dbg !4963
  %add = add i64 %conv3, 28, !dbg !4963
  %sub = sub i64 %add, 1, !dbg !4963
  %div = udiv i64 %sub, 28, !dbg !4963
  %conv4 = trunc i64 %div to i32, !dbg !4963
  store i32 %conv4, ptr %ncells, align 4, !dbg !4964
  br label %if.end, !dbg !4965

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %ncells, align 4, !dbg !4966
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !4968
  %total_elements = getelementptr inbounds %struct.snd_seq_pool, ptr %7, i32 0, i32 2, !dbg !4969
  %8 = load i32, ptr %total_elements, align 8, !dbg !4969
  %cmp5 = icmp sge i32 %6, %8, !dbg !4970
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !4971

if.then7:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !4972

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %pool.addr, align 8, !dbg !4973
  %10 = load i32, ptr %nonblock.addr, align 4, !dbg !4974
  %11 = load ptr, ptr %file.addr, align 8, !dbg !4975
  %12 = load ptr, ptr %mutexp.addr, align 8, !dbg !4976
  %call = call i32 @snd_seq_cell_alloc(ptr noundef %9, ptr noundef %cell, i32 noundef %10, ptr noundef %11, ptr noundef %12) #21, !dbg !4977
  store i32 %call, ptr %err, align 4, !dbg !4978
  %13 = load i32, ptr %err, align 4, !dbg !4979
  %cmp9 = icmp slt i32 %13, 0, !dbg !4981
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4982

if.then11:                                        ; preds = %if.end8
  %14 = load i32, ptr %err, align 4, !dbg !4983
  store i32 %14, ptr %retval, align 4, !dbg !4984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !4984

if.end12:                                         ; preds = %if.end8
  %15 = load ptr, ptr %event.addr, align 8, !dbg !4985
  %call13 = call i64 @snd_seq_event_packet_size(ptr noundef %15) #21, !dbg !4986
  %conv14 = trunc i64 %call13 to i32, !dbg !4986
  store i32 %conv14, ptr %size, align 4, !dbg !4987
  %16 = load ptr, ptr %cell, align 8, !dbg !4988
  %17 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %16, i32 0, i32 0, !dbg !4989
  %18 = load ptr, ptr %event.addr, align 8, !dbg !4990
  %19 = load i32, ptr %size, align 4, !dbg !4991
  %conv15 = sext i32 %19 to i64, !dbg !4991
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr align 4 %18, i64 %conv15, i1 false), !dbg !4992
  %20 = load ptr, ptr %event.addr, align 8, !dbg !4993
  %flags16 = getelementptr inbounds %struct.snd_seq_event, ptr %20, i32 0, i32 1, !dbg !4993
  %21 = load i8, ptr %flags16, align 1, !dbg !4993
  %conv17 = zext i8 %21 to i32, !dbg !4993
  %and18 = and i32 %conv17, 12, !dbg !4993
  %cmp19 = icmp eq i32 %and18, 4, !dbg !4993
  br i1 %cmp19, label %if.then21, label %if.end79, !dbg !4994

if.then21:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr %len22) #22, !dbg !4995
  call void @llvm.dbg.declare(metadata ptr %len22, metadata !4925, metadata !DIExpression()), !dbg !4996
  %22 = load i32, ptr %extlen, align 4, !dbg !4997
  store i32 %22, ptr %len22, align 4, !dbg !4996
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_chained) #22, !dbg !4998
  call void @llvm.dbg.declare(metadata ptr %is_chained, metadata !4928, metadata !DIExpression()), !dbg !4999
  %23 = load ptr, ptr %event.addr, align 8, !dbg !5000
  %data23 = getelementptr inbounds %struct.snd_seq_event, ptr %23, i32 0, i32 7, !dbg !5001
  %len24 = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data23, i32 0, i32 0, !dbg !5002
  %24 = load i32, ptr %len24, align 4, !dbg !5002
  %and25 = and i32 %24, 1073741824, !dbg !5003
  store i32 %and25, ptr %is_chained, align 4, !dbg !4999
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_usrptr) #22, !dbg !5004
  call void @llvm.dbg.declare(metadata ptr %is_usrptr, metadata !4929, metadata !DIExpression()), !dbg !5005
  %25 = load ptr, ptr %event.addr, align 8, !dbg !5006
  %data26 = getelementptr inbounds %struct.snd_seq_event, ptr %25, i32 0, i32 7, !dbg !5007
  %len27 = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data26, i32 0, i32 0, !dbg !5008
  %26 = load i32, ptr %len27, align 4, !dbg !5008
  %and28 = and i32 %26, -2147483648, !dbg !5009
  store i32 %and28, ptr %is_usrptr, align 4, !dbg !5005
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #22, !dbg !5010
  call void @llvm.dbg.declare(metadata ptr %src, metadata !4930, metadata !DIExpression()), !dbg !5011
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #22, !dbg !5010
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4931, metadata !DIExpression()), !dbg !5012
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #22, !dbg !5010
  call void @llvm.dbg.declare(metadata ptr %tail, metadata !4932, metadata !DIExpression()), !dbg !5013
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #22, !dbg !5014
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4933, metadata !DIExpression()), !dbg !5015
  %27 = load i32, ptr %extlen, align 4, !dbg !5016
  %or = or i32 %27, 1073741824, !dbg !5017
  %28 = load ptr, ptr %cell, align 8, !dbg !5018
  %29 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %28, i32 0, i32 0, !dbg !5019
  %data29 = getelementptr inbounds %struct.snd_seq_event, ptr %29, i32 0, i32 7, !dbg !5020
  %len30 = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data29, i32 0, i32 0, !dbg !5021
  store i32 %or, ptr %len30, align 8, !dbg !5022
  %30 = load ptr, ptr %cell, align 8, !dbg !5023
  %31 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %30, i32 0, i32 0, !dbg !5024
  %data31 = getelementptr inbounds %struct.snd_seq_event, ptr %31, i32 0, i32 7, !dbg !5025
  %ptr = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data31, i32 0, i32 1, !dbg !5026
  store ptr null, ptr %ptr, align 4, !dbg !5027
  %32 = load ptr, ptr %event.addr, align 8, !dbg !5028
  %data32 = getelementptr inbounds %struct.snd_seq_event, ptr %32, i32 0, i32 7, !dbg !5029
  %ptr33 = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data32, i32 0, i32 1, !dbg !5030
  %33 = load ptr, ptr %ptr33, align 4, !dbg !5030
  store ptr %33, ptr %src, align 8, !dbg !5031
  %34 = load ptr, ptr %event.addr, align 8, !dbg !5032
  %data34 = getelementptr inbounds %struct.snd_seq_event, ptr %34, i32 0, i32 7, !dbg !5033
  %ptr35 = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data34, i32 0, i32 1, !dbg !5034
  %35 = load ptr, ptr %ptr35, align 4, !dbg !5034
  store ptr %35, ptr %buf, align 8, !dbg !5035
  store ptr null, ptr %tail, align 8, !dbg !5036
  br label %while.cond, !dbg !5037

while.cond:                                       ; preds = %if.end71, %if.then21
  %36 = load i32, ptr %ncells, align 4, !dbg !5038
  %dec = add i32 %36, -1, !dbg !5038
  store i32 %dec, ptr %ncells, align 4, !dbg !5038
  %cmp36 = icmp sgt i32 %36, 0, !dbg !5039
  br i1 %cmp36, label %while.body, label %while.end, !dbg !5037

while.body:                                       ; preds = %while.cond
  store i32 28, ptr %size, align 4, !dbg !5040
  %37 = load i32, ptr %len22, align 4, !dbg !5042
  %38 = load i32, ptr %size, align 4, !dbg !5044
  %cmp38 = icmp slt i32 %37, %38, !dbg !5045
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !5046

if.then40:                                        ; preds = %while.body
  %39 = load i32, ptr %len22, align 4, !dbg !5047
  store i32 %39, ptr %size, align 4, !dbg !5048
  br label %if.end41, !dbg !5049

if.end41:                                         ; preds = %if.then40, %while.body
  %40 = load ptr, ptr %pool.addr, align 8, !dbg !5050
  %41 = load i32, ptr %nonblock.addr, align 4, !dbg !5051
  %42 = load ptr, ptr %file.addr, align 8, !dbg !5052
  %43 = load ptr, ptr %mutexp.addr, align 8, !dbg !5053
  %call42 = call i32 @snd_seq_cell_alloc(ptr noundef %40, ptr noundef %tmp, i32 noundef %41, ptr noundef %42, ptr noundef %43) #21, !dbg !5054
  store i32 %call42, ptr %err, align 4, !dbg !5055
  %44 = load i32, ptr %err, align 4, !dbg !5056
  %cmp43 = icmp slt i32 %44, 0, !dbg !5058
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !5059

if.then45:                                        ; preds = %if.end41
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5060

if.end46:                                         ; preds = %if.end41
  %45 = load ptr, ptr %cell, align 8, !dbg !5061
  %46 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %45, i32 0, i32 0, !dbg !5063
  %data47 = getelementptr inbounds %struct.snd_seq_event, ptr %46, i32 0, i32 7, !dbg !5064
  %ptr48 = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data47, i32 0, i32 1, !dbg !5065
  %47 = load ptr, ptr %ptr48, align 4, !dbg !5065
  %cmp49 = icmp eq ptr %47, null, !dbg !5066
  br i1 %cmp49, label %if.then51, label %if.end54, !dbg !5067

if.then51:                                        ; preds = %if.end46
  %48 = load ptr, ptr %tmp, align 8, !dbg !5068
  %49 = load ptr, ptr %cell, align 8, !dbg !5069
  %50 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %49, i32 0, i32 0, !dbg !5070
  %data52 = getelementptr inbounds %struct.snd_seq_event, ptr %50, i32 0, i32 7, !dbg !5071
  %ptr53 = getelementptr inbounds %struct.snd_seq_ev_ext, ptr %data52, i32 0, i32 1, !dbg !5072
  store ptr %48, ptr %ptr53, align 4, !dbg !5073
  br label %if.end54, !dbg !5069

if.end54:                                         ; preds = %if.then51, %if.end46
  %51 = load ptr, ptr %tail, align 8, !dbg !5074
  %tobool = icmp ne ptr %51, null, !dbg !5074
  br i1 %tobool, label %if.then55, label %if.end56, !dbg !5076

if.then55:                                        ; preds = %if.end54
  %52 = load ptr, ptr %tmp, align 8, !dbg !5077
  %53 = load ptr, ptr %tail, align 8, !dbg !5078
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %53, i32 0, i32 2, !dbg !5079
  store ptr %52, ptr %next, align 8, !dbg !5080
  br label %if.end56, !dbg !5078

if.end56:                                         ; preds = %if.then55, %if.end54
  %54 = load ptr, ptr %tmp, align 8, !dbg !5081
  store ptr %54, ptr %tail, align 8, !dbg !5082
  %55 = load i32, ptr %is_chained, align 4, !dbg !5083
  %tobool57 = icmp ne i32 %55, 0, !dbg !5083
  br i1 %tobool57, label %land.lhs.true, label %if.else, !dbg !5085

land.lhs.true:                                    ; preds = %if.end56
  %56 = load ptr, ptr %src, align 8, !dbg !5086
  %tobool58 = icmp ne ptr %56, null, !dbg !5086
  br i1 %tobool58, label %if.then59, label %if.else, !dbg !5087

if.then59:                                        ; preds = %land.lhs.true
  %57 = load ptr, ptr %tmp, align 8, !dbg !5088
  %58 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %57, i32 0, i32 0, !dbg !5090
  %59 = load ptr, ptr %src, align 8, !dbg !5091
  %60 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %59, i32 0, i32 0, !dbg !5092
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %58, ptr align 8 %60, i64 28, i1 false), !dbg !5092
  %61 = load ptr, ptr %src, align 8, !dbg !5093
  %next60 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %61, i32 0, i32 2, !dbg !5094
  %62 = load ptr, ptr %next60, align 8, !dbg !5094
  store ptr %62, ptr %src, align 8, !dbg !5095
  br label %if.end71, !dbg !5096

if.else:                                          ; preds = %land.lhs.true, %if.end56
  %63 = load i32, ptr %is_usrptr, align 4, !dbg !5097
  %tobool61 = icmp ne i32 %63, 0, !dbg !5097
  br i1 %tobool61, label %if.then62, label %if.else68, !dbg !5099

if.then62:                                        ; preds = %if.else
  %64 = load ptr, ptr %tmp, align 8, !dbg !5100
  %65 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %64, i32 0, i32 0, !dbg !5103
  %66 = load ptr, ptr %buf, align 8, !dbg !5104
  %67 = load i32, ptr %size, align 4, !dbg !5105
  %conv63 = sext i32 %67 to i64, !dbg !5105
  %call64 = call i64 @copy_from_user(ptr noundef %65, ptr noundef %66, i64 noundef %conv63) #21, !dbg !5106
  %tobool65 = icmp ne i64 %call64, 0, !dbg !5106
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !5107

if.then66:                                        ; preds = %if.then62
  store i32 -14, ptr %err, align 4, !dbg !5108
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5110

if.end67:                                         ; preds = %if.then62
  br label %if.end70, !dbg !5111

if.else68:                                        ; preds = %if.else
  %68 = load ptr, ptr %tmp, align 8, !dbg !5112
  %69 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %68, i32 0, i32 0, !dbg !5114
  %70 = load ptr, ptr %buf, align 8, !dbg !5115
  %71 = load i32, ptr %size, align 4, !dbg !5116
  %conv69 = sext i32 %71 to i64, !dbg !5116
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %69, ptr align 1 %70, i64 %conv69, i1 false), !dbg !5117
  br label %if.end70

if.end70:                                         ; preds = %if.else68, %if.end67
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then59
  %72 = load i32, ptr %size, align 4, !dbg !5118
  %73 = load ptr, ptr %buf, align 8, !dbg !5119
  %idx.ext = sext i32 %72 to i64, !dbg !5119
  %add.ptr = getelementptr i8, ptr %73, i64 %idx.ext, !dbg !5119
  store ptr %add.ptr, ptr %buf, align 8, !dbg !5119
  %74 = load i32, ptr %size, align 4, !dbg !5120
  %75 = load i32, ptr %len22, align 4, !dbg !5121
  %sub72 = sub i32 %75, %74, !dbg !5121
  store i32 %sub72, ptr %len22, align 4, !dbg !5121
  br label %while.cond, !dbg !5037, !llvm.loop !5122

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5124
  br label %cleanup, !dbg !5124

cleanup:                                          ; preds = %if.then66, %if.then45, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #22, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #22, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #22, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #22, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_usrptr) #22, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_chained) #22, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 4, ptr %len22) #22, !dbg !5124
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup80 [
    i32 0, label %cleanup.cont
    i32 4, label %__error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end79, !dbg !5125

if.end79:                                         ; preds = %cleanup.cont, %if.end12
  %76 = load ptr, ptr %cell, align 8, !dbg !5126
  %77 = load ptr, ptr %cellp.addr, align 8, !dbg !5127
  store ptr %76, ptr %77, align 8, !dbg !5128
  store i32 0, ptr %retval, align 4, !dbg !5129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !5129

__error:                                          ; preds = %cleanup
  call void @llvm.dbg.label(metadata !4934), !dbg !5130
  %78 = load ptr, ptr %cell, align 8, !dbg !5131
  call void @snd_seq_cell_free(ptr noundef %78) #21, !dbg !5132
  %79 = load i32, ptr %err, align 4, !dbg !5133
  store i32 %79, ptr %retval, align 4, !dbg !5134
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !5134

cleanup80:                                        ; preds = %__error, %if.end79, %cleanup, %if.then11, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #22, !dbg !5135
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #22, !dbg !5135
  call void @llvm.lifetime.end.p0(i64 4, ptr %extlen) #22, !dbg !5135
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #22, !dbg !5135
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncells) #22, !dbg !5135
  %80 = load i32, ptr %retval, align 4, !dbg !5135
  ret i32 %80, !dbg !5135
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_seq_cell_alloc(ptr noundef %pool, ptr noundef %cellp, i32 noundef %nonblock, ptr noundef %file, ptr noundef %mutexp) #0 align 16 !dbg !5136 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %cellp.addr = alloca ptr, align 8
  %nonblock.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %mutexp.addr = alloca ptr, align 8
  %cell = alloca ptr, align 8
  %flags = alloca i64, align 8
  %err = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp28 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  %__dummy45 = alloca i64, align 8
  %__dummy246 = alloca i64, align 8
  %tmp49 = alloca i32, align 4
  %used = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5140, metadata !DIExpression()), !dbg !5183
  store ptr %cellp, ptr %cellp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cellp.addr, metadata !5141, metadata !DIExpression()), !dbg !5184
  store i32 %nonblock, ptr %nonblock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nonblock.addr, metadata !5142, metadata !DIExpression()), !dbg !5185
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5143, metadata !DIExpression()), !dbg !5186
  store ptr %mutexp, ptr %mutexp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mutexp.addr, metadata !5144, metadata !DIExpression()), !dbg !5187
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #22, !dbg !5188
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !5145, metadata !DIExpression()), !dbg !5189
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #22, !dbg !5190
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5146, metadata !DIExpression()), !dbg !5191
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #22, !dbg !5192
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5147, metadata !DIExpression()), !dbg !5193
  store i32 -11, ptr %err, align 4, !dbg !5193
  call void @llvm.lifetime.start.p0(i64 40, ptr %wait) #22, !dbg !5194
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !5148, metadata !DIExpression()), !dbg !5195
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5196
  %cmp = icmp eq ptr %0, null, !dbg !5198
  br i1 %cmp, label %if.then, label %if.end, !dbg !5199

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5200

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cellp.addr, align 8, !dbg !5201
  store ptr null, ptr %1, align 8, !dbg !5202
  %call = call ptr @get_current() #21, !dbg !5203
  call void @init_waitqueue_entry(ptr noundef %wait, ptr noundef %call) #21, !dbg !5204
  br label %do.body, !dbg !5205

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !5206

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #22, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5161, metadata !DIExpression()), !dbg !5207
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #22, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5165, metadata !DIExpression()), !dbg !5207
  %cmp2 = icmp eq ptr %__dummy, %__dummy2, !dbg !5207
  %conv = zext i1 %cmp2 to i32, !dbg !5207
  store i32 1, ptr %tmp, align 4, !dbg !5207
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #22, !dbg !5208
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #22, !dbg !5208
  %2 = load i32, ptr %tmp, align 4, !dbg !5207
  %3 = load ptr, ptr %pool.addr, align 8, !dbg !5208
  %lock = getelementptr inbounds %struct.snd_seq_pool, ptr %3, i32 0, i32 12, !dbg !5208
  %call3 = call ptr @spinlock_check(ptr noundef %lock) #21, !dbg !5208
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call3) #21, !dbg !5208
  store i64 %call4, ptr %flags, align 8, !dbg !5208
  br label %do.cond, !dbg !5208

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5208

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !5206

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !5206

do.end6:                                          ; preds = %do.cond5
  %4 = load ptr, ptr %pool.addr, align 8, !dbg !5209
  %ptr = getelementptr inbounds %struct.snd_seq_pool, ptr %4, i32 0, i32 0, !dbg !5211
  %5 = load ptr, ptr %ptr, align 8, !dbg !5211
  %cmp7 = icmp eq ptr %5, null, !dbg !5212
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !5213

if.then9:                                         ; preds = %do.end6
  store i32 0, ptr %tmp10, align 4, !dbg !5214
  %6 = load i32, ptr %tmp10, align 4, !dbg !5218
  store i32 -22, ptr %err, align 4, !dbg !5219
  br label %__error, !dbg !5220

if.end11:                                         ; preds = %do.end6
  br label %while.cond, !dbg !5221

while.cond:                                       ; preds = %if.end62, %if.end11
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !5222
  %free = getelementptr inbounds %struct.snd_seq_pool, ptr %7, i32 0, i32 1, !dbg !5223
  %8 = load ptr, ptr %free, align 8, !dbg !5223
  %cmp12 = icmp eq ptr %8, null, !dbg !5224
  br i1 %cmp12, label %land.lhs.true, label %land.end, !dbg !5225

land.lhs.true:                                    ; preds = %while.cond
  %9 = load i32, ptr %nonblock.addr, align 4, !dbg !5226
  %tobool = icmp ne i32 %9, 0, !dbg !5226
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !5227

land.rhs:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %pool.addr, align 8, !dbg !5228
  %closing = getelementptr inbounds %struct.snd_seq_pool, ptr %10, i32 0, i32 6, !dbg !5229
  %11 = load i32, ptr %closing, align 8, !dbg !5229
  %tobool14 = icmp ne i32 %11, 0, !dbg !5230
  %lnot = xor i1 %tobool14, true, !dbg !5230
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !5231
  br i1 %12, label %while.body, label %while.end, !dbg !5221

while.body:                                       ; preds = %land.end
  br label %do.body15, !dbg !5232

do.body15:                                        ; preds = %while.body
  br label %do.body16, !dbg !5233

do.body16:                                        ; preds = %do.body15
  br label %do.cond17, !dbg !5234

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5234

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !5233

do.body19:                                        ; preds = %do.end18
  br label %do.body20, !dbg !5236

do.body20:                                        ; preds = %do.body19
  br label %do.cond21, !dbg !5237

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5237

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !5236

do.body23:                                        ; preds = %do.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #22, !dbg !5239
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5166, metadata !DIExpression()), !dbg !5239
  %call24 = call ptr @get_current() #21, !dbg !5239
  %__state = getelementptr inbounds %struct.task_struct, ptr %call24, i32 0, i32 1, !dbg !5239
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !5239
  br label %do.body25, !dbg !5239

do.body25:                                        ; preds = %do.body23
  br label %do.cond26, !dbg !5240

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !5240

do.end27:                                         ; preds = %do.cond26
  %13 = load ptr, ptr %__ai_ptr, align 8, !dbg !5239
  call void @instrument_atomic_read_write(ptr noundef %13, i64 noundef 4) #21, !dbg !5239
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #22, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5172, metadata !DIExpression()), !dbg !5242
  store i32 1, ptr %__ret, align 4, !dbg !5242
  %14 = load i32, ptr %__ret, align 4, !dbg !5242
  %15 = load ptr, ptr %__ai_ptr, align 8, !dbg !5242
  %16 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %15, i32 %14, ptr elementtype(i32) %15) #22, !dbg !5242, !srcloc !5243
  store i32 %16, ptr %__ret, align 4, !dbg !5242
  %17 = load i32, ptr %__ret, align 4, !dbg !5242
  store i32 %17, ptr %tmp29, align 4, !dbg !5242
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #22, !dbg !5239
  %18 = load i32, ptr %tmp29, align 4, !dbg !5242
  store i32 %18, ptr %tmp28, align 4, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #22, !dbg !5244
  %19 = load i32, ptr %tmp28, align 4, !dbg !5239
  br label %do.cond30, !dbg !5244

do.cond30:                                        ; preds = %do.end27
  br label %do.end31, !dbg !5244

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !5236

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !5236

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !5233

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !5233

do.end35:                                         ; preds = %do.cond34
  %20 = load ptr, ptr %pool.addr, align 8, !dbg !5245
  %output_sleep = getelementptr inbounds %struct.snd_seq_pool, ptr %20, i32 0, i32 11, !dbg !5246
  call void @add_wait_queue(ptr noundef %output_sleep, ptr noundef %wait) #21, !dbg !5247
  %21 = load ptr, ptr %pool.addr, align 8, !dbg !5248
  %lock36 = getelementptr inbounds %struct.snd_seq_pool, ptr %21, i32 0, i32 12, !dbg !5249
  %22 = load i64, ptr %flags, align 8, !dbg !5250
  call void @spin_unlock_irqrestore(ptr noundef %lock36, i64 noundef %22) #21, !dbg !5251
  %23 = load ptr, ptr %mutexp.addr, align 8, !dbg !5252
  %tobool37 = icmp ne ptr %23, null, !dbg !5252
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !5254

if.then38:                                        ; preds = %do.end35
  %24 = load ptr, ptr %mutexp.addr, align 8, !dbg !5255
  call void @mutex_unlock(ptr noundef %24) #21, !dbg !5256
  br label %if.end39, !dbg !5256

if.end39:                                         ; preds = %if.then38, %do.end35
  call void @schedule() #21, !dbg !5257
  %25 = load ptr, ptr %mutexp.addr, align 8, !dbg !5258
  %tobool40 = icmp ne ptr %25, null, !dbg !5258
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !5260

if.then41:                                        ; preds = %if.end39
  %26 = load ptr, ptr %mutexp.addr, align 8, !dbg !5261
  call void @mutex_lock(ptr noundef %26) #21, !dbg !5262
  br label %if.end42, !dbg !5262

if.end42:                                         ; preds = %if.then41, %if.end39
  br label %do.body43, !dbg !5263

do.body43:                                        ; preds = %if.end42
  br label %do.body44, !dbg !5264

do.body44:                                        ; preds = %do.body43
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy45) #22, !dbg !5265
  call void @llvm.dbg.declare(metadata ptr %__dummy45, metadata !5174, metadata !DIExpression()), !dbg !5265
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy246) #22, !dbg !5265
  call void @llvm.dbg.declare(metadata ptr %__dummy246, metadata !5178, metadata !DIExpression()), !dbg !5265
  %cmp47 = icmp eq ptr %__dummy45, %__dummy246, !dbg !5265
  %conv48 = zext i1 %cmp47 to i32, !dbg !5265
  store i32 1, ptr %tmp49, align 4, !dbg !5265
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy246) #22, !dbg !5266
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy45) #22, !dbg !5266
  %27 = load i32, ptr %tmp49, align 4, !dbg !5265
  %28 = load ptr, ptr %pool.addr, align 8, !dbg !5266
  %lock50 = getelementptr inbounds %struct.snd_seq_pool, ptr %28, i32 0, i32 12, !dbg !5266
  %call51 = call ptr @spinlock_check(ptr noundef %lock50) #21, !dbg !5266
  %call52 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call51) #21, !dbg !5266
  store i64 %call52, ptr %flags, align 8, !dbg !5266
  br label %do.cond53, !dbg !5266

do.cond53:                                        ; preds = %do.body44
  br label %do.end54, !dbg !5266

do.end54:                                         ; preds = %do.cond53
  br label %do.cond55, !dbg !5264

do.cond55:                                        ; preds = %do.end54
  br label %do.end56, !dbg !5264

do.end56:                                         ; preds = %do.cond55
  %29 = load ptr, ptr %pool.addr, align 8, !dbg !5267
  %output_sleep57 = getelementptr inbounds %struct.snd_seq_pool, ptr %29, i32 0, i32 11, !dbg !5268
  call void @remove_wait_queue(ptr noundef %output_sleep57, ptr noundef %wait) #21, !dbg !5269
  %call58 = call ptr @get_current() #21, !dbg !5270
  %call59 = call i32 @signal_pending(ptr noundef %call58) #21, !dbg !5272
  %tobool60 = icmp ne i32 %call59, 0, !dbg !5272
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !5273

if.then61:                                        ; preds = %do.end56
  store i32 -512, ptr %err, align 4, !dbg !5274
  br label %__error, !dbg !5276

if.end62:                                         ; preds = %do.end56
  br label %while.cond, !dbg !5221, !llvm.loop !5277

while.end:                                        ; preds = %land.end
  %30 = load ptr, ptr %pool.addr, align 8, !dbg !5279
  %closing63 = getelementptr inbounds %struct.snd_seq_pool, ptr %30, i32 0, i32 6, !dbg !5281
  %31 = load i32, ptr %closing63, align 8, !dbg !5281
  %tobool64 = icmp ne i32 %31, 0, !dbg !5279
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !5282

if.then65:                                        ; preds = %while.end
  store i32 -12, ptr %err, align 4, !dbg !5283
  br label %__error, !dbg !5285

if.end66:                                         ; preds = %while.end
  %32 = load ptr, ptr %pool.addr, align 8, !dbg !5286
  %free67 = getelementptr inbounds %struct.snd_seq_pool, ptr %32, i32 0, i32 1, !dbg !5287
  %33 = load ptr, ptr %free67, align 8, !dbg !5287
  store ptr %33, ptr %cell, align 8, !dbg !5288
  %34 = load ptr, ptr %cell, align 8, !dbg !5289
  %tobool68 = icmp ne ptr %34, null, !dbg !5289
  br i1 %tobool68, label %if.then69, label %if.else, !dbg !5290

if.then69:                                        ; preds = %if.end66
  call void @llvm.lifetime.start.p0(i64 4, ptr %used) #22, !dbg !5291
  call void @llvm.dbg.declare(metadata ptr %used, metadata !5179, metadata !DIExpression()), !dbg !5292
  %35 = load ptr, ptr %cell, align 8, !dbg !5293
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %35, i32 0, i32 2, !dbg !5294
  %36 = load ptr, ptr %next, align 8, !dbg !5294
  %37 = load ptr, ptr %pool.addr, align 8, !dbg !5295
  %free70 = getelementptr inbounds %struct.snd_seq_pool, ptr %37, i32 0, i32 1, !dbg !5296
  store ptr %36, ptr %free70, align 8, !dbg !5297
  %38 = load ptr, ptr %pool.addr, align 8, !dbg !5298
  %counter = getelementptr inbounds %struct.snd_seq_pool, ptr %38, i32 0, i32 3, !dbg !5299
  call void @atomic_inc(ptr noundef %counter) #21, !dbg !5300
  %39 = load ptr, ptr %pool.addr, align 8, !dbg !5301
  %counter71 = getelementptr inbounds %struct.snd_seq_pool, ptr %39, i32 0, i32 3, !dbg !5302
  %call72 = call i32 @atomic_read(ptr noundef %counter71) #21, !dbg !5303
  store i32 %call72, ptr %used, align 4, !dbg !5304
  %40 = load ptr, ptr %pool.addr, align 8, !dbg !5305
  %max_used = getelementptr inbounds %struct.snd_seq_pool, ptr %40, i32 0, i32 7, !dbg !5307
  %41 = load i32, ptr %max_used, align 4, !dbg !5307
  %42 = load i32, ptr %used, align 4, !dbg !5308
  %cmp73 = icmp slt i32 %41, %42, !dbg !5309
  br i1 %cmp73, label %if.then75, label %if.end77, !dbg !5310

if.then75:                                        ; preds = %if.then69
  %43 = load i32, ptr %used, align 4, !dbg !5311
  %44 = load ptr, ptr %pool.addr, align 8, !dbg !5312
  %max_used76 = getelementptr inbounds %struct.snd_seq_pool, ptr %44, i32 0, i32 7, !dbg !5313
  store i32 %43, ptr %max_used76, align 4, !dbg !5314
  br label %if.end77, !dbg !5312

if.end77:                                         ; preds = %if.then75, %if.then69
  %45 = load ptr, ptr %pool.addr, align 8, !dbg !5315
  %event_alloc_success = getelementptr inbounds %struct.snd_seq_pool, ptr %45, i32 0, i32 10, !dbg !5316
  %46 = load i32, ptr %event_alloc_success, align 8, !dbg !5317
  %inc = add i32 %46, 1, !dbg !5317
  store i32 %inc, ptr %event_alloc_success, align 8, !dbg !5317
  %47 = load ptr, ptr %cell, align 8, !dbg !5318
  %next78 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %47, i32 0, i32 2, !dbg !5319
  store ptr null, ptr %next78, align 8, !dbg !5320
  store i32 0, ptr %err, align 4, !dbg !5321
  call void @llvm.lifetime.end.p0(i64 4, ptr %used) #22, !dbg !5322
  br label %if.end80, !dbg !5323

if.else:                                          ; preds = %if.end66
  %48 = load ptr, ptr %pool.addr, align 8, !dbg !5324
  %event_alloc_failures = getelementptr inbounds %struct.snd_seq_pool, ptr %48, i32 0, i32 9, !dbg !5325
  %49 = load i32, ptr %event_alloc_failures, align 4, !dbg !5326
  %inc79 = add i32 %49, 1, !dbg !5326
  store i32 %inc79, ptr %event_alloc_failures, align 4, !dbg !5326
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.end77
  %50 = load ptr, ptr %cell, align 8, !dbg !5327
  %51 = load ptr, ptr %cellp.addr, align 8, !dbg !5328
  store ptr %50, ptr %51, align 8, !dbg !5329
  br label %__error, !dbg !5330

__error:                                          ; preds = %if.end80, %if.then65, %if.then61, %if.then9
  call void @llvm.dbg.label(metadata !5182), !dbg !5331
  %52 = load ptr, ptr %pool.addr, align 8, !dbg !5332
  %lock81 = getelementptr inbounds %struct.snd_seq_pool, ptr %52, i32 0, i32 12, !dbg !5333
  %53 = load i64, ptr %flags, align 8, !dbg !5334
  call void @spin_unlock_irqrestore(ptr noundef %lock81, i64 noundef %53) #21, !dbg !5335
  %54 = load i32, ptr %err, align 4, !dbg !5336
  store i32 %54, ptr %retval, align 4, !dbg !5337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5337

cleanup:                                          ; preds = %__error, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr %wait) #22, !dbg !5338
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #22, !dbg !5338
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #22, !dbg !5338
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #22, !dbg !5338
  %55 = load i32, ptr %retval, align 4, !dbg !5338
  ret i32 %55, !dbg !5338
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_seq_event_packet_size(ptr noundef %ev) #7 align 16 !dbg !5339 {
entry:
  %ev.addr = alloca ptr, align 8
  store ptr %ev, ptr %ev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ev.addr, metadata !5343, metadata !DIExpression()), !dbg !5344
  ret i64 28, !dbg !5345
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !5346 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5351, metadata !DIExpression()), !dbg !5354
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5352, metadata !DIExpression()), !dbg !5355
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5353, metadata !DIExpression()), !dbg !5356
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5357
  %1 = load i64, ptr %n.addr, align 8, !dbg !5359
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #21, !dbg !5360
  br i1 %call, label %if.then, label %if.end, !dbg !5361

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5362
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5363
  %4 = load i64, ptr %n.addr, align 8, !dbg !5364
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #21, !dbg !5365
  store i64 %call1, ptr %n.addr, align 8, !dbg !5366
  br label %if.end, !dbg !5367

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5368
  ret i64 %5, !dbg !5369
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_pool_poll_wait(ptr noundef %pool, ptr noundef %file, ptr noundef %wait) #0 align 16 !dbg !5370 {
entry:
  %pool.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5376, metadata !DIExpression()), !dbg !5379
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5377, metadata !DIExpression()), !dbg !5380
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !5378, metadata !DIExpression()), !dbg !5381
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5382
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !5383
  %output_sleep = getelementptr inbounds %struct.snd_seq_pool, ptr %1, i32 0, i32 11, !dbg !5384
  %2 = load ptr, ptr %wait.addr, align 8, !dbg !5385
  call void @poll_wait(ptr noundef %0, ptr noundef %output_sleep, ptr noundef %2) #21, !dbg !5386
  %3 = load ptr, ptr %pool.addr, align 8, !dbg !5387
  %call = call i32 @snd_seq_output_ok(ptr noundef %3) #21, !dbg !5388
  ret i32 %call, !dbg !5389
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poll_wait(ptr noundef %filp, ptr noundef %wait_address, ptr noundef %p) #7 align 16 !dbg !5390 {
entry:
  %filp.addr = alloca ptr, align 8
  %wait_address.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5394, metadata !DIExpression()), !dbg !5397
  store ptr %wait_address, ptr %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait_address.addr, metadata !5395, metadata !DIExpression()), !dbg !5398
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5396, metadata !DIExpression()), !dbg !5399
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5400
  %tobool = icmp ne ptr %0, null, !dbg !5400
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5402

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5403
  %_qproc = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 0, !dbg !5404
  %2 = load ptr, ptr %_qproc, align 8, !dbg !5404
  %tobool1 = icmp ne ptr %2, null, !dbg !5403
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !5405

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %wait_address.addr, align 8, !dbg !5406
  %tobool3 = icmp ne ptr %3, null, !dbg !5406
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5407

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %p.addr, align 8, !dbg !5408
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, ptr %4, i32 0, i32 0, !dbg !5410
  %5 = load ptr, ptr %_qproc4, align 8, !dbg !5410
  %6 = load ptr, ptr %filp.addr, align 8, !dbg !5411
  %7 = load ptr, ptr %wait_address.addr, align 8, !dbg !5412
  %8 = load ptr, ptr %p.addr, align 8, !dbg !5413
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #21, !dbg !5408
  br label %do.body, !dbg !5414

do.body:                                          ; preds = %if.then
  br label %do.body5, !dbg !5415

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !5417

do.end:                                           ; preds = %do.body5
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #22, !dbg !5415, !srcloc !5419
  br label %do.end6, !dbg !5415

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !5420

if.end:                                           ; preds = %do.end6, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !5421
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_pool_init(ptr noundef %pool) #0 align 16 !dbg !5422 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %cell = alloca i32, align 4
  %cellptr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5424, metadata !DIExpression()), !dbg !5430
  call void @llvm.lifetime.start.p0(i64 4, ptr %cell) #22, !dbg !5431
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !5425, metadata !DIExpression()), !dbg !5432
  call void @llvm.lifetime.start.p0(i64 8, ptr %cellptr) #22, !dbg !5433
  call void @llvm.dbg.declare(metadata ptr %cellptr, metadata !5426, metadata !DIExpression()), !dbg !5434
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #22, !dbg !5435
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5427, metadata !DIExpression()), !dbg !5435
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5435
  %tobool = icmp ne ptr %0, null, !dbg !5435
  %lnot = xor i1 %tobool, true, !dbg !5435
  %lnot1 = xor i1 %lnot, true, !dbg !5435
  %lnot2 = xor i1 %lnot1, true, !dbg !5435
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5435
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5435
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5435
  %tobool3 = icmp ne i32 %1, 0, !dbg !5435
  %lnot4 = xor i1 %tobool3, true, !dbg !5435
  %lnot6 = xor i1 %lnot4, true, !dbg !5435
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5435
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5435
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5435
  store i64 %expval, ptr %tmp, align 8, !dbg !5435
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #22, !dbg !5436
  %2 = load i64, ptr %tmp, align 8, !dbg !5435
  %tobool8 = icmp ne i64 %2, 0, !dbg !5436
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5437

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5438

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pool.addr, align 8, !dbg !5439
  %size = getelementptr inbounds %struct.snd_seq_pool, ptr %3, i32 0, i32 4, !dbg !5440
  %4 = load i32, ptr %size, align 8, !dbg !5440
  %conv9 = sext i32 %4 to i64, !dbg !5439
  %call = call noalias ptr @kvmalloc_array(i64 noundef 48, i64 noundef %conv9, i32 noundef 3264) #23, !dbg !5441
  store ptr %call, ptr %cellptr, align 8, !dbg !5442
  %5 = load ptr, ptr %cellptr, align 8, !dbg !5443
  %tobool10 = icmp ne ptr %5, null, !dbg !5443
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5445

if.then11:                                        ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5446

if.end12:                                         ; preds = %if.end
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !5447
  %lock = getelementptr inbounds %struct.snd_seq_pool, ptr %6, i32 0, i32 12, !dbg !5448
  call void @spin_lock_irq(ptr noundef %lock) #21, !dbg !5449
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !5450
  %ptr = getelementptr inbounds %struct.snd_seq_pool, ptr %7, i32 0, i32 0, !dbg !5452
  %8 = load ptr, ptr %ptr, align 8, !dbg !5452
  %tobool13 = icmp ne ptr %8, null, !dbg !5450
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !5453

if.then14:                                        ; preds = %if.end12
  %9 = load ptr, ptr %pool.addr, align 8, !dbg !5454
  %lock15 = getelementptr inbounds %struct.snd_seq_pool, ptr %9, i32 0, i32 12, !dbg !5456
  call void @spin_unlock_irq(ptr noundef %lock15) #21, !dbg !5457
  %10 = load ptr, ptr %cellptr, align 8, !dbg !5458
  call void @kvfree(ptr noundef %10) #21, !dbg !5459
  store i32 0, ptr %retval, align 4, !dbg !5460
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5460

if.end16:                                         ; preds = %if.end12
  %11 = load ptr, ptr %cellptr, align 8, !dbg !5461
  %12 = load ptr, ptr %pool.addr, align 8, !dbg !5462
  %ptr17 = getelementptr inbounds %struct.snd_seq_pool, ptr %12, i32 0, i32 0, !dbg !5463
  store ptr %11, ptr %ptr17, align 8, !dbg !5464
  %13 = load ptr, ptr %pool.addr, align 8, !dbg !5465
  %free = getelementptr inbounds %struct.snd_seq_pool, ptr %13, i32 0, i32 1, !dbg !5466
  store ptr null, ptr %free, align 8, !dbg !5467
  store i32 0, ptr %cell, align 4, !dbg !5468
  br label %for.cond, !dbg !5470

for.cond:                                         ; preds = %for.inc, %if.end16
  %14 = load i32, ptr %cell, align 4, !dbg !5471
  %15 = load ptr, ptr %pool.addr, align 8, !dbg !5473
  %size18 = getelementptr inbounds %struct.snd_seq_pool, ptr %15, i32 0, i32 4, !dbg !5474
  %16 = load i32, ptr %size18, align 8, !dbg !5474
  %cmp = icmp slt i32 %14, %16, !dbg !5475
  br i1 %cmp, label %for.body, label %for.end, !dbg !5476

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %pool.addr, align 8, !dbg !5477
  %ptr20 = getelementptr inbounds %struct.snd_seq_pool, ptr %17, i32 0, i32 0, !dbg !5479
  %18 = load ptr, ptr %ptr20, align 8, !dbg !5479
  %19 = load i32, ptr %cell, align 4, !dbg !5480
  %idx.ext = sext i32 %19 to i64, !dbg !5481
  %add.ptr = getelementptr %struct.snd_seq_event_cell, ptr %18, i64 %idx.ext, !dbg !5481
  store ptr %add.ptr, ptr %cellptr, align 8, !dbg !5482
  %20 = load ptr, ptr %pool.addr, align 8, !dbg !5483
  %21 = load ptr, ptr %cellptr, align 8, !dbg !5484
  %pool21 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %21, i32 0, i32 1, !dbg !5485
  store ptr %20, ptr %pool21, align 8, !dbg !5486
  %22 = load ptr, ptr %pool.addr, align 8, !dbg !5487
  %free22 = getelementptr inbounds %struct.snd_seq_pool, ptr %22, i32 0, i32 1, !dbg !5488
  %23 = load ptr, ptr %free22, align 8, !dbg !5488
  %24 = load ptr, ptr %cellptr, align 8, !dbg !5489
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %24, i32 0, i32 2, !dbg !5490
  store ptr %23, ptr %next, align 8, !dbg !5491
  %25 = load ptr, ptr %cellptr, align 8, !dbg !5492
  %26 = load ptr, ptr %pool.addr, align 8, !dbg !5493
  %free23 = getelementptr inbounds %struct.snd_seq_pool, ptr %26, i32 0, i32 1, !dbg !5494
  store ptr %25, ptr %free23, align 8, !dbg !5495
  br label %for.inc, !dbg !5496

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %cell, align 4, !dbg !5497
  %inc = add i32 %27, 1, !dbg !5497
  store i32 %inc, ptr %cell, align 4, !dbg !5497
  br label %for.cond, !dbg !5498, !llvm.loop !5499

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %pool.addr, align 8, !dbg !5501
  %size24 = getelementptr inbounds %struct.snd_seq_pool, ptr %28, i32 0, i32 4, !dbg !5502
  %29 = load i32, ptr %size24, align 8, !dbg !5502
  %add = add i32 %29, 1, !dbg !5503
  %div = sdiv i32 %add, 2, !dbg !5504
  %30 = load ptr, ptr %pool.addr, align 8, !dbg !5505
  %room = getelementptr inbounds %struct.snd_seq_pool, ptr %30, i32 0, i32 5, !dbg !5506
  store i32 %div, ptr %room, align 4, !dbg !5507
  %31 = load ptr, ptr %pool.addr, align 8, !dbg !5508
  %max_used = getelementptr inbounds %struct.snd_seq_pool, ptr %31, i32 0, i32 7, !dbg !5509
  store i32 0, ptr %max_used, align 4, !dbg !5510
  %32 = load ptr, ptr %pool.addr, align 8, !dbg !5511
  %size25 = getelementptr inbounds %struct.snd_seq_pool, ptr %32, i32 0, i32 4, !dbg !5512
  %33 = load i32, ptr %size25, align 8, !dbg !5512
  %34 = load ptr, ptr %pool.addr, align 8, !dbg !5513
  %total_elements = getelementptr inbounds %struct.snd_seq_pool, ptr %34, i32 0, i32 2, !dbg !5514
  store i32 %33, ptr %total_elements, align 8, !dbg !5515
  %35 = load ptr, ptr %pool.addr, align 8, !dbg !5516
  %lock26 = getelementptr inbounds %struct.snd_seq_pool, ptr %35, i32 0, i32 12, !dbg !5517
  call void @spin_unlock_irq(ptr noundef %lock26) #21, !dbg !5518
  store i32 0, ptr %retval, align 4, !dbg !5519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5519

cleanup:                                          ; preds = %for.end, %if.then14, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cellptr) #22, !dbg !5520
  call void @llvm.lifetime.end.p0(i64 4, ptr %cell) #22, !dbg !5520
  %36 = load i32, ptr %retval, align 4, !dbg !5520
  ret i32 %36, !dbg !5520
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kvmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5521 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5525, metadata !DIExpression()), !dbg !5529
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5526, metadata !DIExpression()), !dbg !5530
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5527, metadata !DIExpression()), !dbg !5531
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #22, !dbg !5532
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5528, metadata !DIExpression()), !dbg !5533
  %0 = load i64, ptr %n.addr, align 8, !dbg !5534
  %1 = load i64, ptr %size.addr, align 8, !dbg !5534
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5534
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5534
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5534
  store i64 %4, ptr %bytes, align 8, !dbg !5534
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #21, !dbg !5534
  %lnot = xor i1 %call, true, !dbg !5534
  %lnot1 = xor i1 %lnot, true, !dbg !5534
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5534
  %conv = sext i32 %lnot.ext to i64, !dbg !5534
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5534
  %tobool = icmp ne i64 %expval, 0, !dbg !5534
  br i1 %tobool, label %if.then, label %if.end, !dbg !5536

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5537

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !5538
  %6 = load i32, ptr %flags.addr, align 4, !dbg !5539
  %call2 = call noalias ptr @kvmalloc(i64 noundef %5, i32 noundef %6) #24, !dbg !5540
  store ptr %call2, ptr %retval, align 8, !dbg !5541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5541

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #22, !dbg !5542
  %7 = load ptr, ptr %retval, align 8, !dbg !5542
  ret ptr %7, !dbg !5542
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #4 align 16 !dbg !5543 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5547, metadata !DIExpression()), !dbg !5548
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5549
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5549
  call void @_raw_spin_lock_irq(ptr noundef %1) #21, !dbg !5549
  ret void, !dbg !5550
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #4 align 16 !dbg !5551 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5553, metadata !DIExpression()), !dbg !5554
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5555
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5555
  call void @_raw_spin_unlock_irq(ptr noundef %1) #21, !dbg !5555
  ret void, !dbg !5556
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5557 dso_local void @kvfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_pool_mark_closing(ptr noundef %pool) #0 align 16 !dbg !5560 {
entry:
  %pool.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5564, metadata !DIExpression()), !dbg !5574
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #22, !dbg !5575
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5565, metadata !DIExpression()), !dbg !5576
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #22, !dbg !5577
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5566, metadata !DIExpression()), !dbg !5577
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5577
  %tobool = icmp ne ptr %0, null, !dbg !5577
  %lnot = xor i1 %tobool, true, !dbg !5577
  %lnot1 = xor i1 %lnot, true, !dbg !5577
  %lnot2 = xor i1 %lnot1, true, !dbg !5577
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5577
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5577
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5577
  %tobool3 = icmp ne i32 %1, 0, !dbg !5577
  %lnot4 = xor i1 %tobool3, true, !dbg !5577
  %lnot6 = xor i1 %lnot4, true, !dbg !5577
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5577
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5577
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5577
  store i64 %expval, ptr %tmp, align 8, !dbg !5577
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #22, !dbg !5578
  %2 = load i64, ptr %tmp, align 8, !dbg !5577
  %tobool8 = icmp ne i64 %2, 0, !dbg !5578
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5579

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5580

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5581

do.body:                                          ; preds = %if.end
  br label %do.body9, !dbg !5582

do.body9:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #22, !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5569, metadata !DIExpression()), !dbg !5583
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #22, !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5573, metadata !DIExpression()), !dbg !5583
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5583
  %conv10 = zext i1 %cmp to i32, !dbg !5583
  store i32 1, ptr %tmp11, align 4, !dbg !5583
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #22, !dbg !5584
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #22, !dbg !5584
  %3 = load i32, ptr %tmp11, align 4, !dbg !5583
  %4 = load ptr, ptr %pool.addr, align 8, !dbg !5584
  %lock = getelementptr inbounds %struct.snd_seq_pool, ptr %4, i32 0, i32 12, !dbg !5584
  %call = call ptr @spinlock_check(ptr noundef %lock) #21, !dbg !5584
  %call12 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #21, !dbg !5584
  store i64 %call12, ptr %flags, align 8, !dbg !5584
  br label %do.cond, !dbg !5584

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5584

do.end:                                           ; preds = %do.cond
  br label %do.cond13, !dbg !5582

do.cond13:                                        ; preds = %do.end
  br label %do.end14, !dbg !5582

do.end14:                                         ; preds = %do.cond13
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !5585
  %closing = getelementptr inbounds %struct.snd_seq_pool, ptr %5, i32 0, i32 6, !dbg !5586
  store i32 1, ptr %closing, align 8, !dbg !5587
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !5588
  %lock15 = getelementptr inbounds %struct.snd_seq_pool, ptr %6, i32 0, i32 12, !dbg !5589
  %7 = load i64, ptr %flags, align 8, !dbg !5590
  call void @spin_unlock_irqrestore(ptr noundef %lock15, i64 noundef %7) #21, !dbg !5591
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5592
  br label %cleanup, !dbg !5592

cleanup:                                          ; preds = %do.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #22, !dbg !5592
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5592

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_pool_done(ptr noundef %pool) #0 align 16 !dbg !5593 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5595, metadata !DIExpression()), !dbg !5600
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #22, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !5596, metadata !DIExpression()), !dbg !5602
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #22, !dbg !5603
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5597, metadata !DIExpression()), !dbg !5603
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5603
  %tobool = icmp ne ptr %0, null, !dbg !5603
  %lnot = xor i1 %tobool, true, !dbg !5603
  %lnot1 = xor i1 %lnot, true, !dbg !5603
  %lnot2 = xor i1 %lnot1, true, !dbg !5603
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5603
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5603
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5603
  %tobool3 = icmp ne i32 %1, 0, !dbg !5603
  %lnot4 = xor i1 %tobool3, true, !dbg !5603
  %lnot6 = xor i1 %lnot4, true, !dbg !5603
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5603
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5603
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5603
  store i64 %expval, ptr %tmp, align 8, !dbg !5603
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #22, !dbg !5604
  %2 = load i64, ptr %tmp, align 8, !dbg !5603
  %tobool8 = icmp ne i64 %2, 0, !dbg !5604
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5605

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5606

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pool.addr, align 8, !dbg !5607
  %output_sleep = getelementptr inbounds %struct.snd_seq_pool, ptr %3, i32 0, i32 11, !dbg !5609
  %call = call i32 @waitqueue_active(ptr noundef %output_sleep) #21, !dbg !5610
  %tobool9 = icmp ne i32 %call, 0, !dbg !5610
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !5611

if.then10:                                        ; preds = %if.end
  %4 = load ptr, ptr %pool.addr, align 8, !dbg !5612
  %output_sleep11 = getelementptr inbounds %struct.snd_seq_pool, ptr %4, i32 0, i32 11, !dbg !5612
  %call12 = call i32 @__wake_up(ptr noundef %output_sleep11, i32 noundef 3, i32 noundef 1, ptr noundef null) #21, !dbg !5612
  br label %if.end13, !dbg !5612

if.end13:                                         ; preds = %if.then10, %if.end
  br label %while.cond, !dbg !5613

while.cond:                                       ; preds = %while.body, %if.end13
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !5614
  %counter = getelementptr inbounds %struct.snd_seq_pool, ptr %5, i32 0, i32 3, !dbg !5615
  %call14 = call i32 @atomic_read(ptr noundef %counter) #21, !dbg !5616
  %cmp = icmp sgt i32 %call14, 0, !dbg !5617
  br i1 %cmp, label %while.body, label %while.end, !dbg !5613

while.body:                                       ; preds = %while.cond
  %call16 = call i64 @schedule_timeout_uninterruptible(i64 noundef 1) #21, !dbg !5618
  br label %while.cond, !dbg !5613, !llvm.loop !5619

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !5621
  %lock = getelementptr inbounds %struct.snd_seq_pool, ptr %6, i32 0, i32 12, !dbg !5622
  call void @spin_lock_irq(ptr noundef %lock) #21, !dbg !5623
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !5624
  %ptr17 = getelementptr inbounds %struct.snd_seq_pool, ptr %7, i32 0, i32 0, !dbg !5625
  %8 = load ptr, ptr %ptr17, align 8, !dbg !5625
  store ptr %8, ptr %ptr, align 8, !dbg !5626
  %9 = load ptr, ptr %pool.addr, align 8, !dbg !5627
  %ptr18 = getelementptr inbounds %struct.snd_seq_pool, ptr %9, i32 0, i32 0, !dbg !5628
  store ptr null, ptr %ptr18, align 8, !dbg !5629
  %10 = load ptr, ptr %pool.addr, align 8, !dbg !5630
  %free = getelementptr inbounds %struct.snd_seq_pool, ptr %10, i32 0, i32 1, !dbg !5631
  store ptr null, ptr %free, align 8, !dbg !5632
  %11 = load ptr, ptr %pool.addr, align 8, !dbg !5633
  %total_elements = getelementptr inbounds %struct.snd_seq_pool, ptr %11, i32 0, i32 2, !dbg !5634
  store i32 0, ptr %total_elements, align 8, !dbg !5635
  %12 = load ptr, ptr %pool.addr, align 8, !dbg !5636
  %lock19 = getelementptr inbounds %struct.snd_seq_pool, ptr %12, i32 0, i32 12, !dbg !5637
  call void @spin_unlock_irq(ptr noundef %lock19) #21, !dbg !5638
  %13 = load ptr, ptr %ptr, align 8, !dbg !5639
  call void @kvfree(ptr noundef %13) #21, !dbg !5640
  %14 = load ptr, ptr %pool.addr, align 8, !dbg !5641
  %lock20 = getelementptr inbounds %struct.snd_seq_pool, ptr %14, i32 0, i32 12, !dbg !5642
  call void @spin_lock_irq(ptr noundef %lock20) #21, !dbg !5643
  %15 = load ptr, ptr %pool.addr, align 8, !dbg !5644
  %closing = getelementptr inbounds %struct.snd_seq_pool, ptr %15, i32 0, i32 6, !dbg !5645
  store i32 0, ptr %closing, align 8, !dbg !5646
  %16 = load ptr, ptr %pool.addr, align 8, !dbg !5647
  %lock21 = getelementptr inbounds %struct.snd_seq_pool, ptr %16, i32 0, i32 12, !dbg !5648
  call void @spin_unlock_irq(ptr noundef %lock21) #21, !dbg !5649
  store i32 0, ptr %retval, align 4, !dbg !5650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5650

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #22, !dbg !5651
  %17 = load i32, ptr %retval, align 4, !dbg !5651
  ret i32 %17, !dbg !5651
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !5652 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5661
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #21, !dbg !5662
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5663
  %call = call i32 @raw_atomic_read(ptr noundef %1) #21, !dbg !5664
  ret i32 %call, !dbg !5665
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5666 dso_local i64 @schedule_timeout_uninterruptible(i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_seq_pool_new(i32 noundef %poolsize) #0 align 16 !dbg !4226 {
entry:
  %retval = alloca ptr, align 8
  %poolsize.addr = alloca i32, align 4
  %pool = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store i32 %poolsize, ptr %poolsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %poolsize.addr, metadata !4230, metadata !DIExpression()), !dbg !5669
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #22, !dbg !5670
  call void @llvm.dbg.declare(metadata ptr %pool, metadata !4231, metadata !DIExpression()), !dbg !5671
  %call = call noalias ptr @kzalloc(i64 noundef 88, i32 noundef 3264) #24, !dbg !5672
  store ptr %call, ptr %pool, align 8, !dbg !5673
  %0 = load ptr, ptr %pool, align 8, !dbg !5674
  %tobool = icmp ne ptr %0, null, !dbg !5674
  br i1 %tobool, label %if.end, label %if.then, !dbg !5676

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5677

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5678

do.body:                                          ; preds = %if.end
  %1 = load ptr, ptr %pool, align 8, !dbg !5679
  %lock = getelementptr inbounds %struct.snd_seq_pool, ptr %1, i32 0, i32 12, !dbg !5679
  %call1 = call ptr @spinlock_check(ptr noundef %lock) #21, !dbg !5679
  %2 = load ptr, ptr %pool, align 8, !dbg !5679
  %lock2 = getelementptr inbounds %struct.snd_seq_pool, ptr %2, i32 0, i32 12, !dbg !5679
  %3 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5679
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 0, !dbg !5679
  %4 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5679
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !5679
  store i32 0, ptr %counter, align 4, !dbg !5679
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5679
  br label %do.cond, !dbg !5679

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5679

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %pool, align 8, !dbg !5681
  %ptr = getelementptr inbounds %struct.snd_seq_pool, ptr %5, i32 0, i32 0, !dbg !5682
  store ptr null, ptr %ptr, align 8, !dbg !5683
  %6 = load ptr, ptr %pool, align 8, !dbg !5684
  %free = getelementptr inbounds %struct.snd_seq_pool, ptr %6, i32 0, i32 1, !dbg !5685
  store ptr null, ptr %free, align 8, !dbg !5686
  %7 = load ptr, ptr %pool, align 8, !dbg !5687
  %total_elements = getelementptr inbounds %struct.snd_seq_pool, ptr %7, i32 0, i32 2, !dbg !5688
  store i32 0, ptr %total_elements, align 8, !dbg !5689
  %8 = load ptr, ptr %pool, align 8, !dbg !5690
  %counter3 = getelementptr inbounds %struct.snd_seq_pool, ptr %8, i32 0, i32 3, !dbg !5691
  call void @atomic_set(ptr noundef %counter3, i32 noundef 0) #21, !dbg !5692
  %9 = load ptr, ptr %pool, align 8, !dbg !5693
  %closing = getelementptr inbounds %struct.snd_seq_pool, ptr %9, i32 0, i32 6, !dbg !5694
  store i32 0, ptr %closing, align 8, !dbg !5695
  br label %do.body4, !dbg !5696

do.body4:                                         ; preds = %do.end
  %10 = load ptr, ptr %pool, align 8, !dbg !5697
  %output_sleep = getelementptr inbounds %struct.snd_seq_pool, ptr %10, i32 0, i32 11, !dbg !5697
  call void @__init_waitqueue_head(ptr noundef %output_sleep, ptr noundef @.str, ptr noundef @snd_seq_pool_new.__key) #21, !dbg !5697
  br label %do.cond5, !dbg !5697

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5697

do.end6:                                          ; preds = %do.cond5
  %11 = load i32, ptr %poolsize.addr, align 4, !dbg !5699
  %12 = load ptr, ptr %pool, align 8, !dbg !5700
  %size = getelementptr inbounds %struct.snd_seq_pool, ptr %12, i32 0, i32 4, !dbg !5701
  store i32 %11, ptr %size, align 8, !dbg !5702
  %13 = load ptr, ptr %pool, align 8, !dbg !5703
  %max_used = getelementptr inbounds %struct.snd_seq_pool, ptr %13, i32 0, i32 7, !dbg !5704
  store i32 0, ptr %max_used, align 4, !dbg !5705
  %14 = load ptr, ptr %pool, align 8, !dbg !5706
  store ptr %14, ptr %retval, align 8, !dbg !5707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5707

cleanup:                                          ; preds = %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #22, !dbg !5708
  %15 = load ptr, ptr %retval, align 8, !dbg !5708
  ret ptr %15, !dbg !5708
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !5709 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5713, metadata !DIExpression()), !dbg !5715
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5714, metadata !DIExpression()), !dbg !5716
  %0 = load i64, ptr %size.addr, align 8, !dbg !5717
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5718
  %or = or i32 %1, 256, !dbg !5719
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #24, !dbg !5720
  ret ptr %call, !dbg !5721
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !5722 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5727, metadata !DIExpression()), !dbg !5729
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5728, metadata !DIExpression()), !dbg !5730
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5731
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #21, !dbg !5732
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5733
  %2 = load i32, ptr %i.addr, align 4, !dbg !5734
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #21, !dbg !5735
  ret void, !dbg !5736
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5737 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_pool_delete(ptr noundef %ppool) #0 align 16 !dbg !5741 {
entry:
  %retval = alloca i32, align 4
  %ppool.addr = alloca ptr, align 8
  %pool = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ppool, ptr %ppool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppool.addr, metadata !5746, metadata !DIExpression()), !dbg !5748
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #22, !dbg !5749
  call void @llvm.dbg.declare(metadata ptr %pool, metadata !5747, metadata !DIExpression()), !dbg !5750
  %0 = load ptr, ptr %ppool.addr, align 8, !dbg !5751
  %1 = load ptr, ptr %0, align 8, !dbg !5752
  store ptr %1, ptr %pool, align 8, !dbg !5750
  %2 = load ptr, ptr %ppool.addr, align 8, !dbg !5753
  store ptr null, ptr %2, align 8, !dbg !5754
  %3 = load ptr, ptr %pool, align 8, !dbg !5755
  %cmp = icmp eq ptr %3, null, !dbg !5757
  br i1 %cmp, label %if.then, label %if.end, !dbg !5758

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5759
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5759

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pool, align 8, !dbg !5760
  call void @snd_seq_pool_mark_closing(ptr noundef %4) #21, !dbg !5761
  %5 = load ptr, ptr %pool, align 8, !dbg !5762
  %call = call i32 @snd_seq_pool_done(ptr noundef %5) #21, !dbg !5763
  %6 = load ptr, ptr %pool, align 8, !dbg !5764
  call void @kfree(ptr noundef %6) #21, !dbg !5765
  store i32 0, ptr %retval, align 4, !dbg !5766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5766

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #22, !dbg !5767
  %7 = load i32, ptr %retval, align 4, !dbg !5767
  ret i32 %7, !dbg !5767
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5768 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_info_pool(ptr noundef %buffer, ptr noundef %pool, ptr noundef %space) #0 align 16 !dbg !5769 {
entry:
  %buffer.addr = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %space.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5783, metadata !DIExpression()), !dbg !5786
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5784, metadata !DIExpression()), !dbg !5787
  store ptr %space, ptr %space.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %space.addr, metadata !5785, metadata !DIExpression()), !dbg !5788
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5789
  %cmp = icmp eq ptr %0, null, !dbg !5791
  br i1 %cmp, label %if.then, label %if.end, !dbg !5792

if.then:                                          ; preds = %entry
  br label %return, !dbg !5793

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !5794
  %buffer1 = getelementptr inbounds %struct.snd_info_buffer, ptr %1, i32 0, i32 0, !dbg !5794
  %2 = load ptr, ptr %buffer1, align 8, !dbg !5794
  %3 = load ptr, ptr %space.addr, align 8, !dbg !5794
  %4 = load ptr, ptr %pool.addr, align 8, !dbg !5794
  %total_elements = getelementptr inbounds %struct.snd_seq_pool, ptr %4, i32 0, i32 2, !dbg !5794
  %5 = load i32, ptr %total_elements, align 8, !dbg !5794
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %2, ptr noundef @.str.1, ptr noundef %3, i32 noundef %5) #21, !dbg !5794
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !5795
  %buffer2 = getelementptr inbounds %struct.snd_info_buffer, ptr %6, i32 0, i32 0, !dbg !5795
  %7 = load ptr, ptr %buffer2, align 8, !dbg !5795
  %8 = load ptr, ptr %space.addr, align 8, !dbg !5795
  %9 = load ptr, ptr %pool.addr, align 8, !dbg !5795
  %counter = getelementptr inbounds %struct.snd_seq_pool, ptr %9, i32 0, i32 3, !dbg !5795
  %call = call i32 @atomic_read(ptr noundef %counter) #21, !dbg !5795
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef @.str.2, ptr noundef %8, i32 noundef %call) #21, !dbg !5795
  %10 = load ptr, ptr %buffer.addr, align 8, !dbg !5796
  %buffer3 = getelementptr inbounds %struct.snd_info_buffer, ptr %10, i32 0, i32 0, !dbg !5796
  %11 = load ptr, ptr %buffer3, align 8, !dbg !5796
  %12 = load ptr, ptr %space.addr, align 8, !dbg !5796
  %13 = load ptr, ptr %pool.addr, align 8, !dbg !5796
  %max_used = getelementptr inbounds %struct.snd_seq_pool, ptr %13, i32 0, i32 7, !dbg !5796
  %14 = load i32, ptr %max_used, align 4, !dbg !5796
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef @.str.3, ptr noundef %12, i32 noundef %14) #21, !dbg !5796
  %15 = load ptr, ptr %buffer.addr, align 8, !dbg !5797
  %buffer4 = getelementptr inbounds %struct.snd_info_buffer, ptr %15, i32 0, i32 0, !dbg !5797
  %16 = load ptr, ptr %buffer4, align 8, !dbg !5797
  %17 = load ptr, ptr %space.addr, align 8, !dbg !5797
  %18 = load ptr, ptr %pool.addr, align 8, !dbg !5797
  %event_alloc_success = getelementptr inbounds %struct.snd_seq_pool, ptr %18, i32 0, i32 10, !dbg !5797
  %19 = load i32, ptr %event_alloc_success, align 8, !dbg !5797
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef @.str.4, ptr noundef %17, i32 noundef %19) #21, !dbg !5797
  %20 = load ptr, ptr %buffer.addr, align 8, !dbg !5798
  %buffer5 = getelementptr inbounds %struct.snd_info_buffer, ptr %20, i32 0, i32 0, !dbg !5798
  %21 = load ptr, ptr %buffer5, align 8, !dbg !5798
  %22 = load ptr, ptr %space.addr, align 8, !dbg !5798
  %23 = load ptr, ptr %pool.addr, align 8, !dbg !5798
  %event_alloc_failures = getelementptr inbounds %struct.snd_seq_pool, ptr %23, i32 0, i32 9, !dbg !5798
  %24 = load i32, ptr %event_alloc_failures, align 4, !dbg !5798
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef @.str.5, ptr noundef %22, i32 noundef %24) #21, !dbg !5798
  br label %return, !dbg !5799

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5799
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5800 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_copy_in_kernel(ptr noundef %ptr, ptr noundef %src, i32 noundef %size) #0 align 16 !dbg !5803 {
entry:
  %ptr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %bufptr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5805, metadata !DIExpression()), !dbg !5810
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5806, metadata !DIExpression()), !dbg !5811
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5807, metadata !DIExpression()), !dbg !5812
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufptr) #22, !dbg !5813
  call void @llvm.dbg.declare(metadata ptr %bufptr, metadata !5808, metadata !DIExpression()), !dbg !5814
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5815
  store ptr %0, ptr %bufptr, align 8, !dbg !5814
  %1 = load ptr, ptr %bufptr, align 8, !dbg !5816
  %2 = load ptr, ptr %1, align 8, !dbg !5817
  %3 = load ptr, ptr %src.addr, align 8, !dbg !5818
  %4 = load i32, ptr %size.addr, align 4, !dbg !5819
  %conv = sext i32 %4 to i64, !dbg !5819
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %3, i64 %conv, i1 false), !dbg !5820
  %5 = load i32, ptr %size.addr, align 4, !dbg !5821
  %6 = load ptr, ptr %bufptr, align 8, !dbg !5822
  %7 = load ptr, ptr %6, align 8, !dbg !5823
  %idx.ext = sext i32 %5 to i64, !dbg !5823
  %add.ptr = getelementptr i8, ptr %7, i64 %idx.ext, !dbg !5823
  store ptr %add.ptr, ptr %6, align 8, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufptr) #22, !dbg !5824
  ret i32 0, !dbg !5825
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_copy_in_user(ptr noundef %ptr, ptr noundef %src, i32 noundef %size) #0 align 16 !dbg !5826 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %bufptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5828, metadata !DIExpression()), !dbg !5832
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5829, metadata !DIExpression()), !dbg !5833
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5830, metadata !DIExpression()), !dbg !5834
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufptr) #22, !dbg !5835
  call void @llvm.dbg.declare(metadata ptr %bufptr, metadata !5831, metadata !DIExpression()), !dbg !5836
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5837
  store ptr %0, ptr %bufptr, align 8, !dbg !5836
  %1 = load ptr, ptr %bufptr, align 8, !dbg !5838
  %2 = load ptr, ptr %1, align 8, !dbg !5840
  %3 = load ptr, ptr %src.addr, align 8, !dbg !5841
  %4 = load i32, ptr %size.addr, align 4, !dbg !5842
  %conv = sext i32 %4 to i64, !dbg !5842
  %call = call i64 @copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %conv) #21, !dbg !5843
  %tobool = icmp ne i64 %call, 0, !dbg !5843
  br i1 %tobool, label %if.then, label %if.end, !dbg !5844

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !5845
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5845

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %size.addr, align 4, !dbg !5846
  %6 = load ptr, ptr %bufptr, align 8, !dbg !5847
  %7 = load ptr, ptr %6, align 8, !dbg !5848
  %idx.ext = sext i32 %5 to i64, !dbg !5848
  %add.ptr = getelementptr i8, ptr %7, i64 %idx.ext, !dbg !5848
  store ptr %add.ptr, ptr %6, align 8, !dbg !5848
  store i32 0, ptr %retval, align 4, !dbg !5849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5849

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufptr) #22, !dbg !5850
  %8 = load i32, ptr %retval, align 4, !dbg !5850
  ret i32 %8, !dbg !5850
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !5851 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5853, metadata !DIExpression()), !dbg !5856
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5854, metadata !DIExpression()), !dbg !5857
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5855, metadata !DIExpression()), !dbg !5858
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5859
  %1 = load i64, ptr %n.addr, align 8, !dbg !5861
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #21, !dbg !5862
  br i1 %call, label %if.then, label %if.end, !dbg !5863

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5864
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5865
  %4 = load i64, ptr %n.addr, align 8, !dbg !5866
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #21, !dbg !5867
  store i64 %call1, ptr %n.addr, align 8, !dbg !5868
  br label %if.end, !dbg !5869

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5870
  ret i64 %5, !dbg !5871
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #4 align 16 !dbg !5872 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5876, metadata !DIExpression()), !dbg !5886
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5877, metadata !DIExpression()), !dbg !5887
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !5878, metadata !DIExpression()), !dbg !5888
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #22, !dbg !5889
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5879, metadata !DIExpression()), !dbg !5890
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5891
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !5892
  %conv = trunc i64 %1 to i32, !dbg !5892
  store i32 %conv, ptr %sz, align 4, !dbg !5890
  %2 = load i32, ptr %sz, align 4, !dbg !5893
  %cmp = icmp sge i32 %2, 0, !dbg !5893
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5893

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !5893
  %conv2 = sext i32 %3 to i64, !dbg !5893
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !5893
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !5893
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !5895
  %lnot = xor i1 %5, true, !dbg !5893
  %lnot5 = xor i1 %lnot, true, !dbg !5893
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5893
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5893
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5893
  %tobool = icmp ne i64 %expval, 0, !dbg !5893
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5896

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !5897
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5900
  br i1 %7, label %if.else, label %if.then7, !dbg !5901

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !5902
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !5903
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #21, !dbg !5904
  br label %if.end11, !dbg !5904

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !5905, !range !4623, !noundef !1295
  %tobool8 = trunc i8 %10 to i1, !dbg !5905
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !5907

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #21, !dbg !5908, !srcloc !5909
  br label %if.end, !dbg !5908

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #21, !dbg !5910, !srcloc !5911
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !5912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5912

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #22, !dbg !5913
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5880, metadata !DIExpression()), !dbg !5913
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !5913
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !5913
  %lnot15 = xor i1 %cmp13, true, !dbg !5913
  %lnot17 = xor i1 %lnot15, true, !dbg !5913
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5913
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !5913
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5914
  %tobool19 = icmp ne i32 %12, 0, !dbg !5914
  %lnot20 = xor i1 %tobool19, true, !dbg !5914
  %lnot22 = xor i1 %lnot20, true, !dbg !5914
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5914
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5914
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5914
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5914
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !5913

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !5914

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #22, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5883, metadata !DIExpression()), !dbg !5915
  store i32 2307, ptr %__flags, align 4, !dbg !5915
  br label %do.body28, !dbg !5915

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !5916

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !5916

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !5915

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !5918
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 249, i32 %13, i64 12) #22, !dbg !5918, !srcloc !5920
  br label %do.cond30, !dbg !5918

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5918

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5915

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !5921

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5921

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #22, !dbg !5914
  br label %do.cond35, !dbg !5915

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5915

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !5915

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5913
  %tobool38 = icmp ne i32 %14, 0, !dbg !5913
  %lnot39 = xor i1 %tobool38, true, !dbg !5913
  %lnot41 = xor i1 %lnot39, true, !dbg !5913
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5913
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5913
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5913
  store i64 %expval44, ptr %tmp, align 8, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #22, !dbg !5923
  %15 = load i64, ptr %tmp, align 8, !dbg !5913
  %tobool45 = icmp ne i64 %15, 0, !dbg !5923
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5924

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !5925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5925

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !5926
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !5927
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !5928, !range !4623, !noundef !1295
  %tobool48 = trunc i8 %18 to i1, !dbg !5928
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #21, !dbg !5929
  store i1 true, ptr %retval, align 1, !dbg !5930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5930

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #22, !dbg !5931
  %19 = load i1, ptr %retval, align 1, !dbg !5931
  ret i1 %19, !dbg !5931
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5932 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #7 align 16 !dbg !5933 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5937, metadata !DIExpression()), !dbg !5939
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5938, metadata !DIExpression()), !dbg !5940
  %0 = load i32, ptr %size.addr, align 4, !dbg !5941
  %1 = load i64, ptr %count.addr, align 8, !dbg !5943
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #21, !dbg !5944
  ret void, !dbg !5945
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5946 dso_local void @__bad_copy_from() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5947 dso_local void @__bad_copy_to() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #7 align 16 !dbg !5948 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5952, metadata !DIExpression()), !dbg !5955
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5953, metadata !DIExpression()), !dbg !5956
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !5954, metadata !DIExpression()), !dbg !5957
  ret void, !dbg !5958
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5959 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #7 align 16 !dbg !5960 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5964, metadata !DIExpression()), !dbg !5969
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5965, metadata !DIExpression()), !dbg !5970
  %0 = load i64, ptr %size.addr, align 8, !dbg !5971
  %cmp = icmp ule i64 %0, 4096, !dbg !5972
  %conv = zext i1 %cmp to i32, !dbg !5972
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5973
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !5974

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5975
  %cmp1 = icmp ule i64 %2, 4096, !dbg !5976
  br i1 %cmp1, label %if.then, label %if.else, !dbg !5977

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !5978
  %4 = ptrtoint ptr %3 to i64, !dbg !5978
  %cmp3 = icmp sge i64 %4, 0, !dbg !5978
  store i1 %cmp3, ptr %retval, align 1, !dbg !5980
  br label %return, !dbg !5980

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #22, !dbg !5981
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !5966, metadata !DIExpression()), !dbg !5982
  %5 = load i64, ptr %size.addr, align 8, !dbg !5983
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !5984
  %7 = ptrtoint ptr %6 to i64, !dbg !5985
  %add = add i64 %5, %7, !dbg !5986
  store i64 %add, ptr %sum, align 8, !dbg !5982
  %8 = load i64, ptr %sum, align 8, !dbg !5987
  %cmp5 = icmp sge i64 %8, 0, !dbg !5987
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !5988

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !5989
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !5990
  %11 = ptrtoint ptr %10 to i64, !dbg !5991
  %cmp7 = icmp uge i64 %9, %11, !dbg !5992
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !5993
  store i1 %12, ptr %retval, align 1, !dbg !5994
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #22, !dbg !5995
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !5996
  ret i1 %13, !dbg !5996
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__clear_user(ptr noundef %addr, i64 noundef %size) #4 align 16 !dbg !5997 {
entry:
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5999, metadata !DIExpression()), !dbg !6001
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6000, metadata !DIExpression()), !dbg !6002
  call void @might_fault() #21, !dbg !6003
  call void @stac() #21, !dbg !6004
  %0 = load i64, ptr %size.addr, align 8, !dbg !6005
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6005
  %2 = call i64 @llvm.read_register.i64(metadata !4259), !dbg !6005
  %3 = call { i64, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldnstr\0A661:\0A\09rep stosb\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (((1 << 0) << 16) $| ((12*32+11)))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call rep_stos_alternative\0A6651:\0A.popsection\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={rsp},{ax},0,1,{rsp},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 %0, ptr %1, i64 %2) #22, !dbg !6005, !srcloc !6006
  %asmresult = extractvalue { i64, ptr, i64 } %3, 0, !dbg !6005
  %asmresult1 = extractvalue { i64, ptr, i64 } %3, 1, !dbg !6005
  %asmresult2 = extractvalue { i64, ptr, i64 } %3, 2, !dbg !6005
  store i64 %asmresult, ptr %size.addr, align 8, !dbg !6005
  store ptr %asmresult1, ptr %addr.addr, align 8, !dbg !6005
  call void @llvm.write_register.i64(metadata !4259, i64 %asmresult2), !dbg !6005
  call void @clac() #21, !dbg !6007
  %4 = load i64, ptr %size.addr, align 8, !dbg !6008
  ret i64 %4, !dbg !6009
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #7 align 16 !dbg !6010 {
entry:
  ret void, !dbg !6012
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #4 align 16 !dbg !6013 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !dbg !6015, !srcloc !6016
  ret void, !dbg !6017
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #4 align 16 !dbg !6018 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !dbg !6019, !srcloc !6020
  ret void, !dbg !6021
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #4 align 16 !dbg !6022 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6026, metadata !DIExpression()), !dbg !6027
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6028
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #21, !dbg !6029
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6030
  call void @raw_atomic_dec(ptr noundef %1) #21, !dbg !6031
  ret void, !dbg !6032
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6033 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6041, metadata !DIExpression()), !dbg !6043
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6042, metadata !DIExpression()), !dbg !6044
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6045
  %1 = load i64, ptr %size.addr, align 8, !dbg !6046
  %conv = trunc i64 %1 to i32, !dbg !6046
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #21, !dbg !6047
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6048
  %3 = load i64, ptr %size.addr, align 8, !dbg !6048
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #21, !dbg !6048
  ret void, !dbg !6049
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #4 align 16 !dbg !6050 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6053, metadata !DIExpression()), !dbg !6054
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6055
  call void @arch_atomic_dec(ptr noundef %0) #21, !dbg !6056
  ret void, !dbg !6057
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !6058 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6063, metadata !DIExpression()), !dbg !6065
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6064, metadata !DIExpression()), !dbg !6066
  ret i1 true, !dbg !6067
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !6068 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6073, metadata !DIExpression()), !dbg !6076
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6074, metadata !DIExpression()), !dbg !6077
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6075, metadata !DIExpression()), !dbg !6078
  ret void, !dbg !6079
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #4 align 16 !dbg !6080 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6083, metadata !DIExpression()), !dbg !6084
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6085
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6086
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #22, !dbg !6087, !srcloc !6088
  ret void, !dbg !6089
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #7 align 16 !dbg !6090 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6097, metadata !DIExpression()), !dbg !6098
  br label %do.body, !dbg !6099

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6101

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6099
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6099
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6099
  store ptr %1, ptr %tmp, align 8, !dbg !6101
  %2 = load ptr, ptr %tmp, align 8, !dbg !6099
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6103
  %cmp = icmp eq ptr %2, %3, !dbg !6104
  %conv = zext i1 %cmp to i32, !dbg !6104
  ret i32 %conv, !dbg !6105
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_seq_pool_available(ptr noundef %pool) #7 align 16 !dbg !6106 {
entry:
  %pool.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !6108, metadata !DIExpression()), !dbg !6109
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !6110
  %total_elements = getelementptr inbounds %struct.snd_seq_pool, ptr %0, i32 0, i32 2, !dbg !6111
  %1 = load i32, ptr %total_elements, align 8, !dbg !6111
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !6112
  %counter = getelementptr inbounds %struct.snd_seq_pool, ptr %2, i32 0, i32 3, !dbg !6113
  %call = call i32 @atomic_read(ptr noundef %counter) #21, !dbg !6114
  %sub = sub i32 %1, %call, !dbg !6115
  ret i32 %sub, !dbg !6116
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6117 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_waitqueue_entry(ptr noundef %wq_entry, ptr noundef %p) #7 align 16 !dbg !6120 {
entry:
  %wq_entry.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %wq_entry, ptr %wq_entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_entry.addr, metadata !6124, metadata !DIExpression()), !dbg !6126
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6125, metadata !DIExpression()), !dbg !6127
  %0 = load ptr, ptr %wq_entry.addr, align 8, !dbg !6128
  %flags = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 0, !dbg !6129
  store i32 0, ptr %flags, align 8, !dbg !6130
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6131
  %2 = load ptr, ptr %wq_entry.addr, align 8, !dbg !6132
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1, !dbg !6133
  store ptr %1, ptr %private, align 8, !dbg !6134
  %3 = load ptr, ptr %wq_entry.addr, align 8, !dbg !6135
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2, !dbg !6136
  store ptr @default_wake_function, ptr %func, align 8, !dbg !6137
  ret void, !dbg !6138
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !6139 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #22, !dbg !6150
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6144, metadata !DIExpression()), !dbg !6150
  br label %do.body, !dbg !6150

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #22, !dbg !6151
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6146, metadata !DIExpression()), !dbg !6151
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6151
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6151
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #22, !dbg !6150
  br label %do.cond, !dbg !6151

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6151

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #22, !dbg !6152
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6148, metadata !DIExpression()), !dbg !6152
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #25, !dbg !6152, !srcloc !6153
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6152
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6152
  %3 = inttoptr i64 %2 to ptr, !dbg !6152
  store ptr %3, ptr %tmp, align 8, !dbg !6152
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #22, !dbg !6150
  %4 = load ptr, ptr %tmp, align 8, !dbg !6152
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6150
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6150
  store ptr %5, ptr %tmp1, align 8, !dbg !6150
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #22, !dbg !6154
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6150
  ret ptr %6, !dbg !6155
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6156 dso_local void @add_wait_queue(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6159 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6162 dso_local void @schedule() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6163 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6164 dso_local void @remove_wait_queue(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #7 align 16 !dbg !6165 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6169, metadata !DIExpression()), !dbg !6170
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6171
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #21, !dbg !6171
  %tobool = icmp ne i32 %call, 0, !dbg !6171
  %lnot = xor i1 %tobool, true, !dbg !6171
  %lnot1 = xor i1 %lnot, true, !dbg !6171
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6171
  %conv = sext i32 %lnot.ext to i64, !dbg !6171
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6171
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6171
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6173

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !6174
  br label %return, !dbg !6174

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6175
  %call3 = call i32 @task_sigpending(ptr noundef %1) #21, !dbg !6176
  store i32 %call3, ptr %retval, align 4, !dbg !6177
  br label %return, !dbg !6177

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6178
  ret i32 %2, !dbg !6178
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #4 align 16 !dbg !6179 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6181, metadata !DIExpression()), !dbg !6182
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6183
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #21, !dbg !6184
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6185
  call void @raw_atomic_inc(ptr noundef %1) #21, !dbg !6186
  ret void, !dbg !6187
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #7 align 16 !dbg !6188 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6192, metadata !DIExpression()), !dbg !6194
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6193, metadata !DIExpression()), !dbg !6195
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6196
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !6196
  %1 = load i32, ptr %flag.addr, align 4, !dbg !6197
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #21, !dbg !6198
  ret i32 %call, !dbg !6199
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #7 align 16 !dbg !6200 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6202, metadata !DIExpression()), !dbg !6203
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6204
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #21, !dbg !6204
  %tobool = icmp ne i32 %call, 0, !dbg !6204
  %lnot = xor i1 %tobool, true, !dbg !6204
  %lnot1 = xor i1 %lnot, true, !dbg !6204
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6204
  %conv = sext i32 %lnot.ext to i64, !dbg !6204
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6204
  %conv2 = trunc i64 %expval to i32, !dbg !6204
  ret i32 %conv2, !dbg !6205
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #7 align 16 !dbg !6206 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6211, metadata !DIExpression()), !dbg !6213
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6212, metadata !DIExpression()), !dbg !6214
  %0 = load i32, ptr %flag.addr, align 4, !dbg !6215
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6215
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6215

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !6215
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !6215
  %3 = ptrtoint ptr %flags to i64, !dbg !6215
  %cmp = icmp ne i64 %3, 0, !dbg !6215
  %conv = zext i1 %cmp to i32, !dbg !6215
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6215
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6215

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !6215
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !6215
  %6 = ptrtoint ptr %flags2 to i64, !dbg !6215
  %cmp3 = icmp ne i64 %6, 0, !dbg !6215
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !6215

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !6215
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !6215
  %8 = load i64, ptr %flags6, align 8, !dbg !6215
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6215
  br i1 %9, label %cond.true, label %cond.false, !dbg !6215

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !6215
  %conv7 = sext i32 %10 to i64, !dbg !6215
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !6215
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !6215
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #21, !dbg !6215
  %conv9 = zext i1 %call to i32, !dbg !6215
  br label %cond.end, !dbg !6215

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !6215
  %conv10 = sext i32 %12 to i64, !dbg !6215
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !6215
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !6215
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #21, !dbg !6215
  %conv13 = zext i1 %call12 to i32, !dbg !6215
  br label %cond.end, !dbg !6215

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !6215
  ret i32 %cond, !dbg !6216
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6217 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6225, metadata !DIExpression()), !dbg !6230
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6226, metadata !DIExpression()), !dbg !6231
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #22, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6227, metadata !DIExpression()), !dbg !6233
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6234
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6235
  %div = udiv i64 %1, 64, !dbg !6235
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6236
  store ptr %add.ptr, ptr %p, align 8, !dbg !6233
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #22, !dbg !6237
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6228, metadata !DIExpression()), !dbg !6238
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6239
  %rem = urem i64 %2, 64, !dbg !6239
  %shl = shl i64 1, %rem, !dbg !6239
  store i64 %shl, ptr %mask, align 8, !dbg !6238
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #22, !dbg !6240
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6229, metadata !DIExpression()), !dbg !6241
  %3 = load ptr, ptr %p, align 8, !dbg !6242
  %4 = load i64, ptr %3, align 8, !dbg !6243
  store i64 %4, ptr %val, align 8, !dbg !6241
  %5 = load i64, ptr %val, align 8, !dbg !6244
  %6 = load i64, ptr %mask, align 8, !dbg !6245
  %and = and i64 %5, %6, !dbg !6246
  %tobool = icmp ne i64 %and, 0, !dbg !6247
  %lnot = xor i1 %tobool, true, !dbg !6247
  %lnot1 = xor i1 %lnot, true, !dbg !6248
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #22, !dbg !6249
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #22, !dbg !6249
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #22, !dbg !6249
  ret i1 %lnot1, !dbg !6250
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6251 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6254, metadata !DIExpression()), !dbg !6256
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6255, metadata !DIExpression()), !dbg !6257
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6258
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6259
  %div = udiv i64 %1, 64, !dbg !6259
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6260
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #21, !dbg !6261
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6262
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6263
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #21, !dbg !6264
  ret i1 %call, !dbg !6265
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6266 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6268, metadata !DIExpression()), !dbg !6270
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6269, metadata !DIExpression()), !dbg !6271
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6272
  %1 = load i64, ptr %size.addr, align 8, !dbg !6273
  %conv = trunc i64 %1 to i32, !dbg !6273
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #21, !dbg !6274
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6275
  %3 = load i64, ptr %size.addr, align 8, !dbg !6275
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #21, !dbg !6275
  ret void, !dbg !6276
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6277 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6280, metadata !DIExpression()), !dbg !6282
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6281, metadata !DIExpression()), !dbg !6283
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6284
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6285
  br i1 %1, label %cond.true, label %cond.false, !dbg !6285

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6286
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6287
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #21, !dbg !6288
  %conv = zext i1 %call to i32, !dbg !6288
  br label %cond.end, !dbg !6285

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6289
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6290
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #21, !dbg !6291
  %conv2 = zext i1 %call1 to i32, !dbg !6291
  br label %cond.end, !dbg !6285

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6285
  %tobool = icmp ne i32 %cond, 0, !dbg !6285
  ret i1 %tobool, !dbg !6292
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !6293 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6295, metadata !DIExpression()), !dbg !6297
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6296, metadata !DIExpression()), !dbg !6298
  ret i1 true, !dbg !6299
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6300 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6304, metadata !DIExpression()), !dbg !6306
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6305, metadata !DIExpression()), !dbg !6307
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6308
  %and = and i64 %0, 63, !dbg !6309
  %shl = shl i64 1, %and, !dbg !6310
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6311
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6312
  %shr = ashr i64 %2, 6, !dbg !6313
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6311
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6311
  %and1 = and i64 %shl, %3, !dbg !6314
  %cmp = icmp ne i64 %and1, 0, !dbg !6315
  ret i1 %cmp, !dbg !6316
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6317 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6319, metadata !DIExpression()), !dbg !6322
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6320, metadata !DIExpression()), !dbg !6323
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #22, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6321, metadata !DIExpression()), !dbg !6325
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6326
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6327
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #22, !dbg !6328, !srcloc !6329
  %3 = icmp ult i8 %2, 2, !dbg !6328
  call void @llvm.assume(i1 %3), !dbg !6328
  store i8 %2, ptr %oldbit, align 1, !dbg !6328
  %4 = load i8, ptr %oldbit, align 1, !dbg !6330, !range !4623, !noundef !1295
  %tobool = trunc i8 %4 to i1, !dbg !6330
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #22, !dbg !6331
  ret i1 %tobool, !dbg !6332
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #4 align 16 !dbg !6333 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6335, metadata !DIExpression()), !dbg !6336
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6337
  call void @arch_atomic_inc(ptr noundef %0) #21, !dbg !6338
  ret void, !dbg !6339
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #4 align 16 !dbg !6340 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6342, metadata !DIExpression()), !dbg !6343
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6344
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6345
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #22, !dbg !6346, !srcloc !6347
  ret void, !dbg !6348
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6349 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #7 align 16 !dbg !6350 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6355, metadata !DIExpression()), !dbg !6356
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6357, !range !4623, !noundef !1295
  %tobool = trunc i8 %0 to i1, !dbg !6357
  %lnot = xor i1 %tobool, true, !dbg !6357
  %lnot1 = xor i1 %lnot, true, !dbg !6357
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6357
  %conv = sext i32 %lnot.ext to i64, !dbg !6357
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6357
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6357
  ret i1 %tobool2, !dbg !6358
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6359 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6361, metadata !DIExpression()), !dbg !6363
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6362, metadata !DIExpression()), !dbg !6364
  %0 = load i64, ptr %size.addr, align 8, !dbg !6365
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6366
  %call = call noalias ptr @kvmalloc_node(i64 noundef %0, i32 noundef %1, i32 noundef -1) #24, !dbg !6367
  ret ptr %call, !dbg !6368
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6369 dso_local noalias ptr @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) #17

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6372 dso_local void @_raw_spin_lock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6375 dso_local void @_raw_spin_unlock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !6376 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6378, metadata !DIExpression()), !dbg !6379
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6380
  %call = call i32 @arch_atomic_read(ptr noundef %0) #21, !dbg !6381
  ret i32 %call, !dbg !6382
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !6383 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6385, metadata !DIExpression()), !dbg !6386
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6387
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6387
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6387
  ret i32 %1, !dbg !6388
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #18 align 16 !dbg !6389 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6391, metadata !DIExpression()), !dbg !6396
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6392, metadata !DIExpression()), !dbg !6397
  %0 = load i64, ptr %size.addr, align 8, !dbg !6398
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6399
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6400

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6401
  %tobool = icmp ne i64 %2, 0, !dbg !6401
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6402

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #22, !dbg !6403
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6393, metadata !DIExpression()), !dbg !6404
  %3 = load i64, ptr %size.addr, align 8, !dbg !6405
  %cmp = icmp ugt i64 %3, 8192, !dbg !6407
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6408

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6409
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6410
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #24, !dbg !6411
  store ptr %call, ptr %retval, align 8, !dbg !6412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6412

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6413
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #21, !dbg !6413
  store i32 %call2, ptr %index, align 4, !dbg !6414
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6415
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6416
  %9 = ptrtoint ptr %8 to i64, !dbg !6416
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #21, !dbg !6417
  %idxprom = zext i32 %call3 to i64, !dbg !6418
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6418
  %10 = load i32, ptr %index, align 4, !dbg !6419
  %idxprom4 = zext i32 %10 to i64, !dbg !6418
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6418
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6418
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6420
  %13 = load i64, ptr %size.addr, align 8, !dbg !6421
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #26, !dbg !6422
  store ptr %call6, ptr %retval, align 8, !dbg !6423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6423

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #22, !dbg !6424
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6425
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6426
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #24, !dbg !6427
  store ptr %call8, ptr %retval, align 8, !dbg !6428
  br label %return, !dbg !6428

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6429
  ret ptr %16, !dbg !6429
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6430 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #17

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !6431 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6435, metadata !DIExpression()), !dbg !6437
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6436, metadata !DIExpression()), !dbg !6438
  %0 = load i64, ptr %size.addr, align 8, !dbg !6439
  %tobool = icmp ne i64 %0, 0, !dbg !6439
  br i1 %tobool, label %if.end, label %if.then, !dbg !6441

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6442
  br label %return, !dbg !6442

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6443
  %cmp = icmp ule i64 %1, 8, !dbg !6445
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6446

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6447
  br label %return, !dbg !6447

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6448
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6450
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6451

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6452
  %cmp4 = icmp ule i64 %3, 96, !dbg !6453
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6454

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6455
  br label %return, !dbg !6455

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6456
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6458
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6459

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6460
  %cmp9 = icmp ule i64 %5, 192, !dbg !6461
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6462

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6463
  br label %return, !dbg !6463

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6464
  %cmp12 = icmp ule i64 %6, 8, !dbg !6466
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6467

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6468
  br label %return, !dbg !6468

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6469
  %cmp15 = icmp ule i64 %7, 16, !dbg !6471
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6472

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6473
  br label %return, !dbg !6473

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6474
  %cmp18 = icmp ule i64 %8, 32, !dbg !6476
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6477

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6478
  br label %return, !dbg !6478

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6479
  %cmp21 = icmp ule i64 %9, 64, !dbg !6481
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6482

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6483
  br label %return, !dbg !6483

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6484
  %cmp24 = icmp ule i64 %10, 128, !dbg !6486
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6487

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6488
  br label %return, !dbg !6488

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6489
  %cmp27 = icmp ule i64 %11, 256, !dbg !6491
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6492

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6493
  br label %return, !dbg !6493

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6494
  %cmp30 = icmp ule i64 %12, 512, !dbg !6496
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6497

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6498
  br label %return, !dbg !6498

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6499
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6501
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6502

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6503
  br label %return, !dbg !6503

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6504
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6506
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6507

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6508
  br label %return, !dbg !6508

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6509
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6511
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6512

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6513
  br label %return, !dbg !6513

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6514
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6516
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6517

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6518
  br label %return, !dbg !6518

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6519
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6521
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6522

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6523
  br label %return, !dbg !6523

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6524
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6526
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6527

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6528
  br label %return, !dbg !6528

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6529
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6531
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6532

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6533
  br label %return, !dbg !6533

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6534
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6536
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6537

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6538
  br label %return, !dbg !6538

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6539
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6541
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6542

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6543
  br label %return, !dbg !6543

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6544
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6546
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6547

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6548
  br label %return, !dbg !6548

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6549
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6551
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6552

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6553
  br label %return, !dbg !6553

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6554
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6556
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6557

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6558
  br label %return, !dbg !6558

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6559, !range !4623, !noundef !1295
  %tobool69 = trunc i8 %25 to i1, !dbg !6559
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6561

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6562

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #27, !dbg !6563, !srcloc !6566
  unreachable, !dbg !6563

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6567

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6568

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6569

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6571

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6569

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 480, i32 0, i64 12) #22, !dbg !6573, !srcloc !6575
  br label %do.end75, !dbg !6573

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6569

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6576
  br label %return, !dbg !6576

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6577
  ret i32 %26, !dbg !6577
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6578 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #19

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6583 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6587, metadata !DIExpression()), !dbg !6589
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6588, metadata !DIExpression()), !dbg !6590
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6591
  %and = and i32 %0, 17, !dbg !6591
  %cmp = icmp eq i32 %and, 0, !dbg !6591
  %lnot = xor i1 %cmp, true, !dbg !6591
  %lnot1 = xor i1 %lnot, true, !dbg !6591
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6591
  %conv = sext i32 %lnot.ext to i64, !dbg !6591
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6591
  %tobool = icmp ne i64 %expval, 0, !dbg !6591
  br i1 %tobool, label %if.then, label %if.end, !dbg !6593

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6594
  br label %return, !dbg !6594

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6595
  %and2 = and i32 %1, 1, !dbg !6597
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6597
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6598

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6599
  br label %return, !dbg !6599

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6600
  br label %return, !dbg !6600

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6602
  ret i32 %2, !dbg !6602
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6603 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #17

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6604 dso_local void @__compiletime_assert_117() #20

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6605 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6607, metadata !DIExpression()), !dbg !6609
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6608, metadata !DIExpression()), !dbg !6610
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6611
  %1 = load i64, ptr %size.addr, align 8, !dbg !6612
  %conv = trunc i64 %1 to i32, !dbg !6612
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #21, !dbg !6613
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6614
  %3 = load i64, ptr %size.addr, align 8, !dbg !6614
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #21, !dbg !6614
  ret void, !dbg !6615
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6616 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6618, metadata !DIExpression()), !dbg !6620
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6619, metadata !DIExpression()), !dbg !6621
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6622
  %1 = load i32, ptr %i.addr, align 4, !dbg !6623
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #21, !dbg !6624
  ret void, !dbg !6625
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6626 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6628, metadata !DIExpression()), !dbg !6630
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6629, metadata !DIExpression()), !dbg !6631
  br label %do.body, !dbg !6632

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6633
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6633
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6633
  store volatile i32 %0, ptr %counter, align 4, !dbg !6633
  br label %do.end, !dbg !6633

do.end:                                           ; preds = %do.body
  ret void, !dbg !6635
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #15 = { nocallback nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #19 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #20 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #21 = { noredzone }
attributes #22 = { nounwind }
attributes #23 = { noredzone allocsize(0,1) }
attributes #24 = { noredzone allocsize(0) }
attributes #25 = { nounwind memory(none) }
attributes #26 = { noredzone allocsize(2) }
attributes #27 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4259}
!llvm.module.flags = !{!4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267}
!llvm.ident = !{!4268}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_seq_dump_var_event289", scope: !2, file: !3, line: 130, type: !103, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/seq/.seq_memory.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/seq/snd-seq\22 -D KBUILD_BASENAME=\22seq_memory\22 -D KBUILD_MODNAME=\22snd_seq\22 -D __KBUILD_MODNAME=kmod_snd_seq -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/seq/seq_memory.ll sound/core/seq/seq_memory.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !4219, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/seq/seq_memory.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51e561671b449888ba15eff0ba9923a3")
!4 = !{!5, !11, !19, !26, !34, !50, !57, !63, !68, !74, !79, !85, !92}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
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
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !75, line: 65, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!76 = !{!77, !78}
!77 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!78 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !80, line: 16, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "TT_NONE", value: 0)
!83 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!84 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !86, line: 51, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!89 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!90 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!91 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !93, line: 364, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!94 = !{!95, !96, !97, !98, !99, !100, !101}
!95 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!96 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!97 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!98 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!99 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!100 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!101 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!102 = !{!103, !104, !301, !302, !303, !158, !869, !313, !4209, !4212, !2672, !4213, !2287, !4214, !4215, !4218}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_event_cell", file: !106, line: 29, size: 384, elements: !107)
!106 = !DIFile(filename: "sound/core/seq/seq_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "00d141c657921506643a42c8b258f674")
!107 = !{!108, !231, !300}
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !106, line: 30, baseType: !109, size: 224)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !106, line: 30, size: 224, elements: !110)
!110 = !{!111, !223}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !109, file: !106, line: 31, baseType: !112, size: 224)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_event", file: !113, line: 271, size: 224, elements: !114)
!113 = !DIFile(filename: "./include/uapi/sound/asequencer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a270bda5db28a911babca63673f52743")
!114 = !{!115, !118, !119, !121, !122, !132, !137, !138}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !113, line: 272, baseType: !116, size: 8)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_event_type_t", file: !113, line: 139, baseType: !117)
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !113, line: 273, baseType: !117, size: 8, offset: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !112, file: !113, line: 274, baseType: !120, size: 8, offset: 16)
!120 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !112, file: !113, line: 276, baseType: !117, size: 8, offset: 24)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !112, file: !113, line: 277, baseType: !123, size: 64, offset: 32)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_seq_timestamp", file: !113, line: 225, size: 64, elements: !124)
!124 = !{!125, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !123, file: !113, line: 226, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_tick_time_t", file: !113, line: 223, baseType: !7)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !123, file: !113, line: 227, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_real_time", file: !113, line: 218, size: 64, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !128, file: !113, line: 219, baseType: !7, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !128, file: !113, line: 220, baseType: !7, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !112, file: !113, line: 279, baseType: !133, size: 16, offset: 96)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_addr", file: !113, line: 142, size: 16, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !133, file: !113, line: 143, baseType: !117, size: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !133, file: !113, line: 144, baseType: !117, size: 8, offset: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !112, file: !113, line: 280, baseType: !133, size: 16, offset: 112)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !112, file: !113, line: 282, baseType: !139, size: 96, offset: 128)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_seq_event_data", file: !113, line: 256, size: 96, elements: !140)
!140 = !{!141, !149, !159, !166, !173, !178, !203, !204, !205, !210, !215}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !139, file: !113, line: 257, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_note", file: !113, line: 180, size: 64, elements: !143)
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !142, file: !113, line: 181, baseType: !117, size: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !142, file: !113, line: 182, baseType: !117, size: 8, offset: 8)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "velocity", scope: !142, file: !113, line: 183, baseType: !117, size: 8, offset: 16)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "off_velocity", scope: !142, file: !113, line: 184, baseType: !117, size: 8, offset: 24)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !142, file: !113, line: 185, baseType: !7, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !139, file: !113, line: 258, baseType: !150, size: 96)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_ctrl", file: !113, line: 189, size: 96, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !150, file: !113, line: 190, baseType: !117, size: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "unused1", scope: !150, file: !113, line: 191, baseType: !117, size: 8, offset: 8)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !150, file: !113, line: 191, baseType: !117, size: 8, offset: 16)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !150, file: !113, line: 191, baseType: !117, size: 8, offset: 24)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !150, file: !113, line: 192, baseType: !7, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !150, file: !113, line: 193, baseType: !158, size: 32, offset: 64)
!158 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "raw8", scope: !139, file: !113, line: 259, baseType: !160, size: 96)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_raw8", file: !113, line: 197, size: 96, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !160, file: !113, line: 198, baseType: !163, size: 96)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 96, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 12)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "raw32", scope: !139, file: !113, line: 260, baseType: !167, size: 96)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_raw32", file: !113, line: 202, size: 96, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !167, file: !113, line: 203, baseType: !170, size: 96)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 3)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !139, file: !113, line: 261, baseType: !174, size: 96)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_ext", file: !113, line: 207, size: 96, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !174, file: !113, line: 208, baseType: !7, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !174, file: !113, line: 209, baseType: !103, size: 64, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !139, file: !113, line: 262, baseType: !179, size: 96)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_queue_control", file: !113, line: 236, size: 96, elements: !180)
!180 = !{!181, !182, !184}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !179, file: !113, line: 237, baseType: !117, size: 8)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !179, file: !113, line: 238, baseType: !183, size: 24, offset: 8)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 24, elements: !171)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !179, file: !113, line: 246, baseType: !185, size: 64, offset: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !113, line: 239, size: 64, elements: !186)
!186 = !{!187, !188, !189, !190, !195, !199}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !185, file: !113, line: 240, baseType: !158, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !185, file: !113, line: 241, baseType: !123, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !185, file: !113, line: 242, baseType: !7, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "skew", scope: !185, file: !113, line: 243, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_queue_skew", file: !113, line: 230, size: 64, elements: !192)
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !191, file: !113, line: 231, baseType: !7, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !191, file: !113, line: 232, baseType: !7, size: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "d32", scope: !185, file: !113, line: 244, baseType: !196, size: 64)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 2)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "d8", scope: !185, file: !113, line: 245, baseType: !200, size: 64)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 64, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 8)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !139, file: !113, line: 263, baseType: !123, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !139, file: !113, line: 264, baseType: !133, size: 16)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !139, file: !113, line: 265, baseType: !206, size: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_connect", file: !113, line: 148, size: 32, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sender", scope: !206, file: !113, line: 149, baseType: !133, size: 16)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !206, file: !113, line: 150, baseType: !133, size: 16, offset: 16)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !139, file: !113, line: 266, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_result", file: !113, line: 212, size: 64, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !211, file: !113, line: 213, baseType: !158, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !211, file: !113, line: 214, baseType: !158, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "quote", scope: !139, file: !113, line: 267, baseType: !216, size: 96)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_quote", file: !113, line: 250, size: 96, elements: !217)
!217 = !{!218, !219, !221}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !216, file: !113, line: 251, baseType: !133, size: 16)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !216, file: !113, line: 252, baseType: !220, size: 16, offset: 16)
!220 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !216, file: !113, line: 253, baseType: !222, size: 64, offset: 32)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ump", scope: !109, file: !106, line: 32, baseType: !224, size: 224)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__snd_seq_event", file: !106, line: 15, size: 224, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !224, file: !106, line: 16, baseType: !112, size: 224)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !224, file: !106, line: 25, baseType: !228, size: 224)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !106, line: 20, size: 224, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !228, file: !106, line: 21, baseType: !112, size: 224)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !105, file: !106, line: 34, baseType: !232, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_pool", file: !106, line: 43, size: 704, elements: !234)
!234 = !{!235, !236, !237, !238, !244, !245, !246, !247, !248, !249, !250, !251, !299}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !233, file: !106, line: 44, baseType: !104, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !233, file: !106, line: 45, baseType: !104, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "total_elements", scope: !233, file: !106, line: 47, baseType: !158, size: 32, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !233, file: !106, line: 48, baseType: !239, size: 32, offset: 160)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !240, line: 174, baseType: !241)
!240 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !240, line: 172, size: 32, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !241, file: !240, line: 173, baseType: !158, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !233, file: !106, line: 50, baseType: !158, size: 32, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "room", scope: !233, file: !106, line: 51, baseType: !158, size: 32, offset: 224)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !233, file: !106, line: 53, baseType: !158, size: 32, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "max_used", scope: !233, file: !106, line: 56, baseType: !158, size: 32, offset: 288)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_nopool", scope: !233, file: !106, line: 57, baseType: !158, size: 32, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_failures", scope: !233, file: !106, line: 58, baseType: !158, size: 32, offset: 352)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_success", scope: !233, file: !106, line: 59, baseType: !158, size: 32, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "output_sleep", scope: !233, file: !106, line: 62, baseType: !252, size: 192, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !253, line: 41, baseType: !254)
!253 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !253, line: 37, size: 192, elements: !255)
!255 = !{!256, !293}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !254, file: !253, line: 38, baseType: !257, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !258, line: 29, baseType: !259)
!258 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !258, line: 17, size: 32, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !258, line: 18, baseType: !262, size: 32)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !258, line: 18, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !262, file: !258, line: 19, baseType: !265, size: 32)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !266, line: 14, size: 32, elements: !267)
!266 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !265, file: !266, line: 15, baseType: !269, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !270, line: 44, baseType: !271)
!270 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !270, line: 14, size: 32, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, scope: !271, file: !270, line: 15, baseType: !274, size: 32)
!274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !271, file: !270, line: 15, size: 32, elements: !275)
!275 = !{!276, !277, !286}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !274, file: !270, line: 16, baseType: !239, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !270, line: 24, baseType: !278, size: 16)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !274, file: !270, line: 24, size: 16, elements: !279)
!279 = !{!280, !285}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !278, file: !270, line: 25, baseType: !281, size: 8)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !282, line: 17, baseType: !283)
!282 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !284, line: 21, baseType: !117)
!284 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !278, file: !270, line: 26, baseType: !281, size: 8, offset: 8)
!286 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !270, line: 28, baseType: !287, size: 32)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !274, file: !270, line: 28, size: 32, elements: !288)
!288 = !{!289, !292}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !287, file: !270, line: 29, baseType: !290, size: 16)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !282, line: 19, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !284, line: 24, baseType: !220)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !287, file: !270, line: 30, baseType: !290, size: 16, offset: 16)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !254, file: !253, line: 39, baseType: !294, size: 128, offset: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !240, line: 190, size: 128, elements: !295)
!295 = !{!296, !298}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !240, line: 191, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !294, file: !240, line: 191, baseType: !297, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !233, file: !106, line: 65, baseType: !257, size: 32, offset: 640)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !106, line: 35, baseType: !104, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !240, line: 154, baseType: !7)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !305, line: 17, size: 960, elements: !306)
!305 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!306 = !{!307, !308, !314, !315, !316, !317, !321, !322, !343, !365, !366, !4208}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !304, file: !305, line: 18, baseType: !301, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !304, file: !305, line: 19, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !240, line: 61, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !311, line: 72, baseType: !312)
!311 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !311, line: 16, baseType: !313)
!313 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !304, file: !305, line: 20, baseType: !309, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !304, file: !305, line: 21, baseType: !309, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !304, file: !305, line: 22, baseType: !309, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !304, file: !305, line: 23, baseType: !318, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !240, line: 52, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !311, line: 88, baseType: !320)
!320 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !304, file: !305, line: 24, baseType: !318, size: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !304, file: !305, line: 25, baseType: !323, size: 256, offset: 448)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !324, line: 66, size: 256, elements: !325)
!324 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!325 = !{!326, !335, !337, !342}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !323, file: !324, line: 67, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !328, line: 13, baseType: !329)
!328 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !240, line: 181, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !240, line: 179, size: 64, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !330, file: !240, line: 180, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !282, line: 22, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !284, line: 30, baseType: !320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !323, file: !324, line: 68, baseType: !336, size: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !266, line: 23, baseType: !265)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !323, file: !324, line: 70, baseType: !338, size: 32, offset: 96)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !339, line: 15, size: 32, elements: !340)
!339 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !338, file: !339, line: 20, baseType: !239, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !323, file: !324, line: 72, baseType: !294, size: 128, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !304, file: !305, line: 26, baseType: !344, size: 64, offset: 704)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !305, line: 32, size: 256, elements: !347)
!347 = !{!348, !353, !357, !361}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !346, file: !305, line: 33, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!103, !303, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !346, file: !305, line: 34, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !303, !103}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !305, line: 35, baseType: !358, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!103, !303, !103, !352}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !346, file: !305, line: 36, baseType: !362, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!158, !303, !103}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !304, file: !305, line: 27, baseType: !158, size: 32, offset: 768)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !304, file: !305, line: 28, baseType: !367, size: 64, offset: 832)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !64, line: 994, size: 1856, align: 64, elements: !370)
!370 = !{!371, !390, !391, !393, !394, !395, !396, !397, !470, !695, !704, !4198, !4199, !4200, !4201, !4202, !4203, !4205, !4206, !4207}
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !64, line: 995, baseType: !372, size: 128)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !64, line: 995, size: 128, elements: !373)
!373 = !{!374, !380, !389}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !372, file: !64, line: 996, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !376, line: 60, size: 64, elements: !377)
!376 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !376, line: 61, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !372, file: !64, line: 997, baseType: !381, size: 128, align: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !240, line: 232, size: 128, align: 64, elements: !382)
!382 = !{!383, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !240, line: 233, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !381, file: !240, line: 234, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !384}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !372, file: !64, line: 998, baseType: !7, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !369, file: !64, line: 1005, baseType: !257, size: 32, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !369, file: !64, line: 1006, baseType: !392, size: 32, offset: 160)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !240, line: 156, baseType: !7)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !369, file: !64, line: 1007, baseType: !327, size: 64, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !369, file: !64, line: 1008, baseType: !323, size: 256, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !369, file: !64, line: 1009, baseType: !318, size: 64, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !369, file: !64, line: 1010, baseType: !7, size: 32, offset: 576)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !369, file: !64, line: 1011, baseType: !398, size: 256, offset: 640)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !64, line: 948, size: 256, elements: !399)
!399 = !{!400, !421, !459, !460, !468, !469}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !398, file: !64, line: 949, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !402, line: 34, baseType: !403)
!402 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 25, size: 64, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !403, file: !402, line: 26, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !407, line: 27, baseType: !408)
!407 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !407, line: 13, size: 64, elements: !409)
!409 = !{!410, !420}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !407, line: 14, baseType: !411, size: 32)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !407, line: 14, size: 32, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !411, file: !407, line: 15, baseType: !239, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !407, line: 16, baseType: !415, size: 32)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !407, line: 16, size: 32, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !415, file: !407, line: 18, baseType: !281, size: 8)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !415, file: !407, line: 19, baseType: !419, size: 24, offset: 8)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 24, elements: !171)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !408, file: !407, line: 26, baseType: !269, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !398, file: !64, line: 950, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !424)
!424 = !{!425, !431, !432, !433, !446, !447, !448, !449}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !423, file: !12, line: 61, baseType: !426, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !427, line: 113, baseType: !428)
!427 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !427, line: 111, size: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !428, file: !427, line: 112, baseType: !239, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !423, file: !12, line: 62, baseType: !7, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !423, file: !12, line: 63, baseType: !257, size: 32, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !423, file: !12, line: 65, baseType: !434, size: 256, offset: 128)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 256, elements: !444)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !240, line: 194, size: 64, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !435, file: !240, line: 195, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !240, line: 198, size: 128, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !240, line: 199, baseType: !438, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !439, file: !240, line: 199, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!444 = !{!445}
!445 = !DISubrange(count: 4)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !423, file: !12, line: 66, baseType: !435, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !423, file: !12, line: 68, baseType: !252, size: 192, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !423, file: !12, line: 69, baseType: !381, size: 128, align: 64, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !423, file: !12, line: 70, baseType: !450, offset: 768)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, elements: !457)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !451, file: !12, line: 55, baseType: !158, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !451, file: !12, line: 56, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!457 = !{!458}
!458 = !DISubrange(count: -1)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !398, file: !64, line: 951, baseType: !11, size: 32, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !398, file: !64, line: 952, baseType: !461, size: 32, offset: 160)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !462, line: 23, baseType: !463)
!462 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 21, size: 32, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !463, file: !462, line: 22, baseType: !466, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !240, line: 37, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !311, line: 49, baseType: !7)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !398, file: !64, line: 952, baseType: !461, size: 32, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !398, file: !64, line: 953, baseType: !158, size: 32, offset: 224)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !369, file: !64, line: 1012, baseType: !471, size: 64, offset: 896)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !474, line: 110, size: 1472, elements: !475)
!474 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!475 = !{!476, !477, !478, !485, !486, !487, !488, !489, !490, !491, !492, !501, !502, !503, !504, !505, !506, !640, !641, !642, !643, !644, !675, !678, !682, !690}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !473, file: !474, line: 111, baseType: !327, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !473, file: !474, line: 112, baseType: !461, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !473, file: !474, line: 113, baseType: !479, size: 32, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !462, line: 28, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 26, size: 32, elements: !481)
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !480, file: !462, line: 27, baseType: !483, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !240, line: 38, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !311, line: 50, baseType: !7)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !473, file: !474, line: 114, baseType: !461, size: 32, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !473, file: !474, line: 115, baseType: !479, size: 32, offset: 160)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !473, file: !474, line: 116, baseType: !461, size: 32, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !473, file: !474, line: 117, baseType: !479, size: 32, offset: 224)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !473, file: !474, line: 118, baseType: !461, size: 32, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !473, file: !474, line: 119, baseType: !479, size: 32, offset: 288)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !473, file: !474, line: 120, baseType: !7, size: 32, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !473, file: !474, line: 121, baseType: !493, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !494, line: 24, baseType: !495)
!494 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 24, size: 64, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !495, file: !494, line: 24, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !282, line: 23, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !284, line: 31, baseType: !500)
!500 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !473, file: !474, line: 122, baseType: !493, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !473, file: !474, line: 123, baseType: !493, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !473, file: !474, line: 124, baseType: !493, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !473, file: !474, line: 125, baseType: !493, size: 64, offset: 640)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !473, file: !474, line: 127, baseType: !117, size: 8, offset: 704)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !473, file: !474, line: 129, baseType: !507, size: 64, offset: 768)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !509, line: 195, size: 1728, elements: !510)
!509 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!510 = !{!511, !512, !517, !529, !538, !541, !542, !549, !550, !551, !552, !557, !558, !559, !561, !562, !604, !625}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !508, file: !509, line: 196, baseType: !426, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !508, file: !509, line: 197, baseType: !513, size: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !509, line: 28, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !240, line: 104, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !282, line: 20, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !284, line: 26, baseType: !158)
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !509, line: 198, baseType: !518, size: 192, offset: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !509, line: 198, size: 192, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !518, file: !509, line: 199, baseType: !294, size: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !518, file: !509, line: 200, baseType: !522, size: 192, align: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !523, line: 5, size: 192, align: 64, elements: !524)
!523 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!524 = !{!525, !526, !528}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !522, file: !523, line: 6, baseType: !313, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !522, file: !523, line: 7, baseType: !527, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !522, file: !523, line: 8, baseType: !527, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !508, file: !509, line: 205, baseType: !530, size: 320, offset: 256)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !531, line: 48, size: 320, elements: !532)
!531 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!532 = !{!533, !534, !535, !536, !537}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !530, file: !531, line: 49, baseType: !327, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !530, file: !531, line: 55, baseType: !327, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !530, file: !531, line: 57, baseType: !338, size: 32, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !530, file: !531, line: 59, baseType: !336, size: 32, offset: 160)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !530, file: !531, line: 60, baseType: !294, size: 128, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !508, file: !509, line: 206, baseType: !539, size: 64, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !509, line: 206, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !508, file: !509, line: 207, baseType: !103, size: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !509, line: 208, baseType: !543, size: 64, offset: 704)
!543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !509, line: 208, size: 64, elements: !544)
!544 = !{!545, !548}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !543, file: !509, line: 209, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !547, line: 8, baseType: !334)
!547 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!548 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !543, file: !509, line: 210, baseType: !546, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !508, file: !509, line: 212, baseType: !546, size: 64, offset: 768)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !508, file: !509, line: 213, baseType: !461, size: 32, offset: 832)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !508, file: !509, line: 214, baseType: !479, size: 32, offset: 864)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !508, file: !509, line: 215, baseType: !553, size: 32, offset: 896)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !509, line: 31, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !240, line: 110, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !282, line: 21, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !284, line: 27, baseType: !7)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !508, file: !509, line: 216, baseType: !220, size: 16, offset: 928)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !508, file: !509, line: 217, baseType: !220, size: 16, offset: 944)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !508, file: !509, line: 221, baseType: !560, size: 16, offset: 960)
!560 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !509, line: 228, baseType: !313, size: 64, offset: 1024)
!562 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !509, line: 245, baseType: !563, size: 320, offset: 1088)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !509, line: 245, size: 320, elements: !564)
!564 = !{!565, !596}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !563, file: !509, line: 246, baseType: !566, size: 320)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !509, line: 114, size: 320, elements: !567)
!567 = !{!568, !569, !581, !584, !593}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !566, file: !509, line: 116, baseType: !313, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !509, line: 117, baseType: !570, size: 64, offset: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !509, line: 117, size: 64, elements: !571)
!571 = !{!572, !580}
!572 = !DIDerivedType(tag: DW_TAG_member, scope: !570, file: !509, line: 118, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !570, file: !509, line: 118, size: 64, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !573, file: !509, line: 120, baseType: !290, size: 16)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !573, file: !509, line: 121, baseType: !577, size: 48, offset: 16)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 48, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 6)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !570, file: !509, line: 127, baseType: !313, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !566, file: !509, line: 129, baseType: !582, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !509, line: 102, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !566, file: !509, line: 130, baseType: !585, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !509, line: 108, size: 192, elements: !587)
!587 = !{!588, !589, !590}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !586, file: !509, line: 109, baseType: !381, size: 128, align: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !586, file: !509, line: 110, baseType: !426, size: 32, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !586, file: !509, line: 111, baseType: !591, size: 8, offset: 160)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !240, line: 35, baseType: !592)
!592 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !566, file: !509, line: 131, baseType: !594, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!596 = !DIDerivedType(tag: DW_TAG_member, scope: !563, file: !509, line: 247, baseType: !597, size: 320)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !563, file: !509, line: 247, size: 320, elements: !598)
!598 = !{!599, !600, !601, !602, !603}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !597, file: !509, line: 248, baseType: !313, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !597, file: !509, line: 249, baseType: !313, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !509, line: 250, baseType: !582, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !597, file: !509, line: 251, baseType: !585, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !597, file: !509, line: 252, baseType: !301, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !509, line: 260, baseType: !605, size: 256, offset: 1408)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !509, line: 260, size: 256, elements: !606)
!606 = !{!607, !613}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !605, file: !509, line: 261, baseType: !608, size: 256)
!608 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !509, line: 134, size: 256, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !608, file: !509, line: 135, baseType: !103, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !608, file: !509, line: 136, baseType: !612, size: 256)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !444)
!613 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !509, line: 262, baseType: !614, size: 256)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !509, line: 262, size: 256, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !614, file: !509, line: 264, baseType: !294, size: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !614, file: !509, line: 265, baseType: !618, size: 128, offset: 128)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !619, line: 22, size: 128, elements: !620)
!619 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!620 = !{!621, !624}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !618, file: !619, line: 23, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !619, line: 23, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !618, file: !619, line: 24, baseType: !313, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !508, file: !509, line: 280, baseType: !626, size: 64, offset: 1664)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !509, line: 176, size: 192, elements: !628)
!628 = !{!629, !638, !639}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !627, file: !509, line: 177, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !509, line: 171, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!158, !507, !634, !636, !507}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !627, file: !509, line: 178, baseType: !507, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !627, file: !509, line: 179, baseType: !582, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !473, file: !474, line: 130, baseType: !507, size: 64, offset: 832)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !473, file: !474, line: 131, baseType: !507, size: 64, offset: 896)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !473, file: !474, line: 132, baseType: !507, size: 64, offset: 960)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !473, file: !474, line: 135, baseType: !103, size: 64, offset: 1024)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !473, file: !474, line: 137, baseType: !645, size: 64, offset: 1088)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !647, line: 14, size: 1088, elements: !648)
!647 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!648 = !{!649, !650, !659, !660, !661, !662, !663, !664}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !646, file: !647, line: 15, baseType: !426, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !646, file: !647, line: 17, baseType: !651, size: 320, offset: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !652, line: 22, size: 320, elements: !653)
!652 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!653 = !{!654, !655, !656, !657}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !651, file: !652, line: 23, baseType: !336, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !651, file: !652, line: 24, baseType: !333, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !651, file: !652, line: 26, baseType: !294, size: 128, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !651, file: !652, line: 28, baseType: !658, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !646, file: !647, line: 19, baseType: !313, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !646, file: !647, line: 20, baseType: !327, size: 64, offset: 448)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !646, file: !647, line: 23, baseType: !439, size: 128, offset: 512)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !646, file: !647, line: 24, baseType: !461, size: 32, offset: 640)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !646, file: !647, line: 29, baseType: !327, size: 64, offset: 704)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !646, file: !647, line: 36, baseType: !665, size: 320, offset: 768)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !666, line: 15, size: 320, elements: !667)
!666 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!667 = !{!668, !669, !670, !671, !672, !673, !674}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !665, file: !666, line: 16, baseType: !336, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !665, file: !666, line: 18, baseType: !158, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !665, file: !666, line: 19, baseType: !158, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !665, file: !666, line: 20, baseType: !158, size: 32, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !665, file: !666, line: 21, baseType: !158, size: 32, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !665, file: !666, line: 22, baseType: !313, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !665, file: !666, line: 23, baseType: !313, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !473, file: !474, line: 138, baseType: !676, size: 64, offset: 1152)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !35, line: 901, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !473, file: !474, line: 139, baseType: !679, size: 64, offset: 1216)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !681, line: 16, flags: DIFlagFwdDecl)
!681 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!682 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !473, file: !474, line: 140, baseType: !683, size: 64, offset: 1280)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !474, line: 25, size: 64, elements: !685)
!685 = !{!686, !687, !688}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !684, file: !474, line: 26, baseType: !239, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !684, file: !474, line: 27, baseType: !158, size: 32, offset: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !684, file: !474, line: 28, baseType: !689, offset: 64)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, elements: !457)
!690 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !474, line: 142, baseType: !691, size: 128, offset: 1344)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !474, line: 142, size: 128, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !691, file: !474, line: 143, baseType: !158, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !691, file: !474, line: 144, baseType: !381, size: 128, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !369, file: !64, line: 1013, baseType: !696, size: 256, offset: 960)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !64, line: 970, size: 256, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !696, file: !64, line: 971, baseType: !313, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !696, file: !64, line: 972, baseType: !7, size: 32, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !696, file: !64, line: 973, baseType: !7, size: 32, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !696, file: !64, line: 974, baseType: !7, size: 32, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !696, file: !64, line: 975, baseType: !7, size: 32, offset: 160)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !696, file: !64, line: 976, baseType: !318, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !369, file: !64, line: 1014, baseType: !705, size: 128, offset: 1216)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !706, line: 8, size: 128, elements: !707)
!706 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!707 = !{!708, !4197}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !705, file: !706, line: 9, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !711, line: 70, size: 256, elements: !712)
!711 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!712 = !{!713, !4194, !4195, !4196}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !710, file: !711, line: 71, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !716, line: 82, size: 1536, elements: !717)
!716 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!717 = !{!718, !719, !729, !737, !738, !753, !4162, !4164, !4177, !4178, !4179, !4180, !4181, !4186, !4187, !4188}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !715, file: !716, line: 84, baseType: !7, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !715, file: !716, line: 85, baseType: !720, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !721, line: 275, baseType: !722)
!721 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !721, line: 275, size: 32, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !722, file: !721, line: 275, baseType: !725, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !721, line: 69, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !721, line: 64, size: 32, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !726, file: !721, line: 65, baseType: !7, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !715, file: !716, line: 86, baseType: !730, size: 128, offset: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !731, line: 38, size: 128, elements: !732)
!731 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!732 = !{!733, !735}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !730, file: !731, line: 39, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !730, file: !731, line: 39, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !715, file: !716, line: 87, baseType: !714, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !715, file: !716, line: 88, baseType: !739, size: 128, offset: 256)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !716, line: 49, size: 128, elements: !740)
!740 = !{!741, !750}
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !716, line: 50, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !739, file: !716, line: 50, size: 64, elements: !743)
!743 = !{!744, !749}
!744 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !716, line: 51, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !716, line: 51, size: 64, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !745, file: !716, line: 52, baseType: !555, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !745, file: !716, line: 52, baseType: !555, size: 32, offset: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !742, file: !716, line: 54, baseType: !498, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !739, file: !716, line: 56, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !715, file: !716, line: 89, baseType: !754, size: 64, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !64, line: 641, size: 4800, elements: !756)
!756 = !{!757, !759, !760, !761, !762, !763, !764, !767, !768, !963, !3978, !3979, !3980, !3981, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4144, !4147, !4148, !4149, !4158, !4159, !4160, !4161}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !755, file: !64, line: 642, baseType: !758, size: 16)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !240, line: 24, baseType: !220)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !755, file: !64, line: 643, baseType: !220, size: 16, offset: 16)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !755, file: !64, line: 644, baseType: !461, size: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !755, file: !64, line: 645, baseType: !294, size: 128, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !755, file: !64, line: 646, baseType: !479, size: 32, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !755, file: !64, line: 647, baseType: !7, size: 32, offset: 224)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !755, file: !64, line: 650, baseType: !765, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !64, line: 607, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !755, file: !64, line: 651, baseType: !765, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !755, file: !64, line: 654, baseType: !769, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !64, line: 1966, size: 2048, align: 512, elements: !772)
!772 = !{!773, !777, !790, !796, !800, !804, !808, !812, !816, !820, !824, !825, !831, !835, !874, !905, !912, !918, !922, !926, !930, !934, !938, !944, !948}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !771, file: !64, line: 1967, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!714, !754, !714, !7}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !771, file: !64, line: 1968, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!594, !714, !754, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !783, line: 10, size: 128, elements: !784)
!783 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!784 = !{!785, !789}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !782, file: !783, line: 11, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !103}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !782, file: !783, line: 12, baseType: !103, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !771, file: !64, line: 1969, baseType: !791, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!158, !794, !754, !158}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !494, line: 42, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !771, file: !64, line: 1970, baseType: !797, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!765, !754, !158, !591}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !771, file: !64, line: 1972, baseType: !801, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!158, !714, !301, !158}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !771, file: !64, line: 1974, baseType: !805, size: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!158, !794, !754, !714, !758, !591}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !771, file: !64, line: 1976, baseType: !809, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!158, !714, !754, !714}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !771, file: !64, line: 1977, baseType: !813, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!158, !754, !714}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !771, file: !64, line: 1978, baseType: !817, size: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!158, !794, !754, !714, !594}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !771, file: !64, line: 1980, baseType: !821, size: 64, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!158, !794, !754, !714, !758}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !771, file: !64, line: 1982, baseType: !813, size: 64, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !771, file: !64, line: 1983, baseType: !826, size: 64, offset: 704)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!158, !794, !754, !714, !758, !829}
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !240, line: 21, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !240, line: 18, baseType: !555)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !771, file: !64, line: 1985, baseType: !832, size: 64, offset: 768)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!158, !794, !754, !714, !754, !714, !7}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !771, file: !64, line: 1987, baseType: !836, size: 64, offset: 832)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!158, !794, !714, !839}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !64, line: 226, size: 640, elements: !841)
!841 = !{!842, !843, !844, !854, !863, !864, !870, !871, !872}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !840, file: !64, line: 227, baseType: !7, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !840, file: !64, line: 228, baseType: !758, size: 16, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !64, line: 241, baseType: !845, size: 32, offset: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !840, file: !64, line: 241, size: 32, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !845, file: !64, line: 242, baseType: !461, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !845, file: !64, line: 243, baseType: !849, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !850, line: 16, baseType: !851)
!850 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !850, line: 14, size: 32, elements: !852)
!852 = !{!853}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !851, file: !850, line: 15, baseType: !466, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !64, line: 245, baseType: !855, size: 32, offset: 96)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !840, file: !64, line: 245, size: 32, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !855, file: !64, line: 246, baseType: !479, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !855, file: !64, line: 247, baseType: !859, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !850, line: 20, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !850, line: 18, size: 32, elements: !861)
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !860, file: !850, line: 19, baseType: !483, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !840, file: !64, line: 249, baseType: !318, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !840, file: !64, line: 250, baseType: !865, size: 128, offset: 192)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !547, line: 13, size: 128, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !865, file: !547, line: 14, baseType: !546, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !865, file: !547, line: 15, baseType: !869, size: 64, offset: 64)
!869 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !840, file: !64, line: 251, baseType: !865, size: 128, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !840, file: !64, line: 252, baseType: !865, size: 128, offset: 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !840, file: !64, line: 259, baseType: !873, size: 64, offset: 576)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !771, file: !64, line: 1988, baseType: !875, size: 64, offset: 896)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!158, !794, !878, !880, !555, !7}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !882, line: 22, size: 1280, elements: !883)
!882 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!883 = !{!884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !881, file: !882, line: 23, baseType: !555, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !881, file: !882, line: 24, baseType: !758, size: 16, offset: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !881, file: !882, line: 25, baseType: !7, size: 32, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !881, file: !882, line: 26, baseType: !554, size: 32, offset: 96)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !881, file: !882, line: 27, baseType: !498, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !881, file: !882, line: 28, baseType: !498, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !881, file: !882, line: 41, baseType: !498, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !881, file: !882, line: 42, baseType: !829, size: 32, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !881, file: !882, line: 43, baseType: !829, size: 32, offset: 352)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !881, file: !882, line: 44, baseType: !461, size: 32, offset: 384)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !881, file: !882, line: 45, baseType: !479, size: 32, offset: 416)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !881, file: !882, line: 46, baseType: !318, size: 64, offset: 448)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !881, file: !882, line: 47, baseType: !865, size: 128, offset: 512)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !881, file: !882, line: 48, baseType: !865, size: 128, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !881, file: !882, line: 49, baseType: !865, size: 128, offset: 768)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !881, file: !882, line: 50, baseType: !865, size: 128, offset: 896)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !881, file: !882, line: 51, baseType: !498, size: 64, offset: 1024)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !881, file: !882, line: 52, baseType: !498, size: 64, offset: 1088)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !881, file: !882, line: 53, baseType: !555, size: 32, offset: 1152)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !881, file: !882, line: 54, baseType: !555, size: 32, offset: 1184)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !881, file: !882, line: 55, baseType: !498, size: 64, offset: 1216)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !771, file: !64, line: 1990, baseType: !906, size: 64, offset: 960)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!909, !714, !301, !309}
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !240, line: 66, baseType: !910)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !311, line: 73, baseType: !911)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !311, line: 15, baseType: !869)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !771, file: !64, line: 1991, baseType: !913, size: 64, offset: 1024)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!158, !754, !916, !498, !498}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !64, line: 55, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !771, file: !64, line: 1993, baseType: !919, size: 64, offset: 1088)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!158, !754, !158}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !771, file: !64, line: 1994, baseType: !923, size: 64, offset: 1152)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!158, !754, !714, !873, !7, !758}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !771, file: !64, line: 1997, baseType: !927, size: 64, offset: 1216)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!158, !794, !754, !873, !758}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !771, file: !64, line: 1999, baseType: !931, size: 64, offset: 1280)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!765, !794, !714, !158}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !771, file: !64, line: 2001, baseType: !935, size: 64, offset: 1344)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!158, !794, !714, !765, !158}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !771, file: !64, line: 2003, baseType: !939, size: 64, offset: 1408)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!158, !794, !714, !942}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !64, line: 76, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !771, file: !64, line: 2005, baseType: !945, size: 64, offset: 1472)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!158, !714, !942}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !771, file: !64, line: 2006, baseType: !949, size: 64, offset: 1536)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!952, !754}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !64, line: 3192, size: 192, elements: !954)
!954 = !{!955, !962}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !953, file: !64, line: 3193, baseType: !956, size: 128)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !957, line: 296, size: 128, elements: !958)
!957 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !956, file: !957, line: 297, baseType: !257, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !956, file: !957, line: 299, baseType: !302, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !956, file: !957, line: 300, baseType: !103, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !953, file: !64, line: 3194, baseType: !555, size: 32, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !755, file: !64, line: 655, baseType: !964, size: 64, offset: 448)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !64, line: 1190, size: 10752, elements: !966)
!966 = !{!967, !968, !969, !970, !971, !972, !2316, !2448, !2488, !2571, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2588, !2592, !2593, !2596, !2599, !2602, !2605, !2606, !2607, !2648, !3853, !3854, !3855, !3856, !3857, !3858, !3861, !3863, !3870, !3871, !3872, !3873, !3932, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !965, file: !64, line: 1191, baseType: !294, size: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !965, file: !64, line: 1192, baseType: !829, size: 32, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !965, file: !64, line: 1193, baseType: !117, size: 8, offset: 160)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !965, file: !64, line: 1194, baseType: !313, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !965, file: !64, line: 1195, baseType: !318, size: 64, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !965, file: !64, line: 1196, baseType: !973, size: 64, offset: 320)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !64, line: 2366, size: 576, elements: !975)
!975 = !{!976, !977, !978, !984, !988, !992, !996, !2304, !2305, !2306, !2308, !2309, !2310, !2312, !2313, !2314, !2315}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !974, file: !64, line: 2367, baseType: !594, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !974, file: !64, line: 2368, baseType: !158, size: 32, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !974, file: !64, line: 2376, baseType: !979, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!158, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !711, line: 21, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !974, file: !64, line: 2377, baseType: !985, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !64, line: 75, flags: DIFlagFwdDecl)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !974, file: !64, line: 2378, baseType: !989, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!714, !973, !158, !594, !103}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !974, file: !64, line: 2380, baseType: !993, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !964}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !974, file: !64, line: 2381, baseType: !997, size: 64, offset: 384)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !999)
!999 = !{!1000, !1001, !1002, !1006, !1962, !1988, !1989, !1990, !1991, !1995, !1998, !1999, !2000, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2068, !2072, !2090, !2108, !2109, !2110, !2111, !2120, !2143, !2144, !2147, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2161, !2162, !2262, !2270, !2271, !2272, !2274, !2278, !2279, !2283, !2284, !2285, !2286, !2288, !2289, !2290, !2297, !2298, !2299, !2303}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !998, file: !20, line: 403, baseType: !19, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !998, file: !20, line: 406, baseType: !294, size: 128, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !998, file: !20, line: 409, baseType: !1003, size: 448, offset: 192)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 448, elements: !1004)
!1004 = !{!1005}
!1005 = !DISubrange(count: 56)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !998, file: !20, line: 417, baseType: !1007, size: 768, offset: 640)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !1008)
!1008 = !{!1009, !1955, !1956, !1957, !1960}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1007, file: !20, line: 46, baseType: !1010, size: 512)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1011, line: 64, size: 512, elements: !1012)
!1011 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1012 = !{!1013, !1014, !1015, !1017, !1061, !1840, !1945, !1950, !1951, !1952, !1953, !1954}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1010, file: !1011, line: 65, baseType: !594, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1010, file: !1011, line: 66, baseType: !294, size: 128, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1010, file: !1011, line: 67, baseType: !1016, size: 64, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1010, file: !1011, line: 68, baseType: !1018, size: 64, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1011, line: 168, size: 768, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1019, file: !1011, line: 169, baseType: !294, size: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1019, file: !1011, line: 170, baseType: !257, size: 32, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1019, file: !1011, line: 171, baseType: !1010, size: 512, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1019, file: !1011, line: 172, baseType: !1025, size: 64, offset: 704)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1011, line: 133, size: 192, elements: !1028)
!1028 = !{!1029, !1036, !1041}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1027, file: !1011, line: 134, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1031)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!158, !1034}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1027, file: !1011, line: 135, baseType: !1037, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!594, !1034}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1027, file: !1011, line: 136, baseType: !1042, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!158, !1034, !1046}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1011, line: 125, size: 20736, elements: !1048)
!1048 = !{!1049, !1051, !1055, !1056, !1060}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1047, file: !1011, line: 126, baseType: !1050, size: 192)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 192, elements: !171)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1047, file: !1011, line: 127, baseType: !1052, size: 4096, offset: 192)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 4096, elements: !1053)
!1053 = !{!1054}
!1054 = !DISubrange(count: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1047, file: !1011, line: 128, baseType: !158, size: 32, offset: 4288)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1047, file: !1011, line: 129, baseType: !1057, size: 16384, offset: 4320)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 16384, elements: !1058)
!1058 = !{!1059}
!1059 = !DISubrange(count: 2048)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1047, file: !1011, line: 130, baseType: !158, size: 32, offset: 20704)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1010, file: !1011, line: 69, baseType: !1062, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1011, line: 116, size: 384, elements: !1065)
!1065 = !{!1066, !1070, !1089, !1802, !1830, !1834}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1064, file: !1011, line: 117, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !1016}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1064, file: !1011, line: 118, baseType: !1071, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1074, line: 254, size: 128, elements: !1075)
!1074 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1075 = !{!1076, !1085}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1073, file: !1074, line: 255, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!909, !1016, !1080, !301}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1074, line: 30, size: 128, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1081, file: !1074, line: 31, baseType: !594, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1081, file: !1074, line: 32, baseType: !758, size: 16, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1073, file: !1074, line: 256, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!909, !1016, !1080, !594, !309}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1064, file: !1011, line: 119, baseType: !1090, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1074, line: 84, size: 320, elements: !1094)
!1094 = !{!1095, !1096, !1100, !1798, !1800}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1093, file: !1074, line: 85, baseType: !594, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1093, file: !1074, line: 86, baseType: !1097, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!758, !1016, !1080, !158}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1093, file: !1074, line: 88, baseType: !1101, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!758, !1016, !1104, !158}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1074, line: 175, size: 512, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1789, !1793, !1794}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1105, file: !1074, line: 176, baseType: !1081, size: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1105, file: !1074, line: 177, baseType: !309, size: 64, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1105, file: !1074, line: 178, baseType: !103, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1105, file: !1074, line: 179, baseType: !1111, size: 64, offset: 256)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !64, line: 472, size: 1536, align: 64, elements: !1116)
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122, !1130, !1131, !1132, !1781, !1782, !1783, !1786, !1787, !1788}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1115, file: !64, line: 473, baseType: !754, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1115, file: !64, line: 474, baseType: !956, size: 128, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1115, file: !64, line: 475, baseType: !530, size: 320, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1115, file: !64, line: 476, baseType: !302, size: 32, offset: 512)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1115, file: !64, line: 477, baseType: !239, size: 32, offset: 544)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1115, file: !64, line: 482, baseType: !1123, size: 128, offset: 576)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !523, line: 26, size: 128, elements: !1124)
!1124 = !{!1125, !1129}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1123, file: !523, line: 27, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !523, line: 12, size: 64, elements: !1127)
!1127 = !{!1128}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1126, file: !523, line: 13, baseType: !527, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1123, file: !523, line: 28, baseType: !527, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1115, file: !64, line: 483, baseType: !313, size: 64, offset: 704)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1115, file: !64, line: 484, baseType: !313, size: 64, offset: 768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1115, file: !64, line: 485, baseType: !1133, size: 64, offset: 832)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1135)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !64, line: 404, size: 1280, elements: !1136)
!1136 = !{!1137, !1606, !1676, !1680, !1684, !1690, !1696, !1700, !1705, !1709, !1713, !1717, !1745, !1749, !1753, !1757, !1762, !1766, !1773, !1777}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1135, file: !64, line: 405, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!158, !1141, !1604}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !1143)
!1143 = !{!1144, !1145, !1598, !1603}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1142, file: !35, line: 75, baseType: !313, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, scope: !1142, file: !35, line: 83, baseType: !1146, size: 320, offset: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1142, file: !35, line: 83, size: 320, elements: !1147)
!1147 = !{!1148, !1169, !1183, !1187, !1597}
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !35, line: 84, baseType: !1149, size: 320)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !35, line: 84, size: 320, elements: !1150)
!1150 = !{!1151, !1162, !1163, !1168}
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1149, file: !35, line: 90, baseType: !1152, size: 128)
!1152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1149, file: !35, line: 90, size: 128, elements: !1153)
!1153 = !{!1154, !1155, !1160, !1161}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1152, file: !35, line: 91, baseType: !294, size: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !35, line: 94, baseType: !1156, size: 128)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1152, file: !35, line: 94, size: 128, elements: !1157)
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1156, file: !35, line: 96, baseType: !103, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1156, file: !35, line: 98, baseType: !7, size: 32, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1152, file: !35, line: 102, baseType: !294, size: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1152, file: !35, line: 103, baseType: !294, size: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1149, file: !35, line: 106, baseType: !1114, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1149, file: !35, line: 107, baseType: !1164, size: 64, offset: 192)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1149, file: !35, line: 107, size: 64, elements: !1165)
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1164, file: !35, line: 108, baseType: !313, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1164, file: !35, line: 109, baseType: !313, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1149, file: !35, line: 117, baseType: !313, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !35, line: 119, baseType: !1170, size: 320)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !35, line: 119, size: 320, elements: !1171)
!1171 = !{!1172, !1173, !1176, !1177, !1178}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1170, file: !35, line: 124, baseType: !313, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1170, file: !35, line: 125, baseType: !1174, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1170, file: !35, line: 126, baseType: !313, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1170, file: !35, line: 127, baseType: !313, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !35, line: 128, baseType: !1179, size: 64, offset: 256)
!1179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1170, file: !35, line: 128, size: 64, elements: !1180)
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1179, file: !35, line: 133, baseType: !313, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1179, file: !35, line: 138, baseType: !327, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !35, line: 141, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !35, line: 141, size: 64, elements: !1185)
!1185 = !{!1186}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1184, file: !35, line: 142, baseType: !313, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !35, line: 144, baseType: !1188, size: 128)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !35, line: 144, size: 128, elements: !1189)
!1189 = !{!1190, !1596}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1188, file: !35, line: 146, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !1193)
!1193 = !{!1194, !1204, !1225, !1236, !1237, !1238, !1239, !1578, !1579, !1580}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1192, file: !27, line: 127, baseType: !1195, size: 384)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !1196)
!1196 = !{!1197, !1198, !1200, !1201, !1202, !1203}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1195, file: !27, line: 22, baseType: !313, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1195, file: !27, line: 23, baseType: !1199, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1195, file: !27, line: 24, baseType: !1199, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1195, file: !27, line: 25, baseType: !313, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1195, file: !27, line: 26, baseType: !313, size: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1195, file: !27, line: 27, baseType: !313, size: 64, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1192, file: !27, line: 128, baseType: !1205, size: 128, offset: 384)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1206, line: 105, size: 128, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1205, file: !1206, line: 110, baseType: !313, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1205, file: !1206, line: 118, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1206, line: 95, size: 448, elements: !1212)
!1212 = !{!1213, !1214, !1220, !1221, !1222, !1223, !1224}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1211, file: !1206, line: 96, baseType: !327, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1211, file: !1206, line: 97, baseType: !1215, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1206, line: 60, baseType: !1217)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !1219}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1211, file: !1206, line: 98, baseType: !1215, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1211, file: !1206, line: 99, baseType: !591, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1211, file: !1206, line: 100, baseType: !591, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1211, file: !1206, line: 101, baseType: !381, size: 128, align: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1211, file: !1206, line: 102, baseType: !1219, size: 64, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1192, file: !27, line: 129, baseType: !1226, size: 256, offset: 512)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1227, line: 26, size: 256, elements: !1228)
!1227 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1226, file: !1227, line: 27, baseType: !7, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1226, file: !1227, line: 28, baseType: !1231, size: 192, offset: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1232, line: 43, size: 192, elements: !1233)
!1232 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1231, file: !1232, line: 44, baseType: !336, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1231, file: !1232, line: 45, baseType: !294, size: 128, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1192, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1192, file: !27, line: 131, baseType: !7, size: 32, offset: 800)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1192, file: !27, line: 132, baseType: !313, size: 64, offset: 832)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1192, file: !27, line: 133, baseType: !1240, size: 64, offset: 896)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1242)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !1243)
!1243 = !{!1244, !1248, !1574}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1242, file: !27, line: 83, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{null, !1141}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1242, file: !27, line: 89, baseType: !1249, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !7)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1255, line: 512, size: 896, elements: !1256)
!1255 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1256 = !{!1257, !1541, !1542, !1549, !1556, !1566, !1567, !1568, !1570, !1572}
!1257 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !1255, line: 513, baseType: !1258, size: 320)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1254, file: !1255, line: 513, size: 320, elements: !1259)
!1259 = !{!1260, !1537, !1538, !1539, !1540}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1258, file: !1255, line: 514, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1263)
!1263 = !{!1264, !1273, !1442, !1448, !1455, !1456, !1461, !1462, !1467, !1468, !1471, !1530, !1531, !1532, !1533, !1534, !1535}
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1262, file: !35, line: 628, baseType: !1265, size: 128)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1262, file: !35, line: 628, size: 128, elements: !1266)
!1266 = !{!1267, !1272}
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !35, line: 629, baseType: !1268, size: 128)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1265, file: !35, line: 629, size: 128, elements: !1269)
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1268, file: !35, line: 631, baseType: !313, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1268, file: !35, line: 632, baseType: !313, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1265, file: !35, line: 635, baseType: !381, size: 128, align: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1262, file: !35, line: 639, baseType: !1274, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !1276)
!1276 = !{!1277, !1440}
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1275, file: !35, line: 734, baseType: !1278, size: 10240)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1275, file: !35, line: 734, size: 10240, elements: !1279)
!1279 = !{!1280, !1284, !1298, !1302, !1303, !1304, !1305, !1306, !1307, !1316, !1317, !1318, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1357, !1359, !1362, !1409, !1410, !1411, !1414, !1415, !1416, !1419, !1420, !1421, !1427, !1428}
!1280 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !35, line: 739, baseType: !1281, size: 512, align: 512)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1278, file: !35, line: 739, size: 512, align: 512, elements: !1282)
!1282 = !{!1283}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1281, file: !35, line: 747, baseType: !239, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1278, file: !35, line: 750, baseType: !1285, size: 128, offset: 512)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1286, line: 218, size: 128, elements: !1287)
!1286 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1287 = !{!1288, !1296, !1297}
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1286, line: 219, baseType: !1289, size: 32)
!1289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !1286, line: 219, size: 32, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1289, file: !1286, line: 220, baseType: !257, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1289, file: !1286, line: 221, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1286, line: 197, baseType: !1294)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1286, line: 197, elements: !1295)
!1295 = !{}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1285, file: !1286, line: 223, baseType: !7, size: 32, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1285, file: !1286, line: 224, baseType: !103, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1278, file: !35, line: 752, baseType: !1299, size: 64, offset: 640)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!313, !873, !313, !313, !313, !313}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1278, file: !35, line: 756, baseType: !313, size: 64, offset: 704)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1278, file: !35, line: 757, baseType: !313, size: 64, offset: 768)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1278, file: !35, line: 760, baseType: !313, size: 64, offset: 832)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1278, file: !35, line: 761, baseType: !313, size: 64, offset: 896)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1278, file: !35, line: 763, baseType: !313, size: 64, offset: 960)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1278, file: !35, line: 764, baseType: !1308, size: 64, offset: 1024)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1310, line: 299, baseType: !1311)
!1310 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1310, line: 299, size: 64, elements: !1312)
!1312 = !{!1313}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1311, file: !1310, line: 299, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1315, line: 18, baseType: !313)
!1315 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1278, file: !35, line: 773, baseType: !239, size: 32, offset: 1088)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1278, file: !35, line: 785, baseType: !239, size: 32, offset: 1120)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1278, file: !35, line: 795, baseType: !1319, size: 64, offset: 1152)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1320, file: !35, line: 727, baseType: !498, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1320, file: !35, line: 728, baseType: !158, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1278, file: !35, line: 801, baseType: !313, size: 64, offset: 1216)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1278, file: !35, line: 804, baseType: !327, size: 64, offset: 1280)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1278, file: !35, line: 806, baseType: !158, size: 32, offset: 1344)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1278, file: !35, line: 808, baseType: !257, size: 32, offset: 1376)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1278, file: !35, line: 823, baseType: !530, size: 320, offset: 1408)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1278, file: !35, line: 825, baseType: !294, size: 128, offset: 1728)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1278, file: !35, line: 845, baseType: !158, size: 32, offset: 1856)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1278, file: !35, line: 849, baseType: !313, size: 64, offset: 1920)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1278, file: !35, line: 850, baseType: !313, size: 64, offset: 1984)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1278, file: !35, line: 852, baseType: !313, size: 64, offset: 2048)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1278, file: !35, line: 853, baseType: !313, size: 64, offset: 2112)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1278, file: !35, line: 854, baseType: !329, size: 64, offset: 2176)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1278, file: !35, line: 855, baseType: !313, size: 64, offset: 2240)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1278, file: !35, line: 856, baseType: !313, size: 64, offset: 2304)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1278, file: !35, line: 857, baseType: !313, size: 64, offset: 2368)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1278, file: !35, line: 858, baseType: !313, size: 64, offset: 2432)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1278, file: !35, line: 865, baseType: !725, size: 32, offset: 2496)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1278, file: !35, line: 867, baseType: !257, size: 32, offset: 2528)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1278, file: !35, line: 869, baseType: !313, size: 64, offset: 2560)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1278, file: !35, line: 869, baseType: !313, size: 64, offset: 2624)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1278, file: !35, line: 869, baseType: !313, size: 64, offset: 2688)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1278, file: !35, line: 869, baseType: !313, size: 64, offset: 2752)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1278, file: !35, line: 870, baseType: !313, size: 64, offset: 2816)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1278, file: !35, line: 870, baseType: !313, size: 64, offset: 2880)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1278, file: !35, line: 870, baseType: !313, size: 64, offset: 2944)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1278, file: !35, line: 871, baseType: !313, size: 64, offset: 3008)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1278, file: !35, line: 871, baseType: !313, size: 64, offset: 3072)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1278, file: !35, line: 871, baseType: !313, size: 64, offset: 3136)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1278, file: !35, line: 871, baseType: !313, size: 64, offset: 3200)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1278, file: !35, line: 873, baseType: !1354, size: 3328, offset: 3264)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 3328, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 52)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1278, file: !35, line: 875, baseType: !1358, size: 1280, offset: 6592)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 1280, elements: !444)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1278, file: !35, line: 877, baseType: !1360, size: 64, offset: 7872)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !35, line: 877, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1278, file: !35, line: 880, baseType: !1363, size: 1088, offset: 7936)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1364, line: 72, baseType: !1365)
!1364 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1364, line: 23, size: 1088, elements: !1366)
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1374, !1375, !1376, !1377, !1404, !1405, !1406}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1365, file: !1364, line: 28, baseType: !498, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1365, file: !1364, line: 38, baseType: !329, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1365, file: !1364, line: 40, baseType: !313, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1365, file: !1364, line: 43, baseType: !530, size: 320, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1365, file: !1364, line: 44, baseType: !1372, size: 64, offset: 512)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1364, line: 44, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1365, file: !1364, line: 48, baseType: !313, size: 64, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1365, file: !1364, line: 59, baseType: !323, size: 256, offset: 640)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1365, file: !1364, line: 60, baseType: !103, size: 64, offset: 896)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1365, file: !1364, line: 61, baseType: !1378, size: 64, offset: 960)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1381, line: 13, size: 1216, elements: !1382)
!1381 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1380, file: !1381, line: 14, baseType: !103, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1380, file: !1381, line: 15, baseType: !313, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1380, file: !1381, line: 17, baseType: !313, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1380, file: !1381, line: 17, baseType: !313, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1380, file: !1381, line: 18, baseType: !313, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1380, file: !1381, line: 18, baseType: !313, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1380, file: !1381, line: 19, baseType: !1390, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1380, file: !1381, line: 21, baseType: !869, size: 64, offset: 448)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1380, file: !1381, line: 23, baseType: !869, size: 64, offset: 512)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1380, file: !1381, line: 24, baseType: !869, size: 64, offset: 576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1380, file: !1381, line: 25, baseType: !869, size: 64, offset: 640)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1380, file: !1381, line: 26, baseType: !869, size: 64, offset: 704)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1380, file: !1381, line: 27, baseType: !869, size: 64, offset: 768)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1380, file: !1381, line: 28, baseType: !869, size: 64, offset: 832)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1380, file: !1381, line: 29, baseType: !869, size: 64, offset: 896)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1380, file: !1381, line: 30, baseType: !869, size: 64, offset: 960)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1380, file: !1381, line: 31, baseType: !869, size: 64, offset: 1024)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1380, file: !1381, line: 32, baseType: !869, size: 64, offset: 1088)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1380, file: !1381, line: 33, baseType: !869, size: 64, offset: 1152)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1365, file: !1364, line: 63, baseType: !239, size: 32, offset: 1024)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1365, file: !1364, line: 69, baseType: !290, size: 16, offset: 1056)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1365, file: !1364, line: 70, baseType: !1407, size: 16, offset: 1072)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !282, line: 18, baseType: !1408)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !284, line: 23, baseType: !560)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1278, file: !35, line: 882, baseType: !313, size: 64, offset: 9024)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1278, file: !35, line: 885, baseType: !257, size: 32, offset: 9088)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1278, file: !35, line: 886, baseType: !1412, size: 64, offset: 9152)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1278, file: !35, line: 901, baseType: !676, size: 64, offset: 9216)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1278, file: !35, line: 904, baseType: !873, size: 64, offset: 9280)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1278, file: !35, line: 906, baseType: !1417, size: 64, offset: 9344)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1278, file: !35, line: 930, baseType: !239, size: 32, offset: 9408)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1278, file: !35, line: 933, baseType: !239, size: 32, offset: 9440)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1278, file: !35, line: 935, baseType: !1422, size: 64, offset: 9472)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !86, line: 103, size: 64, elements: !1423)
!1423 = !{!1424}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1422, file: !86, line: 104, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !86, line: 101, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1278, file: !35, line: 940, baseType: !327, size: 64, offset: 9536)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1278, file: !35, line: 942, baseType: !1429, size: 256, offset: 9600)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1430, line: 98, size: 256, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1431 = !{!1432, !1433, !1434}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1429, file: !1430, line: 99, baseType: !327, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1429, file: !1430, line: 100, baseType: !294, size: 128, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1429, file: !1430, line: 101, baseType: !1435, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1430, line: 21, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !1439}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1275, file: !35, line: 986, baseType: !1441, offset: 10240)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, elements: !457)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1262, file: !35, line: 640, baseType: !1443, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1310, line: 297, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1310, line: 297, size: 64, elements: !1445)
!1445 = !{!1446}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1444, file: !1310, line: 297, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1315, line: 19, baseType: !313)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1262, file: !35, line: 646, baseType: !1449, size: 64, offset: 256)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1262, file: !35, line: 646, size: 64, elements: !1450)
!1450 = !{!1451, !1454}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1449, file: !35, line: 647, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !313)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1449, file: !35, line: 648, baseType: !1453, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1262, file: !35, line: 666, baseType: !158, size: 32, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1262, file: !35, line: 667, baseType: !1457, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !1459)
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1458, file: !35, line: 580, baseType: !530, size: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1262, file: !35, line: 670, baseType: !591, size: 8, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1262, file: !35, line: 681, baseType: !1463, size: 256, offset: 512)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1262, file: !35, line: 678, size: 256, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1463, file: !35, line: 679, baseType: !522, size: 192, align: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1463, file: !35, line: 680, baseType: !313, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1262, file: !35, line: 689, baseType: !294, size: 128, offset: 768)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1262, file: !35, line: 691, baseType: !1469, size: 64, offset: 896)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1262, file: !35, line: 694, baseType: !1472, size: 64, offset: 960)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1255, line: 563, size: 1024, elements: !1475)
!1475 = !{!1476, !1480, !1481, !1485, !1489, !1493, !1494, !1498, !1502, !1506, !1507, !1508, !1512, !1516, !1522, !1526}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1474, file: !1255, line: 564, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !1261}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1474, file: !1255, line: 569, baseType: !1477, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1474, file: !1255, line: 571, baseType: !1482, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!158, !1261, !313}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1474, file: !1255, line: 572, baseType: !1486, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!158, !1261}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1474, file: !1255, line: 578, baseType: !1490, size: 64, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!158, !1261, !313, !313, !313}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1474, file: !1255, line: 580, baseType: !1249, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1474, file: !1255, line: 581, baseType: !1495, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!1252, !1253, !7}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1474, file: !1255, line: 582, baseType: !1499, size: 64, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!1252, !1253, !313, !313}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1474, file: !1255, line: 584, baseType: !1503, size: 64, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!313, !1261}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1474, file: !1255, line: 588, baseType: !1249, size: 64, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1474, file: !1255, line: 591, baseType: !1249, size: 64, offset: 640)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1474, file: !1255, line: 597, baseType: !1509, size: 64, offset: 704)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!158, !1261, !313, !103, !158, !158}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1474, file: !1255, line: 603, baseType: !1513, size: 64, offset: 768)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!594, !1261}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1474, file: !1255, line: 613, baseType: !1517, size: 64, offset: 832)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!158, !1261, !1520}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !35, line: 717, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1474, file: !1255, line: 625, baseType: !1523, size: 64, offset: 896)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1520, !1261, !313}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1474, file: !1255, line: 633, baseType: !1527, size: 64, offset: 960)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!1141, !1261, !313}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1262, file: !35, line: 697, baseType: !313, size: 64, offset: 1024)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1262, file: !35, line: 699, baseType: !873, size: 64, offset: 1088)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1262, file: !35, line: 700, baseType: !103, size: 64, offset: 1152)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1262, file: !35, line: 711, baseType: !327, size: 64, offset: 1216)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1262, file: !35, line: 717, baseType: !1520, size: 64, offset: 1280)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1262, file: !35, line: 722, baseType: !1536, offset: 1344)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !1295)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1258, file: !1255, line: 515, baseType: !302, size: 32, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1258, file: !1255, line: 516, baseType: !313, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1258, file: !1255, line: 517, baseType: !313, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1258, file: !1255, line: 518, baseType: !313, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1254, file: !1255, line: 520, baseType: !34, size: 32, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1254, file: !1255, line: 522, baseType: !1543, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1315, line: 22, baseType: !1545)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1315, line: 22, size: 64, elements: !1546)
!1546 = !{!1547}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1545, file: !1315, line: 22, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1315, line: 15, baseType: !313)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1254, file: !1255, line: 524, baseType: !1550, size: 64, offset: 448)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1310, line: 372, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1310, line: 372, size: 64, elements: !1553)
!1553 = !{!1554}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1552, file: !1310, line: 372, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1315, line: 16, baseType: !313)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !1255, line: 527, baseType: !1557, size: 64, offset: 512)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1254, file: !1255, line: 527, size: 64, elements: !1558)
!1558 = !{!1559, !1565}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1557, file: !1255, line: 528, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1315, line: 21, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1315, line: 21, size: 64, elements: !1562)
!1562 = !{!1563}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1561, file: !1315, line: 21, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1315, line: 14, baseType: !313)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1557, file: !1255, line: 529, baseType: !1544, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1254, file: !1255, line: 534, baseType: !1141, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1254, file: !1255, line: 535, baseType: !1141, size: 64, offset: 640)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1254, file: !1255, line: 541, baseType: !1569, size: 64, offset: 704)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1254, file: !1255, line: 545, baseType: !1571, size: 64, offset: 768)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1254, file: !1255, line: 549, baseType: !1573, size: 64, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1310, line: 520, baseType: !1141)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1242, file: !27, line: 100, baseType: !1575, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!158, !1191, !313, !313, !158}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1192, file: !27, line: 134, baseType: !103, size: 64, offset: 960)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1192, file: !27, line: 135, baseType: !158, size: 32, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !27, line: 136, baseType: !1581, size: 128, offset: 1088)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !27, line: 136, size: 128, elements: !1582)
!1582 = !{!1583, !1589}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1581, file: !27, line: 137, baseType: !1584, size: 128)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1585, line: 6, size: 128, elements: !1586)
!1585 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1584, file: !1585, line: 7, baseType: !498, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1584, file: !1585, line: 8, baseType: !498, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !27, line: 138, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1581, file: !27, line: 138, elements: !1591)
!1591 = !{!1592, !1594}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1590, file: !27, line: 138, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1590, file: !27, line: 138, elements: !1295)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1590, file: !27, line: 138, baseType: !1595)
!1595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1584, elements: !457)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1188, file: !35, line: 147, baseType: !103, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1146, file: !35, line: 161, baseType: !381, size: 128, align: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, scope: !1142, file: !35, line: 164, baseType: !1599, size: 32, offset: 384)
!1599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1142, file: !35, line: 164, size: 32, elements: !1600)
!1600 = !{!1601, !1602}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1599, file: !35, line: 169, baseType: !239, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1599, file: !35, line: 177, baseType: !7, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1142, file: !35, line: 181, baseType: !239, size: 32, offset: 416)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !64, line: 309, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1135, file: !64, line: 406, baseType: !1607, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!158, !873, !1610}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !1612)
!1612 = !{!1613, !1643, !1657}
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !35, line: 295, baseType: !1614, size: 512)
!1614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1611, file: !35, line: 295, size: 512, elements: !1615)
!1615 = !{!1616, !1642}
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1614, file: !35, line: 296, baseType: !1617, size: 448)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1614, file: !35, line: 296, size: 448, elements: !1618)
!1618 = !{!1619, !1620, !1629, !1630, !1631, !1640, !1641}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !35, line: 298, baseType: !313, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !35, line: 299, baseType: !1621, size: 128, offset: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !35, line: 299, size: 128, elements: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1621, file: !35, line: 300, baseType: !294, size: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !35, line: 302, baseType: !1625, size: 128)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !35, line: 302, size: 128, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1625, file: !35, line: 303, baseType: !103, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1625, file: !35, line: 305, baseType: !7, size: 32, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1617, file: !35, line: 310, baseType: !1114, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1617, file: !35, line: 311, baseType: !313, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !35, line: 312, baseType: !1632, size: 64, offset: 320)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !35, line: 312, size: 64, elements: !1633)
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1632, file: !35, line: 313, baseType: !103, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1632, file: !35, line: 314, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !1637)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !1638)
!1638 = !{!1639}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1637, file: !35, line: 256, baseType: !313, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1617, file: !35, line: 316, baseType: !239, size: 32, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1617, file: !35, line: 317, baseType: !239, size: 32, offset: 416)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1614, file: !35, line: 323, baseType: !1142, size: 512, align: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !35, line: 325, baseType: !1644, size: 512, offset: 512)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1611, file: !35, line: 325, size: 512, elements: !1645)
!1645 = !{!1646, !1656}
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !35, line: 326, baseType: !1647, size: 320)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1644, file: !35, line: 326, size: 320, elements: !1648)
!1648 = !{!1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1647, file: !35, line: 327, baseType: !313, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1647, file: !35, line: 328, baseType: !313, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1647, file: !35, line: 329, baseType: !313, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1647, file: !35, line: 331, baseType: !239, size: 32, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1647, file: !35, line: 332, baseType: !239, size: 32, offset: 224)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1647, file: !35, line: 333, baseType: !239, size: 32, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1647, file: !35, line: 335, baseType: !7, size: 32, offset: 288)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1644, file: !35, line: 339, baseType: !1142, size: 512, align: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !35, line: 341, baseType: !1658, size: 512, offset: 1024)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1611, file: !35, line: 341, size: 512, elements: !1659)
!1659 = !{!1660, !1669, !1675}
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !35, line: 342, baseType: !1661, size: 384)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !35, line: 342, size: 384, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1668}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1661, file: !35, line: 343, baseType: !313, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1661, file: !35, line: 344, baseType: !313, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1661, file: !35, line: 346, baseType: !103, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1661, file: !35, line: 347, baseType: !103, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1661, file: !35, line: 348, baseType: !103, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1661, file: !35, line: 349, baseType: !103, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !35, line: 352, baseType: !1670, size: 256)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !35, line: 352, size: 256, elements: !1671)
!1671 = !{!1672, !1673, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1670, file: !35, line: 353, baseType: !313, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1670, file: !35, line: 354, baseType: !313, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1670, file: !35, line: 356, baseType: !294, size: 128, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1658, file: !35, line: 359, baseType: !1142, size: 512, align: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1135, file: !64, line: 409, baseType: !1677, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!158, !1114, !1604}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1135, file: !64, line: 412, baseType: !1681, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!591, !1114, !1610}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1135, file: !64, line: 414, baseType: !1685, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !64, line: 310, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1135, file: !64, line: 416, baseType: !1691, size: 64, offset: 320)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!158, !873, !1114, !318, !7, !1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1135, file: !64, line: 419, baseType: !1697, size: 64, offset: 384)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!158, !873, !1114, !318, !7, !7, !1141, !103}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1135, file: !64, line: 424, baseType: !1701, size: 64, offset: 448)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1704, !1114, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !240, line: 131, baseType: !498)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1135, file: !64, line: 425, baseType: !1706, size: 64, offset: 512)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null, !1610, !309, !309}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1135, file: !64, line: 426, baseType: !1710, size: 64, offset: 576)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!591, !1610, !302}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1135, file: !64, line: 427, baseType: !1714, size: 64, offset: 640)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !1610}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1135, file: !64, line: 428, baseType: !1718, size: 64, offset: 704)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!909, !1721, !1743}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !64, line: 373, size: 384, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1730, !1731, !1732, !1733}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1722, file: !64, line: 374, baseType: !873, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1722, file: !64, line: 375, baseType: !318, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1722, file: !64, line: 376, baseType: !1727, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !1721, !869}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1722, file: !64, line: 377, baseType: !103, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1722, file: !64, line: 378, baseType: !158, size: 32, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1722, file: !64, line: 379, baseType: !290, size: 16, offset: 288)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1722, file: !64, line: 380, baseType: !1734, size: 64, offset: 320)
!1734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1722, file: !64, line: 380, size: 64, elements: !1735)
!1735 = !{!1736, !1739}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1734, file: !64, line: 386, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !64, line: 386, flags: DIFlagFwdDecl)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1734, file: !64, line: 395, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!909, !103}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !64, line: 69, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1135, file: !64, line: 433, baseType: !1746, size: 64, offset: 768)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!158, !1114, !1610, !1610, !50}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1135, file: !64, line: 435, baseType: !1750, size: 64, offset: 832)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!158, !1610}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1135, file: !64, line: 436, baseType: !1754, size: 64, offset: 896)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!591, !1610, !309, !309}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1135, file: !64, line: 438, baseType: !1758, size: 64, offset: 960)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !1610, !1761, !1761}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1135, file: !64, line: 439, baseType: !1763, size: 64, offset: 1024)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!158, !1114, !1141}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1135, file: !64, line: 442, baseType: !1767, size: 64, offset: 1088)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!158, !1770, !873, !1772}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !64, line: 66, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1135, file: !64, line: 444, baseType: !1774, size: 64, offset: 1152)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !873}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1135, file: !64, line: 445, baseType: !1778, size: 64, offset: 1216)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!158, !1721, !1743}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1115, file: !64, line: 486, baseType: !313, size: 64, offset: 896)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1115, file: !64, line: 487, baseType: !530, size: 320, offset: 960)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1115, file: !64, line: 488, baseType: !1784, size: 32, offset: 1280)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1785, line: 8, baseType: !555)
!1785 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1115, file: !64, line: 489, baseType: !257, size: 32, offset: 1312)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1115, file: !64, line: 490, baseType: !294, size: 128, offset: 1344)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1115, file: !64, line: 491, baseType: !103, size: 64, offset: 1472)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1105, file: !1074, line: 180, baseType: !1790, size: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!909, !873, !1016, !1104, !301, !318, !309}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1105, file: !1074, line: 182, baseType: !1790, size: 64, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1105, file: !1074, line: 184, baseType: !1795, size: 64, offset: 448)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!158, !873, !1016, !1104, !1261}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1093, file: !1074, line: 90, baseType: !1799, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1093, file: !1074, line: 91, baseType: !1801, size: 64, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1064, file: !1011, line: 120, baseType: !1803, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!1806, !1034}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !1809)
!1809 = !{!1810, !1811, !1815, !1819, !1825, !1829}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1808, file: !58, line: 40, baseType: !57, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1808, file: !58, line: 41, baseType: !1812, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!591}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1808, file: !58, line: 42, baseType: !1816, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!103}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1808, file: !58, line: 43, baseType: !1820, size: 64, offset: 192)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1390, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1808, file: !58, line: 44, baseType: !1826, size: 64, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!1390}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1808, file: !58, line: 45, baseType: !786, size: 64, offset: 320)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1064, file: !1011, line: 121, baseType: !1831, size: 64, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!1390, !1034}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1064, file: !1011, line: 122, baseType: !1835, size: 64, offset: 320)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1034, !1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1010, file: !1011, line: 70, baseType: !1841, size: 64, offset: 384)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1843, line: 190, size: 1152, elements: !1844)
!1843 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1844 = !{!1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1937, !1938, !1939, !1940, !1941, !1944}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1842, file: !1843, line: 191, baseType: !239, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1842, file: !1843, line: 192, baseType: !239, size: 32, offset: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1842, file: !1843, line: 202, baseType: !1841, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1842, file: !1843, line: 203, baseType: !594, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1842, file: !1843, line: 205, baseType: !522, size: 192, align: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1842, file: !1843, line: 207, baseType: !1390, size: 64, offset: 384)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1842, file: !1843, line: 208, baseType: !7, size: 32, offset: 448)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !1843, line: 209, baseType: !1853, size: 256, offset: 512)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1842, file: !1843, line: 209, size: 256, elements: !1854)
!1854 = !{!1855, !1864, !1868}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1853, file: !1843, line: 210, baseType: !1856, size: 256)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1843, line: 153, size: 256, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1863}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1856, file: !1843, line: 154, baseType: !313, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1856, file: !1843, line: 156, baseType: !1126, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1856, file: !1843, line: 162, baseType: !1861, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1843, line: 162, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1856, file: !1843, line: 167, baseType: !313, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1853, file: !1843, line: 211, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1843, line: 170, size: 64, elements: !1866)
!1866 = !{!1867}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1865, file: !1843, line: 171, baseType: !1841, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1853, file: !1843, line: 212, baseType: !1869, size: 256)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1843, line: 174, size: 256, elements: !1870)
!1870 = !{!1871, !1932, !1935, !1936}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1869, file: !1843, line: 175, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1874)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1843, line: 271, size: 768, elements: !1875)
!1875 = !{!1876, !1896, !1900, !1901, !1902, !1903, !1904, !1908, !1909, !1910, !1911, !1928}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1874, file: !1843, line: 276, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!158, !1880}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1843, line: 251, size: 1216, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1881, file: !1843, line: 253, baseType: !1841, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1881, file: !1843, line: 254, baseType: !873, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1881, file: !1843, line: 255, baseType: !303, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1881, file: !1843, line: 256, baseType: !103, size: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1881, file: !1843, line: 259, baseType: !323, size: 256, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1881, file: !1843, line: 260, baseType: !323, size: 256, offset: 512)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1881, file: !1843, line: 261, baseType: !158, size: 32, offset: 768)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1881, file: !1843, line: 262, baseType: !294, size: 128, offset: 832)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1881, file: !1843, line: 263, baseType: !301, size: 64, offset: 960)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1881, file: !1843, line: 265, baseType: !309, size: 64, offset: 1024)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1881, file: !1843, line: 266, baseType: !591, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1881, file: !1843, line: 267, baseType: !591, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1881, file: !1843, line: 268, baseType: !1472, size: 64, offset: 1152)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1874, file: !1843, line: 277, baseType: !1897, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{null, !1880}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1874, file: !1843, line: 290, baseType: !362, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1874, file: !1843, line: 292, baseType: !349, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1874, file: !1843, line: 293, baseType: !358, size: 64, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1874, file: !1843, line: 294, baseType: !354, size: 64, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1874, file: !1843, line: 296, baseType: !1905, size: 64, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!909, !1880, !301, !309, !318}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1874, file: !1843, line: 306, baseType: !309, size: 64, offset: 448)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1874, file: !1843, line: 313, baseType: !591, size: 8, offset: 512)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1874, file: !1843, line: 314, baseType: !1905, size: 64, offset: 576)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1874, file: !1843, line: 317, baseType: !1912, size: 64, offset: 640)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!1915, !1880, !1917}
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1916, line: 59, baseType: !7)
!1916 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1919, line: 37, size: 128, elements: !1920)
!1919 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1920 = !{!1921, !1927}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1918, file: !1919, line: 38, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1919, line: 31, baseType: !1923)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !873, !1926, !1917}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1918, file: !1919, line: 39, baseType: !1915, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1874, file: !1843, line: 320, baseType: !1929, size: 64, offset: 704)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!158, !1880, !1261}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1869, file: !1843, line: 176, baseType: !1933, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1843, line: 35, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1869, file: !1843, line: 177, baseType: !318, size: 64, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1869, file: !1843, line: 178, baseType: !1841, size: 64, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1842, file: !1843, line: 215, baseType: !103, size: 64, offset: 768)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1842, file: !1843, line: 221, baseType: !498, size: 64, offset: 832)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1842, file: !1843, line: 223, baseType: !220, size: 16, offset: 896)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1842, file: !1843, line: 224, baseType: !758, size: 16, offset: 912)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1842, file: !1843, line: 225, baseType: !1942, size: 64, offset: 960)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1843, line: 36, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1842, file: !1843, line: 227, baseType: !381, size: 128, align: 64, offset: 1024)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1010, file: !1011, line: 71, baseType: !1946, size: 32, offset: 448)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1947, line: 19, size: 32, elements: !1948)
!1947 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1948 = !{!1949}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1946, file: !1947, line: 20, baseType: !426, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1010, file: !1011, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1010, file: !1011, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1010, file: !1011, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1010, file: !1011, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1010, file: !1011, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1007, file: !20, line: 47, baseType: !997, size: 64, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1007, file: !20, line: 48, baseType: !1016, size: 64, offset: 576)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1007, file: !20, line: 49, baseType: !1958, size: 64, offset: 640)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1007, file: !20, line: 50, baseType: !1961, size: 64, offset: 704)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !998, file: !20, line: 418, baseType: !1963, size: 64, offset: 1408)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !1965)
!1965 = !{!1966, !1967, !1972, !1976, !1980, !1984}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1964, file: !20, line: 54, baseType: !1081, size: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1964, file: !20, line: 55, baseType: !1968, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!909, !1963, !1971, !301}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1964, file: !20, line: 57, baseType: !1973, size: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!909, !1963, !1971, !594, !309}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1964, file: !20, line: 59, baseType: !1977, size: 64, offset: 256)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !997, !594}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1964, file: !20, line: 60, baseType: !1981, size: 64, offset: 320)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!158, !997}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1964, file: !20, line: 61, baseType: !1985, size: 64, offset: 384)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !997}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !998, file: !20, line: 419, baseType: !594, size: 64, offset: 1472)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !998, file: !20, line: 420, baseType: !594, size: 64, offset: 1536)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !998, file: !20, line: 421, baseType: !1016, size: 64, offset: 1600)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !998, file: !20, line: 424, baseType: !1992, size: 64, offset: 1664)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1994)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !20, line: 424, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !998, file: !20, line: 425, baseType: !1996, size: 64, offset: 1728)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !998, file: !20, line: 426, baseType: !7, size: 32, offset: 1792)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !998, file: !20, line: 435, baseType: !323, size: 256, offset: 1856)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !998, file: !20, line: 437, baseType: !2001, size: 64, offset: 2112)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2003, line: 69, size: 320, elements: !2004)
!2003 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2004 = !{!2005, !2006, !2007, !2024, !2026, !2030, !2031}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2002, file: !2003, line: 70, baseType: !594, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2002, file: !2003, line: 71, baseType: !997, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2002, file: !2003, line: 72, baseType: !2008, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2010)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2003, line: 47, size: 256, elements: !2011)
!2011 = !{!2012, !2013, !2019, !2023}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2010, file: !2003, line: 49, baseType: !7, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2010, file: !2003, line: 51, baseType: !2014, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!158, !594, !2017}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2002)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2010, file: !2003, line: 53, baseType: !2020, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!158, !301, !2017}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2010, file: !2003, line: 55, baseType: !786, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2002, file: !2003, line: 73, baseType: !2025, size: 16, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2002, file: !2003, line: 74, baseType: !2027, size: 8, offset: 208)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !282, line: 16, baseType: !2028)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !284, line: 20, baseType: !2029)
!2029 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2002, file: !2003, line: 75, baseType: !281, size: 8, offset: 216)
!2031 = !DIDerivedType(tag: DW_TAG_member, scope: !2002, file: !2003, line: 76, baseType: !2032, size: 64, offset: 256)
!2032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2002, file: !2003, line: 76, size: 64, elements: !2033)
!2033 = !{!2034, !2035, !2042}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2032, file: !2003, line: 77, baseType: !103, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2032, file: !2003, line: 78, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2003, line: 86, size: 128, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2038, file: !2003, line: 87, baseType: !7, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2038, file: !2003, line: 88, baseType: !301, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2032, file: !2003, line: 79, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2045)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2003, line: 92, size: 256, elements: !2046)
!2046 = !{!2047, !2048, !2049, !2051, !2052}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2045, file: !2003, line: 94, baseType: !7, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2045, file: !2003, line: 95, baseType: !7, size: 32, offset: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2045, file: !2003, line: 96, baseType: !2050, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2045, file: !2003, line: 97, baseType: !2008, size: 64, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2045, file: !2003, line: 98, baseType: !103, size: 64, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !998, file: !20, line: 438, baseType: !7, size: 32, offset: 2176)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !998, file: !20, line: 441, baseType: !7, size: 32, offset: 2208)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !998, file: !20, line: 442, baseType: !1992, size: 64, offset: 2240)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !998, file: !20, line: 443, baseType: !1996, size: 64, offset: 2304)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !998, file: !20, line: 444, baseType: !591, size: 8, offset: 2368)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !998, file: !20, line: 451, baseType: !591, size: 8, offset: 2376)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !998, file: !20, line: 454, baseType: !7, size: 32, offset: 2400)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !998, file: !20, line: 455, baseType: !2061, size: 64, offset: 2432)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2063, line: 23, size: 96, elements: !2064)
!2063 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2064 = !{!2065, !2066, !2067}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2062, file: !2063, line: 24, baseType: !158, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2062, file: !2063, line: 24, baseType: !158, size: 32, offset: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2062, file: !2063, line: 24, baseType: !158, size: 32, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !998, file: !20, line: 458, baseType: !2069, size: 64, offset: 2496)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!158}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !998, file: !20, line: 460, baseType: !2073, size: 4032, align: 512, offset: 2560)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2074, size: 4032, elements: !2088)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !2075)
!2075 = !{!2076, !2077, !2078}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2074, file: !20, line: 363, baseType: !103, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2074, file: !20, line: 364, baseType: !7, size: 32, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2074, file: !20, line: 367, baseType: !2079, size: 448, offset: 128)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !2080)
!2080 = !{!2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2079, file: !20, line: 320, baseType: !997, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2079, file: !20, line: 321, baseType: !2083, size: 384, offset: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2084, line: 40, size: 384, elements: !2085)
!2084 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2085 = !{!2086}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2083, file: !2084, line: 41, baseType: !2087, size: 384, align: 64)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 384, align: 64, elements: !197)
!2088 = !{!2089}
!2089 = !DISubrange(count: 7)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !998, file: !20, line: 463, baseType: !2091, size: 192, offset: 6592)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2092, line: 8, size: 192, elements: !2093)
!2092 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2093 = !{!2094, !2095, !2097}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2091, file: !2092, line: 10, baseType: !7, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2091, file: !2092, line: 11, baseType: !2096, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2091, file: !2092, line: 12, baseType: !2098, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2100, line: 59, size: 48, elements: !2101)
!2100 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2101 = !{!2102, !2103, !2104, !2105, !2106, !2107}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2099, file: !2100, line: 60, baseType: !1407, size: 16)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2099, file: !2100, line: 61, baseType: !1407, size: 16, offset: 16)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2099, file: !2100, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2099, file: !2100, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2099, file: !2100, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2099, file: !2100, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !998, file: !20, line: 465, baseType: !313, size: 64, offset: 6784)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !998, file: !20, line: 469, baseType: !7, size: 32, offset: 6848)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !998, file: !20, line: 470, baseType: !294, size: 128, offset: 6912)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !998, file: !20, line: 471, baseType: !2112, size: 64, offset: 7040)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2114, line: 33, size: 96, elements: !2115)
!2114 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2115 = !{!2116, !2117, !2118, !2119}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2113, file: !2114, line: 37, baseType: !158, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2113, file: !2114, line: 43, baseType: !158, size: 32, offset: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2113, file: !2114, line: 45, baseType: !220, size: 16, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2113, file: !2114, line: 47, baseType: !220, size: 16, offset: 80)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !998, file: !20, line: 476, baseType: !2121, size: 64, offset: 7104)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !2123)
!2123 = !{!2124, !2140, !2141, !2142}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2122, file: !20, line: 379, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2127, line: 204, baseType: !2128)
!2127 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2127, line: 197, size: 192, elements: !2129)
!2129 = !{!2130, !2132, !2133, !2134, !2136, !2138}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2128, file: !2127, line: 198, baseType: !2131, size: 32)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2127, line: 21, baseType: !556)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2128, file: !2127, line: 199, baseType: !117, size: 8, offset: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2128, file: !2127, line: 200, baseType: !117, size: 8, offset: 40)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2128, file: !2127, line: 201, baseType: !2135, size: 16, offset: 48)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2127, line: 17, baseType: !291)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2128, file: !2127, line: 202, baseType: !2137, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2127, line: 16, baseType: !499)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2128, file: !2127, line: 203, baseType: !2139, size: 64, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2127, line: 22, baseType: !499)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2122, file: !20, line: 380, baseType: !7, size: 32, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2122, file: !20, line: 381, baseType: !301, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2122, file: !20, line: 382, baseType: !301, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !998, file: !20, line: 477, baseType: !2122, size: 256, offset: 7168)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !998, file: !20, line: 480, baseType: !2145, size: 64, offset: 7424)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !998, file: !20, line: 483, baseType: !2148, size: 64, offset: 7488)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !998, file: !20, line: 488, baseType: !301, size: 64, offset: 7552)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !998, file: !20, line: 492, baseType: !103, size: 64, offset: 7616)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !998, file: !20, line: 493, baseType: !7, size: 32, offset: 7680)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !998, file: !20, line: 495, baseType: !103, size: 64, offset: 7744)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !998, file: !20, line: 496, baseType: !7, size: 32, offset: 7808)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !998, file: !20, line: 499, baseType: !7, size: 32, offset: 7840)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !998, file: !20, line: 500, baseType: !2157, size: 64, offset: 7872)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2159, line: 45, baseType: !2160)
!2159 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !998, file: !20, line: 503, baseType: !7, size: 32, offset: 7936)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !998, file: !20, line: 504, baseType: !2163, size: 64, offset: 8000)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2166, line: 96, size: 192, elements: !2167)
!2166 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2167 = !{!2168, !2169, !2223, !2226}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2165, file: !2166, line: 97, baseType: !7, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2165, file: !2166, line: 98, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2166, line: 24, size: 3072, elements: !2172)
!2172 = !{!2173, !2175, !2176, !2177, !2178, !2192, !2193, !2194, !2195, !2207, !2208, !2209, !2220, !2221, !2222}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2171, file: !2166, line: 26, baseType: !2174, size: 128)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 128, elements: !197)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2171, file: !2166, line: 27, baseType: !2174, size: 128, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2171, file: !2166, line: 28, baseType: !158, size: 32, offset: 256)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2171, file: !2166, line: 31, baseType: !257, size: 32, align: 512, offset: 512)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2171, file: !2166, line: 32, baseType: !2179, size: 960, offset: 576)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2180, line: 206, size: 960, elements: !2181)
!2180 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2181 = !{!2182, !2183, !2186, !2188, !2189, !2191}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2179, file: !2180, line: 207, baseType: !384, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2179, file: !2180, line: 208, baseType: !2184, size: 256, offset: 64)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2185, size: 256, elements: !444)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2179, file: !2180, line: 209, baseType: !2187, size: 256, offset: 320)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 256, elements: !444)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2179, file: !2180, line: 213, baseType: !869, size: 64, offset: 576)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2179, file: !2180, line: 215, baseType: !2190, size: 256, offset: 640)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 256, elements: !444)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2179, file: !2180, line: 216, baseType: !281, size: 8, offset: 896)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2171, file: !2166, line: 33, baseType: !313, size: 64, offset: 1536)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2171, file: !2166, line: 34, baseType: !313, size: 64, offset: 1600)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2171, file: !2166, line: 35, baseType: !591, size: 8, offset: 1664)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2171, file: !2166, line: 36, baseType: !2196, size: 320, offset: 1728)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2197, line: 11, size: 320, elements: !2198)
!2197 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2198 = !{!2199, !2200, !2201, !2206}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2196, file: !2197, line: 16, baseType: !439, size: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2196, file: !2197, line: 17, baseType: !313, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2196, file: !2197, line: 18, baseType: !2202, size: 64, offset: 192)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null, !2205}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2196, file: !2197, line: 19, baseType: !555, size: 32, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2171, file: !2166, line: 37, baseType: !1429, size: 256, offset: 2048)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2171, file: !2166, line: 38, baseType: !381, size: 128, align: 64, offset: 2304)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2171, file: !2166, line: 39, baseType: !2210, size: 64, offset: 2432)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2166, line: 49, size: 768, elements: !2212)
!2212 = !{!2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2211, file: !2166, line: 50, baseType: !257, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2211, file: !2166, line: 51, baseType: !2187, size: 256, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2211, file: !2166, line: 53, baseType: !2187, size: 256, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2211, file: !2166, line: 54, baseType: !313, size: 64, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2211, file: !2166, line: 55, baseType: !2210, size: 64, offset: 640)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2211, file: !2166, line: 56, baseType: !158, size: 32, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2211, file: !2166, line: 57, baseType: !158, size: 32, offset: 736)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2171, file: !2166, line: 40, baseType: !313, size: 64, offset: 2496)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2171, file: !2166, line: 42, baseType: !158, size: 32, offset: 2560)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2171, file: !2166, line: 43, baseType: !2164, size: 64, offset: 2624)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2165, file: !2166, line: 99, baseType: !2224, offset: 128)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2225, line: 211, elements: !1295)
!2225 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2165, file: !2166, line: 100, baseType: !2227, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2166, line: 63, size: 3008, elements: !2229)
!2229 = !{!2230, !2231, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2261}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2228, file: !2166, line: 64, baseType: !2210, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2228, file: !2166, line: 65, baseType: !2232, size: 192, offset: 64)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2210, size: 192, elements: !171)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2228, file: !2166, line: 67, baseType: !158, size: 32, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2228, file: !2166, line: 68, baseType: !323, size: 256, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2228, file: !2166, line: 69, baseType: !257, size: 32, offset: 576)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2228, file: !2166, line: 70, baseType: !323, size: 256, offset: 640)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2228, file: !2166, line: 71, baseType: !313, size: 64, offset: 896)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2228, file: !2166, line: 72, baseType: !313, size: 64, offset: 960)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2228, file: !2166, line: 73, baseType: !313, size: 64, offset: 1024)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2228, file: !2166, line: 74, baseType: !313, size: 64, offset: 1088)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2228, file: !2166, line: 75, baseType: !313, size: 64, offset: 1152)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2228, file: !2166, line: 76, baseType: !313, size: 64, offset: 1216)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2228, file: !2166, line: 77, baseType: !313, size: 64, offset: 1280)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2228, file: !2166, line: 78, baseType: !313, size: 64, offset: 1344)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2228, file: !2166, line: 79, baseType: !591, size: 8, offset: 1408)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2228, file: !2166, line: 80, baseType: !313, size: 64, offset: 1472)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2228, file: !2166, line: 81, baseType: !323, size: 256, offset: 1536)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2228, file: !2166, line: 82, baseType: !1226, size: 256, offset: 1792)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2228, file: !2166, line: 84, baseType: !239, size: 32, offset: 2048)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2228, file: !2166, line: 87, baseType: !313, size: 64, offset: 2112)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2228, file: !2166, line: 88, baseType: !313, size: 64, offset: 2176)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2228, file: !2166, line: 89, baseType: !2253, size: 704, offset: 2240)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1430, line: 111, size: 704, elements: !2254)
!2254 = !{!2255, !2256, !2257, !2260}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2253, file: !1430, line: 112, baseType: !1429, size: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2253, file: !1430, line: 113, baseType: !2196, size: 320, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2253, file: !1430, line: 116, baseType: !2258, size: 64, offset: 576)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1430, line: 18, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2253, file: !1430, line: 117, baseType: !158, size: 32, offset: 640)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2228, file: !2166, line: 90, baseType: !2164, size: 64, offset: 2944)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !998, file: !20, line: 515, baseType: !2263, size: 64, offset: 8064)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2265, line: 117, size: 128, elements: !2266)
!2265 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2266 = !{!2267, !2268, !2269}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2264, file: !2265, line: 118, baseType: !515, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2264, file: !2265, line: 119, baseType: !515, size: 32, offset: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2264, file: !2265, line: 120, baseType: !869, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !998, file: !20, line: 516, baseType: !7, size: 32, offset: 8128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !998, file: !20, line: 519, baseType: !7, size: 32, offset: 8160)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !998, file: !20, line: 520, baseType: !2273, size: 64, offset: 8192)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !998, file: !20, line: 523, baseType: !2275, size: 64, offset: 8256)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !998, file: !20, line: 524, baseType: !7, size: 32, offset: 8320)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !998, file: !20, line: 525, baseType: !2280, size: 64, offset: 8384)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !998, file: !20, line: 526, baseType: !7, size: 32, offset: 8448)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !998, file: !20, line: 533, baseType: !103, size: 64, offset: 8512)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !998, file: !20, line: 534, baseType: !7, size: 32, offset: 8576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !998, file: !20, line: 535, baseType: !2287, size: 64, offset: 8640)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !998, file: !20, line: 536, baseType: !7, size: 32, offset: 8704)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !998, file: !20, line: 539, baseType: !158, size: 32, offset: 8736)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !998, file: !20, line: 540, baseType: !2291, size: 64, offset: 8768)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2293, line: 32, size: 64, elements: !2294)
!2293 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2294 = !{!2295, !2296}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2292, file: !2293, line: 33, baseType: !515, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2292, file: !2293, line: 34, baseType: !515, size: 32, offset: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !998, file: !20, line: 563, baseType: !294, size: 128, offset: 8832)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !998, file: !20, line: 565, baseType: !294, size: 128, offset: 8960)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !998, file: !20, line: 568, baseType: !2300, size: 64, offset: 9088)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !998, file: !20, line: 570, baseType: !239, size: 32, offset: 9152)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !974, file: !64, line: 2382, baseType: !973, size: 64, offset: 448)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !974, file: !64, line: 2383, baseType: !435, size: 64, offset: 512)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !974, file: !64, line: 2385, baseType: !2307, offset: 576)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2225, line: 206, elements: !1295)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !974, file: !64, line: 2386, baseType: !2307, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !974, file: !64, line: 2387, baseType: !2307, offset: 576)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !974, file: !64, line: 2388, baseType: !2311, offset: 576)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2307, elements: !171)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !974, file: !64, line: 2390, baseType: !2307, offset: 576)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !974, file: !64, line: 2391, baseType: !2307, offset: 576)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !974, file: !64, line: 2392, baseType: !2307, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !974, file: !64, line: 2393, baseType: !2307, offset: 576)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !965, file: !64, line: 1197, baseType: !2317, size: 64, offset: 384)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2319)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !64, line: 2057, size: 1664, elements: !2320)
!2320 = !{!2321, !2325, !2329, !2330, !2334, !2338, !2342, !2343, !2344, !2348, !2352, !2356, !2357, !2358, !2364, !2368, !2369, !2373, !2374, !2375, !2376, !2380, !2384, !2431, !2446, !2447}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2319, file: !64, line: 2058, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!754, !964}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2319, file: !64, line: 2059, baseType: !2326, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !754}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2319, file: !64, line: 2060, baseType: !2326, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2319, file: !64, line: 2062, baseType: !2331, size: 64, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !754, !158}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2319, file: !64, line: 2063, baseType: !2335, size: 64, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!158, !754, !1604}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2319, file: !64, line: 2064, baseType: !2339, size: 64, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!158, !754}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2319, file: !64, line: 2065, baseType: !2326, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2319, file: !64, line: 2066, baseType: !993, size: 64, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2319, file: !64, line: 2067, baseType: !2345, size: 64, offset: 512)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!158, !964, !158}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2319, file: !64, line: 2068, baseType: !2349, size: 64, offset: 576)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!158, !964, !63}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2319, file: !64, line: 2069, baseType: !2353, size: 64, offset: 640)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!158, !964}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2319, file: !64, line: 2070, baseType: !2349, size: 64, offset: 704)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2319, file: !64, line: 2071, baseType: !2353, size: 64, offset: 768)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2319, file: !64, line: 2072, baseType: !2359, size: 64, offset: 832)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!158, !714, !2362}
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !64, line: 62, flags: DIFlagFwdDecl)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2319, file: !64, line: 2073, baseType: !2365, size: 64, offset: 896)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!158, !964, !2096, !301}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2319, file: !64, line: 2074, baseType: !993, size: 64, offset: 960)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2319, file: !64, line: 2076, baseType: !2370, size: 64, offset: 1024)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!158, !303, !714}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2319, file: !64, line: 2077, baseType: !2370, size: 64, offset: 1088)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2319, file: !64, line: 2078, baseType: !2370, size: 64, offset: 1152)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2319, file: !64, line: 2079, baseType: !2370, size: 64, offset: 1216)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2319, file: !64, line: 2081, baseType: !2377, size: 64, offset: 1280)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!909, !964, !158, !301, !309, !318}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2319, file: !64, line: 2082, baseType: !2381, size: 64, offset: 1344)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!909, !964, !158, !594, !309, !318}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2319, file: !64, line: 2083, baseType: !2385, size: 64, offset: 1408)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!2388, !754}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !2391)
!2391 = !{!2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2416, !2417, !2418}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2390, file: !69, line: 297, baseType: !439, size: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2390, file: !69, line: 298, baseType: !294, size: 128, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2390, file: !69, line: 299, baseType: !294, size: 128, offset: 256)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2390, file: !69, line: 300, baseType: !294, size: 128, offset: 384)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2390, file: !69, line: 301, baseType: !323, size: 256, offset: 512)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2390, file: !69, line: 302, baseType: !257, size: 32, offset: 768)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2390, file: !69, line: 303, baseType: !239, size: 32, offset: 800)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2390, file: !69, line: 304, baseType: !964, size: 64, offset: 832)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2390, file: !69, line: 305, baseType: !2401, size: 64, offset: 896)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !2402)
!2402 = !{!2403, !2415}
!2403 = !DIDerivedType(tag: DW_TAG_member, scope: !2401, file: !69, line: 69, baseType: !2404, size: 32)
!2404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2401, file: !69, line: 69, size: 32, elements: !2405)
!2405 = !{!2406, !2407, !2408}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2404, file: !69, line: 70, baseType: !461, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2404, file: !69, line: 71, baseType: !479, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2404, file: !69, line: 72, baseType: !2409, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2410, line: 24, baseType: !2411)
!2410 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2410, line: 22, size: 32, elements: !2412)
!2412 = !{!2413}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2411, file: !2410, line: 23, baseType: !2414, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2410, line: 20, baseType: !467)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2401, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2390, file: !69, line: 306, baseType: !318, size: 64, offset: 960)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2390, file: !69, line: 307, baseType: !313, size: 64, offset: 1024)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2390, file: !69, line: 308, baseType: !2419, size: 576, offset: 1088)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !2420)
!2420 = !{!2421, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2419, file: !69, line: 206, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !320)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2419, file: !69, line: 207, baseType: !2422, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2419, file: !69, line: 208, baseType: !2422, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2419, file: !69, line: 209, baseType: !2422, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2419, file: !69, line: 210, baseType: !2422, size: 64, offset: 256)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2419, file: !69, line: 211, baseType: !2422, size: 64, offset: 320)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2419, file: !69, line: 212, baseType: !2422, size: 64, offset: 384)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2419, file: !69, line: 213, baseType: !546, size: 64, offset: 448)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2419, file: !69, line: 214, baseType: !546, size: 64, offset: 512)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2319, file: !64, line: 2085, baseType: !2432, size: 64, offset: 1472)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!869, !964, !2435}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2437, line: 15, size: 256, elements: !2438)
!2437 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2438 = !{!2439, !2440, !2441, !2442, !2443}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2436, file: !2437, line: 16, baseType: !302, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2436, file: !2437, line: 19, baseType: !158, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2436, file: !2437, line: 26, baseType: !313, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2436, file: !2437, line: 33, baseType: !313, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2436, file: !2437, line: 36, baseType: !2444, size: 64, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !35, line: 33, flags: DIFlagFwdDecl)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2319, file: !64, line: 2087, baseType: !2432, size: 64, offset: 1536)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2319, file: !64, line: 2089, baseType: !993, size: 64, offset: 1600)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !965, file: !64, line: 1198, baseType: !2449, size: 64, offset: 448)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2451)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !2452)
!2452 = !{!2453, !2457, !2461, !2465, !2466, !2467, !2468, !2469, !2474, !2479, !2483}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2451, file: !69, line: 325, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!158, !2389}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2451, file: !69, line: 326, baseType: !2458, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!2389, !964, !158}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2451, file: !69, line: 327, baseType: !2462, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !2389}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2451, file: !69, line: 328, baseType: !2454, size: 64, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2451, file: !69, line: 329, baseType: !2454, size: 64, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2451, file: !69, line: 330, baseType: !2454, size: 64, offset: 320)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2451, file: !69, line: 331, baseType: !2345, size: 64, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2451, file: !69, line: 334, baseType: !2470, size: 64, offset: 448)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!2473, !754}
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2451, file: !69, line: 335, baseType: !2475, size: 64, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!158, !754, !2478}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2451, file: !69, line: 337, baseType: !2480, size: 64, offset: 576)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!158, !754, !2473}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2451, file: !69, line: 339, baseType: !2484, size: 64, offset: 640)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!158, !964, !2487}
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !965, file: !64, line: 1199, baseType: !2489, size: 64, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2491)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !2492)
!2492 = !{!2493, !2497, !2498, !2502, !2503, !2504, !2519, !2542, !2546, !2547, !2570}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2491, file: !69, line: 431, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!158, !964, !158, !158, !878}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2491, file: !69, line: 432, baseType: !2345, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2491, file: !69, line: 433, baseType: !2499, size: 64, offset: 128)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!158, !964, !7}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2491, file: !69, line: 434, baseType: !2499, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2491, file: !69, line: 435, baseType: !2345, size: 64, offset: 256)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2491, file: !69, line: 436, baseType: !2505, size: 64, offset: 320)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!158, !964, !158, !2508}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !2510)
!2510 = !{!2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2509, file: !69, line: 418, baseType: !158, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2509, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2509, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2509, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2509, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2509, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2509, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2509, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2491, file: !69, line: 437, baseType: !2520, size: 64, offset: 384)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!158, !964, !2401, !2523}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !2525)
!2525 = !{!2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2524, file: !69, line: 346, baseType: !158, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2524, file: !69, line: 347, baseType: !498, size: 64, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2524, file: !69, line: 348, baseType: !498, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2524, file: !69, line: 349, baseType: !498, size: 64, offset: 192)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2524, file: !69, line: 350, baseType: !498, size: 64, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2524, file: !69, line: 351, baseType: !498, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2524, file: !69, line: 352, baseType: !498, size: 64, offset: 384)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2524, file: !69, line: 353, baseType: !333, size: 64, offset: 448)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2524, file: !69, line: 355, baseType: !333, size: 64, offset: 512)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2524, file: !69, line: 356, baseType: !158, size: 32, offset: 576)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2524, file: !69, line: 357, baseType: !158, size: 32, offset: 608)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2524, file: !69, line: 358, baseType: !498, size: 64, offset: 640)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2524, file: !69, line: 359, baseType: !498, size: 64, offset: 704)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2524, file: !69, line: 360, baseType: !498, size: 64, offset: 768)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2524, file: !69, line: 361, baseType: !333, size: 64, offset: 832)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2524, file: !69, line: 362, baseType: !158, size: 32, offset: 896)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2491, file: !69, line: 438, baseType: !2543, size: 64, offset: 448)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!158, !964, !2487, !2523}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2491, file: !69, line: 440, baseType: !2520, size: 64, offset: 512)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2491, file: !69, line: 441, baseType: !2548, size: 64, offset: 576)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!158, !964, !2551}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !2553)
!2553 = !{!2554, !2555}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2552, file: !69, line: 412, baseType: !7, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2552, file: !69, line: 413, baseType: !2556, size: 1344, offset: 64)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2557, size: 1344, elements: !171)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !2558)
!2558 = !{!2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2569}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2557, file: !69, line: 398, baseType: !7, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2557, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2557, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2557, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2557, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2557, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2557, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2557, file: !69, line: 406, baseType: !500, size: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2557, file: !69, line: 407, baseType: !2568, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !240, line: 132, baseType: !498)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2557, file: !69, line: 408, baseType: !2568, size: 64, offset: 384)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2491, file: !69, line: 442, baseType: !2499, size: 64, offset: 640)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !965, file: !64, line: 1200, baseType: !2572, size: 64, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2574)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !64, line: 54, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !965, file: !64, line: 1201, baseType: !313, size: 64, offset: 640)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !965, file: !64, line: 1202, baseType: !313, size: 64, offset: 704)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !965, file: !64, line: 1203, baseType: !313, size: 64, offset: 768)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !965, file: !64, line: 1204, baseType: !714, size: 64, offset: 832)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !965, file: !64, line: 1205, baseType: !530, size: 320, offset: 896)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !965, file: !64, line: 1206, baseType: !158, size: 32, offset: 1216)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !965, file: !64, line: 1207, baseType: !239, size: 32, offset: 1248)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !965, file: !64, line: 1209, baseType: !103, size: 64, offset: 1280)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !965, file: !64, line: 1211, baseType: !2584, size: 64, offset: 1344)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2587)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !64, line: 1211, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !965, file: !64, line: 1223, baseType: !2589, size: 64, offset: 1408)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !731, line: 34, size: 64, elements: !2590)
!2590 = !{!2591}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2589, file: !731, line: 35, baseType: !734, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !965, file: !64, line: 1224, baseType: !294, size: 128, offset: 1472)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !965, file: !64, line: 1225, baseType: !2594, size: 64, offset: 1600)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !64, line: 1225, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !965, file: !64, line: 1226, baseType: !2597, size: 64, offset: 1664)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !64, line: 1226, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !965, file: !64, line: 1227, baseType: !2600, size: 64, offset: 1728)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !64, line: 50, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !965, file: !64, line: 1228, baseType: !2603, size: 64, offset: 1792)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !64, line: 1228, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !965, file: !64, line: 1229, baseType: !439, size: 128, offset: 1856)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !965, file: !64, line: 1230, baseType: !7, size: 32, offset: 1984)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !965, file: !64, line: 1231, baseType: !2608, size: 2496, offset: 2048)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !2609)
!2609 = !{!2610, !2611, !2612, !2614, !2646}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2608, file: !69, line: 522, baseType: !7, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2608, file: !69, line: 523, baseType: !530, size: 320, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2608, file: !69, line: 524, baseType: !2613, size: 192, offset: 384)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 192, elements: !171)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2608, file: !69, line: 525, baseType: !2615, size: 1728, offset: 576)
!2615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2616, size: 1728, elements: !171)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !2617)
!2617 = !{!2618, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2616, file: !69, line: 223, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !2621)
!2621 = !{!2622, !2623, !2636, !2637}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2620, file: !69, line: 446, baseType: !158, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2620, file: !69, line: 447, baseType: !2624, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2626)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !2627)
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2626, file: !69, line: 313, baseType: !2345, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2626, file: !69, line: 314, baseType: !2345, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2626, file: !69, line: 315, baseType: !2345, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2626, file: !69, line: 316, baseType: !2345, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2626, file: !69, line: 317, baseType: !2454, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2626, file: !69, line: 318, baseType: !2454, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2626, file: !69, line: 319, baseType: !2454, size: 64, offset: 384)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2626, file: !69, line: 320, baseType: !2484, size: 64, offset: 448)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2620, file: !69, line: 448, baseType: !997, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2620, file: !69, line: 449, baseType: !2619, size: 64, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2616, file: !69, line: 224, baseType: !158, size: 32, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2616, file: !69, line: 226, baseType: !294, size: 128, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2616, file: !69, line: 227, baseType: !313, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2616, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2616, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2616, file: !69, line: 230, baseType: !2422, size: 64, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2616, file: !69, line: 231, baseType: !2422, size: 64, offset: 448)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2616, file: !69, line: 232, baseType: !103, size: 64, offset: 512)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2608, file: !69, line: 526, baseType: !2647, size: 192, offset: 2304)
!2647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2624, size: 192, elements: !171)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !965, file: !64, line: 1233, baseType: !2649, size: 2368, offset: 4544)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !64, line: 1184, size: 2368, elements: !2650)
!2650 = !{!2651, !2652, !2653}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2649, file: !64, line: 1185, baseType: !220, size: 16)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2649, file: !64, line: 1186, baseType: !220, size: 16, offset: 16)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2649, file: !64, line: 1187, baseType: !2654, size: 2304, offset: 64)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2655, size: 2304, elements: !171)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2656, line: 12, size: 768, elements: !2657)
!2656 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2657 = !{!2658, !2666, !2667, !3851, !3852}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2655, file: !2656, line: 13, baseType: !2659, size: 384)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2660, line: 17, size: 384, elements: !2661)
!2660 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2661 = !{!2662, !2663, !2664, !2665}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2659, file: !2660, line: 18, baseType: !158, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2659, file: !2660, line: 19, baseType: !158, size: 32, offset: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2659, file: !2660, line: 20, baseType: !252, size: 192, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2659, file: !2660, line: 22, baseType: !381, size: 128, align: 64, offset: 256)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2655, file: !2656, line: 14, baseType: !2050, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2655, file: !2656, line: 15, baseType: !2668, size: 64, offset: 448)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2669, line: 16, size: 64, elements: !2670)
!2669 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2670 = !{!2671}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2668, file: !2669, line: 17, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2674, line: 746, size: 58368, elements: !2675)
!2674 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2675 = !{!2676, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2756, !2767, !2853, !2857, !2860, !2891, !2892, !2893, !2894, !2905, !2907, !2908, !2909, !2910, !2911, !2912, !2923, !2924, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2941, !2942, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !3035, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3083, !3089, !3090, !3091, !3092, !3093, !3097, !3100, !3107, !3112, !3115, !3118, !3121, !3124, !3262, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3300, !3301, !3302, !3311, !3319, !3320, !3321, !3322, !3323, !3328, !3329, !3330, !3333, !3334, !3337, !3340, !3343, !3351, !3354, !3355, !3441, !3442, !3443, !3444, !3445, !3451, !3452, !3453, !3454, !3457, !3458, !3461, !3464, !3465, !3468, !3469, !3470, !3473, !3474, !3475, !3476, !3477, !3478, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3510, !3513, !3519, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3531, !3603, !3605, !3606, !3607, !3608, !3609, !3610, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3628, !3629, !3630}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2673, file: !2674, line: 752, baseType: !2677, size: 192)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2678, line: 56, size: 192, elements: !2679)
!2678 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2679 = !{!2680, !2681, !2682, !2683}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2677, file: !2678, line: 57, baseType: !313, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2677, file: !2678, line: 58, baseType: !313, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2677, file: !2678, line: 59, baseType: !555, size: 32, offset: 128)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2677, file: !2678, line: 61, baseType: !555, size: 32, offset: 160)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2673, file: !2674, line: 754, baseType: !7, size: 32, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2673, file: !2674, line: 767, baseType: !103, size: 64, offset: 256)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2673, file: !2674, line: 768, baseType: !426, size: 32, offset: 320)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2673, file: !2674, line: 770, baseType: !7, size: 32, offset: 352)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2673, file: !2674, line: 771, baseType: !7, size: 32, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2673, file: !2674, line: 774, baseType: !158, size: 32, offset: 416)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2673, file: !2674, line: 775, baseType: !2691, size: 128, offset: 448)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2692, line: 58, size: 128, elements: !2693)
!2692 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2693 = !{!2694, !2695, !2700, !2701}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2691, file: !2692, line: 59, baseType: !375, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, scope: !2691, file: !2692, line: 60, baseType: !2696, size: 32, offset: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2691, file: !2692, line: 60, size: 32, elements: !2697)
!2697 = !{!2698, !2699}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2696, file: !2692, line: 61, baseType: !7, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2696, file: !2692, line: 62, baseType: !239, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2691, file: !2692, line: 65, baseType: !290, size: 16, offset: 96)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2691, file: !2692, line: 65, baseType: !290, size: 16, offset: 112)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2673, file: !2674, line: 776, baseType: !7, size: 32, offset: 576)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2673, file: !2674, line: 777, baseType: !313, size: 64, offset: 640)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2673, file: !2674, line: 778, baseType: !2672, size: 64, offset: 704)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2673, file: !2674, line: 787, baseType: !158, size: 32, offset: 768)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2673, file: !2674, line: 788, baseType: !158, size: 32, offset: 800)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2673, file: !2674, line: 790, baseType: !158, size: 32, offset: 832)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2673, file: !2674, line: 792, baseType: !158, size: 32, offset: 864)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2673, file: !2674, line: 793, baseType: !158, size: 32, offset: 896)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2673, file: !2674, line: 794, baseType: !158, size: 32, offset: 928)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2673, file: !2674, line: 795, baseType: !7, size: 32, offset: 960)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2673, file: !2674, line: 797, baseType: !2713, size: 2048, offset: 1024)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2674, line: 551, size: 2048, elements: !2714)
!2714 = !{!2715, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2735, !2738, !2739, !2740}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2713, file: !2674, line: 553, baseType: !2716, size: 128)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2674, line: 411, size: 128, elements: !2717)
!2717 = !{!2718, !2719}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2716, file: !2674, line: 412, baseType: !313, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2716, file: !2674, line: 413, baseType: !555, size: 32, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2713, file: !2674, line: 554, baseType: !522, size: 192, align: 64, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2713, file: !2674, line: 555, baseType: !498, size: 64, offset: 320)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2713, file: !2674, line: 556, baseType: !498, size: 64, offset: 384)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2713, file: !2674, line: 558, baseType: !294, size: 128, offset: 448)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2713, file: !2674, line: 559, baseType: !7, size: 32, offset: 576)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2713, file: !2674, line: 561, baseType: !498, size: 64, offset: 640)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2713, file: !2674, line: 562, baseType: !498, size: 64, offset: 704)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2713, file: !2674, line: 563, baseType: !498, size: 64, offset: 768)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2713, file: !2674, line: 564, baseType: !498, size: 64, offset: 832)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2713, file: !2674, line: 565, baseType: !333, size: 64, offset: 896)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2713, file: !2674, line: 566, baseType: !498, size: 64, offset: 960)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2713, file: !2674, line: 568, baseType: !498, size: 64, offset: 1024)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2713, file: !2674, line: 571, baseType: !158, size: 32, offset: 1088)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2713, file: !2674, line: 572, baseType: !2734, size: 64, offset: 1152)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2713, file: !2674, line: 574, baseType: !2736, size: 64, offset: 1216)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2674, line: 49, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2713, file: !2674, line: 576, baseType: !2736, size: 64, offset: 1280)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2713, file: !2674, line: 578, baseType: !313, size: 64, offset: 1344)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2713, file: !2674, line: 588, baseType: !2741, size: 512, align: 512, offset: 1536)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2674, line: 497, size: 512, align: 512, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2741, file: !2674, line: 498, baseType: !498, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2741, file: !2674, line: 499, baseType: !498, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2741, file: !2674, line: 500, baseType: !498, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2741, file: !2674, line: 501, baseType: !555, size: 32, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2741, file: !2674, line: 502, baseType: !555, size: 32, offset: 224)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2741, file: !2674, line: 503, baseType: !313, size: 64, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2741, file: !2674, line: 504, baseType: !313, size: 64, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2741, file: !2674, line: 505, baseType: !313, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2741, file: !2674, line: 506, baseType: !2752, size: 64, align: 64, offset: 448)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2674, line: 445, size: 64, align: 64, elements: !2753)
!2753 = !{!2754, !2755}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2752, file: !2674, line: 446, baseType: !7, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2752, file: !2674, line: 447, baseType: !7, size: 32, offset: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2673, file: !2674, line: 798, baseType: !2757, size: 384, offset: 3072)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2674, line: 592, size: 384, elements: !2758)
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2757, file: !2674, line: 593, baseType: !294, size: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2757, file: !2674, line: 594, baseType: !313, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2757, file: !2674, line: 595, baseType: !313, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2757, file: !2674, line: 596, baseType: !7, size: 32, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2757, file: !2674, line: 597, baseType: !220, size: 16, offset: 288)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2757, file: !2674, line: 598, baseType: !220, size: 16, offset: 304)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2757, file: !2674, line: 600, baseType: !2766, size: 64, offset: 320)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2673, file: !2674, line: 799, baseType: !2768, size: 1792, offset: 3456)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2674, line: 610, size: 1792, elements: !2769)
!2769 = !{!2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2850, !2851}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2768, file: !2674, line: 611, baseType: !522, size: 192, align: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2768, file: !2674, line: 618, baseType: !498, size: 64, offset: 192)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2768, file: !2674, line: 619, baseType: !498, size: 64, offset: 256)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2768, file: !2674, line: 620, baseType: !498, size: 64, offset: 320)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2768, file: !2674, line: 621, baseType: !498, size: 64, offset: 384)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2768, file: !2674, line: 622, baseType: !498, size: 64, offset: 448)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2768, file: !2674, line: 629, baseType: !333, size: 64, offset: 512)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2768, file: !2674, line: 630, baseType: !498, size: 64, offset: 576)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2768, file: !2674, line: 631, baseType: !7, size: 32, offset: 640)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2768, file: !2674, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2768, file: !2674, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2768, file: !2674, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2768, file: !2674, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2768, file: !2674, line: 662, baseType: !2784, size: 512, offset: 704)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !75, line: 118, size: 512, elements: !2785)
!2785 = !{!2786, !2794, !2795, !2800, !2846, !2847, !2848, !2849}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2784, file: !75, line: 119, baseType: !2787, size: 256)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2788, line: 9, size: 256, elements: !2789)
!2788 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2789 = !{!2790, !2791}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2787, file: !2788, line: 10, baseType: !522, size: 192, align: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2787, file: !2788, line: 11, baseType: !2792, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2793, line: 29, baseType: !333)
!2793 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2784, file: !75, line: 120, baseType: !2792, size: 64, offset: 256)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2784, file: !75, line: 121, baseType: !2796, size: 64, offset: 320)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!74, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2784, file: !75, line: 122, baseType: !2801, size: 64, offset: 384)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !75, line: 159, size: 512, align: 512, elements: !2803)
!2803 = !{!2804, !2827, !2828, !2831, !2836, !2837, !2841, !2845}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2802, file: !75, line: 160, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !75, line: 215, size: 4608, align: 512, elements: !2807)
!2807 = !{!2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2806, file: !75, line: 216, baseType: !336, size: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2806, file: !75, line: 217, baseType: !7, size: 32, offset: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2806, file: !75, line: 218, baseType: !7, size: 32, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2806, file: !75, line: 219, baseType: !7, size: 32, offset: 96)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2806, file: !75, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2806, file: !75, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2806, file: !75, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2806, file: !75, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2806, file: !75, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2806, file: !75, line: 226, baseType: !7, size: 32, offset: 160)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2806, file: !75, line: 227, baseType: !220, size: 16, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2806, file: !75, line: 228, baseType: !220, size: 16, offset: 208)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2806, file: !75, line: 229, baseType: !7, size: 32, offset: 224)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2806, file: !75, line: 235, baseType: !2792, size: 64, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2806, file: !75, line: 236, baseType: !2799, size: 64, offset: 320)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2806, file: !75, line: 237, baseType: !2792, size: 64, offset: 384)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2806, file: !75, line: 238, baseType: !2799, size: 64, offset: 448)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2806, file: !75, line: 239, baseType: !2826, size: 4096, align: 512, offset: 512)
!2826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2802, size: 4096, align: 512, elements: !201)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2802, file: !75, line: 161, baseType: !7, size: 32, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2802, file: !75, line: 162, baseType: !2829, size: 32, offset: 96)
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !240, line: 32, baseType: !2830)
!2830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !311, line: 96, baseType: !158)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2802, file: !75, line: 163, baseType: !2832, size: 32, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !721, line: 274, baseType: !2833)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !721, line: 274, size: 32, elements: !2834)
!2834 = !{!2835}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2833, file: !721, line: 274, baseType: !725, size: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2802, file: !75, line: 164, baseType: !2799, size: 64, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2802, file: !75, line: 165, baseType: !2838, size: 128, offset: 256)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2788, line: 14, size: 128, elements: !2839)
!2839 = !{!2840}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2838, file: !2788, line: 15, baseType: !1123, size: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2802, file: !75, line: 166, baseType: !2842, size: 64, offset: 384)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!2792}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2802, file: !75, line: 167, baseType: !2792, size: 64, offset: 448)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2784, file: !75, line: 123, baseType: !281, size: 8, offset: 448)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2784, file: !75, line: 124, baseType: !281, size: 8, offset: 456)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2784, file: !75, line: 125, baseType: !281, size: 8, offset: 464)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2784, file: !75, line: 126, baseType: !281, size: 8, offset: 472)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2768, file: !2674, line: 671, baseType: !2784, size: 512, offset: 1216)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2768, file: !2674, line: 679, baseType: !2852, size: 64, offset: 1728)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2673, file: !2674, line: 800, baseType: !2854, size: 64, offset: 5248)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2856)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2674, line: 800, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2673, file: !2674, line: 809, baseType: !2858, size: 64, offset: 5312)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2674, line: 70, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2673, file: !2674, line: 825, baseType: !2861, size: 2048, align: 512, offset: 5632)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2674, line: 509, size: 2048, align: 512, elements: !2862)
!2862 = !{!2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2861, file: !2674, line: 511, baseType: !498, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2861, file: !2674, line: 512, baseType: !498, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2861, file: !2674, line: 513, baseType: !498, size: 64, offset: 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2861, file: !2674, line: 514, baseType: !498, size: 64, offset: 192)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2861, file: !2674, line: 515, baseType: !498, size: 64, offset: 256)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2861, file: !2674, line: 516, baseType: !498, size: 64, offset: 320)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2861, file: !2674, line: 518, baseType: !498, size: 64, offset: 384)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2861, file: !2674, line: 519, baseType: !498, size: 64, offset: 448)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2861, file: !2674, line: 520, baseType: !333, size: 64, offset: 512)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2861, file: !2674, line: 522, baseType: !498, size: 64, offset: 576)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2861, file: !2674, line: 523, baseType: !498, size: 64, offset: 640)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2861, file: !2674, line: 524, baseType: !333, size: 64, offset: 704)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2861, file: !2674, line: 526, baseType: !333, size: 64, offset: 768)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2861, file: !2674, line: 527, baseType: !498, size: 64, offset: 832)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2861, file: !2674, line: 529, baseType: !498, size: 64, offset: 896)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2861, file: !2674, line: 530, baseType: !498, size: 64, offset: 960)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2861, file: !2674, line: 531, baseType: !498, size: 64, offset: 1024)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2861, file: !2674, line: 532, baseType: !498, size: 64, offset: 1088)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2861, file: !2674, line: 533, baseType: !498, size: 64, offset: 1152)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2861, file: !2674, line: 535, baseType: !498, size: 64, offset: 1216)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2861, file: !2674, line: 536, baseType: !498, size: 64, offset: 1280)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2861, file: !2674, line: 537, baseType: !498, size: 64, offset: 1344)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2861, file: !2674, line: 538, baseType: !498, size: 64, offset: 1408)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2861, file: !2674, line: 539, baseType: !498, size: 64, offset: 1472)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2861, file: !2674, line: 540, baseType: !498, size: 64, offset: 1536)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2861, file: !2674, line: 541, baseType: !498, size: 64, offset: 1600)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2861, file: !2674, line: 542, baseType: !498, size: 64, offset: 1664)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2861, file: !2674, line: 543, baseType: !498, size: 64, offset: 1728)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2673, file: !2674, line: 833, baseType: !7, size: 32, offset: 7680)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2673, file: !2674, line: 836, baseType: !7, size: 32, offset: 7712)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2673, file: !2674, line: 837, baseType: !158, size: 32, offset: 7744)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2673, file: !2674, line: 838, baseType: !2895, size: 64, offset: 7808)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2897)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2898, line: 19, baseType: !2899)
!2898 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2898, line: 19, size: 64, elements: !2900)
!2900 = !{!2901}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2899, file: !2898, line: 19, baseType: !2902, size: 64)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 64, elements: !2903)
!2903 = !{!2904}
!2904 = !DISubrange(count: 1)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2673, file: !2674, line: 839, baseType: !2906, size: 64, offset: 7872)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2673, file: !2674, line: 840, baseType: !2897, size: 64, offset: 7936)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2673, file: !2674, line: 841, baseType: !103, size: 64, offset: 8000)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2673, file: !2674, line: 843, baseType: !220, size: 16, offset: 8064)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2673, file: !2674, line: 845, baseType: !220, size: 16, offset: 8080)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2673, file: !2674, line: 848, baseType: !158, size: 32, offset: 8096)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2673, file: !2674, line: 849, baseType: !2913, size: 32, offset: 8128)
!2913 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2674, line: 718, size: 32, elements: !2914)
!2914 = !{!2915, !2922}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2913, file: !2674, line: 724, baseType: !2916, size: 32)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2913, file: !2674, line: 719, size: 32, elements: !2917)
!2917 = !{!2918, !2919, !2920, !2921}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2916, file: !2674, line: 720, baseType: !281, size: 8)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2916, file: !2674, line: 721, baseType: !281, size: 8, offset: 8)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2916, file: !2674, line: 722, baseType: !281, size: 8, offset: 16)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2916, file: !2674, line: 723, baseType: !281, size: 8, offset: 24)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2913, file: !2674, line: 725, baseType: !555, size: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2673, file: !2674, line: 850, baseType: !294, size: 128, offset: 8192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2673, file: !2674, line: 851, baseType: !2925, size: 64, offset: 8320)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2674, line: 60, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2673, file: !2674, line: 855, baseType: !313, size: 64, offset: 8384)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2673, file: !2674, line: 856, baseType: !281, size: 8, offset: 8448)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2673, file: !2674, line: 857, baseType: !281, size: 8, offset: 8456)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2673, file: !2674, line: 858, baseType: !158, size: 32, offset: 8480)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2673, file: !2674, line: 859, baseType: !294, size: 128, offset: 8512)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2673, file: !2674, line: 860, baseType: !158, size: 32, offset: 8640)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2673, file: !2674, line: 861, baseType: !294, size: 128, offset: 8704)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2673, file: !2674, line: 873, baseType: !2935, size: 256, offset: 8832)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2674, line: 376, size: 256, elements: !2936)
!2936 = !{!2937, !2938, !2939, !2940}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2935, file: !2674, line: 381, baseType: !313, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2935, file: !2674, line: 384, baseType: !500, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2935, file: !2674, line: 389, baseType: !500, size: 64, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2935, file: !2674, line: 392, baseType: !500, size: 64, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2673, file: !2674, line: 875, baseType: !294, size: 128, offset: 9088)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2673, file: !2674, line: 877, baseType: !2943, size: 320, offset: 9216)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2944, line: 86, size: 320, elements: !2945)
!2944 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2945 = !{!2946, !2947, !2948}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2943, file: !2944, line: 87, baseType: !158, size: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2943, file: !2944, line: 88, baseType: !294, size: 128, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2943, file: !2944, line: 89, baseType: !294, size: 128, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2673, file: !2674, line: 878, baseType: !522, size: 192, align: 64, offset: 9536)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2673, file: !2674, line: 881, baseType: !1274, size: 64, offset: 9728)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2673, file: !2674, line: 882, baseType: !1274, size: 64, offset: 9792)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2673, file: !2674, line: 884, baseType: !158, size: 32, offset: 9856)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2673, file: !2674, line: 885, baseType: !158, size: 32, offset: 9888)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2673, file: !2674, line: 886, baseType: !158, size: 32, offset: 9920)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2673, file: !2674, line: 888, baseType: !158, size: 32, offset: 9952)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2673, file: !2674, line: 890, baseType: !313, size: 64, offset: 9984)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2673, file: !2674, line: 893, baseType: !7, size: 32, offset: 10048)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2673, file: !2674, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2673, file: !2674, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2673, file: !2674, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2673, file: !2674, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2673, file: !2674, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2673, file: !2674, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2673, file: !2674, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2673, file: !2674, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2673, file: !2674, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2673, file: !2674, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2673, file: !2674, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2673, file: !2674, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2673, file: !2674, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2673, file: !2674, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2673, file: !2674, line: 969, baseType: !313, size: 64, offset: 10176)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2673, file: !2674, line: 971, baseType: !2974, size: 448, offset: 10240)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !80, line: 25, size: 448, elements: !2975)
!2975 = !{!2976, !2977, !2982}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2974, file: !80, line: 26, baseType: !313, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2974, file: !80, line: 27, baseType: !2978, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!869, !2981}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, scope: !2974, file: !80, line: 28, baseType: !2983, size: 320, offset: 128)
!2983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2974, file: !80, line: 28, size: 320, elements: !2984)
!2984 = !{!2985, !2995, !3020}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2983, file: !80, line: 37, baseType: !2986, size: 320)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !80, line: 30, size: 320, elements: !2987)
!2987 = !{!2988, !2990, !2991, !2992, !2993, !2994}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2986, file: !80, line: 31, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2986, file: !80, line: 32, baseType: !555, size: 32, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2986, file: !80, line: 33, baseType: !555, size: 32, offset: 96)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2986, file: !80, line: 34, baseType: !555, size: 32, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2986, file: !80, line: 35, baseType: !498, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2986, file: !80, line: 36, baseType: !2989, size: 64, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2983, file: !80, line: 47, baseType: !2996, size: 192)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !80, line: 39, size: 192, elements: !2997)
!2997 = !{!2998, !2999, !3000, !3019}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2996, file: !80, line: 40, baseType: !2829, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2996, file: !80, line: 41, baseType: !79, size: 32, offset: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, scope: !2996, file: !80, line: 42, baseType: !3001, size: 64, offset: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2996, file: !80, line: 42, size: 64, elements: !3002)
!3002 = !{!3003, !3011}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3001, file: !80, line: 43, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3006, line: 7, size: 128, elements: !3007)
!3006 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3007 = !{!3008, !3010}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3005, file: !3006, line: 8, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !311, line: 93, baseType: !320)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3005, file: !3006, line: 9, baseType: !320, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3001, file: !80, line: 44, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3014, line: 7, size: 64, elements: !3015)
!3014 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3015 = !{!3016, !3018}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3013, file: !3014, line: 8, baseType: !3017, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3014, line: 5, baseType: !515)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3013, file: !3014, line: 9, baseType: !515, size: 32, offset: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2996, file: !80, line: 46, baseType: !498, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2983, file: !80, line: 55, baseType: !3021, size: 256)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !80, line: 49, size: 256, elements: !3022)
!3022 = !{!3023, !3031, !3032, !3033, !3034}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3021, file: !80, line: 50, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3026, line: 36, size: 64, elements: !3027)
!3026 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3027 = !{!3028, !3029, !3030}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3025, file: !3026, line: 37, baseType: !158, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3025, file: !3026, line: 38, baseType: !560, size: 16, offset: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3025, file: !3026, line: 39, baseType: !560, size: 16, offset: 48)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3021, file: !80, line: 51, baseType: !158, size: 32, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3021, file: !80, line: 52, baseType: !158, size: 32, offset: 96)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3021, file: !80, line: 53, baseType: !313, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3021, file: !80, line: 54, baseType: !313, size: 64, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2673, file: !2674, line: 973, baseType: !3036, size: 32, offset: 10688)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !240, line: 27, baseType: !3037)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !311, line: 28, baseType: !158)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2673, file: !2674, line: 974, baseType: !3036, size: 32, offset: 10720)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2673, file: !2674, line: 978, baseType: !313, size: 64, offset: 10752)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2673, file: !2674, line: 987, baseType: !2672, size: 64, offset: 10816)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2673, file: !2674, line: 990, baseType: !2672, size: 64, offset: 10880)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2673, file: !2674, line: 995, baseType: !294, size: 128, offset: 10944)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2673, file: !2674, line: 996, baseType: !294, size: 128, offset: 11072)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2673, file: !2674, line: 997, baseType: !2672, size: 64, offset: 11200)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2673, file: !2674, line: 1005, baseType: !294, size: 128, offset: 11264)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2673, file: !2674, line: 1006, baseType: !294, size: 128, offset: 11392)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2673, file: !2674, line: 1009, baseType: !422, size: 64, offset: 11520)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2673, file: !2674, line: 1010, baseType: !3049, size: 512, offset: 11584)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 512, elements: !444)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2673, file: !2674, line: 1011, baseType: !294, size: 128, offset: 12096)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2673, file: !2674, line: 1012, baseType: !294, size: 128, offset: 12224)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2673, file: !2674, line: 1014, baseType: !1961, size: 64, offset: 12352)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2673, file: !2674, line: 1017, baseType: !2096, size: 64, offset: 12416)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2673, file: !2674, line: 1020, baseType: !2096, size: 64, offset: 12480)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2673, file: !2674, line: 1023, baseType: !103, size: 64, offset: 12544)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2673, file: !2674, line: 1025, baseType: !498, size: 64, offset: 12608)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2673, file: !2674, line: 1026, baseType: !498, size: 64, offset: 12672)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2673, file: !2674, line: 1031, baseType: !498, size: 64, offset: 12736)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2673, file: !2674, line: 1032, baseType: !3060, size: 192, offset: 12800)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2674, line: 324, size: 192, elements: !3061)
!3061 = !{!3062, !3063, !3064}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3060, file: !2674, line: 326, baseType: !498, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3060, file: !2674, line: 327, baseType: !498, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3060, file: !2674, line: 328, baseType: !336, size: 32, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2673, file: !2674, line: 1041, baseType: !313, size: 64, offset: 12992)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2673, file: !2674, line: 1042, baseType: !313, size: 64, offset: 13056)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2673, file: !2674, line: 1045, baseType: !498, size: 64, offset: 13120)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2673, file: !2674, line: 1048, baseType: !498, size: 64, offset: 13184)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2673, file: !2674, line: 1051, baseType: !313, size: 64, offset: 13248)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2673, file: !2674, line: 1052, baseType: !313, size: 64, offset: 13312)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2673, file: !2674, line: 1055, baseType: !3072, size: 640, offset: 13376)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3073, line: 132, size: 640, elements: !3074)
!3073 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3074 = !{!3075, !3081, !3082}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3072, file: !3073, line: 133, baseType: !3076, size: 576)
!3076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3077, size: 576, elements: !171)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3073, line: 117, size: 192, elements: !3078)
!3078 = !{!3079, !3080}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3077, file: !3073, line: 118, baseType: !498, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3077, file: !3073, line: 119, baseType: !2838, size: 128, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3072, file: !3073, line: 134, baseType: !7, size: 32, offset: 576)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3072, file: !3073, line: 135, baseType: !7, size: 32, offset: 608)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2673, file: !2674, line: 1058, baseType: !3084, size: 448, offset: 14016)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3073, line: 144, size: 448, elements: !3085)
!3085 = !{!3086, !3087, !3088}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3084, file: !3073, line: 145, baseType: !381, size: 128, align: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3084, file: !3073, line: 146, baseType: !323, size: 256, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3084, file: !3073, line: 147, baseType: !7, size: 32, offset: 384)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2673, file: !2674, line: 1064, baseType: !471, size: 64, offset: 14464)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2673, file: !2674, line: 1067, baseType: !471, size: 64, offset: 14528)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2673, file: !2674, line: 1070, baseType: !471, size: 64, offset: 14592)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2673, file: !2674, line: 1074, baseType: !507, size: 64, offset: 14656)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2673, file: !2674, line: 1084, baseType: !3094, size: 128, offset: 14720)
!3094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 128, elements: !3095)
!3095 = !{!3096}
!3096 = !DISubrange(count: 16)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2673, file: !2674, line: 1086, baseType: !3098, size: 64, offset: 14848)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2674, line: 55, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2673, file: !2674, line: 1089, baseType: !3101, size: 64, offset: 14912)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3102, line: 12, size: 64, elements: !3103)
!3102 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3103 = !{!3104}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3101, file: !3102, line: 13, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3102, line: 8, flags: DIFlagFwdDecl)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2673, file: !2674, line: 1090, baseType: !3108, size: 128, offset: 14976)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3109, line: 13, size: 128, elements: !3110)
!3109 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3110 = !{!3111}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3108, file: !3109, line: 14, baseType: !294, size: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2673, file: !2674, line: 1097, baseType: !3113, size: 64, offset: 15104)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2674, line: 50, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2673, file: !2674, line: 1100, baseType: !3116, size: 64, offset: 15168)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2674, line: 1100, flags: DIFlagFwdDecl)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2673, file: !2674, line: 1103, baseType: !3119, size: 64, offset: 15232)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2674, line: 53, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2673, file: !2674, line: 1107, baseType: !3122, size: 64, offset: 15296)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2674, line: 56, flags: DIFlagFwdDecl)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2673, file: !2674, line: 1110, baseType: !3125, size: 64, offset: 15360)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3127, line: 93, size: 8768, elements: !3128)
!3127 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3128 = !{!3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3176, !3185, !3186, !3188, !3189, !3190, !3193, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3231, !3232, !3239, !3249, !3252, !3253, !3256, !3257, !3258, !3259, !3260, !3261}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3126, file: !3127, line: 94, baseType: !426, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3126, file: !3127, line: 95, baseType: !239, size: 32, offset: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3126, file: !3127, line: 96, baseType: !158, size: 32, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3126, file: !3127, line: 97, baseType: !158, size: 32, offset: 96)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3126, file: !3127, line: 98, baseType: !294, size: 128, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3126, file: !3127, line: 100, baseType: !252, size: 192, offset: 256)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3126, file: !3127, line: 103, baseType: !2672, size: 64, offset: 448)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3126, file: !3127, line: 106, baseType: !3137, size: 192, offset: 512)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !681, line: 32, size: 192, elements: !3138)
!3138 = !{!3139, !3140}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3137, file: !681, line: 33, baseType: !294, size: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3137, file: !681, line: 34, baseType: !3141, size: 64, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3142, line: 25, baseType: !3143)
!3142 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3142, line: 23, size: 64, elements: !3144)
!3144 = !{!3145}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3143, file: !3142, line: 24, baseType: !2902, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3126, file: !3127, line: 109, baseType: !435, size: 64, offset: 704)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3126, file: !3127, line: 112, baseType: !158, size: 32, offset: 768)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3126, file: !3127, line: 114, baseType: !158, size: 32, offset: 800)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3126, file: !3127, line: 115, baseType: !2672, size: 64, offset: 832)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3126, file: !3127, line: 118, baseType: !158, size: 32, offset: 896)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3126, file: !3127, line: 119, baseType: !7, size: 32, offset: 928)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3126, file: !3127, line: 121, baseType: !3153, size: 64, offset: 960)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3127, line: 80, size: 448, elements: !3155)
!3155 = !{!3156, !3157, !3163}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3154, file: !3127, line: 81, baseType: !239, size: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3154, file: !3127, line: 82, baseType: !3158, size: 128, offset: 64)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3127, line: 75, size: 128, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3158, file: !3127, line: 76, baseType: !2672, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3158, file: !3127, line: 77, baseType: !3162, size: 64, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3154, file: !3127, line: 83, baseType: !1226, size: 256, offset: 192)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3126, file: !3127, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3126, file: !3127, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3126, file: !3127, line: 138, baseType: !7, size: 32, offset: 1056)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3126, file: !3127, line: 139, baseType: !294, size: 128, offset: 1088)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3126, file: !3127, line: 142, baseType: !2784, size: 512, offset: 1216)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3126, file: !3127, line: 143, baseType: !2792, size: 64, offset: 1728)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3126, file: !3127, line: 150, baseType: !3171, size: 256, offset: 1792)
!3171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3172, size: 256, elements: !197)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3127, line: 38, size: 128, elements: !3173)
!3173 = !{!3174, !3175}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3172, file: !3127, line: 39, baseType: !498, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3172, file: !3127, line: 40, baseType: !498, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3126, file: !3127, line: 156, baseType: !3177, size: 192, offset: 2048)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3127, line: 66, size: 192, elements: !3178)
!3178 = !{!3179}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3177, file: !3127, line: 67, baseType: !3180, size: 192)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3127, line: 47, size: 192, elements: !3181)
!3181 = !{!3182, !3183, !3184}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3180, file: !3127, line: 48, baseType: !329, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3180, file: !3127, line: 49, baseType: !329, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3180, file: !3127, line: 50, baseType: !329, size: 64, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3126, file: !3127, line: 160, baseType: !3072, size: 640, offset: 2240)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3126, file: !3127, line: 163, baseType: !3187, size: 256, offset: 2880)
!3187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 256, elements: !444)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3126, file: !3127, line: 169, baseType: !422, size: 64, offset: 3136)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3126, file: !3127, line: 172, baseType: !158, size: 32, offset: 3200)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3126, file: !3127, line: 174, baseType: !3191, size: 64, offset: 3264)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3127, line: 174, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3126, file: !3127, line: 185, baseType: !3194, size: 64, offset: 3328)
!3194 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !721, line: 860, baseType: !3195)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !721, line: 853, size: 64, elements: !3196)
!3196 = !{!3197, !3198}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3195, file: !721, line: 858, baseType: !720, size: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3195, file: !721, line: 859, baseType: !257, size: 32, offset: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3126, file: !3127, line: 186, baseType: !498, size: 64, offset: 3392)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3126, file: !3127, line: 186, baseType: !498, size: 64, offset: 3456)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3126, file: !3127, line: 186, baseType: !498, size: 64, offset: 3520)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3126, file: !3127, line: 186, baseType: !498, size: 64, offset: 3584)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3126, file: !3127, line: 187, baseType: !498, size: 64, offset: 3648)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3126, file: !3127, line: 188, baseType: !498, size: 64, offset: 3712)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3126, file: !3127, line: 189, baseType: !3060, size: 192, offset: 3776)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3126, file: !3127, line: 190, baseType: !313, size: 64, offset: 3968)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3126, file: !3127, line: 190, baseType: !313, size: 64, offset: 4032)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3126, file: !3127, line: 190, baseType: !313, size: 64, offset: 4096)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3126, file: !3127, line: 190, baseType: !313, size: 64, offset: 4160)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3126, file: !3127, line: 191, baseType: !313, size: 64, offset: 4224)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3126, file: !3127, line: 191, baseType: !313, size: 64, offset: 4288)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3126, file: !3127, line: 191, baseType: !313, size: 64, offset: 4352)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3126, file: !3127, line: 191, baseType: !313, size: 64, offset: 4416)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3126, file: !3127, line: 192, baseType: !313, size: 64, offset: 4480)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3126, file: !3127, line: 192, baseType: !313, size: 64, offset: 4544)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3126, file: !3127, line: 192, baseType: !313, size: 64, offset: 4608)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3126, file: !3127, line: 192, baseType: !313, size: 64, offset: 4672)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3126, file: !3127, line: 193, baseType: !313, size: 64, offset: 4736)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3126, file: !3127, line: 193, baseType: !313, size: 64, offset: 4800)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3126, file: !3127, line: 194, baseType: !3221, size: 448, offset: 4864)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3222, line: 12, size: 448, elements: !3223)
!3222 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3221, file: !3222, line: 15, baseType: !498, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3221, file: !3222, line: 17, baseType: !498, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3221, file: !3222, line: 19, baseType: !498, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3221, file: !3222, line: 21, baseType: !498, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3221, file: !3222, line: 29, baseType: !498, size: 64, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3221, file: !3222, line: 35, baseType: !498, size: 64, offset: 320)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3221, file: !3222, line: 44, baseType: !498, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3126, file: !3127, line: 202, baseType: !500, size: 64, offset: 5312)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3126, file: !3127, line: 213, baseType: !3233, size: 2048, offset: 5376)
!3233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3234, size: 2048, elements: !3095)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3235, line: 43, size: 128, elements: !3236)
!3235 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3236 = !{!3237, !3238}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3234, file: !3235, line: 44, baseType: !312, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3234, file: !3235, line: 45, baseType: !312, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3126, file: !3127, line: 216, baseType: !3240, size: 448, offset: 7424)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3127, line: 30, size: 448, elements: !3241)
!3241 = !{!3242, !3243, !3244, !3245, !3246, !3247, !3248}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3240, file: !3127, line: 31, baseType: !158, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3240, file: !3127, line: 32, baseType: !869, size: 64, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3240, file: !3127, line: 33, baseType: !313, size: 64, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3240, file: !3127, line: 34, baseType: !498, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3240, file: !3127, line: 34, baseType: !498, size: 64, offset: 256)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3240, file: !3127, line: 35, baseType: !313, size: 64, offset: 320)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3240, file: !3127, line: 35, baseType: !313, size: 64, offset: 384)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3126, file: !3127, line: 219, baseType: !3250, size: 64, offset: 7872)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3127, line: 219, flags: DIFlagFwdDecl)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3126, file: !3127, line: 222, baseType: !7, size: 32, offset: 7936)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3126, file: !3127, line: 223, baseType: !3254, size: 64, offset: 8000)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3127, line: 223, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3126, file: !3127, line: 230, baseType: !591, size: 8, offset: 8064)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3126, file: !3127, line: 231, baseType: !560, size: 16, offset: 8080)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3126, file: !3127, line: 232, baseType: !560, size: 16, offset: 8096)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3126, file: !3127, line: 234, baseType: !1274, size: 64, offset: 8128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3126, file: !3127, line: 237, baseType: !323, size: 256, offset: 8192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3126, file: !3127, line: 243, baseType: !530, size: 320, offset: 8448)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2673, file: !2674, line: 1111, baseType: !3263, size: 64, offset: 15424)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3127, line: 20, size: 16640, elements: !3265)
!3265 = !{!3266, !3267, !3268, !3269}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3264, file: !3127, line: 21, baseType: !257, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3264, file: !3127, line: 22, baseType: !426, size: 32, offset: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3264, file: !3127, line: 23, baseType: !252, size: 192, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3264, file: !3127, line: 24, baseType: !3270, size: 16384, offset: 256)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3271, size: 16384, elements: !1053)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !681, line: 51, size: 256, elements: !3272)
!3272 = !{!3273}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3271, file: !681, line: 52, baseType: !3274, size: 256)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !681, line: 37, size: 256, elements: !3275)
!3275 = !{!3276, !3283, !3284, !3288}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3274, file: !681, line: 39, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3278, line: 83, baseType: !3279)
!3278 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3278, line: 82, baseType: !3281)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{null, !158}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3274, file: !681, line: 40, baseType: !313, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3274, file: !681, line: 46, baseType: !3285, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3278, line: 86, baseType: !3286)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3278, line: 85, baseType: !2301)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3274, file: !681, line: 48, baseType: !3141, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2673, file: !2674, line: 1112, baseType: !3141, size: 64, offset: 15488)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2673, file: !2674, line: 1113, baseType: !3141, size: 64, offset: 15552)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2673, file: !2674, line: 1115, baseType: !3141, size: 64, offset: 15616)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2673, file: !2674, line: 1116, baseType: !3137, size: 192, offset: 15680)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2673, file: !2674, line: 1117, baseType: !313, size: 64, offset: 15872)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2673, file: !2674, line: 1118, baseType: !309, size: 64, offset: 15936)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2673, file: !2674, line: 1119, baseType: !7, size: 32, offset: 16000)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2673, file: !2674, line: 1121, baseType: !384, size: 64, offset: 16064)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2673, file: !2674, line: 1125, baseType: !3298, size: 64, offset: 16128)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2674, line: 43, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2673, file: !2674, line: 1127, baseType: !461, size: 32, offset: 16192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2673, file: !2674, line: 1128, baseType: !7, size: 32, offset: 16224)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2673, file: !2674, line: 1130, baseType: !3303, size: 128, offset: 16256)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3304, line: 37, size: 128, elements: !3305)
!3304 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3305 = !{!3306, !3307, !3308}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3303, file: !3304, line: 38, baseType: !158, size: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3303, file: !3304, line: 39, baseType: !239, size: 32, offset: 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3303, file: !3304, line: 40, baseType: !3309, size: 64, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3304, line: 24, flags: DIFlagFwdDecl)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2673, file: !2674, line: 1131, baseType: !3312, size: 256, offset: 16384)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3313, line: 12, size: 256, elements: !3314)
!3313 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3314 = !{!3315, !3316, !3317, !3318}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3312, file: !3313, line: 13, baseType: !301, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3312, file: !3313, line: 14, baseType: !313, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3312, file: !3313, line: 15, baseType: !313, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3312, file: !3313, line: 16, baseType: !591, size: 8, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2673, file: !2674, line: 1134, baseType: !498, size: 64, offset: 16640)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2673, file: !2674, line: 1135, baseType: !498, size: 64, offset: 16704)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2673, file: !2674, line: 1138, baseType: !257, size: 32, offset: 16768)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2673, file: !2674, line: 1141, baseType: !336, size: 32, offset: 16800)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2673, file: !2674, line: 1143, baseType: !3324, size: 64, offset: 16832)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2674, line: 735, size: 64, elements: !3325)
!3325 = !{!3326}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3324, file: !2674, line: 736, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2673, file: !2674, line: 1147, baseType: !1123, size: 128, offset: 16896)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2673, file: !2674, line: 1149, baseType: !2672, size: 64, offset: 17024)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2673, file: !2674, line: 1151, baseType: !3331, size: 64, offset: 17088)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2674, line: 1151, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2673, file: !2674, line: 1188, baseType: !103, size: 64, offset: 17152)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2673, file: !2674, line: 1191, baseType: !3335, size: 64, offset: 17216)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2674, line: 44, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2673, file: !2674, line: 1194, baseType: !3338, size: 64, offset: 17280)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2674, line: 45, flags: DIFlagFwdDecl)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2673, file: !2674, line: 1197, baseType: !3341, size: 64, offset: 17344)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2674, line: 61, flags: DIFlagFwdDecl)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2673, file: !2674, line: 1199, baseType: !3344, size: 64, offset: 17408)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3346, line: 99, size: 128, elements: !3347)
!3346 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3347 = !{!3348, !3349, !3350}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3345, file: !3346, line: 100, baseType: !327, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3345, file: !3346, line: 101, baseType: !239, size: 32, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3345, file: !3346, line: 103, baseType: !220, size: 16, offset: 96)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2673, file: !2674, line: 1202, baseType: !3352, size: 64, offset: 17472)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2674, line: 48, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2673, file: !2674, line: 1205, baseType: !313, size: 64, offset: 17536)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2673, file: !2674, line: 1206, baseType: !3356, size: 64, offset: 17600)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !681, line: 14, baseType: !3358)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !681, line: 12, size: 384, elements: !3359)
!3359 = !{!3360}
!3360 = !DIDerivedType(tag: DW_TAG_member, scope: !3358, file: !681, line: 13, baseType: !3361, size: 384)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3358, file: !681, line: 13, size: 384, elements: !3362)
!3362 = !{!3363, !3364, !3365, !3366}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3361, file: !681, line: 13, baseType: !158, size: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3361, file: !681, line: 13, baseType: !158, size: 32, offset: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3361, file: !681, line: 13, baseType: !158, size: 32, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3361, file: !681, line: 13, baseType: !3367, size: 256, offset: 128)
!3367 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3368, line: 37, size: 256, elements: !3369)
!3368 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3369 = !{!3370, !3375, !3388, !3394, !3403, !3430, !3435}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3367, file: !3368, line: 42, baseType: !3371, size: 64)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3367, file: !3368, line: 39, size: 64, elements: !3372)
!3372 = !{!3373, !3374}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3371, file: !3368, line: 40, baseType: !3037, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3371, file: !3368, line: 41, baseType: !467, size: 32, offset: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3367, file: !3368, line: 50, baseType: !3376, size: 192)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3367, file: !3368, line: 45, size: 192, elements: !3377)
!3377 = !{!3378, !3380, !3381, !3387}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3376, file: !3368, line: 46, baseType: !3379, size: 32)
!3379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !311, line: 95, baseType: !158)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3376, file: !3368, line: 47, baseType: !158, size: 32, offset: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3376, file: !3368, line: 48, baseType: !3382, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3368, line: 11, baseType: !3383)
!3383 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3368, line: 8, size: 64, elements: !3384)
!3384 = !{!3385, !3386}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3383, file: !3368, line: 9, baseType: !158, size: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3383, file: !3368, line: 10, baseType: !103, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3376, file: !3368, line: 49, baseType: !158, size: 32, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3367, file: !3368, line: 57, baseType: !3389, size: 128)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3367, file: !3368, line: 53, size: 128, elements: !3390)
!3390 = !{!3391, !3392, !3393}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3389, file: !3368, line: 54, baseType: !3037, size: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3389, file: !3368, line: 55, baseType: !467, size: 32, offset: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3389, file: !3368, line: 56, baseType: !3382, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3367, file: !3368, line: 66, baseType: !3395, size: 256)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3367, file: !3368, line: 60, size: 256, elements: !3396)
!3396 = !{!3397, !3398, !3399, !3400, !3402}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3395, file: !3368, line: 61, baseType: !3037, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3395, file: !3368, line: 62, baseType: !467, size: 32, offset: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3395, file: !3368, line: 63, baseType: !158, size: 32, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3395, file: !3368, line: 64, baseType: !3401, size: 64, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !311, line: 94, baseType: !911)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3395, file: !3368, line: 65, baseType: !3401, size: 64, offset: 192)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3367, file: !3368, line: 105, baseType: !3404, size: 256)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3367, file: !3368, line: 69, size: 256, elements: !3405)
!3405 = !{!3406, !3407}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3404, file: !3368, line: 70, baseType: !103, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, scope: !3404, file: !3368, line: 79, baseType: !3408, size: 192, offset: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3404, file: !3368, line: 79, size: 192, elements: !3409)
!3409 = !{!3410, !3411, !3412, !3419, !3424}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3408, file: !3368, line: 81, baseType: !158, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3408, file: !3368, line: 86, baseType: !560, size: 16)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3408, file: !3368, line: 92, baseType: !3413, size: 192)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3408, file: !3368, line: 88, size: 192, elements: !3414)
!3414 = !{!3415, !3417, !3418}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3413, file: !3368, line: 89, baseType: !3416, size: 64)
!3416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !201)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3413, file: !3368, line: 90, baseType: !103, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3413, file: !3368, line: 91, baseType: !103, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3408, file: !3368, line: 97, baseType: !3420, size: 96)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3408, file: !3368, line: 94, size: 96, elements: !3421)
!3421 = !{!3422, !3423}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3420, file: !3368, line: 95, baseType: !3416, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3420, file: !3368, line: 96, baseType: !556, size: 32, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3408, file: !3368, line: 103, baseType: !3425, size: 128)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3408, file: !3368, line: 99, size: 128, elements: !3426)
!3426 = !{!3427, !3428, !3429}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3425, file: !3368, line: 100, baseType: !313, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3425, file: !3368, line: 101, baseType: !556, size: 32, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3425, file: !3368, line: 102, baseType: !556, size: 32, offset: 96)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3367, file: !3368, line: 111, baseType: !3431, size: 128)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3367, file: !3368, line: 108, size: 128, elements: !3432)
!3432 = !{!3433, !3434}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3431, file: !3368, line: 109, baseType: !869, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3431, file: !3368, line: 110, baseType: !158, size: 32, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3367, file: !3368, line: 118, baseType: !3436, size: 128)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3367, file: !3368, line: 114, size: 128, elements: !3437)
!3437 = !{!3438, !3439, !3440}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3436, file: !3368, line: 115, baseType: !103, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3436, file: !3368, line: 116, baseType: !158, size: 32, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3436, file: !3368, line: 117, baseType: !7, size: 32, offset: 96)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2673, file: !2674, line: 1208, baseType: !3221, size: 448, offset: 17664)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2673, file: !2674, line: 1215, baseType: !498, size: 64, offset: 18112)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2673, file: !2674, line: 1217, baseType: !498, size: 64, offset: 18176)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2673, file: !2674, line: 1219, baseType: !498, size: 64, offset: 18240)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2673, file: !2674, line: 1223, baseType: !3446, size: 64, offset: 18304)
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3447, line: 99, baseType: !3448)
!3447 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3447, line: 99, size: 64, elements: !3449)
!3449 = !{!3450}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3448, file: !3447, line: 99, baseType: !2902, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2673, file: !2674, line: 1225, baseType: !720, size: 32, offset: 18368)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2673, file: !2674, line: 1226, baseType: !158, size: 32, offset: 18400)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2673, file: !2674, line: 1227, baseType: !158, size: 32, offset: 18432)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2673, file: !2674, line: 1231, baseType: !3455, size: 64, offset: 18496)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2674, line: 1231, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2673, file: !2674, line: 1233, baseType: !294, size: 128, offset: 18560)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2673, file: !2674, line: 1240, baseType: !3459, size: 64, offset: 18688)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2674, line: 62, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2673, file: !2674, line: 1242, baseType: !3462, size: 64, offset: 18752)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2674, line: 1242, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2673, file: !2674, line: 1244, baseType: !294, size: 128, offset: 18816)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2673, file: !2674, line: 1245, baseType: !3466, size: 64, offset: 18944)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2674, line: 51, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2673, file: !2674, line: 1246, baseType: !323, size: 256, offset: 19008)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2673, file: !2674, line: 1247, baseType: !7, size: 32, offset: 19264)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2673, file: !2674, line: 1250, baseType: !3471, size: 64, offset: 19328)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2674, line: 57, flags: DIFlagFwdDecl)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2673, file: !2674, line: 1251, baseType: !323, size: 256, offset: 19392)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2673, file: !2674, line: 1252, baseType: !294, size: 128, offset: 19648)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2673, file: !2674, line: 1259, baseType: !1520, size: 64, offset: 19776)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2673, file: !2674, line: 1260, baseType: !560, size: 16, offset: 19840)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2673, file: !2674, line: 1261, baseType: !560, size: 16, offset: 19856)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2673, file: !2674, line: 1314, baseType: !3479, size: 64, offset: 19904)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3481, line: 62, size: 256, align: 256, elements: !3482)
!3481 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3482 = !{!3483, !3484, !3485, !3486, !3487, !3488, !3489}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3480, file: !3481, line: 75, baseType: !556, size: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3480, file: !3481, line: 90, baseType: !556, size: 32, offset: 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3480, file: !3481, line: 112, baseType: !499, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3480, file: !3481, line: 132, baseType: !556, size: 32, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3480, file: !3481, line: 140, baseType: !556, size: 32, offset: 160)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3480, file: !3481, line: 149, baseType: !556, size: 32, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3480, file: !3481, line: 154, baseType: !3490, offset: 224)
!3490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, elements: !457)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2673, file: !2674, line: 1315, baseType: !555, size: 32, offset: 19968)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2673, file: !2674, line: 1316, baseType: !555, size: 32, offset: 20000)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2673, file: !2674, line: 1321, baseType: !313, size: 64, offset: 20032)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2673, file: !2674, line: 1325, baseType: !158, size: 32, offset: 20096)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2673, file: !2674, line: 1326, baseType: !158, size: 32, offset: 20128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2673, file: !2674, line: 1327, baseType: !158, size: 32, offset: 20160)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2673, file: !2674, line: 1328, baseType: !158, size: 32, offset: 20192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2673, file: !2674, line: 1329, baseType: !381, size: 128, align: 64, offset: 20224)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2673, file: !2674, line: 1332, baseType: !3500, size: 128, offset: 20352)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3501, line: 51, size: 128, elements: !3502)
!3501 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3502 = !{!3503, !3508, !3509}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3500, file: !3501, line: 60, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3505, line: 7, size: 64, elements: !3506)
!3505 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3506 = !{!3507}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3504, file: !3505, line: 12, baseType: !2899, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3500, file: !3501, line: 63, baseType: !591, size: 8, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3500, file: !3501, line: 70, baseType: !591, size: 8, offset: 72)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2673, file: !2674, line: 1335, baseType: !3511, size: 64, offset: 20480)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2674, line: 59, flags: DIFlagFwdDecl)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2673, file: !2674, line: 1337, baseType: !3514, size: 128, offset: 20544)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3501, line: 39, size: 128, elements: !3515)
!3515 = !{!3516, !3517, !3518}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3514, file: !3501, line: 40, baseType: !1141, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3514, file: !3501, line: 42, baseType: !556, size: 32, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3514, file: !3501, line: 43, baseType: !556, size: 32, offset: 96)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2673, file: !2674, line: 1340, baseType: !3520, size: 64, offset: 20672)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2674, line: 69, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2673, file: !2674, line: 1351, baseType: !158, size: 32, offset: 20736)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2673, file: !2674, line: 1352, baseType: !158, size: 32, offset: 20768)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2673, file: !2674, line: 1354, baseType: !313, size: 64, offset: 20800)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2673, file: !2674, line: 1364, baseType: !498, size: 64, offset: 20864)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2673, file: !2674, line: 1365, baseType: !498, size: 64, offset: 20928)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2673, file: !2674, line: 1412, baseType: !313, size: 64, offset: 20992)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2673, file: !2674, line: 1453, baseType: !3529, size: 64, offset: 21056)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2674, line: 1453, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2673, file: !2674, line: 1457, baseType: !3532, size: 64, offset: 21120)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !86, line: 61, size: 576, elements: !3534)
!3534 = !{!3535, !3536, !3555, !3558, !3559, !3592, !3602}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3533, file: !86, line: 62, baseType: !85, size: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, scope: !3533, file: !86, line: 64, baseType: !3537, size: 192, offset: 64)
!3537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3533, file: !86, line: 64, size: 192, elements: !3538)
!3538 = !{!3539, !3550}
!3539 = !DIDerivedType(tag: DW_TAG_member, scope: !3537, file: !86, line: 65, baseType: !3540, size: 192)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3537, file: !86, line: 65, size: 192, elements: !3541)
!3541 = !{!3542, !3549}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3540, file: !86, line: 66, baseType: !3543, size: 128)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3544, line: 50, size: 128, elements: !3545)
!3544 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3545 = !{!3546, !3547, !3548}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3543, file: !3544, line: 52, baseType: !313, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3543, file: !3544, line: 54, baseType: !7, size: 32, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3543, file: !3544, line: 55, baseType: !7, size: 32, offset: 96)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3540, file: !86, line: 67, baseType: !313, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, scope: !3537, file: !86, line: 70, baseType: !3551, size: 192)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3537, file: !86, line: 70, size: 192, elements: !3552)
!3552 = !{!3553, !3554}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3551, file: !86, line: 71, baseType: !381, size: 128, align: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3551, file: !86, line: 72, baseType: !313, size: 64, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3533, file: !86, line: 76, baseType: !3556, size: 64, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !86, line: 76, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3533, file: !86, line: 77, baseType: !313, size: 64, offset: 320)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3533, file: !86, line: 79, baseType: !3560, size: 64, offset: 384)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3544, line: 25, size: 256, elements: !3562)
!3562 = !{!3563, !3569, !3573}
!3563 = !DIDerivedType(tag: DW_TAG_member, scope: !3561, file: !3544, line: 26, baseType: !3564, size: 128)
!3564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3561, file: !3544, line: 26, size: 128, elements: !3565)
!3565 = !{!3566, !3568}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3564, file: !3544, line: 27, baseType: !3567, size: 128)
!3567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 128, elements: !3095)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3564, file: !3544, line: 28, baseType: !3567, size: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3561, file: !3544, line: 31, baseType: !3570, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3572)
!3572 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3544, line: 23, flags: DIFlagFwdDecl)
!3573 = !DIDerivedType(tag: DW_TAG_member, scope: !3561, file: !3544, line: 33, baseType: !3574, size: 64, offset: 192)
!3574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3561, file: !3544, line: 33, size: 64, elements: !3575)
!3575 = !{!3576, !3582, !3587}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3574, file: !3544, line: 38, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3574, file: !3544, line: 34, size: 64, elements: !3578)
!3578 = !{!3579, !3580, !3581}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3577, file: !3544, line: 35, baseType: !515, size: 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3577, file: !3544, line: 36, baseType: !281, size: 8, offset: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3577, file: !3544, line: 37, baseType: !281, size: 8, offset: 40)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3574, file: !3544, line: 42, baseType: !3583, size: 16)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3574, file: !3544, line: 39, size: 16, elements: !3584)
!3584 = !{!3585, !3586}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3583, file: !3544, line: 40, baseType: !281, size: 8)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3583, file: !3544, line: 41, baseType: !281, size: 8, offset: 8)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3574, file: !3544, line: 46, baseType: !3588, size: 16)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3574, file: !3544, line: 43, size: 16, elements: !3589)
!3589 = !{!3590, !3591}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3588, file: !3544, line: 44, baseType: !281, size: 8)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3588, file: !3544, line: 45, baseType: !281, size: 8, offset: 8)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3533, file: !86, line: 81, baseType: !3593, size: 64, offset: 448)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !86, line: 85, size: 384, elements: !3595)
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3594, file: !86, line: 86, baseType: !3556, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3594, file: !86, line: 87, baseType: !313, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3594, file: !86, line: 88, baseType: !313, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3594, file: !86, line: 89, baseType: !313, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3594, file: !86, line: 90, baseType: !591, size: 8, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3594, file: !86, line: 92, baseType: !3593, size: 64, offset: 320)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3533, file: !86, line: 82, baseType: !7, size: 32, offset: 512)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2673, file: !2674, line: 1463, baseType: !3604, offset: 21184)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2674, line: 739, elements: !1295)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2673, file: !2674, line: 1470, baseType: !381, size: 128, align: 64, offset: 21184)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2673, file: !2674, line: 1471, baseType: !426, size: 32, offset: 21312)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2673, file: !2674, line: 1472, baseType: !158, size: 32, offset: 21344)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2673, file: !2674, line: 1474, baseType: !2672, size: 64, offset: 21376)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2673, file: !2674, line: 1475, baseType: !2196, size: 320, offset: 21440)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2673, file: !2674, line: 1478, baseType: !3611, size: 64, offset: 21760)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3613, line: 14, flags: DIFlagFwdDecl)
!3613 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2673, file: !2674, line: 1482, baseType: !426, size: 32, offset: 21824)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2673, file: !2674, line: 1489, baseType: !103, size: 64, offset: 21888)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2673, file: !2674, line: 1504, baseType: !103, size: 64, offset: 21952)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2673, file: !2674, line: 1505, baseType: !499, size: 64, offset: 22016)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2673, file: !2674, line: 1506, baseType: !498, size: 64, offset: 22080)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2673, file: !2674, line: 1507, baseType: !499, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2673, file: !2674, line: 1508, baseType: !499, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2673, file: !2674, line: 1509, baseType: !499, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2673, file: !2674, line: 1510, baseType: !381, size: 128, align: 64, offset: 22208)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2673, file: !2674, line: 1511, baseType: !158, size: 32, offset: 22336)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2673, file: !2674, line: 1515, baseType: !3625, size: 64, offset: 22400)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !376, line: 56, size: 64, elements: !3626)
!3626 = !{!3627}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3625, file: !376, line: 57, baseType: !379, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2673, file: !2674, line: 1518, baseType: !3625, size: 64, offset: 22464)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2673, file: !2674, line: 1528, baseType: !381, size: 128, align: 64, offset: 22528)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2673, file: !2674, line: 1552, baseType: !3631, size: 35328, offset: 23040)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3632, line: 430, size: 35328, elements: !3633)
!3632 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3633 = !{!3634, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3663, !3664, !3665, !3666, !3667, !3668, !3671, !3672, !3673, !3674}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3631, file: !3632, line: 432, baseType: !3635, size: 192)
!3635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3636, size: 192, elements: !171)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3637, line: 16, size: 64, elements: !3638)
!3637 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3638 = !{!3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3636, file: !3637, line: 17, baseType: !290, size: 16)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3636, file: !3637, line: 18, baseType: !290, size: 16, offset: 16)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3636, file: !3637, line: 19, baseType: !290, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3636, file: !3637, line: 19, baseType: !290, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3636, file: !3637, line: 19, baseType: !290, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3636, file: !3637, line: 19, baseType: !290, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3636, file: !3637, line: 19, baseType: !290, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3636, file: !3637, line: 20, baseType: !290, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3636, file: !3637, line: 20, baseType: !290, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3636, file: !3637, line: 20, baseType: !290, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3636, file: !3637, line: 20, baseType: !290, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3636, file: !3637, line: 20, baseType: !290, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3636, file: !3637, line: 20, baseType: !290, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3631, file: !3632, line: 436, baseType: !313, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3631, file: !3632, line: 440, baseType: !220, size: 16, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3631, file: !3632, line: 441, baseType: !220, size: 16, offset: 272)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3631, file: !3632, line: 442, baseType: !220, size: 16, offset: 288)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3631, file: !3632, line: 443, baseType: !220, size: 16, offset: 304)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3631, file: !3632, line: 447, baseType: !313, size: 64, offset: 320)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3631, file: !3632, line: 448, baseType: !313, size: 64, offset: 384)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3631, file: !3632, line: 459, baseType: !3660, size: 256, offset: 448)
!3660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3661, size: 256, elements: !444)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3632, line: 428, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3631, file: !3632, line: 461, baseType: !313, size: 64, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3631, file: !3632, line: 463, baseType: !313, size: 64, offset: 768)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3631, file: !3632, line: 465, baseType: !313, size: 64, offset: 832)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3631, file: !3632, line: 466, baseType: !313, size: 64, offset: 896)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3631, file: !3632, line: 467, baseType: !313, size: 64, offset: 960)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3631, file: !3632, line: 473, baseType: !3669, size: 64, offset: 1024)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3632, line: 10, flags: DIFlagFwdDecl)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3631, file: !3632, line: 480, baseType: !313, size: 64, offset: 1088)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3631, file: !3632, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3631, file: !3632, line: 491, baseType: !555, size: 32, offset: 1184)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3631, file: !3632, line: 501, baseType: !3675, size: 33792, offset: 1536)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3676, line: 448, size: 33792, elements: !3677)
!3676 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3677 = !{!3678, !3679, !3680, !3842, !3843, !3849, !3850}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3675, file: !3676, line: 461, baseType: !7, size: 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3675, file: !3676, line: 468, baseType: !313, size: 64, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3675, file: !3676, line: 476, baseType: !3681, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3676, line: 356, size: 33280, align: 512, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3682, file: !3676, line: 358, baseType: !7, size: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3682, file: !3676, line: 361, baseType: !7, size: 32, offset: 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3682, file: !3676, line: 364, baseType: !498, size: 64, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3682, file: !3676, line: 367, baseType: !498, size: 64, offset: 128)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3682, file: !3676, line: 370, baseType: !498, size: 64, offset: 192)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3682, file: !3676, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3682, file: !3676, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3682, file: !3676, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3682, file: !3676, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3682, file: !3676, line: 397, baseType: !3694, size: 32768, offset: 512)
!3694 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3676, line: 348, size: 32768, elements: !3695)
!3695 = !{!3696, !3711, !3748, !3825, !3838}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3694, file: !3676, line: 349, baseType: !3697, size: 896)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3676, line: 12, size: 896, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3710}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3697, file: !3676, line: 13, baseType: !555, size: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3697, file: !3676, line: 14, baseType: !555, size: 32, offset: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3697, file: !3676, line: 15, baseType: !555, size: 32, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3697, file: !3676, line: 16, baseType: !555, size: 32, offset: 96)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3697, file: !3676, line: 17, baseType: !555, size: 32, offset: 128)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3697, file: !3676, line: 18, baseType: !555, size: 32, offset: 160)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3697, file: !3676, line: 19, baseType: !555, size: 32, offset: 192)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3697, file: !3676, line: 22, baseType: !3707, size: 640, offset: 224)
!3707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 640, elements: !3708)
!3708 = !{!3709}
!3709 = !DISubrange(count: 20)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3697, file: !3676, line: 25, baseType: !555, size: 32, offset: 864)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3694, file: !3676, line: 350, baseType: !3712, size: 4096, align: 128)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3676, line: 34, size: 4096, align: 128, elements: !3713)
!3713 = !{!3714, !3715, !3716, !3717, !3718, !3733, !3734, !3735, !3739, !3741, !3743}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3712, file: !3676, line: 35, baseType: !290, size: 16)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3712, file: !3676, line: 36, baseType: !290, size: 16, offset: 16)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3712, file: !3676, line: 37, baseType: !290, size: 16, offset: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3712, file: !3676, line: 38, baseType: !290, size: 16, offset: 48)
!3718 = !DIDerivedType(tag: DW_TAG_member, scope: !3712, file: !3676, line: 39, baseType: !3719, size: 128, offset: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3712, file: !3676, line: 39, size: 128, elements: !3720)
!3720 = !{!3721, !3726}
!3721 = !DIDerivedType(tag: DW_TAG_member, scope: !3719, file: !3676, line: 40, baseType: !3722, size: 128)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3719, file: !3676, line: 40, size: 128, elements: !3723)
!3723 = !{!3724, !3725}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3722, file: !3676, line: 41, baseType: !498, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3722, file: !3676, line: 42, baseType: !498, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, scope: !3719, file: !3676, line: 44, baseType: !3727, size: 128)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3719, file: !3676, line: 44, size: 128, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3732}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3727, file: !3676, line: 45, baseType: !555, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3727, file: !3676, line: 46, baseType: !555, size: 32, offset: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3727, file: !3676, line: 47, baseType: !555, size: 32, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3727, file: !3676, line: 48, baseType: !555, size: 32, offset: 96)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3712, file: !3676, line: 51, baseType: !555, size: 32, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3712, file: !3676, line: 52, baseType: !555, size: 32, offset: 224)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3712, file: !3676, line: 55, baseType: !3736, size: 1024, offset: 256)
!3736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 1024, elements: !3737)
!3737 = !{!3738}
!3738 = !DISubrange(count: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3712, file: !3676, line: 58, baseType: !3740, size: 2048, offset: 1280)
!3740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 2048, elements: !1053)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3712, file: !3676, line: 60, baseType: !3742, size: 384, offset: 3328)
!3742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 384, elements: !164)
!3743 = !DIDerivedType(tag: DW_TAG_member, scope: !3712, file: !3676, line: 62, baseType: !3744, size: 384, offset: 3712)
!3744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3712, file: !3676, line: 62, size: 384, elements: !3745)
!3745 = !{!3746, !3747}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3744, file: !3676, line: 63, baseType: !3742, size: 384)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3744, file: !3676, line: 64, baseType: !3742, size: 384)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3694, file: !3676, line: 351, baseType: !3749, size: 1088)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3676, line: 79, size: 1088, elements: !3750)
!3750 = !{!3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3824}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3749, file: !3676, line: 80, baseType: !555, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3749, file: !3676, line: 81, baseType: !555, size: 32, offset: 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3749, file: !3676, line: 82, baseType: !555, size: 32, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3749, file: !3676, line: 83, baseType: !555, size: 32, offset: 96)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3749, file: !3676, line: 84, baseType: !555, size: 32, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3749, file: !3676, line: 85, baseType: !555, size: 32, offset: 160)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3749, file: !3676, line: 86, baseType: !555, size: 32, offset: 192)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3749, file: !3676, line: 88, baseType: !3707, size: 640, offset: 224)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3749, file: !3676, line: 89, baseType: !281, size: 8, offset: 864)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3749, file: !3676, line: 90, baseType: !281, size: 8, offset: 872)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3749, file: !3676, line: 91, baseType: !281, size: 8, offset: 880)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3749, file: !3676, line: 92, baseType: !281, size: 8, offset: 888)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3749, file: !3676, line: 93, baseType: !281, size: 8, offset: 896)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3749, file: !3676, line: 94, baseType: !281, size: 8, offset: 904)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3749, file: !3676, line: 95, baseType: !3766, size: 64, offset: 960)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3768, line: 11, size: 128, elements: !3769)
!3768 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3769 = !{!3770, !3771}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3767, file: !3768, line: 12, baseType: !869, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3767, file: !3768, line: 13, baseType: !3772, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3774, line: 103, size: 1344, elements: !3775)
!3774 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3775 = !{!3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3804, !3805, !3806}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3773, file: !3774, line: 109, baseType: !313, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3773, file: !3774, line: 110, baseType: !313, size: 64, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3773, file: !3774, line: 111, baseType: !313, size: 64, offset: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3773, file: !3774, line: 112, baseType: !313, size: 64, offset: 192)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3773, file: !3774, line: 113, baseType: !313, size: 64, offset: 256)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3773, file: !3774, line: 114, baseType: !313, size: 64, offset: 320)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3773, file: !3774, line: 117, baseType: !313, size: 64, offset: 384)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3773, file: !3774, line: 118, baseType: !313, size: 64, offset: 448)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3773, file: !3774, line: 119, baseType: !313, size: 64, offset: 512)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3773, file: !3774, line: 120, baseType: !313, size: 64, offset: 576)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3773, file: !3774, line: 121, baseType: !313, size: 64, offset: 640)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3773, file: !3774, line: 122, baseType: !313, size: 64, offset: 704)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3773, file: !3774, line: 123, baseType: !313, size: 64, offset: 768)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3773, file: !3774, line: 124, baseType: !313, size: 64, offset: 832)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3773, file: !3774, line: 125, baseType: !313, size: 64, offset: 896)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3773, file: !3774, line: 139, baseType: !313, size: 64, offset: 960)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3773, file: !3774, line: 142, baseType: !313, size: 64, offset: 1024)
!3793 = !DIDerivedType(tag: DW_TAG_member, scope: !3773, file: !3774, line: 144, baseType: !3794, size: 64, offset: 1088)
!3794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3773, file: !3774, line: 144, size: 64, elements: !3795)
!3795 = !{!3796, !3797, !3798}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3794, file: !3774, line: 146, baseType: !290, size: 16)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3794, file: !3774, line: 148, baseType: !498, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3794, file: !3774, line: 150, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3774, line: 59, size: 64, elements: !3800)
!3800 = !{!3801, !3802, !3803}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3799, file: !3774, line: 61, baseType: !498, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3799, file: !3774, line: 63, baseType: !498, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3799, file: !3774, line: 65, baseType: !498, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3773, file: !3774, line: 153, baseType: !313, size: 64, offset: 1152)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3773, file: !3774, line: 154, baseType: !313, size: 64, offset: 1216)
!3806 = !DIDerivedType(tag: DW_TAG_member, scope: !3773, file: !3774, line: 156, baseType: !3807, size: 64, offset: 1280)
!3807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3773, file: !3774, line: 156, size: 64, elements: !3808)
!3808 = !{!3809, !3810, !3811}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3807, file: !3774, line: 158, baseType: !290, size: 16)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3807, file: !3774, line: 160, baseType: !498, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3807, file: !3774, line: 162, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3774, line: 69, size: 64, elements: !3813)
!3813 = !{!3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3812, file: !3774, line: 71, baseType: !498, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3812, file: !3774, line: 73, baseType: !498, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3812, file: !3774, line: 75, baseType: !498, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3812, file: !3774, line: 77, baseType: !498, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3812, file: !3774, line: 80, baseType: !498, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3812, file: !3774, line: 83, baseType: !498, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3812, file: !3774, line: 86, baseType: !498, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3812, file: !3774, line: 88, baseType: !498, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3812, file: !3774, line: 93, baseType: !498, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3812, file: !3774, line: 100, baseType: !498, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3749, file: !3676, line: 96, baseType: !555, size: 32, offset: 1024)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3694, file: !3676, line: 352, baseType: !3826, size: 4608, align: 512)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3676, line: 333, size: 4608, align: 512, elements: !3827)
!3827 = !{!3828, !3829, !3836}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3826, file: !3676, line: 334, baseType: !3712, size: 4096, align: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3826, file: !3676, line: 335, baseType: !3830, size: 512, offset: 4096)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3676, line: 312, size: 512, elements: !3831)
!3831 = !{!3832, !3833, !3834}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3830, file: !3676, line: 313, baseType: !498, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3830, file: !3676, line: 314, baseType: !498, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3830, file: !3676, line: 315, baseType: !3835, size: 384, offset: 128)
!3835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 384, elements: !578)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3826, file: !3676, line: 336, baseType: !3837, offset: 4608)
!3837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, elements: !457)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3694, file: !3676, line: 353, baseType: !3839, size: 32768)
!3839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 32768, elements: !3840)
!3840 = !{!3841}
!3841 = !DISubrange(count: 4096)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3675, file: !3676, line: 484, baseType: !3681, size: 64, offset: 192)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3675, file: !3676, line: 491, baseType: !3844, size: 128, offset: 256)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3676, line: 404, size: 128, elements: !3845)
!3845 = !{!3846, !3847, !3848}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3844, file: !3676, line: 424, baseType: !498, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3844, file: !3676, line: 432, baseType: !7, size: 32, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3844, file: !3676, line: 440, baseType: !7, size: 32, offset: 96)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3675, file: !3676, line: 498, baseType: !3844, size: 128, offset: 384)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3675, file: !3676, line: 508, baseType: !3682, size: 33280, align: 512, offset: 512)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2655, file: !2656, line: 16, baseType: !252, size: 192, offset: 512)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2655, file: !2656, line: 17, baseType: !239, size: 32, offset: 704)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !965, file: !64, line: 1240, baseType: !103, size: 64, offset: 6912)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !965, file: !64, line: 1243, baseType: !555, size: 32, offset: 6976)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !965, file: !64, line: 1245, baseType: !546, size: 64, offset: 7040)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !965, file: !64, line: 1246, baseType: !546, size: 64, offset: 7104)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !965, file: !64, line: 1248, baseType: !556, size: 32, offset: 7168)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !965, file: !64, line: 1249, baseType: !3859, size: 64, offset: 7232)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !64, line: 634, flags: DIFlagFwdDecl)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !965, file: !64, line: 1252, baseType: !3862, size: 256, offset: 7296)
!3862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 256, elements: !3737)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !965, file: !64, line: 1253, baseType: !3864, size: 128, offset: 7552)
!3864 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3865, line: 21, baseType: !3866)
!3865 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3865, line: 19, size: 128, elements: !3867)
!3867 = !{!3868}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3866, file: !3865, line: 20, baseType: !3869, size: 128)
!3869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 128, elements: !3095)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !965, file: !64, line: 1255, baseType: !7, size: 32, offset: 7680)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !965, file: !64, line: 1261, baseType: !323, size: 256, offset: 7744)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !965, file: !64, line: 1267, baseType: !594, size: 64, offset: 8000)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !965, file: !64, line: 1269, baseType: !3874, size: 64, offset: 8064)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3876)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !716, line: 128, size: 1024, align: 512, elements: !3877)
!3877 = !{!3878, !3882, !3883, !3890, !3896, !3900, !3904, !3908, !3909, !3913, !3917, !3922, !3926}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3876, file: !716, line: 129, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!158, !714, !7}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3876, file: !716, line: 130, baseType: !3879, size: 64, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3876, file: !716, line: 131, baseType: !3884, size: 64, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!158, !3887, !3889}
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3876, file: !716, line: 132, baseType: !3891, size: 64, offset: 192)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!158, !3887, !7, !594, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3876, file: !716, line: 134, baseType: !3897, size: 64, offset: 256)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!158, !3887}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3876, file: !716, line: 135, baseType: !3901, size: 64, offset: 320)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!158, !714}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3876, file: !716, line: 136, baseType: !3905, size: 64, offset: 384)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{null, !714}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3876, file: !716, line: 137, baseType: !3905, size: 64, offset: 448)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3876, file: !716, line: 138, baseType: !3910, size: 64, offset: 512)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{null, !714, !754}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3876, file: !716, line: 139, baseType: !3914, size: 64, offset: 576)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!301, !714, !301, !158}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3876, file: !716, line: 140, baseType: !3918, size: 64, offset: 640)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!709, !3921}
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3876, file: !716, line: 141, baseType: !3923, size: 64, offset: 704)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!158, !878, !591}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3876, file: !716, line: 142, baseType: !3927, size: 64, offset: 768)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!714, !714, !3930}
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !965, file: !64, line: 1271, baseType: !3933, size: 448, offset: 8128)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2437, line: 63, size: 448, elements: !3934)
!3934 = !{!3935, !3940, !3941, !3942, !3943, !3944, !3945}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3933, file: !2437, line: 64, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!313, !3939, !2435}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3933, file: !2437, line: 66, baseType: !3936, size: 64, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3933, file: !2437, line: 69, baseType: !869, size: 64, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3933, file: !2437, line: 70, baseType: !158, size: 32, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3933, file: !2437, line: 71, baseType: !7, size: 32, offset: 224)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3933, file: !2437, line: 74, baseType: !294, size: 128, offset: 256)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3933, file: !2437, line: 85, baseType: !3946, size: 64, offset: 384)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !965, file: !64, line: 1274, baseType: !327, size: 64, offset: 8576)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !965, file: !64, line: 1280, baseType: !327, size: 64, offset: 8640)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !965, file: !64, line: 1283, baseType: !158, size: 32, offset: 8704)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !965, file: !64, line: 1286, baseType: !1784, size: 32, offset: 8736)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !965, file: !64, line: 1289, baseType: !2258, size: 64, offset: 8768)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !965, file: !64, line: 1290, baseType: !435, size: 64, offset: 8832)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !965, file: !64, line: 1297, baseType: !676, size: 64, offset: 8896)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !965, file: !64, line: 1304, baseType: !3955, size: 64, offset: 8960)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3956, line: 49, size: 64, elements: !3957)
!3956 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3957 = !{!3958}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3955, file: !3956, line: 50, baseType: !3959, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3956, line: 41, size: 512, align: 512, elements: !3961)
!3961 = !{!3962, !3963, !3968}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3960, file: !3956, line: 43, baseType: !257, size: 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3960, file: !3956, line: 45, baseType: !3964, size: 192, offset: 64)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3956, line: 29, size: 192, elements: !3965)
!3965 = !{!3966, !3967}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3964, file: !3956, line: 30, baseType: !294, size: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3964, file: !3956, line: 32, baseType: !869, size: 64, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3960, file: !3956, line: 46, baseType: !869, size: 64, offset: 256)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !965, file: !64, line: 1305, baseType: !3955, size: 64, offset: 9024)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !965, file: !64, line: 1306, baseType: !381, size: 128, align: 64, offset: 9088)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !965, file: !64, line: 1307, baseType: !1429, size: 256, offset: 9216)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !965, file: !64, line: 1309, baseType: !323, size: 256, offset: 9472)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !965, file: !64, line: 1314, baseType: !158, size: 32, offset: 9728)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !965, file: !64, line: 1317, baseType: !257, size: 32, align: 512, offset: 10240)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !965, file: !64, line: 1318, baseType: !294, size: 128, offset: 10304)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !965, file: !64, line: 1320, baseType: !257, size: 32, offset: 10432)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !965, file: !64, line: 1321, baseType: !294, size: 128, offset: 10496)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !755, file: !64, line: 656, baseType: !1114, size: 64, offset: 512)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !755, file: !64, line: 659, baseType: !103, size: 64, offset: 576)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !755, file: !64, line: 663, baseType: !313, size: 64, offset: 640)
!3981 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !64, line: 671, baseType: !3982, size: 32, offset: 704)
!3982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !64, line: 671, size: 32, elements: !3983)
!3983 = !{!3984, !3986}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3982, file: !64, line: 672, baseType: !3985, size: 32)
!3985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3982, file: !64, line: 673, baseType: !7, size: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !755, file: !64, line: 675, baseType: !829, size: 32, offset: 736)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !755, file: !64, line: 676, baseType: !318, size: 64, offset: 768)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !755, file: !64, line: 677, baseType: !865, size: 128, offset: 832)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !755, file: !64, line: 678, baseType: !865, size: 128, offset: 960)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !755, file: !64, line: 679, baseType: !865, size: 128, offset: 1088)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !755, file: !64, line: 680, baseType: !257, size: 32, offset: 1216)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !755, file: !64, line: 681, baseType: !220, size: 16, offset: 1248)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !755, file: !64, line: 682, baseType: !281, size: 8, offset: 1264)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !755, file: !64, line: 683, baseType: !281, size: 8, offset: 1272)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !755, file: !64, line: 684, baseType: !2568, size: 64, offset: 1280)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !755, file: !64, line: 691, baseType: !313, size: 64, offset: 1344)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !755, file: !64, line: 692, baseType: !530, size: 320, offset: 1408)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !755, file: !64, line: 694, baseType: !313, size: 64, offset: 1728)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !755, file: !64, line: 695, baseType: !313, size: 64, offset: 1792)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !755, file: !64, line: 697, baseType: !439, size: 128, offset: 1856)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !755, file: !64, line: 698, baseType: !294, size: 128, offset: 1984)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !755, file: !64, line: 707, baseType: !294, size: 128, offset: 2112)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !755, file: !64, line: 708, baseType: !294, size: 128, offset: 2240)
!4005 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !64, line: 709, baseType: !4006, size: 128, offset: 2368)
!4006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !64, line: 709, size: 128, elements: !4007)
!4007 = !{!4008, !4009}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4006, file: !64, line: 710, baseType: !435, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4006, file: !64, line: 711, baseType: !381, size: 128, align: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !755, file: !64, line: 713, baseType: !329, size: 64, offset: 2496)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !755, file: !64, line: 714, baseType: !329, size: 64, offset: 2560)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !755, file: !64, line: 715, baseType: !239, size: 32, offset: 2624)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !755, file: !64, line: 716, baseType: !239, size: 32, offset: 2656)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !755, file: !64, line: 717, baseType: !239, size: 32, offset: 2688)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !755, file: !64, line: 719, baseType: !239, size: 32, offset: 2720)
!4016 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !64, line: 721, baseType: !4017, size: 64, offset: 2752)
!4017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !64, line: 721, size: 64, elements: !4018)
!4018 = !{!4019, !4143}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4017, file: !64, line: 722, baseType: !4020, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4022)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !64, line: 1914, size: 2112, elements: !4023)
!4023 = !{!4024, !4025, !4029, !4033, !4037, !4038, !4039, !4045, !4058, !4062, !4066, !4067, !4071, !4072, !4076, !4081, !4082, !4086, !4090, !4096, !4097, !4101, !4102, !4106, !4110, !4111, !4116, !4120, !4124, !4128, !4132, !4133, !4139}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4022, file: !64, line: 1915, baseType: !997, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4022, file: !64, line: 1916, baseType: !4026, size: 64, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!318, !873, !318, !158}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4022, file: !64, line: 1917, baseType: !4030, size: 64, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!909, !873, !301, !309, !352}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4022, file: !64, line: 1918, baseType: !4034, size: 64, offset: 192)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!909, !873, !594, !309, !352}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4022, file: !64, line: 1919, baseType: !1718, size: 64, offset: 256)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4022, file: !64, line: 1920, baseType: !1718, size: 64, offset: 320)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4022, file: !64, line: 1921, baseType: !4040, size: 64, offset: 384)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!158, !1721, !4043, !7}
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !64, line: 53, flags: DIFlagFwdDecl)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4022, file: !64, line: 1923, baseType: !4046, size: 64, offset: 448)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!158, !873, !4049}
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !64, line: 1858, size: 128, elements: !4051)
!4051 = !{!4052, !4057}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4050, file: !64, line: 1859, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !64, line: 1855, baseType: !4054)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!591, !4049, !594, !158, !318, !498, !7}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4050, file: !64, line: 1860, baseType: !318, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4022, file: !64, line: 1924, baseType: !4059, size: 64, offset: 512)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!1915, !873, !1917}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4022, file: !64, line: 1925, baseType: !4063, size: 64, offset: 576)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!869, !873, !7, !313}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4022, file: !64, line: 1926, baseType: !4063, size: 64, offset: 640)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4022, file: !64, line: 1927, baseType: !4068, size: 64, offset: 704)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!158, !873, !1261}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4022, file: !64, line: 1928, baseType: !313, size: 64, offset: 768)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4022, file: !64, line: 1929, baseType: !4073, size: 64, offset: 832)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!158, !754, !873}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4022, file: !64, line: 1930, baseType: !4077, size: 64, offset: 896)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!158, !873, !4080}
!4080 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !64, line: 1061, baseType: !103)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4022, file: !64, line: 1931, baseType: !4073, size: 64, offset: 960)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4022, file: !64, line: 1932, baseType: !4083, size: 64, offset: 1024)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!158, !873, !318, !318, !158}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4022, file: !64, line: 1933, baseType: !4087, size: 64, offset: 1088)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!158, !158, !873, !158}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4022, file: !64, line: 1934, baseType: !4091, size: 64, offset: 1152)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!158, !873, !158, !4094}
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !64, line: 1063, flags: DIFlagFwdDecl)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4022, file: !64, line: 1935, baseType: !1299, size: 64, offset: 1216)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4022, file: !64, line: 1936, baseType: !4098, size: 64, offset: 1280)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!158, !158}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4022, file: !64, line: 1937, baseType: !4091, size: 64, offset: 1344)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4022, file: !64, line: 1938, baseType: !4103, size: 64, offset: 1408)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!909, !3511, !873, !352, !309, !7}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4022, file: !64, line: 1939, baseType: !4107, size: 64, offset: 1472)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!909, !873, !352, !3511, !309, !7}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4022, file: !64, line: 1940, baseType: !1774, size: 64, offset: 1536)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4022, file: !64, line: 1941, baseType: !4112, size: 64, offset: 1600)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!158, !873, !158, !4115, !1695}
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4022, file: !64, line: 1942, baseType: !4117, size: 64, offset: 1664)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!869, !873, !158, !318, !318}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4022, file: !64, line: 1944, baseType: !4121, size: 64, offset: 1728)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{null, !303, !873}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4022, file: !64, line: 1948, baseType: !4125, size: 64, offset: 1792)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!909, !873, !318, !873, !318, !309, !7}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4022, file: !64, line: 1950, baseType: !4129, size: 64, offset: 1856)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!318, !873, !318, !873, !318, !318, !7}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4022, file: !64, line: 1953, baseType: !4083, size: 64, offset: 1920)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4022, file: !64, line: 1954, baseType: !4134, size: 64, offset: 1984)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!158, !4137, !7}
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !64, line: 1911, flags: DIFlagFwdDecl)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4022, file: !64, line: 1955, baseType: !4140, size: 64, offset: 2048)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!158, !4137, !4043, !7}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4017, file: !64, line: 723, baseType: !2326, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !755, file: !64, line: 725, baseType: !4145, size: 64, offset: 2816)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !64, line: 725, flags: DIFlagFwdDecl)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !755, file: !64, line: 726, baseType: !1115, size: 1536, align: 64, offset: 2880)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !755, file: !64, line: 727, baseType: !294, size: 128, offset: 4416)
!4149 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !64, line: 728, baseType: !4150, size: 64, offset: 4544)
!4150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !64, line: 728, size: 64, elements: !4151)
!4151 = !{!4152, !4153, !4156, !4157}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4150, file: !64, line: 729, baseType: !3511, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4150, file: !64, line: 730, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !64, line: 730, flags: DIFlagFwdDecl)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4150, file: !64, line: 731, baseType: !301, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4150, file: !64, line: 732, baseType: !7, size: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !755, file: !64, line: 735, baseType: !556, size: 32, offset: 4608)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !755, file: !64, line: 738, baseType: !556, size: 32, offset: 4640)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !755, file: !64, line: 739, baseType: !3859, size: 64, offset: 4672)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !755, file: !64, line: 750, baseType: !103, size: 64, offset: 4736)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !715, file: !716, line: 91, baseType: !4163, size: 256, offset: 448)
!4163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !3737)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !715, file: !716, line: 94, baseType: !4165, size: 64, offset: 704)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4166, line: 25, size: 64, elements: !4167)
!4166 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4167 = !{!4168}
!4168 = !DIDerivedType(tag: DW_TAG_member, scope: !4165, file: !4166, line: 26, baseType: !4169, size: 64)
!4169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4165, file: !4166, line: 26, size: 64, elements: !4170)
!4170 = !{!4171, !4172}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4169, file: !4166, line: 28, baseType: !499, size: 64, align: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, scope: !4169, file: !4166, line: 30, baseType: !4173, size: 64)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4169, file: !4166, line: 30, size: 64, elements: !4174)
!4174 = !{!4175, !4176}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4173, file: !4166, line: 31, baseType: !257, size: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4173, file: !4166, line: 32, baseType: !158, size: 32, offset: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !715, file: !716, line: 95, baseType: !3874, size: 64, offset: 768)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !715, file: !716, line: 96, baseType: !964, size: 64, offset: 832)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !715, file: !716, line: 97, baseType: !313, size: 64, offset: 896)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !715, file: !716, line: 98, baseType: !103, size: 64, offset: 960)
!4181 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !716, line: 100, baseType: !4182, size: 128, offset: 1024)
!4182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !716, line: 100, size: 128, elements: !4183)
!4183 = !{!4184, !4185}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4182, file: !716, line: 101, baseType: !294, size: 128)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4182, file: !716, line: 102, baseType: !1926, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !715, file: !716, line: 104, baseType: !294, size: 128, offset: 1152)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !715, file: !716, line: 105, baseType: !294, size: 128, offset: 1280)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !715, file: !716, line: 113, baseType: !4189, size: 128, offset: 1408)
!4189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !716, line: 109, size: 128, elements: !4190)
!4190 = !{!4191, !4192, !4193}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4189, file: !716, line: 110, baseType: !439, size: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4189, file: !716, line: 111, baseType: !730, size: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4189, file: !716, line: 112, baseType: !381, size: 128, align: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !710, file: !711, line: 72, baseType: !964, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !710, file: !711, line: 73, baseType: !158, size: 32, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !710, file: !711, line: 74, baseType: !794, size: 64, offset: 192)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !705, file: !706, line: 10, baseType: !714, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !369, file: !64, line: 1015, baseType: !754, size: 64, offset: 1344)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !369, file: !64, line: 1016, baseType: !4020, size: 64, offset: 1408)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !369, file: !64, line: 1018, baseType: !498, size: 64, offset: 1472)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !369, file: !64, line: 1020, baseType: !103, size: 64, offset: 1536)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !369, file: !64, line: 1023, baseType: !103, size: 64, offset: 1600)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !369, file: !64, line: 1027, baseType: !4204, size: 64, offset: 1664)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !369, file: !64, line: 1029, baseType: !1114, size: 64, offset: 1728)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !369, file: !64, line: 1030, baseType: !1784, size: 32, offset: 1792)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !369, file: !64, line: 1031, baseType: !1784, size: 32, offset: 1824)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !304, file: !305, line: 29, baseType: !103, size: 64, offset: 896)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4211)
!4211 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !297)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !240, line: 42, baseType: !313)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4217)
!4217 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !158)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4219 = !{!0, !4220, !4222, !4224, !4232, !4235, !4240, !4242, !4244, !4246, !4248, !4254}
!4220 = !DIGlobalVariableExpression(var: !4221, expr: !DIExpression())
!4221 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_seq_expand_var_event290", scope: !2, file: !3, line: 199, type: !103, isLocal: true, isDefinition: true)
!4222 = !DIGlobalVariableExpression(var: !4223, expr: !DIExpression())
!4223 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_seq_expand_var_event_at291", scope: !2, file: !3, line: 219, type: !103, isLocal: true, isDefinition: true)
!4224 = !DIGlobalVariableExpression(var: !4225, expr: !DIExpression())
!4225 = distinct !DIGlobalVariable(name: "__key", scope: !4226, file: !3, line: 536, type: !2307, isLocal: true, isDefinition: true)
!4226 = distinct !DISubprogram(name: "snd_seq_pool_new", scope: !3, file: !3, line: 522, type: !4227, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4229)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!232, !158}
!4229 = !{!4230, !4231}
!4230 = !DILocalVariable(name: "poolsize", arg: 1, scope: !4226, file: !3, line: 522, type: !158)
!4231 = !DILocalVariable(name: "pool", scope: !4226, file: !3, line: 524, type: !232)
!4232 = !DIGlobalVariableExpression(var: !4233, expr: !DIExpression())
!4233 = distinct !DIGlobalVariable(scope: null, file: !3, line: 536, type: !4234, isLocal: true, isDefinition: true)
!4234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 160, elements: !3708)
!4235 = !DIGlobalVariableExpression(var: !4236, expr: !DIExpression())
!4236 = distinct !DIGlobalVariable(scope: null, file: !3, line: 565, type: !4237, isLocal: true, isDefinition: true)
!4237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 216, elements: !4238)
!4238 = !{!4239}
!4239 = !DISubrange(count: 27)
!4240 = !DIGlobalVariableExpression(var: !4241, expr: !DIExpression())
!4241 = distinct !DIGlobalVariable(scope: null, file: !3, line: 566, type: !4237, isLocal: true, isDefinition: true)
!4242 = !DIGlobalVariableExpression(var: !4243, expr: !DIExpression())
!4243 = distinct !DIGlobalVariable(scope: null, file: !3, line: 567, type: !4237, isLocal: true, isDefinition: true)
!4244 = !DIGlobalVariableExpression(var: !4245, expr: !DIExpression())
!4245 = distinct !DIGlobalVariable(scope: null, file: !3, line: 568, type: !4237, isLocal: true, isDefinition: true)
!4246 = !DIGlobalVariableExpression(var: !4247, expr: !DIExpression())
!4247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 569, type: !4237, isLocal: true, isDefinition: true)
!4248 = !DIGlobalVariableExpression(var: !4249, expr: !DIExpression())
!4249 = distinct !DIGlobalVariable(scope: null, file: !4250, line: 249, type: !4251, isLocal: true, isDefinition: true)
!4250 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 224, elements: !4252)
!4252 = !{!4253}
!4253 = !DISubrange(count: 28)
!4254 = !DIGlobalVariableExpression(var: !4255, expr: !DIExpression())
!4255 = distinct !DIGlobalVariable(scope: null, file: !93, line: 480, type: !4256, isLocal: true, isDefinition: true)
!4256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 168, elements: !4257)
!4257 = !{!4258}
!4258 = !DISubrange(count: 21)
!4259 = !{!"rsp"}
!4260 = !{i32 7, !"Dwarf Version", i32 5}
!4261 = !{i32 2, !"Debug Info Version", i32 3}
!4262 = !{i32 1, !"wchar_size", i32 2}
!4263 = !{i32 8, !"cf-protection-branch", i32 1}
!4264 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4265 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4266 = !{i32 1, !"Code Model", i32 2}
!4267 = !{i32 1, !"override-stack-alignment", i32 8}
!4268 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4269 = distinct !DISubprogram(name: "snd_seq_dump_var_event", scope: !3, file: !3, line: 125, type: !4270, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4279)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!158, !4272, !4274, !103}
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!4274 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_dump_func_t", file: !4275, line: 70, baseType: !4276)
!4275 = !DIFile(filename: "./include/sound/seq_kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "583a8c45ab6a5155295b27a2a548f2e3")
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!158, !103, !103, !158}
!4279 = !{!4280, !4281, !4282}
!4280 = !DILocalVariable(name: "event", arg: 1, scope: !4269, file: !3, line: 125, type: !4272)
!4281 = !DILocalVariable(name: "func", arg: 2, scope: !4269, file: !3, line: 126, type: !4274)
!4282 = !DILocalVariable(name: "private_data", arg: 3, scope: !4269, file: !3, line: 126, type: !103)
!4283 = !DILocation(line: 125, column: 56, scope: !4269)
!4284 = !DILocation(line: 126, column: 27, scope: !4269)
!4285 = !DILocation(line: 126, column: 39, scope: !4269)
!4286 = !DILocation(line: 128, column: 24, scope: !4269)
!4287 = !DILocation(line: 128, column: 31, scope: !4269)
!4288 = !DILocation(line: 128, column: 37, scope: !4269)
!4289 = !DILocation(line: 128, column: 9, scope: !4269)
!4290 = !DILocation(line: 128, column: 2, scope: !4269)
!4291 = distinct !DISubprogram(name: "dump_var_event", scope: !3, file: !3, line: 66, type: !4292, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4294)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!158, !4272, !4274, !103, !158, !158}
!4294 = !{!4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4306, !4307, !4309, !4313}
!4295 = !DILocalVariable(name: "event", arg: 1, scope: !4291, file: !3, line: 66, type: !4272)
!4296 = !DILocalVariable(name: "func", arg: 2, scope: !4291, file: !3, line: 67, type: !4274)
!4297 = !DILocalVariable(name: "private_data", arg: 3, scope: !4291, file: !3, line: 67, type: !103)
!4298 = !DILocalVariable(name: "offset", arg: 4, scope: !4291, file: !3, line: 68, type: !158)
!4299 = !DILocalVariable(name: "maxlen", arg: 5, scope: !4291, file: !3, line: 68, type: !158)
!4300 = !DILocalVariable(name: "len", scope: !4291, file: !3, line: 70, type: !158)
!4301 = !DILocalVariable(name: "err", scope: !4291, file: !3, line: 70, type: !158)
!4302 = !DILocalVariable(name: "cell", scope: !4291, file: !3, line: 71, type: !104)
!4303 = !DILocalVariable(name: "buf", scope: !4304, file: !3, line: 82, type: !3862)
!4304 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 81, column: 50)
!4305 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 81, column: 6)
!4306 = !DILocalVariable(name: "curptr", scope: !4304, file: !3, line: 83, type: !301)
!4307 = !DILocalVariable(name: "size", scope: !4308, file: !3, line: 87, type: !158)
!4308 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 86, column: 19)
!4309 = !DILocalVariable(name: "size", scope: !4310, file: !3, line: 106, type: !158)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 105, column: 45)
!4311 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 105, column: 2)
!4312 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 105, column: 2)
!4313 = !DILocalVariable(name: "curptr", scope: !4310, file: !3, line: 107, type: !301)
!4314 = !DILocation(line: 66, column: 55, scope: !4291)
!4315 = !DILocation(line: 67, column: 26, scope: !4291)
!4316 = !DILocation(line: 67, column: 38, scope: !4291)
!4317 = !DILocation(line: 68, column: 10, scope: !4291)
!4318 = !DILocation(line: 68, column: 22, scope: !4291)
!4319 = !DILocation(line: 70, column: 2, scope: !4291)
!4320 = !DILocation(line: 70, column: 6, scope: !4291)
!4321 = !DILocation(line: 70, column: 11, scope: !4291)
!4322 = !DILocation(line: 71, column: 2, scope: !4291)
!4323 = !DILocation(line: 71, column: 29, scope: !4291)
!4324 = !DILocation(line: 73, column: 20, scope: !4291)
!4325 = !DILocation(line: 73, column: 8, scope: !4291)
!4326 = !DILocation(line: 73, column: 6, scope: !4291)
!4327 = !DILocation(line: 74, column: 6, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 74, column: 6)
!4329 = !DILocation(line: 74, column: 10, scope: !4328)
!4330 = !DILocation(line: 74, column: 6, scope: !4291)
!4331 = !DILocation(line: 75, column: 10, scope: !4328)
!4332 = !DILocation(line: 75, column: 3, scope: !4328)
!4333 = !DILocation(line: 76, column: 6, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 76, column: 6)
!4335 = !DILocation(line: 76, column: 13, scope: !4334)
!4336 = !DILocation(line: 76, column: 10, scope: !4334)
!4337 = !DILocation(line: 76, column: 6, scope: !4291)
!4338 = !DILocation(line: 77, column: 3, scope: !4334)
!4339 = !DILocation(line: 78, column: 6, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 78, column: 6)
!4341 = !DILocation(line: 78, column: 13, scope: !4340)
!4342 = !DILocation(line: 78, column: 16, scope: !4340)
!4343 = !DILocation(line: 78, column: 22, scope: !4340)
!4344 = !DILocation(line: 78, column: 31, scope: !4340)
!4345 = !DILocation(line: 78, column: 29, scope: !4340)
!4346 = !DILocation(line: 78, column: 20, scope: !4340)
!4347 = !DILocation(line: 78, column: 6, scope: !4291)
!4348 = !DILocation(line: 79, column: 9, scope: !4340)
!4349 = !DILocation(line: 79, column: 18, scope: !4340)
!4350 = !DILocation(line: 79, column: 16, scope: !4340)
!4351 = !DILocation(line: 79, column: 7, scope: !4340)
!4352 = !DILocation(line: 79, column: 3, scope: !4340)
!4353 = !DILocation(line: 81, column: 6, scope: !4305)
!4354 = !DILocation(line: 81, column: 13, scope: !4305)
!4355 = !DILocation(line: 81, column: 22, scope: !4305)
!4356 = !DILocation(line: 81, column: 26, scope: !4305)
!4357 = !DILocation(line: 81, column: 6, scope: !4291)
!4358 = !DILocation(line: 82, column: 3, scope: !4304)
!4359 = !DILocation(line: 82, column: 8, scope: !4304)
!4360 = !DILocation(line: 83, column: 3, scope: !4304)
!4361 = !DILocation(line: 83, column: 16, scope: !4304)
!4362 = !DILocation(line: 83, column: 48, scope: !4304)
!4363 = !DILocation(line: 83, column: 55, scope: !4304)
!4364 = !DILocation(line: 83, column: 64, scope: !4304)
!4365 = !DILocation(line: 84, column: 13, scope: !4304)
!4366 = !DILocation(line: 84, column: 10, scope: !4304)
!4367 = !DILocation(line: 85, column: 10, scope: !4304)
!4368 = !DILocation(line: 85, column: 7, scope: !4304)
!4369 = !DILocation(line: 86, column: 3, scope: !4304)
!4370 = !DILocation(line: 86, column: 10, scope: !4304)
!4371 = !DILocation(line: 86, column: 14, scope: !4304)
!4372 = !DILocation(line: 87, column: 4, scope: !4308)
!4373 = !DILocation(line: 87, column: 8, scope: !4308)
!4374 = !DILocation(line: 88, column: 8, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 88, column: 8)
!4376 = !DILocation(line: 88, column: 14, scope: !4375)
!4377 = !DILocation(line: 88, column: 12, scope: !4375)
!4378 = !DILocation(line: 88, column: 8, scope: !4308)
!4379 = !DILocation(line: 89, column: 12, scope: !4375)
!4380 = !DILocation(line: 89, column: 10, scope: !4375)
!4381 = !DILocation(line: 89, column: 5, scope: !4375)
!4382 = !DILocation(line: 90, column: 23, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 90, column: 8)
!4384 = !DILocation(line: 90, column: 28, scope: !4383)
!4385 = !DILocation(line: 90, column: 36, scope: !4383)
!4386 = !DILocation(line: 90, column: 8, scope: !4383)
!4387 = !DILocation(line: 90, column: 8, scope: !4308)
!4388 = !DILocation(line: 91, column: 5, scope: !4383)
!4389 = !DILocation(line: 92, column: 10, scope: !4308)
!4390 = !DILocation(line: 92, column: 15, scope: !4308)
!4391 = !DILocation(line: 92, column: 29, scope: !4308)
!4392 = !DILocation(line: 92, column: 34, scope: !4308)
!4393 = !DILocation(line: 92, column: 8, scope: !4308)
!4394 = !DILocation(line: 93, column: 8, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 93, column: 8)
!4396 = !DILocation(line: 93, column: 12, scope: !4395)
!4397 = !DILocation(line: 93, column: 8, scope: !4308)
!4398 = !DILocation(line: 94, column: 12, scope: !4395)
!4399 = !DILocation(line: 94, column: 5, scope: !4395)
!4400 = !DILocation(line: 95, column: 14, scope: !4308)
!4401 = !DILocation(line: 95, column: 11, scope: !4308)
!4402 = !DILocation(line: 96, column: 11, scope: !4308)
!4403 = !DILocation(line: 96, column: 8, scope: !4308)
!4404 = !DILocation(line: 97, column: 3, scope: !4304)
!4405 = distinct !{!4405, !4369, !4404, !4406, !4407}
!4406 = !{!"llvm.loop.mustprogress"}
!4407 = !{!"llvm.loop.unroll.disable"}
!4408 = !DILocation(line: 98, column: 3, scope: !4304)
!4409 = !DILocation(line: 99, column: 2, scope: !4305)
!4410 = !DILocation(line: 100, column: 8, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 100, column: 6)
!4412 = !DILocation(line: 100, column: 15, scope: !4411)
!4413 = !DILocation(line: 100, column: 24, scope: !4411)
!4414 = !DILocation(line: 100, column: 28, scope: !4411)
!4415 = !DILocation(line: 100, column: 6, scope: !4291)
!4416 = !DILocation(line: 101, column: 10, scope: !4411)
!4417 = !DILocation(line: 101, column: 15, scope: !4411)
!4418 = !DILocation(line: 101, column: 29, scope: !4411)
!4419 = !DILocation(line: 101, column: 36, scope: !4411)
!4420 = !DILocation(line: 101, column: 45, scope: !4411)
!4421 = !DILocation(line: 101, column: 51, scope: !4411)
!4422 = !DILocation(line: 101, column: 49, scope: !4411)
!4423 = !DILocation(line: 102, column: 8, scope: !4411)
!4424 = !DILocation(line: 102, column: 14, scope: !4411)
!4425 = !DILocation(line: 102, column: 12, scope: !4411)
!4426 = !DILocation(line: 101, column: 3, scope: !4411)
!4427 = !DILocation(line: 104, column: 38, scope: !4291)
!4428 = !DILocation(line: 104, column: 45, scope: !4291)
!4429 = !DILocation(line: 104, column: 54, scope: !4291)
!4430 = !DILocation(line: 104, column: 7, scope: !4291)
!4431 = !DILocation(line: 105, column: 2, scope: !4291)
!4432 = !DILocation(line: 105, column: 9, scope: !4311)
!4433 = !DILocation(line: 105, column: 13, scope: !4311)
!4434 = !DILocation(line: 105, column: 17, scope: !4311)
!4435 = !DILocation(line: 105, column: 20, scope: !4311)
!4436 = !DILocation(line: 0, scope: !4311)
!4437 = !DILocation(line: 105, column: 2, scope: !4312)
!4438 = !DILocation(line: 106, column: 3, scope: !4310)
!4439 = !DILocation(line: 106, column: 7, scope: !4310)
!4440 = !DILocation(line: 107, column: 3, scope: !4310)
!4441 = !DILocation(line: 107, column: 9, scope: !4310)
!4442 = !DILocation(line: 107, column: 27, scope: !4310)
!4443 = !DILocation(line: 107, column: 33, scope: !4310)
!4444 = !DILocation(line: 109, column: 7, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 109, column: 7)
!4446 = !DILocation(line: 109, column: 17, scope: !4445)
!4447 = !DILocation(line: 109, column: 14, scope: !4445)
!4448 = !DILocation(line: 109, column: 7, scope: !4310)
!4449 = !DILocation(line: 110, column: 14, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 109, column: 23)
!4451 = !DILocation(line: 110, column: 11, scope: !4450)
!4452 = !DILocation(line: 111, column: 11, scope: !4450)
!4453 = !DILocation(line: 111, column: 8, scope: !4450)
!4454 = !DILocation(line: 112, column: 4, scope: !4450)
!4455 = !DILocation(line: 114, column: 7, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 114, column: 7)
!4457 = !DILocation(line: 114, column: 13, scope: !4456)
!4458 = !DILocation(line: 114, column: 11, scope: !4456)
!4459 = !DILocation(line: 114, column: 7, scope: !4310)
!4460 = !DILocation(line: 115, column: 11, scope: !4456)
!4461 = !DILocation(line: 115, column: 9, scope: !4456)
!4462 = !DILocation(line: 115, column: 4, scope: !4456)
!4463 = !DILocation(line: 116, column: 9, scope: !4310)
!4464 = !DILocation(line: 116, column: 14, scope: !4310)
!4465 = !DILocation(line: 116, column: 28, scope: !4310)
!4466 = !DILocation(line: 116, column: 37, scope: !4310)
!4467 = !DILocation(line: 116, column: 35, scope: !4310)
!4468 = !DILocation(line: 116, column: 45, scope: !4310)
!4469 = !DILocation(line: 116, column: 52, scope: !4310)
!4470 = !DILocation(line: 116, column: 50, scope: !4310)
!4471 = !DILocation(line: 116, column: 7, scope: !4310)
!4472 = !DILocation(line: 117, column: 7, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 117, column: 7)
!4474 = !DILocation(line: 117, column: 11, scope: !4473)
!4475 = !DILocation(line: 117, column: 7, scope: !4310)
!4476 = !DILocation(line: 118, column: 11, scope: !4473)
!4477 = !DILocation(line: 118, column: 4, scope: !4473)
!4478 = !DILocation(line: 119, column: 10, scope: !4310)
!4479 = !DILocation(line: 120, column: 10, scope: !4310)
!4480 = !DILocation(line: 120, column: 7, scope: !4310)
!4481 = !DILocation(line: 121, column: 2, scope: !4311)
!4482 = !DILocation(line: 121, column: 2, scope: !4310)
!4483 = !DILocation(line: 105, column: 33, scope: !4311)
!4484 = !DILocation(line: 105, column: 39, scope: !4311)
!4485 = !DILocation(line: 105, column: 31, scope: !4311)
!4486 = !DILocation(line: 105, column: 2, scope: !4311)
!4487 = distinct !{!4487, !4437, !4488, !4406, !4407}
!4488 = !DILocation(line: 121, column: 2, scope: !4312)
!4489 = !DILocation(line: 122, column: 2, scope: !4291)
!4490 = !DILocation(line: 123, column: 1, scope: !4291)
!4491 = distinct !DISubprogram(name: "snd_seq_expand_var_event", scope: !3, file: !3, line: 174, type: !4492, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4494)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!158, !4272, !158, !301, !158, !158}
!4494 = !{!4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503}
!4495 = !DILocalVariable(name: "event", arg: 1, scope: !4491, file: !3, line: 174, type: !4272)
!4496 = !DILocalVariable(name: "count", arg: 2, scope: !4491, file: !3, line: 174, type: !158)
!4497 = !DILocalVariable(name: "buf", arg: 3, scope: !4491, file: !3, line: 174, type: !301)
!4498 = !DILocalVariable(name: "in_kernel", arg: 4, scope: !4491, file: !3, line: 175, type: !158)
!4499 = !DILocalVariable(name: "size_aligned", arg: 5, scope: !4491, file: !3, line: 175, type: !158)
!4500 = !DILocalVariable(name: "len", scope: !4491, file: !3, line: 177, type: !158)
!4501 = !DILocalVariable(name: "newlen", scope: !4491, file: !3, line: 177, type: !158)
!4502 = !DILocalVariable(name: "err", scope: !4491, file: !3, line: 177, type: !158)
!4503 = !DILocalVariable(name: "__y", scope: !4504, file: !3, line: 184, type: !158)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 184, column: 12)
!4505 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 183, column: 6)
!4506 = !DILocation(line: 174, column: 58, scope: !4491)
!4507 = !DILocation(line: 174, column: 69, scope: !4491)
!4508 = !DILocation(line: 174, column: 82, scope: !4491)
!4509 = !DILocation(line: 175, column: 13, scope: !4491)
!4510 = !DILocation(line: 175, column: 28, scope: !4491)
!4511 = !DILocation(line: 177, column: 2, scope: !4491)
!4512 = !DILocation(line: 177, column: 6, scope: !4491)
!4513 = !DILocation(line: 177, column: 11, scope: !4491)
!4514 = !DILocation(line: 177, column: 19, scope: !4491)
!4515 = !DILocation(line: 179, column: 20, scope: !4491)
!4516 = !DILocation(line: 179, column: 8, scope: !4491)
!4517 = !DILocation(line: 179, column: 6, scope: !4491)
!4518 = !DILocation(line: 180, column: 6, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 180, column: 6)
!4520 = !DILocation(line: 180, column: 10, scope: !4519)
!4521 = !DILocation(line: 180, column: 6, scope: !4491)
!4522 = !DILocation(line: 181, column: 10, scope: !4519)
!4523 = !DILocation(line: 181, column: 3, scope: !4519)
!4524 = !DILocation(line: 182, column: 11, scope: !4491)
!4525 = !DILocation(line: 182, column: 9, scope: !4491)
!4526 = !DILocation(line: 183, column: 6, scope: !4505)
!4527 = !DILocation(line: 183, column: 19, scope: !4505)
!4528 = !DILocation(line: 183, column: 6, scope: !4491)
!4529 = !DILocation(line: 184, column: 12, scope: !4504)
!4530 = !DILocation(line: 184, column: 12, scope: !4505)
!4531 = !DILocation(line: 184, column: 10, scope: !4505)
!4532 = !DILocation(line: 184, column: 3, scope: !4505)
!4533 = !DILocation(line: 185, column: 6, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 185, column: 6)
!4535 = !DILocation(line: 185, column: 14, scope: !4534)
!4536 = !DILocation(line: 185, column: 12, scope: !4534)
!4537 = !DILocation(line: 185, column: 6, scope: !4491)
!4538 = !DILocation(line: 186, column: 3, scope: !4534)
!4539 = !DILocation(line: 187, column: 25, scope: !4491)
!4540 = !DILocation(line: 187, column: 35, scope: !4491)
!4541 = !DILocation(line: 187, column: 40, scope: !4491)
!4542 = !DILocation(line: 187, column: 45, scope: !4491)
!4543 = !DILocation(line: 187, column: 8, scope: !4491)
!4544 = !DILocation(line: 187, column: 6, scope: !4491)
!4545 = !DILocation(line: 188, column: 6, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 188, column: 6)
!4547 = !DILocation(line: 188, column: 10, scope: !4546)
!4548 = !DILocation(line: 188, column: 6, scope: !4491)
!4549 = !DILocation(line: 189, column: 10, scope: !4546)
!4550 = !DILocation(line: 189, column: 3, scope: !4546)
!4551 = !DILocation(line: 190, column: 6, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 190, column: 6)
!4553 = !DILocation(line: 190, column: 13, scope: !4552)
!4554 = !DILocation(line: 190, column: 10, scope: !4552)
!4555 = !DILocation(line: 190, column: 6, scope: !4491)
!4556 = !DILocation(line: 191, column: 7, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 191, column: 7)
!4558 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 190, column: 21)
!4559 = !DILocation(line: 191, column: 7, scope: !4558)
!4560 = !DILocation(line: 192, column: 11, scope: !4557)
!4561 = !DILocation(line: 192, column: 17, scope: !4557)
!4562 = !DILocation(line: 192, column: 15, scope: !4557)
!4563 = !DILocation(line: 192, column: 25, scope: !4557)
!4564 = !DILocation(line: 192, column: 34, scope: !4557)
!4565 = !DILocation(line: 192, column: 32, scope: !4557)
!4566 = !DILocation(line: 192, column: 4, scope: !4557)
!4567 = !DILocation(line: 193, column: 46, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 193, column: 12)
!4569 = !DILocation(line: 193, column: 52, scope: !4568)
!4570 = !DILocation(line: 193, column: 50, scope: !4568)
!4571 = !DILocation(line: 194, column: 9, scope: !4568)
!4572 = !DILocation(line: 194, column: 18, scope: !4568)
!4573 = !DILocation(line: 194, column: 16, scope: !4568)
!4574 = !DILocation(line: 193, column: 12, scope: !4568)
!4575 = !DILocation(line: 193, column: 12, scope: !4557)
!4576 = !DILocation(line: 195, column: 4, scope: !4568)
!4577 = !DILocation(line: 196, column: 2, scope: !4558)
!4578 = !DILocation(line: 197, column: 9, scope: !4491)
!4579 = !DILocation(line: 197, column: 2, scope: !4491)
!4580 = !DILocation(line: 198, column: 1, scope: !4491)
!4581 = distinct !DISubprogram(name: "get_var_len", scope: !3, file: !3, line: 58, type: !4582, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4584)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!158, !4272}
!4584 = !{!4585}
!4585 = !DILocalVariable(name: "event", arg: 1, scope: !4581, file: !3, line: 58, type: !4272)
!4586 = !DILocation(line: 58, column: 52, scope: !4581)
!4587 = !DILocation(line: 60, column: 7, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 60, column: 6)
!4589 = !DILocation(line: 60, column: 14, scope: !4588)
!4590 = !DILocation(line: 60, column: 20, scope: !4588)
!4591 = !DILocation(line: 60, column: 51, scope: !4588)
!4592 = !DILocation(line: 60, column: 6, scope: !4581)
!4593 = !DILocation(line: 61, column: 3, scope: !4588)
!4594 = !DILocation(line: 63, column: 9, scope: !4581)
!4595 = !DILocation(line: 63, column: 16, scope: !4581)
!4596 = !DILocation(line: 63, column: 25, scope: !4581)
!4597 = !DILocation(line: 63, column: 29, scope: !4581)
!4598 = !DILocation(line: 63, column: 2, scope: !4581)
!4599 = !DILocation(line: 64, column: 1, scope: !4581)
!4600 = distinct !DISubprogram(name: "expand_var_event", scope: !3, file: !3, line: 157, type: !4601, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4603)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!158, !4272, !158, !158, !301, !591}
!4603 = !{!4604, !4605, !4606, !4607, !4608}
!4604 = !DILocalVariable(name: "event", arg: 1, scope: !4600, file: !3, line: 157, type: !4272)
!4605 = !DILocalVariable(name: "offset", arg: 2, scope: !4600, file: !3, line: 158, type: !158)
!4606 = !DILocalVariable(name: "size", arg: 3, scope: !4600, file: !3, line: 158, type: !158)
!4607 = !DILocalVariable(name: "buf", arg: 4, scope: !4600, file: !3, line: 158, type: !301)
!4608 = !DILocalVariable(name: "in_kernel", arg: 5, scope: !4600, file: !3, line: 158, type: !591)
!4609 = !DILocation(line: 157, column: 57, scope: !4600)
!4610 = !DILocation(line: 158, column: 12, scope: !4600)
!4611 = !DILocation(line: 158, column: 24, scope: !4600)
!4612 = !DILocation(line: 158, column: 36, scope: !4600)
!4613 = !DILocation(line: 158, column: 46, scope: !4600)
!4614 = !DILocation(line: 160, column: 6, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 160, column: 6)
!4616 = !DILocation(line: 160, column: 13, scope: !4615)
!4617 = !DILocation(line: 160, column: 22, scope: !4615)
!4618 = !DILocation(line: 160, column: 26, scope: !4615)
!4619 = !DILocation(line: 160, column: 6, scope: !4600)
!4620 = !DILocation(line: 161, column: 9, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 161, column: 7)
!4622 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 160, column: 50)
!4623 = !{i8 0, i8 2}
!4624 = !DILocation(line: 161, column: 7, scope: !4622)
!4625 = !DILocation(line: 162, column: 4, scope: !4621)
!4626 = !DILocation(line: 163, column: 22, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 163, column: 7)
!4628 = !DILocation(line: 164, column: 31, scope: !4627)
!4629 = !DILocation(line: 164, column: 38, scope: !4627)
!4630 = !DILocation(line: 164, column: 47, scope: !4627)
!4631 = !DILocation(line: 164, column: 53, scope: !4627)
!4632 = !DILocation(line: 164, column: 51, scope: !4627)
!4633 = !DILocation(line: 165, column: 8, scope: !4627)
!4634 = !DILocation(line: 163, column: 7, scope: !4627)
!4635 = !DILocation(line: 163, column: 7, scope: !4622)
!4636 = !DILocation(line: 166, column: 4, scope: !4627)
!4637 = !DILocation(line: 167, column: 3, scope: !4622)
!4638 = !DILocation(line: 169, column: 24, scope: !4600)
!4639 = !DILocation(line: 170, column: 9, scope: !4600)
!4640 = !DILocation(line: 171, column: 15, scope: !4600)
!4641 = !DILocation(line: 171, column: 23, scope: !4600)
!4642 = !DILocation(line: 169, column: 9, scope: !4600)
!4643 = !DILocation(line: 169, column: 2, scope: !4600)
!4644 = !DILocation(line: 172, column: 1, scope: !4600)
!4645 = distinct !DISubprogram(name: "clear_user", scope: !4646, file: !4646, line: 188, type: !4647, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4649)
!4646 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!313, !103, !313}
!4649 = !{!4650, !4651}
!4650 = !DILocalVariable(name: "to", arg: 1, scope: !4645, file: !4646, line: 188, type: !103)
!4651 = !DILocalVariable(name: "n", arg: 2, scope: !4645, file: !4646, line: 188, type: !313)
!4652 = !DILocation(line: 188, column: 62, scope: !4645)
!4653 = !DILocation(line: 188, column: 80, scope: !4645)
!4654 = !DILocation(line: 190, column: 18, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4645, file: !4646, line: 190, column: 6)
!4656 = !DILocation(line: 190, column: 22, scope: !4655)
!4657 = !DILocation(line: 190, column: 6, scope: !4655)
!4658 = !DILocation(line: 190, column: 6, scope: !4645)
!4659 = !DILocation(line: 191, column: 23, scope: !4655)
!4660 = !DILocation(line: 191, column: 27, scope: !4655)
!4661 = !DILocation(line: 191, column: 10, scope: !4655)
!4662 = !DILocation(line: 191, column: 3, scope: !4655)
!4663 = !DILocation(line: 192, column: 9, scope: !4645)
!4664 = !DILocation(line: 192, column: 2, scope: !4645)
!4665 = !DILocation(line: 193, column: 1, scope: !4645)
!4666 = distinct !DISubprogram(name: "snd_seq_expand_var_event_at", scope: !3, file: !3, line: 201, type: !4667, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4669)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!158, !4272, !158, !301, !158}
!4669 = !{!4670, !4671, !4672, !4673, !4674, !4675}
!4670 = !DILocalVariable(name: "event", arg: 1, scope: !4666, file: !3, line: 201, type: !4272)
!4671 = !DILocalVariable(name: "count", arg: 2, scope: !4666, file: !3, line: 201, type: !158)
!4672 = !DILocalVariable(name: "buf", arg: 3, scope: !4666, file: !3, line: 202, type: !301)
!4673 = !DILocalVariable(name: "offset", arg: 4, scope: !4666, file: !3, line: 202, type: !158)
!4674 = !DILocalVariable(name: "len", scope: !4666, file: !3, line: 204, type: !158)
!4675 = !DILocalVariable(name: "err", scope: !4666, file: !3, line: 204, type: !158)
!4676 = !DILocation(line: 201, column: 61, scope: !4666)
!4677 = !DILocation(line: 201, column: 72, scope: !4666)
!4678 = !DILocation(line: 202, column: 11, scope: !4666)
!4679 = !DILocation(line: 202, column: 20, scope: !4666)
!4680 = !DILocation(line: 204, column: 2, scope: !4666)
!4681 = !DILocation(line: 204, column: 6, scope: !4666)
!4682 = !DILocation(line: 204, column: 11, scope: !4666)
!4683 = !DILocation(line: 206, column: 20, scope: !4666)
!4684 = !DILocation(line: 206, column: 8, scope: !4666)
!4685 = !DILocation(line: 206, column: 6, scope: !4666)
!4686 = !DILocation(line: 207, column: 6, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 207, column: 6)
!4688 = !DILocation(line: 207, column: 10, scope: !4687)
!4689 = !DILocation(line: 207, column: 6, scope: !4666)
!4690 = !DILocation(line: 208, column: 10, scope: !4687)
!4691 = !DILocation(line: 208, column: 3, scope: !4687)
!4692 = !DILocation(line: 209, column: 6, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 209, column: 6)
!4694 = !DILocation(line: 209, column: 13, scope: !4693)
!4695 = !DILocation(line: 209, column: 10, scope: !4693)
!4696 = !DILocation(line: 209, column: 6, scope: !4666)
!4697 = !DILocation(line: 210, column: 3, scope: !4693)
!4698 = !DILocation(line: 211, column: 9, scope: !4666)
!4699 = !DILocation(line: 211, column: 6, scope: !4666)
!4700 = !DILocation(line: 212, column: 6, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 212, column: 6)
!4702 = !DILocation(line: 212, column: 12, scope: !4701)
!4703 = !DILocation(line: 212, column: 10, scope: !4701)
!4704 = !DILocation(line: 212, column: 6, scope: !4666)
!4705 = !DILocation(line: 213, column: 9, scope: !4701)
!4706 = !DILocation(line: 213, column: 7, scope: !4701)
!4707 = !DILocation(line: 213, column: 3, scope: !4701)
!4708 = !DILocation(line: 214, column: 25, scope: !4666)
!4709 = !DILocation(line: 214, column: 32, scope: !4666)
!4710 = !DILocation(line: 214, column: 40, scope: !4666)
!4711 = !DILocation(line: 214, column: 47, scope: !4666)
!4712 = !DILocation(line: 214, column: 8, scope: !4666)
!4713 = !DILocation(line: 214, column: 6, scope: !4666)
!4714 = !DILocation(line: 215, column: 6, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 215, column: 6)
!4716 = !DILocation(line: 215, column: 10, scope: !4715)
!4717 = !DILocation(line: 215, column: 6, scope: !4666)
!4718 = !DILocation(line: 216, column: 10, scope: !4715)
!4719 = !DILocation(line: 216, column: 3, scope: !4715)
!4720 = !DILocation(line: 217, column: 9, scope: !4666)
!4721 = !DILocation(line: 217, column: 2, scope: !4666)
!4722 = !DILocation(line: 218, column: 1, scope: !4666)
!4723 = distinct !DISubprogram(name: "snd_seq_cell_free", scope: !3, file: !3, line: 233, type: !4724, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4726)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{null, !104}
!4726 = !{!4727, !4728, !4729, !4730, !4733, !4736, !4740, !4741, !4746}
!4727 = !DILocalVariable(name: "cell", arg: 1, scope: !4723, file: !3, line: 233, type: !104)
!4728 = !DILocalVariable(name: "flags", scope: !4723, file: !3, line: 235, type: !313)
!4729 = !DILocalVariable(name: "pool", scope: !4723, file: !3, line: 236, type: !232)
!4730 = !DILocalVariable(name: "__ret_warn_on", scope: !4731, file: !3, line: 238, type: !158)
!4731 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 238, column: 6)
!4732 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 238, column: 6)
!4733 = !DILocalVariable(name: "__ret_warn_on", scope: !4734, file: !3, line: 241, type: !158)
!4734 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 241, column: 6)
!4735 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 241, column: 6)
!4736 = !DILocalVariable(name: "__dummy", scope: !4737, file: !3, line: 244, type: !313)
!4737 = distinct !DILexicalBlock(scope: !4738, file: !3, line: 244, column: 2)
!4738 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 244, column: 2)
!4739 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 244, column: 2)
!4740 = !DILocalVariable(name: "__dummy2", scope: !4737, file: !3, line: 244, type: !313)
!4741 = !DILocalVariable(name: "curp", scope: !4742, file: !3, line: 248, type: !104)
!4742 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 247, column: 57)
!4743 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 247, column: 7)
!4744 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 246, column: 44)
!4745 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 246, column: 6)
!4746 = !DILocalVariable(name: "nextptr", scope: !4742, file: !3, line: 248, type: !104)
!4747 = !DILocation(line: 233, column: 52, scope: !4723)
!4748 = !DILocation(line: 235, column: 2, scope: !4723)
!4749 = !DILocation(line: 235, column: 16, scope: !4723)
!4750 = !DILocation(line: 236, column: 2, scope: !4723)
!4751 = !DILocation(line: 236, column: 23, scope: !4723)
!4752 = !DILocation(line: 238, column: 6, scope: !4731)
!4753 = !DILocation(line: 238, column: 6, scope: !4732)
!4754 = !DILocation(line: 238, column: 6, scope: !4723)
!4755 = !DILocation(line: 239, column: 3, scope: !4732)
!4756 = !DILocation(line: 240, column: 9, scope: !4723)
!4757 = !DILocation(line: 240, column: 15, scope: !4723)
!4758 = !DILocation(line: 240, column: 7, scope: !4723)
!4759 = !DILocation(line: 241, column: 6, scope: !4734)
!4760 = !DILocation(line: 241, column: 6, scope: !4735)
!4761 = !DILocation(line: 241, column: 6, scope: !4723)
!4762 = !DILocation(line: 242, column: 3, scope: !4735)
!4763 = !DILocation(line: 244, column: 2, scope: !4723)
!4764 = !DILocation(line: 244, column: 2, scope: !4739)
!4765 = !DILocation(line: 244, column: 2, scope: !4737)
!4766 = !DILocation(line: 244, column: 2, scope: !4738)
!4767 = !DILocation(line: 245, column: 12, scope: !4723)
!4768 = !DILocation(line: 245, column: 18, scope: !4723)
!4769 = !DILocation(line: 245, column: 2, scope: !4723)
!4770 = !DILocation(line: 246, column: 6, scope: !4745)
!4771 = !DILocation(line: 246, column: 6, scope: !4723)
!4772 = !DILocation(line: 247, column: 7, scope: !4743)
!4773 = !DILocation(line: 247, column: 13, scope: !4743)
!4774 = !DILocation(line: 247, column: 19, scope: !4743)
!4775 = !DILocation(line: 247, column: 28, scope: !4743)
!4776 = !DILocation(line: 247, column: 32, scope: !4743)
!4777 = !DILocation(line: 247, column: 7, scope: !4744)
!4778 = !DILocation(line: 248, column: 4, scope: !4742)
!4779 = !DILocation(line: 248, column: 31, scope: !4742)
!4780 = !DILocation(line: 248, column: 38, scope: !4742)
!4781 = !DILocation(line: 249, column: 11, scope: !4742)
!4782 = !DILocation(line: 249, column: 17, scope: !4742)
!4783 = !DILocation(line: 249, column: 23, scope: !4742)
!4784 = !DILocation(line: 249, column: 32, scope: !4742)
!4785 = !DILocation(line: 249, column: 9, scope: !4742)
!4786 = !DILocation(line: 250, column: 4, scope: !4742)
!4787 = !DILocation(line: 250, column: 11, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 250, column: 4)
!4789 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 250, column: 4)
!4790 = !DILocation(line: 250, column: 4, scope: !4789)
!4791 = !DILocation(line: 251, column: 15, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 250, column: 33)
!4793 = !DILocation(line: 251, column: 21, scope: !4792)
!4794 = !DILocation(line: 251, column: 13, scope: !4792)
!4795 = !DILocation(line: 252, column: 18, scope: !4792)
!4796 = !DILocation(line: 252, column: 24, scope: !4792)
!4797 = !DILocation(line: 252, column: 5, scope: !4792)
!4798 = !DILocation(line: 252, column: 11, scope: !4792)
!4799 = !DILocation(line: 252, column: 16, scope: !4792)
!4800 = !DILocation(line: 253, column: 15, scope: !4792)
!4801 = !DILocation(line: 253, column: 21, scope: !4792)
!4802 = !DILocation(line: 253, column: 5, scope: !4792)
!4803 = !DILocation(line: 254, column: 4, scope: !4792)
!4804 = !DILocation(line: 250, column: 24, scope: !4788)
!4805 = !DILocation(line: 250, column: 22, scope: !4788)
!4806 = !DILocation(line: 250, column: 4, scope: !4788)
!4807 = distinct !{!4807, !4790, !4808, !4406, !4407}
!4808 = !DILocation(line: 254, column: 4, scope: !4789)
!4809 = !DILocation(line: 255, column: 3, scope: !4743)
!4810 = !DILocation(line: 255, column: 3, scope: !4742)
!4811 = !DILocation(line: 256, column: 2, scope: !4744)
!4812 = !DILocation(line: 257, column: 24, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 257, column: 6)
!4814 = !DILocation(line: 257, column: 30, scope: !4813)
!4815 = !DILocation(line: 257, column: 6, scope: !4813)
!4816 = !DILocation(line: 257, column: 6, scope: !4723)
!4817 = !DILocation(line: 259, column: 25, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 259, column: 7)
!4819 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 257, column: 45)
!4820 = !DILocation(line: 259, column: 7, scope: !4818)
!4821 = !DILocation(line: 259, column: 7, scope: !4819)
!4822 = !DILocation(line: 260, column: 4, scope: !4818)
!4823 = !DILocation(line: 261, column: 2, scope: !4819)
!4824 = !DILocation(line: 262, column: 26, scope: !4723)
!4825 = !DILocation(line: 262, column: 32, scope: !4723)
!4826 = !DILocation(line: 262, column: 38, scope: !4723)
!4827 = !DILocation(line: 262, column: 2, scope: !4723)
!4828 = !DILocation(line: 263, column: 1, scope: !4723)
!4829 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4830, file: !4830, line: 32, type: !4831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4830 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!313, !4833}
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!4834 = distinct !DISubprogram(name: "spinlock_check", scope: !4835, file: !4835, line: 324, type: !4836, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4838)
!4835 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!4833, !1571}
!4838 = !{!4839}
!4839 = !DILocalVariable(name: "lock", arg: 1, scope: !4834, file: !4835, line: 324, type: !1571)
!4840 = !DILocation(line: 324, column: 67, scope: !4834)
!4841 = !DILocation(line: 326, column: 10, scope: !4834)
!4842 = !DILocation(line: 326, column: 16, scope: !4834)
!4843 = !DILocation(line: 326, column: 2, scope: !4834)
!4844 = distinct !DISubprogram(name: "free_cell", scope: !3, file: !3, line: 225, type: !4845, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4847)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{null, !232, !104}
!4847 = !{!4848, !4849}
!4848 = !DILocalVariable(name: "pool", arg: 1, scope: !4844, file: !3, line: 225, type: !232)
!4849 = !DILocalVariable(name: "cell", arg: 2, scope: !4844, file: !3, line: 226, type: !104)
!4850 = !DILocation(line: 225, column: 51, scope: !4844)
!4851 = !DILocation(line: 226, column: 36, scope: !4844)
!4852 = !DILocation(line: 228, column: 15, scope: !4844)
!4853 = !DILocation(line: 228, column: 21, scope: !4844)
!4854 = !DILocation(line: 228, column: 2, scope: !4844)
!4855 = !DILocation(line: 228, column: 8, scope: !4844)
!4856 = !DILocation(line: 228, column: 13, scope: !4844)
!4857 = !DILocation(line: 229, column: 15, scope: !4844)
!4858 = !DILocation(line: 229, column: 2, scope: !4844)
!4859 = !DILocation(line: 229, column: 8, scope: !4844)
!4860 = !DILocation(line: 229, column: 13, scope: !4844)
!4861 = !DILocation(line: 230, column: 14, scope: !4844)
!4862 = !DILocation(line: 230, column: 20, scope: !4844)
!4863 = !DILocation(line: 230, column: 2, scope: !4844)
!4864 = !DILocation(line: 231, column: 1, scope: !4844)
!4865 = distinct !DISubprogram(name: "waitqueue_active", scope: !253, file: !253, line: 127, type: !4866, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4869)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!158, !4868}
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!4869 = !{!4870}
!4870 = !DILocalVariable(name: "wq_head", arg: 1, scope: !4865, file: !253, line: 127, type: !4868)
!4871 = !DILocation(line: 127, column: 60, scope: !4865)
!4872 = !DILocation(line: 129, column: 22, scope: !4865)
!4873 = !DILocation(line: 129, column: 31, scope: !4865)
!4874 = !DILocation(line: 129, column: 10, scope: !4865)
!4875 = !DILocation(line: 129, column: 9, scope: !4865)
!4876 = !DILocation(line: 129, column: 2, scope: !4865)
!4877 = distinct !DISubprogram(name: "snd_seq_output_ok", scope: !3, file: !3, line: 27, type: !4878, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4880)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!158, !232}
!4880 = !{!4881}
!4881 = !DILocalVariable(name: "pool", arg: 1, scope: !4877, file: !3, line: 27, type: !232)
!4882 = !DILocation(line: 27, column: 58, scope: !4877)
!4883 = !DILocation(line: 29, column: 32, scope: !4877)
!4884 = !DILocation(line: 29, column: 9, scope: !4877)
!4885 = !DILocation(line: 29, column: 41, scope: !4877)
!4886 = !DILocation(line: 29, column: 47, scope: !4877)
!4887 = !DILocation(line: 29, column: 38, scope: !4877)
!4888 = !DILocation(line: 29, column: 2, scope: !4877)
!4889 = !DISubprogram(name: "__wake_up", scope: !253, file: !253, line: 212, type: !4890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!158, !4868, !7, !158, !103}
!4892 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4835, file: !4835, line: 404, type: !4893, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4895)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{null, !1571, !313}
!4895 = !{!4896, !4897, !4898, !4901}
!4896 = !DILocalVariable(name: "lock", arg: 1, scope: !4892, file: !4835, line: 404, type: !1571)
!4897 = !DILocalVariable(name: "flags", arg: 2, scope: !4892, file: !4835, line: 404, type: !313)
!4898 = !DILocalVariable(name: "__dummy", scope: !4899, file: !4835, line: 406, type: !313)
!4899 = distinct !DILexicalBlock(scope: !4900, file: !4835, line: 406, column: 2)
!4900 = distinct !DILexicalBlock(scope: !4892, file: !4835, line: 406, column: 2)
!4901 = !DILocalVariable(name: "__dummy2", scope: !4899, file: !4835, line: 406, type: !313)
!4902 = !DILocation(line: 404, column: 64, scope: !4892)
!4903 = !DILocation(line: 404, column: 84, scope: !4892)
!4904 = !DILocation(line: 406, column: 2, scope: !4892)
!4905 = !DILocation(line: 406, column: 2, scope: !4899)
!4906 = !DILocation(line: 406, column: 2, scope: !4900)
!4907 = !DILocation(line: 407, column: 1, scope: !4892)
!4908 = distinct !DISubprogram(name: "snd_seq_event_dup", scope: !3, file: !3, line: 341, type: !4909, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4913)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!158, !232, !222, !4911, !158, !873, !4912}
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!4913 = !{!4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4928, !4929, !4930, !4931, !4932, !4933, !4934}
!4914 = !DILocalVariable(name: "pool", arg: 1, scope: !4908, file: !3, line: 341, type: !232)
!4915 = !DILocalVariable(name: "event", arg: 2, scope: !4908, file: !3, line: 341, type: !222)
!4916 = !DILocalVariable(name: "cellp", arg: 3, scope: !4908, file: !3, line: 342, type: !4911)
!4917 = !DILocalVariable(name: "nonblock", arg: 4, scope: !4908, file: !3, line: 342, type: !158)
!4918 = !DILocalVariable(name: "file", arg: 5, scope: !4908, file: !3, line: 343, type: !873)
!4919 = !DILocalVariable(name: "mutexp", arg: 6, scope: !4908, file: !3, line: 343, type: !4912)
!4920 = !DILocalVariable(name: "ncells", scope: !4908, file: !3, line: 345, type: !158)
!4921 = !DILocalVariable(name: "err", scope: !4908, file: !3, line: 345, type: !158)
!4922 = !DILocalVariable(name: "extlen", scope: !4908, file: !3, line: 346, type: !7)
!4923 = !DILocalVariable(name: "cell", scope: !4908, file: !3, line: 347, type: !104)
!4924 = !DILocalVariable(name: "size", scope: !4908, file: !3, line: 348, type: !158)
!4925 = !DILocalVariable(name: "len", scope: !4926, file: !3, line: 375, type: !158)
!4926 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 374, column: 37)
!4927 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 374, column: 6)
!4928 = !DILocalVariable(name: "is_chained", scope: !4926, file: !3, line: 376, type: !158)
!4929 = !DILocalVariable(name: "is_usrptr", scope: !4926, file: !3, line: 377, type: !158)
!4930 = !DILocalVariable(name: "src", scope: !4926, file: !3, line: 378, type: !104)
!4931 = !DILocalVariable(name: "tmp", scope: !4926, file: !3, line: 378, type: !104)
!4932 = !DILocalVariable(name: "tail", scope: !4926, file: !3, line: 378, type: !104)
!4933 = !DILocalVariable(name: "buf", scope: !4926, file: !3, line: 379, type: !301)
!4934 = !DILabel(scope: !4908, name: "__error", file: !3, line: 421)
!4935 = !DILocation(line: 341, column: 44, scope: !4908)
!4936 = !DILocation(line: 341, column: 72, scope: !4908)
!4937 = !DILocation(line: 342, column: 37, scope: !4908)
!4938 = !DILocation(line: 342, column: 48, scope: !4908)
!4939 = !DILocation(line: 343, column: 22, scope: !4908)
!4940 = !DILocation(line: 343, column: 42, scope: !4908)
!4941 = !DILocation(line: 345, column: 2, scope: !4908)
!4942 = !DILocation(line: 345, column: 6, scope: !4908)
!4943 = !DILocation(line: 345, column: 14, scope: !4908)
!4944 = !DILocation(line: 346, column: 2, scope: !4908)
!4945 = !DILocation(line: 346, column: 15, scope: !4908)
!4946 = !DILocation(line: 347, column: 2, scope: !4908)
!4947 = !DILocation(line: 347, column: 29, scope: !4908)
!4948 = !DILocation(line: 348, column: 2, scope: !4908)
!4949 = !DILocation(line: 348, column: 6, scope: !4908)
!4950 = !DILocation(line: 350, column: 3, scope: !4908)
!4951 = !DILocation(line: 350, column: 9, scope: !4908)
!4952 = !DILocation(line: 352, column: 9, scope: !4908)
!4953 = !DILocation(line: 353, column: 9, scope: !4908)
!4954 = !DILocation(line: 354, column: 6, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 354, column: 6)
!4956 = !DILocation(line: 354, column: 6, scope: !4908)
!4957 = !DILocation(line: 355, column: 12, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 354, column: 37)
!4959 = !DILocation(line: 355, column: 19, scope: !4958)
!4960 = !DILocation(line: 355, column: 28, scope: !4958)
!4961 = !DILocation(line: 355, column: 32, scope: !4958)
!4962 = !DILocation(line: 355, column: 10, scope: !4958)
!4963 = !DILocation(line: 356, column: 12, scope: !4958)
!4964 = !DILocation(line: 356, column: 10, scope: !4958)
!4965 = !DILocation(line: 357, column: 2, scope: !4958)
!4966 = !DILocation(line: 358, column: 6, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 358, column: 6)
!4968 = !DILocation(line: 358, column: 16, scope: !4967)
!4969 = !DILocation(line: 358, column: 22, scope: !4967)
!4970 = !DILocation(line: 358, column: 13, scope: !4967)
!4971 = !DILocation(line: 358, column: 6, scope: !4908)
!4972 = !DILocation(line: 359, column: 3, scope: !4967)
!4973 = !DILocation(line: 361, column: 27, scope: !4908)
!4974 = !DILocation(line: 361, column: 40, scope: !4908)
!4975 = !DILocation(line: 361, column: 50, scope: !4908)
!4976 = !DILocation(line: 361, column: 56, scope: !4908)
!4977 = !DILocation(line: 361, column: 8, scope: !4908)
!4978 = !DILocation(line: 361, column: 6, scope: !4908)
!4979 = !DILocation(line: 362, column: 6, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 362, column: 6)
!4981 = !DILocation(line: 362, column: 10, scope: !4980)
!4982 = !DILocation(line: 362, column: 6, scope: !4908)
!4983 = !DILocation(line: 363, column: 10, scope: !4980)
!4984 = !DILocation(line: 363, column: 3, scope: !4980)
!4985 = !DILocation(line: 366, column: 35, scope: !4908)
!4986 = !DILocation(line: 366, column: 9, scope: !4908)
!4987 = !DILocation(line: 366, column: 7, scope: !4908)
!4988 = !DILocation(line: 367, column: 10, scope: !4908)
!4989 = !DILocation(line: 367, column: 16, scope: !4908)
!4990 = !DILocation(line: 367, column: 21, scope: !4908)
!4991 = !DILocation(line: 367, column: 28, scope: !4908)
!4992 = !DILocation(line: 367, column: 2, scope: !4908)
!4993 = !DILocation(line: 374, column: 6, scope: !4927)
!4994 = !DILocation(line: 374, column: 6, scope: !4908)
!4995 = !DILocation(line: 375, column: 3, scope: !4926)
!4996 = !DILocation(line: 375, column: 7, scope: !4926)
!4997 = !DILocation(line: 375, column: 13, scope: !4926)
!4998 = !DILocation(line: 376, column: 3, scope: !4926)
!4999 = !DILocation(line: 376, column: 7, scope: !4926)
!5000 = !DILocation(line: 376, column: 20, scope: !4926)
!5001 = !DILocation(line: 376, column: 27, scope: !4926)
!5002 = !DILocation(line: 376, column: 36, scope: !4926)
!5003 = !DILocation(line: 376, column: 40, scope: !4926)
!5004 = !DILocation(line: 377, column: 3, scope: !4926)
!5005 = !DILocation(line: 377, column: 7, scope: !4926)
!5006 = !DILocation(line: 377, column: 19, scope: !4926)
!5007 = !DILocation(line: 377, column: 26, scope: !4926)
!5008 = !DILocation(line: 377, column: 35, scope: !4926)
!5009 = !DILocation(line: 377, column: 39, scope: !4926)
!5010 = !DILocation(line: 378, column: 3, scope: !4926)
!5011 = !DILocation(line: 378, column: 30, scope: !4926)
!5012 = !DILocation(line: 378, column: 36, scope: !4926)
!5013 = !DILocation(line: 378, column: 42, scope: !4926)
!5014 = !DILocation(line: 379, column: 3, scope: !4926)
!5015 = !DILocation(line: 379, column: 9, scope: !4926)
!5016 = !DILocation(line: 381, column: 30, scope: !4926)
!5017 = !DILocation(line: 381, column: 37, scope: !4926)
!5018 = !DILocation(line: 381, column: 3, scope: !4926)
!5019 = !DILocation(line: 381, column: 9, scope: !4926)
!5020 = !DILocation(line: 381, column: 15, scope: !4926)
!5021 = !DILocation(line: 381, column: 24, scope: !4926)
!5022 = !DILocation(line: 381, column: 28, scope: !4926)
!5023 = !DILocation(line: 382, column: 3, scope: !4926)
!5024 = !DILocation(line: 382, column: 9, scope: !4926)
!5025 = !DILocation(line: 382, column: 15, scope: !4926)
!5026 = !DILocation(line: 382, column: 24, scope: !4926)
!5027 = !DILocation(line: 382, column: 28, scope: !4926)
!5028 = !DILocation(line: 384, column: 38, scope: !4926)
!5029 = !DILocation(line: 384, column: 45, scope: !4926)
!5030 = !DILocation(line: 384, column: 54, scope: !4926)
!5031 = !DILocation(line: 384, column: 7, scope: !4926)
!5032 = !DILocation(line: 385, column: 17, scope: !4926)
!5033 = !DILocation(line: 385, column: 24, scope: !4926)
!5034 = !DILocation(line: 385, column: 33, scope: !4926)
!5035 = !DILocation(line: 385, column: 7, scope: !4926)
!5036 = !DILocation(line: 386, column: 8, scope: !4926)
!5037 = !DILocation(line: 388, column: 3, scope: !4926)
!5038 = !DILocation(line: 388, column: 16, scope: !4926)
!5039 = !DILocation(line: 388, column: 19, scope: !4926)
!5040 = !DILocation(line: 389, column: 9, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 388, column: 24)
!5042 = !DILocation(line: 390, column: 8, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 390, column: 8)
!5044 = !DILocation(line: 390, column: 14, scope: !5043)
!5045 = !DILocation(line: 390, column: 12, scope: !5043)
!5046 = !DILocation(line: 390, column: 8, scope: !5041)
!5047 = !DILocation(line: 391, column: 12, scope: !5043)
!5048 = !DILocation(line: 391, column: 10, scope: !5043)
!5049 = !DILocation(line: 391, column: 5, scope: !5043)
!5050 = !DILocation(line: 392, column: 29, scope: !5041)
!5051 = !DILocation(line: 392, column: 41, scope: !5041)
!5052 = !DILocation(line: 392, column: 51, scope: !5041)
!5053 = !DILocation(line: 393, column: 8, scope: !5041)
!5054 = !DILocation(line: 392, column: 10, scope: !5041)
!5055 = !DILocation(line: 392, column: 8, scope: !5041)
!5056 = !DILocation(line: 394, column: 8, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 394, column: 8)
!5058 = !DILocation(line: 394, column: 12, scope: !5057)
!5059 = !DILocation(line: 394, column: 8, scope: !5041)
!5060 = !DILocation(line: 395, column: 5, scope: !5057)
!5061 = !DILocation(line: 396, column: 8, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 396, column: 8)
!5063 = !DILocation(line: 396, column: 14, scope: !5062)
!5064 = !DILocation(line: 396, column: 20, scope: !5062)
!5065 = !DILocation(line: 396, column: 29, scope: !5062)
!5066 = !DILocation(line: 396, column: 33, scope: !5062)
!5067 = !DILocation(line: 396, column: 8, scope: !5041)
!5068 = !DILocation(line: 397, column: 32, scope: !5062)
!5069 = !DILocation(line: 397, column: 5, scope: !5062)
!5070 = !DILocation(line: 397, column: 11, scope: !5062)
!5071 = !DILocation(line: 397, column: 17, scope: !5062)
!5072 = !DILocation(line: 397, column: 26, scope: !5062)
!5073 = !DILocation(line: 397, column: 30, scope: !5062)
!5074 = !DILocation(line: 398, column: 8, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 398, column: 8)
!5076 = !DILocation(line: 398, column: 8, scope: !5041)
!5077 = !DILocation(line: 399, column: 18, scope: !5075)
!5078 = !DILocation(line: 399, column: 5, scope: !5075)
!5079 = !DILocation(line: 399, column: 11, scope: !5075)
!5080 = !DILocation(line: 399, column: 16, scope: !5075)
!5081 = !DILocation(line: 400, column: 11, scope: !5041)
!5082 = !DILocation(line: 400, column: 9, scope: !5041)
!5083 = !DILocation(line: 402, column: 8, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 402, column: 8)
!5085 = !DILocation(line: 402, column: 19, scope: !5084)
!5086 = !DILocation(line: 402, column: 22, scope: !5084)
!5087 = !DILocation(line: 402, column: 8, scope: !5041)
!5088 = !DILocation(line: 403, column: 5, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 402, column: 27)
!5090 = !DILocation(line: 403, column: 10, scope: !5089)
!5091 = !DILocation(line: 403, column: 18, scope: !5089)
!5092 = !DILocation(line: 403, column: 23, scope: !5089)
!5093 = !DILocation(line: 404, column: 11, scope: !5089)
!5094 = !DILocation(line: 404, column: 16, scope: !5089)
!5095 = !DILocation(line: 404, column: 9, scope: !5089)
!5096 = !DILocation(line: 405, column: 4, scope: !5089)
!5097 = !DILocation(line: 405, column: 15, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 405, column: 15)
!5099 = !DILocation(line: 405, column: 15, scope: !5084)
!5100 = !DILocation(line: 406, column: 25, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 406, column: 9)
!5102 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 405, column: 26)
!5103 = !DILocation(line: 406, column: 30, scope: !5101)
!5104 = !DILocation(line: 406, column: 60, scope: !5101)
!5105 = !DILocation(line: 406, column: 65, scope: !5101)
!5106 = !DILocation(line: 406, column: 9, scope: !5101)
!5107 = !DILocation(line: 406, column: 9, scope: !5102)
!5108 = !DILocation(line: 407, column: 10, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 406, column: 72)
!5110 = !DILocation(line: 408, column: 6, scope: !5109)
!5111 = !DILocation(line: 410, column: 4, scope: !5102)
!5112 = !DILocation(line: 411, column: 13, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 410, column: 11)
!5114 = !DILocation(line: 411, column: 18, scope: !5113)
!5115 = !DILocation(line: 411, column: 25, scope: !5113)
!5116 = !DILocation(line: 411, column: 30, scope: !5113)
!5117 = !DILocation(line: 411, column: 5, scope: !5113)
!5118 = !DILocation(line: 413, column: 11, scope: !5041)
!5119 = !DILocation(line: 413, column: 8, scope: !5041)
!5120 = !DILocation(line: 414, column: 11, scope: !5041)
!5121 = !DILocation(line: 414, column: 8, scope: !5041)
!5122 = distinct !{!5122, !5037, !5123, !4406, !4407}
!5123 = !DILocation(line: 415, column: 3, scope: !4926)
!5124 = !DILocation(line: 416, column: 2, scope: !4927)
!5125 = !DILocation(line: 416, column: 2, scope: !4926)
!5126 = !DILocation(line: 418, column: 11, scope: !4908)
!5127 = !DILocation(line: 418, column: 3, scope: !4908)
!5128 = !DILocation(line: 418, column: 9, scope: !4908)
!5129 = !DILocation(line: 419, column: 2, scope: !4908)
!5130 = !DILocation(line: 421, column: 1, scope: !4908)
!5131 = !DILocation(line: 422, column: 20, scope: !4908)
!5132 = !DILocation(line: 422, column: 2, scope: !4908)
!5133 = !DILocation(line: 423, column: 9, scope: !4908)
!5134 = !DILocation(line: 423, column: 2, scope: !4908)
!5135 = !DILocation(line: 424, column: 1, scope: !4908)
!5136 = distinct !DISubprogram(name: "snd_seq_cell_alloc", scope: !3, file: !3, line: 269, type: !5137, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5139)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!158, !232, !4911, !158, !873, !4912}
!5139 = !{!5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5161, !5165, !5166, !5172, !5174, !5178, !5179, !5182}
!5140 = !DILocalVariable(name: "pool", arg: 1, scope: !5136, file: !3, line: 269, type: !232)
!5141 = !DILocalVariable(name: "cellp", arg: 2, scope: !5136, file: !3, line: 270, type: !4911)
!5142 = !DILocalVariable(name: "nonblock", arg: 3, scope: !5136, file: !3, line: 271, type: !158)
!5143 = !DILocalVariable(name: "file", arg: 4, scope: !5136, file: !3, line: 271, type: !873)
!5144 = !DILocalVariable(name: "mutexp", arg: 5, scope: !5136, file: !3, line: 272, type: !4912)
!5145 = !DILocalVariable(name: "cell", scope: !5136, file: !3, line: 274, type: !104)
!5146 = !DILocalVariable(name: "flags", scope: !5136, file: !3, line: 275, type: !313)
!5147 = !DILocalVariable(name: "err", scope: !5136, file: !3, line: 276, type: !158)
!5148 = !DILocalVariable(name: "wait", scope: !5136, file: !3, line: 277, type: !5149)
!5149 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !253, line: 14, baseType: !5150)
!5150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !253, line: 30, size: 320, elements: !5151)
!5151 = !{!5152, !5153, !5154, !5160}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5150, file: !253, line: 31, baseType: !7, size: 32)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5150, file: !253, line: 32, baseType: !103, size: 64, offset: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5150, file: !253, line: 33, baseType: !5155, size: 64, offset: 128)
!5155 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !253, line: 16, baseType: !5156)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!158, !5159, !7, !158, !103}
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5150, file: !253, line: 34, baseType: !294, size: 128, offset: 192)
!5161 = !DILocalVariable(name: "__dummy", scope: !5162, file: !3, line: 285, type: !313)
!5162 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 285, column: 2)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 285, column: 2)
!5164 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 285, column: 2)
!5165 = !DILocalVariable(name: "__dummy2", scope: !5162, file: !3, line: 285, type: !313)
!5166 = !DILocalVariable(name: "__ai_ptr", scope: !5167, file: !3, line: 293, type: !2050)
!5167 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 293, column: 3)
!5168 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 293, column: 3)
!5169 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 293, column: 3)
!5170 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 293, column: 3)
!5171 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 291, column: 62)
!5172 = !DILocalVariable(name: "__ret", scope: !5173, file: !3, line: 293, type: !7)
!5173 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 293, column: 3)
!5174 = !DILocalVariable(name: "__dummy", scope: !5175, file: !3, line: 301, type: !313)
!5175 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 301, column: 3)
!5176 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 301, column: 3)
!5177 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 301, column: 3)
!5178 = !DILocalVariable(name: "__dummy2", scope: !5175, file: !3, line: 301, type: !313)
!5179 = !DILocalVariable(name: "used", scope: !5180, file: !3, line: 316, type: !158)
!5180 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 315, column: 12)
!5181 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 315, column: 6)
!5182 = !DILabel(scope: !5136, name: "__error", file: !3, line: 330)
!5183 = !DILocation(line: 269, column: 52, scope: !5136)
!5184 = !DILocation(line: 270, column: 38, scope: !5136)
!5185 = !DILocation(line: 271, column: 14, scope: !5136)
!5186 = !DILocation(line: 271, column: 37, scope: !5136)
!5187 = !DILocation(line: 272, column: 24, scope: !5136)
!5188 = !DILocation(line: 274, column: 2, scope: !5136)
!5189 = !DILocation(line: 274, column: 29, scope: !5136)
!5190 = !DILocation(line: 275, column: 2, scope: !5136)
!5191 = !DILocation(line: 275, column: 16, scope: !5136)
!5192 = !DILocation(line: 276, column: 2, scope: !5136)
!5193 = !DILocation(line: 276, column: 6, scope: !5136)
!5194 = !DILocation(line: 277, column: 2, scope: !5136)
!5195 = !DILocation(line: 277, column: 21, scope: !5136)
!5196 = !DILocation(line: 279, column: 6, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 279, column: 6)
!5198 = !DILocation(line: 279, column: 11, scope: !5197)
!5199 = !DILocation(line: 279, column: 6, scope: !5136)
!5200 = !DILocation(line: 280, column: 3, scope: !5197)
!5201 = !DILocation(line: 282, column: 3, scope: !5136)
!5202 = !DILocation(line: 282, column: 9, scope: !5136)
!5203 = !DILocation(line: 284, column: 30, scope: !5136)
!5204 = !DILocation(line: 284, column: 2, scope: !5136)
!5205 = !DILocation(line: 285, column: 2, scope: !5136)
!5206 = !DILocation(line: 285, column: 2, scope: !5164)
!5207 = !DILocation(line: 285, column: 2, scope: !5162)
!5208 = !DILocation(line: 285, column: 2, scope: !5163)
!5209 = !DILocation(line: 286, column: 6, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 286, column: 6)
!5211 = !DILocation(line: 286, column: 12, scope: !5210)
!5212 = !DILocation(line: 286, column: 16, scope: !5210)
!5213 = !DILocation(line: 286, column: 6, scope: !5136)
!5214 = !DILocation(line: 287, column: 3, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 287, column: 3)
!5216 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 287, column: 3)
!5217 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 286, column: 25)
!5218 = !DILocation(line: 287, column: 3, scope: !5216)
!5219 = !DILocation(line: 288, column: 7, scope: !5217)
!5220 = !DILocation(line: 289, column: 3, scope: !5217)
!5221 = !DILocation(line: 291, column: 2, scope: !5136)
!5222 = !DILocation(line: 291, column: 9, scope: !5136)
!5223 = !DILocation(line: 291, column: 15, scope: !5136)
!5224 = !DILocation(line: 291, column: 20, scope: !5136)
!5225 = !DILocation(line: 291, column: 28, scope: !5136)
!5226 = !DILocation(line: 291, column: 33, scope: !5136)
!5227 = !DILocation(line: 291, column: 42, scope: !5136)
!5228 = !DILocation(line: 291, column: 47, scope: !5136)
!5229 = !DILocation(line: 291, column: 53, scope: !5136)
!5230 = !DILocation(line: 291, column: 45, scope: !5136)
!5231 = !DILocation(line: 0, scope: !5136)
!5232 = !DILocation(line: 293, column: 3, scope: !5171)
!5233 = !DILocation(line: 293, column: 3, scope: !5170)
!5234 = !DILocation(line: 293, column: 3, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 293, column: 3)
!5236 = !DILocation(line: 293, column: 3, scope: !5169)
!5237 = !DILocation(line: 293, column: 3, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 293, column: 3)
!5239 = !DILocation(line: 293, column: 3, scope: !5167)
!5240 = !DILocation(line: 293, column: 3, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 293, column: 3)
!5242 = !DILocation(line: 293, column: 3, scope: !5173)
!5243 = !{i64 2154643231}
!5244 = !DILocation(line: 293, column: 3, scope: !5168)
!5245 = !DILocation(line: 294, column: 19, scope: !5171)
!5246 = !DILocation(line: 294, column: 25, scope: !5171)
!5247 = !DILocation(line: 294, column: 3, scope: !5171)
!5248 = !DILocation(line: 295, column: 27, scope: !5171)
!5249 = !DILocation(line: 295, column: 33, scope: !5171)
!5250 = !DILocation(line: 295, column: 39, scope: !5171)
!5251 = !DILocation(line: 295, column: 3, scope: !5171)
!5252 = !DILocation(line: 296, column: 7, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 296, column: 7)
!5254 = !DILocation(line: 296, column: 7, scope: !5171)
!5255 = !DILocation(line: 297, column: 17, scope: !5253)
!5256 = !DILocation(line: 297, column: 4, scope: !5253)
!5257 = !DILocation(line: 298, column: 3, scope: !5171)
!5258 = !DILocation(line: 299, column: 7, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 299, column: 7)
!5260 = !DILocation(line: 299, column: 7, scope: !5171)
!5261 = !DILocation(line: 300, column: 15, scope: !5259)
!5262 = !DILocation(line: 300, column: 4, scope: !5259)
!5263 = !DILocation(line: 301, column: 3, scope: !5171)
!5264 = !DILocation(line: 301, column: 3, scope: !5177)
!5265 = !DILocation(line: 301, column: 3, scope: !5175)
!5266 = !DILocation(line: 301, column: 3, scope: !5176)
!5267 = !DILocation(line: 302, column: 22, scope: !5171)
!5268 = !DILocation(line: 302, column: 28, scope: !5171)
!5269 = !DILocation(line: 302, column: 3, scope: !5171)
!5270 = !DILocation(line: 304, column: 22, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 304, column: 7)
!5272 = !DILocation(line: 304, column: 7, scope: !5271)
!5273 = !DILocation(line: 304, column: 7, scope: !5171)
!5274 = !DILocation(line: 305, column: 8, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 304, column: 32)
!5276 = !DILocation(line: 306, column: 4, scope: !5275)
!5277 = distinct !{!5277, !5221, !5278, !4406, !4407}
!5278 = !DILocation(line: 308, column: 2, scope: !5136)
!5279 = !DILocation(line: 309, column: 6, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 309, column: 6)
!5281 = !DILocation(line: 309, column: 12, scope: !5280)
!5282 = !DILocation(line: 309, column: 6, scope: !5136)
!5283 = !DILocation(line: 310, column: 7, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 309, column: 21)
!5285 = !DILocation(line: 311, column: 3, scope: !5284)
!5286 = !DILocation(line: 314, column: 9, scope: !5136)
!5287 = !DILocation(line: 314, column: 15, scope: !5136)
!5288 = !DILocation(line: 314, column: 7, scope: !5136)
!5289 = !DILocation(line: 315, column: 6, scope: !5181)
!5290 = !DILocation(line: 315, column: 6, scope: !5136)
!5291 = !DILocation(line: 316, column: 3, scope: !5180)
!5292 = !DILocation(line: 316, column: 7, scope: !5180)
!5293 = !DILocation(line: 317, column: 16, scope: !5180)
!5294 = !DILocation(line: 317, column: 22, scope: !5180)
!5295 = !DILocation(line: 317, column: 3, scope: !5180)
!5296 = !DILocation(line: 317, column: 9, scope: !5180)
!5297 = !DILocation(line: 317, column: 14, scope: !5180)
!5298 = !DILocation(line: 318, column: 15, scope: !5180)
!5299 = !DILocation(line: 318, column: 21, scope: !5180)
!5300 = !DILocation(line: 318, column: 3, scope: !5180)
!5301 = !DILocation(line: 319, column: 23, scope: !5180)
!5302 = !DILocation(line: 319, column: 29, scope: !5180)
!5303 = !DILocation(line: 319, column: 10, scope: !5180)
!5304 = !DILocation(line: 319, column: 8, scope: !5180)
!5305 = !DILocation(line: 320, column: 7, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 320, column: 7)
!5307 = !DILocation(line: 320, column: 13, scope: !5306)
!5308 = !DILocation(line: 320, column: 24, scope: !5306)
!5309 = !DILocation(line: 320, column: 22, scope: !5306)
!5310 = !DILocation(line: 320, column: 7, scope: !5180)
!5311 = !DILocation(line: 321, column: 21, scope: !5306)
!5312 = !DILocation(line: 321, column: 4, scope: !5306)
!5313 = !DILocation(line: 321, column: 10, scope: !5306)
!5314 = !DILocation(line: 321, column: 19, scope: !5306)
!5315 = !DILocation(line: 322, column: 3, scope: !5180)
!5316 = !DILocation(line: 322, column: 9, scope: !5180)
!5317 = !DILocation(line: 322, column: 28, scope: !5180)
!5318 = !DILocation(line: 324, column: 3, scope: !5180)
!5319 = !DILocation(line: 324, column: 9, scope: !5180)
!5320 = !DILocation(line: 324, column: 14, scope: !5180)
!5321 = !DILocation(line: 325, column: 7, scope: !5180)
!5322 = !DILocation(line: 326, column: 2, scope: !5181)
!5323 = !DILocation(line: 326, column: 2, scope: !5180)
!5324 = !DILocation(line: 327, column: 3, scope: !5181)
!5325 = !DILocation(line: 327, column: 9, scope: !5181)
!5326 = !DILocation(line: 327, column: 29, scope: !5181)
!5327 = !DILocation(line: 328, column: 11, scope: !5136)
!5328 = !DILocation(line: 328, column: 3, scope: !5136)
!5329 = !DILocation(line: 328, column: 9, scope: !5136)
!5330 = !DILocation(line: 328, column: 2, scope: !5136)
!5331 = !DILocation(line: 330, column: 1, scope: !5136)
!5332 = !DILocation(line: 331, column: 26, scope: !5136)
!5333 = !DILocation(line: 331, column: 32, scope: !5136)
!5334 = !DILocation(line: 331, column: 38, scope: !5136)
!5335 = !DILocation(line: 331, column: 2, scope: !5136)
!5336 = !DILocation(line: 332, column: 9, scope: !5136)
!5337 = !DILocation(line: 332, column: 2, scope: !5136)
!5338 = !DILocation(line: 333, column: 1, scope: !5136)
!5339 = distinct !DISubprogram(name: "snd_seq_event_packet_size", scope: !4275, file: !4275, line: 79, type: !5340, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5342)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{!309, !222}
!5342 = !{!5343}
!5343 = !DILocalVariable(name: "ev", arg: 1, scope: !5339, file: !4275, line: 79, type: !222)
!5344 = !DILocation(line: 79, column: 70, scope: !5339)
!5345 = !DILocation(line: 83, column: 2, scope: !5339)
!5346 = distinct !DISubprogram(name: "copy_from_user", scope: !5347, file: !5347, line: 180, type: !5348, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5350)
!5347 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!313, !103, !1390, !313}
!5350 = !{!5351, !5352, !5353}
!5351 = !DILocalVariable(name: "to", arg: 1, scope: !5346, file: !5347, line: 180, type: !103)
!5352 = !DILocalVariable(name: "from", arg: 2, scope: !5346, file: !5347, line: 180, type: !1390)
!5353 = !DILocalVariable(name: "n", arg: 3, scope: !5346, file: !5347, line: 180, type: !313)
!5354 = !DILocation(line: 180, column: 22, scope: !5346)
!5355 = !DILocation(line: 180, column: 45, scope: !5346)
!5356 = !DILocation(line: 180, column: 65, scope: !5346)
!5357 = !DILocation(line: 182, column: 22, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5346, file: !5347, line: 182, column: 6)
!5359 = !DILocation(line: 182, column: 26, scope: !5358)
!5360 = !DILocation(line: 182, column: 6, scope: !5358)
!5361 = !DILocation(line: 182, column: 6, scope: !5346)
!5362 = !DILocation(line: 183, column: 23, scope: !5358)
!5363 = !DILocation(line: 183, column: 27, scope: !5358)
!5364 = !DILocation(line: 183, column: 33, scope: !5358)
!5365 = !DILocation(line: 183, column: 7, scope: !5358)
!5366 = !DILocation(line: 183, column: 5, scope: !5358)
!5367 = !DILocation(line: 183, column: 3, scope: !5358)
!5368 = !DILocation(line: 184, column: 9, scope: !5346)
!5369 = !DILocation(line: 184, column: 2, scope: !5346)
!5370 = distinct !DISubprogram(name: "snd_seq_pool_poll_wait", scope: !3, file: !3, line: 428, type: !5371, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5375)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!158, !232, !873, !5373}
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1919, line: 40, baseType: !1918)
!5375 = !{!5376, !5377, !5378}
!5376 = !DILocalVariable(name: "pool", arg: 1, scope: !5370, file: !3, line: 428, type: !232)
!5377 = !DILocalVariable(name: "file", arg: 2, scope: !5370, file: !3, line: 428, type: !873)
!5378 = !DILocalVariable(name: "wait", arg: 3, scope: !5370, file: !3, line: 429, type: !5373)
!5379 = !DILocation(line: 428, column: 49, scope: !5370)
!5380 = !DILocation(line: 428, column: 68, scope: !5370)
!5381 = !DILocation(line: 429, column: 19, scope: !5370)
!5382 = !DILocation(line: 431, column: 12, scope: !5370)
!5383 = !DILocation(line: 431, column: 19, scope: !5370)
!5384 = !DILocation(line: 431, column: 25, scope: !5370)
!5385 = !DILocation(line: 431, column: 39, scope: !5370)
!5386 = !DILocation(line: 431, column: 2, scope: !5370)
!5387 = !DILocation(line: 432, column: 27, scope: !5370)
!5388 = !DILocation(line: 432, column: 9, scope: !5370)
!5389 = !DILocation(line: 432, column: 2, scope: !5370)
!5390 = distinct !DISubprogram(name: "poll_wait", scope: !1919, file: !1919, line: 42, type: !5391, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5393)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{null, !873, !1926, !5373}
!5393 = !{!5394, !5395, !5396}
!5394 = !DILocalVariable(name: "filp", arg: 1, scope: !5390, file: !1919, line: 42, type: !873)
!5395 = !DILocalVariable(name: "wait_address", arg: 2, scope: !5390, file: !1919, line: 42, type: !1926)
!5396 = !DILocalVariable(name: "p", arg: 3, scope: !5390, file: !1919, line: 42, type: !5373)
!5397 = !DILocation(line: 42, column: 44, scope: !5390)
!5398 = !DILocation(line: 42, column: 70, scope: !5390)
!5399 = !DILocation(line: 42, column: 96, scope: !5390)
!5400 = !DILocation(line: 44, column: 6, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5390, file: !1919, line: 44, column: 6)
!5402 = !DILocation(line: 44, column: 8, scope: !5401)
!5403 = !DILocation(line: 44, column: 11, scope: !5401)
!5404 = !DILocation(line: 44, column: 14, scope: !5401)
!5405 = !DILocation(line: 44, column: 21, scope: !5401)
!5406 = !DILocation(line: 44, column: 24, scope: !5401)
!5407 = !DILocation(line: 44, column: 6, scope: !5390)
!5408 = !DILocation(line: 45, column: 3, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5401, file: !1919, line: 44, column: 38)
!5410 = !DILocation(line: 45, column: 6, scope: !5409)
!5411 = !DILocation(line: 45, column: 13, scope: !5409)
!5412 = !DILocation(line: 45, column: 19, scope: !5409)
!5413 = !DILocation(line: 45, column: 33, scope: !5409)
!5414 = !DILocation(line: 52, column: 3, scope: !5409)
!5415 = !DILocation(line: 52, column: 3, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5409, file: !1919, line: 52, column: 3)
!5417 = !DILocation(line: 52, column: 3, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5416, file: !1919, line: 52, column: 3)
!5419 = !{i64 2154479179}
!5420 = !DILocation(line: 53, column: 2, scope: !5409)
!5421 = !DILocation(line: 54, column: 1, scope: !5390)
!5422 = distinct !DISubprogram(name: "snd_seq_pool_init", scope: !3, file: !3, line: 437, type: !4878, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5423)
!5423 = !{!5424, !5425, !5426, !5427}
!5424 = !DILocalVariable(name: "pool", arg: 1, scope: !5422, file: !3, line: 437, type: !232)
!5425 = !DILocalVariable(name: "cell", scope: !5422, file: !3, line: 439, type: !158)
!5426 = !DILocalVariable(name: "cellptr", scope: !5422, file: !3, line: 440, type: !104)
!5427 = !DILocalVariable(name: "__ret_warn_on", scope: !5428, file: !3, line: 442, type: !158)
!5428 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 442, column: 6)
!5429 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 442, column: 6)
!5430 = !DILocation(line: 437, column: 44, scope: !5422)
!5431 = !DILocation(line: 439, column: 2, scope: !5422)
!5432 = !DILocation(line: 439, column: 6, scope: !5422)
!5433 = !DILocation(line: 440, column: 2, scope: !5422)
!5434 = !DILocation(line: 440, column: 29, scope: !5422)
!5435 = !DILocation(line: 442, column: 6, scope: !5428)
!5436 = !DILocation(line: 442, column: 6, scope: !5429)
!5437 = !DILocation(line: 442, column: 6, scope: !5422)
!5438 = !DILocation(line: 443, column: 3, scope: !5429)
!5439 = !DILocation(line: 445, column: 62, scope: !5422)
!5440 = !DILocation(line: 445, column: 68, scope: !5422)
!5441 = !DILocation(line: 445, column: 12, scope: !5422)
!5442 = !DILocation(line: 445, column: 10, scope: !5422)
!5443 = !DILocation(line: 447, column: 7, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 447, column: 6)
!5445 = !DILocation(line: 447, column: 6, scope: !5422)
!5446 = !DILocation(line: 448, column: 3, scope: !5444)
!5447 = !DILocation(line: 451, column: 17, scope: !5422)
!5448 = !DILocation(line: 451, column: 23, scope: !5422)
!5449 = !DILocation(line: 451, column: 2, scope: !5422)
!5450 = !DILocation(line: 452, column: 6, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 452, column: 6)
!5452 = !DILocation(line: 452, column: 12, scope: !5451)
!5453 = !DILocation(line: 452, column: 6, scope: !5422)
!5454 = !DILocation(line: 453, column: 20, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 452, column: 17)
!5456 = !DILocation(line: 453, column: 26, scope: !5455)
!5457 = !DILocation(line: 453, column: 3, scope: !5455)
!5458 = !DILocation(line: 454, column: 10, scope: !5455)
!5459 = !DILocation(line: 454, column: 3, scope: !5455)
!5460 = !DILocation(line: 455, column: 3, scope: !5455)
!5461 = !DILocation(line: 458, column: 14, scope: !5422)
!5462 = !DILocation(line: 458, column: 2, scope: !5422)
!5463 = !DILocation(line: 458, column: 8, scope: !5422)
!5464 = !DILocation(line: 458, column: 12, scope: !5422)
!5465 = !DILocation(line: 459, column: 2, scope: !5422)
!5466 = !DILocation(line: 459, column: 8, scope: !5422)
!5467 = !DILocation(line: 459, column: 13, scope: !5422)
!5468 = !DILocation(line: 461, column: 12, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 461, column: 2)
!5470 = !DILocation(line: 461, column: 7, scope: !5469)
!5471 = !DILocation(line: 461, column: 17, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 461, column: 2)
!5473 = !DILocation(line: 461, column: 24, scope: !5472)
!5474 = !DILocation(line: 461, column: 30, scope: !5472)
!5475 = !DILocation(line: 461, column: 22, scope: !5472)
!5476 = !DILocation(line: 461, column: 2, scope: !5469)
!5477 = !DILocation(line: 462, column: 13, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 461, column: 44)
!5479 = !DILocation(line: 462, column: 19, scope: !5478)
!5480 = !DILocation(line: 462, column: 25, scope: !5478)
!5481 = !DILocation(line: 462, column: 23, scope: !5478)
!5482 = !DILocation(line: 462, column: 11, scope: !5478)
!5483 = !DILocation(line: 463, column: 19, scope: !5478)
!5484 = !DILocation(line: 463, column: 3, scope: !5478)
!5485 = !DILocation(line: 463, column: 12, scope: !5478)
!5486 = !DILocation(line: 463, column: 17, scope: !5478)
!5487 = !DILocation(line: 464, column: 19, scope: !5478)
!5488 = !DILocation(line: 464, column: 25, scope: !5478)
!5489 = !DILocation(line: 464, column: 3, scope: !5478)
!5490 = !DILocation(line: 464, column: 12, scope: !5478)
!5491 = !DILocation(line: 464, column: 17, scope: !5478)
!5492 = !DILocation(line: 465, column: 16, scope: !5478)
!5493 = !DILocation(line: 465, column: 3, scope: !5478)
!5494 = !DILocation(line: 465, column: 9, scope: !5478)
!5495 = !DILocation(line: 465, column: 14, scope: !5478)
!5496 = !DILocation(line: 466, column: 2, scope: !5478)
!5497 = !DILocation(line: 461, column: 40, scope: !5472)
!5498 = !DILocation(line: 461, column: 2, scope: !5472)
!5499 = distinct !{!5499, !5476, !5500, !4406, !4407}
!5500 = !DILocation(line: 466, column: 2, scope: !5469)
!5501 = !DILocation(line: 467, column: 16, scope: !5422)
!5502 = !DILocation(line: 467, column: 22, scope: !5422)
!5503 = !DILocation(line: 467, column: 27, scope: !5422)
!5504 = !DILocation(line: 467, column: 32, scope: !5422)
!5505 = !DILocation(line: 467, column: 2, scope: !5422)
!5506 = !DILocation(line: 467, column: 8, scope: !5422)
!5507 = !DILocation(line: 467, column: 13, scope: !5422)
!5508 = !DILocation(line: 470, column: 2, scope: !5422)
!5509 = !DILocation(line: 470, column: 8, scope: !5422)
!5510 = !DILocation(line: 470, column: 17, scope: !5422)
!5511 = !DILocation(line: 471, column: 25, scope: !5422)
!5512 = !DILocation(line: 471, column: 31, scope: !5422)
!5513 = !DILocation(line: 471, column: 2, scope: !5422)
!5514 = !DILocation(line: 471, column: 8, scope: !5422)
!5515 = !DILocation(line: 471, column: 23, scope: !5422)
!5516 = !DILocation(line: 472, column: 19, scope: !5422)
!5517 = !DILocation(line: 472, column: 25, scope: !5422)
!5518 = !DILocation(line: 472, column: 2, scope: !5422)
!5519 = !DILocation(line: 473, column: 2, scope: !5422)
!5520 = !DILocation(line: 474, column: 1, scope: !5422)
!5521 = distinct !DISubprogram(name: "kvmalloc_array", scope: !93, file: !93, line: 749, type: !5522, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5524)
!5522 = !DISubroutineType(types: !5523)
!5523 = !{!103, !309, !309, !302}
!5524 = !{!5525, !5526, !5527, !5528}
!5525 = !DILocalVariable(name: "n", arg: 1, scope: !5521, file: !93, line: 749, type: !309)
!5526 = !DILocalVariable(name: "size", arg: 2, scope: !5521, file: !93, line: 749, type: !309)
!5527 = !DILocalVariable(name: "flags", arg: 3, scope: !5521, file: !93, line: 749, type: !302)
!5528 = !DILocalVariable(name: "bytes", scope: !5521, file: !93, line: 751, type: !309)
!5529 = !DILocation(line: 749, column: 62, scope: !5521)
!5530 = !DILocation(line: 749, column: 72, scope: !5521)
!5531 = !DILocation(line: 749, column: 84, scope: !5521)
!5532 = !DILocation(line: 751, column: 2, scope: !5521)
!5533 = !DILocation(line: 751, column: 9, scope: !5521)
!5534 = !DILocation(line: 753, column: 6, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5521, file: !93, line: 753, column: 6)
!5536 = !DILocation(line: 753, column: 6, scope: !5521)
!5537 = !DILocation(line: 754, column: 3, scope: !5535)
!5538 = !DILocation(line: 756, column: 18, scope: !5521)
!5539 = !DILocation(line: 756, column: 25, scope: !5521)
!5540 = !DILocation(line: 756, column: 9, scope: !5521)
!5541 = !DILocation(line: 756, column: 2, scope: !5521)
!5542 = !DILocation(line: 757, column: 1, scope: !5521)
!5543 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4835, file: !4835, line: 374, type: !5544, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5546)
!5544 = !DISubroutineType(types: !5545)
!5545 = !{null, !1571}
!5546 = !{!5547}
!5547 = !DILocalVariable(name: "lock", arg: 1, scope: !5543, file: !4835, line: 374, type: !1571)
!5548 = !DILocation(line: 374, column: 55, scope: !5543)
!5549 = !DILocation(line: 376, column: 2, scope: !5543)
!5550 = !DILocation(line: 377, column: 1, scope: !5543)
!5551 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4835, file: !4835, line: 399, type: !5544, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5552)
!5552 = !{!5553}
!5553 = !DILocalVariable(name: "lock", arg: 1, scope: !5551, file: !4835, line: 399, type: !1571)
!5554 = !DILocation(line: 399, column: 57, scope: !5551)
!5555 = !DILocation(line: 401, column: 2, scope: !5551)
!5556 = !DILocation(line: 402, column: 1, scope: !5551)
!5557 = !DISubprogram(name: "kvfree", scope: !93, file: !93, line: 766, type: !5558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5558 = !DISubroutineType(types: !5559)
!5559 = !{null, !1390}
!5560 = distinct !DISubprogram(name: "snd_seq_pool_mark_closing", scope: !3, file: !3, line: 477, type: !5561, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5563)
!5561 = !DISubroutineType(types: !5562)
!5562 = !{null, !232}
!5563 = !{!5564, !5565, !5566, !5569, !5573}
!5564 = !DILocalVariable(name: "pool", arg: 1, scope: !5560, file: !3, line: 477, type: !232)
!5565 = !DILocalVariable(name: "flags", scope: !5560, file: !3, line: 479, type: !313)
!5566 = !DILocalVariable(name: "__ret_warn_on", scope: !5567, file: !3, line: 481, type: !158)
!5567 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 481, column: 6)
!5568 = distinct !DILexicalBlock(scope: !5560, file: !3, line: 481, column: 6)
!5569 = !DILocalVariable(name: "__dummy", scope: !5570, file: !3, line: 483, type: !313)
!5570 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 483, column: 2)
!5571 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 483, column: 2)
!5572 = distinct !DILexicalBlock(scope: !5560, file: !3, line: 483, column: 2)
!5573 = !DILocalVariable(name: "__dummy2", scope: !5570, file: !3, line: 483, type: !313)
!5574 = !DILocation(line: 477, column: 53, scope: !5560)
!5575 = !DILocation(line: 479, column: 2, scope: !5560)
!5576 = !DILocation(line: 479, column: 16, scope: !5560)
!5577 = !DILocation(line: 481, column: 6, scope: !5567)
!5578 = !DILocation(line: 481, column: 6, scope: !5568)
!5579 = !DILocation(line: 481, column: 6, scope: !5560)
!5580 = !DILocation(line: 482, column: 3, scope: !5568)
!5581 = !DILocation(line: 483, column: 2, scope: !5560)
!5582 = !DILocation(line: 483, column: 2, scope: !5572)
!5583 = !DILocation(line: 483, column: 2, scope: !5570)
!5584 = !DILocation(line: 483, column: 2, scope: !5571)
!5585 = !DILocation(line: 484, column: 2, scope: !5560)
!5586 = !DILocation(line: 484, column: 8, scope: !5560)
!5587 = !DILocation(line: 484, column: 16, scope: !5560)
!5588 = !DILocation(line: 485, column: 26, scope: !5560)
!5589 = !DILocation(line: 485, column: 32, scope: !5560)
!5590 = !DILocation(line: 485, column: 38, scope: !5560)
!5591 = !DILocation(line: 485, column: 2, scope: !5560)
!5592 = !DILocation(line: 486, column: 1, scope: !5560)
!5593 = distinct !DISubprogram(name: "snd_seq_pool_done", scope: !3, file: !3, line: 489, type: !4878, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5594)
!5594 = !{!5595, !5596, !5597}
!5595 = !DILocalVariable(name: "pool", arg: 1, scope: !5593, file: !3, line: 489, type: !232)
!5596 = !DILocalVariable(name: "ptr", scope: !5593, file: !3, line: 491, type: !104)
!5597 = !DILocalVariable(name: "__ret_warn_on", scope: !5598, file: !3, line: 493, type: !158)
!5598 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 493, column: 6)
!5599 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 493, column: 6)
!5600 = !DILocation(line: 489, column: 44, scope: !5593)
!5601 = !DILocation(line: 491, column: 2, scope: !5593)
!5602 = !DILocation(line: 491, column: 29, scope: !5593)
!5603 = !DILocation(line: 493, column: 6, scope: !5598)
!5604 = !DILocation(line: 493, column: 6, scope: !5599)
!5605 = !DILocation(line: 493, column: 6, scope: !5593)
!5606 = !DILocation(line: 494, column: 3, scope: !5599)
!5607 = !DILocation(line: 497, column: 24, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 497, column: 6)
!5609 = !DILocation(line: 497, column: 30, scope: !5608)
!5610 = !DILocation(line: 497, column: 6, scope: !5608)
!5611 = !DILocation(line: 497, column: 6, scope: !5593)
!5612 = !DILocation(line: 498, column: 3, scope: !5608)
!5613 = !DILocation(line: 500, column: 2, scope: !5593)
!5614 = !DILocation(line: 500, column: 22, scope: !5593)
!5615 = !DILocation(line: 500, column: 28, scope: !5593)
!5616 = !DILocation(line: 500, column: 9, scope: !5593)
!5617 = !DILocation(line: 500, column: 37, scope: !5593)
!5618 = !DILocation(line: 501, column: 3, scope: !5593)
!5619 = distinct !{!5619, !5613, !5620, !4406, !4407}
!5620 = !DILocation(line: 501, column: 37, scope: !5593)
!5621 = !DILocation(line: 504, column: 17, scope: !5593)
!5622 = !DILocation(line: 504, column: 23, scope: !5593)
!5623 = !DILocation(line: 504, column: 2, scope: !5593)
!5624 = !DILocation(line: 505, column: 8, scope: !5593)
!5625 = !DILocation(line: 505, column: 14, scope: !5593)
!5626 = !DILocation(line: 505, column: 6, scope: !5593)
!5627 = !DILocation(line: 506, column: 2, scope: !5593)
!5628 = !DILocation(line: 506, column: 8, scope: !5593)
!5629 = !DILocation(line: 506, column: 12, scope: !5593)
!5630 = !DILocation(line: 507, column: 2, scope: !5593)
!5631 = !DILocation(line: 507, column: 8, scope: !5593)
!5632 = !DILocation(line: 507, column: 13, scope: !5593)
!5633 = !DILocation(line: 508, column: 2, scope: !5593)
!5634 = !DILocation(line: 508, column: 8, scope: !5593)
!5635 = !DILocation(line: 508, column: 23, scope: !5593)
!5636 = !DILocation(line: 509, column: 19, scope: !5593)
!5637 = !DILocation(line: 509, column: 25, scope: !5593)
!5638 = !DILocation(line: 509, column: 2, scope: !5593)
!5639 = !DILocation(line: 511, column: 9, scope: !5593)
!5640 = !DILocation(line: 511, column: 2, scope: !5593)
!5641 = !DILocation(line: 513, column: 17, scope: !5593)
!5642 = !DILocation(line: 513, column: 23, scope: !5593)
!5643 = !DILocation(line: 513, column: 2, scope: !5593)
!5644 = !DILocation(line: 514, column: 2, scope: !5593)
!5645 = !DILocation(line: 514, column: 8, scope: !5593)
!5646 = !DILocation(line: 514, column: 16, scope: !5593)
!5647 = !DILocation(line: 515, column: 19, scope: !5593)
!5648 = !DILocation(line: 515, column: 25, scope: !5593)
!5649 = !DILocation(line: 515, column: 2, scope: !5593)
!5650 = !DILocation(line: 517, column: 2, scope: !5593)
!5651 = !DILocation(line: 518, column: 1, scope: !5593)
!5652 = distinct !DISubprogram(name: "atomic_read", scope: !5653, file: !5653, line: 30, type: !5654, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5658)
!5653 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5654 = !DISubroutineType(types: !5655)
!5655 = !{!158, !5656}
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5657, size: 64)
!5657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!5658 = !{!5659}
!5659 = !DILocalVariable(name: "v", arg: 1, scope: !5652, file: !5653, line: 30, type: !5656)
!5660 = !DILocation(line: 30, column: 29, scope: !5652)
!5661 = !DILocation(line: 32, column: 25, scope: !5652)
!5662 = !DILocation(line: 32, column: 2, scope: !5652)
!5663 = !DILocation(line: 33, column: 25, scope: !5652)
!5664 = !DILocation(line: 33, column: 9, scope: !5652)
!5665 = !DILocation(line: 33, column: 2, scope: !5652)
!5666 = !DISubprogram(name: "schedule_timeout_uninterruptible", scope: !2674, file: !2674, line: 301, type: !5667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5667 = !DISubroutineType(types: !5668)
!5668 = !{!869, !869}
!5669 = !DILocation(line: 522, column: 43, scope: !4226)
!5670 = !DILocation(line: 524, column: 2, scope: !4226)
!5671 = !DILocation(line: 524, column: 23, scope: !4226)
!5672 = !DILocation(line: 527, column: 9, scope: !4226)
!5673 = !DILocation(line: 527, column: 7, scope: !4226)
!5674 = !DILocation(line: 528, column: 7, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 528, column: 6)
!5676 = !DILocation(line: 528, column: 6, scope: !4226)
!5677 = !DILocation(line: 529, column: 3, scope: !5675)
!5678 = !DILocation(line: 530, column: 2, scope: !4226)
!5679 = !DILocation(line: 530, column: 2, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 530, column: 2)
!5681 = !DILocation(line: 531, column: 2, scope: !4226)
!5682 = !DILocation(line: 531, column: 8, scope: !4226)
!5683 = !DILocation(line: 531, column: 12, scope: !4226)
!5684 = !DILocation(line: 532, column: 2, scope: !4226)
!5685 = !DILocation(line: 532, column: 8, scope: !4226)
!5686 = !DILocation(line: 532, column: 13, scope: !4226)
!5687 = !DILocation(line: 533, column: 2, scope: !4226)
!5688 = !DILocation(line: 533, column: 8, scope: !4226)
!5689 = !DILocation(line: 533, column: 23, scope: !4226)
!5690 = !DILocation(line: 534, column: 14, scope: !4226)
!5691 = !DILocation(line: 534, column: 20, scope: !4226)
!5692 = !DILocation(line: 534, column: 2, scope: !4226)
!5693 = !DILocation(line: 535, column: 2, scope: !4226)
!5694 = !DILocation(line: 535, column: 8, scope: !4226)
!5695 = !DILocation(line: 535, column: 16, scope: !4226)
!5696 = !DILocation(line: 536, column: 2, scope: !4226)
!5697 = !DILocation(line: 536, column: 2, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 536, column: 2)
!5699 = !DILocation(line: 538, column: 15, scope: !4226)
!5700 = !DILocation(line: 538, column: 2, scope: !4226)
!5701 = !DILocation(line: 538, column: 8, scope: !4226)
!5702 = !DILocation(line: 538, column: 13, scope: !4226)
!5703 = !DILocation(line: 541, column: 2, scope: !4226)
!5704 = !DILocation(line: 541, column: 8, scope: !4226)
!5705 = !DILocation(line: 541, column: 17, scope: !4226)
!5706 = !DILocation(line: 542, column: 9, scope: !4226)
!5707 = !DILocation(line: 542, column: 2, scope: !4226)
!5708 = !DILocation(line: 543, column: 1, scope: !4226)
!5709 = distinct !DISubprogram(name: "kzalloc", scope: !93, file: !93, line: 719, type: !5710, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5712)
!5710 = !DISubroutineType(types: !5711)
!5711 = !{!103, !309, !302}
!5712 = !{!5713, !5714}
!5713 = !DILocalVariable(name: "size", arg: 1, scope: !5709, file: !93, line: 719, type: !309)
!5714 = !DILocalVariable(name: "flags", arg: 2, scope: !5709, file: !93, line: 719, type: !302)
!5715 = !DILocation(line: 719, column: 52, scope: !5709)
!5716 = !DILocation(line: 719, column: 64, scope: !5709)
!5717 = !DILocation(line: 721, column: 17, scope: !5709)
!5718 = !DILocation(line: 721, column: 23, scope: !5709)
!5719 = !DILocation(line: 721, column: 29, scope: !5709)
!5720 = !DILocation(line: 721, column: 9, scope: !5709)
!5721 = !DILocation(line: 721, column: 2, scope: !5709)
!5722 = distinct !DISubprogram(name: "atomic_set", scope: !5653, file: !5653, line: 65, type: !5723, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5726)
!5723 = !DISubroutineType(types: !5724)
!5724 = !{null, !5725, !158}
!5725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!5726 = !{!5727, !5728}
!5727 = !DILocalVariable(name: "v", arg: 1, scope: !5722, file: !5653, line: 65, type: !5725)
!5728 = !DILocalVariable(name: "i", arg: 2, scope: !5722, file: !5653, line: 65, type: !158)
!5729 = !DILocation(line: 65, column: 22, scope: !5722)
!5730 = !DILocation(line: 65, column: 29, scope: !5722)
!5731 = !DILocation(line: 67, column: 26, scope: !5722)
!5732 = !DILocation(line: 67, column: 2, scope: !5722)
!5733 = !DILocation(line: 68, column: 17, scope: !5722)
!5734 = !DILocation(line: 68, column: 20, scope: !5722)
!5735 = !DILocation(line: 68, column: 2, scope: !5722)
!5736 = !DILocation(line: 69, column: 1, scope: !5722)
!5737 = !DISubprogram(name: "__init_waitqueue_head", scope: !253, file: !253, line: 64, type: !5738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5738 = !DISubroutineType(types: !5739)
!5739 = !{null, !4868, !594, !5740}
!5740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!5741 = distinct !DISubprogram(name: "snd_seq_pool_delete", scope: !3, file: !3, line: 546, type: !5742, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5745)
!5742 = !DISubroutineType(types: !5743)
!5743 = !{!158, !5744}
!5744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!5745 = !{!5746, !5747}
!5746 = !DILocalVariable(name: "ppool", arg: 1, scope: !5741, file: !3, line: 546, type: !5744)
!5747 = !DILocalVariable(name: "pool", scope: !5741, file: !3, line: 548, type: !232)
!5748 = !DILocation(line: 546, column: 47, scope: !5741)
!5749 = !DILocation(line: 548, column: 2, scope: !5741)
!5750 = !DILocation(line: 548, column: 23, scope: !5741)
!5751 = !DILocation(line: 548, column: 31, scope: !5741)
!5752 = !DILocation(line: 548, column: 30, scope: !5741)
!5753 = !DILocation(line: 550, column: 3, scope: !5741)
!5754 = !DILocation(line: 550, column: 9, scope: !5741)
!5755 = !DILocation(line: 551, column: 6, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 551, column: 6)
!5757 = !DILocation(line: 551, column: 11, scope: !5756)
!5758 = !DILocation(line: 551, column: 6, scope: !5741)
!5759 = !DILocation(line: 552, column: 3, scope: !5756)
!5760 = !DILocation(line: 553, column: 28, scope: !5741)
!5761 = !DILocation(line: 553, column: 2, scope: !5741)
!5762 = !DILocation(line: 554, column: 20, scope: !5741)
!5763 = !DILocation(line: 554, column: 2, scope: !5741)
!5764 = !DILocation(line: 555, column: 8, scope: !5741)
!5765 = !DILocation(line: 555, column: 2, scope: !5741)
!5766 = !DILocation(line: 556, column: 2, scope: !5741)
!5767 = !DILocation(line: 557, column: 1, scope: !5741)
!5768 = !DISubprogram(name: "kfree", scope: !93, file: !93, line: 227, type: !5558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5769 = distinct !DISubprogram(name: "snd_seq_info_pool", scope: !3, file: !3, line: 560, type: !5770, scopeLine: 562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5782)
!5770 = !DISubroutineType(types: !5771)
!5771 = !{null, !5772, !232, !301}
!5772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5773, size: 64)
!5773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_buffer", file: !5774, line: 15, size: 256, elements: !5775)
!5774 = !DIFile(filename: "./include/sound/info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "060f8a4a29808d9f7cc7b628d26ba172")
!5775 = !{!5776, !5777, !5778, !5779, !5780, !5781}
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5773, file: !5774, line: 16, baseType: !301, size: 64)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !5773, file: !5774, line: 17, baseType: !7, size: 32, offset: 64)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5773, file: !5774, line: 18, baseType: !7, size: 32, offset: 96)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5773, file: !5774, line: 19, baseType: !7, size: 32, offset: 128)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5773, file: !5774, line: 20, baseType: !158, size: 32, offset: 160)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5773, file: !5774, line: 21, baseType: !158, size: 32, offset: 192)
!5782 = !{!5783, !5784, !5785}
!5783 = !DILocalVariable(name: "buffer", arg: 1, scope: !5769, file: !3, line: 560, type: !5772)
!5784 = !DILocalVariable(name: "pool", arg: 2, scope: !5769, file: !3, line: 561, type: !232)
!5785 = !DILocalVariable(name: "space", arg: 3, scope: !5769, file: !3, line: 561, type: !301)
!5786 = !DILocation(line: 560, column: 48, scope: !5769)
!5787 = !DILocation(line: 561, column: 31, scope: !5769)
!5788 = !DILocation(line: 561, column: 43, scope: !5769)
!5789 = !DILocation(line: 563, column: 6, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 563, column: 6)
!5791 = !DILocation(line: 563, column: 11, scope: !5790)
!5792 = !DILocation(line: 563, column: 6, scope: !5769)
!5793 = !DILocation(line: 564, column: 3, scope: !5790)
!5794 = !DILocation(line: 565, column: 2, scope: !5769)
!5795 = !DILocation(line: 566, column: 2, scope: !5769)
!5796 = !DILocation(line: 567, column: 2, scope: !5769)
!5797 = !DILocation(line: 568, column: 2, scope: !5769)
!5798 = !DILocation(line: 569, column: 2, scope: !5769)
!5799 = !DILocation(line: 570, column: 1, scope: !5769)
!5800 = !DISubprogram(name: "seq_printf", scope: !305, file: !305, line: 119, type: !5801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5801 = !DISubroutineType(types: !5802)
!5802 = !{null, !303, !594, null}
!5803 = distinct !DISubprogram(name: "seq_copy_in_kernel", scope: !3, file: !3, line: 138, type: !4277, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5804)
!5804 = !{!5805, !5806, !5807, !5808}
!5805 = !DILocalVariable(name: "ptr", arg: 1, scope: !5803, file: !3, line: 138, type: !103)
!5806 = !DILocalVariable(name: "src", arg: 2, scope: !5803, file: !3, line: 138, type: !103)
!5807 = !DILocalVariable(name: "size", arg: 3, scope: !5803, file: !3, line: 138, type: !158)
!5808 = !DILocalVariable(name: "bufptr", scope: !5803, file: !3, line: 140, type: !5809)
!5809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!5810 = !DILocation(line: 138, column: 37, scope: !5803)
!5811 = !DILocation(line: 138, column: 48, scope: !5803)
!5812 = !DILocation(line: 138, column: 57, scope: !5803)
!5813 = !DILocation(line: 140, column: 2, scope: !5803)
!5814 = !DILocation(line: 140, column: 9, scope: !5803)
!5815 = !DILocation(line: 140, column: 18, scope: !5803)
!5816 = !DILocation(line: 142, column: 10, scope: !5803)
!5817 = !DILocation(line: 142, column: 9, scope: !5803)
!5818 = !DILocation(line: 142, column: 18, scope: !5803)
!5819 = !DILocation(line: 142, column: 23, scope: !5803)
!5820 = !DILocation(line: 142, column: 2, scope: !5803)
!5821 = !DILocation(line: 143, column: 13, scope: !5803)
!5822 = !DILocation(line: 143, column: 3, scope: !5803)
!5823 = !DILocation(line: 143, column: 10, scope: !5803)
!5824 = !DILocation(line: 145, column: 1, scope: !5803)
!5825 = !DILocation(line: 144, column: 2, scope: !5803)
!5826 = distinct !DISubprogram(name: "seq_copy_in_user", scope: !3, file: !3, line: 147, type: !4277, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5827)
!5827 = !{!5828, !5829, !5830, !5831}
!5828 = !DILocalVariable(name: "ptr", arg: 1, scope: !5826, file: !3, line: 147, type: !103)
!5829 = !DILocalVariable(name: "src", arg: 2, scope: !5826, file: !3, line: 147, type: !103)
!5830 = !DILocalVariable(name: "size", arg: 3, scope: !5826, file: !3, line: 147, type: !158)
!5831 = !DILocalVariable(name: "bufptr", scope: !5826, file: !3, line: 149, type: !5809)
!5832 = !DILocation(line: 147, column: 35, scope: !5826)
!5833 = !DILocation(line: 147, column: 46, scope: !5826)
!5834 = !DILocation(line: 147, column: 55, scope: !5826)
!5835 = !DILocation(line: 149, column: 2, scope: !5826)
!5836 = !DILocation(line: 149, column: 16, scope: !5826)
!5837 = !DILocation(line: 149, column: 25, scope: !5826)
!5838 = !DILocation(line: 151, column: 20, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5826, file: !3, line: 151, column: 6)
!5840 = !DILocation(line: 151, column: 19, scope: !5839)
!5841 = !DILocation(line: 151, column: 28, scope: !5839)
!5842 = !DILocation(line: 151, column: 33, scope: !5839)
!5843 = !DILocation(line: 151, column: 6, scope: !5839)
!5844 = !DILocation(line: 151, column: 6, scope: !5826)
!5845 = !DILocation(line: 152, column: 3, scope: !5839)
!5846 = !DILocation(line: 153, column: 13, scope: !5826)
!5847 = !DILocation(line: 153, column: 3, scope: !5826)
!5848 = !DILocation(line: 153, column: 10, scope: !5826)
!5849 = !DILocation(line: 154, column: 2, scope: !5826)
!5850 = !DILocation(line: 155, column: 1, scope: !5826)
!5851 = distinct !DISubprogram(name: "copy_to_user", scope: !5347, file: !5347, line: 188, type: !5348, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5852)
!5852 = !{!5853, !5854, !5855}
!5853 = !DILocalVariable(name: "to", arg: 1, scope: !5851, file: !5347, line: 188, type: !103)
!5854 = !DILocalVariable(name: "from", arg: 2, scope: !5851, file: !5347, line: 188, type: !1390)
!5855 = !DILocalVariable(name: "n", arg: 3, scope: !5851, file: !5347, line: 188, type: !313)
!5856 = !DILocation(line: 188, column: 27, scope: !5851)
!5857 = !DILocation(line: 188, column: 43, scope: !5851)
!5858 = !DILocation(line: 188, column: 63, scope: !5851)
!5859 = !DILocation(line: 190, column: 22, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5851, file: !5347, line: 190, column: 6)
!5861 = !DILocation(line: 190, column: 28, scope: !5860)
!5862 = !DILocation(line: 190, column: 6, scope: !5860)
!5863 = !DILocation(line: 190, column: 6, scope: !5851)
!5864 = !DILocation(line: 191, column: 21, scope: !5860)
!5865 = !DILocation(line: 191, column: 25, scope: !5860)
!5866 = !DILocation(line: 191, column: 31, scope: !5860)
!5867 = !DILocation(line: 191, column: 7, scope: !5860)
!5868 = !DILocation(line: 191, column: 5, scope: !5860)
!5869 = !DILocation(line: 191, column: 3, scope: !5860)
!5870 = !DILocation(line: 192, column: 9, scope: !5851)
!5871 = !DILocation(line: 192, column: 2, scope: !5851)
!5872 = distinct !DISubprogram(name: "check_copy_size", scope: !4250, file: !4250, line: 237, type: !5873, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5875)
!5873 = !DISubroutineType(types: !5874)
!5874 = !{!591, !1390, !309, !591}
!5875 = !{!5876, !5877, !5878, !5879, !5880, !5883}
!5876 = !DILocalVariable(name: "addr", arg: 1, scope: !5872, file: !4250, line: 237, type: !1390)
!5877 = !DILocalVariable(name: "bytes", arg: 2, scope: !5872, file: !4250, line: 237, type: !309)
!5878 = !DILocalVariable(name: "is_source", arg: 3, scope: !5872, file: !4250, line: 237, type: !591)
!5879 = !DILocalVariable(name: "sz", scope: !5872, file: !4250, line: 239, type: !158)
!5880 = !DILocalVariable(name: "__ret_warn_on", scope: !5881, file: !4250, line: 249, type: !158)
!5881 = distinct !DILexicalBlock(scope: !5882, file: !4250, line: 249, column: 6)
!5882 = distinct !DILexicalBlock(scope: !5872, file: !4250, line: 249, column: 6)
!5883 = !DILocalVariable(name: "__flags", scope: !5884, file: !4250, line: 249, type: !158)
!5884 = distinct !DILexicalBlock(scope: !5885, file: !4250, line: 249, column: 6)
!5885 = distinct !DILexicalBlock(scope: !5881, file: !4250, line: 249, column: 6)
!5886 = !DILocation(line: 237, column: 29, scope: !5872)
!5887 = !DILocation(line: 237, column: 42, scope: !5872)
!5888 = !DILocation(line: 237, column: 54, scope: !5872)
!5889 = !DILocation(line: 239, column: 2, scope: !5872)
!5890 = !DILocation(line: 239, column: 6, scope: !5872)
!5891 = !DILocation(line: 239, column: 33, scope: !5872)
!5892 = !DILocation(line: 239, column: 11, scope: !5872)
!5893 = !DILocation(line: 240, column: 6, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5872, file: !4250, line: 240, column: 6)
!5895 = !DILocation(line: 0, scope: !5894)
!5896 = !DILocation(line: 240, column: 6, scope: !5872)
!5897 = !DILocation(line: 241, column: 29, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5899, file: !4250, line: 241, column: 7)
!5899 = distinct !DILexicalBlock(scope: !5894, file: !4250, line: 240, column: 39)
!5900 = !DILocation(line: 241, column: 8, scope: !5898)
!5901 = !DILocation(line: 241, column: 7, scope: !5899)
!5902 = !DILocation(line: 242, column: 18, scope: !5898)
!5903 = !DILocation(line: 242, column: 22, scope: !5898)
!5904 = !DILocation(line: 242, column: 4, scope: !5898)
!5905 = !DILocation(line: 243, column: 12, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5898, file: !4250, line: 243, column: 12)
!5907 = !DILocation(line: 243, column: 12, scope: !5898)
!5908 = !DILocation(line: 244, column: 4, scope: !5906)
!5909 = !{i32 909146}
!5910 = !DILocation(line: 246, column: 4, scope: !5906)
!5911 = !{i32 909175}
!5912 = !DILocation(line: 247, column: 3, scope: !5899)
!5913 = !DILocation(line: 249, column: 6, scope: !5881)
!5914 = !DILocation(line: 249, column: 6, scope: !5885)
!5915 = !DILocation(line: 249, column: 6, scope: !5884)
!5916 = !DILocation(line: 249, column: 6, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5884, file: !4250, line: 249, column: 6)
!5918 = !DILocation(line: 249, column: 6, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5884, file: !4250, line: 249, column: 6)
!5920 = !{i64 2149546176, i64 2149546205, i64 2149546251, i64 2149546309, i64 2149546363, i64 2149546417, i64 2149546472, i64 2149546503, i64 2149546811, i64 2149546817, i64 2149546864, i64 2149546887, i64 2149546913}
!5921 = !DILocation(line: 249, column: 6, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5884, file: !4250, line: 249, column: 6)
!5923 = !DILocation(line: 249, column: 6, scope: !5882)
!5924 = !DILocation(line: 249, column: 6, scope: !5872)
!5925 = !DILocation(line: 250, column: 3, scope: !5882)
!5926 = !DILocation(line: 251, column: 20, scope: !5872)
!5927 = !DILocation(line: 251, column: 26, scope: !5872)
!5928 = !DILocation(line: 251, column: 33, scope: !5872)
!5929 = !DILocation(line: 251, column: 2, scope: !5872)
!5930 = !DILocation(line: 252, column: 2, scope: !5872)
!5931 = !DILocation(line: 253, column: 1, scope: !5872)
!5932 = !DISubprogram(name: "_copy_to_user", scope: !5347, file: !5347, line: 176, type: !5348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5933 = distinct !DISubprogram(name: "copy_overflow", scope: !4250, file: !4250, line: 230, type: !5934, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5936)
!5934 = !DISubroutineType(types: !5935)
!5935 = !{null, !158, !313}
!5936 = !{!5937, !5938}
!5937 = !DILocalVariable(name: "size", arg: 1, scope: !5933, file: !4250, line: 230, type: !158)
!5938 = !DILocalVariable(name: "count", arg: 2, scope: !5933, file: !4250, line: 230, type: !313)
!5939 = !DILocation(line: 230, column: 38, scope: !5933)
!5940 = !DILocation(line: 230, column: 58, scope: !5933)
!5941 = !DILocation(line: 233, column: 19, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5933, file: !4250, line: 232, column: 6)
!5943 = !DILocation(line: 233, column: 25, scope: !5942)
!5944 = !DILocation(line: 233, column: 3, scope: !5942)
!5945 = !DILocation(line: 234, column: 1, scope: !5933)
!5946 = !DISubprogram(name: "__bad_copy_from", scope: !4250, file: !4250, line: 224, type: !2301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5947 = !DISubprogram(name: "__bad_copy_to", scope: !4250, file: !4250, line: 226, type: !2301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5948 = distinct !DISubprogram(name: "check_object_size", scope: !4250, file: !4250, line: 218, type: !5949, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5951)
!5949 = !DISubroutineType(types: !5950)
!5950 = !{null, !1390, !313, !591}
!5951 = !{!5952, !5953, !5954}
!5952 = !DILocalVariable(name: "ptr", arg: 1, scope: !5948, file: !4250, line: 218, type: !1390)
!5953 = !DILocalVariable(name: "n", arg: 2, scope: !5948, file: !4250, line: 218, type: !313)
!5954 = !DILocalVariable(name: "to_user", arg: 3, scope: !5948, file: !4250, line: 219, type: !591)
!5955 = !DILocation(line: 218, column: 50, scope: !5948)
!5956 = !DILocation(line: 218, column: 69, scope: !5948)
!5957 = !DILocation(line: 219, column: 15, scope: !5948)
!5958 = !DILocation(line: 220, column: 3, scope: !5948)
!5959 = !DISubprogram(name: "__copy_overflow", scope: !4250, file: !4250, line: 228, type: !5934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5960 = distinct !DISubprogram(name: "__access_ok", scope: !4646, file: !4646, line: 85, type: !5961, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5963)
!5961 = !DISubroutineType(types: !5962)
!5962 = !{!591, !1390, !313}
!5963 = !{!5964, !5965, !5966}
!5964 = !DILocalVariable(name: "ptr", arg: 1, scope: !5960, file: !4646, line: 85, type: !1390)
!5965 = !DILocalVariable(name: "size", arg: 2, scope: !5960, file: !4646, line: 85, type: !313)
!5966 = !DILocalVariable(name: "sum", scope: !5967, file: !4646, line: 90, type: !313)
!5967 = distinct !DILexicalBlock(scope: !5968, file: !4646, line: 89, column: 9)
!5968 = distinct !DILexicalBlock(scope: !5960, file: !4646, line: 87, column: 6)
!5969 = !DILocation(line: 85, column: 51, scope: !5960)
!5970 = !DILocation(line: 85, column: 70, scope: !5960)
!5971 = !DILocation(line: 87, column: 27, scope: !5968)
!5972 = !DILocation(line: 87, column: 32, scope: !5968)
!5973 = !DILocation(line: 87, column: 6, scope: !5968)
!5974 = !DILocation(line: 87, column: 46, scope: !5968)
!5975 = !DILocation(line: 87, column: 49, scope: !5968)
!5976 = !DILocation(line: 87, column: 54, scope: !5968)
!5977 = !DILocation(line: 87, column: 6, scope: !5960)
!5978 = !DILocation(line: 88, column: 10, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5968, file: !4646, line: 87, column: 68)
!5980 = !DILocation(line: 88, column: 3, scope: !5979)
!5981 = !DILocation(line: 90, column: 3, scope: !5967)
!5982 = !DILocation(line: 90, column: 17, scope: !5967)
!5983 = !DILocation(line: 90, column: 23, scope: !5967)
!5984 = !DILocation(line: 90, column: 45, scope: !5967)
!5985 = !DILocation(line: 90, column: 30, scope: !5967)
!5986 = !DILocation(line: 90, column: 28, scope: !5967)
!5987 = !DILocation(line: 91, column: 10, scope: !5967)
!5988 = !DILocation(line: 91, column: 34, scope: !5967)
!5989 = !DILocation(line: 91, column: 37, scope: !5967)
!5990 = !DILocation(line: 91, column: 59, scope: !5967)
!5991 = !DILocation(line: 91, column: 44, scope: !5967)
!5992 = !DILocation(line: 91, column: 41, scope: !5967)
!5993 = !DILocation(line: 0, scope: !5967)
!5994 = !DILocation(line: 91, column: 3, scope: !5967)
!5995 = !DILocation(line: 92, column: 2, scope: !5968)
!5996 = !DILocation(line: 93, column: 1, scope: !5960)
!5997 = distinct !DISubprogram(name: "__clear_user", scope: !4646, file: !4646, line: 165, type: !4647, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5998)
!5998 = !{!5999, !6000}
!5999 = !DILocalVariable(name: "addr", arg: 1, scope: !5997, file: !4646, line: 165, type: !103)
!6000 = !DILocalVariable(name: "size", arg: 2, scope: !5997, file: !4646, line: 165, type: !313)
!6001 = !DILocation(line: 165, column: 77, scope: !5997)
!6002 = !DILocation(line: 165, column: 97, scope: !5997)
!6003 = !DILocation(line: 167, column: 2, scope: !5997)
!6004 = !DILocation(line: 168, column: 2, scope: !5997)
!6005 = !DILocation(line: 174, column: 2, scope: !5997)
!6006 = !{i64 5036312, i64 5036317, i64 2152524538, i64 2152524544, i64 2152524560, i64 2152524576, i64 2152524603, i64 2152524926, i64 2152524137, i64 2152524932, i64 2152524980, i64 2152525044, i64 2152525108, i64 2152525165, i64 2152524218, i64 2152524243, i64 2152525449, i64 2152525590, i64 2152525510, i64 2152525604, i64 2152524335, i64 5036414, i64 2152525669, i64 2152525713, i64 2152525736, i64 2152525769, i64 2152525800, i64 2152525839}
!6007 = !DILocation(line: 183, column: 2, scope: !5997)
!6008 = !DILocation(line: 185, column: 9, scope: !5997)
!6009 = !DILocation(line: 185, column: 2, scope: !5997)
!6010 = distinct !DISubprogram(name: "might_fault", scope: !6011, file: !6011, line: 202, type: !2301, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6011 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6012 = !DILocation(line: 202, column: 40, scope: !6010)
!6013 = distinct !DISubprogram(name: "stac", scope: !6014, file: !6014, line: 36, type: !2301, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6014 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!6015 = !DILocation(line: 39, column: 2, scope: !6013)
!6016 = !{i64 2152021137, i64 2152021165, i64 2152021171, i64 2152021187, i64 2152021203, i64 2152021230, i64 2152021544, i64 2152020887, i64 2152021550, i64 2152021598, i64 2152021662, i64 2152021726, i64 2152021783, i64 2152020968, i64 2152020993, i64 2152021990, i64 2152022126, i64 2152022051, i64 2152022140, i64 2152021085}
!6017 = !DILocation(line: 40, column: 1, scope: !6013)
!6018 = distinct !DISubprogram(name: "clac", scope: !6014, file: !6014, line: 30, type: !2301, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6019 = !DILocation(line: 33, column: 2, scope: !6018)
!6020 = !{i64 2152019470, i64 2152019498, i64 2152019504, i64 2152019520, i64 2152019536, i64 2152019563, i64 2152019877, i64 2152019220, i64 2152019883, i64 2152019931, i64 2152019995, i64 2152020059, i64 2152020116, i64 2152019301, i64 2152019326, i64 2152020323, i64 2152020459, i64 2152020384, i64 2152020473, i64 2152019418}
!6021 = !DILocation(line: 34, column: 1, scope: !6018)
!6022 = distinct !DISubprogram(name: "atomic_dec", scope: !5653, file: !5653, line: 590, type: !6023, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6025)
!6023 = !DISubroutineType(types: !6024)
!6024 = !{null, !5725}
!6025 = !{!6026}
!6026 = !DILocalVariable(name: "v", arg: 1, scope: !6022, file: !5653, line: 590, type: !5725)
!6027 = !DILocation(line: 590, column: 22, scope: !6022)
!6028 = !DILocation(line: 592, column: 31, scope: !6022)
!6029 = !DILocation(line: 592, column: 2, scope: !6022)
!6030 = !DILocation(line: 593, column: 17, scope: !6022)
!6031 = !DILocation(line: 593, column: 2, scope: !6022)
!6032 = !DILocation(line: 594, column: 1, scope: !6022)
!6033 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6034, file: !6034, line: 94, type: !6035, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6040)
!6034 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6035 = !DISubroutineType(types: !6036)
!6036 = !{null, !6037, !309}
!6037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6038, size: 64)
!6038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6039)
!6039 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6040 = !{!6041, !6042}
!6041 = !DILocalVariable(name: "v", arg: 1, scope: !6033, file: !6034, line: 94, type: !6037)
!6042 = !DILocalVariable(name: "size", arg: 2, scope: !6033, file: !6034, line: 94, type: !309)
!6043 = !DILocation(line: 94, column: 79, scope: !6033)
!6044 = !DILocation(line: 94, column: 89, scope: !6033)
!6045 = !DILocation(line: 96, column: 20, scope: !6033)
!6046 = !DILocation(line: 96, column: 23, scope: !6033)
!6047 = !DILocation(line: 96, column: 2, scope: !6033)
!6048 = !DILocation(line: 97, column: 2, scope: !6033)
!6049 = !DILocation(line: 98, column: 1, scope: !6033)
!6050 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !6051, file: !6051, line: 1194, type: !6023, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6052)
!6051 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6052 = !{!6053}
!6053 = !DILocalVariable(name: "v", arg: 1, scope: !6050, file: !6051, line: 1194, type: !5725)
!6054 = !DILocation(line: 1194, column: 26, scope: !6050)
!6055 = !DILocation(line: 1197, column: 18, scope: !6050)
!6056 = !DILocation(line: 1197, column: 2, scope: !6050)
!6057 = !DILocation(line: 1201, column: 1, scope: !6050)
!6058 = distinct !DISubprogram(name: "kasan_check_write", scope: !6059, file: !6059, line: 44, type: !6060, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6062)
!6059 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6060 = !DISubroutineType(types: !6061)
!6061 = !{!591, !6037, !7}
!6062 = !{!6063, !6064}
!6063 = !DILocalVariable(name: "p", arg: 1, scope: !6058, file: !6059, line: 44, type: !6037)
!6064 = !DILocalVariable(name: "size", arg: 2, scope: !6058, file: !6059, line: 44, type: !7)
!6065 = !DILocation(line: 44, column: 59, scope: !6058)
!6066 = !DILocation(line: 44, column: 75, scope: !6058)
!6067 = !DILocation(line: 46, column: 2, scope: !6058)
!6068 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6069, file: !6069, line: 229, type: !6070, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6072)
!6069 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6070 = !DISubroutineType(types: !6071)
!6071 = !{null, !6037, !309, !158}
!6072 = !{!6073, !6074, !6075}
!6073 = !DILocalVariable(name: "ptr", arg: 1, scope: !6068, file: !6069, line: 229, type: !6037)
!6074 = !DILocalVariable(name: "size", arg: 2, scope: !6068, file: !6069, line: 229, type: !309)
!6075 = !DILocalVariable(name: "type", arg: 3, scope: !6068, file: !6069, line: 230, type: !158)
!6076 = !DILocation(line: 229, column: 60, scope: !6068)
!6077 = !DILocation(line: 229, column: 72, scope: !6068)
!6078 = !DILocation(line: 230, column: 15, scope: !6068)
!6079 = !DILocation(line: 230, column: 23, scope: !6068)
!6080 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !6081, file: !6081, line: 58, type: !6023, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6082)
!6081 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6082 = !{!6083}
!6083 = !DILocalVariable(name: "v", arg: 1, scope: !6080, file: !6081, line: 58, type: !5725)
!6084 = !DILocation(line: 58, column: 55, scope: !6080)
!6085 = !DILocation(line: 61, column: 16, scope: !6080)
!6086 = !DILocation(line: 61, column: 19, scope: !6080)
!6087 = !DILocation(line: 60, column: 2, scope: !6080)
!6088 = !{i64 2148924293, i64 2148924332, i64 2148924353, i64 2148924390, i64 2148924413, i64 2148924283}
!6089 = !DILocation(line: 62, column: 1, scope: !6080)
!6090 = distinct !DISubprogram(name: "list_empty", scope: !6091, file: !6091, line: 371, type: !6092, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6096)
!6091 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6092 = !DISubroutineType(types: !6093)
!6093 = !{!158, !6094}
!6094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6095, size: 64)
!6095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!6096 = !{!6097}
!6097 = !DILocalVariable(name: "head", arg: 1, scope: !6090, file: !6091, line: 371, type: !6094)
!6098 = !DILocation(line: 371, column: 54, scope: !6090)
!6099 = !DILocation(line: 373, column: 9, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6090, file: !6091, line: 373, column: 9)
!6101 = !DILocation(line: 373, column: 9, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6100, file: !6091, line: 373, column: 9)
!6103 = !DILocation(line: 373, column: 34, scope: !6090)
!6104 = !DILocation(line: 373, column: 31, scope: !6090)
!6105 = !DILocation(line: 373, column: 2, scope: !6090)
!6106 = distinct !DISubprogram(name: "snd_seq_pool_available", scope: !3, file: !3, line: 22, type: !4878, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6107)
!6107 = !{!6108}
!6108 = !DILocalVariable(name: "pool", arg: 1, scope: !6106, file: !3, line: 22, type: !232)
!6109 = !DILocation(line: 22, column: 63, scope: !6106)
!6110 = !DILocation(line: 24, column: 9, scope: !6106)
!6111 = !DILocation(line: 24, column: 15, scope: !6106)
!6112 = !DILocation(line: 24, column: 45, scope: !6106)
!6113 = !DILocation(line: 24, column: 51, scope: !6106)
!6114 = !DILocation(line: 24, column: 32, scope: !6106)
!6115 = !DILocation(line: 24, column: 30, scope: !6106)
!6116 = !DILocation(line: 24, column: 2, scope: !6106)
!6117 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4830, file: !4830, line: 43, type: !6118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6118 = !DISubroutineType(types: !6119)
!6119 = !{null, !4833, !313}
!6120 = distinct !DISubprogram(name: "init_waitqueue_entry", scope: !253, file: !253, line: 82, type: !6121, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6123)
!6121 = !DISubroutineType(types: !6122)
!6122 = !{null, !5159, !2672}
!6123 = !{!6124, !6125}
!6124 = !DILocalVariable(name: "wq_entry", arg: 1, scope: !6120, file: !253, line: 82, type: !5159)
!6125 = !DILocalVariable(name: "p", arg: 2, scope: !6120, file: !253, line: 82, type: !2672)
!6126 = !DILocation(line: 82, column: 66, scope: !6120)
!6127 = !DILocation(line: 82, column: 96, scope: !6120)
!6128 = !DILocation(line: 84, column: 2, scope: !6120)
!6129 = !DILocation(line: 84, column: 12, scope: !6120)
!6130 = !DILocation(line: 84, column: 19, scope: !6120)
!6131 = !DILocation(line: 85, column: 22, scope: !6120)
!6132 = !DILocation(line: 85, column: 2, scope: !6120)
!6133 = !DILocation(line: 85, column: 12, scope: !6120)
!6134 = !DILocation(line: 85, column: 20, scope: !6120)
!6135 = !DILocation(line: 86, column: 2, scope: !6120)
!6136 = !DILocation(line: 86, column: 12, scope: !6120)
!6137 = !DILocation(line: 86, column: 18, scope: !6120)
!6138 = !DILocation(line: 87, column: 1, scope: !6120)
!6139 = distinct !DISubprogram(name: "get_current", scope: !6140, file: !6140, line: 39, type: !6141, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6143)
!6140 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6141 = !DISubroutineType(types: !6142)
!6142 = !{!2672}
!6143 = !{!6144, !6146, !6148}
!6144 = !DILocalVariable(name: "pscr_ret__", scope: !6145, file: !6140, line: 41, type: !2672)
!6145 = distinct !DILexicalBlock(scope: !6139, file: !6140, line: 41, column: 9)
!6146 = !DILocalVariable(name: "__vpp_verify", scope: !6147, file: !6140, line: 41, type: !1390)
!6147 = distinct !DILexicalBlock(scope: !6145, file: !6140, line: 41, column: 9)
!6148 = !DILocalVariable(name: "pfo_val__", scope: !6149, file: !6140, line: 41, type: !498)
!6149 = distinct !DILexicalBlock(scope: !6145, file: !6140, line: 41, column: 9)
!6150 = !DILocation(line: 41, column: 9, scope: !6145)
!6151 = !DILocation(line: 41, column: 9, scope: !6147)
!6152 = !DILocation(line: 41, column: 9, scope: !6149)
!6153 = !{i64 2148385476}
!6154 = !DILocation(line: 41, column: 9, scope: !6139)
!6155 = !DILocation(line: 41, column: 2, scope: !6139)
!6156 = !DISubprogram(name: "add_wait_queue", scope: !253, file: !253, line: 166, type: !6157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6157 = !DISubroutineType(types: !6158)
!6158 = !{null, !4868, !5159}
!6159 = !DISubprogram(name: "mutex_unlock", scope: !324, file: !324, line: 246, type: !6160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6160 = !DISubroutineType(types: !6161)
!6161 = !{null, !4912}
!6162 = !DISubprogram(name: "schedule", scope: !2674, file: !2674, line: 303, type: !2301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6163 = !DISubprogram(name: "mutex_lock", scope: !324, file: !324, line: 227, type: !6160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6164 = !DISubprogram(name: "remove_wait_queue", scope: !253, file: !253, line: 169, type: !6157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6165 = distinct !DISubprogram(name: "signal_pending", scope: !3127, file: !3127, line: 392, type: !6166, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6168)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{!158, !2672}
!6168 = !{!6169}
!6169 = !DILocalVariable(name: "p", arg: 1, scope: !6165, file: !3127, line: 392, type: !2672)
!6170 = !DILocation(line: 392, column: 54, scope: !6165)
!6171 = !DILocation(line: 399, column: 6, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6165, file: !3127, line: 399, column: 6)
!6173 = !DILocation(line: 399, column: 6, scope: !6165)
!6174 = !DILocation(line: 400, column: 3, scope: !6172)
!6175 = !DILocation(line: 401, column: 25, scope: !6165)
!6176 = !DILocation(line: 401, column: 9, scope: !6165)
!6177 = !DILocation(line: 401, column: 2, scope: !6165)
!6178 = !DILocation(line: 402, column: 1, scope: !6165)
!6179 = distinct !DISubprogram(name: "atomic_inc", scope: !5653, file: !5653, line: 433, type: !6023, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6180)
!6180 = !{!6181}
!6181 = !DILocalVariable(name: "v", arg: 1, scope: !6179, file: !5653, line: 433, type: !5725)
!6182 = !DILocation(line: 433, column: 22, scope: !6179)
!6183 = !DILocation(line: 435, column: 31, scope: !6179)
!6184 = !DILocation(line: 435, column: 2, scope: !6179)
!6185 = !DILocation(line: 436, column: 17, scope: !6179)
!6186 = !DILocation(line: 436, column: 2, scope: !6179)
!6187 = !DILocation(line: 437, column: 1, scope: !6179)
!6188 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !2674, file: !2674, line: 2066, type: !6189, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6191)
!6189 = !DISubroutineType(types: !6190)
!6190 = !{!158, !2672, !158}
!6191 = !{!6192, !6193}
!6192 = !DILocalVariable(name: "tsk", arg: 1, scope: !6188, file: !2674, line: 2066, type: !2672)
!6193 = !DILocalVariable(name: "flag", arg: 2, scope: !6188, file: !2674, line: 2066, type: !158)
!6194 = !DILocation(line: 2066, column: 60, scope: !6188)
!6195 = !DILocation(line: 2066, column: 69, scope: !6188)
!6196 = !DILocation(line: 2068, column: 29, scope: !6188)
!6197 = !DILocation(line: 2068, column: 52, scope: !6188)
!6198 = !DILocation(line: 2068, column: 9, scope: !6188)
!6199 = !DILocation(line: 2068, column: 2, scope: !6188)
!6200 = distinct !DISubprogram(name: "task_sigpending", scope: !3127, file: !3127, line: 387, type: !6166, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6201)
!6201 = !{!6202}
!6202 = !DILocalVariable(name: "p", arg: 1, scope: !6200, file: !3127, line: 387, type: !2672)
!6203 = !DILocation(line: 387, column: 55, scope: !6200)
!6204 = !DILocation(line: 389, column: 9, scope: !6200)
!6205 = !DILocation(line: 389, column: 2, scope: !6200)
!6206 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !4250, file: !4250, line: 116, type: !6207, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6210)
!6207 = !DISubroutineType(types: !6208)
!6208 = !{!158, !6209, !158}
!6209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!6210 = !{!6211, !6212}
!6211 = !DILocalVariable(name: "ti", arg: 1, scope: !6206, file: !4250, line: 116, type: !6209)
!6212 = !DILocalVariable(name: "flag", arg: 2, scope: !6206, file: !4250, line: 116, type: !158)
!6213 = !DILocation(line: 116, column: 59, scope: !6206)
!6214 = !DILocation(line: 116, column: 67, scope: !6206)
!6215 = !DILocation(line: 118, column: 9, scope: !6206)
!6216 = !DILocation(line: 118, column: 2, scope: !6206)
!6217 = distinct !DISubprogram(name: "const_test_bit", scope: !6218, file: !6218, line: 166, type: !6219, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6224)
!6218 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6219 = !DISubroutineType(types: !6220)
!6220 = !{!591, !313, !6221}
!6221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6222, size: 64)
!6222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6223)
!6223 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !313)
!6224 = !{!6225, !6226, !6227, !6228, !6229}
!6225 = !DILocalVariable(name: "nr", arg: 1, scope: !6217, file: !6218, line: 166, type: !313)
!6226 = !DILocalVariable(name: "addr", arg: 2, scope: !6217, file: !6218, line: 166, type: !6221)
!6227 = !DILocalVariable(name: "p", scope: !6217, file: !6218, line: 168, type: !4214)
!6228 = !DILocalVariable(name: "mask", scope: !6217, file: !6218, line: 169, type: !313)
!6229 = !DILocalVariable(name: "val", scope: !6217, file: !6218, line: 170, type: !313)
!6230 = !DILocation(line: 166, column: 30, scope: !6217)
!6231 = !DILocation(line: 166, column: 64, scope: !6217)
!6232 = !DILocation(line: 168, column: 2, scope: !6217)
!6233 = !DILocation(line: 168, column: 23, scope: !6217)
!6234 = !DILocation(line: 168, column: 50, scope: !6217)
!6235 = !DILocation(line: 168, column: 57, scope: !6217)
!6236 = !DILocation(line: 168, column: 55, scope: !6217)
!6237 = !DILocation(line: 169, column: 2, scope: !6217)
!6238 = !DILocation(line: 169, column: 16, scope: !6217)
!6239 = !DILocation(line: 169, column: 23, scope: !6217)
!6240 = !DILocation(line: 170, column: 2, scope: !6217)
!6241 = !DILocation(line: 170, column: 16, scope: !6217)
!6242 = !DILocation(line: 170, column: 23, scope: !6217)
!6243 = !DILocation(line: 170, column: 22, scope: !6217)
!6244 = !DILocation(line: 172, column: 12, scope: !6217)
!6245 = !DILocation(line: 172, column: 18, scope: !6217)
!6246 = !DILocation(line: 172, column: 16, scope: !6217)
!6247 = !DILocation(line: 172, column: 10, scope: !6217)
!6248 = !DILocation(line: 172, column: 9, scope: !6217)
!6249 = !DILocation(line: 173, column: 1, scope: !6217)
!6250 = !DILocation(line: 172, column: 2, scope: !6217)
!6251 = distinct !DISubprogram(name: "_test_bit", scope: !6252, file: !6252, line: 139, type: !6219, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6253)
!6252 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6253 = !{!6254, !6255}
!6254 = !DILocalVariable(name: "nr", arg: 1, scope: !6251, file: !6252, line: 139, type: !313)
!6255 = !DILocalVariable(name: "addr", arg: 2, scope: !6251, file: !6252, line: 139, type: !6221)
!6256 = !DILocation(line: 139, column: 25, scope: !6251)
!6257 = !DILocation(line: 139, column: 59, scope: !6251)
!6258 = !DILocation(line: 141, column: 25, scope: !6251)
!6259 = !DILocation(line: 141, column: 32, scope: !6251)
!6260 = !DILocation(line: 141, column: 30, scope: !6251)
!6261 = !DILocation(line: 141, column: 2, scope: !6251)
!6262 = !DILocation(line: 142, column: 23, scope: !6251)
!6263 = !DILocation(line: 142, column: 27, scope: !6251)
!6264 = !DILocation(line: 142, column: 9, scope: !6251)
!6265 = !DILocation(line: 142, column: 2, scope: !6251)
!6266 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6034, file: !6034, line: 66, type: !6035, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6267)
!6267 = !{!6268, !6269}
!6268 = !DILocalVariable(name: "v", arg: 1, scope: !6266, file: !6034, line: 66, type: !6037)
!6269 = !DILocalVariable(name: "size", arg: 2, scope: !6266, file: !6034, line: 66, type: !309)
!6270 = !DILocation(line: 66, column: 73, scope: !6266)
!6271 = !DILocation(line: 66, column: 83, scope: !6266)
!6272 = !DILocation(line: 68, column: 19, scope: !6266)
!6273 = !DILocation(line: 68, column: 22, scope: !6266)
!6274 = !DILocation(line: 68, column: 2, scope: !6266)
!6275 = !DILocation(line: 69, column: 2, scope: !6266)
!6276 = !DILocation(line: 70, column: 1, scope: !6266)
!6277 = distinct !DISubprogram(name: "arch_test_bit", scope: !6278, file: !6278, line: 237, type: !6219, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6279)
!6278 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6279 = !{!6280, !6281}
!6280 = !DILocalVariable(name: "nr", arg: 1, scope: !6277, file: !6278, line: 237, type: !313)
!6281 = !DILocalVariable(name: "addr", arg: 2, scope: !6277, file: !6278, line: 237, type: !6221)
!6282 = !DILocation(line: 237, column: 29, scope: !6277)
!6283 = !DILocation(line: 237, column: 63, scope: !6277)
!6284 = !DILocation(line: 239, column: 30, scope: !6277)
!6285 = !DILocation(line: 239, column: 9, scope: !6277)
!6286 = !DILocation(line: 239, column: 54, scope: !6277)
!6287 = !DILocation(line: 239, column: 58, scope: !6277)
!6288 = !DILocation(line: 239, column: 36, scope: !6277)
!6289 = !DILocation(line: 240, column: 26, scope: !6277)
!6290 = !DILocation(line: 240, column: 30, scope: !6277)
!6291 = !DILocation(line: 240, column: 8, scope: !6277)
!6292 = !DILocation(line: 239, column: 2, scope: !6277)
!6293 = distinct !DISubprogram(name: "kasan_check_read", scope: !6059, file: !6059, line: 40, type: !6060, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6294)
!6294 = !{!6295, !6296}
!6295 = !DILocalVariable(name: "p", arg: 1, scope: !6293, file: !6059, line: 40, type: !6037)
!6296 = !DILocalVariable(name: "size", arg: 2, scope: !6293, file: !6059, line: 40, type: !7)
!6297 = !DILocation(line: 40, column: 58, scope: !6293)
!6298 = !DILocation(line: 40, column: 74, scope: !6293)
!6299 = !DILocation(line: 42, column: 2, scope: !6293)
!6300 = distinct !DISubprogram(name: "constant_test_bit", scope: !6278, file: !6278, line: 204, type: !6301, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6303)
!6301 = !DISubroutineType(types: !6302)
!6302 = !{!591, !869, !6221}
!6303 = !{!6304, !6305}
!6304 = !DILocalVariable(name: "nr", arg: 1, scope: !6300, file: !6278, line: 204, type: !869)
!6305 = !DILocalVariable(name: "addr", arg: 2, scope: !6300, file: !6278, line: 204, type: !6221)
!6306 = !DILocation(line: 204, column: 52, scope: !6300)
!6307 = !DILocation(line: 204, column: 86, scope: !6300)
!6308 = !DILocation(line: 206, column: 19, scope: !6300)
!6309 = !DILocation(line: 206, column: 22, scope: !6300)
!6310 = !DILocation(line: 206, column: 15, scope: !6300)
!6311 = !DILocation(line: 207, column: 4, scope: !6300)
!6312 = !DILocation(line: 207, column: 9, scope: !6300)
!6313 = !DILocation(line: 207, column: 12, scope: !6300)
!6314 = !DILocation(line: 206, column: 44, scope: !6300)
!6315 = !DILocation(line: 207, column: 37, scope: !6300)
!6316 = !DILocation(line: 206, column: 2, scope: !6300)
!6317 = distinct !DISubprogram(name: "variable_test_bit", scope: !6278, file: !6278, line: 224, type: !6301, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6318)
!6318 = !{!6319, !6320, !6321}
!6319 = !DILocalVariable(name: "nr", arg: 1, scope: !6317, file: !6278, line: 224, type: !869)
!6320 = !DILocalVariable(name: "addr", arg: 2, scope: !6317, file: !6278, line: 224, type: !6221)
!6321 = !DILocalVariable(name: "oldbit", scope: !6317, file: !6278, line: 226, type: !591)
!6322 = !DILocation(line: 224, column: 52, scope: !6317)
!6323 = !DILocation(line: 224, column: 86, scope: !6317)
!6324 = !DILocation(line: 226, column: 2, scope: !6317)
!6325 = !DILocation(line: 226, column: 7, scope: !6317)
!6326 = !DILocation(line: 231, column: 33, scope: !6317)
!6327 = !DILocation(line: 231, column: 46, scope: !6317)
!6328 = !DILocation(line: 228, column: 2, scope: !6317)
!6329 = !{i64 2148105468, i64 2148105542}
!6330 = !DILocation(line: 233, column: 9, scope: !6317)
!6331 = !DILocation(line: 234, column: 1, scope: !6317)
!6332 = !DILocation(line: 233, column: 2, scope: !6317)
!6333 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6051, file: !6051, line: 976, type: !6023, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6334)
!6334 = !{!6335}
!6335 = !DILocalVariable(name: "v", arg: 1, scope: !6333, file: !6051, line: 976, type: !5725)
!6336 = !DILocation(line: 976, column: 26, scope: !6333)
!6337 = !DILocation(line: 979, column: 18, scope: !6333)
!6338 = !DILocation(line: 979, column: 2, scope: !6333)
!6339 = !DILocation(line: 983, column: 1, scope: !6333)
!6340 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6081, file: !6081, line: 51, type: !6023, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6341)
!6341 = !{!6342}
!6342 = !DILocalVariable(name: "v", arg: 1, scope: !6340, file: !6081, line: 51, type: !5725)
!6343 = !DILocation(line: 51, column: 55, scope: !6340)
!6344 = !DILocation(line: 54, column: 16, scope: !6340)
!6345 = !DILocation(line: 54, column: 19, scope: !6340)
!6346 = !DILocation(line: 53, column: 2, scope: !6340)
!6347 = !{i64 2148923930, i64 2148923969, i64 2148923990, i64 2148924027, i64 2148924050, i64 2148923920}
!6348 = !DILocation(line: 55, column: 1, scope: !6340)
!6349 = !DISubprogram(name: "_copy_from_user", scope: !5347, file: !5347, line: 158, type: !5348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6350 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6351, file: !6351, line: 51, type: !6352, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6354)
!6351 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6352 = !DISubroutineType(types: !6353)
!6353 = !{!591, !591}
!6354 = !{!6355}
!6355 = !DILocalVariable(name: "overflow", arg: 1, scope: !6350, file: !6351, line: 51, type: !591)
!6356 = !DILocation(line: 51, column: 60, scope: !6350)
!6357 = !DILocation(line: 53, column: 9, scope: !6350)
!6358 = !DILocation(line: 53, column: 2, scope: !6350)
!6359 = distinct !DISubprogram(name: "kvmalloc", scope: !93, file: !93, line: 736, type: !5710, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6360)
!6360 = !{!6361, !6362}
!6361 = !DILocalVariable(name: "size", arg: 1, scope: !6359, file: !93, line: 736, type: !309)
!6362 = !DILocalVariable(name: "flags", arg: 2, scope: !6359, file: !93, line: 736, type: !302)
!6363 = !DILocation(line: 736, column: 53, scope: !6359)
!6364 = !DILocation(line: 736, column: 65, scope: !6359)
!6365 = !DILocation(line: 738, column: 23, scope: !6359)
!6366 = !DILocation(line: 738, column: 29, scope: !6359)
!6367 = !DILocation(line: 738, column: 9, scope: !6359)
!6368 = !DILocation(line: 738, column: 2, scope: !6359)
!6369 = !DISubprogram(name: "kvmalloc_node", scope: !93, file: !93, line: 735, type: !6370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6370 = !DISubroutineType(types: !6371)
!6371 = !{!103, !309, !302, !158}
!6372 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !4830, file: !4830, line: 29, type: !6373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6373 = !DISubroutineType(types: !6374)
!6374 = !{null, !4833}
!6375 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !4830, file: !4830, line: 41, type: !6373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6376 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6051, file: !6051, line: 442, type: !5654, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6377)
!6377 = !{!6378}
!6378 = !DILocalVariable(name: "v", arg: 1, scope: !6376, file: !6051, line: 442, type: !5656)
!6379 = !DILocation(line: 442, column: 33, scope: !6376)
!6380 = !DILocation(line: 444, column: 26, scope: !6376)
!6381 = !DILocation(line: 444, column: 9, scope: !6376)
!6382 = !DILocation(line: 444, column: 2, scope: !6376)
!6383 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6081, file: !6081, line: 17, type: !5654, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6384)
!6384 = !{!6385}
!6385 = !DILocalVariable(name: "v", arg: 1, scope: !6383, file: !6081, line: 17, type: !5656)
!6386 = !DILocation(line: 17, column: 61, scope: !6383)
!6387 = !DILocation(line: 23, column: 9, scope: !6383)
!6388 = !DILocation(line: 23, column: 2, scope: !6383)
!6389 = distinct !DISubprogram(name: "kmalloc", scope: !93, file: !93, line: 591, type: !5710, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6390)
!6390 = !{!6391, !6392, !6393}
!6391 = !DILocalVariable(name: "size", arg: 1, scope: !6389, file: !93, line: 591, type: !309)
!6392 = !DILocalVariable(name: "flags", arg: 2, scope: !6389, file: !93, line: 591, type: !302)
!6393 = !DILocalVariable(name: "index", scope: !6394, file: !93, line: 594, type: !7)
!6394 = distinct !DILexicalBlock(scope: !6395, file: !93, line: 593, column: 42)
!6395 = distinct !DILexicalBlock(scope: !6389, file: !93, line: 593, column: 6)
!6396 = !DILocation(line: 591, column: 61, scope: !6389)
!6397 = !DILocation(line: 591, column: 73, scope: !6389)
!6398 = !DILocation(line: 593, column: 27, scope: !6395)
!6399 = !DILocation(line: 593, column: 6, scope: !6395)
!6400 = !DILocation(line: 593, column: 33, scope: !6395)
!6401 = !DILocation(line: 593, column: 36, scope: !6395)
!6402 = !DILocation(line: 593, column: 6, scope: !6389)
!6403 = !DILocation(line: 594, column: 3, scope: !6394)
!6404 = !DILocation(line: 594, column: 16, scope: !6394)
!6405 = !DILocation(line: 596, column: 7, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6394, file: !93, line: 596, column: 7)
!6407 = !DILocation(line: 596, column: 12, scope: !6406)
!6408 = !DILocation(line: 596, column: 7, scope: !6394)
!6409 = !DILocation(line: 597, column: 25, scope: !6406)
!6410 = !DILocation(line: 597, column: 31, scope: !6406)
!6411 = !DILocation(line: 597, column: 11, scope: !6406)
!6412 = !DILocation(line: 597, column: 4, scope: !6406)
!6413 = !DILocation(line: 599, column: 11, scope: !6394)
!6414 = !DILocation(line: 599, column: 9, scope: !6394)
!6415 = !DILocation(line: 601, column: 33, scope: !6394)
!6416 = !DILocation(line: 601, column: 40, scope: !6394)
!6417 = !DILocation(line: 601, column: 20, scope: !6394)
!6418 = !DILocation(line: 601, column: 5, scope: !6394)
!6419 = !DILocation(line: 601, column: 51, scope: !6394)
!6420 = !DILocation(line: 602, column: 5, scope: !6394)
!6421 = !DILocation(line: 602, column: 12, scope: !6394)
!6422 = !DILocation(line: 600, column: 10, scope: !6394)
!6423 = !DILocation(line: 600, column: 3, scope: !6394)
!6424 = !DILocation(line: 603, column: 2, scope: !6395)
!6425 = !DILocation(line: 604, column: 19, scope: !6389)
!6426 = !DILocation(line: 604, column: 25, scope: !6389)
!6427 = !DILocation(line: 604, column: 9, scope: !6389)
!6428 = !DILocation(line: 604, column: 2, scope: !6389)
!6429 = !DILocation(line: 605, column: 1, scope: !6389)
!6430 = !DISubprogram(name: "kmalloc_large", scope: !93, file: !93, line: 531, type: !5710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6431 = distinct !DISubprogram(name: "__kmalloc_index", scope: !93, file: !93, line: 444, type: !6432, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6434)
!6432 = !DISubroutineType(types: !6433)
!6433 = !{!7, !309, !591}
!6434 = !{!6435, !6436}
!6435 = !DILocalVariable(name: "size", arg: 1, scope: !6431, file: !93, line: 444, type: !309)
!6436 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6431, file: !93, line: 445, type: !591)
!6437 = !DILocation(line: 444, column: 60, scope: !6431)
!6438 = !DILocation(line: 445, column: 16, scope: !6431)
!6439 = !DILocation(line: 447, column: 7, scope: !6440)
!6440 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 447, column: 6)
!6441 = !DILocation(line: 447, column: 6, scope: !6431)
!6442 = !DILocation(line: 448, column: 3, scope: !6440)
!6443 = !DILocation(line: 450, column: 6, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 450, column: 6)
!6445 = !DILocation(line: 450, column: 11, scope: !6444)
!6446 = !DILocation(line: 450, column: 6, scope: !6431)
!6447 = !DILocation(line: 451, column: 3, scope: !6444)
!6448 = !DILocation(line: 453, column: 32, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 453, column: 6)
!6450 = !DILocation(line: 453, column: 37, scope: !6449)
!6451 = !DILocation(line: 453, column: 42, scope: !6449)
!6452 = !DILocation(line: 453, column: 45, scope: !6449)
!6453 = !DILocation(line: 453, column: 50, scope: !6449)
!6454 = !DILocation(line: 453, column: 6, scope: !6431)
!6455 = !DILocation(line: 454, column: 3, scope: !6449)
!6456 = !DILocation(line: 455, column: 32, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 455, column: 6)
!6458 = !DILocation(line: 455, column: 37, scope: !6457)
!6459 = !DILocation(line: 455, column: 43, scope: !6457)
!6460 = !DILocation(line: 455, column: 46, scope: !6457)
!6461 = !DILocation(line: 455, column: 51, scope: !6457)
!6462 = !DILocation(line: 455, column: 6, scope: !6431)
!6463 = !DILocation(line: 456, column: 3, scope: !6457)
!6464 = !DILocation(line: 457, column: 6, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 457, column: 6)
!6466 = !DILocation(line: 457, column: 11, scope: !6465)
!6467 = !DILocation(line: 457, column: 6, scope: !6431)
!6468 = !DILocation(line: 457, column: 26, scope: !6465)
!6469 = !DILocation(line: 458, column: 6, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 458, column: 6)
!6471 = !DILocation(line: 458, column: 11, scope: !6470)
!6472 = !DILocation(line: 458, column: 6, scope: !6431)
!6473 = !DILocation(line: 458, column: 26, scope: !6470)
!6474 = !DILocation(line: 459, column: 6, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 459, column: 6)
!6476 = !DILocation(line: 459, column: 11, scope: !6475)
!6477 = !DILocation(line: 459, column: 6, scope: !6431)
!6478 = !DILocation(line: 459, column: 26, scope: !6475)
!6479 = !DILocation(line: 460, column: 6, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 460, column: 6)
!6481 = !DILocation(line: 460, column: 11, scope: !6480)
!6482 = !DILocation(line: 460, column: 6, scope: !6431)
!6483 = !DILocation(line: 460, column: 26, scope: !6480)
!6484 = !DILocation(line: 461, column: 6, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 461, column: 6)
!6486 = !DILocation(line: 461, column: 11, scope: !6485)
!6487 = !DILocation(line: 461, column: 6, scope: !6431)
!6488 = !DILocation(line: 461, column: 26, scope: !6485)
!6489 = !DILocation(line: 462, column: 6, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 462, column: 6)
!6491 = !DILocation(line: 462, column: 11, scope: !6490)
!6492 = !DILocation(line: 462, column: 6, scope: !6431)
!6493 = !DILocation(line: 462, column: 26, scope: !6490)
!6494 = !DILocation(line: 463, column: 6, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 463, column: 6)
!6496 = !DILocation(line: 463, column: 11, scope: !6495)
!6497 = !DILocation(line: 463, column: 6, scope: !6431)
!6498 = !DILocation(line: 463, column: 26, scope: !6495)
!6499 = !DILocation(line: 464, column: 6, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 464, column: 6)
!6501 = !DILocation(line: 464, column: 11, scope: !6500)
!6502 = !DILocation(line: 464, column: 6, scope: !6431)
!6503 = !DILocation(line: 464, column: 26, scope: !6500)
!6504 = !DILocation(line: 465, column: 6, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 465, column: 6)
!6506 = !DILocation(line: 465, column: 11, scope: !6505)
!6507 = !DILocation(line: 465, column: 6, scope: !6431)
!6508 = !DILocation(line: 465, column: 26, scope: !6505)
!6509 = !DILocation(line: 466, column: 6, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 466, column: 6)
!6511 = !DILocation(line: 466, column: 11, scope: !6510)
!6512 = !DILocation(line: 466, column: 6, scope: !6431)
!6513 = !DILocation(line: 466, column: 26, scope: !6510)
!6514 = !DILocation(line: 467, column: 6, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 467, column: 6)
!6516 = !DILocation(line: 467, column: 11, scope: !6515)
!6517 = !DILocation(line: 467, column: 6, scope: !6431)
!6518 = !DILocation(line: 467, column: 26, scope: !6515)
!6519 = !DILocation(line: 468, column: 6, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 468, column: 6)
!6521 = !DILocation(line: 468, column: 11, scope: !6520)
!6522 = !DILocation(line: 468, column: 6, scope: !6431)
!6523 = !DILocation(line: 468, column: 26, scope: !6520)
!6524 = !DILocation(line: 469, column: 6, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 469, column: 6)
!6526 = !DILocation(line: 469, column: 11, scope: !6525)
!6527 = !DILocation(line: 469, column: 6, scope: !6431)
!6528 = !DILocation(line: 469, column: 26, scope: !6525)
!6529 = !DILocation(line: 470, column: 6, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 470, column: 6)
!6531 = !DILocation(line: 470, column: 11, scope: !6530)
!6532 = !DILocation(line: 470, column: 6, scope: !6431)
!6533 = !DILocation(line: 470, column: 26, scope: !6530)
!6534 = !DILocation(line: 471, column: 6, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 471, column: 6)
!6536 = !DILocation(line: 471, column: 11, scope: !6535)
!6537 = !DILocation(line: 471, column: 6, scope: !6431)
!6538 = !DILocation(line: 471, column: 26, scope: !6535)
!6539 = !DILocation(line: 472, column: 6, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 472, column: 6)
!6541 = !DILocation(line: 472, column: 11, scope: !6540)
!6542 = !DILocation(line: 472, column: 6, scope: !6431)
!6543 = !DILocation(line: 472, column: 26, scope: !6540)
!6544 = !DILocation(line: 473, column: 6, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 473, column: 6)
!6546 = !DILocation(line: 473, column: 11, scope: !6545)
!6547 = !DILocation(line: 473, column: 6, scope: !6431)
!6548 = !DILocation(line: 473, column: 26, scope: !6545)
!6549 = !DILocation(line: 474, column: 6, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 474, column: 6)
!6551 = !DILocation(line: 474, column: 11, scope: !6550)
!6552 = !DILocation(line: 474, column: 6, scope: !6431)
!6553 = !DILocation(line: 474, column: 27, scope: !6550)
!6554 = !DILocation(line: 475, column: 6, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 475, column: 6)
!6556 = !DILocation(line: 475, column: 11, scope: !6555)
!6557 = !DILocation(line: 475, column: 6, scope: !6431)
!6558 = !DILocation(line: 475, column: 32, scope: !6555)
!6559 = !DILocation(line: 477, column: 50, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6431, file: !93, line: 477, column: 6)
!6561 = !DILocation(line: 477, column: 6, scope: !6431)
!6562 = !DILocation(line: 478, column: 3, scope: !6560)
!6563 = !DILocation(line: 478, column: 3, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6565, file: !93, line: 478, column: 3)
!6565 = distinct !DILexicalBlock(scope: !6560, file: !93, line: 478, column: 3)
!6566 = !{i32 -2143557201}
!6567 = !DILocation(line: 478, column: 3, scope: !6565)
!6568 = !DILocation(line: 480, column: 3, scope: !6560)
!6569 = !DILocation(line: 480, column: 3, scope: !6570)
!6570 = distinct !DILexicalBlock(scope: !6560, file: !93, line: 480, column: 3)
!6571 = !DILocation(line: 480, column: 3, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6570, file: !93, line: 480, column: 3)
!6573 = !DILocation(line: 480, column: 3, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6570, file: !93, line: 480, column: 3)
!6575 = !{i64 2151410298, i64 2151410327, i64 2151410373, i64 2151410431, i64 2151410485, i64 2151410539, i64 2151410594, i64 2151410625}
!6576 = !DILocation(line: 483, column: 2, scope: !6431)
!6577 = !DILocation(line: 484, column: 1, scope: !6431)
!6578 = !DISubprogram(name: "kmalloc_trace", scope: !93, file: !93, line: 525, type: !6579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6579 = !DISubroutineType(types: !6580)
!6580 = !{!103, !6581, !302, !309}
!6581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6582, size: 64)
!6582 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3613, line: 11, flags: DIFlagFwdDecl)
!6583 = distinct !DISubprogram(name: "kmalloc_type", scope: !93, file: !93, line: 401, type: !6584, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6586)
!6584 = !DISubroutineType(types: !6585)
!6585 = !{!92, !302, !313}
!6586 = !{!6587, !6588}
!6587 = !DILocalVariable(name: "flags", arg: 1, scope: !6583, file: !93, line: 401, type: !302)
!6588 = !DILocalVariable(name: "caller", arg: 2, scope: !6583, file: !93, line: 401, type: !313)
!6589 = !DILocation(line: 401, column: 67, scope: !6583)
!6590 = !DILocation(line: 401, column: 88, scope: !6583)
!6591 = !DILocation(line: 407, column: 6, scope: !6592)
!6592 = distinct !DILexicalBlock(scope: !6583, file: !93, line: 407, column: 6)
!6593 = !DILocation(line: 407, column: 6, scope: !6583)
!6594 = !DILocation(line: 413, column: 3, scope: !6592)
!6595 = !DILocation(line: 423, column: 38, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6583, file: !93, line: 423, column: 6)
!6597 = !DILocation(line: 423, column: 44, scope: !6596)
!6598 = !DILocation(line: 423, column: 6, scope: !6583)
!6599 = !DILocation(line: 424, column: 3, scope: !6596)
!6600 = !DILocation(line: 426, column: 3, scope: !6601)
!6601 = distinct !DILexicalBlock(scope: !6583, file: !93, line: 425, column: 6)
!6602 = !DILocation(line: 429, column: 1, scope: !6583)
!6603 = !DISubprogram(name: "__kmalloc", scope: !93, file: !93, line: 488, type: !5710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6604 = !DISubprogram(name: "__compiletime_assert_117", scope: !93, file: !93, line: 478, type: !2301, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6605 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6034, file: !6034, line: 80, type: !6035, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6606)
!6606 = !{!6607, !6608}
!6607 = !DILocalVariable(name: "v", arg: 1, scope: !6605, file: !6034, line: 80, type: !6037)
!6608 = !DILocalVariable(name: "size", arg: 2, scope: !6605, file: !6034, line: 80, type: !309)
!6609 = !DILocation(line: 80, column: 74, scope: !6605)
!6610 = !DILocation(line: 80, column: 84, scope: !6605)
!6611 = !DILocation(line: 82, column: 20, scope: !6605)
!6612 = !DILocation(line: 82, column: 23, scope: !6605)
!6613 = !DILocation(line: 82, column: 2, scope: !6605)
!6614 = !DILocation(line: 83, column: 2, scope: !6605)
!6615 = !DILocation(line: 84, column: 1, scope: !6605)
!6616 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6051, file: !6051, line: 488, type: !5723, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6617)
!6617 = !{!6618, !6619}
!6618 = !DILocalVariable(name: "v", arg: 1, scope: !6616, file: !6051, line: 488, type: !5725)
!6619 = !DILocalVariable(name: "i", arg: 2, scope: !6616, file: !6051, line: 488, type: !158)
!6620 = !DILocation(line: 488, column: 26, scope: !6616)
!6621 = !DILocation(line: 488, column: 33, scope: !6616)
!6622 = !DILocation(line: 490, column: 18, scope: !6616)
!6623 = !DILocation(line: 490, column: 21, scope: !6616)
!6624 = !DILocation(line: 490, column: 2, scope: !6616)
!6625 = !DILocation(line: 491, column: 1, scope: !6616)
!6626 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6081, file: !6081, line: 26, type: !5723, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6627)
!6627 = !{!6628, !6629}
!6628 = !DILocalVariable(name: "v", arg: 1, scope: !6626, file: !6081, line: 26, type: !5725)
!6629 = !DILocalVariable(name: "i", arg: 2, scope: !6626, file: !6081, line: 26, type: !158)
!6630 = !DILocation(line: 26, column: 55, scope: !6626)
!6631 = !DILocation(line: 26, column: 62, scope: !6626)
!6632 = !DILocation(line: 28, column: 2, scope: !6626)
!6633 = !DILocation(line: 28, column: 2, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6626, file: !6081, line: 28, column: 2)
!6635 = !DILocation(line: 29, column: 1, scope: !6626)
