; ModuleID = 'fs/kernel_read_file.c'
source_filename = "fs/kernel_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kernel_read_file: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kernel_read_file ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kernel_read_file_from_path: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kernel_read_file_from_path ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kernel_read_file_from_path_initns: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kernel_read_file_from_path_initns ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kernel_read_file_from_fd: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kernel_read_file_from_fd ; .previous"

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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.14 = type { %struct.callback_head }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.16 = type { ptr }
%struct.file = type { %union.anon.17, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.18, %struct.qspinlock }
%union.anon.18 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.fd = type { ptr, i32 }

@__UNIQUE_ID___addressable_kernel_read_file281 = internal global ptr @kernel_read_file, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_kernel_read_file_from_path282 = internal global ptr @kernel_read_file_from_path, section ".discard.addressable", align 8, !dbg !3425
@init_task = external dso_local global %struct.task_struct, align 64
@__UNIQUE_ID___addressable_kernel_read_file_from_path_initns283 = internal global ptr @kernel_read_file_from_path_initns, section ".discard.addressable", align 8, !dbg !3427
@__UNIQUE_ID___addressable_kernel_read_file_from_fd284 = internal global ptr @kernel_read_file_from_fd, section ".discard.addressable", align 8, !dbg !3429
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_kernel_read_file281, ptr @__UNIQUE_ID___addressable_kernel_read_file_from_path282, ptr @__UNIQUE_ID___addressable_kernel_read_file_from_path_initns283, ptr @__UNIQUE_ID___addressable_kernel_read_file_from_fd284], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @kernel_read_file(ptr noundef %file, i64 noundef %offset, ptr noundef %buf, i64 noundef %buf_size, ptr noundef %file_size, i32 noundef %id) #0 align 16 !dbg !3440 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %buf_size.addr = alloca i64, align 8
  %file_size.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %i_size = alloca i64, align 8
  %pos = alloca i64, align 8
  %copied = alloca i64, align 8
  %allocated = alloca ptr, align 8
  %whole_file = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %bytes = alloca i64, align 8
  %wanted = alloca i64, align 8
  %__UNIQUE_ID___x279 = alloca i64, align 8
  %__UNIQUE_ID___y280 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3445, metadata !DIExpression()), !dbg !3465
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3446, metadata !DIExpression()), !dbg !3466
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3447, metadata !DIExpression()), !dbg !3467
  store i64 %buf_size, ptr %buf_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf_size.addr, metadata !3448, metadata !DIExpression()), !dbg !3468
  store ptr %file_size, ptr %file_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_size.addr, metadata !3449, metadata !DIExpression()), !dbg !3469
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !3450, metadata !DIExpression()), !dbg !3470
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_size) #10, !dbg !3471
  call void @llvm.dbg.declare(metadata ptr %i_size, metadata !3451, metadata !DIExpression()), !dbg !3472
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #10, !dbg !3471
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !3452, metadata !DIExpression()), !dbg !3473
  call void @llvm.lifetime.start.p0(i64 8, ptr %copied) #10, !dbg !3474
  call void @llvm.dbg.declare(metadata ptr %copied, metadata !3453, metadata !DIExpression()), !dbg !3475
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocated) #10, !dbg !3476
  call void @llvm.dbg.declare(metadata ptr %allocated, metadata !3454, metadata !DIExpression()), !dbg !3477
  store ptr null, ptr %allocated, align 8, !dbg !3477
  call void @llvm.lifetime.start.p0(i64 1, ptr %whole_file) #10, !dbg !3478
  call void @llvm.dbg.declare(metadata ptr %whole_file, metadata !3455, metadata !DIExpression()), !dbg !3479
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !3480
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3456, metadata !DIExpression()), !dbg !3481
  %0 = load i64, ptr %offset.addr, align 8, !dbg !3482
  %cmp = icmp ne i64 %0, 0, !dbg !3484
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3485

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !3486
  %2 = load ptr, ptr %1, align 8, !dbg !3487
  %tobool = icmp ne ptr %2, null, !dbg !3487
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3488

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load ptr, ptr %file_size.addr, align 8, !dbg !3489
  %tobool1 = icmp ne ptr %3, null, !dbg !3489
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3490

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i64 -22, ptr %retval, align 8, !dbg !3491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !3491

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %file.addr, align 8, !dbg !3492
  %call = call ptr @file_inode(ptr noundef %4) #11, !dbg !3492
  %i_mode = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 0, !dbg !3492
  %5 = load i16, ptr %i_mode, align 8, !dbg !3492
  %conv = zext i16 %5 to i32, !dbg !3492
  %and = and i32 %conv, 61440, !dbg !3492
  %cmp2 = icmp eq i32 %and, 32768, !dbg !3492
  br i1 %cmp2, label %if.end5, label %if.then4, !dbg !3494

if.then4:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !3495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !3495

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %file.addr, align 8, !dbg !3496
  %call6 = call i32 @deny_write_access(ptr noundef %6) #11, !dbg !3497
  store i32 %call6, ptr %ret, align 4, !dbg !3498
  %7 = load i32, ptr %ret, align 4, !dbg !3499
  %tobool7 = icmp ne i32 %7, 0, !dbg !3499
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !3501

if.then8:                                         ; preds = %if.end5
  %8 = load i32, ptr %ret, align 4, !dbg !3502
  %conv9 = sext i32 %8 to i64, !dbg !3502
  store i64 %conv9, ptr %retval, align 8, !dbg !3503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !3503

if.end10:                                         ; preds = %if.end5
  %9 = load ptr, ptr %file.addr, align 8, !dbg !3504
  %call11 = call ptr @file_inode(ptr noundef %9) #11, !dbg !3505
  %call12 = call i64 @i_size_read(ptr noundef %call11) #11, !dbg !3506
  store i64 %call12, ptr %i_size, align 8, !dbg !3507
  %10 = load i64, ptr %i_size, align 8, !dbg !3508
  %cmp13 = icmp sle i64 %10, 0, !dbg !3510
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !3511

if.then15:                                        ; preds = %if.end10
  store i32 -22, ptr %ret, align 4, !dbg !3512
  br label %out, !dbg !3514

if.end16:                                         ; preds = %if.end10
  %11 = load i64, ptr %i_size, align 8, !dbg !3515
  %cmp17 = icmp sgt i64 %11, 9223372036854775807, !dbg !3517
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !3518

if.then19:                                        ; preds = %if.end16
  store i32 -27, ptr %ret, align 4, !dbg !3519
  br label %out, !dbg !3521

if.end20:                                         ; preds = %if.end16
  %12 = load ptr, ptr %file_size.addr, align 8, !dbg !3522
  %tobool21 = icmp ne ptr %12, null, !dbg !3522
  br i1 %tobool21, label %if.end29, label %land.lhs.true22, !dbg !3524

land.lhs.true22:                                  ; preds = %if.end20
  %13 = load i64, ptr %offset.addr, align 8, !dbg !3525
  %cmp23 = icmp eq i64 %13, 0, !dbg !3526
  br i1 %cmp23, label %land.lhs.true25, label %if.end29, !dbg !3527

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %14 = load i64, ptr %i_size, align 8, !dbg !3528
  %15 = load i64, ptr %buf_size.addr, align 8, !dbg !3529
  %cmp26 = icmp ugt i64 %14, %15, !dbg !3530
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !3531

if.then28:                                        ; preds = %land.lhs.true25
  store i32 -27, ptr %ret, align 4, !dbg !3532
  br label %out, !dbg !3534

if.end29:                                         ; preds = %land.lhs.true25, %land.lhs.true22, %if.end20
  %16 = load i64, ptr %offset.addr, align 8, !dbg !3535
  %cmp30 = icmp eq i64 %16, 0, !dbg !3536
  br i1 %cmp30, label %land.rhs, label %land.end, !dbg !3537

land.rhs:                                         ; preds = %if.end29
  %17 = load i64, ptr %i_size, align 8, !dbg !3538
  %18 = load i64, ptr %buf_size.addr, align 8, !dbg !3539
  %cmp32 = icmp ule i64 %17, %18, !dbg !3540
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end29
  %19 = phi i1 [ false, %if.end29 ], [ %cmp32, %land.rhs ], !dbg !3541
  %frombool = zext i1 %19 to i8, !dbg !3542
  store i8 %frombool, ptr %whole_file, align 1, !dbg !3542
  %20 = load ptr, ptr %file.addr, align 8, !dbg !3543
  %21 = load i32, ptr %id.addr, align 4, !dbg !3544
  %22 = load i8, ptr %whole_file, align 1, !dbg !3545, !range !3546, !noundef !822
  %tobool34 = trunc i8 %22 to i1, !dbg !3545
  %call35 = call i32 @security_kernel_read_file(ptr noundef %20, i32 noundef %21, i1 noundef zeroext %tobool34) #11, !dbg !3547
  store i32 %call35, ptr %ret, align 4, !dbg !3548
  %23 = load i32, ptr %ret, align 4, !dbg !3549
  %tobool36 = icmp ne i32 %23, 0, !dbg !3549
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !3551

if.then37:                                        ; preds = %land.end
  br label %out, !dbg !3552

if.end38:                                         ; preds = %land.end
  %24 = load ptr, ptr %file_size.addr, align 8, !dbg !3553
  %tobool39 = icmp ne ptr %24, null, !dbg !3553
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !3555

if.then40:                                        ; preds = %if.end38
  %25 = load i64, ptr %i_size, align 8, !dbg !3556
  %26 = load ptr, ptr %file_size.addr, align 8, !dbg !3557
  store i64 %25, ptr %26, align 8, !dbg !3558
  br label %if.end41, !dbg !3559

if.end41:                                         ; preds = %if.then40, %if.end38
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !3560
  %28 = load ptr, ptr %27, align 8, !dbg !3562
  %tobool42 = icmp ne ptr %28, null, !dbg !3562
  br i1 %tobool42, label %if.end45, label %if.then43, !dbg !3563

if.then43:                                        ; preds = %if.end41
  %29 = load i64, ptr %i_size, align 8, !dbg !3564
  %call44 = call noalias ptr @vmalloc(i64 noundef %29) #12, !dbg !3565
  store ptr %call44, ptr %allocated, align 8, !dbg !3566
  %30 = load ptr, ptr %buf.addr, align 8, !dbg !3567
  store ptr %call44, ptr %30, align 8, !dbg !3568
  br label %if.end45, !dbg !3569

if.end45:                                         ; preds = %if.then43, %if.end41
  %31 = load ptr, ptr %buf.addr, align 8, !dbg !3570
  %32 = load ptr, ptr %31, align 8, !dbg !3572
  %tobool46 = icmp ne ptr %32, null, !dbg !3572
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !3573

if.then47:                                        ; preds = %if.end45
  store i32 -12, ptr %ret, align 4, !dbg !3574
  br label %out, !dbg !3576

if.end48:                                         ; preds = %if.end45
  %33 = load i64, ptr %offset.addr, align 8, !dbg !3577
  store i64 %33, ptr %pos, align 8, !dbg !3578
  store i64 0, ptr %copied, align 8, !dbg !3579
  br label %while.cond, !dbg !3580

while.cond:                                       ; preds = %cleanup.cont, %if.end48
  %34 = load i64, ptr %copied, align 8, !dbg !3581
  %35 = load i64, ptr %buf_size.addr, align 8, !dbg !3582
  %cmp49 = icmp ult i64 %34, %35, !dbg !3583
  br i1 %cmp49, label %while.body, label %while.end, !dbg !3580

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #10, !dbg !3584
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !3457, metadata !DIExpression()), !dbg !3585
  call void @llvm.lifetime.start.p0(i64 8, ptr %wanted) #10, !dbg !3586
  call void @llvm.dbg.declare(metadata ptr %wanted, metadata !3459, metadata !DIExpression()), !dbg !3587
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x279) #10, !dbg !3588
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x279, metadata !3460, metadata !DIExpression()), !dbg !3588
  %36 = load i64, ptr %buf_size.addr, align 8, !dbg !3588
  %37 = load i64, ptr %copied, align 8, !dbg !3588
  %sub = sub i64 %36, %37, !dbg !3588
  store i64 %sub, ptr %__UNIQUE_ID___x279, align 8, !dbg !3588
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y280) #10, !dbg !3588
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y280, metadata !3462, metadata !DIExpression()), !dbg !3588
  %38 = load i64, ptr %i_size, align 8, !dbg !3588
  %39 = load i64, ptr %pos, align 8, !dbg !3588
  %sub51 = sub i64 %38, %39, !dbg !3588
  store i64 %sub51, ptr %__UNIQUE_ID___y280, align 8, !dbg !3588
  %40 = load i64, ptr %__UNIQUE_ID___x279, align 8, !dbg !3588
  %41 = load i64, ptr %__UNIQUE_ID___y280, align 8, !dbg !3588
  %cmp52 = icmp ult i64 %40, %41, !dbg !3588
  br i1 %cmp52, label %cond.true, label %cond.false, !dbg !3588

cond.true:                                        ; preds = %while.body
  %42 = load i64, ptr %__UNIQUE_ID___x279, align 8, !dbg !3588
  br label %cond.end, !dbg !3588

cond.false:                                       ; preds = %while.body
  %43 = load i64, ptr %__UNIQUE_ID___y280, align 8, !dbg !3588
  br label %cond.end, !dbg !3588

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %42, %cond.true ], [ %43, %cond.false ], !dbg !3588
  store i64 %cond, ptr %tmp, align 8, !dbg !3588
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y280) #10, !dbg !3589
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x279) #10, !dbg !3589
  %44 = load i64, ptr %tmp, align 8, !dbg !3588
  store i64 %44, ptr %wanted, align 8, !dbg !3587
  %45 = load ptr, ptr %file.addr, align 8, !dbg !3590
  %46 = load ptr, ptr %buf.addr, align 8, !dbg !3591
  %47 = load ptr, ptr %46, align 8, !dbg !3592
  %48 = load i64, ptr %copied, align 8, !dbg !3593
  %add.ptr = getelementptr i8, ptr %47, i64 %48, !dbg !3594
  %49 = load i64, ptr %wanted, align 8, !dbg !3595
  %call54 = call i64 @kernel_read(ptr noundef %45, ptr noundef %add.ptr, i64 noundef %49, ptr noundef %pos) #11, !dbg !3596
  store i64 %call54, ptr %bytes, align 8, !dbg !3597
  %50 = load i64, ptr %bytes, align 8, !dbg !3598
  %cmp55 = icmp slt i64 %50, 0, !dbg !3600
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !3601

if.then57:                                        ; preds = %cond.end
  %51 = load i64, ptr %bytes, align 8, !dbg !3602
  %conv58 = trunc i64 %51 to i32, !dbg !3602
  store i32 %conv58, ptr %ret, align 4, !dbg !3604
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3605

if.end59:                                         ; preds = %cond.end
  %52 = load i64, ptr %bytes, align 8, !dbg !3606
  %cmp60 = icmp eq i64 %52, 0, !dbg !3608
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !3609

if.then62:                                        ; preds = %if.end59
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3610

if.end63:                                         ; preds = %if.end59
  %53 = load i64, ptr %bytes, align 8, !dbg !3611
  %54 = load i64, ptr %copied, align 8, !dbg !3612
  %add = add i64 %54, %53, !dbg !3612
  store i64 %add, ptr %copied, align 8, !dbg !3612
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3613
  br label %cleanup, !dbg !3613

cleanup:                                          ; preds = %if.then57, %if.end63, %if.then62
  call void @llvm.lifetime.end.p0(i64 8, ptr %wanted) #10, !dbg !3613
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #10, !dbg !3613
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup87 [
    i32 0, label %cleanup.cont
    i32 4, label %while.end
    i32 5, label %out_free
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !3580, !llvm.loop !3614

while.end:                                        ; preds = %cleanup, %while.cond
  %55 = load i8, ptr %whole_file, align 1, !dbg !3617, !range !3546, !noundef !822
  %tobool65 = trunc i8 %55 to i1, !dbg !3617
  br i1 %tobool65, label %if.then66, label %if.end72, !dbg !3619

if.then66:                                        ; preds = %while.end
  %56 = load i64, ptr %pos, align 8, !dbg !3620
  %57 = load i64, ptr %i_size, align 8, !dbg !3623
  %cmp67 = icmp ne i64 %56, %57, !dbg !3624
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !3625

if.then69:                                        ; preds = %if.then66
  store i32 -5, ptr %ret, align 4, !dbg !3626
  br label %out_free, !dbg !3628

if.end70:                                         ; preds = %if.then66
  %58 = load ptr, ptr %file.addr, align 8, !dbg !3629
  %59 = load ptr, ptr %buf.addr, align 8, !dbg !3630
  %60 = load ptr, ptr %59, align 8, !dbg !3631
  %61 = load i64, ptr %i_size, align 8, !dbg !3632
  %62 = load i32, ptr %id.addr, align 4, !dbg !3633
  %call71 = call i32 @security_kernel_post_read_file(ptr noundef %58, ptr noundef %60, i64 noundef %61, i32 noundef %62) #11, !dbg !3634
  store i32 %call71, ptr %ret, align 4, !dbg !3635
  br label %if.end72, !dbg !3636

if.end72:                                         ; preds = %if.end70, %while.end
  br label %out_free, !dbg !3617

out_free:                                         ; preds = %if.end72, %cleanup, %if.then69
  call void @llvm.dbg.label(metadata !3463), !dbg !3637
  %63 = load i32, ptr %ret, align 4, !dbg !3638
  %cmp73 = icmp slt i32 %63, 0, !dbg !3640
  br i1 %cmp73, label %if.then75, label %if.end79, !dbg !3641

if.then75:                                        ; preds = %out_free
  %64 = load ptr, ptr %allocated, align 8, !dbg !3642
  %tobool76 = icmp ne ptr %64, null, !dbg !3642
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !3645

if.then77:                                        ; preds = %if.then75
  %65 = load ptr, ptr %buf.addr, align 8, !dbg !3646
  %66 = load ptr, ptr %65, align 8, !dbg !3648
  call void @vfree(ptr noundef %66) #11, !dbg !3649
  %67 = load ptr, ptr %buf.addr, align 8, !dbg !3650
  store ptr null, ptr %67, align 8, !dbg !3651
  br label %if.end78, !dbg !3652

if.end78:                                         ; preds = %if.then77, %if.then75
  br label %if.end79, !dbg !3653

if.end79:                                         ; preds = %if.end78, %out_free
  br label %out, !dbg !3654

out:                                              ; preds = %if.end79, %if.then47, %if.then37, %if.then28, %if.then19, %if.then15
  call void @llvm.dbg.label(metadata !3464), !dbg !3655
  %68 = load ptr, ptr %file.addr, align 8, !dbg !3656
  call void @allow_write_access(ptr noundef %68) #11, !dbg !3657
  %69 = load i32, ptr %ret, align 4, !dbg !3658
  %cmp80 = icmp eq i32 %69, 0, !dbg !3659
  br i1 %cmp80, label %cond.true82, label %cond.false83, !dbg !3658

cond.true82:                                      ; preds = %out
  %70 = load i64, ptr %copied, align 8, !dbg !3660
  br label %cond.end85, !dbg !3658

cond.false83:                                     ; preds = %out
  %71 = load i32, ptr %ret, align 4, !dbg !3661
  %conv84 = sext i32 %71 to i64, !dbg !3661
  br label %cond.end85, !dbg !3658

cond.end85:                                       ; preds = %cond.false83, %cond.true82
  %cond86 = phi i64 [ %70, %cond.true82 ], [ %conv84, %cond.false83 ], !dbg !3658
  store i64 %cond86, ptr %retval, align 8, !dbg !3662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !3662

cleanup87:                                        ; preds = %cond.end85, %cleanup, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !3663
  call void @llvm.lifetime.end.p0(i64 1, ptr %whole_file) #10, !dbg !3663
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocated) #10, !dbg !3663
  call void @llvm.lifetime.end.p0(i64 8, ptr %copied) #10, !dbg !3663
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #10, !dbg !3663
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_size) #10, !dbg !3663
  %72 = load i64, ptr %retval, align 8, !dbg !3663
  ret i64 %72, !dbg !3663
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #3 align 16 !dbg !3664 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !3670, metadata !DIExpression()), !dbg !3671
  %0 = load ptr, ptr %f.addr, align 8, !dbg !3672
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !3673
  %1 = load ptr, ptr %f_inode, align 8, !dbg !3673
  ret ptr %1, !dbg !3674
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @deny_write_access(ptr noundef %file) #3 align 16 !dbg !3675 {
entry:
  %file.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3679, metadata !DIExpression()), !dbg !3681
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #10, !dbg !3682
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !3680, metadata !DIExpression()), !dbg !3683
  %0 = load ptr, ptr %file.addr, align 8, !dbg !3684
  %call = call ptr @file_inode(ptr noundef %0) #11, !dbg !3685
  store ptr %call, ptr %inode, align 8, !dbg !3683
  %1 = load ptr, ptr %inode, align 8, !dbg !3686
  %i_writecount = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 37, !dbg !3687
  %call1 = call zeroext i1 @atomic_dec_unless_positive(ptr noundef %i_writecount) #11, !dbg !3688
  %2 = zext i1 %call1 to i64, !dbg !3688
  %cond = select i1 %call1, i32 0, i32 -26, !dbg !3688
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #10, !dbg !3689
  ret i32 %cond, !dbg !3690
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @i_size_read(ptr noundef %inode) #3 align 16 !dbg !3691 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !3695, metadata !DIExpression()), !dbg !3696
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !3697
  %i_size = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15, !dbg !3698
  %1 = load i64, ptr %i_size, align 8, !dbg !3698
  ret i64 %1, !dbg !3699
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3700 dso_local i32 @security_kernel_read_file(ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3704 dso_local noalias ptr @vmalloc(i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3707 dso_local i64 @kernel_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3710 dso_local i32 @security_kernel_post_read_file(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3713 dso_local void @vfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @allow_write_access(ptr noundef %file) #3 align 16 !dbg !3716 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3718, metadata !DIExpression()), !dbg !3719
  %0 = load ptr, ptr %file.addr, align 8, !dbg !3720
  %tobool = icmp ne ptr %0, null, !dbg !3720
  br i1 %tobool, label %if.then, label %if.end, !dbg !3722

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8, !dbg !3723
  %call = call ptr @file_inode(ptr noundef %1) #11, !dbg !3724
  %i_writecount = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 37, !dbg !3725
  call void @atomic_inc(ptr noundef %i_writecount) #11, !dbg !3726
  br label %if.end, !dbg !3726

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @kernel_read_file_from_path(ptr noundef %path, i64 noundef %offset, ptr noundef %buf, i64 noundef %buf_size, ptr noundef %file_size, i32 noundef %id) #0 align 16 !dbg !3728 {
entry:
  %retval = alloca i64, align 8
  %path.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %buf_size.addr = alloca i64, align 8
  %file_size.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3732, metadata !DIExpression()), !dbg !3740
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3733, metadata !DIExpression()), !dbg !3741
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3734, metadata !DIExpression()), !dbg !3742
  store i64 %buf_size, ptr %buf_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf_size.addr, metadata !3735, metadata !DIExpression()), !dbg !3743
  store ptr %file_size, ptr %file_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_size.addr, metadata !3736, metadata !DIExpression()), !dbg !3744
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !3737, metadata !DIExpression()), !dbg !3745
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #10, !dbg !3746
  call void @llvm.dbg.declare(metadata ptr %file, metadata !3738, metadata !DIExpression()), !dbg !3747
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !3748
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3739, metadata !DIExpression()), !dbg !3749
  %0 = load ptr, ptr %path.addr, align 8, !dbg !3750
  %tobool = icmp ne ptr %0, null, !dbg !3750
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3752

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %path.addr, align 8, !dbg !3753
  %2 = load i8, ptr %1, align 1, !dbg !3754
  %tobool1 = icmp ne i8 %2, 0, !dbg !3754
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3755

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !3756
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3756

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %path.addr, align 8, !dbg !3757
  %call = call ptr @filp_open(ptr noundef %3, i32 noundef 0, i16 noundef zeroext 0) #11, !dbg !3758
  store ptr %call, ptr %file, align 8, !dbg !3759
  %4 = load ptr, ptr %file, align 8, !dbg !3760
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %4) #11, !dbg !3762
  br i1 %call2, label %if.then3, label %if.end5, !dbg !3763

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %file, align 8, !dbg !3764
  %call4 = call i64 @PTR_ERR(ptr noundef %5) #11, !dbg !3765
  store i64 %call4, ptr %retval, align 8, !dbg !3766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3766

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %file, align 8, !dbg !3767
  %7 = load i64, ptr %offset.addr, align 8, !dbg !3768
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !3769
  %9 = load i64, ptr %buf_size.addr, align 8, !dbg !3770
  %10 = load ptr, ptr %file_size.addr, align 8, !dbg !3771
  %11 = load i32, ptr %id.addr, align 4, !dbg !3772
  %call6 = call i64 @kernel_read_file(ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10, i32 noundef %11) #11, !dbg !3773
  store i64 %call6, ptr %ret, align 8, !dbg !3774
  %12 = load ptr, ptr %file, align 8, !dbg !3775
  call void @fput(ptr noundef %12) #11, !dbg !3776
  %13 = load i64, ptr %ret, align 8, !dbg !3777
  store i64 %13, ptr %retval, align 8, !dbg !3778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3778

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !3779
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #10, !dbg !3779
  %14 = load i64, ptr %retval, align 8, !dbg !3779
  ret i64 %14, !dbg !3779
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3780 dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !3783 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3788, metadata !DIExpression()), !dbg !3789
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3790
  %1 = ptrtoint ptr %0 to i64, !dbg !3790
  %2 = inttoptr i64 %1 to ptr, !dbg !3790
  %3 = ptrtoint ptr %2 to i64, !dbg !3790
  %cmp = icmp uge i64 %3, -4095, !dbg !3790
  %lnot = xor i1 %cmp, true, !dbg !3790
  %lnot1 = xor i1 %lnot, true, !dbg !3790
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3790
  %conv = sext i32 %lnot.ext to i64, !dbg !3790
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3790
  %tobool = icmp ne i64 %expval, 0, !dbg !3790
  ret i1 %tobool, !dbg !3791
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !3792 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3796, metadata !DIExpression()), !dbg !3797
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3798
  %1 = ptrtoint ptr %0 to i64, !dbg !3799
  ret i64 %1, !dbg !3800
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3801 dso_local void @fput(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @kernel_read_file_from_path_initns(ptr noundef %path, i64 noundef %offset, ptr noundef %buf, i64 noundef %buf_size, ptr noundef %file_size, i32 noundef %id) #0 align 16 !dbg !3803 {
entry:
  %retval = alloca i64, align 8
  %path.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %buf_size.addr = alloca i64, align 8
  %file_size.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  %root = alloca %struct.path, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3805, metadata !DIExpression()), !dbg !3814
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3806, metadata !DIExpression()), !dbg !3815
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3807, metadata !DIExpression()), !dbg !3816
  store i64 %buf_size, ptr %buf_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf_size.addr, metadata !3808, metadata !DIExpression()), !dbg !3817
  store ptr %file_size, ptr %file_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_size.addr, metadata !3809, metadata !DIExpression()), !dbg !3818
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !3810, metadata !DIExpression()), !dbg !3819
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #10, !dbg !3820
  call void @llvm.dbg.declare(metadata ptr %file, metadata !3811, metadata !DIExpression()), !dbg !3821
  call void @llvm.lifetime.start.p0(i64 16, ptr %root) #10, !dbg !3822
  call void @llvm.dbg.declare(metadata ptr %root, metadata !3812, metadata !DIExpression()), !dbg !3823
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !3824
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3813, metadata !DIExpression()), !dbg !3825
  %0 = load ptr, ptr %path.addr, align 8, !dbg !3826
  %tobool = icmp ne ptr %0, null, !dbg !3826
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3828

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %path.addr, align 8, !dbg !3829
  %2 = load i8, ptr %1, align 1, !dbg !3830
  %tobool1 = icmp ne i8 %2, 0, !dbg !3830
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3831

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !3832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3832

if.end:                                           ; preds = %lor.lhs.false
  call void @task_lock(ptr noundef @init_task) #11, !dbg !3833
  %3 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 100), align 32, !dbg !3834
  call void @get_fs_root(ptr noundef %3, ptr noundef %root) #11, !dbg !3835
  call void @task_unlock(ptr noundef @init_task) #11, !dbg !3836
  %4 = load ptr, ptr %path.addr, align 8, !dbg !3837
  %call = call ptr @file_open_root(ptr noundef %root, ptr noundef %4, i32 noundef 0, i16 noundef zeroext 0) #11, !dbg !3838
  store ptr %call, ptr %file, align 8, !dbg !3839
  call void @path_put(ptr noundef %root) #11, !dbg !3840
  %5 = load ptr, ptr %file, align 8, !dbg !3841
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %5) #11, !dbg !3843
  br i1 %call2, label %if.then3, label %if.end5, !dbg !3844

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %file, align 8, !dbg !3845
  %call4 = call i64 @PTR_ERR(ptr noundef %6) #11, !dbg !3846
  store i64 %call4, ptr %retval, align 8, !dbg !3847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3847

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %file, align 8, !dbg !3848
  %8 = load i64, ptr %offset.addr, align 8, !dbg !3849
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !3850
  %10 = load i64, ptr %buf_size.addr, align 8, !dbg !3851
  %11 = load ptr, ptr %file_size.addr, align 8, !dbg !3852
  %12 = load i32, ptr %id.addr, align 4, !dbg !3853
  %call6 = call i64 @kernel_read_file(ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11, i32 noundef %12) #11, !dbg !3854
  store i64 %call6, ptr %ret, align 8, !dbg !3855
  %13 = load ptr, ptr %file, align 8, !dbg !3856
  call void @fput(ptr noundef %13) #11, !dbg !3857
  %14 = load i64, ptr %ret, align 8, !dbg !3858
  store i64 %14, ptr %retval, align 8, !dbg !3859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3859

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !3860
  call void @llvm.lifetime.end.p0(i64 16, ptr %root) #10, !dbg !3860
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #10, !dbg !3860
  %15 = load i64, ptr %retval, align 8, !dbg !3860
  ret i64 %15, !dbg !3860
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_lock(ptr noundef %p) #3 align 16 !dbg !3861 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3866, metadata !DIExpression()), !dbg !3867
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3868
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !3869
  call void @spin_lock(ptr noundef %alloc_lock) #11, !dbg !3870
  ret void, !dbg !3871
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_fs_root(ptr noundef %fs, ptr noundef %root) #3 align 16 !dbg !3872 {
entry:
  %fs.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %fs, ptr %fs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs.addr, metadata !3876, metadata !DIExpression()), !dbg !3878
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3877, metadata !DIExpression()), !dbg !3879
  %0 = load ptr, ptr %fs.addr, align 8, !dbg !3880
  %lock = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 1, !dbg !3881
  call void @spin_lock(ptr noundef %lock) #11, !dbg !3882
  %1 = load ptr, ptr %root.addr, align 8, !dbg !3883
  %2 = load ptr, ptr %fs.addr, align 8, !dbg !3884
  %root1 = getelementptr inbounds %struct.fs_struct, ptr %2, i32 0, i32 5, !dbg !3885
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %root1, i64 16, i1 false), !dbg !3885
  %3 = load ptr, ptr %root.addr, align 8, !dbg !3886
  call void @path_get(ptr noundef %3) #11, !dbg !3887
  %4 = load ptr, ptr %fs.addr, align 8, !dbg !3888
  %lock2 = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 1, !dbg !3889
  call void @spin_unlock(ptr noundef %lock2) #11, !dbg !3890
  ret void, !dbg !3891
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_unlock(ptr noundef %p) #3 align 16 !dbg !3892 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3894, metadata !DIExpression()), !dbg !3895
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3896
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !3897
  call void @spin_unlock(ptr noundef %alloc_lock) #11, !dbg !3898
  ret void, !dbg !3899
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3900 dso_local ptr @file_open_root(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3903 dso_local void @path_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @kernel_read_file_from_fd(i32 noundef %fd, i64 noundef %offset, ptr noundef %buf, i64 noundef %buf_size, ptr noundef %file_size, i32 noundef %id) #0 align 16 !dbg !3906 {
entry:
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %buf_size.addr = alloca i64, align 8
  %file_size.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %f = alloca %struct.fd, align 8
  %ret = alloca i64, align 8
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !3910, metadata !DIExpression()), !dbg !3923
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3911, metadata !DIExpression()), !dbg !3924
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3912, metadata !DIExpression()), !dbg !3925
  store i64 %buf_size, ptr %buf_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf_size.addr, metadata !3913, metadata !DIExpression()), !dbg !3926
  store ptr %file_size, ptr %file_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_size.addr, metadata !3914, metadata !DIExpression()), !dbg !3927
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !3915, metadata !DIExpression()), !dbg !3928
  call void @llvm.lifetime.start.p0(i64 16, ptr %f) #10, !dbg !3929
  call void @llvm.dbg.declare(metadata ptr %f, metadata !3916, metadata !DIExpression()), !dbg !3930
  %0 = load i32, ptr %fd.addr, align 4, !dbg !3931
  %call = call { ptr, i32 } @fdget(i32 noundef %0) #11, !dbg !3932
  %1 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !3932
  %2 = extractvalue { ptr, i32 } %call, 0, !dbg !3932
  store ptr %2, ptr %1, align 8, !dbg !3932
  %3 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !3932
  %4 = extractvalue { ptr, i32 } %call, 1, !dbg !3932
  store i32 %4, ptr %3, align 8, !dbg !3932
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !3933
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3921, metadata !DIExpression()), !dbg !3934
  store i64 -9, ptr %ret, align 8, !dbg !3934
  %file = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !3935
  %5 = load ptr, ptr %file, align 8, !dbg !3935
  %tobool = icmp ne ptr %5, null, !dbg !3937
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3938

lor.lhs.false:                                    ; preds = %entry
  %file1 = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !3939
  %6 = load ptr, ptr %file1, align 8, !dbg !3939
  %f_mode = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2, !dbg !3940
  %7 = load i32, ptr %f_mode, align 4, !dbg !3940
  %and = and i32 %7, 1, !dbg !3941
  %tobool2 = icmp ne i32 %and, 0, !dbg !3941
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3942

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out, !dbg !3943

if.end:                                           ; preds = %lor.lhs.false
  %file3 = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !3944
  %8 = load ptr, ptr %file3, align 8, !dbg !3944
  %9 = load i64, ptr %offset.addr, align 8, !dbg !3945
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !3946
  %11 = load i64, ptr %buf_size.addr, align 8, !dbg !3947
  %12 = load ptr, ptr %file_size.addr, align 8, !dbg !3948
  %13 = load i32, ptr %id.addr, align 4, !dbg !3949
  %call4 = call i64 @kernel_read_file(ptr noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i32 noundef %13) #11, !dbg !3950
  store i64 %call4, ptr %ret, align 8, !dbg !3951
  br label %out, !dbg !3952

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !3922), !dbg !3953
  %14 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !3954
  %15 = load ptr, ptr %14, align 8, !dbg !3954
  %16 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !3954
  %17 = load i32, ptr %16, align 8, !dbg !3954
  call void @fdput(ptr %15, i32 %17) #11, !dbg !3954
  %18 = load i64, ptr %ret, align 8, !dbg !3955
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !3956
  call void @llvm.lifetime.end.p0(i64 16, ptr %f) #10, !dbg !3956
  ret i64 %18, !dbg !3957
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @fdget(i32 noundef %fd) #3 align 16 !dbg !3958 {
entry:
  %retval = alloca %struct.fd, align 8
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !3962, metadata !DIExpression()), !dbg !3963
  %0 = load i32, ptr %fd.addr, align 4, !dbg !3964
  %call = call i64 @__fdget(i32 noundef %0) #11, !dbg !3965
  %call1 = call { ptr, i32 } @__to_fd(i64 noundef %call) #11, !dbg !3966
  %1 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 0, !dbg !3966
  %2 = extractvalue { ptr, i32 } %call1, 0, !dbg !3966
  store ptr %2, ptr %1, align 8, !dbg !3966
  %3 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 1, !dbg !3966
  %4 = extractvalue { ptr, i32 } %call1, 1, !dbg !3966
  store i32 %4, ptr %3, align 8, !dbg !3966
  %5 = load { ptr, i32 }, ptr %retval, align 8, !dbg !3967
  ret { ptr, i32 } %5, !dbg !3967
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fdput(ptr %fd.coerce0, i32 %fd.coerce1) #3 align 16 !dbg !3968 {
entry:
  %fd = alloca %struct.fd, align 8
  %0 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 0
  store ptr %fd.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 1
  store i32 %fd.coerce1, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !3972, metadata !DIExpression()), !dbg !3973
  %flags = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 1, !dbg !3974
  %2 = load i32, ptr %flags, align 8, !dbg !3974
  %and = and i32 %2, 1, !dbg !3976
  %tobool = icmp ne i32 %and, 0, !dbg !3976
  br i1 %tobool, label %if.then, label %if.end, !dbg !3977

if.then:                                          ; preds = %entry
  %file = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 0, !dbg !3978
  %3 = load ptr, ptr %file, align 8, !dbg !3978
  call void @fput(ptr noundef %3) #11, !dbg !3979
  br label %if.end, !dbg !3979

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3980
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_unless_positive(ptr noundef %v) #6 align 16 !dbg !3981 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3987, metadata !DIExpression()), !dbg !3988
  br label %do.body, !dbg !3989

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3990

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3992
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !3993
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3994
  %call = call zeroext i1 @raw_atomic_dec_unless_positive(ptr noundef %1) #11, !dbg !3995
  ret i1 %call, !dbg !3996
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !3997 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4005, metadata !DIExpression()), !dbg !4007
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4006, metadata !DIExpression()), !dbg !4008
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4009
  %1 = load i64, ptr %size.addr, align 8, !dbg !4010
  %conv = trunc i64 %1 to i32, !dbg !4010
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !4011
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4012
  %3 = load i64, ptr %size.addr, align 8, !dbg !4012
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !4012
  ret void, !dbg !4013
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_unless_positive(ptr noundef %v) #6 align 16 !dbg !4014 {
entry:
  %retval = alloca i1, align 1
  %v.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4017, metadata !DIExpression()), !dbg !4019
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #10, !dbg !4020
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4018, metadata !DIExpression()), !dbg !4021
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4022
  %call = call i32 @raw_atomic_read(ptr noundef %0) #11, !dbg !4023
  store i32 %call, ptr %c, align 4, !dbg !4021
  br label %do.body, !dbg !4024

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %c, align 4, !dbg !4025
  %cmp = icmp sgt i32 %1, 0, !dbg !4025
  %lnot = xor i1 %cmp, true, !dbg !4025
  %lnot1 = xor i1 %lnot, true, !dbg !4025
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4025
  %conv = sext i32 %lnot.ext to i64, !dbg !4025
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4025
  %tobool = icmp ne i64 %expval, 0, !dbg !4025
  br i1 %tobool, label %if.then, label %if.end, !dbg !4028

if.then:                                          ; preds = %do.body
  store i1 false, ptr %retval, align 1, !dbg !4029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4029

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !4030

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4031
  %3 = load i32, ptr %c, align 4, !dbg !4032
  %sub = sub i32 %3, 1, !dbg !4033
  %call2 = call zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %2, ptr noundef %c, i32 noundef %sub) #11, !dbg !4034
  %lnot3 = xor i1 %call2, true, !dbg !4035
  br i1 %lnot3, label %do.body, label %do.end, !dbg !4030, !llvm.loop !4036

do.end:                                           ; preds = %do.cond
  store i1 true, ptr %retval, align 1, !dbg !4038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4038

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #10, !dbg !4039
  %4 = load i1, ptr %retval, align 1, !dbg !4039
  ret i1 %4, !dbg !4039
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !4040 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4045, metadata !DIExpression()), !dbg !4047
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4046, metadata !DIExpression()), !dbg !4048
  ret i1 true, !dbg !4049
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !4050 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4055, metadata !DIExpression()), !dbg !4058
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4056, metadata !DIExpression()), !dbg !4059
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4057, metadata !DIExpression()), !dbg !4060
  ret void, !dbg !4061
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #6 align 16 !dbg !4062 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4068, metadata !DIExpression()), !dbg !4069
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4070
  %call = call i32 @arch_atomic_read(ptr noundef %0) #11, !dbg !4071
  ret i32 %call, !dbg !4072
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !4073 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4077, metadata !DIExpression()), !dbg !4080
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4078, metadata !DIExpression()), !dbg !4081
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4079, metadata !DIExpression()), !dbg !4082
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4083
  %1 = load ptr, ptr %old.addr, align 8, !dbg !4084
  %2 = load i32, ptr %new.addr, align 4, !dbg !4085
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11, !dbg !4086
  ret i1 %call, !dbg !4087
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #6 align 16 !dbg !4088 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4091, metadata !DIExpression()), !dbg !4092
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4093
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !4093
  %1 = load volatile i32, ptr %counter, align 4, !dbg !4093
  ret i32 %1, !dbg !4094
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !4095 {
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
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4097, metadata !DIExpression()), !dbg !4106
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4098, metadata !DIExpression()), !dbg !4107
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4099, metadata !DIExpression()), !dbg !4108
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #10, !dbg !4109
  call void @llvm.dbg.declare(metadata ptr %success, metadata !4100, metadata !DIExpression()), !dbg !4109
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #10, !dbg !4109
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !4102, metadata !DIExpression()), !dbg !4109
  %0 = load ptr, ptr %old.addr, align 8, !dbg !4109
  store ptr %0, ptr %_old, align 8, !dbg !4109
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #10, !dbg !4109
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !4103, metadata !DIExpression()), !dbg !4109
  %1 = load ptr, ptr %_old, align 8, !dbg !4109
  %2 = load i32, ptr %1, align 4, !dbg !4109
  store i32 %2, ptr %__old, align 4, !dbg !4109
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #10, !dbg !4109
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !4104, metadata !DIExpression()), !dbg !4109
  %3 = load i32, ptr %new.addr, align 4, !dbg !4109
  store i32 %3, ptr %__new, align 4, !dbg !4109
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !4109
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4105, metadata !DIExpression()), !dbg !4109
  %4 = load ptr, ptr %v.addr, align 8, !dbg !4109
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !4109
  store ptr %counter, ptr %__ptr, align 8, !dbg !4109
  %5 = load ptr, ptr %__ptr, align 8, !dbg !4109
  %6 = load i32, ptr %__old, align 4, !dbg !4109
  %7 = load i32, ptr %__new, align 4, !dbg !4109
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #10, !dbg !4109, !srcloc !4110
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !4109
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !4109
  %9 = icmp ult i8 %asmresult, 2, !dbg !4109
  call void @llvm.assume(i1 %9), !dbg !4109
  store i8 %asmresult, ptr %success, align 1, !dbg !4109
  store i32 %asmresult1, ptr %__old, align 4, !dbg !4109
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !4109
  %10 = load i8, ptr %success, align 1, !dbg !4111, !range !3546, !noundef !822
  %tobool = trunc i8 %10 to i1, !dbg !4111
  %lnot = xor i1 %tobool, true, !dbg !4111
  %lnot2 = xor i1 %lnot, true, !dbg !4111
  %lnot3 = xor i1 %lnot2, true, !dbg !4111
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4111
  %conv = sext i32 %lnot.ext to i64, !dbg !4111
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4111
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4111
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4109

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !4111
  %12 = load ptr, ptr %_old, align 8, !dbg !4111
  store i32 %11, ptr %12, align 4, !dbg !4111
  br label %if.end, !dbg !4111

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !4109, !range !3546, !noundef !822
  %tobool5 = trunc i8 %13 to i1, !dbg !4109
  %lnot6 = xor i1 %tobool5, true, !dbg !4109
  %lnot8 = xor i1 %lnot6, true, !dbg !4109
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !4109
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !4109
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !4109
  store i64 %expval11, ptr %tmp, align 8, !dbg !4111
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #10, !dbg !4113
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #10, !dbg !4113
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #10, !dbg !4113
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #10, !dbg !4113
  %14 = load i64, ptr %tmp, align 8, !dbg !4109
  %tobool12 = icmp ne i64 %14, 0, !dbg !4113
  ret i1 %tobool12, !dbg !4114
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #6 align 16 !dbg !4115 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4119, metadata !DIExpression()), !dbg !4120
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4121
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !4122
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4123
  call void @raw_atomic_inc(ptr noundef %1) #11, !dbg !4124
  ret void, !dbg !4125
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #6 align 16 !dbg !4126 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4128, metadata !DIExpression()), !dbg !4129
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4130
  call void @arch_atomic_inc(ptr noundef %0) #11, !dbg !4131
  ret void, !dbg !4132
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #6 align 16 !dbg !4133 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4135, metadata !DIExpression()), !dbg !4136
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4137
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !4138
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #10, !dbg !4139, !srcloc !4140
  ret void, !dbg !4141
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !4142 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4147, metadata !DIExpression()), !dbg !4148
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4149
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4149
  call void @_raw_spin_lock(ptr noundef %1) #11, !dbg !4149
  ret void, !dbg !4150
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4151 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4156 dso_local void @path_get(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !4157 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4159, metadata !DIExpression()), !dbg !4160
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4161
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4161
  call void @_raw_spin_unlock(ptr noundef %1) #11, !dbg !4161
  ret void, !dbg !4162
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4163 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @__to_fd(i64 noundef %v) #3 align 16 !dbg !4164 {
entry:
  %retval = alloca %struct.fd, align 8
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4168, metadata !DIExpression()), !dbg !4169
  %file = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 0, !dbg !4170
  %0 = load i64, ptr %v.addr, align 8, !dbg !4171
  %and = and i64 %0, -4, !dbg !4172
  %1 = inttoptr i64 %and to ptr, !dbg !4173
  store ptr %1, ptr %file, align 8, !dbg !4170
  %flags = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 1, !dbg !4170
  %2 = load i64, ptr %v.addr, align 8, !dbg !4174
  %and1 = and i64 %2, 3, !dbg !4175
  %conv = trunc i64 %and1 to i32, !dbg !4174
  store i32 %conv, ptr %flags, align 8, !dbg !4170
  %3 = load { ptr, i32 }, ptr %retval, align 8, !dbg !4176
  ret { ptr, i32 } %3, !dbg !4176
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4177 dso_local i64 @__fdget(i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { noredzone allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438}
!llvm.ident = !{!3439}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kernel_read_file281", scope: !2, file: !3, line: 125, type: !91, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.kernel_read_file.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/kernel_read_file\22 -D KBUILD_BASENAME=\22kernel_read_file\22 -D KBUILD_MODNAME=\22kernel_read_file\22 -D __KBUILD_MODNAME=kmod_kernel_read_file -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/kernel_read_file.ll fs/kernel_read_file.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !90, globals: !3424, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/kernel_read_file.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af517f2df66dab95caf6cc119a3823f2")
!4 = !{!5, !14, !19, !25, !30, !36, !43, !51, !67, !74, !85}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !15, line: 2052, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!18 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !20, line: 54, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "USRQUOTA", value: 0)
!23 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!24 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !26, line: 65, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!29 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !31, line: 16, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "TT_NONE", value: 0)
!34 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!35 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !37, line: 15, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!40 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!41 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!42 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !44, line: 68, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!50 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !52, line: 1325, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!54 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!55 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!56 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!57 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!58 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!59 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!60 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!61 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!62 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!63 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!64 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!65 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!66 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernel_read_file_id", file: !75, line: 22, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/kernel_read_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4f0c42dae390f8fdffc429b945c205c")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84}
!77 = !DIEnumerator(name: "READING_UNKNOWN", value: 0)
!78 = !DIEnumerator(name: "READING_FIRMWARE", value: 1)
!79 = !DIEnumerator(name: "READING_MODULE", value: 2)
!80 = !DIEnumerator(name: "READING_KEXEC_IMAGE", value: 3)
!81 = !DIEnumerator(name: "READING_KEXEC_INITRAMFS", value: 4)
!82 = !DIEnumerator(name: "READING_POLICY", value: 5)
!83 = !DIEnumerator(name: "READING_X509_CERTIFICATE", value: 6)
!84 = !DIEnumerator(name: "READING_MAX_ID", value: 7)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 10, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "false", value: 0)
!89 = !DIEnumerator(name: "true", value: 1)
!90 = !{!91, !92, !98, !102, !103, !107, !108, !101, !97, !114}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !93, line: 66, baseType: !94)
!93 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !95, line: 73, baseType: !96)
!95 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !95, line: 15, baseType: !97)
!97 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 61, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !95, line: 72, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !95, line: 16, baseType: !101)
!101 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !93, line: 156, baseType: !7)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !111, line: 21, baseType: !112)
!111 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !113, line: 27, baseType: !7)
!113 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !15, line: 994, size: 1856, align: 64, elements: !116)
!116 = !{!117, !136, !177, !178, !188, !206, !209, !210, !291, !516, !525, !3414, !3415, !3416, !3417, !3418, !3419, !3421, !3422, !3423}
!117 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !15, line: 995, baseType: !118, size: 128)
!118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !15, line: 995, size: 128, elements: !119)
!119 = !{!120, !126, !135}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !118, file: !15, line: 996, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !122, line: 60, size: 64, elements: !123)
!122 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !121, file: !122, line: 61, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !118, file: !15, line: 997, baseType: !127, size: 128, align: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !93, line: 232, size: 128, align: 64, elements: !128)
!128 = !{!129, !131}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !93, line: 233, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !127, file: !93, line: 234, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !130}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !118, file: !15, line: 998, baseType: !7, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !115, file: !15, line: 1005, baseType: !137, size: 32, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !138, line: 29, baseType: !139)
!138 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !138, line: 17, size: 32, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !138, line: 18, baseType: !142, size: 32)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !138, line: 18, size: 32, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !142, file: !138, line: 19, baseType: !145, size: 32)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !146, line: 14, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !145, file: !146, line: 15, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !150, line: 44, baseType: !151)
!150 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !150, line: 14, size: 32, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !150, line: 15, baseType: !154, size: 32)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !150, line: 15, size: 32, elements: !155)
!155 = !{!156, !161, !169}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !154, file: !150, line: 16, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !93, line: 174, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 172, size: 32, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !158, file: !93, line: 173, baseType: !106, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !150, line: 24, baseType: !162, size: 16)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !154, file: !150, line: 24, size: 16, elements: !163)
!163 = !{!164, !168}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !162, file: !150, line: 25, baseType: !165, size: 8)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !111, line: 17, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !113, line: 21, baseType: !167)
!167 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !162, file: !150, line: 26, baseType: !165, size: 8, offset: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !150, line: 28, baseType: !170, size: 32)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !154, file: !150, line: 28, size: 32, elements: !171)
!171 = !{!172, !176}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !170, file: !150, line: 29, baseType: !173, size: 16)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !111, line: 19, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !113, line: 24, baseType: !175)
!175 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !170, file: !150, line: 30, baseType: !173, size: 16, offset: 16)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !115, file: !15, line: 1006, baseType: !102, size: 32, offset: 160)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !115, file: !15, line: 1007, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !180, line: 13, baseType: !181)
!180 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !93, line: 181, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 179, size: 64, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !182, file: !93, line: 180, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !111, line: 22, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !113, line: 30, baseType: !187)
!187 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !115, file: !15, line: 1008, baseType: !189, size: 256, offset: 256)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !190, line: 66, size: 256, elements: !191)
!190 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!191 = !{!192, !193, !195, !200}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !189, file: !190, line: 67, baseType: !179, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !189, file: !190, line: 68, baseType: !194, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !146, line: 23, baseType: !145)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !189, file: !190, line: 70, baseType: !196, size: 32, offset: 96)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !197, line: 15, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !196, file: !197, line: 20, baseType: !157, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !189, file: !190, line: 72, baseType: !201, size: 128, offset: 128)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !93, line: 190, size: 128, elements: !202)
!202 = !{!203, !205}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !93, line: 191, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !201, file: !93, line: 191, baseType: !204, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !115, file: !15, line: 1009, baseType: !207, size: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !93, line: 52, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !95, line: 88, baseType: !187)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !115, file: !15, line: 1010, baseType: !7, size: 32, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !115, file: !15, line: 1011, baseType: !211, size: 256, offset: 640)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !15, line: 948, size: 256, elements: !212)
!212 = !{!213, !236, !280, !281, !289, !290}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !211, file: !15, line: 949, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !215, line: 34, baseType: !216)
!215 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 25, size: 64, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !216, file: !215, line: 26, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !220, line: 27, baseType: !221)
!220 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !220, line: 13, size: 64, elements: !222)
!222 = !{!223, !235}
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !220, line: 14, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !220, line: 14, size: 32, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !224, file: !220, line: 15, baseType: !157, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !220, line: 16, baseType: !228, size: 32)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !220, line: 16, size: 32, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !228, file: !220, line: 18, baseType: !165, size: 8)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !228, file: !220, line: 19, baseType: !232, size: 24, offset: 8)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 24, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 3)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !221, file: !220, line: 26, baseType: !149, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !211, file: !15, line: 950, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !239)
!239 = !{!240, !246, !247, !248, !261, !262, !269, !270}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !238, file: !6, line: 61, baseType: !241, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !242, line: 113, baseType: !243)
!242 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !242, line: 111, size: 32, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !243, file: !242, line: 112, baseType: !157, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !238, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !238, file: !6, line: 63, baseType: !137, size: 32, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !238, file: !6, line: 65, baseType: !249, size: 256, offset: 128)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 256, elements: !259)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !93, line: 194, size: 64, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !250, file: !93, line: 195, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !93, line: 198, size: 128, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !254, file: !93, line: 199, baseType: !253, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !254, file: !93, line: 199, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!259 = !{!260}
!260 = !DISubrange(count: 4)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !238, file: !6, line: 66, baseType: !250, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !238, file: !6, line: 68, baseType: !263, size: 192, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !264, line: 41, baseType: !265)
!264 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !264, line: 37, size: 192, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !265, file: !264, line: 38, baseType: !137, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !265, file: !264, line: 39, baseType: !201, size: 128, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !238, file: !6, line: 69, baseType: !127, size: 128, align: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !238, file: !6, line: 70, baseType: !271, offset: 768)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, elements: !278)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !272, file: !6, line: 55, baseType: !106, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !272, file: !6, line: 56, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!278 = !{!279}
!279 = !DISubrange(count: -1)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !211, file: !15, line: 951, baseType: !5, size: 32, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !211, file: !15, line: 952, baseType: !282, size: 32, offset: 160)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !283, line: 23, baseType: !284)
!283 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 21, size: 32, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !284, file: !283, line: 22, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !93, line: 37, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !95, line: 49, baseType: !7)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !211, file: !15, line: 952, baseType: !282, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !211, file: !15, line: 953, baseType: !106, size: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !115, file: !15, line: 1012, baseType: !292, size: 64, offset: 896)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !295, line: 110, size: 1472, elements: !296)
!295 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!296 = !{!297, !298, !299, !306, !307, !308, !309, !310, !311, !312, !313, !322, !323, !324, !325, !326, !327, !461, !462, !463, !464, !465, !496, !499, !503, !511}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !294, file: !295, line: 111, baseType: !179, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !294, file: !295, line: 112, baseType: !282, size: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !294, file: !295, line: 113, baseType: !300, size: 32, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !283, line: 28, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 26, size: 32, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !301, file: !283, line: 27, baseType: !304, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !93, line: 38, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !95, line: 50, baseType: !7)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !294, file: !295, line: 114, baseType: !282, size: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !294, file: !295, line: 115, baseType: !300, size: 32, offset: 160)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !294, file: !295, line: 116, baseType: !282, size: 32, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !294, file: !295, line: 117, baseType: !300, size: 32, offset: 224)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !294, file: !295, line: 118, baseType: !282, size: 32, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !294, file: !295, line: 119, baseType: !300, size: 32, offset: 288)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !294, file: !295, line: 120, baseType: !7, size: 32, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !294, file: !295, line: 121, baseType: !314, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !315, line: 24, baseType: !316)
!315 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !315, line: 24, size: 64, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !316, file: !315, line: 24, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !111, line: 23, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !113, line: 31, baseType: !321)
!321 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !294, file: !295, line: 122, baseType: !314, size: 64, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !294, file: !295, line: 123, baseType: !314, size: 64, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !294, file: !295, line: 124, baseType: !314, size: 64, offset: 576)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !294, file: !295, line: 125, baseType: !314, size: 64, offset: 640)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !294, file: !295, line: 127, baseType: !167, size: 8, offset: 704)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !294, file: !295, line: 129, baseType: !328, size: 64, offset: 768)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !330, line: 195, size: 1728, elements: !331)
!330 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!331 = !{!332, !333, !338, !350, !359, !362, !363, !370, !371, !372, !373, !376, !377, !378, !380, !381, !425, !446}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !329, file: !330, line: 196, baseType: !241, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !329, file: !330, line: 197, baseType: !334, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !330, line: 28, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !93, line: 104, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !111, line: 20, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !113, line: 26, baseType: !106)
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !330, line: 198, baseType: !339, size: 192, offset: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !330, line: 198, size: 192, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !339, file: !330, line: 199, baseType: !201, size: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !339, file: !330, line: 200, baseType: !343, size: 192, align: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !344, line: 5, size: 192, align: 64, elements: !345)
!344 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!345 = !{!346, !347, !349}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !343, file: !344, line: 6, baseType: !101, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !343, file: !344, line: 7, baseType: !348, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !343, file: !344, line: 8, baseType: !348, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !329, file: !330, line: 205, baseType: !351, size: 320, offset: 256)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !352, line: 48, size: 320, elements: !353)
!352 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!353 = !{!354, !355, !356, !357, !358}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !351, file: !352, line: 49, baseType: !179, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !351, file: !352, line: 55, baseType: !179, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !351, file: !352, line: 57, baseType: !196, size: 32, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !351, file: !352, line: 59, baseType: !194, size: 32, offset: 160)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !351, file: !352, line: 60, baseType: !201, size: 128, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !329, file: !330, line: 206, baseType: !360, size: 64, offset: 576)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !330, line: 206, flags: DIFlagFwdDecl)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !329, file: !330, line: 207, baseType: !91, size: 64, offset: 640)
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !330, line: 208, baseType: !364, size: 64, offset: 704)
!364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !330, line: 208, size: 64, elements: !365)
!365 = !{!366, !369}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !364, file: !330, line: 209, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !368, line: 8, baseType: !186)
!368 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!369 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !364, file: !330, line: 210, baseType: !367, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !329, file: !330, line: 212, baseType: !367, size: 64, offset: 768)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !329, file: !330, line: 213, baseType: !282, size: 32, offset: 832)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !329, file: !330, line: 214, baseType: !300, size: 32, offset: 864)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !329, file: !330, line: 215, baseType: !374, size: 32, offset: 896)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !330, line: 31, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !93, line: 110, baseType: !110)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !329, file: !330, line: 216, baseType: !175, size: 16, offset: 928)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !329, file: !330, line: 217, baseType: !175, size: 16, offset: 944)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !329, file: !330, line: 221, baseType: !379, size: 16, offset: 960)
!379 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !330, line: 228, baseType: !101, size: 64, offset: 1024)
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !330, line: 245, baseType: !382, size: 320, offset: 1088)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !330, line: 245, size: 320, elements: !383)
!383 = !{!384, !416}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !382, file: !330, line: 246, baseType: !385, size: 320)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !330, line: 114, size: 320, elements: !386)
!386 = !{!387, !388, !401, !404, !413}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !385, file: !330, line: 116, baseType: !101, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !330, line: 117, baseType: !389, size: 64, offset: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !330, line: 117, size: 64, elements: !390)
!390 = !{!391, !400}
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !330, line: 118, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !389, file: !330, line: 118, size: 64, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !392, file: !330, line: 120, baseType: !173, size: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !392, file: !330, line: 121, baseType: !396, size: 48, offset: 16)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 48, elements: !398)
!397 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!398 = !{!399}
!399 = !DISubrange(count: 6)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !389, file: !330, line: 127, baseType: !101, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !385, file: !330, line: 129, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !330, line: 102, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !385, file: !330, line: 130, baseType: !405, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !330, line: 108, size: 192, elements: !407)
!407 = !{!408, !409, !410}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !406, file: !330, line: 109, baseType: !127, size: 128, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !406, file: !330, line: 110, baseType: !241, size: 32, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !406, file: !330, line: 111, baseType: !411, size: 8, offset: 160)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !93, line: 35, baseType: !412)
!412 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !385, file: !330, line: 131, baseType: !414, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!416 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !330, line: 247, baseType: !417, size: 320)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !330, line: 247, size: 320, elements: !418)
!418 = !{!419, !420, !421, !422, !423}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !417, file: !330, line: 248, baseType: !101, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !417, file: !330, line: 249, baseType: !101, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !417, file: !330, line: 250, baseType: !402, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !417, file: !330, line: 251, baseType: !405, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !417, file: !330, line: 252, baseType: !424, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !330, line: 260, baseType: !426, size: 256, offset: 1408)
!426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !330, line: 260, size: 256, elements: !427)
!427 = !{!428, !434}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !426, file: !330, line: 261, baseType: !429, size: 256)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !330, line: 134, size: 256, elements: !430)
!430 = !{!431, !432}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !429, file: !330, line: 135, baseType: !91, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !429, file: !330, line: 136, baseType: !433, size: 256)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 256, elements: !259)
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !330, line: 262, baseType: !435, size: 256)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !426, file: !330, line: 262, size: 256, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !435, file: !330, line: 264, baseType: !201, size: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !435, file: !330, line: 265, baseType: !439, size: 128, offset: 128)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !440, line: 22, size: 128, elements: !441)
!440 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!441 = !{!442, !445}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !439, file: !440, line: 23, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !440, line: 23, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !439, file: !440, line: 24, baseType: !101, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !329, file: !330, line: 280, baseType: !447, size: 64, offset: 1664)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !330, line: 176, size: 192, elements: !449)
!449 = !{!450, !459, !460}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !448, file: !330, line: 177, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !330, line: 171, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!106, !328, !455, !457, !328}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !448, file: !330, line: 178, baseType: !328, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !448, file: !330, line: 179, baseType: !402, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !294, file: !295, line: 130, baseType: !328, size: 64, offset: 832)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !294, file: !295, line: 131, baseType: !328, size: 64, offset: 896)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !294, file: !295, line: 132, baseType: !328, size: 64, offset: 960)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !294, file: !295, line: 135, baseType: !91, size: 64, offset: 1024)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !294, file: !295, line: 137, baseType: !466, size: 64, offset: 1088)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !468, line: 14, size: 1088, elements: !469)
!468 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!469 = !{!470, !471, !480, !481, !482, !483, !484, !485}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !467, file: !468, line: 15, baseType: !241, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !467, file: !468, line: 17, baseType: !472, size: 320, offset: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !473, line: 22, size: 320, elements: !474)
!473 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!474 = !{!475, !476, !477, !478}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !472, file: !473, line: 23, baseType: !194, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !472, file: !473, line: 24, baseType: !185, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !472, file: !473, line: 26, baseType: !201, size: 128, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !472, file: !473, line: 28, baseType: !479, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !467, file: !468, line: 19, baseType: !101, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !467, file: !468, line: 20, baseType: !179, size: 64, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !467, file: !468, line: 23, baseType: !254, size: 128, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !467, file: !468, line: 24, baseType: !282, size: 32, offset: 640)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !467, file: !468, line: 29, baseType: !179, size: 64, offset: 704)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !467, file: !468, line: 36, baseType: !486, size: 320, offset: 768)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !487, line: 15, size: 320, elements: !488)
!487 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!488 = !{!489, !490, !491, !492, !493, !494, !495}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !486, file: !487, line: 16, baseType: !194, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !486, file: !487, line: 18, baseType: !106, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !486, file: !487, line: 19, baseType: !106, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !486, file: !487, line: 20, baseType: !106, size: 32, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !486, file: !487, line: 21, baseType: !106, size: 32, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !486, file: !487, line: 22, baseType: !101, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !487, line: 23, baseType: !101, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !294, file: !295, line: 138, baseType: !497, size: 64, offset: 1152)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !283, line: 18, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !294, file: !295, line: 139, baseType: !500, size: 64, offset: 1216)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !502, line: 16, flags: DIFlagFwdDecl)
!502 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!503 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !294, file: !295, line: 140, baseType: !504, size: 64, offset: 1280)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !295, line: 25, size: 64, elements: !506)
!506 = !{!507, !508, !509}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !505, file: !295, line: 26, baseType: !157, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !505, file: !295, line: 27, baseType: !106, size: 32, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !505, file: !295, line: 28, baseType: !510, offset: 64)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, elements: !278)
!511 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !295, line: 142, baseType: !512, size: 128, offset: 1344)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !294, file: !295, line: 142, size: 128, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !512, file: !295, line: 143, baseType: !106, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !512, file: !295, line: 144, baseType: !127, size: 128, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !115, file: !15, line: 1013, baseType: !517, size: 256, offset: 960)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !15, line: 970, size: 256, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !524}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !517, file: !15, line: 971, baseType: !101, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !517, file: !15, line: 972, baseType: !7, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !517, file: !15, line: 973, baseType: !7, size: 32, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !517, file: !15, line: 974, baseType: !7, size: 32, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !517, file: !15, line: 975, baseType: !7, size: 32, offset: 160)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !517, file: !15, line: 976, baseType: !207, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !115, file: !15, line: 1014, baseType: !526, size: 128, offset: 1216)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !527, line: 8, size: 128, elements: !528)
!527 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!528 = !{!529, !3413}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !526, file: !527, line: 9, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !532, line: 70, size: 256, elements: !533)
!532 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!533 = !{!534, !3410, !3411, !3412}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !531, file: !532, line: 71, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !537, line: 82, size: 1536, elements: !538)
!537 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!538 = !{!539, !540, !550, !558, !559, !574, !3377, !3379, !3392, !3393, !3394, !3395, !3396, !3402, !3403, !3404}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !536, file: !537, line: 84, baseType: !7, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !536, file: !537, line: 85, baseType: !541, size: 32, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !542, line: 275, baseType: !543)
!542 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !542, line: 275, size: 32, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !543, file: !542, line: 275, baseType: !546, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !542, line: 69, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !542, line: 64, size: 32, elements: !548)
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !547, file: !542, line: 65, baseType: !7, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !536, file: !537, line: 86, baseType: !551, size: 128, offset: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !552, line: 38, size: 128, elements: !553)
!552 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!553 = !{!554, !556}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !551, file: !552, line: 39, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !551, file: !552, line: 39, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !536, file: !537, line: 87, baseType: !535, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !536, file: !537, line: 88, baseType: !560, size: 128, offset: 256)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !537, line: 49, size: 128, elements: !561)
!561 = !{!562, !571}
!562 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !537, line: 50, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !560, file: !537, line: 50, size: 64, elements: !564)
!564 = !{!565, !570}
!565 = !DIDerivedType(tag: DW_TAG_member, scope: !563, file: !537, line: 51, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !563, file: !537, line: 51, size: 64, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !566, file: !537, line: 52, baseType: !110, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !566, file: !537, line: 52, baseType: !110, size: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !563, file: !537, line: 54, baseType: !319, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !560, file: !537, line: 56, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !536, file: !537, line: 89, baseType: !575, size: 64, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !15, line: 641, size: 4800, elements: !577)
!577 = !{!578, !580, !581, !582, !583, !584, !585, !588, !589, !780, !3188, !3189, !3190, !3191, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3359, !3362, !3363, !3364, !3373, !3374, !3375, !3376}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !576, file: !15, line: 642, baseType: !579, size: 16)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !93, line: 24, baseType: !175)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !576, file: !15, line: 643, baseType: !175, size: 16, offset: 16)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !576, file: !15, line: 644, baseType: !282, size: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !576, file: !15, line: 645, baseType: !201, size: 128, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !576, file: !15, line: 646, baseType: !300, size: 32, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !576, file: !15, line: 647, baseType: !7, size: 32, offset: 224)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !576, file: !15, line: 650, baseType: !586, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !15, line: 607, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !576, file: !15, line: 651, baseType: !586, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !576, file: !15, line: 654, baseType: !590, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !15, line: 1966, size: 2048, align: 512, elements: !593)
!593 = !{!594, !598, !611, !617, !621, !625, !629, !633, !637, !641, !645, !646, !652, !656, !693, !724, !728, !734, !738, !742, !746, !750, !754, !760, !764}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !592, file: !15, line: 1967, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!535, !575, !535, !7}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !592, file: !15, line: 1968, baseType: !599, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!414, !535, !575, !602}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !604, line: 10, size: 128, elements: !605)
!604 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!605 = !{!606, !610}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !603, file: !604, line: 11, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !91}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !603, file: !604, line: 12, baseType: !91, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !592, file: !15, line: 1969, baseType: !612, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!106, !615, !575, !106}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !315, line: 42, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !592, file: !15, line: 1970, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!586, !575, !106, !411}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !592, file: !15, line: 1972, baseType: !622, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!106, !535, !424, !106}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !592, file: !15, line: 1974, baseType: !626, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!106, !615, !575, !535, !579, !411}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !592, file: !15, line: 1976, baseType: !630, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!106, !535, !575, !535}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !592, file: !15, line: 1977, baseType: !634, size: 64, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!106, !575, !535}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !592, file: !15, line: 1978, baseType: !638, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!106, !615, !575, !535, !414}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !592, file: !15, line: 1980, baseType: !642, size: 64, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!106, !615, !575, !535, !579}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !592, file: !15, line: 1982, baseType: !634, size: 64, offset: 640)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !592, file: !15, line: 1983, baseType: !647, size: 64, offset: 704)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!106, !615, !575, !535, !579, !650}
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !93, line: 21, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !93, line: 18, baseType: !110)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !592, file: !15, line: 1985, baseType: !653, size: 64, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!106, !615, !575, !535, !575, !535, !7}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !592, file: !15, line: 1987, baseType: !657, size: 64, offset: 832)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!106, !615, !535, !660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !15, line: 226, size: 640, elements: !662)
!662 = !{!663, !664, !665, !675, !684, !685, !690, !691, !692}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !661, file: !15, line: 227, baseType: !7, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !661, file: !15, line: 228, baseType: !579, size: 16, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !15, line: 241, baseType: !666, size: 32, offset: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !15, line: 241, size: 32, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !666, file: !15, line: 242, baseType: !282, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !666, file: !15, line: 243, baseType: !670, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !671, line: 16, baseType: !672)
!671 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 14, size: 32, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !672, file: !671, line: 15, baseType: !287, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !15, line: 245, baseType: !676, size: 32, offset: 96)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !15, line: 245, size: 32, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !676, file: !15, line: 246, baseType: !300, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !676, file: !15, line: 247, baseType: !680, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !671, line: 20, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 18, size: 32, elements: !682)
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !681, file: !671, line: 19, baseType: !304, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !661, file: !15, line: 249, baseType: !207, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !661, file: !15, line: 250, baseType: !686, size: 128, offset: 192)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !368, line: 13, size: 128, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !686, file: !368, line: 14, baseType: !367, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !686, file: !368, line: 15, baseType: !97, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !661, file: !15, line: 251, baseType: !686, size: 128, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !661, file: !15, line: 252, baseType: !686, size: 128, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !661, file: !15, line: 259, baseType: !114, size: 64, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !592, file: !15, line: 1988, baseType: !694, size: 64, offset: 896)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!106, !615, !697, !699, !110, !7}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !701, line: 22, size: 1280, elements: !702)
!701 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !700, file: !701, line: 23, baseType: !110, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !700, file: !701, line: 24, baseType: !579, size: 16, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !700, file: !701, line: 25, baseType: !7, size: 32, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !700, file: !701, line: 26, baseType: !375, size: 32, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !700, file: !701, line: 27, baseType: !319, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !700, file: !701, line: 28, baseType: !319, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !700, file: !701, line: 41, baseType: !319, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !700, file: !701, line: 42, baseType: !650, size: 32, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !700, file: !701, line: 43, baseType: !650, size: 32, offset: 352)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !700, file: !701, line: 44, baseType: !282, size: 32, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !700, file: !701, line: 45, baseType: !300, size: 32, offset: 416)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !700, file: !701, line: 46, baseType: !207, size: 64, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !700, file: !701, line: 47, baseType: !686, size: 128, offset: 512)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !700, file: !701, line: 48, baseType: !686, size: 128, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !700, file: !701, line: 49, baseType: !686, size: 128, offset: 768)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !700, file: !701, line: 50, baseType: !686, size: 128, offset: 896)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !700, file: !701, line: 51, baseType: !319, size: 64, offset: 1024)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !700, file: !701, line: 52, baseType: !319, size: 64, offset: 1088)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !700, file: !701, line: 53, baseType: !110, size: 32, offset: 1152)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !700, file: !701, line: 54, baseType: !110, size: 32, offset: 1184)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !700, file: !701, line: 55, baseType: !319, size: 64, offset: 1216)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !592, file: !15, line: 1990, baseType: !725, size: 64, offset: 960)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!92, !535, !424, !98}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !592, file: !15, line: 1991, baseType: !729, size: 64, offset: 1024)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!106, !575, !732, !319, !319}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !15, line: 55, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !592, file: !15, line: 1993, baseType: !735, size: 64, offset: 1088)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!106, !575, !106}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !592, file: !15, line: 1994, baseType: !739, size: 64, offset: 1152)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!106, !575, !535, !114, !7, !579}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !592, file: !15, line: 1997, baseType: !743, size: 64, offset: 1216)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!106, !615, !575, !114, !579}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !592, file: !15, line: 1999, baseType: !747, size: 64, offset: 1280)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!586, !615, !535, !106}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !592, file: !15, line: 2001, baseType: !751, size: 64, offset: 1344)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!106, !615, !535, !586, !106}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !592, file: !15, line: 2003, baseType: !755, size: 64, offset: 1408)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!106, !615, !535, !758}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !15, line: 76, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !592, file: !15, line: 2005, baseType: !761, size: 64, offset: 1472)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!106, !535, !758}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !592, file: !15, line: 2006, baseType: !765, size: 64, offset: 1536)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!768, !575}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !15, line: 3192, size: 192, elements: !770)
!770 = !{!771, !779}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !769, file: !15, line: 3193, baseType: !772, size: 128)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !773, line: 296, size: 128, elements: !774)
!773 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!774 = !{!775, !776, !778}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !772, file: !773, line: 297, baseType: !137, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !772, file: !773, line: 299, baseType: !777, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !93, line: 154, baseType: !7)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !772, file: !773, line: 300, baseType: !91, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !769, file: !15, line: 3194, baseType: !110, size: 32, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !576, file: !15, line: 655, baseType: !781, size: 64, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !15, line: 1190, size: 10752, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !831, !968, !1008, !1091, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1108, !1112, !1113, !1116, !1119, !1122, !1125, !1126, !1127, !1168, !3061, !3062, !3063, !3064, !3065, !3066, !3069, !3071, !3078, !3079, !3080, !3081, !3140, !3155, !3156, !3157, !3158, !3159, !3162, !3163, !3164, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !782, file: !15, line: 1191, baseType: !201, size: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !782, file: !15, line: 1192, baseType: !650, size: 32, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !782, file: !15, line: 1193, baseType: !167, size: 8, offset: 160)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !782, file: !15, line: 1194, baseType: !101, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !782, file: !15, line: 1195, baseType: !207, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !782, file: !15, line: 1196, baseType: !790, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !15, line: 2366, size: 576, elements: !792)
!792 = !{!793, !794, !795, !801, !805, !809, !813, !817, !818, !819, !823, !824, !825, !827, !828, !829, !830}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !791, file: !15, line: 2367, baseType: !414, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !791, file: !15, line: 2368, baseType: !106, size: 32, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !791, file: !15, line: 2376, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!106, !799}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !532, line: 21, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !791, file: !15, line: 2377, baseType: !802, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !804)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !15, line: 75, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !791, file: !15, line: 2378, baseType: !806, size: 64, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!535, !790, !106, !414, !91}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !791, file: !15, line: 2380, baseType: !810, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !781}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !791, file: !15, line: 2381, baseType: !814, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !816, line: 103, flags: DIFlagFwdDecl)
!816 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!817 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !791, file: !15, line: 2382, baseType: !790, size: 64, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !791, file: !15, line: 2383, baseType: !250, size: 64, offset: 512)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !791, file: !15, line: 2385, baseType: !820, offset: 576)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !821, line: 206, elements: !822)
!821 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!822 = !{}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !791, file: !15, line: 2386, baseType: !820, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !791, file: !15, line: 2387, baseType: !820, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !791, file: !15, line: 2388, baseType: !826, offset: 576)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, elements: !233)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !791, file: !15, line: 2390, baseType: !820, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !791, file: !15, line: 2391, baseType: !820, offset: 576)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !791, file: !15, line: 2392, baseType: !820, offset: 576)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !791, file: !15, line: 2393, baseType: !820, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !782, file: !15, line: 1197, baseType: !832, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !15, line: 2057, size: 1664, elements: !835)
!835 = !{!836, !840, !844, !845, !849, !855, !859, !860, !861, !865, !869, !873, !874, !875, !881, !885, !886, !893, !894, !895, !896, !900, !904, !951, !966, !967}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !834, file: !15, line: 2058, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!575, !781}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !834, file: !15, line: 2059, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !575}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !834, file: !15, line: 2060, baseType: !841, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !834, file: !15, line: 2062, baseType: !846, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !575, !106}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !834, file: !15, line: 2063, baseType: !850, size: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!106, !575, !853}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !15, line: 309, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !834, file: !15, line: 2064, baseType: !856, size: 64, offset: 320)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!106, !575}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !834, file: !15, line: 2065, baseType: !841, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !834, file: !15, line: 2066, baseType: !810, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !834, file: !15, line: 2067, baseType: !862, size: 64, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!106, !781, !106}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !834, file: !15, line: 2068, baseType: !866, size: 64, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!106, !781, !14}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !834, file: !15, line: 2069, baseType: !870, size: 64, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!106, !781}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !834, file: !15, line: 2070, baseType: !866, size: 64, offset: 704)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !834, file: !15, line: 2071, baseType: !870, size: 64, offset: 768)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !834, file: !15, line: 2072, baseType: !876, size: 64, offset: 832)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!106, !535, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !15, line: 62, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !834, file: !15, line: 2073, baseType: !882, size: 64, offset: 896)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!106, !781, !107, !424}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !834, file: !15, line: 2074, baseType: !810, size: 64, offset: 960)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !834, file: !15, line: 2076, baseType: !887, size: 64, offset: 1024)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!106, !890, !535}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !892, line: 66, flags: DIFlagFwdDecl)
!892 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!893 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !834, file: !15, line: 2077, baseType: !887, size: 64, offset: 1088)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !834, file: !15, line: 2078, baseType: !887, size: 64, offset: 1152)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !834, file: !15, line: 2079, baseType: !887, size: 64, offset: 1216)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !834, file: !15, line: 2081, baseType: !897, size: 64, offset: 1280)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!92, !781, !106, !424, !98, !207}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !834, file: !15, line: 2082, baseType: !901, size: 64, offset: 1344)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!92, !781, !106, !414, !98, !207}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !834, file: !15, line: 2083, baseType: !905, size: 64, offset: 1408)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!908, !575}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !20, line: 296, size: 1664, elements: !911)
!911 = !{!912, !913, !914, !915, !916, !917, !918, !919, !920, !936, !937, !938}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !910, file: !20, line: 297, baseType: !254, size: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !910, file: !20, line: 298, baseType: !201, size: 128, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !910, file: !20, line: 299, baseType: !201, size: 128, offset: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !910, file: !20, line: 300, baseType: !201, size: 128, offset: 384)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !910, file: !20, line: 301, baseType: !189, size: 256, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !910, file: !20, line: 302, baseType: !137, size: 32, offset: 768)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !910, file: !20, line: 303, baseType: !157, size: 32, offset: 800)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !910, file: !20, line: 304, baseType: !781, size: 64, offset: 832)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !910, file: !20, line: 305, baseType: !921, size: 64, offset: 896)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !20, line: 68, size: 64, elements: !922)
!922 = !{!923, !935}
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !20, line: 69, baseType: !924, size: 32)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !921, file: !20, line: 69, size: 32, elements: !925)
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !924, file: !20, line: 70, baseType: !282, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !924, file: !20, line: 71, baseType: !300, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !924, file: !20, line: 72, baseType: !929, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !930, line: 24, baseType: !931)
!930 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !930, line: 22, size: 32, elements: !932)
!932 = !{!933}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !931, file: !930, line: 23, baseType: !934, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !930, line: 20, baseType: !288)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !921, file: !20, line: 74, baseType: !19, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !910, file: !20, line: 306, baseType: !207, size: 64, offset: 960)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !910, file: !20, line: 307, baseType: !101, size: 64, offset: 1024)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !910, file: !20, line: 308, baseType: !939, size: 576, offset: 1088)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !20, line: 205, size: 576, elements: !940)
!940 = !{!941, !943, !944, !945, !946, !947, !948, !949, !950}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !939, file: !20, line: 206, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !20, line: 66, baseType: !187)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !939, file: !20, line: 207, baseType: !942, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !939, file: !20, line: 208, baseType: !942, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !939, file: !20, line: 209, baseType: !942, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !939, file: !20, line: 210, baseType: !942, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !939, file: !20, line: 211, baseType: !942, size: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !939, file: !20, line: 212, baseType: !942, size: 64, offset: 384)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !939, file: !20, line: 213, baseType: !367, size: 64, offset: 448)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !939, file: !20, line: 214, baseType: !367, size: 64, offset: 512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !834, file: !15, line: 2085, baseType: !952, size: 64, offset: 1472)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!97, !781, !955}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !957, line: 15, size: 256, elements: !958)
!957 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!958 = !{!959, !960, !961, !962, !963}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !956, file: !957, line: 16, baseType: !777, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !956, file: !957, line: 19, baseType: !106, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !956, file: !957, line: 26, baseType: !101, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !956, file: !957, line: 33, baseType: !101, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !956, file: !957, line: 36, baseType: !964, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !957, line: 36, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !834, file: !15, line: 2087, baseType: !952, size: 64, offset: 1536)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !834, file: !15, line: 2089, baseType: !810, size: 64, offset: 1600)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !782, file: !15, line: 1198, baseType: !969, size: 64, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !20, line: 324, size: 704, elements: !972)
!972 = !{!973, !977, !981, !985, !986, !987, !988, !989, !994, !999, !1003}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !971, file: !20, line: 325, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!106, !909}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !971, file: !20, line: 326, baseType: !978, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!909, !781, !106}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !971, file: !20, line: 327, baseType: !982, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !909}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !971, file: !20, line: 328, baseType: !974, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !971, file: !20, line: 329, baseType: !974, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !971, file: !20, line: 330, baseType: !974, size: 64, offset: 320)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !971, file: !20, line: 331, baseType: !862, size: 64, offset: 384)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !971, file: !20, line: 334, baseType: !990, size: 64, offset: 448)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!993, !575}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !971, file: !20, line: 335, baseType: !995, size: 64, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!106, !575, !998}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !971, file: !20, line: 337, baseType: !1000, size: 64, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!106, !575, !993}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !971, file: !20, line: 339, baseType: !1004, size: 64, offset: 640)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!106, !781, !1007}
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !782, file: !15, line: 1199, baseType: !1009, size: 64, offset: 512)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !20, line: 430, size: 704, elements: !1012)
!1012 = !{!1013, !1017, !1018, !1022, !1023, !1024, !1039, !1062, !1066, !1067, !1090}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1011, file: !20, line: 431, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!106, !781, !106, !106, !697}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1011, file: !20, line: 432, baseType: !862, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1011, file: !20, line: 433, baseType: !1019, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!106, !781, !7}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1011, file: !20, line: 434, baseType: !1019, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1011, file: !20, line: 435, baseType: !862, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1011, file: !20, line: 436, baseType: !1025, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!106, !781, !106, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !20, line: 417, size: 256, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1029, file: !20, line: 418, baseType: !106, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1029, file: !20, line: 419, baseType: !7, size: 32, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1029, file: !20, line: 420, baseType: !7, size: 32, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1029, file: !20, line: 422, baseType: !7, size: 32, offset: 96)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1029, file: !20, line: 423, baseType: !7, size: 32, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1029, file: !20, line: 424, baseType: !7, size: 32, offset: 160)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1029, file: !20, line: 425, baseType: !7, size: 32, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1029, file: !20, line: 426, baseType: !7, size: 32, offset: 224)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1011, file: !20, line: 437, baseType: !1040, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!106, !781, !921, !1043}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !20, line: 345, size: 960, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1044, file: !20, line: 346, baseType: !106, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1044, file: !20, line: 347, baseType: !319, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1044, file: !20, line: 348, baseType: !319, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1044, file: !20, line: 349, baseType: !319, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1044, file: !20, line: 350, baseType: !319, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1044, file: !20, line: 351, baseType: !319, size: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1044, file: !20, line: 352, baseType: !319, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1044, file: !20, line: 353, baseType: !185, size: 64, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1044, file: !20, line: 355, baseType: !185, size: 64, offset: 512)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1044, file: !20, line: 356, baseType: !106, size: 32, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1044, file: !20, line: 357, baseType: !106, size: 32, offset: 608)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1044, file: !20, line: 358, baseType: !319, size: 64, offset: 640)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1044, file: !20, line: 359, baseType: !319, size: 64, offset: 704)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1044, file: !20, line: 360, baseType: !319, size: 64, offset: 768)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1044, file: !20, line: 361, baseType: !185, size: 64, offset: 832)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1044, file: !20, line: 362, baseType: !106, size: 32, offset: 896)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1011, file: !20, line: 438, baseType: !1063, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!106, !781, !1007, !1043}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1011, file: !20, line: 440, baseType: !1040, size: 64, offset: 512)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1011, file: !20, line: 441, baseType: !1068, size: 64, offset: 576)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!106, !781, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !20, line: 411, size: 1408, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1072, file: !20, line: 412, baseType: !7, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1072, file: !20, line: 413, baseType: !1076, size: 1344, offset: 64)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1077, size: 1344, elements: !233)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !20, line: 397, size: 448, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1089}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !20, line: 398, baseType: !7, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1077, file: !20, line: 399, baseType: !7, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1077, file: !20, line: 401, baseType: !7, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1077, file: !20, line: 402, baseType: !7, size: 32, offset: 96)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1077, file: !20, line: 403, baseType: !7, size: 32, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1077, file: !20, line: 404, baseType: !7, size: 32, offset: 160)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1077, file: !20, line: 405, baseType: !7, size: 32, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1077, file: !20, line: 406, baseType: !321, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1077, file: !20, line: 407, baseType: !1088, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !93, line: 132, baseType: !319)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1077, file: !20, line: 408, baseType: !1088, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1011, file: !20, line: 442, baseType: !1019, size: 64, offset: 640)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !782, file: !15, line: 1200, baseType: !1092, size: 64, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !15, line: 54, flags: DIFlagFwdDecl)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !782, file: !15, line: 1201, baseType: !101, size: 64, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !782, file: !15, line: 1202, baseType: !101, size: 64, offset: 704)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !782, file: !15, line: 1203, baseType: !101, size: 64, offset: 768)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !782, file: !15, line: 1204, baseType: !535, size: 64, offset: 832)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !782, file: !15, line: 1205, baseType: !351, size: 320, offset: 896)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !782, file: !15, line: 1206, baseType: !106, size: 32, offset: 1216)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !782, file: !15, line: 1207, baseType: !157, size: 32, offset: 1248)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !782, file: !15, line: 1209, baseType: !91, size: 64, offset: 1280)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !782, file: !15, line: 1211, baseType: !1104, size: 64, offset: 1344)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !15, line: 1211, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !782, file: !15, line: 1223, baseType: !1109, size: 64, offset: 1408)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !552, line: 34, size: 64, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1109, file: !552, line: 35, baseType: !555, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !782, file: !15, line: 1224, baseType: !201, size: 128, offset: 1472)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !782, file: !15, line: 1225, baseType: !1114, size: 64, offset: 1600)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !15, line: 1225, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !782, file: !15, line: 1226, baseType: !1117, size: 64, offset: 1664)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !15, line: 1226, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !782, file: !15, line: 1227, baseType: !1120, size: 64, offset: 1728)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !15, line: 50, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !782, file: !15, line: 1228, baseType: !1123, size: 64, offset: 1792)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !15, line: 1228, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !782, file: !15, line: 1229, baseType: !254, size: 128, offset: 1856)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !782, file: !15, line: 1230, baseType: !7, size: 32, offset: 1984)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !782, file: !15, line: 1231, baseType: !1128, size: 2496, offset: 2048)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !20, line: 521, size: 2496, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1134, !1166}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1128, file: !20, line: 522, baseType: !7, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1128, file: !20, line: 523, baseType: !351, size: 320, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1128, file: !20, line: 524, baseType: !1133, size: 192, offset: 384)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 192, elements: !233)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1128, file: !20, line: 525, baseType: !1135, size: 1728, offset: 576)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 1728, elements: !233)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !20, line: 222, size: 576, elements: !1137)
!1137 = !{!1138, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1136, file: !20, line: 223, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !20, line: 445, size: 256, elements: !1141)
!1141 = !{!1142, !1143, !1156, !1157}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1140, file: !20, line: 446, baseType: !106, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1140, file: !20, line: 447, baseType: !1144, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !20, line: 312, size: 512, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1146, file: !20, line: 313, baseType: !862, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1146, file: !20, line: 314, baseType: !862, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1146, file: !20, line: 315, baseType: !862, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1146, file: !20, line: 316, baseType: !862, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1146, file: !20, line: 317, baseType: !974, size: 64, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1146, file: !20, line: 318, baseType: !974, size: 64, offset: 320)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1146, file: !20, line: 319, baseType: !974, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1146, file: !20, line: 320, baseType: !1004, size: 64, offset: 448)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1140, file: !20, line: 448, baseType: !814, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1140, file: !20, line: 449, baseType: !1139, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1136, file: !20, line: 224, baseType: !106, size: 32, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1136, file: !20, line: 226, baseType: !201, size: 128, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1136, file: !20, line: 227, baseType: !101, size: 64, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1136, file: !20, line: 228, baseType: !7, size: 32, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1136, file: !20, line: 229, baseType: !7, size: 32, offset: 352)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1136, file: !20, line: 230, baseType: !942, size: 64, offset: 384)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1136, file: !20, line: 231, baseType: !942, size: 64, offset: 448)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1136, file: !20, line: 232, baseType: !91, size: 64, offset: 512)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1128, file: !20, line: 526, baseType: !1167, size: 192, offset: 2304)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1144, size: 192, elements: !233)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !782, file: !15, line: 1233, baseType: !1169, size: 2368, offset: 4544)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !15, line: 1184, size: 2368, elements: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1169, file: !15, line: 1185, baseType: !175, size: 16)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1169, file: !15, line: 1186, baseType: !175, size: 16, offset: 16)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1169, file: !15, line: 1187, baseType: !1174, size: 2304, offset: 64)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1175, size: 2304, elements: !233)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1176, line: 12, size: 768, elements: !1177)
!1176 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1177 = !{!1178, !1186, !1188, !3059, !3060}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1175, file: !1176, line: 13, baseType: !1179, size: 384)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1180, line: 17, size: 384, elements: !1181)
!1180 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1181 = !{!1182, !1183, !1184, !1185}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1179, file: !1180, line: 18, baseType: !106, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1179, file: !1180, line: 19, baseType: !106, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1179, file: !1180, line: 20, baseType: !263, size: 192, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1179, file: !1180, line: 22, baseType: !127, size: 128, align: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1175, file: !1176, line: 14, baseType: !1187, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1175, file: !1176, line: 15, baseType: !1189, size: 64, offset: 448)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1190, line: 16, size: 64, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1191 = !{!1192}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1189, file: !1190, line: 17, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !892, line: 746, size: 58368, elements: !1195)
!1195 = !{!1196, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1276, !1287, !1382, !1386, !1389, !1420, !1421, !1422, !1423, !1434, !1436, !1437, !1438, !1439, !1440, !1441, !1452, !1453, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1470, !1471, !1478, !1479, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1703, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1718, !1719, !1720, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1762, !1768, !1769, !1770, !1771, !1772, !1776, !1779, !1786, !1791, !1803, !1806, !1809, !1812, !1952, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1994, !1995, !1996, !2005, !2013, !2014, !2015, !2016, !2017, !2022, !2023, !2024, !2027, !2028, !2031, !2034, !2037, !2045, !2048, !2049, !2135, !2136, !2137, !2138, !2139, !2145, !2146, !2147, !2148, !2151, !2152, !2155, !2158, !2159, !2162, !2163, !2164, !2167, !2168, !2169, !2172, !2173, !2174, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2206, !2209, !2701, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2713, !2785, !2787, !2788, !2789, !2790, !2791, !2803, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2834, !2835, !2836}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1194, file: !892, line: 752, baseType: !1197, size: 192)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1198, line: 56, size: 192, elements: !1199)
!1198 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1199 = !{!1200, !1201, !1202, !1203}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1197, file: !1198, line: 57, baseType: !101, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1197, file: !1198, line: 58, baseType: !101, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1197, file: !1198, line: 59, baseType: !110, size: 32, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1197, file: !1198, line: 61, baseType: !110, size: 32, offset: 160)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1194, file: !892, line: 754, baseType: !7, size: 32, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1194, file: !892, line: 767, baseType: !91, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1194, file: !892, line: 768, baseType: !241, size: 32, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1194, file: !892, line: 770, baseType: !7, size: 32, offset: 352)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1194, file: !892, line: 771, baseType: !7, size: 32, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1194, file: !892, line: 774, baseType: !106, size: 32, offset: 416)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1194, file: !892, line: 775, baseType: !1211, size: 128, offset: 448)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1212, line: 58, size: 128, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1213 = !{!1214, !1215, !1220, !1221}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1211, file: !1212, line: 59, baseType: !121, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !1212, line: 60, baseType: !1216, size: 32, offset: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !1212, line: 60, size: 32, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1216, file: !1212, line: 61, baseType: !7, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1216, file: !1212, line: 62, baseType: !157, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1211, file: !1212, line: 65, baseType: !173, size: 16, offset: 96)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1211, file: !1212, line: 65, baseType: !173, size: 16, offset: 112)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1194, file: !892, line: 776, baseType: !7, size: 32, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1194, file: !892, line: 777, baseType: !101, size: 64, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1194, file: !892, line: 778, baseType: !1193, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1194, file: !892, line: 787, baseType: !106, size: 32, offset: 768)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1194, file: !892, line: 788, baseType: !106, size: 32, offset: 800)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1194, file: !892, line: 790, baseType: !106, size: 32, offset: 832)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1194, file: !892, line: 792, baseType: !106, size: 32, offset: 864)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1194, file: !892, line: 793, baseType: !106, size: 32, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1194, file: !892, line: 794, baseType: !106, size: 32, offset: 928)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1194, file: !892, line: 795, baseType: !7, size: 32, offset: 960)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1194, file: !892, line: 797, baseType: !1233, size: 2048, offset: 1024)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !892, line: 551, size: 2048, elements: !1234)
!1234 = !{!1235, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1255, !1258, !1259, !1260}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1233, file: !892, line: 553, baseType: !1236, size: 128)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !892, line: 411, size: 128, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1236, file: !892, line: 412, baseType: !101, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1236, file: !892, line: 413, baseType: !110, size: 32, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1233, file: !892, line: 554, baseType: !343, size: 192, align: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1233, file: !892, line: 555, baseType: !319, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1233, file: !892, line: 556, baseType: !319, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1233, file: !892, line: 558, baseType: !201, size: 128, offset: 448)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1233, file: !892, line: 559, baseType: !7, size: 32, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1233, file: !892, line: 561, baseType: !319, size: 64, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1233, file: !892, line: 562, baseType: !319, size: 64, offset: 704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1233, file: !892, line: 563, baseType: !319, size: 64, offset: 768)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1233, file: !892, line: 564, baseType: !319, size: 64, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1233, file: !892, line: 565, baseType: !185, size: 64, offset: 896)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1233, file: !892, line: 566, baseType: !319, size: 64, offset: 960)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1233, file: !892, line: 568, baseType: !319, size: 64, offset: 1024)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1233, file: !892, line: 571, baseType: !106, size: 32, offset: 1088)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1233, file: !892, line: 572, baseType: !1254, size: 64, offset: 1152)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1233, file: !892, line: 574, baseType: !1256, size: 64, offset: 1216)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !892, line: 49, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1233, file: !892, line: 576, baseType: !1256, size: 64, offset: 1280)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1233, file: !892, line: 578, baseType: !101, size: 64, offset: 1344)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1233, file: !892, line: 588, baseType: !1261, size: 512, align: 512, offset: 1536)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !892, line: 497, size: 512, align: 512, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1261, file: !892, line: 498, baseType: !319, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1261, file: !892, line: 499, baseType: !319, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1261, file: !892, line: 500, baseType: !319, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1261, file: !892, line: 501, baseType: !110, size: 32, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1261, file: !892, line: 502, baseType: !110, size: 32, offset: 224)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1261, file: !892, line: 503, baseType: !101, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1261, file: !892, line: 504, baseType: !101, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1261, file: !892, line: 505, baseType: !101, size: 64, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1261, file: !892, line: 506, baseType: !1272, size: 64, align: 64, offset: 448)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !892, line: 445, size: 64, align: 64, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1272, file: !892, line: 446, baseType: !7, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1272, file: !892, line: 447, baseType: !7, size: 32, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1194, file: !892, line: 798, baseType: !1277, size: 384, offset: 3072)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !892, line: 592, size: 384, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1277, file: !892, line: 593, baseType: !201, size: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1277, file: !892, line: 594, baseType: !101, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1277, file: !892, line: 595, baseType: !101, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1277, file: !892, line: 596, baseType: !7, size: 32, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1277, file: !892, line: 597, baseType: !175, size: 16, offset: 288)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1277, file: !892, line: 598, baseType: !175, size: 16, offset: 304)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1277, file: !892, line: 600, baseType: !1286, size: 64, offset: 320)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1194, file: !892, line: 799, baseType: !1288, size: 1792, offset: 3456)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !892, line: 610, size: 1792, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1379, !1380}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1288, file: !892, line: 611, baseType: !343, size: 192, align: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1288, file: !892, line: 618, baseType: !319, size: 64, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1288, file: !892, line: 619, baseType: !319, size: 64, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1288, file: !892, line: 620, baseType: !319, size: 64, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1288, file: !892, line: 621, baseType: !319, size: 64, offset: 384)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1288, file: !892, line: 622, baseType: !319, size: 64, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1288, file: !892, line: 629, baseType: !185, size: 64, offset: 512)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1288, file: !892, line: 630, baseType: !319, size: 64, offset: 576)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1288, file: !892, line: 631, baseType: !7, size: 32, offset: 640)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1288, file: !892, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1288, file: !892, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1288, file: !892, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1288, file: !892, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1288, file: !892, line: 662, baseType: !1304, size: 512, offset: 704)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1305)
!1305 = !{!1306, !1314, !1315, !1320, !1375, !1376, !1377, !1378}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1304, file: !26, line: 119, baseType: !1307, size: 256)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1308, line: 9, size: 256, elements: !1309)
!1308 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1307, file: !1308, line: 10, baseType: !343, size: 192, align: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1307, file: !1308, line: 11, baseType: !1312, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1313, line: 29, baseType: !185)
!1313 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1304, file: !26, line: 120, baseType: !1312, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1304, file: !26, line: 121, baseType: !1316, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!25, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1304, file: !26, line: 122, baseType: !1321, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1323)
!1323 = !{!1324, !1349, !1350, !1353, !1358, !1359, !1370, !1374}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1322, file: !26, line: 160, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 215, size: 4608, align: 512, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1326, file: !26, line: 216, baseType: !194, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1326, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1326, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1326, file: !26, line: 219, baseType: !7, size: 32, offset: 96)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1326, file: !26, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1326, file: !26, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1326, file: !26, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1326, file: !26, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1326, file: !26, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1326, file: !26, line: 226, baseType: !7, size: 32, offset: 160)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1326, file: !26, line: 227, baseType: !175, size: 16, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1326, file: !26, line: 228, baseType: !175, size: 16, offset: 208)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1326, file: !26, line: 229, baseType: !7, size: 32, offset: 224)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1326, file: !26, line: 235, baseType: !1312, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1326, file: !26, line: 236, baseType: !1319, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1326, file: !26, line: 237, baseType: !1312, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1326, file: !26, line: 238, baseType: !1319, size: 64, offset: 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1326, file: !26, line: 239, baseType: !1346, size: 4096, align: 512, offset: 512)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 4096, align: 512, elements: !1347)
!1347 = !{!1348}
!1348 = !DISubrange(count: 8)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1322, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1322, file: !26, line: 162, baseType: !1351, size: 32, offset: 96)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !93, line: 32, baseType: !1352)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !95, line: 96, baseType: !106)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1322, file: !26, line: 163, baseType: !1354, size: 32, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !542, line: 274, baseType: !1355)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !542, line: 274, size: 32, elements: !1356)
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1355, file: !542, line: 274, baseType: !546, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1322, file: !26, line: 164, baseType: !1319, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1322, file: !26, line: 165, baseType: !1360, size: 128, offset: 256)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1308, line: 14, size: 128, elements: !1361)
!1361 = !{!1362}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1360, file: !1308, line: 15, baseType: !1363, size: 128)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !344, line: 26, size: 128, elements: !1364)
!1364 = !{!1365, !1369}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1363, file: !344, line: 27, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !344, line: 12, size: 64, elements: !1367)
!1367 = !{!1368}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1366, file: !344, line: 13, baseType: !348, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1363, file: !344, line: 28, baseType: !348, size: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1322, file: !26, line: 166, baseType: !1371, size: 64, offset: 384)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!1312}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1322, file: !26, line: 167, baseType: !1312, size: 64, offset: 448)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1304, file: !26, line: 123, baseType: !165, size: 8, offset: 448)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1304, file: !26, line: 124, baseType: !165, size: 8, offset: 456)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1304, file: !26, line: 125, baseType: !165, size: 8, offset: 464)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1304, file: !26, line: 126, baseType: !165, size: 8, offset: 472)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1288, file: !892, line: 671, baseType: !1304, size: 512, offset: 1216)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1288, file: !892, line: 679, baseType: !1381, size: 64, offset: 1728)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1194, file: !892, line: 800, baseType: !1383, size: 64, offset: 5248)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !892, line: 800, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1194, file: !892, line: 809, baseType: !1387, size: 64, offset: 5312)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !892, line: 70, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1194, file: !892, line: 825, baseType: !1390, size: 2048, align: 512, offset: 5632)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !892, line: 509, size: 2048, align: 512, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1390, file: !892, line: 511, baseType: !319, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1390, file: !892, line: 512, baseType: !319, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1390, file: !892, line: 513, baseType: !319, size: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1390, file: !892, line: 514, baseType: !319, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1390, file: !892, line: 515, baseType: !319, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1390, file: !892, line: 516, baseType: !319, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1390, file: !892, line: 518, baseType: !319, size: 64, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1390, file: !892, line: 519, baseType: !319, size: 64, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1390, file: !892, line: 520, baseType: !185, size: 64, offset: 512)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1390, file: !892, line: 522, baseType: !319, size: 64, offset: 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1390, file: !892, line: 523, baseType: !319, size: 64, offset: 640)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1390, file: !892, line: 524, baseType: !185, size: 64, offset: 704)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1390, file: !892, line: 526, baseType: !185, size: 64, offset: 768)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1390, file: !892, line: 527, baseType: !319, size: 64, offset: 832)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1390, file: !892, line: 529, baseType: !319, size: 64, offset: 896)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1390, file: !892, line: 530, baseType: !319, size: 64, offset: 960)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1390, file: !892, line: 531, baseType: !319, size: 64, offset: 1024)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1390, file: !892, line: 532, baseType: !319, size: 64, offset: 1088)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1390, file: !892, line: 533, baseType: !319, size: 64, offset: 1152)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1390, file: !892, line: 535, baseType: !319, size: 64, offset: 1216)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1390, file: !892, line: 536, baseType: !319, size: 64, offset: 1280)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1390, file: !892, line: 537, baseType: !319, size: 64, offset: 1344)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1390, file: !892, line: 538, baseType: !319, size: 64, offset: 1408)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1390, file: !892, line: 539, baseType: !319, size: 64, offset: 1472)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1390, file: !892, line: 540, baseType: !319, size: 64, offset: 1536)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1390, file: !892, line: 541, baseType: !319, size: 64, offset: 1600)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1390, file: !892, line: 542, baseType: !319, size: 64, offset: 1664)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1390, file: !892, line: 543, baseType: !319, size: 64, offset: 1728)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1194, file: !892, line: 833, baseType: !7, size: 32, offset: 7680)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1194, file: !892, line: 836, baseType: !7, size: 32, offset: 7712)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1194, file: !892, line: 837, baseType: !106, size: 32, offset: 7744)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1194, file: !892, line: 838, baseType: !1424, size: 64, offset: 7808)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1426)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1427, line: 19, baseType: !1428)
!1427 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1427, line: 19, size: 64, elements: !1429)
!1429 = !{!1430}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1428, file: !1427, line: 19, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !1432)
!1432 = !{!1433}
!1433 = !DISubrange(count: 1)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1194, file: !892, line: 839, baseType: !1435, size: 64, offset: 7872)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1194, file: !892, line: 840, baseType: !1426, size: 64, offset: 7936)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1194, file: !892, line: 841, baseType: !91, size: 64, offset: 8000)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1194, file: !892, line: 843, baseType: !175, size: 16, offset: 8064)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1194, file: !892, line: 845, baseType: !175, size: 16, offset: 8080)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1194, file: !892, line: 848, baseType: !106, size: 32, offset: 8096)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1194, file: !892, line: 849, baseType: !1442, size: 32, offset: 8128)
!1442 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !892, line: 718, size: 32, elements: !1443)
!1443 = !{!1444, !1451}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1442, file: !892, line: 724, baseType: !1445, size: 32)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1442, file: !892, line: 719, size: 32, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1450}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1445, file: !892, line: 720, baseType: !165, size: 8)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1445, file: !892, line: 721, baseType: !165, size: 8, offset: 8)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1445, file: !892, line: 722, baseType: !165, size: 8, offset: 16)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1445, file: !892, line: 723, baseType: !165, size: 8, offset: 24)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1442, file: !892, line: 725, baseType: !110, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1194, file: !892, line: 850, baseType: !201, size: 128, offset: 8192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1194, file: !892, line: 851, baseType: !1454, size: 64, offset: 8320)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !892, line: 60, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1194, file: !892, line: 855, baseType: !101, size: 64, offset: 8384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1194, file: !892, line: 856, baseType: !165, size: 8, offset: 8448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1194, file: !892, line: 857, baseType: !165, size: 8, offset: 8456)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1194, file: !892, line: 858, baseType: !106, size: 32, offset: 8480)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1194, file: !892, line: 859, baseType: !201, size: 128, offset: 8512)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1194, file: !892, line: 860, baseType: !106, size: 32, offset: 8640)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1194, file: !892, line: 861, baseType: !201, size: 128, offset: 8704)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1194, file: !892, line: 873, baseType: !1464, size: 256, offset: 8832)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !892, line: 376, size: 256, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1464, file: !892, line: 381, baseType: !101, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1464, file: !892, line: 384, baseType: !321, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1464, file: !892, line: 389, baseType: !321, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1464, file: !892, line: 392, baseType: !321, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1194, file: !892, line: 875, baseType: !201, size: 128, offset: 9088)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1194, file: !892, line: 877, baseType: !1472, size: 320, offset: 9216)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1473, line: 86, size: 320, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1472, file: !1473, line: 87, baseType: !106, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1472, file: !1473, line: 88, baseType: !201, size: 128, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1472, file: !1473, line: 89, baseType: !201, size: 128, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1194, file: !892, line: 878, baseType: !343, size: 192, align: 64, offset: 9536)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1194, file: !892, line: 881, baseType: !1480, size: 64, offset: 9728)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !52, line: 733, size: 10240, elements: !1482)
!1482 = !{!1483, !1622}
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !52, line: 734, baseType: !1484, size: 10240)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1481, file: !52, line: 734, size: 10240, elements: !1485)
!1485 = !{!1486, !1490, !1503, !1507, !1508, !1509, !1510, !1511, !1512, !1521, !1522, !1523, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1562, !1564, !1567, !1591, !1592, !1593, !1596, !1597, !1598, !1601, !1602, !1603, !1609, !1610}
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !52, line: 739, baseType: !1487, size: 512, align: 512)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1484, file: !52, line: 739, size: 512, align: 512, elements: !1488)
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1487, file: !52, line: 747, baseType: !157, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1484, file: !52, line: 750, baseType: !1491, size: 128, offset: 512)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1492, line: 218, size: 128, elements: !1493)
!1492 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1493 = !{!1494, !1501, !1502}
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1491, file: !1492, line: 219, baseType: !1495, size: 32)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1491, file: !1492, line: 219, size: 32, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1495, file: !1492, line: 220, baseType: !137, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1495, file: !1492, line: 221, baseType: !1499)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1492, line: 197, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1492, line: 197, elements: !822)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1491, file: !1492, line: 223, baseType: !7, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1491, file: !1492, line: 224, baseType: !91, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1484, file: !52, line: 752, baseType: !1504, size: 64, offset: 640)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!101, !114, !101, !101, !101, !101}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1484, file: !52, line: 756, baseType: !101, size: 64, offset: 704)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1484, file: !52, line: 757, baseType: !101, size: 64, offset: 768)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1484, file: !52, line: 760, baseType: !101, size: 64, offset: 832)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1484, file: !52, line: 761, baseType: !101, size: 64, offset: 896)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1484, file: !52, line: 763, baseType: !101, size: 64, offset: 960)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1484, file: !52, line: 764, baseType: !1513, size: 64, offset: 1024)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1515, line: 299, baseType: !1516)
!1515 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1515, line: 299, size: 64, elements: !1517)
!1517 = !{!1518}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1516, file: !1515, line: 299, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1520, line: 18, baseType: !101)
!1520 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1484, file: !52, line: 773, baseType: !157, size: 32, offset: 1088)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1484, file: !52, line: 785, baseType: !157, size: 32, offset: 1120)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1484, file: !52, line: 795, baseType: !1524, size: 64, offset: 1152)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !52, line: 726, size: 128, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1525, file: !52, line: 727, baseType: !319, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1525, file: !52, line: 728, baseType: !106, size: 32, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1484, file: !52, line: 801, baseType: !101, size: 64, offset: 1216)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1484, file: !52, line: 804, baseType: !179, size: 64, offset: 1280)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1484, file: !52, line: 806, baseType: !106, size: 32, offset: 1344)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1484, file: !52, line: 808, baseType: !137, size: 32, offset: 1376)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1484, file: !52, line: 823, baseType: !351, size: 320, offset: 1408)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1484, file: !52, line: 825, baseType: !201, size: 128, offset: 1728)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1484, file: !52, line: 845, baseType: !106, size: 32, offset: 1856)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1484, file: !52, line: 849, baseType: !101, size: 64, offset: 1920)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1484, file: !52, line: 850, baseType: !101, size: 64, offset: 1984)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1484, file: !52, line: 852, baseType: !101, size: 64, offset: 2048)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1484, file: !52, line: 853, baseType: !101, size: 64, offset: 2112)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1484, file: !52, line: 854, baseType: !181, size: 64, offset: 2176)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1484, file: !52, line: 855, baseType: !101, size: 64, offset: 2240)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1484, file: !52, line: 856, baseType: !101, size: 64, offset: 2304)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1484, file: !52, line: 857, baseType: !101, size: 64, offset: 2368)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1484, file: !52, line: 858, baseType: !101, size: 64, offset: 2432)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1484, file: !52, line: 865, baseType: !546, size: 32, offset: 2496)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1484, file: !52, line: 867, baseType: !137, size: 32, offset: 2528)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1484, file: !52, line: 869, baseType: !101, size: 64, offset: 2560)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1484, file: !52, line: 869, baseType: !101, size: 64, offset: 2624)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1484, file: !52, line: 869, baseType: !101, size: 64, offset: 2688)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1484, file: !52, line: 869, baseType: !101, size: 64, offset: 2752)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1484, file: !52, line: 870, baseType: !101, size: 64, offset: 2816)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1484, file: !52, line: 870, baseType: !101, size: 64, offset: 2880)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1484, file: !52, line: 870, baseType: !101, size: 64, offset: 2944)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1484, file: !52, line: 871, baseType: !101, size: 64, offset: 3008)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1484, file: !52, line: 871, baseType: !101, size: 64, offset: 3072)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1484, file: !52, line: 871, baseType: !101, size: 64, offset: 3136)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1484, file: !52, line: 871, baseType: !101, size: 64, offset: 3200)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1484, file: !52, line: 873, baseType: !1559, size: 3328, offset: 3264)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 3328, elements: !1560)
!1560 = !{!1561}
!1561 = !DISubrange(count: 52)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1484, file: !52, line: 875, baseType: !1563, size: 1280, offset: 6592)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 1280, elements: !259)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1484, file: !52, line: 877, baseType: !1565, size: 64, offset: 7872)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !52, line: 877, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1484, file: !52, line: 880, baseType: !1568, size: 1088, offset: 7936)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1569, line: 72, baseType: !1570)
!1569 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1569, line: 23, size: 1088, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1579, !1580, !1581, !1582, !1586, !1587, !1588}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1570, file: !1569, line: 28, baseType: !319, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1570, file: !1569, line: 38, baseType: !181, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1570, file: !1569, line: 40, baseType: !101, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1570, file: !1569, line: 43, baseType: !351, size: 320, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1570, file: !1569, line: 44, baseType: !1577, size: 64, offset: 512)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1569, line: 44, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1570, file: !1569, line: 48, baseType: !101, size: 64, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1570, file: !1569, line: 59, baseType: !189, size: 256, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1570, file: !1569, line: 60, baseType: !91, size: 64, offset: 896)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1570, file: !1569, line: 61, baseType: !1583, size: 64, offset: 960)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1569, line: 61, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1570, file: !1569, line: 63, baseType: !157, size: 32, offset: 1024)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1570, file: !1569, line: 69, baseType: !173, size: 16, offset: 1056)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1570, file: !1569, line: 70, baseType: !1589, size: 16, offset: 1072)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !111, line: 18, baseType: !1590)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !113, line: 23, baseType: !379)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1484, file: !52, line: 882, baseType: !101, size: 64, offset: 9024)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1484, file: !52, line: 885, baseType: !137, size: 32, offset: 9088)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1484, file: !52, line: 886, baseType: !1594, size: 64, offset: 9152)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !52, line: 732, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1484, file: !52, line: 901, baseType: !497, size: 64, offset: 9216)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1484, file: !52, line: 904, baseType: !114, size: 64, offset: 9280)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1484, file: !52, line: 906, baseType: !1599, size: 64, offset: 9344)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !52, line: 906, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1484, file: !52, line: 930, baseType: !157, size: 32, offset: 9408)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1484, file: !52, line: 933, baseType: !157, size: 32, offset: 9440)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1484, file: !52, line: 935, baseType: !1604, size: 64, offset: 9472)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1605)
!1605 = !{!1606}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1604, file: !68, line: 104, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1484, file: !52, line: 940, baseType: !179, size: 64, offset: 9536)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1484, file: !52, line: 942, baseType: !1611, size: 256, offset: 9600)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1612, line: 98, size: 256, elements: !1613)
!1612 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1613 = !{!1614, !1615, !1616}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1611, file: !1612, line: 99, baseType: !179, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1611, file: !1612, line: 100, baseType: !201, size: 128, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1611, file: !1612, line: 101, baseType: !1617, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1612, line: 21, baseType: !1618)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1481, file: !52, line: 986, baseType: !1623, offset: 10240)
!1623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, elements: !278)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1194, file: !892, line: 882, baseType: !1480, size: 64, offset: 9792)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1194, file: !892, line: 884, baseType: !106, size: 32, offset: 9856)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1194, file: !892, line: 885, baseType: !106, size: 32, offset: 9888)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1194, file: !892, line: 886, baseType: !106, size: 32, offset: 9920)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1194, file: !892, line: 888, baseType: !106, size: 32, offset: 9952)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1194, file: !892, line: 890, baseType: !101, size: 64, offset: 9984)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1194, file: !892, line: 893, baseType: !7, size: 32, offset: 10048)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1194, file: !892, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1194, file: !892, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1194, file: !892, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1194, file: !892, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1194, file: !892, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1194, file: !892, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1194, file: !892, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1194, file: !892, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1194, file: !892, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1194, file: !892, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1194, file: !892, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1194, file: !892, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1194, file: !892, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1194, file: !892, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1194, file: !892, line: 969, baseType: !101, size: 64, offset: 10176)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1194, file: !892, line: 971, baseType: !1647, size: 448, offset: 10240)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 448, elements: !1648)
!1648 = !{!1649, !1650, !1655}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1647, file: !31, line: 26, baseType: !101, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1647, file: !31, line: 27, baseType: !1651, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!97, !1654}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !31, line: 28, baseType: !1656, size: 320, offset: 128)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1647, file: !31, line: 28, size: 320, elements: !1657)
!1657 = !{!1658, !1668, !1693}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1656, file: !31, line: 37, baseType: !1659, size: 320)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1656, file: !31, line: 30, size: 320, elements: !1660)
!1660 = !{!1661, !1663, !1664, !1665, !1666, !1667}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1659, file: !31, line: 31, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1659, file: !31, line: 32, baseType: !110, size: 32, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1659, file: !31, line: 33, baseType: !110, size: 32, offset: 96)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1659, file: !31, line: 34, baseType: !110, size: 32, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1659, file: !31, line: 35, baseType: !319, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1659, file: !31, line: 36, baseType: !1662, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1656, file: !31, line: 47, baseType: !1669, size: 192)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1656, file: !31, line: 39, size: 192, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1692}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1669, file: !31, line: 40, baseType: !1351, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1669, file: !31, line: 41, baseType: !30, size: 32, offset: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !31, line: 42, baseType: !1674, size: 64, offset: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !31, line: 42, size: 64, elements: !1675)
!1675 = !{!1676, !1684}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1674, file: !31, line: 43, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1679, line: 7, size: 128, elements: !1680)
!1679 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1680 = !{!1681, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1678, file: !1679, line: 8, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !95, line: 93, baseType: !187)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1678, file: !1679, line: 9, baseType: !187, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1674, file: !31, line: 44, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1687, line: 7, size: 64, elements: !1688)
!1687 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1688 = !{!1689, !1691}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1686, file: !1687, line: 8, baseType: !1690, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1687, line: 5, baseType: !336)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1686, file: !1687, line: 9, baseType: !336, size: 32, offset: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1669, file: !31, line: 46, baseType: !319, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1656, file: !31, line: 55, baseType: !1694, size: 256)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1656, file: !31, line: 49, size: 256, elements: !1695)
!1695 = !{!1696, !1699, !1700, !1701, !1702}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1694, file: !31, line: 50, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !31, line: 14, flags: DIFlagFwdDecl)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1694, file: !31, line: 51, baseType: !106, size: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1694, file: !31, line: 52, baseType: !106, size: 32, offset: 96)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1694, file: !31, line: 53, baseType: !101, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1694, file: !31, line: 54, baseType: !101, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1194, file: !892, line: 973, baseType: !1704, size: 32, offset: 10688)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !93, line: 27, baseType: !1705)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !95, line: 28, baseType: !106)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1194, file: !892, line: 974, baseType: !1704, size: 32, offset: 10720)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1194, file: !892, line: 978, baseType: !101, size: 64, offset: 10752)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1194, file: !892, line: 987, baseType: !1193, size: 64, offset: 10816)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1194, file: !892, line: 990, baseType: !1193, size: 64, offset: 10880)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1194, file: !892, line: 995, baseType: !201, size: 128, offset: 10944)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1194, file: !892, line: 996, baseType: !201, size: 128, offset: 11072)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1194, file: !892, line: 997, baseType: !1193, size: 64, offset: 11200)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1194, file: !892, line: 1005, baseType: !201, size: 128, offset: 11264)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1194, file: !892, line: 1006, baseType: !201, size: 128, offset: 11392)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1194, file: !892, line: 1009, baseType: !237, size: 64, offset: 11520)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1194, file: !892, line: 1010, baseType: !1717, size: 512, offset: 11584)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 512, elements: !259)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1194, file: !892, line: 1011, baseType: !201, size: 128, offset: 12096)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1194, file: !892, line: 1012, baseType: !201, size: 128, offset: 12224)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1194, file: !892, line: 1014, baseType: !1721, size: 64, offset: 12352)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1723, line: 26, size: 256, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1722, file: !1723, line: 27, baseType: !7, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1722, file: !1723, line: 28, baseType: !1727, size: 192, offset: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1728, line: 43, size: 192, elements: !1729)
!1728 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1729 = !{!1730, !1731}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1727, file: !1728, line: 44, baseType: !194, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1727, file: !1728, line: 45, baseType: !201, size: 128, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1194, file: !892, line: 1017, baseType: !107, size: 64, offset: 12416)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1194, file: !892, line: 1020, baseType: !107, size: 64, offset: 12480)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1194, file: !892, line: 1023, baseType: !91, size: 64, offset: 12544)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1194, file: !892, line: 1025, baseType: !319, size: 64, offset: 12608)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1194, file: !892, line: 1026, baseType: !319, size: 64, offset: 12672)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1194, file: !892, line: 1031, baseType: !319, size: 64, offset: 12736)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1194, file: !892, line: 1032, baseType: !1739, size: 192, offset: 12800)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !892, line: 324, size: 192, elements: !1740)
!1740 = !{!1741, !1742, !1743}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1739, file: !892, line: 326, baseType: !319, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1739, file: !892, line: 327, baseType: !319, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1739, file: !892, line: 328, baseType: !194, size: 32, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1194, file: !892, line: 1041, baseType: !101, size: 64, offset: 12992)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1194, file: !892, line: 1042, baseType: !101, size: 64, offset: 13056)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1194, file: !892, line: 1045, baseType: !319, size: 64, offset: 13120)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1194, file: !892, line: 1048, baseType: !319, size: 64, offset: 13184)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1194, file: !892, line: 1051, baseType: !101, size: 64, offset: 13248)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1194, file: !892, line: 1052, baseType: !101, size: 64, offset: 13312)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1194, file: !892, line: 1055, baseType: !1751, size: 640, offset: 13376)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1752, line: 132, size: 640, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1753 = !{!1754, !1760, !1761}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1751, file: !1752, line: 133, baseType: !1755, size: 576)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1756, size: 576, elements: !233)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1752, line: 117, size: 192, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1756, file: !1752, line: 118, baseType: !319, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1756, file: !1752, line: 119, baseType: !1360, size: 128, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1751, file: !1752, line: 134, baseType: !7, size: 32, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1751, file: !1752, line: 135, baseType: !7, size: 32, offset: 608)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1194, file: !892, line: 1058, baseType: !1763, size: 448, offset: 14016)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1752, line: 144, size: 448, elements: !1764)
!1764 = !{!1765, !1766, !1767}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1763, file: !1752, line: 145, baseType: !127, size: 128, align: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1763, file: !1752, line: 146, baseType: !189, size: 256, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1763, file: !1752, line: 147, baseType: !7, size: 32, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1194, file: !892, line: 1064, baseType: !292, size: 64, offset: 14464)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1194, file: !892, line: 1067, baseType: !292, size: 64, offset: 14528)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1194, file: !892, line: 1070, baseType: !292, size: 64, offset: 14592)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1194, file: !892, line: 1074, baseType: !328, size: 64, offset: 14656)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1194, file: !892, line: 1084, baseType: !1773, size: 128, offset: 14720)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 128, elements: !1774)
!1774 = !{!1775}
!1775 = !DISubrange(count: 16)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1194, file: !892, line: 1086, baseType: !1777, size: 64, offset: 14848)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !892, line: 55, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1194, file: !892, line: 1089, baseType: !1780, size: 64, offset: 14912)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1781, line: 12, size: 64, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1782 = !{!1783}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1780, file: !1781, line: 13, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1781, line: 8, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1194, file: !892, line: 1090, baseType: !1787, size: 128, offset: 14976)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1788, line: 13, size: 128, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1787, file: !1788, line: 14, baseType: !201, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1194, file: !892, line: 1097, baseType: !1792, size: 64, offset: 15104)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1794, line: 9, size: 448, elements: !1795)
!1794 = !DIFile(filename: "./include/linux/fs_struct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "974310bb6a29a53024699f0fa1ab259a")
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1801, !1802}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !1793, file: !1794, line: 10, baseType: !106, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1793, file: !1794, line: 11, baseType: !137, size: 32, offset: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1793, file: !1794, line: 12, baseType: !541, size: 32, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "umask", scope: !1793, file: !1794, line: 13, baseType: !106, size: 32, offset: 96)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "in_exec", scope: !1793, file: !1794, line: 14, baseType: !106, size: 32, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1793, file: !1794, line: 15, baseType: !526, size: 128, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !1793, file: !1794, line: 15, baseType: !526, size: 128, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1194, file: !892, line: 1100, baseType: !1804, size: 64, offset: 15168)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !892, line: 1100, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1194, file: !892, line: 1103, baseType: !1807, size: 64, offset: 15232)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !892, line: 53, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1194, file: !892, line: 1107, baseType: !1810, size: 64, offset: 15296)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !892, line: 56, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1194, file: !892, line: 1110, baseType: !1813, size: 64, offset: 15360)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1815, line: 93, size: 8768, elements: !1816)
!1815 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1816 = !{!1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1866, !1875, !1876, !1878, !1879, !1880, !1883, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1921, !1922, !1929, !1939, !1942, !1943, !1946, !1947, !1948, !1949, !1950, !1951}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1814, file: !1815, line: 94, baseType: !241, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1814, file: !1815, line: 95, baseType: !157, size: 32, offset: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1814, file: !1815, line: 96, baseType: !106, size: 32, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1814, file: !1815, line: 97, baseType: !106, size: 32, offset: 96)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1814, file: !1815, line: 98, baseType: !201, size: 128, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1814, file: !1815, line: 100, baseType: !263, size: 192, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1814, file: !1815, line: 103, baseType: !1193, size: 64, offset: 448)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1814, file: !1815, line: 106, baseType: !1825, size: 192, offset: 512)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !502, line: 32, size: 192, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1825, file: !502, line: 33, baseType: !201, size: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1825, file: !502, line: 34, baseType: !1829, size: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1830, line: 25, baseType: !1831)
!1830 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1830, line: 23, size: 64, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1831, file: !1830, line: 24, baseType: !1431, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1814, file: !1815, line: 109, baseType: !250, size: 64, offset: 704)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1814, file: !1815, line: 112, baseType: !106, size: 32, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1814, file: !1815, line: 114, baseType: !106, size: 32, offset: 800)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1814, file: !1815, line: 115, baseType: !1193, size: 64, offset: 832)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1814, file: !1815, line: 118, baseType: !106, size: 32, offset: 896)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1814, file: !1815, line: 119, baseType: !7, size: 32, offset: 928)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1814, file: !1815, line: 121, baseType: !1841, size: 64, offset: 960)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1815, line: 80, size: 448, elements: !1843)
!1843 = !{!1844, !1845, !1851}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1842, file: !1815, line: 81, baseType: !157, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1842, file: !1815, line: 82, baseType: !1846, size: 128, offset: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1815, line: 75, size: 128, elements: !1847)
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1846, file: !1815, line: 76, baseType: !1193, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1846, file: !1815, line: 77, baseType: !1850, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1842, file: !1815, line: 83, baseType: !1722, size: 256, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1814, file: !1815, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1814, file: !1815, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1814, file: !1815, line: 138, baseType: !7, size: 32, offset: 1056)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1814, file: !1815, line: 139, baseType: !201, size: 128, offset: 1088)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1814, file: !1815, line: 142, baseType: !1304, size: 512, offset: 1216)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1814, file: !1815, line: 143, baseType: !1312, size: 64, offset: 1728)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1814, file: !1815, line: 150, baseType: !1859, size: 256, offset: 1792)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1860, size: 256, elements: !1864)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1815, line: 38, size: 128, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1860, file: !1815, line: 39, baseType: !319, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1860, file: !1815, line: 40, baseType: !319, size: 64, offset: 64)
!1864 = !{!1865}
!1865 = !DISubrange(count: 2)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1814, file: !1815, line: 156, baseType: !1867, size: 192, offset: 2048)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1815, line: 66, size: 192, elements: !1868)
!1868 = !{!1869}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1867, file: !1815, line: 67, baseType: !1870, size: 192)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1815, line: 47, size: 192, elements: !1871)
!1871 = !{!1872, !1873, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1870, file: !1815, line: 48, baseType: !181, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1870, file: !1815, line: 49, baseType: !181, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1870, file: !1815, line: 50, baseType: !181, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1814, file: !1815, line: 160, baseType: !1751, size: 640, offset: 2240)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1814, file: !1815, line: 163, baseType: !1877, size: 256, offset: 2880)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 256, elements: !259)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1814, file: !1815, line: 169, baseType: !237, size: 64, offset: 3136)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1814, file: !1815, line: 172, baseType: !106, size: 32, offset: 3200)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1814, file: !1815, line: 174, baseType: !1881, size: 64, offset: 3264)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1815, line: 174, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1814, file: !1815, line: 185, baseType: !1884, size: 64, offset: 3328)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !542, line: 860, baseType: !1885)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 853, size: 64, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1885, file: !542, line: 858, baseType: !541, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1885, file: !542, line: 859, baseType: !137, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1814, file: !1815, line: 186, baseType: !319, size: 64, offset: 3392)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1814, file: !1815, line: 186, baseType: !319, size: 64, offset: 3456)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1814, file: !1815, line: 186, baseType: !319, size: 64, offset: 3520)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1814, file: !1815, line: 186, baseType: !319, size: 64, offset: 3584)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1814, file: !1815, line: 187, baseType: !319, size: 64, offset: 3648)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1814, file: !1815, line: 188, baseType: !319, size: 64, offset: 3712)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1814, file: !1815, line: 189, baseType: !1739, size: 192, offset: 3776)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1814, file: !1815, line: 190, baseType: !101, size: 64, offset: 3968)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1814, file: !1815, line: 190, baseType: !101, size: 64, offset: 4032)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1814, file: !1815, line: 190, baseType: !101, size: 64, offset: 4096)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1814, file: !1815, line: 190, baseType: !101, size: 64, offset: 4160)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1814, file: !1815, line: 191, baseType: !101, size: 64, offset: 4224)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1814, file: !1815, line: 191, baseType: !101, size: 64, offset: 4288)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1814, file: !1815, line: 191, baseType: !101, size: 64, offset: 4352)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1814, file: !1815, line: 191, baseType: !101, size: 64, offset: 4416)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1814, file: !1815, line: 192, baseType: !101, size: 64, offset: 4480)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1814, file: !1815, line: 192, baseType: !101, size: 64, offset: 4544)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1814, file: !1815, line: 192, baseType: !101, size: 64, offset: 4608)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1814, file: !1815, line: 192, baseType: !101, size: 64, offset: 4672)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1814, file: !1815, line: 193, baseType: !101, size: 64, offset: 4736)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1814, file: !1815, line: 193, baseType: !101, size: 64, offset: 4800)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1814, file: !1815, line: 194, baseType: !1911, size: 448, offset: 4864)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1912, line: 12, size: 448, elements: !1913)
!1912 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1913 = !{!1914, !1915, !1916, !1917, !1918, !1919, !1920}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1911, file: !1912, line: 15, baseType: !319, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1911, file: !1912, line: 17, baseType: !319, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1911, file: !1912, line: 19, baseType: !319, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1911, file: !1912, line: 21, baseType: !319, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1911, file: !1912, line: 29, baseType: !319, size: 64, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1911, file: !1912, line: 35, baseType: !319, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1911, file: !1912, line: 44, baseType: !319, size: 64, offset: 384)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1814, file: !1815, line: 202, baseType: !321, size: 64, offset: 5312)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1814, file: !1815, line: 213, baseType: !1923, size: 2048, offset: 5376)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1924, size: 2048, elements: !1774)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1925, line: 43, size: 128, elements: !1926)
!1925 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1926 = !{!1927, !1928}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1924, file: !1925, line: 44, baseType: !100, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1924, file: !1925, line: 45, baseType: !100, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1814, file: !1815, line: 216, baseType: !1930, size: 448, offset: 7424)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1815, line: 30, size: 448, elements: !1931)
!1931 = !{!1932, !1933, !1934, !1935, !1936, !1937, !1938}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1930, file: !1815, line: 31, baseType: !106, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1930, file: !1815, line: 32, baseType: !97, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1930, file: !1815, line: 33, baseType: !101, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1930, file: !1815, line: 34, baseType: !319, size: 64, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1930, file: !1815, line: 34, baseType: !319, size: 64, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1930, file: !1815, line: 35, baseType: !101, size: 64, offset: 320)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1930, file: !1815, line: 35, baseType: !101, size: 64, offset: 384)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1814, file: !1815, line: 219, baseType: !1940, size: 64, offset: 7872)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1815, line: 219, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1814, file: !1815, line: 222, baseType: !7, size: 32, offset: 7936)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1814, file: !1815, line: 223, baseType: !1944, size: 64, offset: 8000)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1815, line: 223, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1814, file: !1815, line: 230, baseType: !411, size: 8, offset: 8064)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1814, file: !1815, line: 231, baseType: !379, size: 16, offset: 8080)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1814, file: !1815, line: 232, baseType: !379, size: 16, offset: 8096)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1814, file: !1815, line: 234, baseType: !1480, size: 64, offset: 8128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1814, file: !1815, line: 237, baseType: !189, size: 256, offset: 8192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1814, file: !1815, line: 243, baseType: !351, size: 320, offset: 8448)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1194, file: !892, line: 1111, baseType: !1953, size: 64, offset: 15424)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1815, line: 20, size: 16640, elements: !1955)
!1955 = !{!1956, !1957, !1958, !1959}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1954, file: !1815, line: 21, baseType: !137, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1954, file: !1815, line: 22, baseType: !241, size: 32, offset: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1954, file: !1815, line: 23, baseType: !263, size: 192, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1954, file: !1815, line: 24, baseType: !1960, size: 16384, offset: 256)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1961, size: 16384, elements: !1981)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !502, line: 51, size: 256, elements: !1962)
!1962 = !{!1963}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1961, file: !502, line: 52, baseType: !1964, size: 256)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !502, line: 37, size: 256, elements: !1965)
!1965 = !{!1966, !1973, !1974, !1980}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1964, file: !502, line: 39, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1968, line: 83, baseType: !1969)
!1968 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1968, line: 82, baseType: !1971)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !106}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1964, file: !502, line: 40, baseType: !101, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1964, file: !502, line: 46, baseType: !1975, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1968, line: 86, baseType: !1976)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1968, line: 85, baseType: !1978)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1964, file: !502, line: 48, baseType: !1829, size: 64, offset: 192)
!1981 = !{!1982}
!1982 = !DISubrange(count: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1194, file: !892, line: 1112, baseType: !1829, size: 64, offset: 15488)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1194, file: !892, line: 1113, baseType: !1829, size: 64, offset: 15552)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1194, file: !892, line: 1115, baseType: !1829, size: 64, offset: 15616)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1194, file: !892, line: 1116, baseType: !1825, size: 192, offset: 15680)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1194, file: !892, line: 1117, baseType: !101, size: 64, offset: 15872)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1194, file: !892, line: 1118, baseType: !98, size: 64, offset: 15936)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1194, file: !892, line: 1119, baseType: !7, size: 32, offset: 16000)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1194, file: !892, line: 1121, baseType: !130, size: 64, offset: 16064)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1194, file: !892, line: 1125, baseType: !1992, size: 64, offset: 16128)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !892, line: 43, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1194, file: !892, line: 1127, baseType: !282, size: 32, offset: 16192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1194, file: !892, line: 1128, baseType: !7, size: 32, offset: 16224)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1194, file: !892, line: 1130, baseType: !1997, size: 128, offset: 16256)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1998, line: 37, size: 128, elements: !1999)
!1998 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1999 = !{!2000, !2001, !2002}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1997, file: !1998, line: 38, baseType: !106, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1997, file: !1998, line: 39, baseType: !157, size: 32, offset: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1997, file: !1998, line: 40, baseType: !2003, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1998, line: 24, flags: DIFlagFwdDecl)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1194, file: !892, line: 1131, baseType: !2006, size: 256, offset: 16384)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2007, line: 12, size: 256, elements: !2008)
!2007 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2008 = !{!2009, !2010, !2011, !2012}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2006, file: !2007, line: 13, baseType: !424, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2006, file: !2007, line: 14, baseType: !101, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2006, file: !2007, line: 15, baseType: !101, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2006, file: !2007, line: 16, baseType: !411, size: 8, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1194, file: !892, line: 1134, baseType: !319, size: 64, offset: 16640)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1194, file: !892, line: 1135, baseType: !319, size: 64, offset: 16704)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1194, file: !892, line: 1138, baseType: !137, size: 32, offset: 16768)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1194, file: !892, line: 1141, baseType: !194, size: 32, offset: 16800)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1194, file: !892, line: 1143, baseType: !2018, size: 64, offset: 16832)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !892, line: 735, size: 64, elements: !2019)
!2019 = !{!2020}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2018, file: !892, line: 736, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1194, file: !892, line: 1147, baseType: !1363, size: 128, offset: 16896)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1194, file: !892, line: 1149, baseType: !1193, size: 64, offset: 17024)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1194, file: !892, line: 1151, baseType: !2025, size: 64, offset: 17088)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !892, line: 1151, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1194, file: !892, line: 1188, baseType: !91, size: 64, offset: 17152)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1194, file: !892, line: 1191, baseType: !2029, size: 64, offset: 17216)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !892, line: 44, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1194, file: !892, line: 1194, baseType: !2032, size: 64, offset: 17280)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !892, line: 45, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1194, file: !892, line: 1197, baseType: !2035, size: 64, offset: 17344)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !892, line: 61, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1194, file: !892, line: 1199, baseType: !2038, size: 64, offset: 17408)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2040, line: 99, size: 128, elements: !2041)
!2040 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2041 = !{!2042, !2043, !2044}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2039, file: !2040, line: 100, baseType: !179, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2039, file: !2040, line: 101, baseType: !157, size: 32, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2039, file: !2040, line: 103, baseType: !175, size: 16, offset: 96)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1194, file: !892, line: 1202, baseType: !2046, size: 64, offset: 17472)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !892, line: 48, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1194, file: !892, line: 1205, baseType: !101, size: 64, offset: 17536)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1194, file: !892, line: 1206, baseType: !2050, size: 64, offset: 17600)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !502, line: 14, baseType: !2052)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !502, line: 12, size: 384, elements: !2053)
!2053 = !{!2054}
!2054 = !DIDerivedType(tag: DW_TAG_member, scope: !2052, file: !502, line: 13, baseType: !2055, size: 384)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !502, line: 13, size: 384, elements: !2056)
!2056 = !{!2057, !2058, !2059, !2060}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2055, file: !502, line: 13, baseType: !106, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2055, file: !502, line: 13, baseType: !106, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2055, file: !502, line: 13, baseType: !106, size: 32, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2055, file: !502, line: 13, baseType: !2061, size: 256, offset: 128)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2062, line: 37, size: 256, elements: !2063)
!2062 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2063 = !{!2064, !2069, !2082, !2088, !2097, !2124, !2129}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2061, file: !2062, line: 42, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !2062, line: 39, size: 64, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2065, file: !2062, line: 40, baseType: !1705, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2065, file: !2062, line: 41, baseType: !288, size: 32, offset: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2061, file: !2062, line: 50, baseType: !2070, size: 192)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !2062, line: 45, size: 192, elements: !2071)
!2071 = !{!2072, !2074, !2075, !2081}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2070, file: !2062, line: 46, baseType: !2073, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !95, line: 95, baseType: !106)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2070, file: !2062, line: 47, baseType: !106, size: 32, offset: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2070, file: !2062, line: 48, baseType: !2076, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2062, line: 11, baseType: !2077)
!2077 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2062, line: 8, size: 64, elements: !2078)
!2078 = !{!2079, !2080}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2077, file: !2062, line: 9, baseType: !106, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2077, file: !2062, line: 10, baseType: !91, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2070, file: !2062, line: 49, baseType: !106, size: 32, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2061, file: !2062, line: 57, baseType: !2083, size: 128)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !2062, line: 53, size: 128, elements: !2084)
!2084 = !{!2085, !2086, !2087}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2083, file: !2062, line: 54, baseType: !1705, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2083, file: !2062, line: 55, baseType: !288, size: 32, offset: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2083, file: !2062, line: 56, baseType: !2076, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2061, file: !2062, line: 66, baseType: !2089, size: 256)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !2062, line: 60, size: 256, elements: !2090)
!2090 = !{!2091, !2092, !2093, !2094, !2096}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2089, file: !2062, line: 61, baseType: !1705, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2089, file: !2062, line: 62, baseType: !288, size: 32, offset: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2089, file: !2062, line: 63, baseType: !106, size: 32, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2089, file: !2062, line: 64, baseType: !2095, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !95, line: 94, baseType: !96)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2089, file: !2062, line: 65, baseType: !2095, size: 64, offset: 192)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2061, file: !2062, line: 105, baseType: !2098, size: 256)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !2062, line: 69, size: 256, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2098, file: !2062, line: 70, baseType: !91, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, scope: !2098, file: !2062, line: 79, baseType: !2102, size: 192, offset: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2098, file: !2062, line: 79, size: 192, elements: !2103)
!2103 = !{!2104, !2105, !2106, !2113, !2118}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2102, file: !2062, line: 81, baseType: !106, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2102, file: !2062, line: 86, baseType: !379, size: 16)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2102, file: !2062, line: 92, baseType: !2107, size: 192)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2102, file: !2062, line: 88, size: 192, elements: !2108)
!2108 = !{!2109, !2111, !2112}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2107, file: !2062, line: 89, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 64, elements: !1347)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2107, file: !2062, line: 90, baseType: !91, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2107, file: !2062, line: 91, baseType: !91, size: 64, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2102, file: !2062, line: 97, baseType: !2114, size: 96)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2102, file: !2062, line: 94, size: 96, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2114, file: !2062, line: 95, baseType: !2110, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2114, file: !2062, line: 96, baseType: !112, size: 32, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2102, file: !2062, line: 103, baseType: !2119, size: 128)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2102, file: !2062, line: 99, size: 128, elements: !2120)
!2120 = !{!2121, !2122, !2123}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2119, file: !2062, line: 100, baseType: !101, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2119, file: !2062, line: 101, baseType: !112, size: 32, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2119, file: !2062, line: 102, baseType: !112, size: 32, offset: 96)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2061, file: !2062, line: 111, baseType: !2125, size: 128)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !2062, line: 108, size: 128, elements: !2126)
!2126 = !{!2127, !2128}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2125, file: !2062, line: 109, baseType: !97, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2125, file: !2062, line: 110, baseType: !106, size: 32, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2061, file: !2062, line: 118, baseType: !2130, size: 128)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !2062, line: 114, size: 128, elements: !2131)
!2131 = !{!2132, !2133, !2134}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2130, file: !2062, line: 115, baseType: !91, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2130, file: !2062, line: 116, baseType: !106, size: 32, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2130, file: !2062, line: 117, baseType: !7, size: 32, offset: 96)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1194, file: !892, line: 1208, baseType: !1911, size: 448, offset: 17664)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1194, file: !892, line: 1215, baseType: !319, size: 64, offset: 18112)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1194, file: !892, line: 1217, baseType: !319, size: 64, offset: 18176)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1194, file: !892, line: 1219, baseType: !319, size: 64, offset: 18240)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1194, file: !892, line: 1223, baseType: !2140, size: 64, offset: 18304)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2141, line: 99, baseType: !2142)
!2141 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2141, line: 99, size: 64, elements: !2143)
!2143 = !{!2144}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2142, file: !2141, line: 99, baseType: !1431, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1194, file: !892, line: 1225, baseType: !541, size: 32, offset: 18368)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1194, file: !892, line: 1226, baseType: !106, size: 32, offset: 18400)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1194, file: !892, line: 1227, baseType: !106, size: 32, offset: 18432)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1194, file: !892, line: 1231, baseType: !2149, size: 64, offset: 18496)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !892, line: 1231, flags: DIFlagFwdDecl)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1194, file: !892, line: 1233, baseType: !201, size: 128, offset: 18560)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1194, file: !892, line: 1240, baseType: !2153, size: 64, offset: 18688)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !892, line: 62, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1194, file: !892, line: 1242, baseType: !2156, size: 64, offset: 18752)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !892, line: 1242, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1194, file: !892, line: 1244, baseType: !201, size: 128, offset: 18816)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1194, file: !892, line: 1245, baseType: !2160, size: 64, offset: 18944)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !892, line: 51, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1194, file: !892, line: 1246, baseType: !189, size: 256, offset: 19008)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1194, file: !892, line: 1247, baseType: !7, size: 32, offset: 19264)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1194, file: !892, line: 1250, baseType: !2165, size: 64, offset: 19328)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !892, line: 57, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1194, file: !892, line: 1251, baseType: !189, size: 256, offset: 19392)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1194, file: !892, line: 1252, baseType: !201, size: 128, offset: 19648)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1194, file: !892, line: 1259, baseType: !2170, size: 64, offset: 19776)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !52, line: 717, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1194, file: !892, line: 1260, baseType: !379, size: 16, offset: 19840)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1194, file: !892, line: 1261, baseType: !379, size: 16, offset: 19856)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1194, file: !892, line: 1314, baseType: !2175, size: 64, offset: 19904)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2177, line: 62, size: 256, align: 256, elements: !2178)
!2177 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2184, !2185}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2176, file: !2177, line: 75, baseType: !112, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2176, file: !2177, line: 90, baseType: !112, size: 32, offset: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2176, file: !2177, line: 112, baseType: !320, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2176, file: !2177, line: 132, baseType: !112, size: 32, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2176, file: !2177, line: 140, baseType: !112, size: 32, offset: 160)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2176, file: !2177, line: 149, baseType: !112, size: 32, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2176, file: !2177, line: 154, baseType: !2186, offset: 224)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, elements: !278)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1194, file: !892, line: 1315, baseType: !110, size: 32, offset: 19968)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1194, file: !892, line: 1316, baseType: !110, size: 32, offset: 20000)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1194, file: !892, line: 1321, baseType: !101, size: 64, offset: 20032)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1194, file: !892, line: 1325, baseType: !106, size: 32, offset: 20096)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1194, file: !892, line: 1326, baseType: !106, size: 32, offset: 20128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1194, file: !892, line: 1327, baseType: !106, size: 32, offset: 20160)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1194, file: !892, line: 1328, baseType: !106, size: 32, offset: 20192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1194, file: !892, line: 1329, baseType: !127, size: 128, align: 64, offset: 20224)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1194, file: !892, line: 1332, baseType: !2196, size: 128, offset: 20352)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2197, line: 51, size: 128, elements: !2198)
!2197 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2198 = !{!2199, !2204, !2205}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2196, file: !2197, line: 60, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2201, line: 7, size: 64, elements: !2202)
!2201 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2202 = !{!2203}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2200, file: !2201, line: 12, baseType: !1428, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2196, file: !2197, line: 63, baseType: !411, size: 8, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2196, file: !2197, line: 70, baseType: !411, size: 8, offset: 72)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1194, file: !892, line: 1335, baseType: !2207, size: 64, offset: 20480)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !892, line: 59, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1194, file: !892, line: 1337, baseType: !2210, size: 128, offset: 20544)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2197, line: 39, size: 128, elements: !2211)
!2211 = !{!2212, !2699, !2700}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2210, file: !2197, line: 40, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !52, line: 74, size: 512, align: 128, elements: !2215)
!2215 = !{!2216, !2217, !2693, !2698}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2214, file: !52, line: 75, baseType: !101, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, scope: !2214, file: !52, line: 83, baseType: !2218, size: 320, offset: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2214, file: !52, line: 83, size: 320, elements: !2219)
!2219 = !{!2220, !2444, !2458, !2462, !2692}
!2220 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !52, line: 84, baseType: !2221, size: 320)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2218, file: !52, line: 84, size: 320, elements: !2222)
!2222 = !{!2223, !2234, !2438, !2443}
!2223 = !DIDerivedType(tag: DW_TAG_member, scope: !2221, file: !52, line: 90, baseType: !2224, size: 128)
!2224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2221, file: !52, line: 90, size: 128, elements: !2225)
!2225 = !{!2226, !2227, !2232, !2233}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2224, file: !52, line: 91, baseType: !201, size: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, scope: !2224, file: !52, line: 94, baseType: !2228, size: 128)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !52, line: 94, size: 128, elements: !2229)
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2228, file: !52, line: 96, baseType: !91, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2228, file: !52, line: 98, baseType: !7, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2224, file: !52, line: 102, baseType: !201, size: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2224, file: !52, line: 103, baseType: !201, size: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2221, file: !52, line: 106, baseType: !2235, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !15, line: 472, size: 1536, align: 64, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2430, !2431, !2432, !2435, !2436, !2437}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2236, file: !15, line: 473, baseType: !575, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2236, file: !15, line: 474, baseType: !772, size: 128, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2236, file: !15, line: 475, baseType: !351, size: 320, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2236, file: !15, line: 476, baseType: !777, size: 32, offset: 512)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2236, file: !15, line: 477, baseType: !157, size: 32, offset: 544)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2236, file: !15, line: 482, baseType: !1363, size: 128, offset: 576)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2236, file: !15, line: 483, baseType: !101, size: 64, offset: 704)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2236, file: !15, line: 484, baseType: !101, size: 64, offset: 768)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2236, file: !15, line: 485, baseType: !2247, size: 64, offset: 832)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !15, line: 404, size: 1280, elements: !2250)
!2250 = !{!2251, !2255, !2325, !2329, !2333, !2339, !2345, !2349, !2354, !2358, !2362, !2366, !2394, !2398, !2402, !2406, !2411, !2415, !2422, !2426}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2249, file: !15, line: 405, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!106, !2213, !853}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2249, file: !15, line: 406, baseType: !2256, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!106, !114, !2259}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !52, line: 293, size: 1536, elements: !2261)
!2261 = !{!2262, !2292, !2306}
!2262 = !DIDerivedType(tag: DW_TAG_member, scope: !2260, file: !52, line: 295, baseType: !2263, size: 512)
!2263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2260, file: !52, line: 295, size: 512, elements: !2264)
!2264 = !{!2265, !2291}
!2265 = !DIDerivedType(tag: DW_TAG_member, scope: !2263, file: !52, line: 296, baseType: !2266, size: 448)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2263, file: !52, line: 296, size: 448, elements: !2267)
!2267 = !{!2268, !2269, !2278, !2279, !2280, !2289, !2290}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2266, file: !52, line: 298, baseType: !101, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2266, file: !52, line: 299, baseType: !2270, size: 128, offset: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2266, file: !52, line: 299, size: 128, elements: !2271)
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2270, file: !52, line: 300, baseType: !201, size: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !52, line: 302, baseType: !2274, size: 128)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2270, file: !52, line: 302, size: 128, elements: !2275)
!2275 = !{!2276, !2277}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2274, file: !52, line: 303, baseType: !91, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2274, file: !52, line: 305, baseType: !7, size: 32, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2266, file: !52, line: 310, baseType: !2235, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2266, file: !52, line: 311, baseType: !101, size: 64, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, scope: !2266, file: !52, line: 312, baseType: !2281, size: 64, offset: 320)
!2281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2266, file: !52, line: 312, size: 64, elements: !2282)
!2282 = !{!2283, !2284}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2281, file: !52, line: 313, baseType: !91, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2281, file: !52, line: 314, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !52, line: 257, baseType: !2286)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 255, size: 64, elements: !2287)
!2287 = !{!2288}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2286, file: !52, line: 256, baseType: !101, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2266, file: !52, line: 316, baseType: !157, size: 32, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2266, file: !52, line: 317, baseType: !157, size: 32, offset: 416)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2263, file: !52, line: 323, baseType: !2214, size: 512, align: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, scope: !2260, file: !52, line: 325, baseType: !2293, size: 512, offset: 512)
!2293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2260, file: !52, line: 325, size: 512, elements: !2294)
!2294 = !{!2295, !2305}
!2295 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !52, line: 326, baseType: !2296, size: 320)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2293, file: !52, line: 326, size: 320, elements: !2297)
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303, !2304}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2296, file: !52, line: 327, baseType: !101, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2296, file: !52, line: 328, baseType: !101, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2296, file: !52, line: 329, baseType: !101, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2296, file: !52, line: 331, baseType: !157, size: 32, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2296, file: !52, line: 332, baseType: !157, size: 32, offset: 224)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2296, file: !52, line: 333, baseType: !157, size: 32, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2296, file: !52, line: 335, baseType: !7, size: 32, offset: 288)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2293, file: !52, line: 339, baseType: !2214, size: 512, align: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, scope: !2260, file: !52, line: 341, baseType: !2307, size: 512, offset: 1024)
!2307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2260, file: !52, line: 341, size: 512, elements: !2308)
!2308 = !{!2309, !2318, !2324}
!2309 = !DIDerivedType(tag: DW_TAG_member, scope: !2307, file: !52, line: 342, baseType: !2310, size: 384)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2307, file: !52, line: 342, size: 384, elements: !2311)
!2311 = !{!2312, !2313, !2314, !2315, !2316, !2317}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2310, file: !52, line: 343, baseType: !101, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2310, file: !52, line: 344, baseType: !101, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2310, file: !52, line: 346, baseType: !91, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2310, file: !52, line: 347, baseType: !91, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2310, file: !52, line: 348, baseType: !91, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2310, file: !52, line: 349, baseType: !91, size: 64, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_member, scope: !2307, file: !52, line: 352, baseType: !2319, size: 256)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2307, file: !52, line: 352, size: 256, elements: !2320)
!2320 = !{!2321, !2322, !2323}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2319, file: !52, line: 353, baseType: !101, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2319, file: !52, line: 354, baseType: !101, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2319, file: !52, line: 356, baseType: !201, size: 128, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2307, file: !52, line: 359, baseType: !2214, size: 512, align: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2249, file: !15, line: 409, baseType: !2326, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!106, !2235, !853}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2249, file: !15, line: 412, baseType: !2330, size: 64, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!411, !2235, !2259}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2249, file: !15, line: 414, baseType: !2334, size: 64, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{null, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !15, line: 310, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2249, file: !15, line: 416, baseType: !2340, size: 64, offset: 320)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!106, !114, !2235, !207, !7, !2343, !2344}
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2249, file: !15, line: 419, baseType: !2346, size: 64, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!106, !114, !2235, !207, !7, !7, !2213, !91}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2249, file: !15, line: 424, baseType: !2350, size: 64, offset: 448)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!2353, !2235, !2353}
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !93, line: 131, baseType: !319)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2249, file: !15, line: 425, baseType: !2355, size: 64, offset: 512)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{null, !2259, !98, !98}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2249, file: !15, line: 426, baseType: !2359, size: 64, offset: 576)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!411, !2259, !777}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2249, file: !15, line: 427, baseType: !2363, size: 64, offset: 640)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !2259}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2249, file: !15, line: 428, baseType: !2367, size: 64, offset: 704)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!92, !2370, !2392}
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !15, line: 373, size: 384, elements: !2372)
!2372 = !{!2373, !2374, !2375, !2379, !2380, !2381, !2382}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2371, file: !15, line: 374, baseType: !114, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2371, file: !15, line: 375, baseType: !207, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2371, file: !15, line: 376, baseType: !2376, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !2370, !97}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2371, file: !15, line: 377, baseType: !91, size: 64, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2371, file: !15, line: 378, baseType: !106, size: 32, offset: 256)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2371, file: !15, line: 379, baseType: !173, size: 16, offset: 288)
!2382 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !15, line: 380, baseType: !2383, size: 64, offset: 320)
!2383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2371, file: !15, line: 380, size: 64, elements: !2384)
!2384 = !{!2385, !2388}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2383, file: !15, line: 386, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !15, line: 386, flags: DIFlagFwdDecl)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2383, file: !15, line: 395, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!92, !91}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !15, line: 69, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2249, file: !15, line: 433, baseType: !2395, size: 64, offset: 768)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!106, !2235, !2259, !2259, !36}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2249, file: !15, line: 435, baseType: !2399, size: 64, offset: 832)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!106, !2259}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2249, file: !15, line: 436, baseType: !2403, size: 64, offset: 896)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!411, !2259, !98, !98}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2249, file: !15, line: 438, baseType: !2407, size: 64, offset: 960)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !2259, !2410, !2410}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2249, file: !15, line: 439, baseType: !2412, size: 64, offset: 1024)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!106, !2235, !2213}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2249, file: !15, line: 442, baseType: !2416, size: 64, offset: 1088)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!106, !2419, !114, !2421}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !15, line: 66, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2249, file: !15, line: 444, baseType: !2423, size: 64, offset: 1152)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !114}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2249, file: !15, line: 445, baseType: !2427, size: 64, offset: 1216)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!106, !2370, !2392}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2236, file: !15, line: 486, baseType: !101, size: 64, offset: 896)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2236, file: !15, line: 487, baseType: !351, size: 320, offset: 960)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2236, file: !15, line: 488, baseType: !2433, size: 32, offset: 1280)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2434, line: 8, baseType: !110)
!2434 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2236, file: !15, line: 489, baseType: !137, size: 32, offset: 1312)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2236, file: !15, line: 490, baseType: !201, size: 128, offset: 1344)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2236, file: !15, line: 491, baseType: !91, size: 64, offset: 1472)
!2438 = !DIDerivedType(tag: DW_TAG_member, scope: !2221, file: !52, line: 107, baseType: !2439, size: 64, offset: 192)
!2439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2221, file: !52, line: 107, size: 64, elements: !2440)
!2440 = !{!2441, !2442}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2439, file: !52, line: 108, baseType: !101, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2439, file: !52, line: 109, baseType: !101, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2221, file: !52, line: 117, baseType: !101, size: 64, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !52, line: 119, baseType: !2445, size: 320)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2218, file: !52, line: 119, size: 320, elements: !2446)
!2446 = !{!2447, !2448, !2451, !2452, !2453}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2445, file: !52, line: 124, baseType: !101, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2445, file: !52, line: 125, baseType: !2449, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !52, line: 125, flags: DIFlagFwdDecl)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2445, file: !52, line: 126, baseType: !101, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2445, file: !52, line: 127, baseType: !101, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, scope: !2445, file: !52, line: 128, baseType: !2454, size: 64, offset: 256)
!2454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2445, file: !52, line: 128, size: 64, elements: !2455)
!2455 = !{!2456, !2457}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2454, file: !52, line: 133, baseType: !101, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2454, file: !52, line: 138, baseType: !179, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !52, line: 141, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2218, file: !52, line: 141, size: 64, elements: !2460)
!2460 = !{!2461}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2459, file: !52, line: 142, baseType: !101, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !52, line: 144, baseType: !2463, size: 128)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2218, file: !52, line: 144, size: 128, elements: !2464)
!2464 = !{!2465, !2691}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2463, file: !52, line: 146, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !44, line: 126, size: 1216, elements: !2468)
!2468 = !{!2469, !2479, !2500, !2501, !2502, !2503, !2504, !2673, !2674, !2675}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2467, file: !44, line: 127, baseType: !2470, size: 384)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !44, line: 21, size: 384, elements: !2471)
!2471 = !{!2472, !2473, !2475, !2476, !2477, !2478}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2470, file: !44, line: 22, baseType: !101, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2470, file: !44, line: 23, baseType: !2474, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2470, file: !44, line: 24, baseType: !2474, size: 64, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2470, file: !44, line: 25, baseType: !101, size: 64, offset: 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2470, file: !44, line: 26, baseType: !101, size: 64, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2470, file: !44, line: 27, baseType: !101, size: 64, offset: 320)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2467, file: !44, line: 128, baseType: !2480, size: 128, offset: 384)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2481, line: 105, size: 128, elements: !2482)
!2481 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2482 = !{!2483, !2484}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2480, file: !2481, line: 110, baseType: !101, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2480, file: !2481, line: 118, baseType: !2485, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2481, line: 95, size: 448, elements: !2487)
!2487 = !{!2488, !2489, !2495, !2496, !2497, !2498, !2499}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2486, file: !2481, line: 96, baseType: !179, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2486, file: !2481, line: 97, baseType: !2490, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2481, line: 60, baseType: !2492)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2486, file: !2481, line: 98, baseType: !2490, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2486, file: !2481, line: 99, baseType: !411, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2486, file: !2481, line: 100, baseType: !411, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2486, file: !2481, line: 101, baseType: !127, size: 128, align: 64, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2486, file: !2481, line: 102, baseType: !2494, size: 64, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2467, file: !44, line: 129, baseType: !1722, size: 256, offset: 512)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2467, file: !44, line: 130, baseType: !43, size: 32, offset: 768)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2467, file: !44, line: 131, baseType: !7, size: 32, offset: 800)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2467, file: !44, line: 132, baseType: !101, size: 64, offset: 832)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2467, file: !44, line: 133, baseType: !2505, size: 64, offset: 896)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !44, line: 77, size: 192, elements: !2508)
!2508 = !{!2509, !2513, !2669}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2507, file: !44, line: 83, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{null, !2213}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2507, file: !44, line: 89, baseType: !2514, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!2517, !2518}
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !52, line: 1184, baseType: !7)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2520, line: 512, size: 896, elements: !2521)
!2520 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2521 = !{!2522, !2636, !2637, !2644, !2651, !2661, !2662, !2663, !2665, !2667}
!2522 = !DIDerivedType(tag: DW_TAG_member, scope: !2519, file: !2520, line: 513, baseType: !2523, size: 320)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2519, file: !2520, line: 513, size: 320, elements: !2524)
!2524 = !{!2525, !2632, !2633, !2634, !2635}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2523, file: !2520, line: 514, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !52, line: 625, size: 1344, elements: !2528)
!2528 = !{!2529, !2538, !2539, !2545, !2552, !2553, !2558, !2559, !2564, !2565, !2568, !2625, !2626, !2627, !2628, !2629, !2630}
!2529 = !DIDerivedType(tag: DW_TAG_member, scope: !2527, file: !52, line: 628, baseType: !2530, size: 128)
!2530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2527, file: !52, line: 628, size: 128, elements: !2531)
!2531 = !{!2532, !2537}
!2532 = !DIDerivedType(tag: DW_TAG_member, scope: !2530, file: !52, line: 629, baseType: !2533, size: 128)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2530, file: !52, line: 629, size: 128, elements: !2534)
!2534 = !{!2535, !2536}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2533, file: !52, line: 631, baseType: !101, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2533, file: !52, line: 632, baseType: !101, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2530, file: !52, line: 635, baseType: !127, size: 128, align: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2527, file: !52, line: 639, baseType: !1480, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2527, file: !52, line: 640, baseType: !2540, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1515, line: 297, baseType: !2541)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1515, line: 297, size: 64, elements: !2542)
!2542 = !{!2543}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2541, file: !1515, line: 297, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1520, line: 19, baseType: !101)
!2545 = !DIDerivedType(tag: DW_TAG_member, scope: !2527, file: !52, line: 646, baseType: !2546, size: 64, offset: 256)
!2546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2527, file: !52, line: 646, size: 64, elements: !2547)
!2547 = !{!2548, !2551}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2546, file: !52, line: 647, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2550)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !52, line: 542, baseType: !101)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2546, file: !52, line: 648, baseType: !2550, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2527, file: !52, line: 666, baseType: !106, size: 32, offset: 320)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2527, file: !52, line: 667, baseType: !2554, size: 64, offset: 384)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !52, line: 579, size: 320, elements: !2556)
!2556 = !{!2557}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2555, file: !52, line: 580, baseType: !351, size: 320)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2527, file: !52, line: 670, baseType: !411, size: 8, offset: 448)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2527, file: !52, line: 681, baseType: !2560, size: 256, offset: 512)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2527, file: !52, line: 678, size: 256, elements: !2561)
!2561 = !{!2562, !2563}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2560, file: !52, line: 679, baseType: !343, size: 192, align: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2560, file: !52, line: 680, baseType: !101, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2527, file: !52, line: 689, baseType: !201, size: 128, offset: 768)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2527, file: !52, line: 691, baseType: !2566, size: 64, offset: 896)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !52, line: 691, flags: DIFlagFwdDecl)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2527, file: !52, line: 694, baseType: !2569, size: 64, offset: 960)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2571)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2520, line: 563, size: 1024, elements: !2572)
!2572 = !{!2573, !2577, !2578, !2582, !2586, !2590, !2591, !2595, !2599, !2603, !2604, !2605, !2609, !2613, !2617, !2621}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2571, file: !2520, line: 564, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !2526}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2571, file: !2520, line: 569, baseType: !2574, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2571, file: !2520, line: 571, baseType: !2579, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!106, !2526, !101}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2571, file: !2520, line: 572, baseType: !2583, size: 64, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!106, !2526}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2571, file: !2520, line: 578, baseType: !2587, size: 64, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!106, !2526, !101, !101, !101}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2571, file: !2520, line: 580, baseType: !2514, size: 64, offset: 320)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2571, file: !2520, line: 581, baseType: !2592, size: 64, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!2517, !2518, !7}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2571, file: !2520, line: 582, baseType: !2596, size: 64, offset: 448)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!2517, !2518, !101, !101}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2571, file: !2520, line: 584, baseType: !2600, size: 64, offset: 512)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!101, !2526}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2571, file: !2520, line: 588, baseType: !2514, size: 64, offset: 576)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2571, file: !2520, line: 591, baseType: !2514, size: 64, offset: 640)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2571, file: !2520, line: 597, baseType: !2606, size: 64, offset: 704)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!106, !2526, !101, !91, !106, !106}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2571, file: !2520, line: 603, baseType: !2610, size: 64, offset: 768)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!414, !2526}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2571, file: !2520, line: 613, baseType: !2614, size: 64, offset: 832)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!106, !2526, !2170}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2571, file: !2520, line: 625, baseType: !2618, size: 64, offset: 896)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!2170, !2526, !101}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2571, file: !2520, line: 633, baseType: !2622, size: 64, offset: 960)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!2213, !2526, !101}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2527, file: !52, line: 697, baseType: !101, size: 64, offset: 1024)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2527, file: !52, line: 699, baseType: !114, size: 64, offset: 1088)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2527, file: !52, line: 700, baseType: !91, size: 64, offset: 1152)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2527, file: !52, line: 711, baseType: !179, size: 64, offset: 1216)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2527, file: !52, line: 717, baseType: !2170, size: 64, offset: 1280)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2527, file: !52, line: 722, baseType: !2631, offset: 1344)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !52, line: 570, elements: !822)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2523, file: !2520, line: 515, baseType: !777, size: 32, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2523, file: !2520, line: 516, baseType: !101, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2523, file: !2520, line: 517, baseType: !101, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2523, file: !2520, line: 518, baseType: !101, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2519, file: !2520, line: 520, baseType: !51, size: 32, offset: 320)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2519, file: !2520, line: 522, baseType: !2638, size: 64, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1520, line: 22, baseType: !2640)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1520, line: 22, size: 64, elements: !2641)
!2641 = !{!2642}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2640, file: !1520, line: 22, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1520, line: 15, baseType: !101)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2519, file: !2520, line: 524, baseType: !2645, size: 64, offset: 448)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1515, line: 372, baseType: !2647)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1515, line: 372, size: 64, elements: !2648)
!2648 = !{!2649}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2647, file: !1515, line: 372, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1520, line: 16, baseType: !101)
!2651 = !DIDerivedType(tag: DW_TAG_member, scope: !2519, file: !2520, line: 527, baseType: !2652, size: 64, offset: 512)
!2652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2519, file: !2520, line: 527, size: 64, elements: !2653)
!2653 = !{!2654, !2660}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2652, file: !2520, line: 528, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1520, line: 21, baseType: !2656)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1520, line: 21, size: 64, elements: !2657)
!2657 = !{!2658}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2656, file: !1520, line: 21, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1520, line: 14, baseType: !101)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2652, file: !2520, line: 529, baseType: !2639, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2519, file: !2520, line: 534, baseType: !2213, size: 64, offset: 576)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2519, file: !2520, line: 535, baseType: !2213, size: 64, offset: 640)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2519, file: !2520, line: 541, baseType: !2664, size: 64, offset: 704)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2519, file: !2520, line: 545, baseType: !2666, size: 64, offset: 768)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2519, file: !2520, line: 549, baseType: !2668, size: 64, offset: 832)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1515, line: 520, baseType: !2213)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2507, file: !44, line: 100, baseType: !2670, size: 64, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!106, !2466, !101, !101, !106}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2467, file: !44, line: 134, baseType: !91, size: 64, offset: 960)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2467, file: !44, line: 135, baseType: !106, size: 32, offset: 1024)
!2675 = !DIDerivedType(tag: DW_TAG_member, scope: !2467, file: !44, line: 136, baseType: !2676, size: 128, offset: 1088)
!2676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2467, file: !44, line: 136, size: 128, elements: !2677)
!2677 = !{!2678, !2684}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2676, file: !44, line: 137, baseType: !2679, size: 128)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2680, line: 6, size: 128, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2681 = !{!2682, !2683}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2679, file: !2680, line: 7, baseType: !319, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2679, file: !2680, line: 8, baseType: !319, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, scope: !2676, file: !44, line: 138, baseType: !2685)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2676, file: !44, line: 138, elements: !2686)
!2686 = !{!2687, !2689}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2685, file: !44, line: 138, baseType: !2688)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2685, file: !44, line: 138, elements: !822)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2685, file: !44, line: 138, baseType: !2690)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2679, elements: !278)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2463, file: !52, line: 147, baseType: !91, size: 64, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2218, file: !52, line: 161, baseType: !127, size: 128, align: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, scope: !2214, file: !52, line: 164, baseType: !2694, size: 32, offset: 384)
!2694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2214, file: !52, line: 164, size: 32, elements: !2695)
!2695 = !{!2696, !2697}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2694, file: !52, line: 169, baseType: !157, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2694, file: !52, line: 177, baseType: !7, size: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2214, file: !52, line: 181, baseType: !157, size: 32, offset: 416)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2210, file: !2197, line: 42, baseType: !112, size: 32, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2210, file: !2197, line: 43, baseType: !112, size: 32, offset: 96)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1194, file: !892, line: 1340, baseType: !2702, size: 64, offset: 20672)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !892, line: 69, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1194, file: !892, line: 1351, baseType: !106, size: 32, offset: 20736)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1194, file: !892, line: 1352, baseType: !106, size: 32, offset: 20768)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1194, file: !892, line: 1354, baseType: !101, size: 64, offset: 20800)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1194, file: !892, line: 1364, baseType: !319, size: 64, offset: 20864)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1194, file: !892, line: 1365, baseType: !319, size: 64, offset: 20928)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1194, file: !892, line: 1412, baseType: !101, size: 64, offset: 20992)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1194, file: !892, line: 1453, baseType: !2711, size: 64, offset: 21056)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !892, line: 1453, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1194, file: !892, line: 1457, baseType: !2714, size: 64, offset: 21120)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2716)
!2716 = !{!2717, !2718, !2737, !2740, !2741, !2774, !2784}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2715, file: !68, line: 62, baseType: !67, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, scope: !2715, file: !68, line: 64, baseType: !2719, size: 192, offset: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2715, file: !68, line: 64, size: 192, elements: !2720)
!2720 = !{!2721, !2732}
!2721 = !DIDerivedType(tag: DW_TAG_member, scope: !2719, file: !68, line: 65, baseType: !2722, size: 192)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2719, file: !68, line: 65, size: 192, elements: !2723)
!2723 = !{!2724, !2731}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2722, file: !68, line: 66, baseType: !2725, size: 128)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2726, line: 50, size: 128, elements: !2727)
!2726 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2727 = !{!2728, !2729, !2730}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2725, file: !2726, line: 52, baseType: !101, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2725, file: !2726, line: 54, baseType: !7, size: 32, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2725, file: !2726, line: 55, baseType: !7, size: 32, offset: 96)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2722, file: !68, line: 67, baseType: !101, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, scope: !2719, file: !68, line: 70, baseType: !2733, size: 192)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2719, file: !68, line: 70, size: 192, elements: !2734)
!2734 = !{!2735, !2736}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2733, file: !68, line: 71, baseType: !127, size: 128, align: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2733, file: !68, line: 72, baseType: !101, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2715, file: !68, line: 76, baseType: !2738, size: 64, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2715, file: !68, line: 77, baseType: !101, size: 64, offset: 320)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2715, file: !68, line: 79, baseType: !2742, size: 64, offset: 384)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2726, line: 25, size: 256, elements: !2744)
!2744 = !{!2745, !2751, !2755}
!2745 = !DIDerivedType(tag: DW_TAG_member, scope: !2743, file: !2726, line: 26, baseType: !2746, size: 128)
!2746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2743, file: !2726, line: 26, size: 128, elements: !2747)
!2747 = !{!2748, !2750}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2746, file: !2726, line: 27, baseType: !2749, size: 128)
!2749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 128, elements: !1774)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2746, file: !2726, line: 28, baseType: !2749, size: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2743, file: !2726, line: 31, baseType: !2752, size: 64, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2754)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2726, line: 23, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, scope: !2743, file: !2726, line: 33, baseType: !2756, size: 64, offset: 192)
!2756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2743, file: !2726, line: 33, size: 64, elements: !2757)
!2757 = !{!2758, !2764, !2769}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2756, file: !2726, line: 38, baseType: !2759, size: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !2726, line: 34, size: 64, elements: !2760)
!2760 = !{!2761, !2762, !2763}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2759, file: !2726, line: 35, baseType: !336, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2759, file: !2726, line: 36, baseType: !165, size: 8, offset: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2759, file: !2726, line: 37, baseType: !165, size: 8, offset: 40)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2756, file: !2726, line: 42, baseType: !2765, size: 16)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !2726, line: 39, size: 16, elements: !2766)
!2766 = !{!2767, !2768}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2765, file: !2726, line: 40, baseType: !165, size: 8)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2765, file: !2726, line: 41, baseType: !165, size: 8, offset: 8)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2756, file: !2726, line: 46, baseType: !2770, size: 16)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !2726, line: 43, size: 16, elements: !2771)
!2771 = !{!2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2770, file: !2726, line: 44, baseType: !165, size: 8)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2770, file: !2726, line: 45, baseType: !165, size: 8, offset: 8)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2715, file: !68, line: 81, baseType: !2775, size: 64, offset: 448)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2777)
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2776, file: !68, line: 86, baseType: !2738, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2776, file: !68, line: 87, baseType: !101, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2776, file: !68, line: 88, baseType: !101, size: 64, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2776, file: !68, line: 89, baseType: !101, size: 64, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2776, file: !68, line: 90, baseType: !411, size: 8, offset: 256)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2776, file: !68, line: 92, baseType: !2775, size: 64, offset: 320)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2715, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1194, file: !892, line: 1463, baseType: !2786, offset: 21184)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !892, line: 739, elements: !822)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1194, file: !892, line: 1470, baseType: !127, size: 128, align: 64, offset: 21184)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1194, file: !892, line: 1471, baseType: !241, size: 32, offset: 21312)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1194, file: !892, line: 1472, baseType: !106, size: 32, offset: 21344)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1194, file: !892, line: 1474, baseType: !1193, size: 64, offset: 21376)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1194, file: !892, line: 1475, baseType: !2792, size: 320, offset: 21440)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2793, line: 11, size: 320, elements: !2794)
!2793 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2794 = !{!2795, !2796, !2797, !2802}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2792, file: !2793, line: 16, baseType: !254, size: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2792, file: !2793, line: 17, baseType: !101, size: 64, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2792, file: !2793, line: 18, baseType: !2798, size: 64, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2801}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2792, file: !2793, line: 19, baseType: !110, size: 32, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1194, file: !892, line: 1478, baseType: !2804, size: 64, offset: 21760)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2806, line: 49, size: 512, elements: !2807)
!2806 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2807 = !{!2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2817}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2805, file: !2806, line: 50, baseType: !2804, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2805, file: !2806, line: 51, baseType: !91, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2805, file: !2806, line: 52, baseType: !101, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2805, file: !2806, line: 53, baseType: !101, size: 64, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2805, file: !2806, line: 54, baseType: !2343, size: 64, offset: 256)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2805, file: !2806, line: 56, baseType: !7, size: 32, offset: 320)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2805, file: !2806, line: 58, baseType: !7, size: 32, offset: 352)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2805, file: !2806, line: 59, baseType: !2816, size: 64, offset: 384)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !93, line: 159, baseType: !319)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2805, file: !2806, line: 60, baseType: !2818, size: 64, offset: 448)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1194, file: !892, line: 1482, baseType: !241, size: 32, offset: 21824)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1194, file: !892, line: 1489, baseType: !91, size: 64, offset: 21888)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1194, file: !892, line: 1504, baseType: !91, size: 64, offset: 21952)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1194, file: !892, line: 1505, baseType: !320, size: 64, offset: 22016)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1194, file: !892, line: 1506, baseType: !319, size: 64, offset: 22080)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1194, file: !892, line: 1507, baseType: !320, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1194, file: !892, line: 1508, baseType: !320, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1194, file: !892, line: 1509, baseType: !320, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1194, file: !892, line: 1510, baseType: !127, size: 128, align: 64, offset: 22208)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1194, file: !892, line: 1511, baseType: !106, size: 32, offset: 22336)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1194, file: !892, line: 1515, baseType: !2831, size: 64, offset: 22400)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !122, line: 56, size: 64, elements: !2832)
!2832 = !{!2833}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2831, file: !122, line: 57, baseType: !125, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1194, file: !892, line: 1518, baseType: !2831, size: 64, offset: 22464)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1194, file: !892, line: 1528, baseType: !127, size: 128, align: 64, offset: 22528)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1194, file: !892, line: 1552, baseType: !2837, size: 35328, offset: 23040)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2838, line: 430, size: 35328, elements: !2839)
!2838 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2839 = !{!2840, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2869, !2870, !2871, !2872, !2873, !2874, !2877, !2878, !2879, !2880}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2837, file: !2838, line: 432, baseType: !2841, size: 192)
!2841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2842, size: 192, elements: !233)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2843, line: 16, size: 64, elements: !2844)
!2843 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2842, file: !2843, line: 17, baseType: !173, size: 16)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2842, file: !2843, line: 18, baseType: !173, size: 16, offset: 16)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2842, file: !2843, line: 19, baseType: !173, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2842, file: !2843, line: 19, baseType: !173, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2842, file: !2843, line: 19, baseType: !173, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2842, file: !2843, line: 19, baseType: !173, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2842, file: !2843, line: 19, baseType: !173, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2842, file: !2843, line: 20, baseType: !173, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2842, file: !2843, line: 20, baseType: !173, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2842, file: !2843, line: 20, baseType: !173, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2842, file: !2843, line: 20, baseType: !173, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2842, file: !2843, line: 20, baseType: !173, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2842, file: !2843, line: 20, baseType: !173, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2837, file: !2838, line: 436, baseType: !101, size: 64, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2837, file: !2838, line: 440, baseType: !175, size: 16, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2837, file: !2838, line: 441, baseType: !175, size: 16, offset: 272)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2837, file: !2838, line: 442, baseType: !175, size: 16, offset: 288)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2837, file: !2838, line: 443, baseType: !175, size: 16, offset: 304)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2837, file: !2838, line: 447, baseType: !101, size: 64, offset: 320)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2837, file: !2838, line: 448, baseType: !101, size: 64, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2837, file: !2838, line: 459, baseType: !2866, size: 256, offset: 448)
!2866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2867, size: 256, elements: !259)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2838, line: 428, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2837, file: !2838, line: 461, baseType: !101, size: 64, offset: 704)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2837, file: !2838, line: 463, baseType: !101, size: 64, offset: 768)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2837, file: !2838, line: 465, baseType: !101, size: 64, offset: 832)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2837, file: !2838, line: 466, baseType: !101, size: 64, offset: 896)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2837, file: !2838, line: 467, baseType: !101, size: 64, offset: 960)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2837, file: !2838, line: 473, baseType: !2875, size: 64, offset: 1024)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2838, line: 10, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2837, file: !2838, line: 480, baseType: !101, size: 64, offset: 1088)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2837, file: !2838, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2837, file: !2838, line: 491, baseType: !110, size: 32, offset: 1184)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2837, file: !2838, line: 501, baseType: !2881, size: 33792, offset: 1536)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2882, line: 448, size: 33792, elements: !2883)
!2882 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2883 = !{!2884, !2885, !2886, !3050, !3051, !3057, !3058}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2881, file: !2882, line: 461, baseType: !7, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2881, file: !2882, line: 468, baseType: !101, size: 64, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2881, file: !2882, line: 476, baseType: !2887, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2882, line: 356, size: 33280, align: 512, elements: !2889)
!2889 = !{!2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2888, file: !2882, line: 358, baseType: !7, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2888, file: !2882, line: 361, baseType: !7, size: 32, offset: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2888, file: !2882, line: 364, baseType: !319, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2888, file: !2882, line: 367, baseType: !319, size: 64, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2888, file: !2882, line: 370, baseType: !319, size: 64, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2888, file: !2882, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2888, file: !2882, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2888, file: !2882, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2888, file: !2882, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2888, file: !2882, line: 397, baseType: !2900, size: 32768, offset: 512)
!2900 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2882, line: 348, size: 32768, elements: !2901)
!2901 = !{!2902, !2917, !2956, !3033, !3046}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2900, file: !2882, line: 349, baseType: !2903, size: 896)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2882, line: 12, size: 896, elements: !2904)
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2916}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2903, file: !2882, line: 13, baseType: !110, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2903, file: !2882, line: 14, baseType: !110, size: 32, offset: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2903, file: !2882, line: 15, baseType: !110, size: 32, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2903, file: !2882, line: 16, baseType: !110, size: 32, offset: 96)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2903, file: !2882, line: 17, baseType: !110, size: 32, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2903, file: !2882, line: 18, baseType: !110, size: 32, offset: 160)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2903, file: !2882, line: 19, baseType: !110, size: 32, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2903, file: !2882, line: 22, baseType: !2913, size: 640, offset: 224)
!2913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 640, elements: !2914)
!2914 = !{!2915}
!2915 = !DISubrange(count: 20)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2903, file: !2882, line: 25, baseType: !110, size: 32, offset: 864)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2900, file: !2882, line: 350, baseType: !2918, size: 4096, align: 128)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2882, line: 34, size: 4096, align: 128, elements: !2919)
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2939, !2940, !2941, !2945, !2947, !2951}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2918, file: !2882, line: 35, baseType: !173, size: 16)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2918, file: !2882, line: 36, baseType: !173, size: 16, offset: 16)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2918, file: !2882, line: 37, baseType: !173, size: 16, offset: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2918, file: !2882, line: 38, baseType: !173, size: 16, offset: 48)
!2924 = !DIDerivedType(tag: DW_TAG_member, scope: !2918, file: !2882, line: 39, baseType: !2925, size: 128, offset: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2918, file: !2882, line: 39, size: 128, elements: !2926)
!2926 = !{!2927, !2932}
!2927 = !DIDerivedType(tag: DW_TAG_member, scope: !2925, file: !2882, line: 40, baseType: !2928, size: 128)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2925, file: !2882, line: 40, size: 128, elements: !2929)
!2929 = !{!2930, !2931}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2928, file: !2882, line: 41, baseType: !319, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2928, file: !2882, line: 42, baseType: !319, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, scope: !2925, file: !2882, line: 44, baseType: !2933, size: 128)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2925, file: !2882, line: 44, size: 128, elements: !2934)
!2934 = !{!2935, !2936, !2937, !2938}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2933, file: !2882, line: 45, baseType: !110, size: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2933, file: !2882, line: 46, baseType: !110, size: 32, offset: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2933, file: !2882, line: 47, baseType: !110, size: 32, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2933, file: !2882, line: 48, baseType: !110, size: 32, offset: 96)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2918, file: !2882, line: 51, baseType: !110, size: 32, offset: 192)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2918, file: !2882, line: 52, baseType: !110, size: 32, offset: 224)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2918, file: !2882, line: 55, baseType: !2942, size: 1024, offset: 256)
!2942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 1024, elements: !2943)
!2943 = !{!2944}
!2944 = !DISubrange(count: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2918, file: !2882, line: 58, baseType: !2946, size: 2048, offset: 1280)
!2946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 2048, elements: !1981)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2918, file: !2882, line: 60, baseType: !2948, size: 384, offset: 3328)
!2948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 384, elements: !2949)
!2949 = !{!2950}
!2950 = !DISubrange(count: 12)
!2951 = !DIDerivedType(tag: DW_TAG_member, scope: !2918, file: !2882, line: 62, baseType: !2952, size: 384, offset: 3712)
!2952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2918, file: !2882, line: 62, size: 384, elements: !2953)
!2953 = !{!2954, !2955}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2952, file: !2882, line: 63, baseType: !2948, size: 384)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2952, file: !2882, line: 64, baseType: !2948, size: 384)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2900, file: !2882, line: 351, baseType: !2957, size: 1088)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2882, line: 79, size: 1088, elements: !2958)
!2958 = !{!2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !3032}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2957, file: !2882, line: 80, baseType: !110, size: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2957, file: !2882, line: 81, baseType: !110, size: 32, offset: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2957, file: !2882, line: 82, baseType: !110, size: 32, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2957, file: !2882, line: 83, baseType: !110, size: 32, offset: 96)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2957, file: !2882, line: 84, baseType: !110, size: 32, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2957, file: !2882, line: 85, baseType: !110, size: 32, offset: 160)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2957, file: !2882, line: 86, baseType: !110, size: 32, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2957, file: !2882, line: 88, baseType: !2913, size: 640, offset: 224)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2957, file: !2882, line: 89, baseType: !165, size: 8, offset: 864)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2957, file: !2882, line: 90, baseType: !165, size: 8, offset: 872)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2957, file: !2882, line: 91, baseType: !165, size: 8, offset: 880)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2957, file: !2882, line: 92, baseType: !165, size: 8, offset: 888)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2957, file: !2882, line: 93, baseType: !165, size: 8, offset: 896)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2957, file: !2882, line: 94, baseType: !165, size: 8, offset: 904)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2957, file: !2882, line: 95, baseType: !2974, size: 64, offset: 960)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2976, line: 11, size: 128, elements: !2977)
!2976 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2977 = !{!2978, !2979}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2975, file: !2976, line: 12, baseType: !97, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2975, file: !2976, line: 13, baseType: !2980, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2982, line: 103, size: 1344, elements: !2983)
!2982 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2983 = !{!2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3012, !3013, !3014}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2981, file: !2982, line: 109, baseType: !101, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2981, file: !2982, line: 110, baseType: !101, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2981, file: !2982, line: 111, baseType: !101, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2981, file: !2982, line: 112, baseType: !101, size: 64, offset: 192)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2981, file: !2982, line: 113, baseType: !101, size: 64, offset: 256)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2981, file: !2982, line: 114, baseType: !101, size: 64, offset: 320)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2981, file: !2982, line: 117, baseType: !101, size: 64, offset: 384)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2981, file: !2982, line: 118, baseType: !101, size: 64, offset: 448)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2981, file: !2982, line: 119, baseType: !101, size: 64, offset: 512)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2981, file: !2982, line: 120, baseType: !101, size: 64, offset: 576)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2981, file: !2982, line: 121, baseType: !101, size: 64, offset: 640)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2981, file: !2982, line: 122, baseType: !101, size: 64, offset: 704)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2981, file: !2982, line: 123, baseType: !101, size: 64, offset: 768)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2981, file: !2982, line: 124, baseType: !101, size: 64, offset: 832)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2981, file: !2982, line: 125, baseType: !101, size: 64, offset: 896)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2981, file: !2982, line: 139, baseType: !101, size: 64, offset: 960)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2981, file: !2982, line: 142, baseType: !101, size: 64, offset: 1024)
!3001 = !DIDerivedType(tag: DW_TAG_member, scope: !2981, file: !2982, line: 144, baseType: !3002, size: 64, offset: 1088)
!3002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2981, file: !2982, line: 144, size: 64, elements: !3003)
!3003 = !{!3004, !3005, !3006}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3002, file: !2982, line: 146, baseType: !173, size: 16)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3002, file: !2982, line: 148, baseType: !319, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3002, file: !2982, line: 150, baseType: !3007, size: 64)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2982, line: 59, size: 64, elements: !3008)
!3008 = !{!3009, !3010, !3011}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3007, file: !2982, line: 61, baseType: !319, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3007, file: !2982, line: 63, baseType: !319, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3007, file: !2982, line: 65, baseType: !319, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2981, file: !2982, line: 153, baseType: !101, size: 64, offset: 1152)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2981, file: !2982, line: 154, baseType: !101, size: 64, offset: 1216)
!3014 = !DIDerivedType(tag: DW_TAG_member, scope: !2981, file: !2982, line: 156, baseType: !3015, size: 64, offset: 1280)
!3015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2981, file: !2982, line: 156, size: 64, elements: !3016)
!3016 = !{!3017, !3018, !3019}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3015, file: !2982, line: 158, baseType: !173, size: 16)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3015, file: !2982, line: 160, baseType: !319, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3015, file: !2982, line: 162, baseType: !3020, size: 64)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2982, line: 69, size: 64, elements: !3021)
!3021 = !{!3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3020, file: !2982, line: 71, baseType: !319, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3020, file: !2982, line: 73, baseType: !319, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3020, file: !2982, line: 75, baseType: !319, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3020, file: !2982, line: 77, baseType: !319, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3020, file: !2982, line: 80, baseType: !319, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3020, file: !2982, line: 83, baseType: !319, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3020, file: !2982, line: 86, baseType: !319, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3020, file: !2982, line: 88, baseType: !319, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3020, file: !2982, line: 93, baseType: !319, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3020, file: !2982, line: 100, baseType: !319, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2957, file: !2882, line: 96, baseType: !110, size: 32, offset: 1024)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2900, file: !2882, line: 352, baseType: !3034, size: 4608, align: 512)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2882, line: 333, size: 4608, align: 512, elements: !3035)
!3035 = !{!3036, !3037, !3044}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3034, file: !2882, line: 334, baseType: !2918, size: 4096, align: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3034, file: !2882, line: 335, baseType: !3038, size: 512, offset: 4096)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2882, line: 312, size: 512, elements: !3039)
!3039 = !{!3040, !3041, !3042}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3038, file: !2882, line: 313, baseType: !319, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3038, file: !2882, line: 314, baseType: !319, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3038, file: !2882, line: 315, baseType: !3043, size: 384, offset: 128)
!3043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 384, elements: !398)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3034, file: !2882, line: 336, baseType: !3045, offset: 4608)
!3045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, elements: !278)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2900, file: !2882, line: 353, baseType: !3047, size: 32768)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 32768, elements: !3048)
!3048 = !{!3049}
!3049 = !DISubrange(count: 4096)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2881, file: !2882, line: 484, baseType: !2887, size: 64, offset: 192)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2881, file: !2882, line: 491, baseType: !3052, size: 128, offset: 256)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2882, line: 404, size: 128, elements: !3053)
!3053 = !{!3054, !3055, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3052, file: !2882, line: 424, baseType: !319, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3052, file: !2882, line: 432, baseType: !7, size: 32, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3052, file: !2882, line: 440, baseType: !7, size: 32, offset: 96)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2881, file: !2882, line: 498, baseType: !3052, size: 128, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2881, file: !2882, line: 508, baseType: !2888, size: 33280, align: 512, offset: 512)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1175, file: !1176, line: 16, baseType: !263, size: 192, offset: 512)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1175, file: !1176, line: 17, baseType: !157, size: 32, offset: 704)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !782, file: !15, line: 1240, baseType: !91, size: 64, offset: 6912)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !782, file: !15, line: 1243, baseType: !110, size: 32, offset: 6976)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !782, file: !15, line: 1245, baseType: !367, size: 64, offset: 7040)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !782, file: !15, line: 1246, baseType: !367, size: 64, offset: 7104)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !782, file: !15, line: 1248, baseType: !112, size: 32, offset: 7168)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !782, file: !15, line: 1249, baseType: !3067, size: 64, offset: 7232)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !15, line: 634, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !782, file: !15, line: 1252, baseType: !3070, size: 256, offset: 7296)
!3070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 256, elements: !2943)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !782, file: !15, line: 1253, baseType: !3072, size: 128, offset: 7552)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3073, line: 21, baseType: !3074)
!3073 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3073, line: 19, size: 128, elements: !3075)
!3075 = !{!3076}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3074, file: !3073, line: 20, baseType: !3077, size: 128)
!3077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, elements: !1774)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !782, file: !15, line: 1255, baseType: !7, size: 32, offset: 7680)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !782, file: !15, line: 1261, baseType: !189, size: 256, offset: 7744)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !782, file: !15, line: 1267, baseType: !414, size: 64, offset: 8000)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !782, file: !15, line: 1269, baseType: !3082, size: 64, offset: 8064)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3084)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !537, line: 128, size: 1024, align: 512, elements: !3085)
!3085 = !{!3086, !3090, !3091, !3098, !3104, !3108, !3112, !3116, !3117, !3121, !3125, !3130, !3134}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3084, file: !537, line: 129, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!106, !535, !7}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3084, file: !537, line: 130, baseType: !3087, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3084, file: !537, line: 131, baseType: !3092, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!106, !3095, !3097}
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3084, file: !537, line: 132, baseType: !3099, size: 64, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!106, !3095, !7, !414, !3102}
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3084, file: !537, line: 134, baseType: !3105, size: 64, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!106, !3095}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3084, file: !537, line: 135, baseType: !3109, size: 64, offset: 320)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!106, !535}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3084, file: !537, line: 136, baseType: !3113, size: 64, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{null, !535}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3084, file: !537, line: 137, baseType: !3113, size: 64, offset: 448)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3084, file: !537, line: 138, baseType: !3118, size: 64, offset: 512)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !535, !575}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3084, file: !537, line: 139, baseType: !3122, size: 64, offset: 576)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!424, !535, !424, !106}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3084, file: !537, line: 140, baseType: !3126, size: 64, offset: 640)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!530, !3129}
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3084, file: !537, line: 141, baseType: !3131, size: 64, offset: 704)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!106, !697, !411}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3084, file: !537, line: 142, baseType: !3135, size: 64, offset: 768)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!535, !535, !3138}
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !782, file: !15, line: 1271, baseType: !3141, size: 448, offset: 8128)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !957, line: 63, size: 448, elements: !3142)
!3142 = !{!3143, !3148, !3149, !3150, !3151, !3152, !3153}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3141, file: !957, line: 64, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!101, !3147, !955}
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3141, file: !957, line: 66, baseType: !3144, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3141, file: !957, line: 69, baseType: !97, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3141, file: !957, line: 70, baseType: !106, size: 32, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3141, file: !957, line: 71, baseType: !7, size: 32, offset: 224)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3141, file: !957, line: 74, baseType: !201, size: 128, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3141, file: !957, line: 85, baseType: !3154, size: 64, offset: 384)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !782, file: !15, line: 1274, baseType: !179, size: 64, offset: 8576)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !782, file: !15, line: 1280, baseType: !179, size: 64, offset: 8640)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !782, file: !15, line: 1283, baseType: !106, size: 32, offset: 8704)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !782, file: !15, line: 1286, baseType: !2433, size: 32, offset: 8736)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !782, file: !15, line: 1289, baseType: !3160, size: 64, offset: 8768)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1612, line: 18, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !782, file: !15, line: 1290, baseType: !250, size: 64, offset: 8832)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !782, file: !15, line: 1297, baseType: !497, size: 64, offset: 8896)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !782, file: !15, line: 1304, baseType: !3165, size: 64, offset: 8960)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3166, line: 49, size: 64, elements: !3167)
!3166 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3167 = !{!3168}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3165, file: !3166, line: 50, baseType: !3169, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3166, line: 41, size: 512, align: 512, elements: !3171)
!3171 = !{!3172, !3173, !3178}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3170, file: !3166, line: 43, baseType: !137, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3170, file: !3166, line: 45, baseType: !3174, size: 192, offset: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3166, line: 29, size: 192, elements: !3175)
!3175 = !{!3176, !3177}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3174, file: !3166, line: 30, baseType: !201, size: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3174, file: !3166, line: 32, baseType: !97, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3170, file: !3166, line: 46, baseType: !97, size: 64, offset: 256)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !782, file: !15, line: 1305, baseType: !3165, size: 64, offset: 9024)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !782, file: !15, line: 1306, baseType: !127, size: 128, align: 64, offset: 9088)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !782, file: !15, line: 1307, baseType: !1611, size: 256, offset: 9216)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !782, file: !15, line: 1309, baseType: !189, size: 256, offset: 9472)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !782, file: !15, line: 1314, baseType: !106, size: 32, offset: 9728)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !782, file: !15, line: 1317, baseType: !137, size: 32, align: 512, offset: 10240)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !782, file: !15, line: 1318, baseType: !201, size: 128, offset: 10304)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !782, file: !15, line: 1320, baseType: !137, size: 32, offset: 10432)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !782, file: !15, line: 1321, baseType: !201, size: 128, offset: 10496)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !576, file: !15, line: 656, baseType: !2235, size: 64, offset: 512)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !576, file: !15, line: 659, baseType: !91, size: 64, offset: 576)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !576, file: !15, line: 663, baseType: !101, size: 64, offset: 640)
!3191 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !15, line: 671, baseType: !3192, size: 32, offset: 704)
!3192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !15, line: 671, size: 32, elements: !3193)
!3193 = !{!3194, !3196}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3192, file: !15, line: 672, baseType: !3195, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3192, file: !15, line: 673, baseType: !7, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !576, file: !15, line: 675, baseType: !650, size: 32, offset: 736)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !576, file: !15, line: 676, baseType: !207, size: 64, offset: 768)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !576, file: !15, line: 677, baseType: !686, size: 128, offset: 832)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !576, file: !15, line: 678, baseType: !686, size: 128, offset: 960)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !576, file: !15, line: 679, baseType: !686, size: 128, offset: 1088)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !576, file: !15, line: 680, baseType: !137, size: 32, offset: 1216)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !576, file: !15, line: 681, baseType: !175, size: 16, offset: 1248)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !576, file: !15, line: 682, baseType: !165, size: 8, offset: 1264)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !576, file: !15, line: 683, baseType: !165, size: 8, offset: 1272)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !576, file: !15, line: 684, baseType: !1088, size: 64, offset: 1280)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !576, file: !15, line: 691, baseType: !101, size: 64, offset: 1344)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !576, file: !15, line: 692, baseType: !351, size: 320, offset: 1408)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !576, file: !15, line: 694, baseType: !101, size: 64, offset: 1728)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !576, file: !15, line: 695, baseType: !101, size: 64, offset: 1792)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !576, file: !15, line: 697, baseType: !254, size: 128, offset: 1856)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !576, file: !15, line: 698, baseType: !201, size: 128, offset: 1984)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !576, file: !15, line: 707, baseType: !201, size: 128, offset: 2112)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !576, file: !15, line: 708, baseType: !201, size: 128, offset: 2240)
!3215 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !15, line: 709, baseType: !3216, size: 128, offset: 2368)
!3216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !15, line: 709, size: 128, elements: !3217)
!3217 = !{!3218, !3219}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3216, file: !15, line: 710, baseType: !250, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3216, file: !15, line: 711, baseType: !127, size: 128, align: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !576, file: !15, line: 713, baseType: !181, size: 64, offset: 2496)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !576, file: !15, line: 714, baseType: !181, size: 64, offset: 2560)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !576, file: !15, line: 715, baseType: !157, size: 32, offset: 2624)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !576, file: !15, line: 716, baseType: !157, size: 32, offset: 2656)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !576, file: !15, line: 717, baseType: !157, size: 32, offset: 2688)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !576, file: !15, line: 719, baseType: !157, size: 32, offset: 2720)
!3226 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !15, line: 721, baseType: !3227, size: 64, offset: 2752)
!3227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !15, line: 721, size: 64, elements: !3228)
!3228 = !{!3229, !3358}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3227, file: !15, line: 722, baseType: !3230, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3232)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !15, line: 1914, size: 2112, elements: !3233)
!3233 = !{!3234, !3235, !3239, !3244, !3248, !3249, !3250, !3256, !3269, !3277, !3281, !3282, !3286, !3287, !3291, !3296, !3297, !3301, !3305, !3311, !3312, !3316, !3317, !3321, !3325, !3326, !3331, !3335, !3339, !3343, !3347, !3348, !3354}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3232, file: !15, line: 1915, baseType: !814, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3232, file: !15, line: 1916, baseType: !3236, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!207, !114, !207, !106}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3232, file: !15, line: 1917, baseType: !3240, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!92, !114, !424, !98, !3243}
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3232, file: !15, line: 1918, baseType: !3245, size: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!92, !114, !414, !98, !3243}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3232, file: !15, line: 1919, baseType: !2367, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3232, file: !15, line: 1920, baseType: !2367, size: 64, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3232, file: !15, line: 1921, baseType: !3251, size: 64, offset: 384)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!106, !2370, !3254, !7}
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !15, line: 53, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3232, file: !15, line: 1923, baseType: !3257, size: 64, offset: 448)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!106, !114, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !15, line: 1858, size: 128, elements: !3262)
!3262 = !{!3263, !3268}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3261, file: !15, line: 1859, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !15, line: 1855, baseType: !3265)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!411, !3260, !414, !106, !207, !319, !7}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3261, file: !15, line: 1860, baseType: !207, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3232, file: !15, line: 1924, baseType: !3270, size: 64, offset: 512)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!3273, !114, !3275}
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3274, line: 59, baseType: !7)
!3274 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !15, line: 61, flags: DIFlagFwdDecl)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3232, file: !15, line: 1925, baseType: !3278, size: 64, offset: 576)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!97, !114, !7, !101}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3232, file: !15, line: 1926, baseType: !3278, size: 64, offset: 640)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3232, file: !15, line: 1927, baseType: !3283, size: 64, offset: 704)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!106, !114, !2526}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3232, file: !15, line: 1928, baseType: !101, size: 64, offset: 768)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3232, file: !15, line: 1929, baseType: !3288, size: 64, offset: 832)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!106, !575, !114}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3232, file: !15, line: 1930, baseType: !3292, size: 64, offset: 896)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!106, !114, !3295}
!3295 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !15, line: 1061, baseType: !91)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3232, file: !15, line: 1931, baseType: !3288, size: 64, offset: 960)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3232, file: !15, line: 1932, baseType: !3298, size: 64, offset: 1024)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!106, !114, !207, !207, !106}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3232, file: !15, line: 1933, baseType: !3302, size: 64, offset: 1088)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!106, !106, !114, !106}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3232, file: !15, line: 1934, baseType: !3306, size: 64, offset: 1152)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!106, !114, !106, !3309}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !15, line: 1063, flags: DIFlagFwdDecl)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3232, file: !15, line: 1935, baseType: !1504, size: 64, offset: 1216)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3232, file: !15, line: 1936, baseType: !3313, size: 64, offset: 1280)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!106, !106}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3232, file: !15, line: 1937, baseType: !3306, size: 64, offset: 1344)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3232, file: !15, line: 1938, baseType: !3318, size: 64, offset: 1408)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!92, !2207, !114, !3243, !98, !7}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3232, file: !15, line: 1939, baseType: !3322, size: 64, offset: 1472)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!92, !114, !3243, !2207, !98, !7}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3232, file: !15, line: 1940, baseType: !2423, size: 64, offset: 1536)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3232, file: !15, line: 1941, baseType: !3327, size: 64, offset: 1600)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!106, !114, !106, !3330, !2344}
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3232, file: !15, line: 1942, baseType: !3332, size: 64, offset: 1664)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!97, !114, !106, !207, !207}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3232, file: !15, line: 1944, baseType: !3336, size: 64, offset: 1728)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{null, !890, !114}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3232, file: !15, line: 1948, baseType: !3340, size: 64, offset: 1792)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!92, !114, !207, !114, !207, !98, !7}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3232, file: !15, line: 1950, baseType: !3344, size: 64, offset: 1856)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!207, !114, !207, !114, !207, !207, !7}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3232, file: !15, line: 1953, baseType: !3298, size: 64, offset: 1920)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3232, file: !15, line: 1954, baseType: !3349, size: 64, offset: 1984)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!106, !3352, !7}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !15, line: 1911, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3232, file: !15, line: 1955, baseType: !3355, size: 64, offset: 2048)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!106, !3352, !3254, !7}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3227, file: !15, line: 723, baseType: !841, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !576, file: !15, line: 725, baseType: !3360, size: 64, offset: 2816)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !15, line: 725, flags: DIFlagFwdDecl)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !576, file: !15, line: 726, baseType: !2236, size: 1536, align: 64, offset: 2880)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !576, file: !15, line: 727, baseType: !201, size: 128, offset: 4416)
!3364 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !15, line: 728, baseType: !3365, size: 64, offset: 4544)
!3365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !15, line: 728, size: 64, elements: !3366)
!3366 = !{!3367, !3368, !3371, !3372}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3365, file: !15, line: 729, baseType: !2207, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3365, file: !15, line: 730, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !15, line: 730, flags: DIFlagFwdDecl)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3365, file: !15, line: 731, baseType: !424, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3365, file: !15, line: 732, baseType: !7, size: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !576, file: !15, line: 735, baseType: !112, size: 32, offset: 4608)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !576, file: !15, line: 738, baseType: !112, size: 32, offset: 4640)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !576, file: !15, line: 739, baseType: !3067, size: 64, offset: 4672)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !576, file: !15, line: 750, baseType: !91, size: 64, offset: 4736)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !536, file: !537, line: 91, baseType: !3378, size: 256, offset: 448)
!3378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 256, elements: !2943)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !536, file: !537, line: 94, baseType: !3380, size: 64, offset: 704)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3381, line: 25, size: 64, elements: !3382)
!3381 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3382 = !{!3383}
!3383 = !DIDerivedType(tag: DW_TAG_member, scope: !3380, file: !3381, line: 26, baseType: !3384, size: 64)
!3384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3380, file: !3381, line: 26, size: 64, elements: !3385)
!3385 = !{!3386, !3387}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3384, file: !3381, line: 28, baseType: !320, size: 64, align: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, scope: !3384, file: !3381, line: 30, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3384, file: !3381, line: 30, size: 64, elements: !3389)
!3389 = !{!3390, !3391}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3388, file: !3381, line: 31, baseType: !137, size: 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3388, file: !3381, line: 32, baseType: !106, size: 32, offset: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !536, file: !537, line: 95, baseType: !3082, size: 64, offset: 768)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !536, file: !537, line: 96, baseType: !781, size: 64, offset: 832)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !536, file: !537, line: 97, baseType: !101, size: 64, offset: 896)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !536, file: !537, line: 98, baseType: !91, size: 64, offset: 960)
!3396 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !537, line: 100, baseType: !3397, size: 128, offset: 1024)
!3397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !537, line: 100, size: 128, elements: !3398)
!3398 = !{!3399, !3400}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3397, file: !537, line: 101, baseType: !201, size: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3397, file: !537, line: 102, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !536, file: !537, line: 104, baseType: !201, size: 128, offset: 1152)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !536, file: !537, line: 105, baseType: !201, size: 128, offset: 1280)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !536, file: !537, line: 113, baseType: !3405, size: 128, offset: 1408)
!3405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !537, line: 109, size: 128, elements: !3406)
!3406 = !{!3407, !3408, !3409}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3405, file: !537, line: 110, baseType: !254, size: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3405, file: !537, line: 111, baseType: !551, size: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3405, file: !537, line: 112, baseType: !127, size: 128, align: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !531, file: !532, line: 72, baseType: !781, size: 64, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !531, file: !532, line: 73, baseType: !106, size: 32, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !531, file: !532, line: 74, baseType: !615, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !526, file: !527, line: 10, baseType: !535, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !115, file: !15, line: 1015, baseType: !575, size: 64, offset: 1344)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !115, file: !15, line: 1016, baseType: !3230, size: 64, offset: 1408)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !115, file: !15, line: 1018, baseType: !319, size: 64, offset: 1472)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !115, file: !15, line: 1020, baseType: !91, size: 64, offset: 1536)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !115, file: !15, line: 1023, baseType: !91, size: 64, offset: 1600)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !115, file: !15, line: 1027, baseType: !3420, size: 64, offset: 1664)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !115, file: !15, line: 1029, baseType: !2235, size: 64, offset: 1728)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !115, file: !15, line: 1030, baseType: !2433, size: 32, offset: 1792)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !115, file: !15, line: 1031, baseType: !2433, size: 32, offset: 1824)
!3424 = !{!0, !3425, !3427, !3429}
!3425 = !DIGlobalVariableExpression(var: !3426, expr: !DIExpression())
!3426 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kernel_read_file_from_path282", scope: !2, file: !3, line: 145, type: !91, isLocal: true, isDefinition: true)
!3427 = !DIGlobalVariableExpression(var: !3428, expr: !DIExpression())
!3428 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kernel_read_file_from_path_initns283", scope: !2, file: !3, line: 172, type: !91, isLocal: true, isDefinition: true)
!3429 = !DIGlobalVariableExpression(var: !3430, expr: !DIExpression())
!3430 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kernel_read_file_from_fd284", scope: !2, file: !3, line: 189, type: !91, isLocal: true, isDefinition: true)
!3431 = !{i32 7, !"Dwarf Version", i32 5}
!3432 = !{i32 2, !"Debug Info Version", i32 3}
!3433 = !{i32 1, !"wchar_size", i32 2}
!3434 = !{i32 8, !"cf-protection-branch", i32 1}
!3435 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3436 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3437 = !{i32 1, !"Code Model", i32 2}
!3438 = !{i32 1, !"override-stack-alignment", i32 8}
!3439 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3440 = distinct !DISubprogram(name: "kernel_read_file", scope: !3, file: !3, line: 35, type: !3441, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3444)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!92, !114, !207, !2344, !98, !3443, !74}
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!3444 = !{!3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3459, !3460, !3462, !3463, !3464}
!3445 = !DILocalVariable(name: "file", arg: 1, scope: !3440, file: !3, line: 35, type: !114)
!3446 = !DILocalVariable(name: "offset", arg: 2, scope: !3440, file: !3, line: 35, type: !207)
!3447 = !DILocalVariable(name: "buf", arg: 3, scope: !3440, file: !3, line: 35, type: !2344)
!3448 = !DILocalVariable(name: "buf_size", arg: 4, scope: !3440, file: !3, line: 36, type: !98)
!3449 = !DILocalVariable(name: "file_size", arg: 5, scope: !3440, file: !3, line: 36, type: !3443)
!3450 = !DILocalVariable(name: "id", arg: 6, scope: !3440, file: !3, line: 37, type: !74)
!3451 = !DILocalVariable(name: "i_size", scope: !3440, file: !3, line: 39, type: !207)
!3452 = !DILocalVariable(name: "pos", scope: !3440, file: !3, line: 39, type: !207)
!3453 = !DILocalVariable(name: "copied", scope: !3440, file: !3, line: 40, type: !92)
!3454 = !DILocalVariable(name: "allocated", scope: !3440, file: !3, line: 41, type: !91)
!3455 = !DILocalVariable(name: "whole_file", scope: !3440, file: !3, line: 42, type: !411)
!3456 = !DILocalVariable(name: "ret", scope: !3440, file: !3, line: 43, type: !106)
!3457 = !DILocalVariable(name: "bytes", scope: !3458, file: !3, line: 89, type: !92)
!3458 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 88, column: 28)
!3459 = !DILocalVariable(name: "wanted", scope: !3458, file: !3, line: 90, type: !98)
!3460 = !DILocalVariable(name: "__UNIQUE_ID___x279", scope: !3461, file: !3, line: 90, type: !98)
!3461 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 90, column: 19)
!3462 = !DILocalVariable(name: "__UNIQUE_ID___y280", scope: !3461, file: !3, line: 90, type: !98)
!3463 = !DILabel(scope: !3440, name: "out_free", file: !3, line: 113)
!3464 = !DILabel(scope: !3440, name: "out", file: !3, line: 121)
!3465 = !DILocation(line: 35, column: 39, scope: !3440)
!3466 = !DILocation(line: 35, column: 52, scope: !3440)
!3467 = !DILocation(line: 35, column: 67, scope: !3440)
!3468 = !DILocation(line: 36, column: 12, scope: !3440)
!3469 = !DILocation(line: 36, column: 30, scope: !3440)
!3470 = !DILocation(line: 37, column: 30, scope: !3440)
!3471 = !DILocation(line: 39, column: 2, scope: !3440)
!3472 = !DILocation(line: 39, column: 9, scope: !3440)
!3473 = !DILocation(line: 39, column: 17, scope: !3440)
!3474 = !DILocation(line: 40, column: 2, scope: !3440)
!3475 = !DILocation(line: 40, column: 10, scope: !3440)
!3476 = !DILocation(line: 41, column: 2, scope: !3440)
!3477 = !DILocation(line: 41, column: 8, scope: !3440)
!3478 = !DILocation(line: 42, column: 2, scope: !3440)
!3479 = !DILocation(line: 42, column: 7, scope: !3440)
!3480 = !DILocation(line: 43, column: 2, scope: !3440)
!3481 = !DILocation(line: 43, column: 6, scope: !3440)
!3482 = !DILocation(line: 45, column: 6, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 45, column: 6)
!3484 = !DILocation(line: 45, column: 13, scope: !3483)
!3485 = !DILocation(line: 45, column: 18, scope: !3483)
!3486 = !DILocation(line: 45, column: 24, scope: !3483)
!3487 = !DILocation(line: 45, column: 23, scope: !3483)
!3488 = !DILocation(line: 45, column: 28, scope: !3483)
!3489 = !DILocation(line: 45, column: 32, scope: !3483)
!3490 = !DILocation(line: 45, column: 6, scope: !3440)
!3491 = !DILocation(line: 46, column: 3, scope: !3483)
!3492 = !DILocation(line: 48, column: 7, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 48, column: 6)
!3494 = !DILocation(line: 48, column: 6, scope: !3440)
!3495 = !DILocation(line: 49, column: 3, scope: !3493)
!3496 = !DILocation(line: 51, column: 26, scope: !3440)
!3497 = !DILocation(line: 51, column: 8, scope: !3440)
!3498 = !DILocation(line: 51, column: 6, scope: !3440)
!3499 = !DILocation(line: 52, column: 6, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 52, column: 6)
!3501 = !DILocation(line: 52, column: 6, scope: !3440)
!3502 = !DILocation(line: 53, column: 10, scope: !3500)
!3503 = !DILocation(line: 53, column: 3, scope: !3500)
!3504 = !DILocation(line: 55, column: 34, scope: !3440)
!3505 = !DILocation(line: 55, column: 23, scope: !3440)
!3506 = !DILocation(line: 55, column: 11, scope: !3440)
!3507 = !DILocation(line: 55, column: 9, scope: !3440)
!3508 = !DILocation(line: 56, column: 6, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 56, column: 6)
!3510 = !DILocation(line: 56, column: 13, scope: !3509)
!3511 = !DILocation(line: 56, column: 6, scope: !3440)
!3512 = !DILocation(line: 57, column: 7, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 56, column: 19)
!3514 = !DILocation(line: 58, column: 3, scope: !3513)
!3515 = !DILocation(line: 61, column: 6, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 61, column: 6)
!3517 = !DILocation(line: 61, column: 13, scope: !3516)
!3518 = !DILocation(line: 61, column: 6, scope: !3440)
!3519 = !DILocation(line: 62, column: 7, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 61, column: 26)
!3521 = !DILocation(line: 63, column: 3, scope: !3520)
!3522 = !DILocation(line: 66, column: 7, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 66, column: 6)
!3524 = !DILocation(line: 66, column: 17, scope: !3523)
!3525 = !DILocation(line: 66, column: 20, scope: !3523)
!3526 = !DILocation(line: 66, column: 27, scope: !3523)
!3527 = !DILocation(line: 66, column: 32, scope: !3523)
!3528 = !DILocation(line: 66, column: 35, scope: !3523)
!3529 = !DILocation(line: 66, column: 44, scope: !3523)
!3530 = !DILocation(line: 66, column: 42, scope: !3523)
!3531 = !DILocation(line: 66, column: 6, scope: !3440)
!3532 = !DILocation(line: 67, column: 7, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 66, column: 54)
!3534 = !DILocation(line: 68, column: 3, scope: !3533)
!3535 = !DILocation(line: 71, column: 16, scope: !3440)
!3536 = !DILocation(line: 71, column: 23, scope: !3440)
!3537 = !DILocation(line: 71, column: 28, scope: !3440)
!3538 = !DILocation(line: 71, column: 31, scope: !3440)
!3539 = !DILocation(line: 71, column: 41, scope: !3440)
!3540 = !DILocation(line: 71, column: 38, scope: !3440)
!3541 = !DILocation(line: 0, scope: !3440)
!3542 = !DILocation(line: 71, column: 13, scope: !3440)
!3543 = !DILocation(line: 72, column: 34, scope: !3440)
!3544 = !DILocation(line: 72, column: 40, scope: !3440)
!3545 = !DILocation(line: 72, column: 44, scope: !3440)
!3546 = !{i8 0, i8 2}
!3547 = !DILocation(line: 72, column: 8, scope: !3440)
!3548 = !DILocation(line: 72, column: 6, scope: !3440)
!3549 = !DILocation(line: 73, column: 6, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 73, column: 6)
!3551 = !DILocation(line: 73, column: 6, scope: !3440)
!3552 = !DILocation(line: 74, column: 3, scope: !3550)
!3553 = !DILocation(line: 76, column: 6, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 76, column: 6)
!3555 = !DILocation(line: 76, column: 6, scope: !3440)
!3556 = !DILocation(line: 77, column: 16, scope: !3554)
!3557 = !DILocation(line: 77, column: 4, scope: !3554)
!3558 = !DILocation(line: 77, column: 14, scope: !3554)
!3559 = !DILocation(line: 77, column: 3, scope: !3554)
!3560 = !DILocation(line: 79, column: 8, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 79, column: 6)
!3562 = !DILocation(line: 79, column: 7, scope: !3561)
!3563 = !DILocation(line: 79, column: 6, scope: !3440)
!3564 = !DILocation(line: 80, column: 30, scope: !3561)
!3565 = !DILocation(line: 80, column: 22, scope: !3561)
!3566 = !DILocation(line: 80, column: 20, scope: !3561)
!3567 = !DILocation(line: 80, column: 4, scope: !3561)
!3568 = !DILocation(line: 80, column: 8, scope: !3561)
!3569 = !DILocation(line: 80, column: 3, scope: !3561)
!3570 = !DILocation(line: 81, column: 8, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 81, column: 6)
!3572 = !DILocation(line: 81, column: 7, scope: !3571)
!3573 = !DILocation(line: 81, column: 6, scope: !3440)
!3574 = !DILocation(line: 82, column: 7, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 81, column: 13)
!3576 = !DILocation(line: 83, column: 3, scope: !3575)
!3577 = !DILocation(line: 86, column: 8, scope: !3440)
!3578 = !DILocation(line: 86, column: 6, scope: !3440)
!3579 = !DILocation(line: 87, column: 9, scope: !3440)
!3580 = !DILocation(line: 88, column: 2, scope: !3440)
!3581 = !DILocation(line: 88, column: 9, scope: !3440)
!3582 = !DILocation(line: 88, column: 18, scope: !3440)
!3583 = !DILocation(line: 88, column: 16, scope: !3440)
!3584 = !DILocation(line: 89, column: 3, scope: !3458)
!3585 = !DILocation(line: 89, column: 11, scope: !3458)
!3586 = !DILocation(line: 90, column: 3, scope: !3458)
!3587 = !DILocation(line: 90, column: 10, scope: !3458)
!3588 = !DILocation(line: 90, column: 19, scope: !3461)
!3589 = !DILocation(line: 90, column: 19, scope: !3458)
!3590 = !DILocation(line: 93, column: 23, scope: !3458)
!3591 = !DILocation(line: 93, column: 30, scope: !3458)
!3592 = !DILocation(line: 93, column: 29, scope: !3458)
!3593 = !DILocation(line: 93, column: 36, scope: !3458)
!3594 = !DILocation(line: 93, column: 34, scope: !3458)
!3595 = !DILocation(line: 93, column: 44, scope: !3458)
!3596 = !DILocation(line: 93, column: 11, scope: !3458)
!3597 = !DILocation(line: 93, column: 9, scope: !3458)
!3598 = !DILocation(line: 94, column: 7, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 94, column: 7)
!3600 = !DILocation(line: 94, column: 13, scope: !3599)
!3601 = !DILocation(line: 94, column: 7, scope: !3458)
!3602 = !DILocation(line: 95, column: 10, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 94, column: 18)
!3604 = !DILocation(line: 95, column: 8, scope: !3603)
!3605 = !DILocation(line: 96, column: 4, scope: !3603)
!3606 = !DILocation(line: 99, column: 7, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 99, column: 7)
!3608 = !DILocation(line: 99, column: 13, scope: !3607)
!3609 = !DILocation(line: 99, column: 7, scope: !3458)
!3610 = !DILocation(line: 100, column: 4, scope: !3607)
!3611 = !DILocation(line: 101, column: 13, scope: !3458)
!3612 = !DILocation(line: 101, column: 10, scope: !3458)
!3613 = !DILocation(line: 102, column: 2, scope: !3440)
!3614 = distinct !{!3614, !3580, !3613, !3615, !3616}
!3615 = !{!"llvm.loop.mustprogress"}
!3616 = !{!"llvm.loop.unroll.disable"}
!3617 = !DILocation(line: 104, column: 6, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 104, column: 6)
!3619 = !DILocation(line: 104, column: 6, scope: !3440)
!3620 = !DILocation(line: 105, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 105, column: 7)
!3622 = distinct !DILexicalBlock(scope: !3618, file: !3, line: 104, column: 18)
!3623 = !DILocation(line: 105, column: 14, scope: !3621)
!3624 = !DILocation(line: 105, column: 11, scope: !3621)
!3625 = !DILocation(line: 105, column: 7, scope: !3622)
!3626 = !DILocation(line: 106, column: 8, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 105, column: 22)
!3628 = !DILocation(line: 107, column: 4, scope: !3627)
!3629 = !DILocation(line: 110, column: 40, scope: !3622)
!3630 = !DILocation(line: 110, column: 47, scope: !3622)
!3631 = !DILocation(line: 110, column: 46, scope: !3622)
!3632 = !DILocation(line: 110, column: 52, scope: !3622)
!3633 = !DILocation(line: 110, column: 60, scope: !3622)
!3634 = !DILocation(line: 110, column: 9, scope: !3622)
!3635 = !DILocation(line: 110, column: 7, scope: !3622)
!3636 = !DILocation(line: 111, column: 2, scope: !3622)
!3637 = !DILocation(line: 113, column: 1, scope: !3440)
!3638 = !DILocation(line: 114, column: 6, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 114, column: 6)
!3640 = !DILocation(line: 114, column: 10, scope: !3639)
!3641 = !DILocation(line: 114, column: 6, scope: !3440)
!3642 = !DILocation(line: 115, column: 7, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !3, line: 115, column: 7)
!3644 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 114, column: 15)
!3645 = !DILocation(line: 115, column: 7, scope: !3644)
!3646 = !DILocation(line: 116, column: 11, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 115, column: 18)
!3648 = !DILocation(line: 116, column: 10, scope: !3647)
!3649 = !DILocation(line: 116, column: 4, scope: !3647)
!3650 = !DILocation(line: 117, column: 5, scope: !3647)
!3651 = !DILocation(line: 117, column: 9, scope: !3647)
!3652 = !DILocation(line: 118, column: 3, scope: !3647)
!3653 = !DILocation(line: 119, column: 2, scope: !3644)
!3654 = !DILocation(line: 114, column: 12, scope: !3639)
!3655 = !DILocation(line: 121, column: 1, scope: !3440)
!3656 = !DILocation(line: 122, column: 21, scope: !3440)
!3657 = !DILocation(line: 122, column: 2, scope: !3440)
!3658 = !DILocation(line: 123, column: 9, scope: !3440)
!3659 = !DILocation(line: 123, column: 13, scope: !3440)
!3660 = !DILocation(line: 123, column: 20, scope: !3440)
!3661 = !DILocation(line: 123, column: 29, scope: !3440)
!3662 = !DILocation(line: 123, column: 2, scope: !3440)
!3663 = !DILocation(line: 124, column: 1, scope: !3440)
!3664 = distinct !DISubprogram(name: "file_inode", scope: !15, file: !15, line: 1073, type: !3665, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3669)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!575, !3667}
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!3669 = !{!3670}
!3670 = !DILocalVariable(name: "f", arg: 1, scope: !3664, file: !15, line: 1073, type: !3667)
!3671 = !DILocation(line: 1073, column: 59, scope: !3664)
!3672 = !DILocation(line: 1075, column: 9, scope: !3664)
!3673 = !DILocation(line: 1075, column: 12, scope: !3664)
!3674 = !DILocation(line: 1075, column: 2, scope: !3664)
!3675 = distinct !DISubprogram(name: "deny_write_access", scope: !15, file: !15, line: 2795, type: !3676, scopeLine: 2796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3678)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!106, !114}
!3678 = !{!3679, !3680}
!3679 = !DILocalVariable(name: "file", arg: 1, scope: !3675, file: !15, line: 2795, type: !114)
!3680 = !DILocalVariable(name: "inode", scope: !3675, file: !15, line: 2797, type: !575)
!3681 = !DILocation(line: 2795, column: 50, scope: !3675)
!3682 = !DILocation(line: 2797, column: 2, scope: !3675)
!3683 = !DILocation(line: 2797, column: 16, scope: !3675)
!3684 = !DILocation(line: 2797, column: 35, scope: !3675)
!3685 = !DILocation(line: 2797, column: 24, scope: !3675)
!3686 = !DILocation(line: 2798, column: 37, scope: !3675)
!3687 = !DILocation(line: 2798, column: 44, scope: !3675)
!3688 = !DILocation(line: 2798, column: 9, scope: !3675)
!3689 = !DILocation(line: 2799, column: 1, scope: !3675)
!3690 = !DILocation(line: 2798, column: 2, scope: !3675)
!3691 = distinct !DISubprogram(name: "i_size_read", scope: !15, file: !15, line: 893, type: !3692, scopeLine: 894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!207, !3138}
!3694 = !{!3695}
!3695 = !DILocalVariable(name: "inode", arg: 1, scope: !3691, file: !15, line: 893, type: !3138)
!3696 = !DILocation(line: 893, column: 54, scope: !3691)
!3697 = !DILocation(line: 912, column: 9, scope: !3691)
!3698 = !DILocation(line: 912, column: 16, scope: !3691)
!3699 = !DILocation(line: 912, column: 2, scope: !3691)
!3700 = !DISubprogram(name: "security_kernel_read_file", scope: !3701, file: !3701, line: 421, type: !3702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3701 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!106, !114, !74, !411}
!3704 = !DISubprogram(name: "vmalloc", scope: !2806, file: !2806, line: 140, type: !3705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!91, !101}
!3707 = !DISubprogram(name: "kernel_read", scope: !15, file: !15, line: 2835, type: !3708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!92, !114, !91, !98, !3243}
!3710 = !DISubprogram(name: "security_kernel_post_read_file", scope: !3701, file: !3701, line: 423, type: !3711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!106, !114, !424, !207, !74}
!3713 = !DISubprogram(name: "vfree", scope: !2806, file: !2806, line: 161, type: !3714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{null, !2818}
!3716 = distinct !DISubprogram(name: "allow_write_access", scope: !15, file: !15, line: 2804, type: !2424, scopeLine: 2805, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3717)
!3717 = !{!3718}
!3718 = !DILocalVariable(name: "file", arg: 1, scope: !3716, file: !15, line: 2804, type: !114)
!3719 = !DILocation(line: 2804, column: 52, scope: !3716)
!3720 = !DILocation(line: 2806, column: 6, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3716, file: !15, line: 2806, column: 6)
!3722 = !DILocation(line: 2806, column: 6, scope: !3716)
!3723 = !DILocation(line: 2807, column: 26, scope: !3721)
!3724 = !DILocation(line: 2807, column: 15, scope: !3721)
!3725 = !DILocation(line: 2807, column: 33, scope: !3721)
!3726 = !DILocation(line: 2807, column: 3, scope: !3721)
!3727 = !DILocation(line: 2808, column: 1, scope: !3716)
!3728 = distinct !DISubprogram(name: "kernel_read_file_from_path", scope: !3, file: !3, line: 127, type: !3729, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3731)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!92, !414, !207, !2344, !98, !3443, !74}
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739}
!3732 = !DILocalVariable(name: "path", arg: 1, scope: !3728, file: !3, line: 127, type: !414)
!3733 = !DILocalVariable(name: "offset", arg: 2, scope: !3728, file: !3, line: 127, type: !207)
!3734 = !DILocalVariable(name: "buf", arg: 3, scope: !3728, file: !3, line: 127, type: !2344)
!3735 = !DILocalVariable(name: "buf_size", arg: 4, scope: !3728, file: !3, line: 128, type: !98)
!3736 = !DILocalVariable(name: "file_size", arg: 5, scope: !3728, file: !3, line: 128, type: !3443)
!3737 = !DILocalVariable(name: "id", arg: 6, scope: !3728, file: !3, line: 129, type: !74)
!3738 = !DILocalVariable(name: "file", scope: !3728, file: !3, line: 131, type: !114)
!3739 = !DILocalVariable(name: "ret", scope: !3728, file: !3, line: 132, type: !92)
!3740 = !DILocation(line: 127, column: 48, scope: !3728)
!3741 = !DILocation(line: 127, column: 61, scope: !3728)
!3742 = !DILocation(line: 127, column: 76, scope: !3728)
!3743 = !DILocation(line: 128, column: 15, scope: !3728)
!3744 = !DILocation(line: 128, column: 33, scope: !3728)
!3745 = !DILocation(line: 129, column: 33, scope: !3728)
!3746 = !DILocation(line: 131, column: 2, scope: !3728)
!3747 = !DILocation(line: 131, column: 15, scope: !3728)
!3748 = !DILocation(line: 132, column: 2, scope: !3728)
!3749 = !DILocation(line: 132, column: 10, scope: !3728)
!3750 = !DILocation(line: 134, column: 7, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 134, column: 6)
!3752 = !DILocation(line: 134, column: 12, scope: !3751)
!3753 = !DILocation(line: 134, column: 17, scope: !3751)
!3754 = !DILocation(line: 134, column: 16, scope: !3751)
!3755 = !DILocation(line: 134, column: 6, scope: !3728)
!3756 = !DILocation(line: 135, column: 3, scope: !3751)
!3757 = !DILocation(line: 137, column: 19, scope: !3728)
!3758 = !DILocation(line: 137, column: 9, scope: !3728)
!3759 = !DILocation(line: 137, column: 7, scope: !3728)
!3760 = !DILocation(line: 138, column: 13, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 138, column: 6)
!3762 = !DILocation(line: 138, column: 6, scope: !3761)
!3763 = !DILocation(line: 138, column: 6, scope: !3728)
!3764 = !DILocation(line: 139, column: 18, scope: !3761)
!3765 = !DILocation(line: 139, column: 10, scope: !3761)
!3766 = !DILocation(line: 139, column: 3, scope: !3761)
!3767 = !DILocation(line: 141, column: 25, scope: !3728)
!3768 = !DILocation(line: 141, column: 31, scope: !3728)
!3769 = !DILocation(line: 141, column: 39, scope: !3728)
!3770 = !DILocation(line: 141, column: 44, scope: !3728)
!3771 = !DILocation(line: 141, column: 54, scope: !3728)
!3772 = !DILocation(line: 141, column: 65, scope: !3728)
!3773 = !DILocation(line: 141, column: 8, scope: !3728)
!3774 = !DILocation(line: 141, column: 6, scope: !3728)
!3775 = !DILocation(line: 142, column: 7, scope: !3728)
!3776 = !DILocation(line: 142, column: 2, scope: !3728)
!3777 = !DILocation(line: 143, column: 9, scope: !3728)
!3778 = !DILocation(line: 143, column: 2, scope: !3728)
!3779 = !DILocation(line: 144, column: 1, scope: !3728)
!3780 = !DISubprogram(name: "filp_open", scope: !15, file: !15, line: 2505, type: !3781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!114, !414, !106, !579}
!3783 = distinct !DISubprogram(name: "IS_ERR", scope: !3784, file: !3784, line: 59, type: !3785, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3787)
!3784 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!411, !2818}
!3787 = !{!3788}
!3788 = !DILocalVariable(name: "ptr", arg: 1, scope: !3783, file: !3784, line: 59, type: !2818)
!3789 = !DILocation(line: 59, column: 60, scope: !3783)
!3790 = !DILocation(line: 61, column: 9, scope: !3783)
!3791 = !DILocation(line: 61, column: 2, scope: !3783)
!3792 = distinct !DISubprogram(name: "PTR_ERR", scope: !3784, file: !3784, line: 49, type: !3793, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3795)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!97, !2818}
!3795 = !{!3796}
!3796 = !DILocalVariable(name: "ptr", arg: 1, scope: !3792, file: !3784, line: 49, type: !2818)
!3797 = !DILocation(line: 49, column: 61, scope: !3792)
!3798 = !DILocation(line: 51, column: 16, scope: !3792)
!3799 = !DILocation(line: 51, column: 9, scope: !3792)
!3800 = !DILocation(line: 51, column: 2, scope: !3792)
!3801 = !DISubprogram(name: "fput", scope: !3802, file: !3802, line: 17, type: !2424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3802 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!3803 = distinct !DISubprogram(name: "kernel_read_file_from_path_initns", scope: !3, file: !3, line: 147, type: !3729, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3804)
!3804 = !{!3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813}
!3805 = !DILocalVariable(name: "path", arg: 1, scope: !3803, file: !3, line: 147, type: !414)
!3806 = !DILocalVariable(name: "offset", arg: 2, scope: !3803, file: !3, line: 147, type: !207)
!3807 = !DILocalVariable(name: "buf", arg: 3, scope: !3803, file: !3, line: 148, type: !2344)
!3808 = !DILocalVariable(name: "buf_size", arg: 4, scope: !3803, file: !3, line: 148, type: !98)
!3809 = !DILocalVariable(name: "file_size", arg: 5, scope: !3803, file: !3, line: 149, type: !3443)
!3810 = !DILocalVariable(name: "id", arg: 6, scope: !3803, file: !3, line: 150, type: !74)
!3811 = !DILocalVariable(name: "file", scope: !3803, file: !3, line: 152, type: !114)
!3812 = !DILocalVariable(name: "root", scope: !3803, file: !3, line: 153, type: !526)
!3813 = !DILocalVariable(name: "ret", scope: !3803, file: !3, line: 154, type: !92)
!3814 = !DILocation(line: 147, column: 55, scope: !3803)
!3815 = !DILocation(line: 147, column: 68, scope: !3803)
!3816 = !DILocation(line: 148, column: 15, scope: !3803)
!3817 = !DILocation(line: 148, column: 27, scope: !3803)
!3818 = !DILocation(line: 149, column: 16, scope: !3803)
!3819 = !DILocation(line: 150, column: 33, scope: !3803)
!3820 = !DILocation(line: 152, column: 2, scope: !3803)
!3821 = !DILocation(line: 152, column: 15, scope: !3803)
!3822 = !DILocation(line: 153, column: 2, scope: !3803)
!3823 = !DILocation(line: 153, column: 14, scope: !3803)
!3824 = !DILocation(line: 154, column: 2, scope: !3803)
!3825 = !DILocation(line: 154, column: 10, scope: !3803)
!3826 = !DILocation(line: 156, column: 7, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 156, column: 6)
!3828 = !DILocation(line: 156, column: 12, scope: !3827)
!3829 = !DILocation(line: 156, column: 17, scope: !3827)
!3830 = !DILocation(line: 156, column: 16, scope: !3827)
!3831 = !DILocation(line: 156, column: 6, scope: !3803)
!3832 = !DILocation(line: 157, column: 3, scope: !3827)
!3833 = !DILocation(line: 159, column: 2, scope: !3803)
!3834 = !DILocation(line: 160, column: 24, scope: !3803)
!3835 = !DILocation(line: 160, column: 2, scope: !3803)
!3836 = !DILocation(line: 161, column: 2, scope: !3803)
!3837 = !DILocation(line: 163, column: 31, scope: !3803)
!3838 = !DILocation(line: 163, column: 9, scope: !3803)
!3839 = !DILocation(line: 163, column: 7, scope: !3803)
!3840 = !DILocation(line: 164, column: 2, scope: !3803)
!3841 = !DILocation(line: 165, column: 13, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 165, column: 6)
!3843 = !DILocation(line: 165, column: 6, scope: !3842)
!3844 = !DILocation(line: 165, column: 6, scope: !3803)
!3845 = !DILocation(line: 166, column: 18, scope: !3842)
!3846 = !DILocation(line: 166, column: 10, scope: !3842)
!3847 = !DILocation(line: 166, column: 3, scope: !3842)
!3848 = !DILocation(line: 168, column: 25, scope: !3803)
!3849 = !DILocation(line: 168, column: 31, scope: !3803)
!3850 = !DILocation(line: 168, column: 39, scope: !3803)
!3851 = !DILocation(line: 168, column: 44, scope: !3803)
!3852 = !DILocation(line: 168, column: 54, scope: !3803)
!3853 = !DILocation(line: 168, column: 65, scope: !3803)
!3854 = !DILocation(line: 168, column: 8, scope: !3803)
!3855 = !DILocation(line: 168, column: 6, scope: !3803)
!3856 = !DILocation(line: 169, column: 7, scope: !3803)
!3857 = !DILocation(line: 169, column: 2, scope: !3803)
!3858 = !DILocation(line: 170, column: 9, scope: !3803)
!3859 = !DILocation(line: 170, column: 2, scope: !3803)
!3860 = !DILocation(line: 171, column: 1, scope: !3803)
!3861 = distinct !DISubprogram(name: "task_lock", scope: !3862, file: !3862, line: 220, type: !3863, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3865)
!3862 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !1193}
!3865 = !{!3866}
!3866 = !DILocalVariable(name: "p", arg: 1, scope: !3861, file: !3862, line: 220, type: !1193)
!3867 = !DILocation(line: 220, column: 50, scope: !3861)
!3868 = !DILocation(line: 222, column: 13, scope: !3861)
!3869 = !DILocation(line: 222, column: 16, scope: !3861)
!3870 = !DILocation(line: 222, column: 2, scope: !3861)
!3871 = !DILocation(line: 223, column: 1, scope: !3861)
!3872 = distinct !DISubprogram(name: "get_fs_root", scope: !1794, file: !1794, line: 27, type: !3873, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !1792, !3129}
!3875 = !{!3876, !3877}
!3876 = !DILocalVariable(name: "fs", arg: 1, scope: !3872, file: !1794, line: 27, type: !1792)
!3877 = !DILocalVariable(name: "root", arg: 2, scope: !3872, file: !1794, line: 27, type: !3129)
!3878 = !DILocation(line: 27, column: 50, scope: !3872)
!3879 = !DILocation(line: 27, column: 67, scope: !3872)
!3880 = !DILocation(line: 29, column: 13, scope: !3872)
!3881 = !DILocation(line: 29, column: 17, scope: !3872)
!3882 = !DILocation(line: 29, column: 2, scope: !3872)
!3883 = !DILocation(line: 30, column: 3, scope: !3872)
!3884 = !DILocation(line: 30, column: 10, scope: !3872)
!3885 = !DILocation(line: 30, column: 14, scope: !3872)
!3886 = !DILocation(line: 31, column: 11, scope: !3872)
!3887 = !DILocation(line: 31, column: 2, scope: !3872)
!3888 = !DILocation(line: 32, column: 15, scope: !3872)
!3889 = !DILocation(line: 32, column: 19, scope: !3872)
!3890 = !DILocation(line: 32, column: 2, scope: !3872)
!3891 = !DILocation(line: 33, column: 1, scope: !3872)
!3892 = distinct !DISubprogram(name: "task_unlock", scope: !3862, file: !3862, line: 225, type: !3863, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3893)
!3893 = !{!3894}
!3894 = !DILocalVariable(name: "p", arg: 1, scope: !3892, file: !3862, line: 225, type: !1193)
!3895 = !DILocation(line: 225, column: 52, scope: !3892)
!3896 = !DILocation(line: 227, column: 15, scope: !3892)
!3897 = !DILocation(line: 227, column: 18, scope: !3892)
!3898 = !DILocation(line: 227, column: 2, scope: !3892)
!3899 = !DILocation(line: 228, column: 1, scope: !3892)
!3900 = !DISubprogram(name: "file_open_root", scope: !15, file: !15, line: 2506, type: !3901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!114, !697, !414, !106, !579}
!3903 = !DISubprogram(name: "path_put", scope: !527, file: !527, line: 14, type: !3904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{null, !697}
!3906 = distinct !DISubprogram(name: "kernel_read_file_from_fd", scope: !3, file: !3, line: 174, type: !3907, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3909)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!92, !106, !207, !2344, !98, !3443, !74}
!3909 = !{!3910, !3911, !3912, !3913, !3914, !3915, !3916, !3921, !3922}
!3910 = !DILocalVariable(name: "fd", arg: 1, scope: !3906, file: !3, line: 174, type: !106)
!3911 = !DILocalVariable(name: "offset", arg: 2, scope: !3906, file: !3, line: 174, type: !207)
!3912 = !DILocalVariable(name: "buf", arg: 3, scope: !3906, file: !3, line: 174, type: !2344)
!3913 = !DILocalVariable(name: "buf_size", arg: 4, scope: !3906, file: !3, line: 175, type: !98)
!3914 = !DILocalVariable(name: "file_size", arg: 5, scope: !3906, file: !3, line: 175, type: !3443)
!3915 = !DILocalVariable(name: "id", arg: 6, scope: !3906, file: !3, line: 176, type: !74)
!3916 = !DILocalVariable(name: "f", scope: !3906, file: !3, line: 178, type: !3917)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fd", file: !3802, line: 36, size: 128, elements: !3918)
!3918 = !{!3919, !3920}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3917, file: !3802, line: 37, baseType: !114, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3917, file: !3802, line: 38, baseType: !7, size: 32, offset: 64)
!3921 = !DILocalVariable(name: "ret", scope: !3906, file: !3, line: 179, type: !92)
!3922 = !DILabel(scope: !3906, name: "out", file: !3, line: 185)
!3923 = !DILocation(line: 174, column: 38, scope: !3906)
!3924 = !DILocation(line: 174, column: 49, scope: !3906)
!3925 = !DILocation(line: 174, column: 64, scope: !3906)
!3926 = !DILocation(line: 175, column: 13, scope: !3906)
!3927 = !DILocation(line: 175, column: 31, scope: !3906)
!3928 = !DILocation(line: 176, column: 31, scope: !3906)
!3929 = !DILocation(line: 178, column: 2, scope: !3906)
!3930 = !DILocation(line: 178, column: 12, scope: !3906)
!3931 = !DILocation(line: 178, column: 22, scope: !3906)
!3932 = !DILocation(line: 178, column: 16, scope: !3906)
!3933 = !DILocation(line: 179, column: 2, scope: !3906)
!3934 = !DILocation(line: 179, column: 10, scope: !3906)
!3935 = !DILocation(line: 181, column: 9, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 181, column: 6)
!3937 = !DILocation(line: 181, column: 7, scope: !3936)
!3938 = !DILocation(line: 181, column: 14, scope: !3936)
!3939 = !DILocation(line: 181, column: 21, scope: !3936)
!3940 = !DILocation(line: 181, column: 27, scope: !3936)
!3941 = !DILocation(line: 181, column: 34, scope: !3936)
!3942 = !DILocation(line: 181, column: 6, scope: !3906)
!3943 = !DILocation(line: 182, column: 3, scope: !3936)
!3944 = !DILocation(line: 184, column: 27, scope: !3906)
!3945 = !DILocation(line: 184, column: 33, scope: !3906)
!3946 = !DILocation(line: 184, column: 41, scope: !3906)
!3947 = !DILocation(line: 184, column: 46, scope: !3906)
!3948 = !DILocation(line: 184, column: 56, scope: !3906)
!3949 = !DILocation(line: 184, column: 67, scope: !3906)
!3950 = !DILocation(line: 184, column: 8, scope: !3906)
!3951 = !DILocation(line: 184, column: 6, scope: !3906)
!3952 = !DILocation(line: 184, column: 2, scope: !3906)
!3953 = !DILocation(line: 185, column: 1, scope: !3906)
!3954 = !DILocation(line: 186, column: 2, scope: !3906)
!3955 = !DILocation(line: 187, column: 9, scope: !3906)
!3956 = !DILocation(line: 188, column: 1, scope: !3906)
!3957 = !DILocation(line: 187, column: 2, scope: !3906)
!3958 = distinct !DISubprogram(name: "fdget", scope: !3802, file: !3802, line: 62, type: !3959, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3961)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!3917, !7}
!3961 = !{!3962}
!3962 = !DILocalVariable(name: "fd", arg: 1, scope: !3958, file: !3802, line: 62, type: !7)
!3963 = !DILocation(line: 62, column: 44, scope: !3958)
!3964 = !DILocation(line: 64, column: 25, scope: !3958)
!3965 = !DILocation(line: 64, column: 17, scope: !3958)
!3966 = !DILocation(line: 64, column: 9, scope: !3958)
!3967 = !DILocation(line: 64, column: 2, scope: !3958)
!3968 = distinct !DISubprogram(name: "fdput", scope: !3802, file: !3802, line: 43, type: !3969, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3971)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{null, !3917}
!3971 = !{!3972}
!3972 = !DILocalVariable(name: "fd", arg: 1, scope: !3968, file: !3802, line: 43, type: !3917)
!3973 = !DILocation(line: 43, column: 36, scope: !3968)
!3974 = !DILocation(line: 45, column: 9, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3968, file: !3802, line: 45, column: 6)
!3976 = !DILocation(line: 45, column: 15, scope: !3975)
!3977 = !DILocation(line: 45, column: 6, scope: !3968)
!3978 = !DILocation(line: 46, column: 11, scope: !3975)
!3979 = !DILocation(line: 46, column: 3, scope: !3975)
!3980 = !DILocation(line: 47, column: 1, scope: !3968)
!3981 = distinct !DISubprogram(name: "atomic_dec_unless_positive", scope: !3982, file: !3982, line: 1558, type: !3983, scopeLine: 1559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3986)
!3982 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!411, !3985}
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!3986 = !{!3987}
!3987 = !DILocalVariable(name: "v", arg: 1, scope: !3981, file: !3982, line: 1558, type: !3985)
!3988 = !DILocation(line: 1558, column: 38, scope: !3981)
!3989 = !DILocation(line: 1560, column: 2, scope: !3981)
!3990 = !DILocation(line: 1560, column: 2, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3981, file: !3982, line: 1560, column: 2)
!3992 = !DILocation(line: 1561, column: 31, scope: !3981)
!3993 = !DILocation(line: 1561, column: 2, scope: !3981)
!3994 = !DILocation(line: 1562, column: 40, scope: !3981)
!3995 = !DILocation(line: 1562, column: 9, scope: !3981)
!3996 = !DILocation(line: 1562, column: 2, scope: !3981)
!3997 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3998, file: !3998, line: 94, type: !3999, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4004)
!3998 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !4001, !98}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4003)
!4003 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4004 = !{!4005, !4006}
!4005 = !DILocalVariable(name: "v", arg: 1, scope: !3997, file: !3998, line: 94, type: !4001)
!4006 = !DILocalVariable(name: "size", arg: 2, scope: !3997, file: !3998, line: 94, type: !98)
!4007 = !DILocation(line: 94, column: 79, scope: !3997)
!4008 = !DILocation(line: 94, column: 89, scope: !3997)
!4009 = !DILocation(line: 96, column: 20, scope: !3997)
!4010 = !DILocation(line: 96, column: 23, scope: !3997)
!4011 = !DILocation(line: 96, column: 2, scope: !3997)
!4012 = !DILocation(line: 97, column: 2, scope: !3997)
!4013 = !DILocation(line: 98, column: 1, scope: !3997)
!4014 = distinct !DISubprogram(name: "raw_atomic_dec_unless_positive", scope: !4015, file: !4015, line: 2495, type: !3983, scopeLine: 2496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4016)
!4015 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "v", arg: 1, scope: !4014, file: !4015, line: 2495, type: !3985)
!4018 = !DILocalVariable(name: "c", scope: !4014, file: !4015, line: 2500, type: !106)
!4019 = !DILocation(line: 2495, column: 42, scope: !4014)
!4020 = !DILocation(line: 2500, column: 2, scope: !4014)
!4021 = !DILocation(line: 2500, column: 6, scope: !4014)
!4022 = !DILocation(line: 2500, column: 26, scope: !4014)
!4023 = !DILocation(line: 2500, column: 10, scope: !4014)
!4024 = !DILocation(line: 2502, column: 2, scope: !4014)
!4025 = !DILocation(line: 2503, column: 7, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4027, file: !4015, line: 2503, column: 7)
!4027 = distinct !DILexicalBlock(scope: !4014, file: !4015, line: 2502, column: 5)
!4028 = !DILocation(line: 2503, column: 7, scope: !4027)
!4029 = !DILocation(line: 2504, column: 4, scope: !4026)
!4030 = !DILocation(line: 2505, column: 2, scope: !4027)
!4031 = !DILocation(line: 2505, column: 35, scope: !4014)
!4032 = !DILocation(line: 2505, column: 42, scope: !4014)
!4033 = !DILocation(line: 2505, column: 44, scope: !4014)
!4034 = !DILocation(line: 2505, column: 12, scope: !4014)
!4035 = !DILocation(line: 2505, column: 11, scope: !4014)
!4036 = distinct !{!4036, !4024, !4037, !3615, !3616}
!4037 = !DILocation(line: 2505, column: 48, scope: !4014)
!4038 = !DILocation(line: 2507, column: 2, scope: !4014)
!4039 = !DILocation(line: 2509, column: 1, scope: !4014)
!4040 = distinct !DISubprogram(name: "kasan_check_write", scope: !4041, file: !4041, line: 44, type: !4042, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4044)
!4041 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!411, !4001, !7}
!4044 = !{!4045, !4046}
!4045 = !DILocalVariable(name: "p", arg: 1, scope: !4040, file: !4041, line: 44, type: !4001)
!4046 = !DILocalVariable(name: "size", arg: 2, scope: !4040, file: !4041, line: 44, type: !7)
!4047 = !DILocation(line: 44, column: 59, scope: !4040)
!4048 = !DILocation(line: 44, column: 75, scope: !4040)
!4049 = !DILocation(line: 46, column: 2, scope: !4040)
!4050 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4051, file: !4051, line: 229, type: !4052, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4054)
!4051 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4052 = !DISubroutineType(types: !4053)
!4053 = !{null, !4001, !98, !106}
!4054 = !{!4055, !4056, !4057}
!4055 = !DILocalVariable(name: "ptr", arg: 1, scope: !4050, file: !4051, line: 229, type: !4001)
!4056 = !DILocalVariable(name: "size", arg: 2, scope: !4050, file: !4051, line: 229, type: !98)
!4057 = !DILocalVariable(name: "type", arg: 3, scope: !4050, file: !4051, line: 230, type: !106)
!4058 = !DILocation(line: 229, column: 60, scope: !4050)
!4059 = !DILocation(line: 229, column: 72, scope: !4050)
!4060 = !DILocation(line: 230, column: 15, scope: !4050)
!4061 = !DILocation(line: 230, column: 23, scope: !4050)
!4062 = distinct !DISubprogram(name: "raw_atomic_read", scope: !4015, file: !4015, line: 442, type: !4063, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4067)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!106, !4065}
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!4067 = !{!4068}
!4068 = !DILocalVariable(name: "v", arg: 1, scope: !4062, file: !4015, line: 442, type: !4065)
!4069 = !DILocation(line: 442, column: 33, scope: !4062)
!4070 = !DILocation(line: 444, column: 26, scope: !4062)
!4071 = !DILocation(line: 444, column: 9, scope: !4062)
!4072 = !DILocation(line: 444, column: 2, scope: !4062)
!4073 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg", scope: !4015, file: !4015, line: 2109, type: !4074, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4076)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!411, !3985, !107, !106}
!4076 = !{!4077, !4078, !4079}
!4077 = !DILocalVariable(name: "v", arg: 1, scope: !4073, file: !4015, line: 2109, type: !3985)
!4078 = !DILocalVariable(name: "old", arg: 2, scope: !4073, file: !4015, line: 2109, type: !107)
!4079 = !DILocalVariable(name: "new", arg: 3, scope: !4073, file: !4015, line: 2109, type: !106)
!4080 = !DILocation(line: 2109, column: 34, scope: !4073)
!4081 = !DILocation(line: 2109, column: 42, scope: !4073)
!4082 = !DILocation(line: 2109, column: 51, scope: !4073)
!4083 = !DILocation(line: 2112, column: 33, scope: !4073)
!4084 = !DILocation(line: 2112, column: 36, scope: !4073)
!4085 = !DILocation(line: 2112, column: 41, scope: !4073)
!4086 = !DILocation(line: 2112, column: 9, scope: !4073)
!4087 = !DILocation(line: 2112, column: 2, scope: !4073)
!4088 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4089, file: !4089, line: 17, type: !4063, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4090)
!4089 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4090 = !{!4091}
!4091 = !DILocalVariable(name: "v", arg: 1, scope: !4088, file: !4089, line: 17, type: !4065)
!4092 = !DILocation(line: 17, column: 61, scope: !4088)
!4093 = !DILocation(line: 23, column: 9, scope: !4088)
!4094 = !DILocation(line: 23, column: 2, scope: !4088)
!4095 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !4089, file: !4089, line: 113, type: !4074, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4096)
!4096 = !{!4097, !4098, !4099, !4100, !4102, !4103, !4104, !4105}
!4097 = !DILocalVariable(name: "v", arg: 1, scope: !4095, file: !4089, line: 113, type: !3985)
!4098 = !DILocalVariable(name: "old", arg: 2, scope: !4095, file: !4089, line: 113, type: !107)
!4099 = !DILocalVariable(name: "new", arg: 3, scope: !4095, file: !4089, line: 113, type: !106)
!4100 = !DILocalVariable(name: "success", scope: !4101, file: !4089, line: 115, type: !411)
!4101 = distinct !DILexicalBlock(scope: !4095, file: !4089, line: 115, column: 9)
!4102 = !DILocalVariable(name: "_old", scope: !4101, file: !4089, line: 115, type: !107)
!4103 = !DILocalVariable(name: "__old", scope: !4101, file: !4089, line: 115, type: !106)
!4104 = !DILocalVariable(name: "__new", scope: !4101, file: !4089, line: 115, type: !106)
!4105 = !DILocalVariable(name: "__ptr", scope: !4101, file: !4089, line: 115, type: !108)
!4106 = !DILocation(line: 113, column: 63, scope: !4095)
!4107 = !DILocation(line: 113, column: 71, scope: !4095)
!4108 = !DILocation(line: 113, column: 80, scope: !4095)
!4109 = !DILocation(line: 115, column: 9, scope: !4101)
!4110 = !{i64 2148994638, i64 2148994677, i64 2148994698, i64 2148994735, i64 2148994758, i64 2148994767, i64 2148995065}
!4111 = !DILocation(line: 115, column: 9, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4101, file: !4089, line: 115, column: 9)
!4113 = !DILocation(line: 115, column: 9, scope: !4095)
!4114 = !DILocation(line: 115, column: 2, scope: !4095)
!4115 = distinct !DISubprogram(name: "atomic_inc", scope: !3982, file: !3982, line: 433, type: !4116, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4118)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !3985}
!4118 = !{!4119}
!4119 = !DILocalVariable(name: "v", arg: 1, scope: !4115, file: !3982, line: 433, type: !3985)
!4120 = !DILocation(line: 433, column: 22, scope: !4115)
!4121 = !DILocation(line: 435, column: 31, scope: !4115)
!4122 = !DILocation(line: 435, column: 2, scope: !4115)
!4123 = !DILocation(line: 436, column: 17, scope: !4115)
!4124 = !DILocation(line: 436, column: 2, scope: !4115)
!4125 = !DILocation(line: 437, column: 1, scope: !4115)
!4126 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !4015, file: !4015, line: 976, type: !4116, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4127)
!4127 = !{!4128}
!4128 = !DILocalVariable(name: "v", arg: 1, scope: !4126, file: !4015, line: 976, type: !3985)
!4129 = !DILocation(line: 976, column: 26, scope: !4126)
!4130 = !DILocation(line: 979, column: 18, scope: !4126)
!4131 = !DILocation(line: 979, column: 2, scope: !4126)
!4132 = !DILocation(line: 983, column: 1, scope: !4126)
!4133 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !4089, file: !4089, line: 51, type: !4116, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4134)
!4134 = !{!4135}
!4135 = !DILocalVariable(name: "v", arg: 1, scope: !4133, file: !4089, line: 51, type: !3985)
!4136 = !DILocation(line: 51, column: 55, scope: !4133)
!4137 = !DILocation(line: 54, column: 16, scope: !4133)
!4138 = !DILocation(line: 54, column: 19, scope: !4133)
!4139 = !DILocation(line: 53, column: 2, scope: !4133)
!4140 = !{i64 2148976258, i64 2148976297, i64 2148976318, i64 2148976355, i64 2148976378, i64 2148976248}
!4141 = !DILocation(line: 55, column: 1, scope: !4133)
!4142 = distinct !DISubprogram(name: "spin_lock", scope: !4143, file: !4143, line: 349, type: !4144, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4146)
!4143 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4144 = !DISubroutineType(types: !4145)
!4145 = !{null, !2666}
!4146 = !{!4147}
!4147 = !DILocalVariable(name: "lock", arg: 1, scope: !4142, file: !4143, line: 349, type: !2666)
!4148 = !DILocation(line: 349, column: 51, scope: !4142)
!4149 = !DILocation(line: 351, column: 2, scope: !4142)
!4150 = !DILocation(line: 352, column: 1, scope: !4142)
!4151 = !DISubprogram(name: "_raw_spin_lock", scope: !4152, file: !4152, line: 22, type: !4153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4152 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4153 = !DISubroutineType(types: !4154)
!4154 = !{null, !4155}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!4156 = !DISubprogram(name: "path_get", scope: !527, file: !527, line: 13, type: !3904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4157 = distinct !DISubprogram(name: "spin_unlock", scope: !4143, file: !4143, line: 389, type: !4144, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4158)
!4158 = !{!4159}
!4159 = !DILocalVariable(name: "lock", arg: 1, scope: !4157, file: !4143, line: 389, type: !2666)
!4160 = !DILocation(line: 389, column: 53, scope: !4157)
!4161 = !DILocation(line: 391, column: 2, scope: !4157)
!4162 = !DILocation(line: 392, column: 1, scope: !4157)
!4163 = !DISubprogram(name: "_raw_spin_unlock", scope: !4152, file: !4152, line: 39, type: !4153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4164 = distinct !DISubprogram(name: "__to_fd", scope: !3802, file: !3802, line: 57, type: !4165, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4167)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!3917, !101}
!4167 = !{!4168}
!4168 = !DILocalVariable(name: "v", arg: 1, scope: !4164, file: !3802, line: 57, type: !101)
!4169 = !DILocation(line: 57, column: 47, scope: !4164)
!4170 = !DILocation(line: 59, column: 20, scope: !4164)
!4171 = !DILocation(line: 59, column: 37, scope: !4164)
!4172 = !DILocation(line: 59, column: 39, scope: !4164)
!4173 = !DILocation(line: 59, column: 21, scope: !4164)
!4174 = !DILocation(line: 59, column: 45, scope: !4164)
!4175 = !DILocation(line: 59, column: 47, scope: !4164)
!4176 = !DILocation(line: 59, column: 2, scope: !4164)
!4177 = !DISubprogram(name: "__fdget", scope: !3802, file: !3802, line: 52, type: !4178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!101, !7}
