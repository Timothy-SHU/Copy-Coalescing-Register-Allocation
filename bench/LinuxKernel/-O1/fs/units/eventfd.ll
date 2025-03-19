; ModuleID = 'fs/eventfd.c'
source_filename = "fs/eventfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_eventfd_signal: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad eventfd_signal ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_eventfd_ctx_put: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad eventfd_ctx_put ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_eventfd_ctx_do_read: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad eventfd_ctx_do_read ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_eventfd_ctx_remove_wait_queue: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad eventfd_ctx_remove_wait_queue ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_eventfd_fget: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad eventfd_fget ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_eventfd_ctx_fdget: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad eventfd_ctx_fdget ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_eventfd_ctx_fileget: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad eventfd_ctx_fileget ; .previous"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.24 }
%union.anon.24 = type { %struct.anon.25, [16 x i8] }
%struct.anon.25 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.eventfd_ctx = type { %struct.kref, %struct.wait_queue_head, i64, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.19, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.20, %struct.qspinlock }
%union.anon.20 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.fd = type { ptr, i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.22, i64, i64, %union.anon.23 }
%union.anon.22 = type { i64 }
%union.anon.23 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, %union.anon.26 }
%union.anon.26 = type { ptr }
%struct.iov_iter = type { i8, i8, i8, i8, i8, %union.anon.27, %union.anon.28, %union.anon.31 }
%union.anon.27 = type { i64 }
%union.anon.28 = type { %struct.iovec }
%struct.iovec = type { ptr, i64 }
%union.anon.31 = type { i64 }
%struct.anon.29 = type { %union.anon.30, i64 }
%union.anon.30 = type { ptr }
%struct.poll_table_struct = type { ptr, i32 }

@.str = private unnamed_addr constant [13 x i8] c"fs/eventfd.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_eventfd_signal314 = internal global ptr @eventfd_signal, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_eventfd_ctx_put315 = internal global ptr @eventfd_ctx_put, section ".discard.addressable", align 8, !dbg !5879
@__UNIQUE_ID___addressable_eventfd_ctx_do_read317 = internal global ptr @eventfd_ctx_do_read, section ".discard.addressable", align 8, !dbg !5881
@__UNIQUE_ID___addressable_eventfd_ctx_remove_wait_queue318 = internal global ptr @eventfd_ctx_remove_wait_queue, section ".discard.addressable", align 8, !dbg !5883
@eventfd_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @eventfd_write, ptr @eventfd_read, ptr null, ptr null, ptr null, ptr @eventfd_poll, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr @eventfd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @eventfd_show_fdinfo, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5896
@__UNIQUE_ID___addressable_eventfd_fget321 = internal global ptr @eventfd_fget, section ".discard.addressable", align 8, !dbg !5885
@__UNIQUE_ID___addressable_eventfd_ctx_fdget322 = internal global ptr @eventfd_ctx_fdget, section ".discard.addressable", align 8, !dbg !5887
@__UNIQUE_ID___addressable_eventfd_ctx_fileget323 = internal global ptr @eventfd_ctx_fileget, section ".discard.addressable", align 8, !dbg !5889
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@eventfd_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 67108869, ptr null } }, align 8, !dbg !5891
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !5898
@.str.2 = private unnamed_addr constant [23 x i8] c"eventfd-count: %16llx\0A\00", align 1, !dbg !5904
@.str.3 = private unnamed_addr constant [16 x i8] c"eventfd-id: %d\0A\00", align 1, !dbg !5909
@.str.4 = private unnamed_addr constant [23 x i8] c"eventfd-semaphore: %d\0A\00", align 1, !dbg !5911
@do_eventfd.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5913
@.str.5 = private unnamed_addr constant [10 x i8] c"&ctx->wqh\00", align 1, !dbg !5925
@.str.6 = private unnamed_addr constant [10 x i8] c"[eventfd]\00", align 1, !dbg !5928
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5930
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_eventfd_signal314, ptr @__UNIQUE_ID___addressable_eventfd_ctx_put315, ptr @__UNIQUE_ID___addressable_eventfd_ctx_do_read317, ptr @__UNIQUE_ID___addressable_eventfd_ctx_remove_wait_queue318, ptr @__UNIQUE_ID___addressable_eventfd_fget321, ptr @__UNIQUE_ID___addressable_eventfd_ctx_fdget322, ptr @__UNIQUE_ID___addressable_eventfd_ctx_fileget323], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @eventfd_signal_mask(ptr noundef %ctx, i64 noundef %n, i32 noundef %mask) #0 align 16 !dbg !5944 {
entry:
  %retval = alloca i64, align 8
  %ctx.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %mask.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp30 = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5948, metadata !DIExpression()), !dbg !5963
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5949, metadata !DIExpression()), !dbg !5964
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5950, metadata !DIExpression()), !dbg !5965
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !5966
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5951, metadata !DIExpression()), !dbg !5967
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5968
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5952, metadata !DIExpression()), !dbg !5968
  %call = call ptr @get_current() #15, !dbg !5968
  %in_eventfd = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 59, !dbg !5968
  %bf.load = load i16, ptr %in_eventfd, align 16, !dbg !5968
  %bf.lshr = lshr i16 %bf.load, 7, !dbg !5968
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5968
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5968
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5968
  %lnot = xor i1 %tobool, true, !dbg !5968
  %lnot1 = xor i1 %lnot, true, !dbg !5968
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5968
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5968
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !5969
  %tobool2 = icmp ne i32 %0, 0, !dbg !5969
  %lnot3 = xor i1 %tobool2, true, !dbg !5969
  %lnot5 = xor i1 %lnot3, true, !dbg !5969
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5969
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5969
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5969
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5969
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5968

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5969

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !5970
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5955, metadata !DIExpression()), !dbg !5970
  store i32 2307, ptr %__flags, align 4, !dbg !5970
  br label %do.body8, !dbg !5970

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5971

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5971

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5970

do.body9:                                         ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !5973
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 58, i32 %1, i64 12) #14, !dbg !5973, !srcloc !5975
  br label %do.cond10, !dbg !5973

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5973

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5970

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5976

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5976

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !5969
  br label %do.cond15, !dbg !5970

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5970

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5970

if.end:                                           ; preds = %do.end16, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5968
  %tobool17 = icmp ne i32 %2, 0, !dbg !5968
  %lnot18 = xor i1 %tobool17, true, !dbg !5968
  %lnot20 = xor i1 %lnot18, true, !dbg !5968
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5968
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5968
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5968
  store i64 %expval23, ptr %tmp, align 8, !dbg !5969
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5978
  %3 = load i64, ptr %tmp, align 8, !dbg !5968
  %tobool24 = icmp ne i64 %3, 0, !dbg !5978
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5979

if.then25:                                        ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !5980
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5980

if.end26:                                         ; preds = %if.end
  br label %do.body27, !dbg !5981

do.body27:                                        ; preds = %if.end26
  br label %do.body28, !dbg !5982

do.body28:                                        ; preds = %do.body27
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !5983
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5958, metadata !DIExpression()), !dbg !5983
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !5983
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5962, metadata !DIExpression()), !dbg !5983
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5983
  %conv29 = zext i1 %cmp to i32, !dbg !5983
  store i32 1, ptr %tmp30, align 4, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !5984
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !5984
  %4 = load i32, ptr %tmp30, align 4, !dbg !5983
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !5984
  %wqh = getelementptr inbounds %struct.eventfd_ctx, ptr %5, i32 0, i32 1, !dbg !5984
  %lock = getelementptr inbounds %struct.wait_queue_head, ptr %wqh, i32 0, i32 0, !dbg !5984
  %call31 = call ptr @spinlock_check(ptr noundef %lock) #15, !dbg !5984
  %call32 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call31) #15, !dbg !5984
  store i64 %call32, ptr %flags, align 8, !dbg !5984
  br label %do.cond33, !dbg !5984

do.cond33:                                        ; preds = %do.body28
  br label %do.end34, !dbg !5984

do.end34:                                         ; preds = %do.cond33
  br label %do.cond35, !dbg !5982

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5982

do.end36:                                         ; preds = %do.cond35
  %call37 = call ptr @get_current() #15, !dbg !5985
  %in_eventfd38 = getelementptr inbounds %struct.task_struct, ptr %call37, i32 0, i32 59, !dbg !5986
  %bf.load39 = load i16, ptr %in_eventfd38, align 16, !dbg !5987
  %bf.clear40 = and i16 %bf.load39, -129, !dbg !5987
  %bf.set = or i16 %bf.clear40, 128, !dbg !5987
  store i16 %bf.set, ptr %in_eventfd38, align 16, !dbg !5987
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !5988
  %count = getelementptr inbounds %struct.eventfd_ctx, ptr %6, i32 0, i32 2, !dbg !5990
  %7 = load i64, ptr %count, align 8, !dbg !5990
  %sub = sub i64 -1, %7, !dbg !5991
  %8 = load i64, ptr %n.addr, align 8, !dbg !5992
  %cmp41 = icmp ult i64 %sub, %8, !dbg !5993
  br i1 %cmp41, label %if.then43, label %if.end46, !dbg !5994

if.then43:                                        ; preds = %do.end36
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !5995
  %count44 = getelementptr inbounds %struct.eventfd_ctx, ptr %9, i32 0, i32 2, !dbg !5996
  %10 = load i64, ptr %count44, align 8, !dbg !5996
  %sub45 = sub i64 -1, %10, !dbg !5997
  store i64 %sub45, ptr %n.addr, align 8, !dbg !5998
  br label %if.end46, !dbg !5999

if.end46:                                         ; preds = %if.then43, %do.end36
  %11 = load i64, ptr %n.addr, align 8, !dbg !6000
  %12 = load ptr, ptr %ctx.addr, align 8, !dbg !6001
  %count47 = getelementptr inbounds %struct.eventfd_ctx, ptr %12, i32 0, i32 2, !dbg !6002
  %13 = load i64, ptr %count47, align 8, !dbg !6003
  %add = add i64 %13, %11, !dbg !6003
  store i64 %add, ptr %count47, align 8, !dbg !6003
  %14 = load ptr, ptr %ctx.addr, align 8, !dbg !6004
  %wqh48 = getelementptr inbounds %struct.eventfd_ctx, ptr %14, i32 0, i32 1, !dbg !6006
  %call49 = call i32 @waitqueue_active(ptr noundef %wqh48) #15, !dbg !6007
  %tobool50 = icmp ne i32 %call49, 0, !dbg !6007
  br i1 %tobool50, label %if.then51, label %if.end54, !dbg !6008

if.then51:                                        ; preds = %if.end46
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !6009
  %wqh52 = getelementptr inbounds %struct.eventfd_ctx, ptr %15, i32 0, i32 1, !dbg !6009
  %16 = load i32, ptr %mask.addr, align 4, !dbg !6009
  %or = or i32 1, %16, !dbg !6009
  %conv53 = zext i32 %or to i64, !dbg !6009
  %17 = inttoptr i64 %conv53 to ptr, !dbg !6009
  call void @__wake_up_locked_key(ptr noundef %wqh52, i32 noundef 3, ptr noundef %17) #15, !dbg !6009
  br label %if.end54, !dbg !6009

if.end54:                                         ; preds = %if.then51, %if.end46
  %call55 = call ptr @get_current() #15, !dbg !6010
  %in_eventfd56 = getelementptr inbounds %struct.task_struct, ptr %call55, i32 0, i32 59, !dbg !6011
  %bf.load57 = load i16, ptr %in_eventfd56, align 16, !dbg !6012
  %bf.clear58 = and i16 %bf.load57, -129, !dbg !6012
  %bf.set59 = or i16 %bf.clear58, 0, !dbg !6012
  store i16 %bf.set59, ptr %in_eventfd56, align 16, !dbg !6012
  %18 = load ptr, ptr %ctx.addr, align 8, !dbg !6013
  %wqh60 = getelementptr inbounds %struct.eventfd_ctx, ptr %18, i32 0, i32 1, !dbg !6014
  %lock61 = getelementptr inbounds %struct.wait_queue_head, ptr %wqh60, i32 0, i32 0, !dbg !6015
  %19 = load i64, ptr %flags, align 8, !dbg !6016
  call void @spin_unlock_irqrestore(ptr noundef %lock61, i64 noundef %19) #15, !dbg !6017
  %20 = load i64, ptr %n.addr, align 8, !dbg !6018
  store i64 %20, ptr %retval, align 8, !dbg !6019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6019

cleanup:                                          ; preds = %if.end54, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !6020
  %21 = load i64, ptr %retval, align 8, !dbg !6020
  ret i64 %21, !dbg !6020
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !6021 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6032
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6026, metadata !DIExpression()), !dbg !6032
  br label %do.body, !dbg !6032

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6028, metadata !DIExpression()), !dbg !6033
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6033
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6033
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6032
  br label %do.cond, !dbg !6033

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6033

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !6034
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6030, metadata !DIExpression()), !dbg !6034
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !6034, !srcloc !6035
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6034
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6034
  %3 = inttoptr i64 %2 to ptr, !dbg !6034
  store ptr %3, ptr %tmp, align 8, !dbg !6034
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !6032
  %4 = load ptr, ptr %tmp, align 8, !dbg !6034
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6032
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6032
  store ptr %5, ptr %tmp1, align 8, !dbg !6032
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6036
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6032
  ret ptr %6, !dbg !6037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6038 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #3 align 16 !dbg !6043 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6050
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6051
  ret ptr %1, !dbg !6052
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @waitqueue_active(ptr noundef %wq_head) #6 align 16 !dbg !6053 {
entry:
  %wq_head.addr = alloca ptr, align 8
  store ptr %wq_head, ptr %wq_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_head.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  %0 = load ptr, ptr %wq_head.addr, align 8, !dbg !6060
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1, !dbg !6061
  %call = call i32 @list_empty(ptr noundef %head) #15, !dbg !6062
  %tobool = icmp ne i32 %call, 0, !dbg !6063
  %lnot = xor i1 %tobool, true, !dbg !6063
  %lnot.ext = zext i1 %lnot to i32, !dbg !6063
  ret i32 %lnot.ext, !dbg !6064
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6065 dso_local void @__wake_up_locked_key(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #3 align 16 !dbg !6068 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6072, metadata !DIExpression()), !dbg !6078
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6073, metadata !DIExpression()), !dbg !6079
  br label %do.body, !dbg !6080

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !6081
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6074, metadata !DIExpression()), !dbg !6081
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !6081
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6077, metadata !DIExpression()), !dbg !6081
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6081
  %conv = zext i1 %cmp to i32, !dbg !6081
  store i32 1, ptr %tmp, align 4, !dbg !6081
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !6082
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !6082
  %0 = load i32, ptr %tmp, align 4, !dbg !6081
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6082
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6082
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6082
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #15, !dbg !6082
  br label %do.end, !dbg !6082

do.end:                                           ; preds = %do.body
  ret void, !dbg !6083
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @eventfd_signal(ptr noundef %ctx, i64 noundef %n) #0 align 16 !dbg !6084 {
entry:
  %ctx.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6088, metadata !DIExpression()), !dbg !6090
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6089, metadata !DIExpression()), !dbg !6091
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6092
  %1 = load i64, ptr %n.addr, align 8, !dbg !6093
  %call = call i64 @eventfd_signal_mask(ptr noundef %0, i64 noundef %1, i32 noundef 0) #15, !dbg !6094
  ret i64 %call, !dbg !6095
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @eventfd_ctx_put(ptr noundef %ctx) #0 align 16 !dbg !6096 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6100, metadata !DIExpression()), !dbg !6101
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6102
  %kref = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 0, !dbg !6103
  %call = call i32 @kref_put(ptr noundef %kref, ptr noundef @eventfd_free) #15, !dbg !6104
  ret void, !dbg !6105
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #6 align 16 !dbg !6106 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6114, metadata !DIExpression()), !dbg !6116
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !6115, metadata !DIExpression()), !dbg !6117
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6118
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6120
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #15, !dbg !6121
  br i1 %call, label %if.then, label %if.end, !dbg !6122

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !6123
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !6125
  call void %1(ptr noundef %2) #15, !dbg !6123
  store i32 1, ptr %retval, align 4, !dbg !6126
  br label %return, !dbg !6126

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6127
  br label %return, !dbg !6127

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6128
  ret i32 %3, !dbg !6128
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @eventfd_free(ptr noundef %kref) #0 align 16 !dbg !6129 {
entry:
  %kref.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6131, metadata !DIExpression()), !dbg !6135
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !6136
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6132, metadata !DIExpression()), !dbg !6137
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6138
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6133, metadata !DIExpression()), !dbg !6138
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6138
  store ptr %0, ptr %__mptr, align 8, !dbg !6138
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6138
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6138
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6138
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6139
  %2 = load ptr, ptr %tmp, align 8, !dbg !6138
  store ptr %2, ptr %ctx, align 8, !dbg !6137
  %3 = load ptr, ptr %ctx, align 8, !dbg !6140
  call void @eventfd_free_ctx(ptr noundef %3) #15, !dbg !6141
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !6142
  ret void, !dbg !6142
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @eventfd_ctx_do_read(ptr noundef %ctx, ptr noundef %cnt) #0 align 16 !dbg !6143 {
entry:
  %ctx.addr = alloca ptr, align 8
  %cnt.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6148, metadata !DIExpression()), !dbg !6150
  store ptr %cnt, ptr %cnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !6149, metadata !DIExpression()), !dbg !6151
  br label %do.body, !dbg !6152

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6153
  %wqh = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 1, !dbg !6153
  %lock = getelementptr inbounds %struct.wait_queue_head, ptr %wqh, i32 0, i32 0, !dbg !6153
  br label %do.end, !dbg !6153

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !6155
  %flags = getelementptr inbounds %struct.eventfd_ctx, ptr %1, i32 0, i32 3, !dbg !6156
  %2 = load i32, ptr %flags, align 8, !dbg !6156
  %and = and i32 %2, 1, !dbg !6157
  %tobool = icmp ne i32 %and, 0, !dbg !6157
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !6158

land.lhs.true:                                    ; preds = %do.end
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !6159
  %count = getelementptr inbounds %struct.eventfd_ctx, ptr %3, i32 0, i32 2, !dbg !6160
  %4 = load i64, ptr %count, align 8, !dbg !6160
  %tobool1 = icmp ne i64 %4, 0, !dbg !6159
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !6161

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !6161

cond.false:                                       ; preds = %land.lhs.true, %do.end
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !6162
  %count2 = getelementptr inbounds %struct.eventfd_ctx, ptr %5, i32 0, i32 2, !dbg !6163
  %6 = load i64, ptr %count2, align 8, !dbg !6163
  br label %cond.end, !dbg !6161

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %6, %cond.false ], !dbg !6161
  %7 = load ptr, ptr %cnt.addr, align 8, !dbg !6164
  store i64 %cond, ptr %7, align 8, !dbg !6165
  %8 = load ptr, ptr %cnt.addr, align 8, !dbg !6166
  %9 = load i64, ptr %8, align 8, !dbg !6167
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !6168
  %count3 = getelementptr inbounds %struct.eventfd_ctx, ptr %10, i32 0, i32 2, !dbg !6169
  %11 = load i64, ptr %count3, align 8, !dbg !6170
  %sub = sub i64 %11, %9, !dbg !6170
  store i64 %sub, ptr %count3, align 8, !dbg !6170
  ret void, !dbg !6171
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @eventfd_ctx_remove_wait_queue(ptr noundef %ctx, ptr noundef %wait, ptr noundef %cnt) #0 align 16 !dbg !6172 {
entry:
  %ctx.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %cnt.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6189, metadata !DIExpression()), !dbg !6198
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !6190, metadata !DIExpression()), !dbg !6199
  store ptr %cnt, ptr %cnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !6191, metadata !DIExpression()), !dbg !6200
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !6201
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6192, metadata !DIExpression()), !dbg !6202
  br label %do.body, !dbg !6203

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6204

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6193, metadata !DIExpression()), !dbg !6205
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6197, metadata !DIExpression()), !dbg !6205
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6205
  %conv = zext i1 %cmp to i32, !dbg !6205
  store i32 1, ptr %tmp, align 4, !dbg !6205
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !6206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !6206
  %0 = load i32, ptr %tmp, align 4, !dbg !6205
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !6206
  %wqh = getelementptr inbounds %struct.eventfd_ctx, ptr %1, i32 0, i32 1, !dbg !6206
  %lock = getelementptr inbounds %struct.wait_queue_head, ptr %wqh, i32 0, i32 0, !dbg !6206
  %call = call ptr @spinlock_check(ptr noundef %lock) #15, !dbg !6206
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #15, !dbg !6206
  store i64 %call2, ptr %flags, align 8, !dbg !6206
  br label %do.cond, !dbg !6206

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6206

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6204

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6204

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !6207
  %3 = load ptr, ptr %cnt.addr, align 8, !dbg !6208
  call void @eventfd_ctx_do_read(ptr noundef %2, ptr noundef %3) #15, !dbg !6209
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !6210
  %wqh5 = getelementptr inbounds %struct.eventfd_ctx, ptr %4, i32 0, i32 1, !dbg !6211
  %5 = load ptr, ptr %wait.addr, align 8, !dbg !6212
  call void @__remove_wait_queue(ptr noundef %wqh5, ptr noundef %5) #15, !dbg !6213
  %6 = load ptr, ptr %cnt.addr, align 8, !dbg !6214
  %7 = load i64, ptr %6, align 8, !dbg !6216
  %cmp6 = icmp ne i64 %7, 0, !dbg !6217
  br i1 %cmp6, label %land.lhs.true, label %if.end, !dbg !6218

land.lhs.true:                                    ; preds = %do.end4
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !6219
  %wqh8 = getelementptr inbounds %struct.eventfd_ctx, ptr %8, i32 0, i32 1, !dbg !6220
  %call9 = call i32 @waitqueue_active(ptr noundef %wqh8) #15, !dbg !6221
  %tobool = icmp ne i32 %call9, 0, !dbg !6221
  br i1 %tobool, label %if.then, label %if.end, !dbg !6222

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !6223
  %wqh10 = getelementptr inbounds %struct.eventfd_ctx, ptr %9, i32 0, i32 1, !dbg !6223
  call void @__wake_up_locked_key(ptr noundef %wqh10, i32 noundef 3, ptr noundef inttoptr (i64 4 to ptr)) #15, !dbg !6223
  br label %if.end, !dbg !6223

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end4
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !6224
  %wqh11 = getelementptr inbounds %struct.eventfd_ctx, ptr %10, i32 0, i32 1, !dbg !6225
  %lock12 = getelementptr inbounds %struct.wait_queue_head, ptr %wqh11, i32 0, i32 0, !dbg !6226
  %11 = load i64, ptr %flags, align 8, !dbg !6227
  call void @spin_unlock_irqrestore(ptr noundef %lock12, i64 noundef %11) #15, !dbg !6228
  %12 = load ptr, ptr %cnt.addr, align 8, !dbg !6229
  %13 = load i64, ptr %12, align 8, !dbg !6230
  %cmp13 = icmp ne i64 %13, 0, !dbg !6231
  %14 = zext i1 %cmp13 to i64, !dbg !6230
  %cond = select i1 %cmp13, i32 0, i32 -11, !dbg !6230
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !6232
  ret i32 %cond, !dbg !6233
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__remove_wait_queue(ptr noundef %wq_head, ptr noundef %wq_entry) #6 align 16 !dbg !6234 {
entry:
  %wq_head.addr = alloca ptr, align 8
  %wq_entry.addr = alloca ptr, align 8
  store ptr %wq_head, ptr %wq_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_head.addr, metadata !6238, metadata !DIExpression()), !dbg !6240
  store ptr %wq_entry, ptr %wq_entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_entry.addr, metadata !6239, metadata !DIExpression()), !dbg !6241
  %0 = load ptr, ptr %wq_entry.addr, align 8, !dbg !6242
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, !dbg !6243
  call void @list_del(ptr noundef %entry1) #15, !dbg !6244
  ret void, !dbg !6245
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @eventfd_fget(i32 noundef %fd) #0 align 16 !dbg !6246 {
entry:
  %retval = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6250, metadata !DIExpression()), !dbg !6252
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #14, !dbg !6253
  call void @llvm.dbg.declare(metadata ptr %file, metadata !6251, metadata !DIExpression()), !dbg !6254
  %0 = load i32, ptr %fd.addr, align 4, !dbg !6255
  %call = call ptr @fget(i32 noundef %0) #15, !dbg !6256
  store ptr %call, ptr %file, align 8, !dbg !6257
  %1 = load ptr, ptr %file, align 8, !dbg !6258
  %tobool = icmp ne ptr %1, null, !dbg !6258
  br i1 %tobool, label %if.end, label %if.then, !dbg !6260

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -9) #15, !dbg !6261
  store ptr %call1, ptr %retval, align 8, !dbg !6262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6262

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file, align 8, !dbg !6263
  %f_op = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 12, !dbg !6265
  %3 = load ptr, ptr %f_op, align 8, !dbg !6265
  %cmp = icmp ne ptr %3, @eventfd_fops, !dbg !6266
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !6267

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %file, align 8, !dbg !6268
  call void @fput(ptr noundef %4) #15, !dbg !6270
  %call3 = call ptr @ERR_PTR(i64 noundef -22) #15, !dbg !6271
  store ptr %call3, ptr %retval, align 8, !dbg !6272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6272

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %file, align 8, !dbg !6273
  store ptr %5, ptr %retval, align 8, !dbg !6274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6274

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #14, !dbg !6275
  %6 = load ptr, ptr %retval, align 8, !dbg !6275
  ret ptr %6, !dbg !6275
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6276 dso_local ptr @fget(i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #6 align 16 !dbg !6280 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6285, metadata !DIExpression()), !dbg !6286
  %0 = load i64, ptr %error.addr, align 8, !dbg !6287
  %1 = inttoptr i64 %0 to ptr, !dbg !6288
  ret ptr %1, !dbg !6289
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6290 dso_local void @fput(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @eventfd_ctx_fdget(i32 noundef %fd) #0 align 16 !dbg !6291 {
entry:
  %retval = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %f = alloca %struct.fd, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6295, metadata !DIExpression()), !dbg !6302
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !6303
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6296, metadata !DIExpression()), !dbg !6304
  call void @llvm.lifetime.start.p0(i64 16, ptr %f) #14, !dbg !6305
  call void @llvm.dbg.declare(metadata ptr %f, metadata !6297, metadata !DIExpression()), !dbg !6306
  %0 = load i32, ptr %fd.addr, align 4, !dbg !6307
  %call = call { ptr, i32 } @fdget(i32 noundef %0) #15, !dbg !6308
  %1 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !6308
  %2 = extractvalue { ptr, i32 } %call, 0, !dbg !6308
  store ptr %2, ptr %1, align 8, !dbg !6308
  %3 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !6308
  %4 = extractvalue { ptr, i32 } %call, 1, !dbg !6308
  store i32 %4, ptr %3, align 8, !dbg !6308
  %file = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !6309
  %5 = load ptr, ptr %file, align 8, !dbg !6309
  %tobool = icmp ne ptr %5, null, !dbg !6311
  br i1 %tobool, label %if.end, label %if.then, !dbg !6312

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -9) #15, !dbg !6313
  store ptr %call1, ptr %retval, align 8, !dbg !6314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6314

if.end:                                           ; preds = %entry
  %file2 = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !6315
  %6 = load ptr, ptr %file2, align 8, !dbg !6315
  %call3 = call ptr @eventfd_ctx_fileget(ptr noundef %6) #15, !dbg !6316
  store ptr %call3, ptr %ctx, align 8, !dbg !6317
  %7 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !6318
  %8 = load ptr, ptr %7, align 8, !dbg !6318
  %9 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !6318
  %10 = load i32, ptr %9, align 8, !dbg !6318
  call void @fdput(ptr %8, i32 %10) #15, !dbg !6318
  %11 = load ptr, ptr %ctx, align 8, !dbg !6319
  store ptr %11, ptr %retval, align 8, !dbg !6320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6320

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %f) #14, !dbg !6321
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !6321
  %12 = load ptr, ptr %retval, align 8, !dbg !6321
  ret ptr %12, !dbg !6321
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @fdget(i32 noundef %fd) #6 align 16 !dbg !6322 {
entry:
  %retval = alloca %struct.fd, align 8
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6326, metadata !DIExpression()), !dbg !6327
  %0 = load i32, ptr %fd.addr, align 4, !dbg !6328
  %call = call i64 @__fdget(i32 noundef %0) #15, !dbg !6329
  %call1 = call { ptr, i32 } @__to_fd(i64 noundef %call) #15, !dbg !6330
  %1 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 0, !dbg !6330
  %2 = extractvalue { ptr, i32 } %call1, 0, !dbg !6330
  store ptr %2, ptr %1, align 8, !dbg !6330
  %3 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 1, !dbg !6330
  %4 = extractvalue { ptr, i32 } %call1, 1, !dbg !6330
  store i32 %4, ptr %3, align 8, !dbg !6330
  %5 = load { ptr, i32 }, ptr %retval, align 8, !dbg !6331
  ret { ptr, i32 } %5, !dbg !6331
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @eventfd_ctx_fileget(ptr noundef %file) #0 align 16 !dbg !6332 {
entry:
  %retval = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6336, metadata !DIExpression()), !dbg !6338
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !6339
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6337, metadata !DIExpression()), !dbg !6340
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6341
  %f_op = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 12, !dbg !6343
  %1 = load ptr, ptr %f_op, align 8, !dbg !6343
  %cmp = icmp ne ptr %1, @eventfd_fops, !dbg !6344
  br i1 %cmp, label %if.then, label %if.end, !dbg !6345

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -22) #15, !dbg !6346
  store ptr %call, ptr %retval, align 8, !dbg !6347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6347

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !6348
  %private_data = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 15, !dbg !6349
  %3 = load ptr, ptr %private_data, align 8, !dbg !6349
  store ptr %3, ptr %ctx, align 8, !dbg !6350
  %4 = load ptr, ptr %ctx, align 8, !dbg !6351
  %kref = getelementptr inbounds %struct.eventfd_ctx, ptr %4, i32 0, i32 0, !dbg !6352
  call void @kref_get(ptr noundef %kref) #15, !dbg !6353
  %5 = load ptr, ptr %ctx, align 8, !dbg !6354
  store ptr %5, ptr %retval, align 8, !dbg !6355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6355

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !6356
  %6 = load ptr, ptr %retval, align 8, !dbg !6356
  ret ptr %6, !dbg !6356
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fdput(ptr %fd.coerce0, i32 %fd.coerce1) #6 align 16 !dbg !6357 {
entry:
  %fd = alloca %struct.fd, align 8
  %0 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 0
  store ptr %fd.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 1
  store i32 %fd.coerce1, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !6361, metadata !DIExpression()), !dbg !6362
  %flags = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 1, !dbg !6363
  %2 = load i32, ptr %flags, align 8, !dbg !6363
  %and = and i32 %2, 1, !dbg !6365
  %tobool = icmp ne i32 %and, 0, !dbg !6365
  br i1 %tobool, label %if.then, label %if.end, !dbg !6366

if.then:                                          ; preds = %entry
  %file = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 0, !dbg !6367
  %3 = load ptr, ptr %file, align 8, !dbg !6367
  call void @fput(ptr noundef %3) #15, !dbg !6368
  br label %if.end, !dbg !6368

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #6 align 16 !dbg !6370 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6372, metadata !DIExpression()), !dbg !6373
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6374
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6375
  call void @refcount_inc(ptr noundef %refcount) #15, !dbg !6376
  ret void, !dbg !6377
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_eventfd2(ptr noundef %regs) #0 align 16 !dbg !6378 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6384, metadata !DIExpression()), !dbg !6385
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6385
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6385
  %1 = load i64, ptr %di, align 8, !dbg !6385
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6385
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6385
  %3 = load i64, ptr %si, align 8, !dbg !6385
  %call = call i64 @__se_sys_eventfd2(i64 noundef %1, i64 noundef %3) #15, !dbg !6385
  ret i64 %call, !dbg !6385
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_eventfd2(i64 noundef %count, i64 noundef %flags) #0 align 16 !dbg !6386 {
entry:
  %count.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6390, metadata !DIExpression()), !dbg !6393
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6391, metadata !DIExpression()), !dbg !6393
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6392, metadata !DIExpression()), !dbg !6393
  %0 = load i64, ptr %count.addr, align 8, !dbg !6393
  %conv = trunc i64 %0 to i32, !dbg !6393
  %1 = load i64, ptr %flags.addr, align 8, !dbg !6393
  %conv1 = trunc i64 %1 to i32, !dbg !6393
  %call = call i64 @__do_sys_eventfd2(i32 noundef %conv, i32 noundef %conv1) #15, !dbg !6393
  store i64 %call, ptr %ret, align 8, !dbg !6393
  br label %do.body, !dbg !6393

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6394

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6394

do.end:                                           ; preds = %do.cond
  %2 = load i64, ptr %ret, align 8, !dbg !6393
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !6393
  ret i64 %2, !dbg !6393
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_eventfd2(ptr noundef %regs) #0 align 16 !dbg !6396 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6398, metadata !DIExpression()), !dbg !6399
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6399
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6399
  %1 = load i64, ptr %bx, align 8, !dbg !6399
  %conv = trunc i64 %1 to i32, !dbg !6399
  %conv1 = zext i32 %conv to i64, !dbg !6399
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6399
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6399
  %3 = load i64, ptr %cx, align 8, !dbg !6399
  %conv2 = trunc i64 %3 to i32, !dbg !6399
  %conv3 = zext i32 %conv2 to i64, !dbg !6399
  %call = call i64 @__se_sys_eventfd2(i64 noundef %conv1, i64 noundef %conv3) #15, !dbg !6399
  ret i64 %call, !dbg !6399
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_eventfd(ptr noundef %regs) #0 align 16 !dbg !6400 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6402, metadata !DIExpression()), !dbg !6403
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6403
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6403
  %1 = load i64, ptr %di, align 8, !dbg !6403
  %call = call i64 @__se_sys_eventfd(i64 noundef %1) #15, !dbg !6403
  ret i64 %call, !dbg !6403
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_eventfd(i64 noundef %count) #0 align 16 !dbg !6404 {
entry:
  %count.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6408, metadata !DIExpression()), !dbg !6410
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !6410
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6409, metadata !DIExpression()), !dbg !6410
  %0 = load i64, ptr %count.addr, align 8, !dbg !6410
  %conv = trunc i64 %0 to i32, !dbg !6410
  %call = call i64 @__do_sys_eventfd(i32 noundef %conv) #15, !dbg !6410
  store i64 %call, ptr %ret, align 8, !dbg !6410
  br label %do.body, !dbg !6410

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6411

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6411

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %ret, align 8, !dbg !6410
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !6410
  ret i64 %1, !dbg !6410
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_eventfd(ptr noundef %regs) #0 align 16 !dbg !6413 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6415, metadata !DIExpression()), !dbg !6416
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6416
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6416
  %1 = load i64, ptr %bx, align 8, !dbg !6416
  %conv = trunc i64 %1 to i32, !dbg !6416
  %conv1 = zext i32 %conv to i64, !dbg !6416
  %call = call i64 @__se_sys_eventfd(i64 noundef %conv1) #15, !dbg !6416
  ret i64 %call, !dbg !6416
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #6 align 16 !dbg !6417 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6424, metadata !DIExpression()), !dbg !6425
  br label %do.body, !dbg !6426

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6428

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6426
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6426
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6426
  store ptr %1, ptr %tmp, align 8, !dbg !6428
  %2 = load ptr, ptr %tmp, align 8, !dbg !6426
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6430
  %cmp = icmp eq ptr %2, %3, !dbg !6431
  %conv = zext i1 %cmp to i32, !dbg !6431
  ret i32 %conv, !dbg !6432
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6433 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #6 align 16 !dbg !6436 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6441, metadata !DIExpression()), !dbg !6442
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6443
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #15, !dbg !6444
  ret i1 %call, !dbg !6445
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !6446 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6450, metadata !DIExpression()), !dbg !6452
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6451, metadata !DIExpression()), !dbg !6453
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6454
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6455
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15, !dbg !6456
  ret i1 %call, !dbg !6457
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !6458 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6462, metadata !DIExpression()), !dbg !6466
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6463, metadata !DIExpression()), !dbg !6467
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6464, metadata !DIExpression()), !dbg !6468
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #14, !dbg !6469
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6465, metadata !DIExpression()), !dbg !6470
  %0 = load i32, ptr %i.addr, align 4, !dbg !6471
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6472
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6473
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #15, !dbg !6474
  store i32 %call, ptr %old, align 4, !dbg !6470
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6475
  %tobool = icmp ne ptr %2, null, !dbg !6475
  br i1 %tobool, label %if.then, label %if.end, !dbg !6477

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6478
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6479
  store i32 %3, ptr %4, align 4, !dbg !6480
  br label %if.end, !dbg !6481

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6482
  %6 = load i32, ptr %i.addr, align 4, !dbg !6484
  %cmp = icmp eq i32 %5, %6, !dbg !6485
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6486

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6487

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6489

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6491

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6491

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6489

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6493

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6495

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6495

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6493, !srcloc !6497
  br label %do.cond7, !dbg !6493

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6493

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6489

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6489

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6498

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6499
  %cmp12 = icmp slt i32 %7, 0, !dbg !6499
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6499

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6499
  %9 = load i32, ptr %i.addr, align 4, !dbg !6499
  %sub = sub i32 %8, %9, !dbg !6499
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6499
  br label %lor.end, !dbg !6499

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6499
  %lnot14 = xor i1 %lnot, true, !dbg !6499
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6499
  %conv = sext i32 %lnot.ext to i64, !dbg !6499
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6499
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6499
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6501

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6502
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #15, !dbg !6503
  br label %if.end17, !dbg !6503

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6504

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #14, !dbg !6505
  %12 = load i1, ptr %retval, align 1, !dbg !6505
  ret i1 %12, !dbg !6505
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6506 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6512, metadata !DIExpression()), !dbg !6514
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6513, metadata !DIExpression()), !dbg !6515
  br label %do.body, !dbg !6516

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6517

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6519
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !6520
  %1 = load i32, ptr %i.addr, align 4, !dbg !6521
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6522
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #15, !dbg !6523
  ret i32 %call, !dbg !6524
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6525 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6528 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6536, metadata !DIExpression()), !dbg !6538
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6537, metadata !DIExpression()), !dbg !6539
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6540
  %1 = load i64, ptr %size.addr, align 8, !dbg !6541
  %conv = trunc i64 %1 to i32, !dbg !6541
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !6542
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6543
  %3 = load i64, ptr %size.addr, align 8, !dbg !6543
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !6543
  ret void, !dbg !6544
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6545 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6548, metadata !DIExpression()), !dbg !6550
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6549, metadata !DIExpression()), !dbg !6551
  %0 = load i32, ptr %i.addr, align 4, !dbg !6552
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6553
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #15, !dbg !6554
  ret i32 %call, !dbg !6555
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !6556 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6561, metadata !DIExpression()), !dbg !6563
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6562, metadata !DIExpression()), !dbg !6564
  ret i1 true, !dbg !6565
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !6566 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6571, metadata !DIExpression()), !dbg !6574
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6572, metadata !DIExpression()), !dbg !6575
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6573, metadata !DIExpression()), !dbg !6576
  ret void, !dbg !6577
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6578 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6581, metadata !DIExpression()), !dbg !6585
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6582, metadata !DIExpression()), !dbg !6586
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !6587
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6583, metadata !DIExpression()), !dbg !6587
  %0 = load i32, ptr %i.addr, align 4, !dbg !6587
  %sub = sub i32 0, %0, !dbg !6587
  store i32 %sub, ptr %__ret, align 4, !dbg !6587
  %1 = load i32, ptr %__ret, align 4, !dbg !6587
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6587
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6587
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #14, !dbg !6587, !srcloc !6588
  store i32 %3, ptr %__ret, align 4, !dbg !6587
  %4 = load i32, ptr %__ret, align 4, !dbg !6587
  store i32 %4, ptr %tmp, align 4, !dbg !6587
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !6589
  %5 = load i32, ptr %tmp, align 4, !dbg !6587
  ret i32 %5, !dbg !6590
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @eventfd_free_ctx(ptr noundef %ctx) #0 align 16 !dbg !6591 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6593, metadata !DIExpression()), !dbg !6594
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6595
  %id = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 4, !dbg !6597
  %1 = load i32, ptr %id, align 4, !dbg !6597
  %cmp = icmp sge i32 %1, 0, !dbg !6598
  br i1 %cmp, label %if.then, label %if.end, !dbg !6599

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !6600
  %id1 = getelementptr inbounds %struct.eventfd_ctx, ptr %2, i32 0, i32 4, !dbg !6600
  %3 = load i32, ptr %id1, align 4, !dbg !6600
  call void @ida_free(ptr noundef @eventfd_ida, i32 noundef %3) #15, !dbg !6600
  br label %if.end, !dbg !6600

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !6601
  call void @kfree(ptr noundef %4) #15, !dbg !6602
  ret void, !dbg !6603
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6604 dso_local void @ida_free(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6608 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #6 align 16 !dbg !6611 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6615, metadata !DIExpression()), !dbg !6616
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6617
  call void @__list_del_entry(ptr noundef %0) #15, !dbg !6618
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6619
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6620
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6621
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6622
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6623
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6624
  ret void, !dbg !6625
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !6626 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6628, metadata !DIExpression()), !dbg !6629
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6630
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #15, !dbg !6632
  br i1 %call, label %if.end, label %if.then, !dbg !6633

if.then:                                          ; preds = %entry
  br label %return, !dbg !6634

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6635
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6636
  %2 = load ptr, ptr %prev, align 8, !dbg !6636
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6637
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6638
  %4 = load ptr, ptr %next, align 8, !dbg !6638
  call void @__list_del(ptr noundef %2, ptr noundef %4) #15, !dbg !6639
  br label %return, !dbg !6640

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6640
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !6641 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6645, metadata !DIExpression()), !dbg !6646
  ret i1 true, !dbg !6647
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6648 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6652, metadata !DIExpression()), !dbg !6654
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6653, metadata !DIExpression()), !dbg !6655
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6656
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6657
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6658
  store ptr %0, ptr %prev1, align 8, !dbg !6659
  br label %do.body, !dbg !6660

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6661

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6663

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6661

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6665
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6665
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6665
  store volatile ptr %2, ptr %next4, align 8, !dbg !6665
  br label %do.end5, !dbg !6665

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6661

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6667
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @eventfd_write(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6668 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %res = alloca i64, align 8
  %ucnt = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wait = alloca %struct.wait_queue_entry, align 8
  %tmp = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6670, metadata !DIExpression()), !dbg !6683
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6671, metadata !DIExpression()), !dbg !6684
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6672, metadata !DIExpression()), !dbg !6685
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6673, metadata !DIExpression()), !dbg !6686
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !6687
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6674, metadata !DIExpression()), !dbg !6688
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6689
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6690
  %1 = load ptr, ptr %private_data, align 8, !dbg !6690
  store ptr %1, ptr %ctx, align 8, !dbg !6688
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #14, !dbg !6691
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6675, metadata !DIExpression()), !dbg !6692
  call void @llvm.lifetime.start.p0(i64 8, ptr %ucnt) #14, !dbg !6693
  call void @llvm.dbg.declare(metadata ptr %ucnt, metadata !6676, metadata !DIExpression()), !dbg !6694
  %2 = load i64, ptr %count.addr, align 8, !dbg !6695
  %cmp = icmp ult i64 %2, 8, !dbg !6697
  br i1 %cmp, label %if.then, label %if.end, !dbg !6698

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6699

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6700
  %call = call i64 @copy_from_user(ptr noundef %ucnt, ptr noundef %3, i64 noundef 8) #15, !dbg !6702
  %tobool = icmp ne i64 %call, 0, !dbg !6702
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !6703

if.then1:                                         ; preds = %if.end
  store i64 -14, ptr %retval, align 8, !dbg !6704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6704

if.end2:                                          ; preds = %if.end
  %4 = load i64, ptr %ucnt, align 8, !dbg !6705
  %cmp3 = icmp eq i64 %4, -1, !dbg !6707
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6708

if.then4:                                         ; preds = %if.end2
  store i64 -22, ptr %retval, align 8, !dbg !6709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6709

if.end5:                                          ; preds = %if.end2
  %5 = load ptr, ptr %ctx, align 8, !dbg !6710
  %wqh = getelementptr inbounds %struct.eventfd_ctx, ptr %5, i32 0, i32 1, !dbg !6711
  %lock = getelementptr inbounds %struct.wait_queue_head, ptr %wqh, i32 0, i32 0, !dbg !6712
  call void @spin_lock_irq(ptr noundef %lock) #15, !dbg !6713
  store i64 -11, ptr %res, align 8, !dbg !6714
  %6 = load ptr, ptr %ctx, align 8, !dbg !6715
  %count6 = getelementptr inbounds %struct.eventfd_ctx, ptr %6, i32 0, i32 2, !dbg !6716
  %7 = load i64, ptr %count6, align 8, !dbg !6716
  %sub = sub i64 -1, %7, !dbg !6717
  %8 = load i64, ptr %ucnt, align 8, !dbg !6718
  %cmp7 = icmp ugt i64 %sub, %8, !dbg !6719
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !6720

if.then8:                                         ; preds = %if.end5
  store i64 8, ptr %res, align 8, !dbg !6721
  br label %if.end47, !dbg !6722

if.else:                                          ; preds = %if.end5
  %9 = load ptr, ptr %file.addr, align 8, !dbg !6723
  %f_flags = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 6, !dbg !6724
  %10 = load i32, ptr %f_flags, align 8, !dbg !6724
  %and = and i32 %10, 2048, !dbg !6725
  %tobool9 = icmp ne i32 %and, 0, !dbg !6725
  br i1 %tobool9, label %if.end46, label %if.then10, !dbg !6726

if.then10:                                        ; preds = %if.else
  %11 = load ptr, ptr %ctx, align 8, !dbg !6727
  %count11 = getelementptr inbounds %struct.eventfd_ctx, ptr %11, i32 0, i32 2, !dbg !6727
  %12 = load i64, ptr %count11, align 8, !dbg !6727
  %sub12 = sub i64 -1, %12, !dbg !6727
  %13 = load i64, ptr %ucnt, align 8, !dbg !6727
  %cmp13 = icmp ugt i64 %sub12, %13, !dbg !6727
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !6727

cond.true:                                        ; preds = %if.then10
  br label %cond.end, !dbg !6727

cond.false:                                       ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !6728
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6677, metadata !DIExpression()), !dbg !6728
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wait) #14, !dbg !6728
  call void @llvm.dbg.declare(metadata ptr %__wait, metadata !6682, metadata !DIExpression()), !dbg !6728
  %flags = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 0, !dbg !6728
  store i32 0, ptr %flags, align 8, !dbg !6728
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1, !dbg !6728
  %call14 = call ptr @get_current() #15, !dbg !6728
  store ptr %call14, ptr %private, align 8, !dbg !6728
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2, !dbg !6728
  store ptr @autoremove_wake_function, ptr %func, align 8, !dbg !6728
  %entry15 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, !dbg !6728
  %next = getelementptr inbounds %struct.list_head, ptr %entry15, i32 0, i32 0, !dbg !6728
  %entry16 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, !dbg !6728
  store ptr %entry16, ptr %next, align 8, !dbg !6728
  %prev = getelementptr inbounds %struct.list_head, ptr %entry15, i32 0, i32 1, !dbg !6728
  %entry17 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, !dbg !6728
  store ptr %entry17, ptr %prev, align 8, !dbg !6728
  br label %do.body, !dbg !6728

do.body:                                          ; preds = %do.cond, %cond.false
  %14 = load ptr, ptr %ctx, align 8, !dbg !6729
  %wqh18 = getelementptr inbounds %struct.eventfd_ctx, ptr %14, i32 0, i32 1, !dbg !6729
  %call19 = call i32 @do_wait_intr_irq(ptr noundef %wqh18, ptr noundef %__wait) #15, !dbg !6729
  store i32 %call19, ptr %__ret, align 4, !dbg !6729
  %15 = load i32, ptr %__ret, align 4, !dbg !6731
  %tobool20 = icmp ne i32 %15, 0, !dbg !6731
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !6729

if.then21:                                        ; preds = %do.body
  br label %do.end, !dbg !6731

if.end22:                                         ; preds = %do.body
  br label %do.cond, !dbg !6729

do.cond:                                          ; preds = %if.end22
  %16 = load ptr, ptr %ctx, align 8, !dbg !6728
  %count23 = getelementptr inbounds %struct.eventfd_ctx, ptr %16, i32 0, i32 2, !dbg !6728
  %17 = load i64, ptr %count23, align 8, !dbg !6728
  %sub24 = sub i64 -1, %17, !dbg !6728
  %18 = load i64, ptr %ucnt, align 8, !dbg !6728
  %cmp25 = icmp ugt i64 %sub24, %18, !dbg !6728
  %lnot = xor i1 %cmp25, true, !dbg !6728
  br i1 %lnot, label %do.body, label %do.end, !dbg !6729, !llvm.loop !6733

do.end:                                           ; preds = %do.cond, %if.then21
  %19 = load ptr, ptr %ctx, align 8, !dbg !6728
  %wqh26 = getelementptr inbounds %struct.eventfd_ctx, ptr %19, i32 0, i32 1, !dbg !6728
  call void @__remove_wait_queue(ptr noundef %wqh26, ptr noundef %__wait) #15, !dbg !6728
  br label %do.body27, !dbg !6728

do.body27:                                        ; preds = %do.end
  br label %do.body28, !dbg !6736

do.body28:                                        ; preds = %do.body27
  br label %do.cond29, !dbg !6738

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !6738

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !6736

do.body31:                                        ; preds = %do.end30
  br label %do.body32, !dbg !6740

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !6742

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6742

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !6740

do.body35:                                        ; preds = %do.end34
  %call36 = call ptr @get_current() #15, !dbg !6744
  %__state = getelementptr inbounds %struct.task_struct, ptr %call36, i32 0, i32 1, !dbg !6744
  store volatile i32 0, ptr %__state, align 8, !dbg !6744
  br label %do.cond37, !dbg !6744

do.cond37:                                        ; preds = %do.body35
  br label %do.end38, !dbg !6744

do.end38:                                         ; preds = %do.cond37
  br label %do.cond39, !dbg !6740

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !6740

do.end40:                                         ; preds = %do.cond39
  br label %do.cond41, !dbg !6736

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !6736

do.end42:                                         ; preds = %do.cond41
  %20 = load i32, ptr %__ret, align 4, !dbg !6728
  store i32 %20, ptr %tmp, align 4, !dbg !6736
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wait) #14, !dbg !6727
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !6727
  %21 = load i32, ptr %tmp, align 4, !dbg !6728
  br label %cond.end, !dbg !6727

cond.end:                                         ; preds = %do.end42, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %21, %do.end42 ], !dbg !6727
  %conv = sext i32 %cond to i64, !dbg !6727
  store i64 %conv, ptr %res, align 8, !dbg !6746
  %22 = load i64, ptr %res, align 8, !dbg !6747
  %tobool43 = icmp ne i64 %22, 0, !dbg !6747
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !6749

if.then44:                                        ; preds = %cond.end
  store i64 8, ptr %res, align 8, !dbg !6750
  br label %if.end45, !dbg !6751

if.end45:                                         ; preds = %if.then44, %cond.end
  br label %if.end46, !dbg !6752

if.end46:                                         ; preds = %if.end45, %if.else
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then8
  %23 = load i64, ptr %res, align 8, !dbg !6753
  %cmp48 = icmp sgt i64 %23, 0, !dbg !6753
  %lnot50 = xor i1 %cmp48, true, !dbg !6753
  %lnot51 = xor i1 %lnot50, true, !dbg !6753
  %lnot.ext = zext i1 %lnot51 to i32, !dbg !6753
  %conv52 = sext i32 %lnot.ext to i64, !dbg !6753
  %expval = call i64 @llvm.expect.i64(i64 %conv52, i64 1), !dbg !6753
  %tobool53 = icmp ne i64 %expval, 0, !dbg !6753
  br i1 %tobool53, label %if.then54, label %if.end68, !dbg !6755

if.then54:                                        ; preds = %if.end47
  %24 = load i64, ptr %ucnt, align 8, !dbg !6756
  %25 = load ptr, ptr %ctx, align 8, !dbg !6758
  %count55 = getelementptr inbounds %struct.eventfd_ctx, ptr %25, i32 0, i32 2, !dbg !6759
  %26 = load i64, ptr %count55, align 8, !dbg !6760
  %add = add i64 %26, %24, !dbg !6760
  store i64 %add, ptr %count55, align 8, !dbg !6760
  %call56 = call ptr @get_current() #15, !dbg !6761
  %in_eventfd = getelementptr inbounds %struct.task_struct, ptr %call56, i32 0, i32 59, !dbg !6762
  %bf.load = load i16, ptr %in_eventfd, align 16, !dbg !6763
  %bf.clear = and i16 %bf.load, -129, !dbg !6763
  %bf.set = or i16 %bf.clear, 128, !dbg !6763
  store i16 %bf.set, ptr %in_eventfd, align 16, !dbg !6763
  %27 = load ptr, ptr %ctx, align 8, !dbg !6764
  %wqh57 = getelementptr inbounds %struct.eventfd_ctx, ptr %27, i32 0, i32 1, !dbg !6766
  %call58 = call i32 @waitqueue_active(ptr noundef %wqh57) #15, !dbg !6767
  %tobool59 = icmp ne i32 %call58, 0, !dbg !6767
  br i1 %tobool59, label %if.then60, label %if.end62, !dbg !6768

if.then60:                                        ; preds = %if.then54
  %28 = load ptr, ptr %ctx, align 8, !dbg !6769
  %wqh61 = getelementptr inbounds %struct.eventfd_ctx, ptr %28, i32 0, i32 1, !dbg !6769
  call void @__wake_up_locked_key(ptr noundef %wqh61, i32 noundef 3, ptr noundef inttoptr (i64 1 to ptr)) #15, !dbg !6769
  br label %if.end62, !dbg !6769

if.end62:                                         ; preds = %if.then60, %if.then54
  %call63 = call ptr @get_current() #15, !dbg !6770
  %in_eventfd64 = getelementptr inbounds %struct.task_struct, ptr %call63, i32 0, i32 59, !dbg !6771
  %bf.load65 = load i16, ptr %in_eventfd64, align 16, !dbg !6772
  %bf.clear66 = and i16 %bf.load65, -129, !dbg !6772
  %bf.set67 = or i16 %bf.clear66, 0, !dbg !6772
  store i16 %bf.set67, ptr %in_eventfd64, align 16, !dbg !6772
  br label %if.end68, !dbg !6773

if.end68:                                         ; preds = %if.end62, %if.end47
  %29 = load ptr, ptr %ctx, align 8, !dbg !6774
  %wqh69 = getelementptr inbounds %struct.eventfd_ctx, ptr %29, i32 0, i32 1, !dbg !6775
  %lock70 = getelementptr inbounds %struct.wait_queue_head, ptr %wqh69, i32 0, i32 0, !dbg !6776
  call void @spin_unlock_irq(ptr noundef %lock70) #15, !dbg !6777
  %30 = load i64, ptr %res, align 8, !dbg !6778
  store i64 %30, ptr %retval, align 8, !dbg !6779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6779

cleanup:                                          ; preds = %if.end68, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ucnt) #14, !dbg !6780
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #14, !dbg !6780
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !6780
  %31 = load i64, ptr %retval, align 8, !dbg !6780
  ret i64 %31, !dbg !6780
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @eventfd_read(ptr noundef %iocb, ptr noundef %to) #0 align 16 !dbg !6781 {
entry:
  %retval = alloca i64, align 8
  %iocb.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %ucnt = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wait = alloca %struct.wait_queue_entry, align 8
  %tmp = alloca i32, align 4
  store ptr %iocb, ptr %iocb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iocb.addr, metadata !6783, metadata !DIExpression()), !dbg !6794
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6784, metadata !DIExpression()), !dbg !6795
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #14, !dbg !6796
  call void @llvm.dbg.declare(metadata ptr %file, metadata !6785, metadata !DIExpression()), !dbg !6797
  %0 = load ptr, ptr %iocb.addr, align 8, !dbg !6798
  %ki_filp = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 0, !dbg !6799
  %1 = load ptr, ptr %ki_filp, align 8, !dbg !6799
  store ptr %1, ptr %file, align 8, !dbg !6797
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !6800
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6786, metadata !DIExpression()), !dbg !6801
  %2 = load ptr, ptr %file, align 8, !dbg !6802
  %private_data = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 15, !dbg !6803
  %3 = load ptr, ptr %private_data, align 8, !dbg !6803
  store ptr %3, ptr %ctx, align 8, !dbg !6801
  call void @llvm.lifetime.start.p0(i64 8, ptr %ucnt) #14, !dbg !6804
  call void @llvm.dbg.declare(metadata ptr %ucnt, metadata !6787, metadata !DIExpression()), !dbg !6805
  store i64 0, ptr %ucnt, align 8, !dbg !6805
  %4 = load ptr, ptr %to.addr, align 8, !dbg !6806
  %call = call i64 @iov_iter_count(ptr noundef %4) #15, !dbg !6808
  %cmp = icmp ult i64 %call, 8, !dbg !6809
  br i1 %cmp, label %if.then, label %if.end, !dbg !6810

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6811

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %ctx, align 8, !dbg !6812
  %wqh = getelementptr inbounds %struct.eventfd_ctx, ptr %5, i32 0, i32 1, !dbg !6813
  %lock = getelementptr inbounds %struct.wait_queue_head, ptr %wqh, i32 0, i32 0, !dbg !6814
  call void @spin_lock_irq(ptr noundef %lock) #15, !dbg !6815
  %6 = load ptr, ptr %ctx, align 8, !dbg !6816
  %count = getelementptr inbounds %struct.eventfd_ctx, ptr %6, i32 0, i32 2, !dbg !6817
  %7 = load i64, ptr %count, align 8, !dbg !6817
  %tobool = icmp ne i64 %7, 0, !dbg !6816
  br i1 %tobool, label %if.end44, label %if.then1, !dbg !6818

if.then1:                                         ; preds = %if.end
  %8 = load ptr, ptr %file, align 8, !dbg !6819
  %f_flags = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 6, !dbg !6821
  %9 = load i32, ptr %f_flags, align 8, !dbg !6821
  %and = and i32 %9, 2048, !dbg !6822
  %tobool2 = icmp ne i32 %and, 0, !dbg !6822
  br i1 %tobool2, label %if.then5, label %lor.lhs.false, !dbg !6823

lor.lhs.false:                                    ; preds = %if.then1
  %10 = load ptr, ptr %iocb.addr, align 8, !dbg !6824
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %10, i32 0, i32 4, !dbg !6825
  %11 = load i32, ptr %ki_flags, align 8, !dbg !6825
  %and3 = and i32 %11, 8, !dbg !6826
  %tobool4 = icmp ne i32 %and3, 0, !dbg !6826
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !6827

if.then5:                                         ; preds = %lor.lhs.false, %if.then1
  %12 = load ptr, ptr %ctx, align 8, !dbg !6828
  %wqh6 = getelementptr inbounds %struct.eventfd_ctx, ptr %12, i32 0, i32 1, !dbg !6830
  %lock7 = getelementptr inbounds %struct.wait_queue_head, ptr %wqh6, i32 0, i32 0, !dbg !6831
  call void @spin_unlock_irq(ptr noundef %lock7) #15, !dbg !6832
  store i64 -11, ptr %retval, align 8, !dbg !6833
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6833

if.end8:                                          ; preds = %lor.lhs.false
  %13 = load ptr, ptr %ctx, align 8, !dbg !6834
  %count9 = getelementptr inbounds %struct.eventfd_ctx, ptr %13, i32 0, i32 2, !dbg !6834
  %14 = load i64, ptr %count9, align 8, !dbg !6834
  %tobool10 = icmp ne i64 %14, 0, !dbg !6834
  br i1 %tobool10, label %cond.true, label %cond.false, !dbg !6835

cond.true:                                        ; preds = %if.end8
  br i1 false, label %if.then40, label %if.end43, !dbg !6834

cond.false:                                       ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !6836
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6788, metadata !DIExpression()), !dbg !6836
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wait) #14, !dbg !6836
  call void @llvm.dbg.declare(metadata ptr %__wait, metadata !6793, metadata !DIExpression()), !dbg !6836
  %flags = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 0, !dbg !6836
  store i32 0, ptr %flags, align 8, !dbg !6836
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1, !dbg !6836
  %call11 = call ptr @get_current() #15, !dbg !6836
  store ptr %call11, ptr %private, align 8, !dbg !6836
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2, !dbg !6836
  store ptr @autoremove_wake_function, ptr %func, align 8, !dbg !6836
  %entry12 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, !dbg !6836
  %next = getelementptr inbounds %struct.list_head, ptr %entry12, i32 0, i32 0, !dbg !6836
  %entry13 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, !dbg !6836
  store ptr %entry13, ptr %next, align 8, !dbg !6836
  %prev = getelementptr inbounds %struct.list_head, ptr %entry12, i32 0, i32 1, !dbg !6836
  %entry14 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, !dbg !6836
  store ptr %entry14, ptr %prev, align 8, !dbg !6836
  br label %do.body, !dbg !6836

do.body:                                          ; preds = %do.cond, %cond.false
  %15 = load ptr, ptr %ctx, align 8, !dbg !6837
  %wqh15 = getelementptr inbounds %struct.eventfd_ctx, ptr %15, i32 0, i32 1, !dbg !6837
  %call16 = call i32 @do_wait_intr_irq(ptr noundef %wqh15, ptr noundef %__wait) #15, !dbg !6837
  store i32 %call16, ptr %__ret, align 4, !dbg !6837
  %16 = load i32, ptr %__ret, align 4, !dbg !6839
  %tobool17 = icmp ne i32 %16, 0, !dbg !6839
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6837

if.then18:                                        ; preds = %do.body
  br label %do.end, !dbg !6839

if.end19:                                         ; preds = %do.body
  br label %do.cond, !dbg !6837

do.cond:                                          ; preds = %if.end19
  %17 = load ptr, ptr %ctx, align 8, !dbg !6836
  %count20 = getelementptr inbounds %struct.eventfd_ctx, ptr %17, i32 0, i32 2, !dbg !6836
  %18 = load i64, ptr %count20, align 8, !dbg !6836
  %tobool21 = icmp ne i64 %18, 0, !dbg !6836
  %lnot = xor i1 %tobool21, true, !dbg !6836
  br i1 %lnot, label %do.body, label %do.end, !dbg !6837, !llvm.loop !6841

do.end:                                           ; preds = %do.cond, %if.then18
  %19 = load ptr, ptr %ctx, align 8, !dbg !6836
  %wqh22 = getelementptr inbounds %struct.eventfd_ctx, ptr %19, i32 0, i32 1, !dbg !6836
  call void @__remove_wait_queue(ptr noundef %wqh22, ptr noundef %__wait) #15, !dbg !6836
  br label %do.body23, !dbg !6836

do.body23:                                        ; preds = %do.end
  br label %do.body24, !dbg !6842

do.body24:                                        ; preds = %do.body23
  br label %do.cond25, !dbg !6844

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !6844

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !6842

do.body27:                                        ; preds = %do.end26
  br label %do.body28, !dbg !6846

do.body28:                                        ; preds = %do.body27
  br label %do.cond29, !dbg !6848

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !6848

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !6846

do.body31:                                        ; preds = %do.end30
  %call32 = call ptr @get_current() #15, !dbg !6850
  %__state = getelementptr inbounds %struct.task_struct, ptr %call32, i32 0, i32 1, !dbg !6850
  store volatile i32 0, ptr %__state, align 8, !dbg !6850
  br label %do.cond33, !dbg !6850

do.cond33:                                        ; preds = %do.body31
  br label %do.end34, !dbg !6850

do.end34:                                         ; preds = %do.cond33
  br label %do.cond35, !dbg !6846

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6846

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !6842

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !6842

do.end38:                                         ; preds = %do.cond37
  %20 = load i32, ptr %__ret, align 4, !dbg !6836
  store i32 %20, ptr %tmp, align 4, !dbg !6842
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wait) #14, !dbg !6834
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !6834
  %21 = load i32, ptr %tmp, align 4, !dbg !6836
  %tobool39 = icmp ne i32 %21, 0, !dbg !6834
  br i1 %tobool39, label %if.then40, label %if.end43, !dbg !6835

if.then40:                                        ; preds = %do.end38, %cond.true
  %22 = load ptr, ptr %ctx, align 8, !dbg !6852
  %wqh41 = getelementptr inbounds %struct.eventfd_ctx, ptr %22, i32 0, i32 1, !dbg !6854
  %lock42 = getelementptr inbounds %struct.wait_queue_head, ptr %wqh41, i32 0, i32 0, !dbg !6855
  call void @spin_unlock_irq(ptr noundef %lock42) #15, !dbg !6856
  store i64 -512, ptr %retval, align 8, !dbg !6857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6857

if.end43:                                         ; preds = %do.end38, %cond.true
  br label %if.end44, !dbg !6858

if.end44:                                         ; preds = %if.end43, %if.end
  %23 = load ptr, ptr %ctx, align 8, !dbg !6859
  call void @eventfd_ctx_do_read(ptr noundef %23, ptr noundef %ucnt) #15, !dbg !6860
  %call45 = call ptr @get_current() #15, !dbg !6861
  %in_eventfd = getelementptr inbounds %struct.task_struct, ptr %call45, i32 0, i32 59, !dbg !6862
  %bf.load = load i16, ptr %in_eventfd, align 16, !dbg !6863
  %bf.clear = and i16 %bf.load, -129, !dbg !6863
  %bf.set = or i16 %bf.clear, 128, !dbg !6863
  store i16 %bf.set, ptr %in_eventfd, align 16, !dbg !6863
  %24 = load ptr, ptr %ctx, align 8, !dbg !6864
  %wqh46 = getelementptr inbounds %struct.eventfd_ctx, ptr %24, i32 0, i32 1, !dbg !6866
  %call47 = call i32 @waitqueue_active(ptr noundef %wqh46) #15, !dbg !6867
  %tobool48 = icmp ne i32 %call47, 0, !dbg !6867
  br i1 %tobool48, label %if.then49, label %if.end51, !dbg !6868

if.then49:                                        ; preds = %if.end44
  %25 = load ptr, ptr %ctx, align 8, !dbg !6869
  %wqh50 = getelementptr inbounds %struct.eventfd_ctx, ptr %25, i32 0, i32 1, !dbg !6869
  call void @__wake_up_locked_key(ptr noundef %wqh50, i32 noundef 3, ptr noundef inttoptr (i64 4 to ptr)) #15, !dbg !6869
  br label %if.end51, !dbg !6869

if.end51:                                         ; preds = %if.then49, %if.end44
  %call52 = call ptr @get_current() #15, !dbg !6870
  %in_eventfd53 = getelementptr inbounds %struct.task_struct, ptr %call52, i32 0, i32 59, !dbg !6871
  %bf.load54 = load i16, ptr %in_eventfd53, align 16, !dbg !6872
  %bf.clear55 = and i16 %bf.load54, -129, !dbg !6872
  %bf.set56 = or i16 %bf.clear55, 0, !dbg !6872
  store i16 %bf.set56, ptr %in_eventfd53, align 16, !dbg !6872
  %26 = load ptr, ptr %ctx, align 8, !dbg !6873
  %wqh57 = getelementptr inbounds %struct.eventfd_ctx, ptr %26, i32 0, i32 1, !dbg !6874
  %lock58 = getelementptr inbounds %struct.wait_queue_head, ptr %wqh57, i32 0, i32 0, !dbg !6875
  call void @spin_unlock_irq(ptr noundef %lock58) #15, !dbg !6876
  %27 = load ptr, ptr %to.addr, align 8, !dbg !6877
  %call59 = call i64 @copy_to_iter(ptr noundef %ucnt, i64 noundef 8, ptr noundef %27) #15, !dbg !6877
  %cmp60 = icmp ne i64 %call59, 8, !dbg !6877
  %lnot61 = xor i1 %cmp60, true, !dbg !6877
  %lnot62 = xor i1 %lnot61, true, !dbg !6877
  %lnot.ext = zext i1 %lnot62 to i32, !dbg !6877
  %conv = sext i32 %lnot.ext to i64, !dbg !6877
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6877
  %tobool63 = icmp ne i64 %expval, 0, !dbg !6877
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !6879

if.then64:                                        ; preds = %if.end51
  store i64 -14, ptr %retval, align 8, !dbg !6880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6880

if.end65:                                         ; preds = %if.end51
  store i64 8, ptr %retval, align 8, !dbg !6881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6881

cleanup:                                          ; preds = %if.end65, %if.then64, %if.then40, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ucnt) #14, !dbg !6882
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !6882
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #14, !dbg !6882
  %28 = load i64, ptr %retval, align 8, !dbg !6882
  ret i64 %28, !dbg !6882
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @eventfd_poll(ptr noundef %file, ptr noundef %wait) #0 align 16 !dbg !6883 {
entry:
  %file.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %events = alloca i32, align 4
  %count = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6889, metadata !DIExpression()), !dbg !6894
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !6890, metadata !DIExpression()), !dbg !6895
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !6896
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6891, metadata !DIExpression()), !dbg !6897
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6898
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6899
  %1 = load ptr, ptr %private_data, align 8, !dbg !6899
  store ptr %1, ptr %ctx, align 8, !dbg !6897
  call void @llvm.lifetime.start.p0(i64 4, ptr %events) #14, !dbg !6900
  call void @llvm.dbg.declare(metadata ptr %events, metadata !6892, metadata !DIExpression()), !dbg !6901
  store i32 0, ptr %events, align 4, !dbg !6901
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #14, !dbg !6902
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6893, metadata !DIExpression()), !dbg !6903
  %2 = load ptr, ptr %file.addr, align 8, !dbg !6904
  %3 = load ptr, ptr %ctx, align 8, !dbg !6905
  %wqh = getelementptr inbounds %struct.eventfd_ctx, ptr %3, i32 0, i32 1, !dbg !6906
  %4 = load ptr, ptr %wait.addr, align 8, !dbg !6907
  call void @poll_wait(ptr noundef %2, ptr noundef %wqh, ptr noundef %4) #15, !dbg !6908
  br label %do.body, !dbg !6909

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6911

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6911

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %ctx, align 8, !dbg !6909
  %count1 = getelementptr inbounds %struct.eventfd_ctx, ptr %5, i32 0, i32 2, !dbg !6909
  %6 = load volatile i64, ptr %count1, align 8, !dbg !6909
  store i64 %6, ptr %tmp, align 8, !dbg !6911
  %7 = load i64, ptr %tmp, align 8, !dbg !6909
  store i64 %7, ptr %count, align 8, !dbg !6913
  %8 = load i64, ptr %count, align 8, !dbg !6914
  %cmp = icmp ugt i64 %8, 0, !dbg !6916
  br i1 %cmp, label %if.then, label %if.end, !dbg !6917

if.then:                                          ; preds = %do.end
  %9 = load i32, ptr %events, align 4, !dbg !6918
  %or = or i32 %9, 1, !dbg !6918
  store i32 %or, ptr %events, align 4, !dbg !6918
  br label %if.end, !dbg !6919

if.end:                                           ; preds = %if.then, %do.end
  %10 = load i64, ptr %count, align 8, !dbg !6920
  %cmp2 = icmp eq i64 %10, -1, !dbg !6922
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !6923

if.then3:                                         ; preds = %if.end
  %11 = load i32, ptr %events, align 4, !dbg !6924
  %or4 = or i32 %11, 8, !dbg !6924
  store i32 %or4, ptr %events, align 4, !dbg !6924
  br label %if.end5, !dbg !6925

if.end5:                                          ; preds = %if.then3, %if.end
  %12 = load i64, ptr %count, align 8, !dbg !6926
  %cmp6 = icmp ugt i64 -2, %12, !dbg !6928
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !6929

if.then7:                                         ; preds = %if.end5
  %13 = load i32, ptr %events, align 4, !dbg !6930
  %or8 = or i32 %13, 4, !dbg !6930
  store i32 %or8, ptr %events, align 4, !dbg !6930
  br label %if.end9, !dbg !6931

if.end9:                                          ; preds = %if.then7, %if.end5
  %14 = load i32, ptr %events, align 4, !dbg !6932
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #14, !dbg !6933
  call void @llvm.lifetime.end.p0(i64 4, ptr %events) #14, !dbg !6933
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !6933
  ret i32 %14, !dbg !6934
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @eventfd_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6935 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6937, metadata !DIExpression()), !dbg !6940
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6938, metadata !DIExpression()), !dbg !6941
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !6942
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6939, metadata !DIExpression()), !dbg !6943
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6944
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6945
  %1 = load ptr, ptr %private_data, align 8, !dbg !6945
  store ptr %1, ptr %ctx, align 8, !dbg !6943
  %2 = load ptr, ptr %ctx, align 8, !dbg !6946
  %wqh = getelementptr inbounds %struct.eventfd_ctx, ptr %2, i32 0, i32 1, !dbg !6946
  %call = call i32 @__wake_up(ptr noundef %wqh, i32 noundef 3, i32 noundef 1, ptr noundef inttoptr (i64 16 to ptr)) #15, !dbg !6946
  %3 = load ptr, ptr %ctx, align 8, !dbg !6947
  call void @eventfd_ctx_put(ptr noundef %3) #15, !dbg !6948
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !6949
  ret i32 0, !dbg !6950
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @eventfd_show_fdinfo(ptr noundef %m, ptr noundef %f) #0 align 16 !dbg !6951 {
entry:
  %m.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6953, metadata !DIExpression()), !dbg !6956
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6954, metadata !DIExpression()), !dbg !6957
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !6958
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6955, metadata !DIExpression()), !dbg !6959
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6960
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6961
  %1 = load ptr, ptr %private_data, align 8, !dbg !6961
  store ptr %1, ptr %ctx, align 8, !dbg !6959
  %2 = load ptr, ptr %ctx, align 8, !dbg !6962
  %wqh = getelementptr inbounds %struct.eventfd_ctx, ptr %2, i32 0, i32 1, !dbg !6963
  %lock = getelementptr inbounds %struct.wait_queue_head, ptr %wqh, i32 0, i32 0, !dbg !6964
  call void @spin_lock_irq(ptr noundef %lock) #15, !dbg !6965
  %3 = load ptr, ptr %m.addr, align 8, !dbg !6966
  %4 = load ptr, ptr %ctx, align 8, !dbg !6967
  %count = getelementptr inbounds %struct.eventfd_ctx, ptr %4, i32 0, i32 2, !dbg !6968
  %5 = load i64, ptr %count, align 8, !dbg !6968
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef @.str.2, i64 noundef %5) #15, !dbg !6969
  %6 = load ptr, ptr %ctx, align 8, !dbg !6970
  %wqh1 = getelementptr inbounds %struct.eventfd_ctx, ptr %6, i32 0, i32 1, !dbg !6971
  %lock2 = getelementptr inbounds %struct.wait_queue_head, ptr %wqh1, i32 0, i32 0, !dbg !6972
  call void @spin_unlock_irq(ptr noundef %lock2) #15, !dbg !6973
  %7 = load ptr, ptr %m.addr, align 8, !dbg !6974
  %8 = load ptr, ptr %ctx, align 8, !dbg !6975
  %id = getelementptr inbounds %struct.eventfd_ctx, ptr %8, i32 0, i32 4, !dbg !6976
  %9 = load i32, ptr %id, align 4, !dbg !6976
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef @.str.3, i32 noundef %9) #15, !dbg !6977
  %10 = load ptr, ptr %m.addr, align 8, !dbg !6978
  %11 = load ptr, ptr %ctx, align 8, !dbg !6979
  %flags = getelementptr inbounds %struct.eventfd_ctx, ptr %11, i32 0, i32 3, !dbg !6980
  %12 = load i32, ptr %flags, align 8, !dbg !6980
  %and = and i32 %12, 1, !dbg !6981
  %tobool = icmp ne i32 %and, 0, !dbg !6982
  %lnot = xor i1 %tobool, true, !dbg !6982
  %lnot3 = xor i1 %lnot, true, !dbg !6983
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6983
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef @.str.4, i32 noundef %lnot.ext) #15, !dbg !6984
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !6985
  ret void, !dbg !6985
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !6986 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6991, metadata !DIExpression()), !dbg !6994
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6992, metadata !DIExpression()), !dbg !6995
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6993, metadata !DIExpression()), !dbg !6996
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6997
  %1 = load i64, ptr %n.addr, align 8, !dbg !6999
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #15, !dbg !7000
  br i1 %call, label %if.then, label %if.end, !dbg !7001

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !7002
  %3 = load ptr, ptr %from.addr, align 8, !dbg !7003
  %4 = load i64, ptr %n.addr, align 8, !dbg !7004
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !7005
  store i64 %call1, ptr %n.addr, align 8, !dbg !7006
  br label %if.end, !dbg !7007

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !7008
  ret i64 %5, !dbg !7009
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #3 align 16 !dbg !7010 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7014, metadata !DIExpression()), !dbg !7015
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7016
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7016
  call void @_raw_spin_lock_irq(ptr noundef %1) #15, !dbg !7016
  ret void, !dbg !7017
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7018 dso_local i32 @do_wait_intr_irq(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #3 align 16 !dbg !7021 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7023, metadata !DIExpression()), !dbg !7024
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7025
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7025
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15, !dbg !7025
  ret void, !dbg !7026
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #3 align 16 !dbg !7027 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7031, metadata !DIExpression()), !dbg !7041
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !7032, metadata !DIExpression()), !dbg !7042
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !7033, metadata !DIExpression()), !dbg !7043
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #14, !dbg !7044
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !7034, metadata !DIExpression()), !dbg !7045
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7046
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !7047
  %conv = trunc i64 %1 to i32, !dbg !7047
  store i32 %conv, ptr %sz, align 4, !dbg !7045
  %2 = load i32, ptr %sz, align 4, !dbg !7048
  %cmp = icmp sge i32 %2, 0, !dbg !7048
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7048

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !7048
  %conv2 = sext i32 %3 to i64, !dbg !7048
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !7048
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !7048
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !7050
  %lnot = xor i1 %5, true, !dbg !7048
  %lnot5 = xor i1 %lnot, true, !dbg !7048
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !7048
  %conv6 = sext i32 %lnot.ext to i64, !dbg !7048
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !7048
  %tobool = icmp ne i64 %expval, 0, !dbg !7048
  br i1 %tobool, label %if.then, label %if.end12, !dbg !7051

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !7052
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !7055
  br i1 %7, label %if.else, label %if.then7, !dbg !7056

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !7057
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !7058
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #15, !dbg !7059
  br label %if.end11, !dbg !7059

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !7060, !range !7062, !noundef !633
  %tobool8 = trunc i8 %10 to i1, !dbg !7060
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !7063

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #15, !dbg !7064, !srcloc !7065
  br label %if.end, !dbg !7064

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #15, !dbg !7066, !srcloc !7067
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !7068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7068

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !7069
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7035, metadata !DIExpression()), !dbg !7069
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !7069
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !7069
  %lnot15 = xor i1 %cmp13, true, !dbg !7069
  %lnot17 = xor i1 %lnot15, true, !dbg !7069
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !7069
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !7069
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !7070
  %tobool19 = icmp ne i32 %12, 0, !dbg !7070
  %lnot20 = xor i1 %tobool19, true, !dbg !7070
  %lnot22 = xor i1 %lnot20, true, !dbg !7070
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !7070
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !7070
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !7070
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !7070
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !7069

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !7070

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !7071
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7038, metadata !DIExpression()), !dbg !7071
  store i32 2307, ptr %__flags, align 4, !dbg !7071
  br label %do.body28, !dbg !7071

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !7072

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !7072

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !7071

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !7074
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 249, i32 %13, i64 12) #14, !dbg !7074, !srcloc !7076
  br label %do.cond30, !dbg !7074

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !7074

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !7071

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !7077

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !7077

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !7070
  br label %do.cond35, !dbg !7071

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !7071

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !7071

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !7069
  %tobool38 = icmp ne i32 %14, 0, !dbg !7069
  %lnot39 = xor i1 %tobool38, true, !dbg !7069
  %lnot41 = xor i1 %lnot39, true, !dbg !7069
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !7069
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !7069
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !7069
  store i64 %expval44, ptr %tmp, align 8, !dbg !7070
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !7079
  %15 = load i64, ptr %tmp, align 8, !dbg !7069
  %tobool45 = icmp ne i64 %15, 0, !dbg !7079
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !7080

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !7081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7081

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !7082
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !7083
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !7084, !range !7062, !noundef !633
  %tobool48 = trunc i8 %18 to i1, !dbg !7084
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #15, !dbg !7085
  store i1 true, ptr %retval, align 1, !dbg !7086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7086

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #14, !dbg !7087
  %19 = load i1, ptr %retval, align 1, !dbg !7087
  ret i1 %19, !dbg !7087
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7088 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #6 align 16 !dbg !7089 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7093, metadata !DIExpression()), !dbg !7095
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7094, metadata !DIExpression()), !dbg !7096
  %0 = load i32, ptr %size.addr, align 4, !dbg !7097
  %1 = load i64, ptr %count.addr, align 8, !dbg !7099
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #15, !dbg !7100
  ret void, !dbg !7101
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7102 dso_local void @__bad_copy_from() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7103 dso_local void @__bad_copy_to() #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #6 align 16 !dbg !7104 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7108, metadata !DIExpression()), !dbg !7111
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7109, metadata !DIExpression()), !dbg !7112
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !7110, metadata !DIExpression()), !dbg !7113
  ret void, !dbg !7114
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7115 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7116 dso_local void @_raw_spin_lock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7119 dso_local void @_raw_spin_unlock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iov_iter_count(ptr noundef %i) #6 align 16 !dbg !7120 {
entry:
  %i.addr = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7126, metadata !DIExpression()), !dbg !7127
  %0 = load ptr, ptr %i.addr, align 8, !dbg !7128
  %1 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6, !dbg !7129
  %count = getelementptr inbounds %struct.anon.29, ptr %1, i32 0, i32 1, !dbg !7129
  %2 = load i64, ptr %count, align 8, !dbg !7129
  ret i64 %2, !dbg !7130
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_iter(ptr noundef %addr, i64 noundef %bytes, ptr noundef %i) #3 align 16 !dbg !7131 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %i.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7135, metadata !DIExpression()), !dbg !7138
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !7136, metadata !DIExpression()), !dbg !7139
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7137, metadata !DIExpression()), !dbg !7140
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7141
  %1 = load i64, ptr %bytes.addr, align 8, !dbg !7143
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #15, !dbg !7144
  br i1 %call, label %if.then, label %if.end, !dbg !7145

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7146
  %3 = load i64, ptr %bytes.addr, align 8, !dbg !7147
  %4 = load ptr, ptr %i.addr, align 8, !dbg !7148
  %call1 = call i64 @_copy_to_iter(ptr noundef %2, i64 noundef %3, ptr noundef %4) #15, !dbg !7149
  store i64 %call1, ptr %retval, align 8, !dbg !7150
  br label %return, !dbg !7150

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !7151
  br label %return, !dbg !7151

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !7152
  ret i64 %5, !dbg !7152
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7153 dso_local i64 @_copy_to_iter(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poll_wait(ptr noundef %filp, ptr noundef %wait_address, ptr noundef %p) #6 align 16 !dbg !7154 {
entry:
  %filp.addr = alloca ptr, align 8
  %wait_address.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !7158, metadata !DIExpression()), !dbg !7161
  store ptr %wait_address, ptr %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait_address.addr, metadata !7159, metadata !DIExpression()), !dbg !7162
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7160, metadata !DIExpression()), !dbg !7163
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7164
  %tobool = icmp ne ptr %0, null, !dbg !7164
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7166

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !7167
  %_qproc = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 0, !dbg !7168
  %2 = load ptr, ptr %_qproc, align 8, !dbg !7168
  %tobool1 = icmp ne ptr %2, null, !dbg !7167
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !7169

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %wait_address.addr, align 8, !dbg !7170
  %tobool3 = icmp ne ptr %3, null, !dbg !7170
  br i1 %tobool3, label %if.then, label %if.end, !dbg !7171

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %p.addr, align 8, !dbg !7172
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, ptr %4, i32 0, i32 0, !dbg !7174
  %5 = load ptr, ptr %_qproc4, align 8, !dbg !7174
  %6 = load ptr, ptr %filp.addr, align 8, !dbg !7175
  %7 = load ptr, ptr %wait_address.addr, align 8, !dbg !7176
  %8 = load ptr, ptr %p.addr, align 8, !dbg !7177
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #15, !dbg !7172
  br label %do.body, !dbg !7178

do.body:                                          ; preds = %if.then
  br label %do.body5, !dbg !7179

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !7181

do.end:                                           ; preds = %do.body5
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !7179, !srcloc !7183
  br label %do.end6, !dbg !7179

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !7184

if.end:                                           ; preds = %do.end6, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !7185
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7186 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7189 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @__to_fd(i64 noundef %v) #6 align 16 !dbg !7192 {
entry:
  %retval = alloca %struct.fd, align 8
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7196, metadata !DIExpression()), !dbg !7197
  %file = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 0, !dbg !7198
  %0 = load i64, ptr %v.addr, align 8, !dbg !7199
  %and = and i64 %0, -4, !dbg !7200
  %1 = inttoptr i64 %and to ptr, !dbg !7201
  store ptr %1, ptr %file, align 8, !dbg !7198
  %flags = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 1, !dbg !7198
  %2 = load i64, ptr %v.addr, align 8, !dbg !7202
  %and1 = and i64 %2, 3, !dbg !7203
  %conv = trunc i64 %and1 to i32, !dbg !7202
  store i32 %conv, ptr %flags, align 8, !dbg !7198
  %3 = load { ptr, i32 }, ptr %retval, align 8, !dbg !7204
  ret { ptr, i32 } %3, !dbg !7204
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7205 dso_local i64 @__fdget(i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #6 align 16 !dbg !7208 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7212, metadata !DIExpression()), !dbg !7213
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7214
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #15, !dbg !7215
  ret void, !dbg !7216
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !7217 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7221, metadata !DIExpression()), !dbg !7223
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7222, metadata !DIExpression()), !dbg !7224
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7225
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !7226
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15, !dbg !7227
  ret void, !dbg !7228
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !7229 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7233, metadata !DIExpression()), !dbg !7237
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7234, metadata !DIExpression()), !dbg !7238
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7235, metadata !DIExpression()), !dbg !7239
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #14, !dbg !7240
  call void @llvm.dbg.declare(metadata ptr %old, metadata !7236, metadata !DIExpression()), !dbg !7241
  %0 = load i32, ptr %i.addr, align 4, !dbg !7242
  %1 = load ptr, ptr %r.addr, align 8, !dbg !7243
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !7244
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #15, !dbg !7245
  store i32 %call, ptr %old, align 4, !dbg !7241
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !7246
  %tobool = icmp ne ptr %2, null, !dbg !7246
  br i1 %tobool, label %if.then, label %if.end, !dbg !7248

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !7249
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !7250
  store i32 %3, ptr %4, align 4, !dbg !7251
  br label %if.end, !dbg !7252

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !7253
  %tobool1 = icmp ne i32 %5, 0, !dbg !7253
  %lnot = xor i1 %tobool1, true, !dbg !7253
  %lnot2 = xor i1 %lnot, true, !dbg !7253
  %lnot3 = xor i1 %lnot2, true, !dbg !7253
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !7253
  %conv = sext i32 %lnot.ext to i64, !dbg !7253
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7253
  %tobool4 = icmp ne i64 %expval, 0, !dbg !7253
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !7255

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !7256
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #15, !dbg !7257
  br label %if.end18, !dbg !7257

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !7258
  %cmp = icmp slt i32 %7, 0, !dbg !7258
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !7258

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !7258
  %9 = load i32, ptr %i.addr, align 4, !dbg !7258
  %add = add i32 %8, %9, !dbg !7258
  %cmp7 = icmp slt i32 %add, 0, !dbg !7258
  br label %lor.end, !dbg !7258

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !7258
  %lnot11 = xor i1 %lnot9, true, !dbg !7258
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !7258
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !7258
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !7258
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !7258
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !7260

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !7261
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #15, !dbg !7262
  br label %if.end17, !dbg !7262

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #14, !dbg !7263
  ret void, !dbg !7263
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !7264 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7266, metadata !DIExpression()), !dbg !7268
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7267, metadata !DIExpression()), !dbg !7269
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7270
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !7271
  %1 = load i32, ptr %i.addr, align 4, !dbg !7272
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7273
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #15, !dbg !7274
  ret i32 %call, !dbg !7275
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !7276 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7278, metadata !DIExpression()), !dbg !7280
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7279, metadata !DIExpression()), !dbg !7281
  %0 = load i32, ptr %i.addr, align 4, !dbg !7282
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7283
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #15, !dbg !7284
  ret i32 %call, !dbg !7285
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !7286 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7288, metadata !DIExpression()), !dbg !7292
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7289, metadata !DIExpression()), !dbg !7293
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !7294
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7290, metadata !DIExpression()), !dbg !7294
  %0 = load i32, ptr %i.addr, align 4, !dbg !7294
  store i32 %0, ptr %__ret, align 4, !dbg !7294
  %1 = load i32, ptr %__ret, align 4, !dbg !7294
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7294
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !7294
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #14, !dbg !7294, !srcloc !7295
  store i32 %3, ptr %__ret, align 4, !dbg !7294
  %4 = load i32, ptr %__ret, align 4, !dbg !7294
  store i32 %4, ptr %tmp, align 4, !dbg !7294
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !7296
  %5 = load i32, ptr %tmp, align 4, !dbg !7294
  ret i32 %5, !dbg !7297
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_eventfd2(i32 noundef %count, i32 noundef %flags) #6 align 16 !dbg !7298 {
entry:
  %count.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7302, metadata !DIExpression()), !dbg !7304
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7303, metadata !DIExpression()), !dbg !7304
  %0 = load i32, ptr %count.addr, align 4, !dbg !7305
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7306
  %call = call i32 @do_eventfd(i32 noundef %0, i32 noundef %1) #15, !dbg !7307
  %conv = sext i32 %call to i64, !dbg !7307
  ret i64 %conv, !dbg !7308
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_eventfd(i32 noundef %count, i32 noundef %flags) #0 align 16 !dbg !5915 {
entry:
  %retval = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %file = alloca ptr, align 8
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5919, metadata !DIExpression()), !dbg !7309
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5920, metadata !DIExpression()), !dbg !7310
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !7311
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5921, metadata !DIExpression()), !dbg !7312
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #14, !dbg !7313
  call void @llvm.dbg.declare(metadata ptr %file, metadata !5922, metadata !DIExpression()), !dbg !7314
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #14, !dbg !7315
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !5923, metadata !DIExpression()), !dbg !7316
  br label %do.body, !dbg !7317

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7318

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7318

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !7320

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !7321

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !7321

do.end3:                                          ; preds = %do.cond2
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7323
  %and = and i32 %0, -526338, !dbg !7325
  %tobool = icmp ne i32 %and, 0, !dbg !7325
  br i1 %tobool, label %if.then, label %if.end, !dbg !7326

if.then:                                          ; preds = %do.end3
  store i32 -22, ptr %retval, align 4, !dbg !7327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7327

if.end:                                           ; preds = %do.end3
  %call = call noalias ptr @kmalloc(i64 noundef 48, i32 noundef 3264) #17, !dbg !7328
  store ptr %call, ptr %ctx, align 8, !dbg !7329
  %1 = load ptr, ptr %ctx, align 8, !dbg !7330
  %tobool4 = icmp ne ptr %1, null, !dbg !7330
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !7332

if.then5:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !7333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7333

if.end6:                                          ; preds = %if.end
  %2 = load ptr, ptr %ctx, align 8, !dbg !7334
  %kref = getelementptr inbounds %struct.eventfd_ctx, ptr %2, i32 0, i32 0, !dbg !7335
  call void @kref_init(ptr noundef %kref) #15, !dbg !7336
  br label %do.body7, !dbg !7337

do.body7:                                         ; preds = %if.end6
  %3 = load ptr, ptr %ctx, align 8, !dbg !7338
  %wqh = getelementptr inbounds %struct.eventfd_ctx, ptr %3, i32 0, i32 1, !dbg !7338
  call void @__init_waitqueue_head(ptr noundef %wqh, ptr noundef @.str.5, ptr noundef @do_eventfd.__key) #15, !dbg !7338
  br label %do.cond8, !dbg !7338

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !7338

do.end9:                                          ; preds = %do.cond8
  %4 = load i32, ptr %count.addr, align 4, !dbg !7340
  %conv = zext i32 %4 to i64, !dbg !7340
  %5 = load ptr, ptr %ctx, align 8, !dbg !7341
  %count10 = getelementptr inbounds %struct.eventfd_ctx, ptr %5, i32 0, i32 2, !dbg !7342
  store i64 %conv, ptr %count10, align 8, !dbg !7343
  %6 = load i32, ptr %flags.addr, align 4, !dbg !7344
  %7 = load ptr, ptr %ctx, align 8, !dbg !7345
  %flags11 = getelementptr inbounds %struct.eventfd_ctx, ptr %7, i32 0, i32 3, !dbg !7346
  store i32 %6, ptr %flags11, align 8, !dbg !7347
  %call12 = call i32 @ida_alloc_range(ptr noundef @eventfd_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #15, !dbg !7348
  %8 = load ptr, ptr %ctx, align 8, !dbg !7349
  %id = getelementptr inbounds %struct.eventfd_ctx, ptr %8, i32 0, i32 4, !dbg !7350
  store i32 %call12, ptr %id, align 4, !dbg !7351
  %9 = load i32, ptr %flags.addr, align 4, !dbg !7352
  %and13 = and i32 %9, 526336, !dbg !7352
  store i32 %and13, ptr %flags.addr, align 4, !dbg !7352
  %10 = load i32, ptr %flags.addr, align 4, !dbg !7353
  %or = or i32 %10, 2, !dbg !7353
  store i32 %or, ptr %flags.addr, align 4, !dbg !7353
  %11 = load i32, ptr %flags.addr, align 4, !dbg !7354
  %call14 = call i32 @get_unused_fd_flags(i32 noundef %11) #15, !dbg !7355
  store i32 %call14, ptr %fd, align 4, !dbg !7356
  %12 = load i32, ptr %fd, align 4, !dbg !7357
  %cmp = icmp slt i32 %12, 0, !dbg !7359
  br i1 %cmp, label %if.then16, label %if.end17, !dbg !7360

if.then16:                                        ; preds = %do.end9
  br label %err, !dbg !7361

if.end17:                                         ; preds = %do.end9
  %13 = load ptr, ptr %ctx, align 8, !dbg !7362
  %14 = load i32, ptr %flags.addr, align 4, !dbg !7363
  %call18 = call ptr @anon_inode_getfile(ptr noundef @.str.6, ptr noundef @eventfd_fops, ptr noundef %13, i32 noundef %14) #15, !dbg !7364
  store ptr %call18, ptr %file, align 8, !dbg !7365
  %15 = load ptr, ptr %file, align 8, !dbg !7366
  %call19 = call zeroext i1 @IS_ERR(ptr noundef %15) #15, !dbg !7368
  br i1 %call19, label %if.then20, label %if.end23, !dbg !7369

if.then20:                                        ; preds = %if.end17
  %16 = load i32, ptr %fd, align 4, !dbg !7370
  call void @put_unused_fd(i32 noundef %16) #15, !dbg !7372
  %17 = load ptr, ptr %file, align 8, !dbg !7373
  %call21 = call i64 @PTR_ERR(ptr noundef %17) #15, !dbg !7374
  %conv22 = trunc i64 %call21 to i32, !dbg !7374
  store i32 %conv22, ptr %fd, align 4, !dbg !7375
  br label %err, !dbg !7376

if.end23:                                         ; preds = %if.end17
  %18 = load ptr, ptr %file, align 8, !dbg !7377
  %f_mode = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 2, !dbg !7378
  %19 = load i32, ptr %f_mode, align 4, !dbg !7379
  %or24 = or i32 %19, 134217728, !dbg !7379
  store i32 %or24, ptr %f_mode, align 4, !dbg !7379
  %20 = load i32, ptr %fd, align 4, !dbg !7380
  %21 = load ptr, ptr %file, align 8, !dbg !7381
  call void @fd_install(i32 noundef %20, ptr noundef %21) #15, !dbg !7382
  %22 = load i32, ptr %fd, align 4, !dbg !7383
  store i32 %22, ptr %retval, align 4, !dbg !7384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7384

err:                                              ; preds = %if.then20, %if.then16
  call void @llvm.dbg.label(metadata !5924), !dbg !7385
  %23 = load ptr, ptr %ctx, align 8, !dbg !7386
  call void @eventfd_free_ctx(ptr noundef %23) #15, !dbg !7387
  %24 = load i32, ptr %fd, align 4, !dbg !7388
  store i32 %24, ptr %retval, align 4, !dbg !7389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7389

cleanup:                                          ; preds = %err, %if.end23, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #14, !dbg !7390
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #14, !dbg !7390
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !7390
  %25 = load i32, ptr %retval, align 4, !dbg !7390
  ret i32 %25, !dbg !7390
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !7391 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7395, metadata !DIExpression()), !dbg !7400
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7396, metadata !DIExpression()), !dbg !7401
  %0 = load i64, ptr %size.addr, align 8, !dbg !7402
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7403
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7404

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7405
  %tobool = icmp ne i64 %2, 0, !dbg !7405
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7406

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !7407
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7397, metadata !DIExpression()), !dbg !7408
  %3 = load i64, ptr %size.addr, align 8, !dbg !7409
  %cmp = icmp ugt i64 %3, 8192, !dbg !7411
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7412

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7413
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7414
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !7415
  store ptr %call, ptr %retval, align 8, !dbg !7416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7416

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7417
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !7417
  store i32 %call2, ptr %index, align 4, !dbg !7418
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7419
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7420
  %9 = ptrtoint ptr %8 to i64, !dbg !7420
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !7421
  %idxprom = zext i32 %call3 to i64, !dbg !7422
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7422
  %10 = load i32, ptr %index, align 4, !dbg !7423
  %idxprom4 = zext i32 %10 to i64, !dbg !7422
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7422
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7422
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7424
  %13 = load i64, ptr %size.addr, align 8, !dbg !7425
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !7426
  store ptr %call6, ptr %retval, align 8, !dbg !7427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7427

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !7428
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7429
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7430
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !7431
  store ptr %call8, ptr %retval, align 8, !dbg !7432
  br label %return, !dbg !7432

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7433
  ret ptr %16, !dbg !7433
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_init(ptr noundef %kref) #6 align 16 !dbg !7434 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !7436, metadata !DIExpression()), !dbg !7437
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !7438
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !7439
  call void @refcount_set(ptr noundef %refcount, i32 noundef 1) #15, !dbg !7440
  ret void, !dbg !7441
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7442 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7446 dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7449 dso_local i32 @get_unused_fd_flags(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7452 dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #6 align 16 !dbg !7456 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7460, metadata !DIExpression()), !dbg !7461
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7462
  %1 = ptrtoint ptr %0 to i64, !dbg !7462
  %2 = inttoptr i64 %1 to ptr, !dbg !7462
  %3 = ptrtoint ptr %2 to i64, !dbg !7462
  %cmp = icmp uge i64 %3, -4095, !dbg !7462
  %lnot = xor i1 %cmp, true, !dbg !7462
  %lnot1 = xor i1 %lnot, true, !dbg !7462
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7462
  %conv = sext i32 %lnot.ext to i64, !dbg !7462
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7462
  %tobool = icmp ne i64 %expval, 0, !dbg !7462
  ret i1 %tobool, !dbg !7463
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7464 dso_local void @put_unused_fd(i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #6 align 16 !dbg !7467 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7471, metadata !DIExpression()), !dbg !7472
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7473
  %1 = ptrtoint ptr %0 to i64, !dbg !7474
  ret i64 %1, !dbg !7475
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7476 dso_local void @fd_install(i32 noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7479 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !7480 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7484, metadata !DIExpression()), !dbg !7486
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7485, metadata !DIExpression()), !dbg !7487
  %0 = load i64, ptr %size.addr, align 8, !dbg !7488
  %tobool = icmp ne i64 %0, 0, !dbg !7488
  br i1 %tobool, label %if.end, label %if.then, !dbg !7490

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7491
  br label %return, !dbg !7491

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7492
  %cmp = icmp ule i64 %1, 8, !dbg !7494
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7495

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7496
  br label %return, !dbg !7496

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7497
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7499
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7500

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7501
  %cmp4 = icmp ule i64 %3, 96, !dbg !7502
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7503

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7504
  br label %return, !dbg !7504

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7505
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7507
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7508

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7509
  %cmp9 = icmp ule i64 %5, 192, !dbg !7510
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7511

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7512
  br label %return, !dbg !7512

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7513
  %cmp12 = icmp ule i64 %6, 8, !dbg !7515
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7516

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7517
  br label %return, !dbg !7517

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7518
  %cmp15 = icmp ule i64 %7, 16, !dbg !7520
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7521

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7522
  br label %return, !dbg !7522

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7523
  %cmp18 = icmp ule i64 %8, 32, !dbg !7525
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7526

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7527
  br label %return, !dbg !7527

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7528
  %cmp21 = icmp ule i64 %9, 64, !dbg !7530
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7531

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7532
  br label %return, !dbg !7532

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7533
  %cmp24 = icmp ule i64 %10, 128, !dbg !7535
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7536

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7537
  br label %return, !dbg !7537

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7538
  %cmp27 = icmp ule i64 %11, 256, !dbg !7540
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7541

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7542
  br label %return, !dbg !7542

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7543
  %cmp30 = icmp ule i64 %12, 512, !dbg !7545
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7546

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7547
  br label %return, !dbg !7547

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7548
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7550
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7551

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7552
  br label %return, !dbg !7552

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7553
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7555
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7556

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7557
  br label %return, !dbg !7557

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7558
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7560
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7561

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7562
  br label %return, !dbg !7562

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7563
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7565
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7566

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7567
  br label %return, !dbg !7567

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7568
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7570
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7571

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7572
  br label %return, !dbg !7572

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7573
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7575
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7576

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7577
  br label %return, !dbg !7577

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7578
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7580
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7581

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7582
  br label %return, !dbg !7582

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7583
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7585
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7586

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7587
  br label %return, !dbg !7587

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7588
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7590
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7591

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7592
  br label %return, !dbg !7592

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7593
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7595
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7596

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7597
  br label %return, !dbg !7597

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7598
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7600
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7601

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7602
  br label %return, !dbg !7602

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7603
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7605
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7606

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7607
  br label %return, !dbg !7607

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7608, !range !7062, !noundef !633
  %tobool69 = trunc i8 %25 to i1, !dbg !7608
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7610

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7611

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #19, !dbg !7612, !srcloc !7615
  unreachable, !dbg !7612

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7616

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7617

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7618

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7620

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7618

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 480, i32 0, i64 12) #14, !dbg !7622, !srcloc !7624
  br label %do.end75, !dbg !7622

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7618

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7625
  br label %return, !dbg !7625

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7626
  ret i32 %26, !dbg !7626
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7627 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !7630 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7634, metadata !DIExpression()), !dbg !7636
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7635, metadata !DIExpression()), !dbg !7637
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7638
  %and = and i32 %0, 17, !dbg !7638
  %cmp = icmp eq i32 %and, 0, !dbg !7638
  %lnot = xor i1 %cmp, true, !dbg !7638
  %lnot1 = xor i1 %lnot, true, !dbg !7638
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7638
  %conv = sext i32 %lnot.ext to i64, !dbg !7638
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7638
  %tobool = icmp ne i64 %expval, 0, !dbg !7638
  br i1 %tobool, label %if.then, label %if.end, !dbg !7640

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7641
  br label %return, !dbg !7641

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7642
  %and2 = and i32 %1, 1, !dbg !7644
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7644
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7645

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7646
  br label %return, !dbg !7646

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7647
  br label %return, !dbg !7647

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7649
  ret i32 %2, !dbg !7649
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7650 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7651 dso_local void @__compiletime_assert_245() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #6 align 16 !dbg !7652 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7656, metadata !DIExpression()), !dbg !7658
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7657, metadata !DIExpression()), !dbg !7659
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7660
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !7661
  %1 = load i32, ptr %n.addr, align 4, !dbg !7662
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #15, !dbg !7663
  ret void, !dbg !7664
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !7665 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7669, metadata !DIExpression()), !dbg !7671
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7670, metadata !DIExpression()), !dbg !7672
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7673
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #15, !dbg !7674
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7675
  %2 = load i32, ptr %i.addr, align 4, !dbg !7676
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #15, !dbg !7677
  ret void, !dbg !7678
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !7679 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7681, metadata !DIExpression()), !dbg !7683
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7682, metadata !DIExpression()), !dbg !7684
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7685
  %1 = load i64, ptr %size.addr, align 8, !dbg !7686
  %conv = trunc i64 %1 to i32, !dbg !7686
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !7687
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7688
  %3 = load i64, ptr %size.addr, align 8, !dbg !7688
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #15, !dbg !7688
  ret void, !dbg !7689
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !7690 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7692, metadata !DIExpression()), !dbg !7694
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7693, metadata !DIExpression()), !dbg !7695
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7696
  %1 = load i32, ptr %i.addr, align 4, !dbg !7697
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #15, !dbg !7698
  ret void, !dbg !7699
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !7700 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7702, metadata !DIExpression()), !dbg !7704
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7703, metadata !DIExpression()), !dbg !7705
  br label %do.body, !dbg !7706

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !7707
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7707
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !7707
  store volatile i32 %0, ptr %counter, align 4, !dbg !7707
  br label %do.end, !dbg !7707

do.end:                                           ; preds = %do.body
  ret void, !dbg !7709
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_eventfd(i32 noundef %count) #6 align 16 !dbg !7710 {
entry:
  %count.addr = alloca i32, align 4
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7714, metadata !DIExpression()), !dbg !7715
  %0 = load i32, ptr %count.addr, align 4, !dbg !7716
  %call = call i32 @do_eventfd(i32 noundef %0, i32 noundef 0) #15, !dbg !7717
  %conv = sext i32 %call to i64, !dbg !7717
  ret i64 %conv, !dbg !7718
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { nounwind memory(none) }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5935, !5936, !5937, !5938, !5939, !5940, !5941, !5942}
!llvm.ident = !{!5943}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/eventfd.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd156b017630eb5b860c955ada371e30")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_eventfd_signal314", scope: !9, file: !2, line: 92, type: !25, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.eventfd.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/eventfd\22 -D KBUILD_BASENAME=\22eventfd\22 -D KBUILD_MODNAME=\22eventfd\22 -D __KBUILD_MODNAME=kmod_eventfd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/eventfd.ll fs/eventfd.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !290, globals: !5878, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17, !112, !118, !134, !141, !147, !158, !164, !170, !177, !185, !192, !201, !206, !211, !217, !226, !231, !237, !244, !252, !259, !267, !272, !280}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !19, file: !18, line: 147, baseType: !13, size: 32, elements: !109)
!18 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !18, line: 135, size: 512, elements: !20)
!20 = !{!21, !24, !26, !28, !32, !33, !49, !107, !108}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !19, file: !18, line: 136, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !18, line: 137, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !19, file: !18, line: 138, baseType: !27, size: 32, offset: 128)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !19, file: !18, line: 139, baseType: !29, size: 16, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !30, line: 24, baseType: !31)
!30 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !19, file: !18, line: 150, baseType: !17, size: 32, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !19, file: !18, line: 151, baseType: !34, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !18, line: 64, baseType: !36)
!36 = !DISubroutineType(types: !37)
!37 = !{!27, !38, !27, !25, !39, !45}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 61, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !42, line: 72, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !42, line: 16, baseType: !44)
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !30, line: 52, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !42, line: 88, baseType: !48)
!48 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !19, file: !18, line: 152, baseType: !50, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !18, line: 117, size: 256, elements: !52)
!52 = !{!53, !58}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !51, file: !18, line: 118, baseType: !54, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !30, line: 174, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 172, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !55, file: !30, line: 173, baseType: !27, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !51, file: !18, line: 119, baseType: !59, size: 192, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !60, line: 41, baseType: !61)
!60 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !60, line: 37, size: 192, elements: !62)
!62 = !{!63, !101}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !61, file: !60, line: 38, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !65, line: 29, baseType: !66)
!65 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !65, line: 17, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, scope: !66, file: !65, line: 18, baseType: !69, size: 32)
!69 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !66, file: !65, line: 18, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !69, file: !65, line: 19, baseType: !72, size: 32)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !73, line: 14, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !72, file: !73, line: 15, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !77, line: 44, baseType: !78)
!77 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !77, line: 14, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !78, file: !77, line: 15, baseType: !81, size: 32)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !78, file: !77, line: 15, size: 32, elements: !82)
!82 = !{!83, !84, !94}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !81, file: !77, line: 16, baseType: !54, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !77, line: 24, baseType: !85, size: 16)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !77, line: 24, size: 16, elements: !86)
!86 = !{!87, !93}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !85, file: !77, line: 25, baseType: !88, size: 8)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !89, line: 17, baseType: !90)
!89 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !91, line: 21, baseType: !92)
!91 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !85, file: !77, line: 26, baseType: !88, size: 8, offset: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !77, line: 28, baseType: !95, size: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !77, line: 28, size: 32, elements: !96)
!96 = !{!97, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !95, file: !77, line: 29, baseType: !98, size: 16)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !89, line: 19, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !91, line: 24, baseType: !31)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !95, file: !77, line: 30, baseType: !98, size: 16, offset: 16)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !61, file: !60, line: 39, baseType: !102, size: 128, offset: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !30, line: 190, size: 128, elements: !103)
!103 = !{!104, !106}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !30, line: 191, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !102, file: !30, line: 191, baseType: !105, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !19, file: !18, line: 153, baseType: !25, size: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !19, file: !18, line: 154, baseType: !25, size: 64, offset: 448)
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!111 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !113, line: 16, baseType: !13, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "TT_NONE", value: 0)
!116 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!117 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !119, line: 1325, baseType: !13, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!121 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!122 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!123 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!124 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!125 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!126 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!127 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!128 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!129 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!130 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!131 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!132 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!133 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !135, line: 312, baseType: !13, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!138 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!139 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!140 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !142, line: 26, baseType: !13, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!145 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!146 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !148, line: 253, baseType: !13, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157}
!150 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!151 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!152 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!153 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!154 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!155 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!156 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!157 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !148, line: 158, baseType: !13, size: 32, elements: !159)
!159 = !{!160, !161, !162, !163}
!160 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!161 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!162 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!163 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !165, line: 45, baseType: !13, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!168 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!169 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !171, line: 487, baseType: !13, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!172 = !{!173, !174, !175, !176}
!173 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!174 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!175 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!176 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !178, line: 620, baseType: !13, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!179 = !{!180, !181, !182, !183, !184}
!180 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!181 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!182 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!183 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!184 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !178, line: 597, baseType: !27, size: 32, elements: !186)
!186 = !{!187, !188, !189, !190, !191}
!187 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!188 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!189 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!190 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!191 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !171, line: 547, baseType: !13, size: 32, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200}
!194 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!195 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!196 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!197 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!198 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!199 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!200 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !171, line: 564, baseType: !13, size: 32, elements: !202)
!202 = !{!203, !204, !205}
!203 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!204 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!205 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !171, line: 577, baseType: !13, size: 32, elements: !207)
!207 = !{!208, !209, !210}
!208 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!209 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!210 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !171, line: 503, baseType: !13, size: 32, elements: !212)
!212 = !{!213, !214, !215, !216}
!213 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!214 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!215 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!216 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !218, line: 593, baseType: !27, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!219 = !{!220, !221, !222, !223, !224, !225}
!220 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!221 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!222 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!223 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!224 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!225 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !227, line: 2052, baseType: !13, size: 32, elements: !228)
!227 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!228 = !{!229, !230}
!229 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!230 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !232, line: 54, baseType: !13, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!233 = !{!234, !235, !236}
!234 = !DIEnumerator(name: "USRQUOTA", value: 0)
!235 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!236 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !238, line: 15, baseType: !13, size: 32, elements: !239)
!238 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!239 = !{!240, !241, !242, !243}
!240 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!241 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!242 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!243 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !245, line: 68, baseType: !13, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!246 = !{!247, !248, !249, !250, !251}
!247 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!248 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!249 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!250 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!251 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !253, line: 51, baseType: !13, size: 32, elements: !254)
!253 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!254 = !{!255, !256, !257, !258}
!255 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!256 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!257 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!258 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !260, line: 9, baseType: !13, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!261 = !{!262, !263, !264, !265, !266}
!262 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!263 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!264 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!265 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!266 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !268, line: 10, baseType: !13, size: 32, elements: !269)
!268 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!269 = !{!270, !271}
!270 = !DIEnumerator(name: "false", value: 0)
!271 = !DIEnumerator(name: "true", value: 1)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !273, line: 119, baseType: !13, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!274 = !{!275, !276, !277, !278, !279}
!275 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!276 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!277 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!278 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!279 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !281, line: 364, baseType: !13, size: 32, elements: !282)
!281 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!282 = !{!283, !284, !285, !286, !287, !288, !289}
!283 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!284 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!285 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!286 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!287 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!288 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!289 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!290 = !{!25, !291, !292, !13, !294, !295, !44, !5857, !5860, !5868, !5869, !27, !5871, !5873, !365, !640, !750, !659, !5876, !1050}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !30, line: 42, baseType: !44)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !293, line: 59, baseType: !13)
!293 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !297, line: 746, size: 58368, elements: !298)
!297 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!298 = !{!299, !309, !310, !311, !316, !317, !318, !319, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !402, !413, !514, !518, !521, !552, !553, !554, !555, !566, !568, !569, !570, !571, !572, !573, !584, !585, !588, !589, !590, !591, !592, !593, !594, !595, !602, !603, !610, !611, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !5022, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5065, !5071, !5072, !5073, !5074, !5075, !5077, !5080, !5087, !5092, !5095, !5098, !5101, !5133, !5331, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5369, !5370, !5371, !5380, !5388, !5389, !5390, !5391, !5392, !5397, !5398, !5399, !5402, !5403, !5406, !5409, !5412, !5420, !5423, !5424, !5510, !5511, !5512, !5513, !5514, !5520, !5521, !5522, !5523, !5524, !5525, !5528, !5531, !5532, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5575, !5576, !5582, !5585, !5586, !5587, !5588, !5589, !5590, !5591, !5594, !5666, !5668, !5669, !5670, !5671, !5672, !5673, !5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685, !5686, !5690, !5691, !5692}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !296, file: !297, line: 752, baseType: !300, size: 192)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !301, line: 56, size: 192, elements: !302)
!301 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!302 = !{!303, !304, !305, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !301, line: 57, baseType: !44, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !300, file: !301, line: 58, baseType: !44, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !300, file: !301, line: 59, baseType: !306, size: 32, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !89, line: 21, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !91, line: 27, baseType: !13)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !300, file: !301, line: 61, baseType: !306, size: 32, offset: 160)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !296, file: !297, line: 754, baseType: !13, size: 32, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !296, file: !297, line: 767, baseType: !25, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !296, file: !297, line: 768, baseType: !312, size: 32, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !273, line: 113, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !273, line: 111, size: 32, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !313, file: !273, line: 112, baseType: !54, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !297, line: 770, baseType: !13, size: 32, offset: 352)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !296, file: !297, line: 771, baseType: !13, size: 32, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !296, file: !297, line: 774, baseType: !27, size: 32, offset: 416)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !296, file: !297, line: 775, baseType: !320, size: 128, offset: 448)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !321, line: 58, size: 128, elements: !322)
!321 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!322 = !{!323, !329, !334, !335}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !320, file: !321, line: 59, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !325, line: 60, size: 64, elements: !326)
!325 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !325, line: 61, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !321, line: 60, baseType: !330, size: 32, offset: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !321, line: 60, size: 32, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !330, file: !321, line: 61, baseType: !13, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !330, file: !321, line: 62, baseType: !54, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !320, file: !321, line: 65, baseType: !98, size: 16, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !320, file: !321, line: 65, baseType: !98, size: 16, offset: 112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !296, file: !297, line: 776, baseType: !13, size: 32, offset: 576)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !296, file: !297, line: 777, baseType: !44, size: 64, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !296, file: !297, line: 778, baseType: !295, size: 64, offset: 704)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !296, file: !297, line: 787, baseType: !27, size: 32, offset: 768)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !296, file: !297, line: 788, baseType: !27, size: 32, offset: 800)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !296, file: !297, line: 790, baseType: !27, size: 32, offset: 832)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !296, file: !297, line: 792, baseType: !27, size: 32, offset: 864)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !296, file: !297, line: 793, baseType: !27, size: 32, offset: 896)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !296, file: !297, line: 794, baseType: !27, size: 32, offset: 928)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !296, file: !297, line: 795, baseType: !13, size: 32, offset: 960)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !296, file: !297, line: 797, baseType: !347, size: 2048, offset: 1024)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !297, line: 551, size: 2048, elements: !348)
!348 = !{!349, !354, !362, !366, !367, !368, !369, !370, !371, !372, !373, !376, !377, !378, !379, !381, !384, !385, !386}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !347, file: !297, line: 553, baseType: !350, size: 128)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !297, line: 411, size: 128, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !350, file: !297, line: 412, baseType: !44, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !350, file: !297, line: 413, baseType: !306, size: 32, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !347, file: !297, line: 554, baseType: !355, size: 192, align: 64, offset: 128)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !356, line: 5, size: 192, align: 64, elements: !357)
!356 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!357 = !{!358, !359, !361}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !355, file: !356, line: 6, baseType: !44, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !355, file: !356, line: 7, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !355, file: !356, line: 8, baseType: !360, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !347, file: !297, line: 555, baseType: !363, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !89, line: 23, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !91, line: 31, baseType: !365)
!365 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !347, file: !297, line: 556, baseType: !363, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !347, file: !297, line: 558, baseType: !102, size: 128, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !347, file: !297, line: 559, baseType: !13, size: 32, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !347, file: !297, line: 561, baseType: !363, size: 64, offset: 640)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !347, file: !297, line: 562, baseType: !363, size: 64, offset: 704)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !347, file: !297, line: 563, baseType: !363, size: 64, offset: 768)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !347, file: !297, line: 564, baseType: !363, size: 64, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !347, file: !297, line: 565, baseType: !374, size: 64, offset: 896)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !89, line: 22, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !91, line: 30, baseType: !48)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !347, file: !297, line: 566, baseType: !363, size: 64, offset: 960)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !347, file: !297, line: 568, baseType: !363, size: 64, offset: 1024)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !347, file: !297, line: 571, baseType: !27, size: 32, offset: 1088)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !347, file: !297, line: 572, baseType: !380, size: 64, offset: 1152)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !347, file: !297, line: 574, baseType: !382, size: 64, offset: 1216)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !297, line: 49, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !347, file: !297, line: 576, baseType: !382, size: 64, offset: 1280)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !347, file: !297, line: 578, baseType: !44, size: 64, offset: 1344)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !347, file: !297, line: 588, baseType: !387, size: 512, align: 512, offset: 1536)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !297, line: 497, size: 512, align: 512, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !387, file: !297, line: 498, baseType: !363, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !387, file: !297, line: 499, baseType: !363, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !387, file: !297, line: 500, baseType: !363, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !387, file: !297, line: 501, baseType: !306, size: 32, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !387, file: !297, line: 502, baseType: !306, size: 32, offset: 224)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !387, file: !297, line: 503, baseType: !44, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !387, file: !297, line: 504, baseType: !44, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !387, file: !297, line: 505, baseType: !44, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !387, file: !297, line: 506, baseType: !398, size: 64, align: 64, offset: 448)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !297, line: 445, size: 64, align: 64, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !398, file: !297, line: 446, baseType: !13, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !398, file: !297, line: 447, baseType: !13, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !296, file: !297, line: 798, baseType: !403, size: 384, offset: 3072)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !297, line: 592, size: 384, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !403, file: !297, line: 593, baseType: !102, size: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !403, file: !297, line: 594, baseType: !44, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !403, file: !297, line: 595, baseType: !44, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !403, file: !297, line: 596, baseType: !13, size: 32, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !403, file: !297, line: 597, baseType: !31, size: 16, offset: 288)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !403, file: !297, line: 598, baseType: !31, size: 16, offset: 304)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !403, file: !297, line: 600, baseType: !412, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !296, file: !297, line: 799, baseType: !414, size: 1792, offset: 3456)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !297, line: 610, size: 1792, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !511, !512}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !414, file: !297, line: 611, baseType: !355, size: 192, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !414, file: !297, line: 618, baseType: !363, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !414, file: !297, line: 619, baseType: !363, size: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !414, file: !297, line: 620, baseType: !363, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !414, file: !297, line: 621, baseType: !363, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !414, file: !297, line: 622, baseType: !363, size: 64, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !414, file: !297, line: 629, baseType: !374, size: 64, offset: 512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !414, file: !297, line: 630, baseType: !363, size: 64, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !297, line: 631, baseType: !13, size: 32, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !414, file: !297, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !414, file: !297, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !414, file: !297, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !414, file: !297, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !414, file: !297, line: 662, baseType: !430, size: 512, offset: 704)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !431)
!431 = !{!432, !440, !441, !446, !507, !508, !509, !510}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !430, file: !12, line: 119, baseType: !433, size: 256)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !434, line: 9, size: 256, elements: !435)
!434 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !433, file: !434, line: 10, baseType: !355, size: 192, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !433, file: !434, line: 11, baseType: !438, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !439, line: 29, baseType: !374)
!439 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !430, file: !12, line: 120, baseType: !438, size: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !430, file: !12, line: 121, baseType: !442, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!11, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !430, file: !12, line: 122, baseType: !447, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !449)
!449 = !{!450, !476, !477, !480, !490, !491, !502, !506}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !448, file: !12, line: 160, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !453)
!453 = !{!454, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !452, file: !12, line: 216, baseType: !455, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !73, line: 23, baseType: !72)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !452, file: !12, line: 217, baseType: !13, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !452, file: !12, line: 218, baseType: !13, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !452, file: !12, line: 219, baseType: !13, size: 32, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !452, file: !12, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !452, file: !12, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !452, file: !12, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !452, file: !12, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !452, file: !12, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !452, file: !12, line: 226, baseType: !13, size: 32, offset: 160)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !452, file: !12, line: 227, baseType: !31, size: 16, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !452, file: !12, line: 228, baseType: !31, size: 16, offset: 208)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !452, file: !12, line: 229, baseType: !13, size: 32, offset: 224)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !452, file: !12, line: 235, baseType: !438, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !452, file: !12, line: 236, baseType: !445, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !452, file: !12, line: 237, baseType: !438, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !452, file: !12, line: 238, baseType: !445, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !452, file: !12, line: 239, baseType: !473, size: 4096, align: 512, offset: 512)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 4096, align: 512, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 8)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !448, file: !12, line: 161, baseType: !13, size: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !448, file: !12, line: 162, baseType: !478, size: 32, offset: 96)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !30, line: 32, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !42, line: 96, baseType: !27)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !448, file: !12, line: 163, baseType: !481, size: 32, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !482, line: 274, baseType: !483)
!482 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !482, line: 274, size: 32, elements: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !483, file: !482, line: 274, baseType: !486, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !482, line: 69, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !482, line: 64, size: 32, elements: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !487, file: !482, line: 65, baseType: !13, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !448, file: !12, line: 164, baseType: !445, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !448, file: !12, line: 165, baseType: !492, size: 128, offset: 256)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !434, line: 14, size: 128, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !492, file: !434, line: 15, baseType: !495, size: 128)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !356, line: 26, size: 128, elements: !496)
!496 = !{!497, !501}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !495, file: !356, line: 27, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !356, line: 12, size: 64, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !498, file: !356, line: 13, baseType: !360, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !495, file: !356, line: 28, baseType: !360, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !448, file: !12, line: 166, baseType: !503, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!438}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !448, file: !12, line: 167, baseType: !438, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !430, file: !12, line: 123, baseType: !88, size: 8, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !430, file: !12, line: 124, baseType: !88, size: 8, offset: 456)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !430, file: !12, line: 125, baseType: !88, size: 8, offset: 464)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !430, file: !12, line: 126, baseType: !88, size: 8, offset: 472)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !414, file: !297, line: 671, baseType: !430, size: 512, offset: 1216)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !414, file: !297, line: 679, baseType: !513, size: 64, offset: 1728)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !296, file: !297, line: 800, baseType: !515, size: 64, offset: 5248)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !297, line: 800, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !296, file: !297, line: 809, baseType: !519, size: 64, offset: 5312)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !297, line: 70, flags: DIFlagFwdDecl)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !296, file: !297, line: 825, baseType: !522, size: 2048, align: 512, offset: 5632)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !297, line: 509, size: 2048, align: 512, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !522, file: !297, line: 511, baseType: !363, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !522, file: !297, line: 512, baseType: !363, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !522, file: !297, line: 513, baseType: !363, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !522, file: !297, line: 514, baseType: !363, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !522, file: !297, line: 515, baseType: !363, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !522, file: !297, line: 516, baseType: !363, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !522, file: !297, line: 518, baseType: !363, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !522, file: !297, line: 519, baseType: !363, size: 64, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !522, file: !297, line: 520, baseType: !374, size: 64, offset: 512)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !522, file: !297, line: 522, baseType: !363, size: 64, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !522, file: !297, line: 523, baseType: !363, size: 64, offset: 640)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !522, file: !297, line: 524, baseType: !374, size: 64, offset: 704)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !522, file: !297, line: 526, baseType: !374, size: 64, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !522, file: !297, line: 527, baseType: !363, size: 64, offset: 832)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !522, file: !297, line: 529, baseType: !363, size: 64, offset: 896)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !522, file: !297, line: 530, baseType: !363, size: 64, offset: 960)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !522, file: !297, line: 531, baseType: !363, size: 64, offset: 1024)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !522, file: !297, line: 532, baseType: !363, size: 64, offset: 1088)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !522, file: !297, line: 533, baseType: !363, size: 64, offset: 1152)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !522, file: !297, line: 535, baseType: !363, size: 64, offset: 1216)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !522, file: !297, line: 536, baseType: !363, size: 64, offset: 1280)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !522, file: !297, line: 537, baseType: !363, size: 64, offset: 1344)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !522, file: !297, line: 538, baseType: !363, size: 64, offset: 1408)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !522, file: !297, line: 539, baseType: !363, size: 64, offset: 1472)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !522, file: !297, line: 540, baseType: !363, size: 64, offset: 1536)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !522, file: !297, line: 541, baseType: !363, size: 64, offset: 1600)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !522, file: !297, line: 542, baseType: !363, size: 64, offset: 1664)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !522, file: !297, line: 543, baseType: !363, size: 64, offset: 1728)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !296, file: !297, line: 833, baseType: !13, size: 32, offset: 7680)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !296, file: !297, line: 836, baseType: !13, size: 32, offset: 7712)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !296, file: !297, line: 837, baseType: !27, size: 32, offset: 7744)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !296, file: !297, line: 838, baseType: !556, size: 64, offset: 7808)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !559, line: 19, baseType: !560)
!559 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !559, line: 19, size: 64, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !560, file: !559, line: 19, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 1)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !296, file: !297, line: 839, baseType: !567, size: 64, offset: 7872)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !296, file: !297, line: 840, baseType: !558, size: 64, offset: 7936)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !296, file: !297, line: 841, baseType: !25, size: 64, offset: 8000)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !296, file: !297, line: 843, baseType: !31, size: 16, offset: 8064)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !296, file: !297, line: 845, baseType: !31, size: 16, offset: 8080)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !296, file: !297, line: 848, baseType: !27, size: 32, offset: 8096)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !296, file: !297, line: 849, baseType: !574, size: 32, offset: 8128)
!574 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !297, line: 718, size: 32, elements: !575)
!575 = !{!576, !583}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !574, file: !297, line: 724, baseType: !577, size: 32)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !297, line: 719, size: 32, elements: !578)
!578 = !{!579, !580, !581, !582}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !577, file: !297, line: 720, baseType: !88, size: 8)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !577, file: !297, line: 721, baseType: !88, size: 8, offset: 8)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !577, file: !297, line: 722, baseType: !88, size: 8, offset: 16)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !577, file: !297, line: 723, baseType: !88, size: 8, offset: 24)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !574, file: !297, line: 725, baseType: !306, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !296, file: !297, line: 850, baseType: !102, size: 128, offset: 8192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !296, file: !297, line: 851, baseType: !586, size: 64, offset: 8320)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !297, line: 60, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !296, file: !297, line: 855, baseType: !44, size: 64, offset: 8384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !296, file: !297, line: 856, baseType: !88, size: 8, offset: 8448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !296, file: !297, line: 857, baseType: !88, size: 8, offset: 8456)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !296, file: !297, line: 858, baseType: !27, size: 32, offset: 8480)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !296, file: !297, line: 859, baseType: !102, size: 128, offset: 8512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !296, file: !297, line: 860, baseType: !27, size: 32, offset: 8640)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !296, file: !297, line: 861, baseType: !102, size: 128, offset: 8704)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !296, file: !297, line: 873, baseType: !596, size: 256, offset: 8832)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !297, line: 376, size: 256, elements: !597)
!597 = !{!598, !599, !600, !601}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !596, file: !297, line: 381, baseType: !44, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !596, file: !297, line: 384, baseType: !365, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !596, file: !297, line: 389, baseType: !365, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !596, file: !297, line: 392, baseType: !365, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !296, file: !297, line: 875, baseType: !102, size: 128, offset: 9088)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !296, file: !297, line: 877, baseType: !604, size: 320, offset: 9216)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !605, line: 86, size: 320, elements: !606)
!605 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!606 = !{!607, !608, !609}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !604, file: !605, line: 87, baseType: !27, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !604, file: !605, line: 88, baseType: !102, size: 128, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !604, file: !605, line: 89, baseType: !102, size: 128, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !296, file: !297, line: 878, baseType: !355, size: 192, align: 64, offset: 9536)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !296, file: !297, line: 881, baseType: !612, size: 64, offset: 9728)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !119, line: 733, size: 10240, elements: !614)
!614 = !{!615, !4936}
!615 = !DIDerivedType(tag: DW_TAG_member, scope: !613, file: !119, line: 734, baseType: !616, size: 10240)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !613, file: !119, line: 734, size: 10240, elements: !617)
!617 = !{!618, !622, !636, !4815, !4816, !4817, !4818, !4819, !4820, !4827, !4828, !4829, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4868, !4870, !4873, !4916, !4917, !4918, !4921, !4922, !4923, !4926, !4927, !4928, !4934, !4935}
!618 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !119, line: 739, baseType: !619, size: 512, align: 512)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !616, file: !119, line: 739, size: 512, align: 512, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !619, file: !119, line: 747, baseType: !54, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !616, file: !119, line: 750, baseType: !623, size: 128, offset: 512)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !624, line: 218, size: 128, elements: !625)
!624 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!625 = !{!626, !634, !635}
!626 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 219, baseType: !627, size: 32)
!627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 219, size: 32, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !627, file: !624, line: 220, baseType: !64, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !627, file: !624, line: 221, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !624, line: 197, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !624, line: 197, elements: !633)
!633 = !{}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !623, file: !624, line: 223, baseType: !13, size: 32, offset: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !623, file: !624, line: 224, baseType: !25, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !616, file: !119, line: 752, baseType: !637, size: 64, offset: 640)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!44, !640, !44, !44, !44, !44}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !227, line: 994, size: 1856, align: 64, elements: !642)
!642 = !{!643, !657, !658, !660, !667, !679, !680, !681, !1063, !1141, !1150, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814}
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !227, line: 995, baseType: !644, size: 128)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !227, line: 995, size: 128, elements: !645)
!645 = !{!646, !647, !656}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !644, file: !227, line: 996, baseType: !324, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !644, file: !227, line: 997, baseType: !648, size: 128, align: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !30, line: 232, size: 128, align: 64, elements: !649)
!649 = !{!650, !652}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !648, file: !30, line: 233, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !648, file: !30, line: 234, baseType: !653, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !651}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !644, file: !227, line: 998, baseType: !13, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !641, file: !227, line: 1005, baseType: !64, size: 32, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !641, file: !227, line: 1006, baseType: !659, size: 32, offset: 160)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !30, line: 156, baseType: !13)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !641, file: !227, line: 1007, baseType: !661, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !662, line: 13, baseType: !663)
!662 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !30, line: 181, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 179, size: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !664, file: !30, line: 180, baseType: !374, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !641, file: !227, line: 1008, baseType: !668, size: 256, offset: 256)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !669, line: 66, size: 256, elements: !670)
!669 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!670 = !{!671, !672, !673, !678}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !668, file: !669, line: 67, baseType: !661, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !668, file: !669, line: 68, baseType: !455, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !668, file: !669, line: 70, baseType: !674, size: 32, offset: 96)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !675, line: 15, size: 32, elements: !676)
!675 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !674, file: !675, line: 20, baseType: !54, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !668, file: !669, line: 72, baseType: !102, size: 128, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !641, file: !227, line: 1009, baseType: !46, size: 64, offset: 512)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !641, file: !227, line: 1010, baseType: !13, size: 32, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !641, file: !227, line: 1011, baseType: !682, size: 256, offset: 640)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !227, line: 948, size: 256, elements: !683)
!683 = !{!684, !707, !1059, !1060, !1061, !1062}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !682, file: !227, line: 949, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !686, line: 34, baseType: !687)
!686 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !686, line: 25, size: 64, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !687, file: !686, line: 26, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !691, line: 27, baseType: !692)
!691 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !691, line: 13, size: 64, elements: !693)
!693 = !{!694, !706}
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !691, line: 14, baseType: !695, size: 32)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !691, line: 14, size: 32, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !695, file: !691, line: 15, baseType: !54, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 16, baseType: !699, size: 32)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 16, size: 32, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !699, file: !691, line: 18, baseType: !88, size: 8)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !699, file: !691, line: 19, baseType: !703, size: 24, offset: 8)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 24, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 3)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !692, file: !691, line: 26, baseType: !76, size: 32, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !682, file: !227, line: 950, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !260, line: 59, size: 768, elements: !710)
!710 = !{!711, !712, !713, !714, !727, !728, !729, !730}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !709, file: !260, line: 61, baseType: !312, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !709, file: !260, line: 62, baseType: !13, size: 32, offset: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !260, line: 63, baseType: !64, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !709, file: !260, line: 65, baseType: !715, size: 256, offset: 128)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 256, elements: !725)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !30, line: 194, size: 64, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !716, file: !30, line: 195, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !30, line: 198, size: 128, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !30, line: 199, baseType: !719, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !720, file: !30, line: 199, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!725 = !{!726}
!726 = !DISubrange(count: 4)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !709, file: !260, line: 66, baseType: !716, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !709, file: !260, line: 68, baseType: !59, size: 192, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !709, file: !260, line: 69, baseType: !648, size: 128, align: 64, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !709, file: !260, line: 70, baseType: !731, offset: 768)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, elements: !1057)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !260, line: 54, size: 128, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !732, file: !260, line: 55, baseType: !27, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !732, file: !260, line: 56, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !738, line: 26, size: 1152, elements: !739)
!738 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!739 = !{!740, !754, !755, !756, !757, !761, !762, !763, !766, !1053, !1054, !1055, !1056}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !737, file: !738, line: 27, baseType: !741, size: 192)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !742, line: 19, size: 192, elements: !743)
!742 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!743 = !{!744, !752, !753}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !741, file: !742, line: 20, baseType: !745, size: 128)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !746, line: 296, size: 128, elements: !747)
!746 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!747 = !{!748, !749, !751}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !745, file: !746, line: 297, baseType: !64, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !745, file: !746, line: 299, baseType: !750, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !30, line: 154, baseType: !13)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !745, file: !746, line: 300, baseType: !25, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !741, file: !742, line: 21, baseType: !13, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !741, file: !742, line: 22, baseType: !13, size: 32, offset: 160)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !737, file: !738, line: 28, baseType: !648, size: 128, align: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !737, file: !738, line: 29, baseType: !13, size: 32, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !737, file: !738, line: 30, baseType: !295, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !737, file: !738, line: 31, baseType: !758, size: 64, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !760, line: 325, flags: DIFlagFwdDecl)
!760 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!761 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !737, file: !738, line: 32, baseType: !13, size: 32, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !737, file: !738, line: 33, baseType: !736, size: 64, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !737, file: !738, line: 35, baseType: !764, size: 64, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !738, line: 17, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !737, file: !738, line: 37, baseType: !767, size: 64, offset: 704)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !769, line: 68, size: 4800, elements: !770)
!769 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!770 = !{!771, !793, !794, !795, !796, !797, !805, !812, !823, !824, !827, !828, !950, !951, !963, !1033, !1034, !1048, !1051}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !768, file: !769, line: 69, baseType: !772, size: 576)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !769, line: 23, size: 576, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !772, file: !769, line: 24, baseType: !306, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !769, line: 25, baseType: !776, size: 512, offset: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !769, line: 25, size: 512, elements: !777)
!777 = !{!778, !787}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !776, file: !769, line: 26, baseType: !779, size: 480)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, size: 480, elements: !785)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !769, line: 17, size: 96, elements: !781)
!781 = !{!782, !783, !784}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !780, file: !769, line: 18, baseType: !306, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !780, file: !769, line: 19, baseType: !306, size: 32, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !780, file: !769, line: 20, baseType: !306, size: 32, offset: 64)
!785 = !{!786}
!786 = !DISubrange(count: 5)
!787 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !769, line: 27, baseType: !788, size: 128)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !776, file: !769, line: 27, size: 128, elements: !789)
!789 = !{!790, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !788, file: !769, line: 28, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !788, file: !769, line: 29, baseType: !791, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !768, file: !769, line: 70, baseType: !772, size: 576, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !768, file: !769, line: 71, baseType: !772, size: 576, offset: 1152)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !768, file: !769, line: 72, baseType: !767, size: 64, offset: 1728)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !768, file: !769, line: 73, baseType: !27, size: 32, offset: 1792)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !768, file: !769, line: 74, baseType: !798, size: 32, offset: 1824)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !799, line: 23, baseType: !800)
!799 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !799, line: 21, size: 32, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !800, file: !799, line: 22, baseType: !803, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !30, line: 37, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !42, line: 49, baseType: !13)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !768, file: !769, line: 75, baseType: !806, size: 32, offset: 1856)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !799, line: 28, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !799, line: 26, size: 32, elements: !808)
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !807, file: !799, line: 27, baseType: !810, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !30, line: 38, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !42, line: 50, baseType: !13)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !768, file: !769, line: 76, baseType: !813, size: 192, offset: 1920)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !814, line: 9, size: 192, elements: !815)
!814 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!815 = !{!816, !817, !821, !822}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !813, file: !814, line: 10, baseType: !661, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !813, file: !814, line: 11, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !814, line: 7, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !813, file: !814, line: 12, baseType: !13, size: 32, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !813, file: !814, line: 13, baseType: !312, size: 32, offset: 160)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !768, file: !769, line: 77, baseType: !44, size: 64, offset: 2112)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !768, file: !769, line: 80, baseType: !825, size: 8, offset: 2176)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !30, line: 35, baseType: !826)
!826 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !768, file: !769, line: 88, baseType: !102, size: 128, offset: 2240)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !768, file: !769, line: 89, baseType: !829, size: 64, offset: 2368)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !831, line: 195, size: 1728, elements: !832)
!831 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!832 = !{!833, !834, !839, !844, !853, !856, !857, !864, !865, !866, !867, !870, !871, !872, !874, !875, !914, !935}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !830, file: !831, line: 196, baseType: !312, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !830, file: !831, line: 197, baseType: !835, size: 32, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !831, line: 28, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !30, line: 104, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !89, line: 20, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !91, line: 26, baseType: !27)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 198, baseType: !840, size: 192, offset: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 198, size: 192, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !840, file: !831, line: 199, baseType: !102, size: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !840, file: !831, line: 200, baseType: !355, size: 192, align: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !830, file: !831, line: 205, baseType: !845, size: 320, offset: 256)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !846, line: 48, size: 320, elements: !847)
!846 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!847 = !{!848, !849, !850, !851, !852}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !845, file: !846, line: 49, baseType: !661, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !845, file: !846, line: 55, baseType: !661, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !845, file: !846, line: 57, baseType: !674, size: 32, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !845, file: !846, line: 59, baseType: !455, size: 32, offset: 160)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !845, file: !846, line: 60, baseType: !102, size: 128, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !830, file: !831, line: 206, baseType: !854, size: 64, offset: 576)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !831, line: 206, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !830, file: !831, line: 207, baseType: !25, size: 64, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 208, baseType: !858, size: 64, offset: 704)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 208, size: 64, elements: !859)
!859 = !{!860, !863}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !858, file: !831, line: 209, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !862, line: 8, baseType: !375)
!862 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!863 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !858, file: !831, line: 210, baseType: !861, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !830, file: !831, line: 212, baseType: !861, size: 64, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !830, file: !831, line: 213, baseType: !798, size: 32, offset: 832)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !830, file: !831, line: 214, baseType: !806, size: 32, offset: 864)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !830, file: !831, line: 215, baseType: !868, size: 32, offset: 896)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !831, line: 31, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 110, baseType: !306)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !830, file: !831, line: 216, baseType: !31, size: 16, offset: 928)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !830, file: !831, line: 217, baseType: !31, size: 16, offset: 944)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !830, file: !831, line: 221, baseType: !873, size: 16, offset: 960)
!873 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !830, file: !831, line: 228, baseType: !44, size: 64, offset: 1024)
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 245, baseType: !876, size: 320, offset: 1088)
!876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 245, size: 320, elements: !877)
!877 = !{!878, !905}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !876, file: !831, line: 246, baseType: !879, size: 320)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !831, line: 114, size: 320, elements: !880)
!880 = !{!881, !882, !894, !897, !904}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !879, file: !831, line: 116, baseType: !44, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !831, line: 117, baseType: !883, size: 64, offset: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !831, line: 117, size: 64, elements: !884)
!884 = !{!885, !893}
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !831, line: 118, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !831, line: 118, size: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !886, file: !831, line: 120, baseType: !98, size: 16)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !886, file: !831, line: 121, baseType: !890, size: 48, offset: 16)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 6)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !883, file: !831, line: 127, baseType: !44, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !879, file: !831, line: 129, baseType: !895, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !831, line: 102, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !879, file: !831, line: 130, baseType: !898, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !831, line: 108, size: 192, elements: !900)
!900 = !{!901, !902, !903}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !899, file: !831, line: 109, baseType: !648, size: 128, align: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !899, file: !831, line: 110, baseType: !312, size: 32, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !899, file: !831, line: 111, baseType: !825, size: 8, offset: 160)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !879, file: !831, line: 131, baseType: !22, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !831, line: 247, baseType: !906, size: 320)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !831, line: 247, size: 320, elements: !907)
!907 = !{!908, !909, !910, !911, !912}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !906, file: !831, line: 248, baseType: !44, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !906, file: !831, line: 249, baseType: !44, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !906, file: !831, line: 250, baseType: !895, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !906, file: !831, line: 251, baseType: !898, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !906, file: !831, line: 252, baseType: !913, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 260, baseType: !915, size: 256, offset: 1408)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 260, size: 256, elements: !916)
!916 = !{!917, !923}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !915, file: !831, line: 261, baseType: !918, size: 256)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !831, line: 134, size: 256, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !918, file: !831, line: 135, baseType: !25, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !918, file: !831, line: 136, baseType: !922, size: 256)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !725)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !831, line: 262, baseType: !924, size: 256)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !915, file: !831, line: 262, size: 256, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !924, file: !831, line: 264, baseType: !102, size: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !924, file: !831, line: 265, baseType: !928, size: 128, offset: 128)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !929, line: 22, size: 128, elements: !930)
!929 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!930 = !{!931, !934}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !928, file: !929, line: 23, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !929, line: 23, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !928, file: !929, line: 24, baseType: !44, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !830, file: !831, line: 280, baseType: !936, size: 64, offset: 1664)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !831, line: 176, size: 192, elements: !938)
!938 = !{!939, !948, !949}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !937, file: !831, line: 177, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !831, line: 171, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!27, !829, !944, !946, !829}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !937, file: !831, line: 178, baseType: !829, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !937, file: !831, line: 179, baseType: !895, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !768, file: !769, line: 90, baseType: !845, size: 320, offset: 2432)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !768, file: !769, line: 97, baseType: !952, size: 256, offset: 2752)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !953, line: 98, size: 256, elements: !954)
!953 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !952, file: !953, line: 99, baseType: !661, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !952, file: !953, line: 100, baseType: !102, size: 128, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !952, file: !953, line: 101, baseType: !958, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !953, line: 21, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !962}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !768, file: !769, line: 99, baseType: !964, size: 768, offset: 3008)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !18, line: 199, size: 768, elements: !965)
!965 = !{!966, !971}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !964, file: !18, line: 200, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!27, !970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !964, file: !18, line: 201, baseType: !972, size: 704, offset: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !18, line: 193, size: 704, elements: !973)
!973 = !{!974, !1032}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !972, file: !18, line: 195, baseType: !975, size: 640)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !18, line: 173, size: 640, elements: !976)
!976 = !{!977, !989, !1001, !1002, !1022, !1023, !1025, !1031}
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !18, line: 174, baseType: !978, size: 192)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !18, line: 174, size: 192, elements: !979)
!979 = !{!980, !988}
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !18, line: 175, baseType: !981, size: 192)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !18, line: 175, size: 192, elements: !982)
!982 = !{!983, !984, !985, !986, !987}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !981, file: !18, line: 176, baseType: !38, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !981, file: !18, line: 177, baseType: !27, size: 32, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !981, file: !18, line: 178, baseType: !27, size: 32, offset: 96)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !981, file: !18, line: 179, baseType: !27, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !981, file: !18, line: 180, baseType: !27, size: 32, offset: 160)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !978, file: !18, line: 182, baseType: !648, size: 128, align: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !975, file: !18, line: 184, baseType: !990, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !992, line: 26, size: 256, elements: !993)
!992 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !991, file: !992, line: 27, baseType: !13, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !991, file: !992, line: 28, baseType: !996, size: 192, offset: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !997, line: 43, size: 192, elements: !998)
!997 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !996, file: !997, line: 44, baseType: !455, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !996, file: !997, line: 45, baseType: !102, size: 128, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !975, file: !18, line: 185, baseType: !38, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !975, file: !18, line: 186, baseType: !1003, size: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !18, line: 204, size: 960, elements: !1005)
!1005 = !{!1006, !1007, !1011, !1018}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1004, file: !18, line: 205, baseType: !964, size: 768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1004, file: !18, line: 206, baseType: !1008, size: 64, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!970, !1003}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1004, file: !18, line: 207, baseType: !1012, size: 64, offset: 832)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1004, file: !18, line: 209, baseType: !1019, size: 64, offset: 896)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!27, !1015, !38}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !975, file: !18, line: 187, baseType: !970, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !975, file: !18, line: 188, baseType: !1024, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !975, file: !18, line: 189, baseType: !1026, size: 64, offset: 512)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !18, line: 157, size: 256, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1027, file: !18, line: 158, baseType: !355, size: 192, align: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1027, file: !18, line: 159, baseType: !1015, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !975, file: !18, line: 190, baseType: !716, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !972, file: !18, line: 196, baseType: !498, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !768, file: !769, line: 100, baseType: !1015, size: 64, offset: 3776)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !768, file: !769, line: 102, baseType: !1035, size: 64, offset: 3840)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !769, line: 107, size: 1152, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1046}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1036, file: !769, line: 108, baseType: !720, size: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1036, file: !769, line: 109, baseType: !767, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1036, file: !769, line: 110, baseType: !798, size: 32, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1036, file: !769, line: 111, baseType: !54, size: 32, offset: 224)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1036, file: !769, line: 112, baseType: !1043, size: 640, offset: 256)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 640, elements: !1044)
!1044 = !{!1045}
!1045 = !DISubrange(count: 10)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1036, file: !769, line: 113, baseType: !1047, size: 256, offset: 896)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 256, elements: !725)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !768, file: !769, line: 103, baseType: !1049, size: 640, offset: 3904)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1050, size: 640, elements: !1044)
!1050 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !768, file: !769, line: 104, baseType: !1052, size: 256, offset: 4544)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1050, size: 256, elements: !725)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !737, file: !738, line: 38, baseType: !1035, size: 64, offset: 768)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !737, file: !738, line: 39, baseType: !27, size: 32, offset: 832)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !737, file: !738, line: 40, baseType: !813, size: 192, offset: 896)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !737, file: !738, line: 42, baseType: !27, size: 32, offset: 1088)
!1057 = !{!1058}
!1058 = !DISubrange(count: -1)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !682, file: !227, line: 951, baseType: !259, size: 32, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !682, file: !227, line: 952, baseType: !798, size: 32, offset: 160)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !682, file: !227, line: 952, baseType: !798, size: 32, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !682, file: !227, line: 953, baseType: !27, size: 32, offset: 224)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !641, file: !227, line: 1012, baseType: !1064, size: 64, offset: 896)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1067, line: 110, size: 1472, elements: !1068)
!1067 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1126, !1127, !1128, !1136}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1066, file: !1067, line: 111, baseType: !661, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1066, file: !1067, line: 112, baseType: !798, size: 32, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1066, file: !1067, line: 113, baseType: !806, size: 32, offset: 96)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1066, file: !1067, line: 114, baseType: !798, size: 32, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1066, file: !1067, line: 115, baseType: !806, size: 32, offset: 160)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1066, file: !1067, line: 116, baseType: !798, size: 32, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1066, file: !1067, line: 117, baseType: !806, size: 32, offset: 224)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1066, file: !1067, line: 118, baseType: !798, size: 32, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1066, file: !1067, line: 119, baseType: !806, size: 32, offset: 288)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1066, file: !1067, line: 120, baseType: !13, size: 32, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1066, file: !1067, line: 121, baseType: !1080, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1081, line: 24, baseType: !1082)
!1081 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1081, line: 24, size: 64, elements: !1083)
!1083 = !{!1084}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1082, file: !1081, line: 24, baseType: !363, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1066, file: !1067, line: 122, baseType: !1080, size: 64, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1066, file: !1067, line: 123, baseType: !1080, size: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1066, file: !1067, line: 124, baseType: !1080, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1066, file: !1067, line: 125, baseType: !1080, size: 64, offset: 640)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1066, file: !1067, line: 127, baseType: !92, size: 8, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1066, file: !1067, line: 129, baseType: !829, size: 64, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1066, file: !1067, line: 130, baseType: !829, size: 64, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1066, file: !1067, line: 131, baseType: !829, size: 64, offset: 896)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1066, file: !1067, line: 132, baseType: !829, size: 64, offset: 960)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1066, file: !1067, line: 135, baseType: !25, size: 64, offset: 1024)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1066, file: !1067, line: 137, baseType: !1096, size: 64, offset: 1088)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1098, line: 14, size: 1088, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1099 = !{!1100, !1101, !1110, !1111, !1112, !1113, !1114, !1115}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1097, file: !1098, line: 15, baseType: !312, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1097, file: !1098, line: 17, baseType: !1102, size: 320, offset: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1103, line: 22, size: 320, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1104 = !{!1105, !1106, !1107, !1108}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1102, file: !1103, line: 23, baseType: !455, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1102, file: !1103, line: 24, baseType: !374, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1102, file: !1103, line: 26, baseType: !102, size: 128, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1102, file: !1103, line: 28, baseType: !1109, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1097, file: !1098, line: 19, baseType: !44, size: 64, offset: 384)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1097, file: !1098, line: 20, baseType: !661, size: 64, offset: 448)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1097, file: !1098, line: 23, baseType: !720, size: 128, offset: 512)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1097, file: !1098, line: 24, baseType: !798, size: 32, offset: 640)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1097, file: !1098, line: 29, baseType: !661, size: 64, offset: 704)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1097, file: !1098, line: 36, baseType: !1116, size: 320, offset: 768)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1117, line: 15, size: 320, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1116, file: !1117, line: 16, baseType: !455, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1116, file: !1117, line: 18, baseType: !27, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1116, file: !1117, line: 19, baseType: !27, size: 32, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1116, file: !1117, line: 20, baseType: !27, size: 32, offset: 96)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1116, file: !1117, line: 21, baseType: !27, size: 32, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1116, file: !1117, line: 22, baseType: !44, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1116, file: !1117, line: 23, baseType: !44, size: 64, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1066, file: !1067, line: 138, baseType: !767, size: 64, offset: 1152)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1066, file: !1067, line: 139, baseType: !1035, size: 64, offset: 1216)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1066, file: !1067, line: 140, baseType: !1129, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1067, line: 25, size: 64, elements: !1131)
!1131 = !{!1132, !1133, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1130, file: !1067, line: 26, baseType: !54, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1130, file: !1067, line: 27, baseType: !27, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1130, file: !1067, line: 28, baseType: !1135, offset: 64)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, elements: !1057)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1066, file: !1067, line: 142, baseType: !1137, size: 128, offset: 1344)
!1137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1066, file: !1067, line: 142, size: 128, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1137, file: !1067, line: 143, baseType: !27, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1137, file: !1067, line: 144, baseType: !648, size: 128, align: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !641, file: !227, line: 1013, baseType: !1142, size: 256, offset: 960)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !227, line: 970, size: 256, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1142, file: !227, line: 971, baseType: !44, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1142, file: !227, line: 972, baseType: !13, size: 32, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1142, file: !227, line: 973, baseType: !13, size: 32, offset: 96)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1142, file: !227, line: 974, baseType: !13, size: 32, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1142, file: !227, line: 975, baseType: !13, size: 32, offset: 160)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1142, file: !227, line: 976, baseType: !46, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !641, file: !227, line: 1014, baseType: !1151, size: 128, offset: 1216)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1152, line: 8, size: 128, elements: !1153)
!1152 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1153 = !{!1154, !4805}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1151, file: !1152, line: 9, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1157, line: 70, size: 256, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1158 = !{!1159, !4802, !4803, !4804}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1156, file: !1157, line: 71, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1162, line: 82, size: 1536, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1163 = !{!1164, !1165, !1170, !1178, !1179, !1194, !4770, !4772, !4785, !4786, !4787, !4788, !4789, !4794, !4795, !4796}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1161, file: !1162, line: 84, baseType: !13, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1161, file: !1162, line: 85, baseType: !1166, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !482, line: 275, baseType: !1167)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !482, line: 275, size: 32, elements: !1168)
!1168 = !{!1169}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1167, file: !482, line: 275, baseType: !486, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1161, file: !1162, line: 86, baseType: !1171, size: 128, offset: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1172, line: 38, size: 128, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1173 = !{!1174, !1176}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1171, file: !1172, line: 39, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1171, file: !1172, line: 39, baseType: !1177, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1161, file: !1162, line: 87, baseType: !1160, size: 64, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1161, file: !1162, line: 88, baseType: !1180, size: 128, offset: 256)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1162, line: 49, size: 128, elements: !1181)
!1181 = !{!1182, !1191}
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1162, line: 50, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1162, line: 50, size: 64, elements: !1184)
!1184 = !{!1185, !1190}
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1183, file: !1162, line: 51, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1183, file: !1162, line: 51, size: 64, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1186, file: !1162, line: 52, baseType: !306, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1186, file: !1162, line: 52, baseType: !306, size: 32, offset: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1183, file: !1162, line: 54, baseType: !363, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1180, file: !1162, line: 56, baseType: !1192, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1161, file: !1162, line: 89, baseType: !1195, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !227, line: 641, size: 4800, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1207, !1208, !1395, !4585, !4586, !4587, !4588, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4752, !4755, !4756, !4757, !4766, !4767, !4768, !4769}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1196, file: !227, line: 642, baseType: !29, size: 16)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1196, file: !227, line: 643, baseType: !31, size: 16, offset: 16)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1196, file: !227, line: 644, baseType: !798, size: 32, offset: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1196, file: !227, line: 645, baseType: !102, size: 128, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1196, file: !227, line: 646, baseType: !806, size: 32, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1196, file: !227, line: 647, baseType: !13, size: 32, offset: 224)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1196, file: !227, line: 650, baseType: !1205, size: 64, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !227, line: 607, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1196, file: !227, line: 651, baseType: !1205, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1196, file: !227, line: 654, baseType: !1209, size: 64, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !227, line: 1966, size: 2048, align: 512, elements: !1212)
!1212 = !{!1213, !1217, !1230, !1236, !1240, !1244, !1248, !1252, !1256, !1260, !1264, !1265, !1271, !1275, !1312, !1343, !1350, !1356, !1360, !1364, !1368, !1372, !1376, !1382, !1386}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1211, file: !227, line: 1967, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!1160, !1195, !1160, !13}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1211, file: !227, line: 1968, baseType: !1218, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!22, !1160, !1195, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1223, line: 10, size: 128, elements: !1224)
!1223 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1224 = !{!1225, !1229}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1222, file: !1223, line: 11, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !25}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1222, file: !1223, line: 12, baseType: !25, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1211, file: !227, line: 1969, baseType: !1231, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!27, !1234, !1195, !27}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1081, line: 42, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1211, file: !227, line: 1970, baseType: !1237, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1205, !1195, !27, !825}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1211, file: !227, line: 1972, baseType: !1241, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!27, !1160, !913, !27}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1211, file: !227, line: 1974, baseType: !1245, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!27, !1234, !1195, !1160, !29, !825}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1211, file: !227, line: 1976, baseType: !1249, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!27, !1160, !1195, !1160}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1211, file: !227, line: 1977, baseType: !1253, size: 64, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!27, !1195, !1160}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1211, file: !227, line: 1978, baseType: !1257, size: 64, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!27, !1234, !1195, !1160, !22}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1211, file: !227, line: 1980, baseType: !1261, size: 64, offset: 576)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!27, !1234, !1195, !1160, !29}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1211, file: !227, line: 1982, baseType: !1253, size: 64, offset: 640)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1211, file: !227, line: 1983, baseType: !1266, size: 64, offset: 704)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!27, !1234, !1195, !1160, !29, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !30, line: 21, baseType: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !30, line: 18, baseType: !306)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1211, file: !227, line: 1985, baseType: !1272, size: 64, offset: 768)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!27, !1234, !1195, !1160, !1195, !1160, !13}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1211, file: !227, line: 1987, baseType: !1276, size: 64, offset: 832)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!27, !1234, !1160, !1279}
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !227, line: 226, size: 640, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1294, !1303, !1304, !1309, !1310, !1311}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1280, file: !227, line: 227, baseType: !13, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1280, file: !227, line: 228, baseType: !29, size: 16, offset: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !227, line: 241, baseType: !1285, size: 32, offset: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1280, file: !227, line: 241, size: 32, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1285, file: !227, line: 242, baseType: !798, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1285, file: !227, line: 243, baseType: !1289, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1290, line: 16, baseType: !1291)
!1290 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1290, line: 14, size: 32, elements: !1292)
!1292 = !{!1293}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1291, file: !1290, line: 15, baseType: !803, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !227, line: 245, baseType: !1295, size: 32, offset: 96)
!1295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1280, file: !227, line: 245, size: 32, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1295, file: !227, line: 246, baseType: !806, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1295, file: !227, line: 247, baseType: !1299, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1290, line: 20, baseType: !1300)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1290, line: 18, size: 32, elements: !1301)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1300, file: !1290, line: 19, baseType: !810, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1280, file: !227, line: 249, baseType: !46, size: 64, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1280, file: !227, line: 250, baseType: !1305, size: 128, offset: 192)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !862, line: 13, size: 128, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1305, file: !862, line: 14, baseType: !861, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1305, file: !862, line: 15, baseType: !1050, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1280, file: !227, line: 251, baseType: !1305, size: 128, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1280, file: !227, line: 252, baseType: !1305, size: 128, offset: 448)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1280, file: !227, line: 259, baseType: !640, size: 64, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1211, file: !227, line: 1988, baseType: !1313, size: 64, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!27, !1234, !1316, !1318, !306, !13}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1151)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1320, line: 22, size: 1280, elements: !1321)
!1320 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1319, file: !1320, line: 23, baseType: !306, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1319, file: !1320, line: 24, baseType: !29, size: 16, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1319, file: !1320, line: 25, baseType: !13, size: 32, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1319, file: !1320, line: 26, baseType: !869, size: 32, offset: 96)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1319, file: !1320, line: 27, baseType: !363, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1319, file: !1320, line: 28, baseType: !363, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1319, file: !1320, line: 41, baseType: !363, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1319, file: !1320, line: 42, baseType: !1269, size: 32, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1319, file: !1320, line: 43, baseType: !1269, size: 32, offset: 352)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1319, file: !1320, line: 44, baseType: !798, size: 32, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1319, file: !1320, line: 45, baseType: !806, size: 32, offset: 416)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1319, file: !1320, line: 46, baseType: !46, size: 64, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1319, file: !1320, line: 47, baseType: !1305, size: 128, offset: 512)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1319, file: !1320, line: 48, baseType: !1305, size: 128, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1319, file: !1320, line: 49, baseType: !1305, size: 128, offset: 768)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1319, file: !1320, line: 50, baseType: !1305, size: 128, offset: 896)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1319, file: !1320, line: 51, baseType: !363, size: 64, offset: 1024)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1319, file: !1320, line: 52, baseType: !363, size: 64, offset: 1088)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1319, file: !1320, line: 53, baseType: !306, size: 32, offset: 1152)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1319, file: !1320, line: 54, baseType: !306, size: 32, offset: 1184)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1319, file: !1320, line: 55, baseType: !363, size: 64, offset: 1216)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1211, file: !227, line: 1990, baseType: !1344, size: 64, offset: 960)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!1347, !1160, !913, !40}
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !30, line: 66, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !42, line: 73, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !42, line: 15, baseType: !1050)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1211, file: !227, line: 1991, baseType: !1351, size: 64, offset: 1024)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!27, !1195, !1354, !363, !363}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !227, line: 55, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1211, file: !227, line: 1993, baseType: !1357, size: 64, offset: 1088)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!27, !1195, !27}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1211, file: !227, line: 1994, baseType: !1361, size: 64, offset: 1152)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!27, !1195, !1160, !640, !13, !29}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1211, file: !227, line: 1997, baseType: !1365, size: 64, offset: 1216)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!27, !1234, !1195, !640, !29}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1211, file: !227, line: 1999, baseType: !1369, size: 64, offset: 1280)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!1205, !1234, !1160, !27}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1211, file: !227, line: 2001, baseType: !1373, size: 64, offset: 1344)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!27, !1234, !1160, !1205, !27}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1211, file: !227, line: 2003, baseType: !1377, size: 64, offset: 1408)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!27, !1234, !1160, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !227, line: 76, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1211, file: !227, line: 2005, baseType: !1383, size: 64, offset: 1472)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!27, !1160, !1380}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1211, file: !227, line: 2006, baseType: !1387, size: 64, offset: 1536)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!1390, !1195}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !227, line: 3192, size: 192, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1391, file: !227, line: 3193, baseType: !745, size: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1391, file: !227, line: 3194, baseType: !306, size: 32, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1196, file: !227, line: 655, baseType: !1396, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !227, line: 1190, size: 10752, elements: !1398)
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !4102, !4234, !4274, !4357, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4374, !4378, !4379, !4382, !4385, !4388, !4391, !4392, !4393, !4434, !4456, !4457, !4458, !4459, !4460, !4461, !4464, !4468, !4477, !4478, !4479, !4480, !4539, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1397, file: !227, line: 1191, baseType: !102, size: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1397, file: !227, line: 1192, baseType: !1269, size: 32, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1397, file: !227, line: 1193, baseType: !92, size: 8, offset: 160)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1397, file: !227, line: 1194, baseType: !44, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1397, file: !227, line: 1195, baseType: !46, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1397, file: !227, line: 1196, baseType: !1405, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !227, line: 2366, size: 576, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1416, !1420, !1424, !1428, !4090, !4091, !4092, !4094, !4095, !4096, !4098, !4099, !4100, !4101}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1406, file: !227, line: 2367, baseType: !22, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1406, file: !227, line: 2368, baseType: !27, size: 32, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1406, file: !227, line: 2376, baseType: !1411, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!27, !1414}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1157, line: 21, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1406, file: !227, line: 2377, baseType: !1417, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !227, line: 75, flags: DIFlagFwdDecl)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1406, file: !227, line: 2378, baseType: !1421, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!1160, !1405, !27, !22, !25}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1406, file: !227, line: 2380, baseType: !1425, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !1396}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1406, file: !227, line: 2381, baseType: !1429, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !135, line: 402, size: 9216, align: 512, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1438, !2296, !2322, !2323, !2324, !2325, !2329, !2332, !2333, !2334, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2402, !2406, !2426, !2446, !2447, !2448, !2449, !2458, !2481, !2482, !2485, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2499, !2500, !2599, !2607, !2608, !2609, !2611, !4068, !4069, !4078, !4079, !4080, !4081, !4083, !4084, !4085, !4086, !4087, !4088, !4089}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1430, file: !135, line: 403, baseType: !134, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1430, file: !135, line: 406, baseType: !102, size: 128, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1430, file: !135, line: 409, baseType: !1435, size: 448, offset: 192)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1436)
!1436 = !{!1437}
!1437 = !DISubrange(count: 56)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1430, file: !135, line: 417, baseType: !1439, size: 768, offset: 640)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !135, line: 45, size: 768, elements: !1440)
!1440 = !{!1441, !2290, !2291, !2292, !2295}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1439, file: !135, line: 46, baseType: !1442, size: 512)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1443, line: 64, size: 512, elements: !1444)
!1443 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1444 = !{!1445, !1446, !1447, !1449, !1493, !2139, !2280, !2285, !2286, !2287, !2288, !2289}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1442, file: !1443, line: 65, baseType: !22, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1442, file: !1443, line: 66, baseType: !102, size: 128, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1442, file: !1443, line: 67, baseType: !1448, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1442, file: !1443, line: 68, baseType: !1450, size: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1443, line: 168, size: 768, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1451, file: !1443, line: 169, baseType: !102, size: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1451, file: !1443, line: 170, baseType: !64, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1451, file: !1443, line: 171, baseType: !1442, size: 512, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1451, file: !1443, line: 172, baseType: !1457, size: 64, offset: 704)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1459)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1443, line: 133, size: 192, elements: !1460)
!1460 = !{!1461, !1468, !1473}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1459, file: !1443, line: 134, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1463)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!27, !1466}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1442)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1459, file: !1443, line: 135, baseType: !1469, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!22, !1466}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1459, file: !1443, line: 136, baseType: !1474, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!27, !1466, !1478}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1443, line: 125, size: 20736, elements: !1480)
!1480 = !{!1481, !1483, !1487, !1488, !1492}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1479, file: !1443, line: 126, baseType: !1482, size: 192)
!1482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 192, elements: !704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1479, file: !1443, line: 127, baseType: !1484, size: 4096, offset: 192)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 4096, elements: !1485)
!1485 = !{!1486}
!1486 = !DISubrange(count: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1479, file: !1443, line: 128, baseType: !27, size: 32, offset: 4288)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1479, file: !1443, line: 129, baseType: !1489, size: 16384, offset: 4320)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1490)
!1490 = !{!1491}
!1491 = !DISubrange(count: 2048)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1479, file: !1443, line: 130, baseType: !27, size: 32, offset: 20704)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1442, file: !1443, line: 69, baseType: !1494, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1443, line: 116, size: 384, elements: !1497)
!1497 = !{!1498, !1502, !1521, !2101, !2131, !2135}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1496, file: !1443, line: 117, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{null, !1448}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1496, file: !1443, line: 118, baseType: !1503, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1506, line: 254, size: 128, elements: !1507)
!1506 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1507 = !{!1508, !1517}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1505, file: !1506, line: 255, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!1347, !1448, !1512, !913}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1506, line: 30, size: 128, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1513, file: !1506, line: 31, baseType: !22, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1513, file: !1506, line: 32, baseType: !29, size: 16, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1505, file: !1506, line: 256, baseType: !1518, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1347, !1448, !1512, !22, !40}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1496, file: !1443, line: 119, baseType: !1522, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1525)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1506, line: 84, size: 320, elements: !1526)
!1526 = !{!1527, !1528, !1532, !2097, !2099}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1525, file: !1506, line: 85, baseType: !22, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1525, file: !1506, line: 86, baseType: !1529, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!29, !1448, !1512, !27}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1525, file: !1506, line: 88, baseType: !1533, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!29, !1448, !1536, !27}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1506, line: 175, size: 512, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !2088, !2092, !2093}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1537, file: !1506, line: 176, baseType: !1513, size: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1537, file: !1506, line: 177, baseType: !40, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1537, file: !1506, line: 178, baseType: !25, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1537, file: !1506, line: 179, baseType: !1543, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!1546}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !227, line: 472, size: 1536, align: 64, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !2080, !2081, !2082, !2085, !2086, !2087}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1547, file: !227, line: 473, baseType: !1195, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1547, file: !227, line: 474, baseType: !745, size: 128, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1547, file: !227, line: 475, baseType: !845, size: 320, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1547, file: !227, line: 476, baseType: !750, size: 32, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1547, file: !227, line: 477, baseType: !54, size: 32, offset: 544)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1547, file: !227, line: 482, baseType: !495, size: 128, offset: 576)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1547, file: !227, line: 483, baseType: !44, size: 64, offset: 704)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1547, file: !227, line: 484, baseType: !44, size: 64, offset: 768)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1547, file: !227, line: 485, baseType: !1558, size: 64, offset: 832)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !227, line: 404, size: 1280, elements: !1561)
!1561 = !{!1562, !1855, !1925, !1929, !1933, !1939, !1945, !1949, !1954, !1958, !1962, !1966, !2044, !2048, !2052, !2056, !2061, !2065, !2072, !2076}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1560, file: !227, line: 405, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!27, !1566, !1853}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !119, line: 74, size: 512, align: 128, elements: !1568)
!1568 = !{!1569, !1570, !1847, !1852}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1567, file: !119, line: 75, baseType: !44, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !119, line: 83, baseType: !1571, size: 320, offset: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !119, line: 83, size: 320, elements: !1572)
!1572 = !{!1573, !1594, !1608, !1612, !1846}
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !119, line: 84, baseType: !1574, size: 320)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !119, line: 84, size: 320, elements: !1575)
!1575 = !{!1576, !1587, !1588, !1593}
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !119, line: 90, baseType: !1577, size: 128)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !119, line: 90, size: 128, elements: !1578)
!1578 = !{!1579, !1580, !1585, !1586}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1577, file: !119, line: 91, baseType: !102, size: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !119, line: 94, baseType: !1581, size: 128)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1577, file: !119, line: 94, size: 128, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1581, file: !119, line: 96, baseType: !25, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1581, file: !119, line: 98, baseType: !13, size: 32, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1577, file: !119, line: 102, baseType: !102, size: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1577, file: !119, line: 103, baseType: !102, size: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1574, file: !119, line: 106, baseType: !1546, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !119, line: 107, baseType: !1589, size: 64, offset: 192)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !119, line: 107, size: 64, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1589, file: !119, line: 108, baseType: !44, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1589, file: !119, line: 109, baseType: !44, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1574, file: !119, line: 117, baseType: !44, size: 64, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !119, line: 119, baseType: !1595, size: 320)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !119, line: 119, size: 320, elements: !1596)
!1596 = !{!1597, !1598, !1601, !1602, !1603}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1595, file: !119, line: 124, baseType: !44, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1595, file: !119, line: 125, baseType: !1599, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !119, line: 125, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1595, file: !119, line: 126, baseType: !44, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1595, file: !119, line: 127, baseType: !44, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1595, file: !119, line: 128, baseType: !1604, size: 64, offset: 256)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1595, file: !119, line: 128, size: 64, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1604, file: !119, line: 133, baseType: !44, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1604, file: !119, line: 138, baseType: !661, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !119, line: 141, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !119, line: 141, size: 64, elements: !1610)
!1610 = !{!1611}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1609, file: !119, line: 142, baseType: !44, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !119, line: 144, baseType: !1613, size: 128)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !119, line: 144, size: 128, elements: !1614)
!1614 = !{!1615, !1845}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1613, file: !119, line: 146, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !245, line: 126, size: 1216, elements: !1618)
!1618 = !{!1619, !1629, !1650, !1651, !1652, !1653, !1654, !1827, !1828, !1829}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1617, file: !245, line: 127, baseType: !1620, size: 384)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !245, line: 21, size: 384, elements: !1621)
!1621 = !{!1622, !1623, !1625, !1626, !1627, !1628}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1620, file: !245, line: 22, baseType: !44, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1620, file: !245, line: 23, baseType: !1624, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1620, file: !245, line: 24, baseType: !1624, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1620, file: !245, line: 25, baseType: !44, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1620, file: !245, line: 26, baseType: !44, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1620, file: !245, line: 27, baseType: !44, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1617, file: !245, line: 128, baseType: !1630, size: 128, offset: 384)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1631, line: 105, size: 128, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1630, file: !1631, line: 110, baseType: !44, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1630, file: !1631, line: 118, baseType: !1635, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1631, line: 95, size: 448, elements: !1637)
!1637 = !{!1638, !1639, !1645, !1646, !1647, !1648, !1649}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1636, file: !1631, line: 96, baseType: !661, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1636, file: !1631, line: 97, baseType: !1640, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1631, line: 60, baseType: !1642)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1636, file: !1631, line: 98, baseType: !1640, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1636, file: !1631, line: 99, baseType: !825, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1636, file: !1631, line: 100, baseType: !825, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1636, file: !1631, line: 101, baseType: !648, size: 128, align: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1636, file: !1631, line: 102, baseType: !1644, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1617, file: !245, line: 129, baseType: !991, size: 256, offset: 512)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1617, file: !245, line: 130, baseType: !244, size: 32, offset: 768)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !245, line: 131, baseType: !13, size: 32, offset: 800)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1617, file: !245, line: 132, baseType: !44, size: 64, offset: 832)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1617, file: !245, line: 133, baseType: !1655, size: 64, offset: 896)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !245, line: 77, size: 192, elements: !1658)
!1658 = !{!1659, !1663, !1823}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1657, file: !245, line: 83, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !1566}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1657, file: !245, line: 89, baseType: !1664, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !119, line: 1184, baseType: !13)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1670, line: 512, size: 896, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1671 = !{!1672, !1790, !1791, !1798, !1805, !1815, !1816, !1817, !1819, !1821}
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !1670, line: 513, baseType: !1673, size: 320)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1669, file: !1670, line: 513, size: 320, elements: !1674)
!1674 = !{!1675, !1786, !1787, !1788, !1789}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1673, file: !1670, line: 514, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !119, line: 625, size: 1344, elements: !1678)
!1678 = !{!1679, !1688, !1689, !1697, !1704, !1705, !1710, !1711, !1716, !1717, !1720, !1779, !1780, !1781, !1782, !1783, !1784}
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !119, line: 628, baseType: !1680, size: 128)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1677, file: !119, line: 628, size: 128, elements: !1681)
!1681 = !{!1682, !1687}
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !119, line: 629, baseType: !1683, size: 128)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1680, file: !119, line: 629, size: 128, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1683, file: !119, line: 631, baseType: !44, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1683, file: !119, line: 632, baseType: !44, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1680, file: !119, line: 635, baseType: !648, size: 128, align: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1677, file: !119, line: 639, baseType: !612, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1677, file: !119, line: 640, baseType: !1690, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1691, line: 297, baseType: !1692)
!1691 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1691, line: 297, size: 64, elements: !1693)
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1692, file: !1691, line: 297, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1696, line: 19, baseType: !44)
!1696 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !119, line: 646, baseType: !1698, size: 64, offset: 256)
!1698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1677, file: !119, line: 646, size: 64, elements: !1699)
!1699 = !{!1700, !1703}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1698, file: !119, line: 647, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !119, line: 542, baseType: !44)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1698, file: !119, line: 648, baseType: !1702, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1677, file: !119, line: 666, baseType: !27, size: 32, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1677, file: !119, line: 667, baseType: !1706, size: 64, offset: 384)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !119, line: 579, size: 320, elements: !1708)
!1708 = !{!1709}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1707, file: !119, line: 580, baseType: !845, size: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1677, file: !119, line: 670, baseType: !825, size: 8, offset: 448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1677, file: !119, line: 681, baseType: !1712, size: 256, offset: 512)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1677, file: !119, line: 678, size: 256, elements: !1713)
!1713 = !{!1714, !1715}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1712, file: !119, line: 679, baseType: !355, size: 192, align: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1712, file: !119, line: 680, baseType: !44, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1677, file: !119, line: 689, baseType: !102, size: 128, offset: 768)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1677, file: !119, line: 691, baseType: !1718, size: 64, offset: 896)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !119, line: 691, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1677, file: !119, line: 694, baseType: !1721, size: 64, offset: 960)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1670, line: 563, size: 1024, elements: !1724)
!1724 = !{!1725, !1729, !1730, !1734, !1738, !1742, !1743, !1747, !1751, !1755, !1756, !1757, !1761, !1765, !1771, !1775}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1723, file: !1670, line: 564, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{null, !1676}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1723, file: !1670, line: 569, baseType: !1726, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1723, file: !1670, line: 571, baseType: !1731, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!27, !1676, !44}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1723, file: !1670, line: 572, baseType: !1735, size: 64, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!27, !1676}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1723, file: !1670, line: 578, baseType: !1739, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!27, !1676, !44, !44, !44}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1723, file: !1670, line: 580, baseType: !1664, size: 64, offset: 320)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1723, file: !1670, line: 581, baseType: !1744, size: 64, offset: 384)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1667, !1668, !13}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1723, file: !1670, line: 582, baseType: !1748, size: 64, offset: 448)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!1667, !1668, !44, !44}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1723, file: !1670, line: 584, baseType: !1752, size: 64, offset: 512)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!44, !1676}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1723, file: !1670, line: 588, baseType: !1664, size: 64, offset: 576)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1723, file: !1670, line: 591, baseType: !1664, size: 64, offset: 640)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1723, file: !1670, line: 597, baseType: !1758, size: 64, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!27, !1676, !44, !25, !27, !27}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1723, file: !1670, line: 603, baseType: !1762, size: 64, offset: 768)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!22, !1676}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1723, file: !1670, line: 613, baseType: !1766, size: 64, offset: 832)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!27, !1676, !1769}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !119, line: 717, flags: DIFlagFwdDecl)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1723, file: !1670, line: 625, baseType: !1772, size: 64, offset: 896)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!1769, !1676, !44}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1723, file: !1670, line: 633, baseType: !1776, size: 64, offset: 960)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!1566, !1676, !44}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1677, file: !119, line: 697, baseType: !44, size: 64, offset: 1024)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1677, file: !119, line: 699, baseType: !640, size: 64, offset: 1088)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1677, file: !119, line: 700, baseType: !25, size: 64, offset: 1152)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1677, file: !119, line: 711, baseType: !661, size: 64, offset: 1216)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1677, file: !119, line: 717, baseType: !1769, size: 64, offset: 1280)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1677, file: !119, line: 722, baseType: !1785, offset: 1344)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !119, line: 570, elements: !633)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1673, file: !1670, line: 515, baseType: !750, size: 32, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1673, file: !1670, line: 516, baseType: !44, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1673, file: !1670, line: 517, baseType: !44, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1673, file: !1670, line: 518, baseType: !44, size: 64, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1669, file: !1670, line: 520, baseType: !118, size: 32, offset: 320)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1669, file: !1670, line: 522, baseType: !1792, size: 64, offset: 384)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1696, line: 22, baseType: !1794)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1696, line: 22, size: 64, elements: !1795)
!1795 = !{!1796}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1794, file: !1696, line: 22, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1696, line: 15, baseType: !44)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1669, file: !1670, line: 524, baseType: !1799, size: 64, offset: 448)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1691, line: 372, baseType: !1801)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1691, line: 372, size: 64, elements: !1802)
!1802 = !{!1803}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1801, file: !1691, line: 372, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1696, line: 16, baseType: !44)
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !1670, line: 527, baseType: !1806, size: 64, offset: 512)
!1806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !1670, line: 527, size: 64, elements: !1807)
!1807 = !{!1808, !1814}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1806, file: !1670, line: 528, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1696, line: 21, baseType: !1810)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1696, line: 21, size: 64, elements: !1811)
!1811 = !{!1812}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1810, file: !1696, line: 21, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1696, line: 14, baseType: !44)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1806, file: !1670, line: 529, baseType: !1793, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1669, file: !1670, line: 534, baseType: !1566, size: 64, offset: 576)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1669, file: !1670, line: 535, baseType: !1566, size: 64, offset: 640)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1669, file: !1670, line: 541, baseType: !1818, size: 64, offset: 704)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1669, file: !1670, line: 545, baseType: !1820, size: 64, offset: 768)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1669, file: !1670, line: 549, baseType: !1822, size: 64, offset: 832)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1691, line: 520, baseType: !1566)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1657, file: !245, line: 100, baseType: !1824, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!27, !1616, !44, !44, !27}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1617, file: !245, line: 134, baseType: !25, size: 64, offset: 960)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1617, file: !245, line: 135, baseType: !27, size: 32, offset: 1024)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !245, line: 136, baseType: !1830, size: 128, offset: 1088)
!1830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !245, line: 136, size: 128, elements: !1831)
!1831 = !{!1832, !1838}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1830, file: !245, line: 137, baseType: !1833, size: 128)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1834, line: 6, size: 128, elements: !1835)
!1834 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1833, file: !1834, line: 7, baseType: !363, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1833, file: !1834, line: 8, baseType: !363, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !245, line: 138, baseType: !1839)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1830, file: !245, line: 138, elements: !1840)
!1840 = !{!1841, !1843}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1839, file: !245, line: 138, baseType: !1842)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1839, file: !245, line: 138, elements: !633)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1839, file: !245, line: 138, baseType: !1844)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1833, elements: !1057)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1613, file: !119, line: 147, baseType: !25, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1571, file: !119, line: 161, baseType: !648, size: 128, align: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !119, line: 164, baseType: !1848, size: 32, offset: 384)
!1848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !119, line: 164, size: 32, elements: !1849)
!1849 = !{!1850, !1851}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1848, file: !119, line: 169, baseType: !54, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1848, file: !119, line: 177, baseType: !13, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1567, file: !119, line: 181, baseType: !54, size: 32, offset: 416)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !227, line: 309, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1560, file: !227, line: 406, baseType: !1856, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!27, !640, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !119, line: 293, size: 1536, elements: !1861)
!1861 = !{!1862, !1892, !1906}
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1860, file: !119, line: 295, baseType: !1863, size: 512)
!1863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1860, file: !119, line: 295, size: 512, elements: !1864)
!1864 = !{!1865, !1891}
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1863, file: !119, line: 296, baseType: !1866, size: 448)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1863, file: !119, line: 296, size: 448, elements: !1867)
!1867 = !{!1868, !1869, !1878, !1879, !1880, !1889, !1890}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1866, file: !119, line: 298, baseType: !44, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !119, line: 299, baseType: !1870, size: 128, offset: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1866, file: !119, line: 299, size: 128, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1870, file: !119, line: 300, baseType: !102, size: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1870, file: !119, line: 302, baseType: !1874, size: 128)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1870, file: !119, line: 302, size: 128, elements: !1875)
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1874, file: !119, line: 303, baseType: !25, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1874, file: !119, line: 305, baseType: !13, size: 32, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1866, file: !119, line: 310, baseType: !1546, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1866, file: !119, line: 311, baseType: !44, size: 64, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !119, line: 312, baseType: !1881, size: 64, offset: 320)
!1881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1866, file: !119, line: 312, size: 64, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1881, file: !119, line: 313, baseType: !25, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1881, file: !119, line: 314, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !119, line: 257, baseType: !1886)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 255, size: 64, elements: !1887)
!1887 = !{!1888}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1886, file: !119, line: 256, baseType: !44, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1866, file: !119, line: 316, baseType: !54, size: 32, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1866, file: !119, line: 317, baseType: !54, size: 32, offset: 416)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1863, file: !119, line: 323, baseType: !1567, size: 512, align: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, scope: !1860, file: !119, line: 325, baseType: !1893, size: 512, offset: 512)
!1893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1860, file: !119, line: 325, size: 512, elements: !1894)
!1894 = !{!1895, !1905}
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1893, file: !119, line: 326, baseType: !1896, size: 320)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1893, file: !119, line: 326, size: 320, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1896, file: !119, line: 327, baseType: !44, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1896, file: !119, line: 328, baseType: !44, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1896, file: !119, line: 329, baseType: !44, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1896, file: !119, line: 331, baseType: !54, size: 32, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1896, file: !119, line: 332, baseType: !54, size: 32, offset: 224)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1896, file: !119, line: 333, baseType: !54, size: 32, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1896, file: !119, line: 335, baseType: !13, size: 32, offset: 288)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1893, file: !119, line: 339, baseType: !1567, size: 512, align: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1860, file: !119, line: 341, baseType: !1907, size: 512, offset: 1024)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1860, file: !119, line: 341, size: 512, elements: !1908)
!1908 = !{!1909, !1918, !1924}
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1907, file: !119, line: 342, baseType: !1910, size: 384)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1907, file: !119, line: 342, size: 384, elements: !1911)
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1917}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1910, file: !119, line: 343, baseType: !44, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1910, file: !119, line: 344, baseType: !44, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1910, file: !119, line: 346, baseType: !25, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1910, file: !119, line: 347, baseType: !25, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1910, file: !119, line: 348, baseType: !25, size: 64, offset: 256)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1910, file: !119, line: 349, baseType: !25, size: 64, offset: 320)
!1918 = !DIDerivedType(tag: DW_TAG_member, scope: !1907, file: !119, line: 352, baseType: !1919, size: 256)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1907, file: !119, line: 352, size: 256, elements: !1920)
!1920 = !{!1921, !1922, !1923}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1919, file: !119, line: 353, baseType: !44, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1919, file: !119, line: 354, baseType: !44, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1919, file: !119, line: 356, baseType: !102, size: 128, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1907, file: !119, line: 359, baseType: !1567, size: 512, align: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1560, file: !227, line: 409, baseType: !1926, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!27, !1546, !1853}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1560, file: !227, line: 412, baseType: !1930, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!825, !1546, !1859}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1560, file: !227, line: 414, baseType: !1934, size: 64, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !1937}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !227, line: 310, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1560, file: !227, line: 416, baseType: !1940, size: 64, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!27, !640, !1546, !46, !13, !1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1560, file: !227, line: 419, baseType: !1946, size: 64, offset: 384)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!27, !640, !1546, !46, !13, !13, !1566, !25}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1560, file: !227, line: 424, baseType: !1950, size: 64, offset: 448)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!1953, !1546, !1953}
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !30, line: 131, baseType: !363)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1560, file: !227, line: 425, baseType: !1955, size: 64, offset: 512)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !1859, !40, !40}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1560, file: !227, line: 426, baseType: !1959, size: 64, offset: 576)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!825, !1859, !750}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1560, file: !227, line: 427, baseType: !1963, size: 64, offset: 640)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !1859}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1560, file: !227, line: 428, baseType: !1967, size: 64, offset: 704)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!1347, !1970, !1992}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !227, line: 373, size: 384, elements: !1972)
!1972 = !{!1973, !1974, !1975, !1979, !1980, !1981, !1982}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1971, file: !227, line: 374, baseType: !640, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1971, file: !227, line: 375, baseType: !46, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1971, file: !227, line: 376, baseType: !1976, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !1970, !1050}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1971, file: !227, line: 377, baseType: !25, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1971, file: !227, line: 378, baseType: !27, size: 32, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1971, file: !227, line: 379, baseType: !98, size: 16, offset: 288)
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !227, line: 380, baseType: !1983, size: 64, offset: 320)
!1983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1971, file: !227, line: 380, size: 64, elements: !1984)
!1984 = !{!1985, !1988}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1983, file: !227, line: 386, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !227, line: 386, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1983, file: !227, line: 395, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!1347, !25}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1994, line: 41, size: 320, elements: !1995)
!1994 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001, !2006, !2039}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1993, file: !1994, line: 42, baseType: !88, size: 8)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1993, file: !1994, line: 43, baseType: !825, size: 8, offset: 8)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1993, file: !1994, line: 44, baseType: !825, size: 8, offset: 16)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1993, file: !1994, line: 45, baseType: !825, size: 8, offset: 24)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1993, file: !1994, line: 46, baseType: !825, size: 8, offset: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !1994, line: 47, baseType: !2002, size: 64, offset: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1993, file: !1994, line: 47, size: 64, elements: !2003)
!2003 = !{!2004, !2005}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2002, file: !1994, line: 48, baseType: !40, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2002, file: !1994, line: 49, baseType: !27, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !1994, line: 61, baseType: !2007, size: 128, offset: 128)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1993, file: !1994, line: 61, size: 128, elements: !2008)
!2008 = !{!2009, !2015}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2007, file: !1994, line: 67, baseType: !2010, size: 128)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2011, line: 17, size: 128, elements: !2012)
!2011 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2010, file: !2011, line: 19, baseType: !25, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2010, file: !2011, line: 20, baseType: !41, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !1994, line: 68, baseType: !2016, size: 128)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2007, file: !1994, line: 68, size: 128, elements: !2017)
!2017 = !{!2018, !2038}
!2018 = !DIDerivedType(tag: DW_TAG_member, scope: !2016, file: !1994, line: 69, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2016, file: !1994, line: 69, size: 64, elements: !2020)
!2020 = !{!2021, !2024, !2031, !2035, !2037}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2019, file: !1994, line: 71, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2010)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2019, file: !1994, line: 72, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2027)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1994, line: 17, size: 128, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2027, file: !1994, line: 18, baseType: !25, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2027, file: !1994, line: 19, baseType: !40, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2019, file: !1994, line: 73, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2034)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1994, line: 73, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2019, file: !1994, line: 74, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2019, file: !1994, line: 75, baseType: !25, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2016, file: !1994, line: 77, baseType: !40, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !1994, line: 80, baseType: !2040, size: 64, offset: 256)
!2040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1993, file: !1994, line: 80, size: 64, elements: !2041)
!2041 = !{!2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2040, file: !1994, line: 81, baseType: !44, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2040, file: !1994, line: 82, baseType: !46, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1560, file: !227, line: 433, baseType: !2045, size: 64, offset: 768)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!27, !1546, !1859, !1859, !237}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1560, file: !227, line: 435, baseType: !2049, size: 64, offset: 832)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!27, !1859}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1560, file: !227, line: 436, baseType: !2053, size: 64, offset: 896)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!825, !1859, !40, !40}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1560, file: !227, line: 438, baseType: !2057, size: 64, offset: 960)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !1859, !2060, !2060}
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1560, file: !227, line: 439, baseType: !2062, size: 64, offset: 1024)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!27, !1546, !1566}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1560, file: !227, line: 442, baseType: !2066, size: 64, offset: 1088)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!27, !2069, !640, !2071}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !227, line: 66, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1560, file: !227, line: 444, baseType: !2073, size: 64, offset: 1152)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !640}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1560, file: !227, line: 445, baseType: !2077, size: 64, offset: 1216)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!27, !1970, !1992}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1547, file: !227, line: 486, baseType: !44, size: 64, offset: 896)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1547, file: !227, line: 487, baseType: !845, size: 320, offset: 960)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1547, file: !227, line: 488, baseType: !2083, size: 32, offset: 1280)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2084, line: 8, baseType: !306)
!2084 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1547, file: !227, line: 489, baseType: !64, size: 32, offset: 1312)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1547, file: !227, line: 490, baseType: !102, size: 128, offset: 1344)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1547, file: !227, line: 491, baseType: !25, size: 64, offset: 1472)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1537, file: !1506, line: 180, baseType: !2089, size: 64, offset: 320)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!1347, !640, !1448, !1536, !913, !46, !40}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1537, file: !1506, line: 182, baseType: !2089, size: 64, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1537, file: !1506, line: 184, baseType: !2094, size: 64, offset: 448)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!27, !640, !1448, !1536, !1676}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1525, file: !1506, line: 90, baseType: !2098, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1525, file: !1506, line: 91, baseType: !2100, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1496, file: !1443, line: 120, baseType: !2102, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!2105, !1466}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2107)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !142, line: 39, size: 384, elements: !2108)
!2108 = !{!2109, !2110, !2114, !2118, !2126, !2130}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2107, file: !142, line: 40, baseType: !141, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2107, file: !142, line: 41, baseType: !2111, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!825}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2107, file: !142, line: 42, baseType: !2115, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!25}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2107, file: !142, line: 43, baseType: !2119, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!2122, !2124}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !142, line: 19, flags: DIFlagFwdDecl)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2107, file: !142, line: 44, baseType: !2127, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!2122}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2107, file: !142, line: 45, baseType: !1226, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1496, file: !1443, line: 121, baseType: !2132, size: 64, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!2122, !1466}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1496, file: !1443, line: 122, baseType: !2136, size: 64, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !1466, !1016, !1017}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1442, file: !1443, line: 70, baseType: !2140, size: 64, offset: 384)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2142, line: 190, size: 1152, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2143 = !{!2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2272, !2273, !2274, !2275, !2276, !2279}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2141, file: !2142, line: 191, baseType: !54, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2141, file: !2142, line: 192, baseType: !54, size: 32, offset: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2141, file: !2142, line: 202, baseType: !2140, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2141, file: !2142, line: 203, baseType: !22, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2141, file: !2142, line: 205, baseType: !355, size: 192, align: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2141, file: !2142, line: 207, baseType: !2122, size: 64, offset: 384)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2141, file: !2142, line: 208, baseType: !13, size: 32, offset: 448)
!2151 = !DIDerivedType(tag: DW_TAG_member, scope: !2141, file: !2142, line: 209, baseType: !2152, size: 256, offset: 512)
!2152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2141, file: !2142, line: 209, size: 256, elements: !2153)
!2153 = !{!2154, !2163, !2167}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2152, file: !2142, line: 210, baseType: !2155, size: 256)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2142, line: 153, size: 256, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2162}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2155, file: !2142, line: 154, baseType: !44, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2155, file: !2142, line: 156, baseType: !498, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2155, file: !2142, line: 162, baseType: !2160, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2142, line: 162, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2155, file: !2142, line: 167, baseType: !44, size: 64, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2152, file: !2142, line: 211, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2142, line: 170, size: 64, elements: !2165)
!2165 = !{!2166}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2164, file: !2142, line: 171, baseType: !2140, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2152, file: !2142, line: 212, baseType: !2168, size: 256)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2142, line: 174, size: 256, elements: !2169)
!2169 = !{!2170, !2267, !2270, !2271}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2168, file: !2142, line: 175, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2142, line: 271, size: 768, elements: !2174)
!2174 = !{!2175, !2233, !2237, !2238, !2239, !2240, !2241, !2245, !2246, !2247, !2248, !2263}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2173, file: !2142, line: 276, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!27, !2179}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2142, line: 251, size: 1216, elements: !2181)
!2181 = !{!2182, !2183, !2184, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2180, file: !2142, line: 253, baseType: !2140, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2180, file: !2142, line: 254, baseType: !640, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2180, file: !2142, line: 255, baseType: !2185, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2187, line: 17, size: 960, elements: !2188)
!2187 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2218, !2219, !2222}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2186, file: !2187, line: 18, baseType: !913, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2186, file: !2187, line: 19, baseType: !40, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2186, file: !2187, line: 20, baseType: !40, size: 64, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2186, file: !2187, line: 21, baseType: !40, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2186, file: !2187, line: 22, baseType: !40, size: 64, offset: 256)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2186, file: !2187, line: 23, baseType: !46, size: 64, offset: 320)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2186, file: !2187, line: 24, baseType: !46, size: 64, offset: 384)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2186, file: !2187, line: 25, baseType: !668, size: 256, offset: 448)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2186, file: !2187, line: 26, baseType: !2198, size: 64, offset: 704)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2200)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2187, line: 32, size: 256, elements: !2201)
!2201 = !{!2202, !2206, !2210, !2214}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2200, file: !2187, line: 33, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!25, !2185, !45}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2200, file: !2187, line: 34, baseType: !2207, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !2185, !25}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2200, file: !2187, line: 35, baseType: !2211, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!25, !2185, !25, !45}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2200, file: !2187, line: 36, baseType: !2215, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!27, !2185, !25}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2186, file: !2187, line: 27, baseType: !27, size: 32, offset: 768)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2186, file: !2187, line: 28, baseType: !2220, size: 64, offset: 832)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2186, file: !2187, line: 29, baseType: !25, size: 64, offset: 896)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2180, file: !2142, line: 256, baseType: !25, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2180, file: !2142, line: 259, baseType: !668, size: 256, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2180, file: !2142, line: 260, baseType: !668, size: 256, offset: 512)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2180, file: !2142, line: 261, baseType: !27, size: 32, offset: 768)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2180, file: !2142, line: 262, baseType: !102, size: 128, offset: 832)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2180, file: !2142, line: 263, baseType: !913, size: 64, offset: 960)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2180, file: !2142, line: 265, baseType: !40, size: 64, offset: 1024)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2180, file: !2142, line: 266, baseType: !825, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2180, file: !2142, line: 267, baseType: !825, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2180, file: !2142, line: 268, baseType: !1721, size: 64, offset: 1152)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2173, file: !2142, line: 277, baseType: !2234, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{null, !2179}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2173, file: !2142, line: 290, baseType: !2215, size: 64, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2173, file: !2142, line: 292, baseType: !2203, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2173, file: !2142, line: 293, baseType: !2211, size: 64, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2173, file: !2142, line: 294, baseType: !2207, size: 64, offset: 320)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2173, file: !2142, line: 296, baseType: !2242, size: 64, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!1347, !2179, !913, !40, !46}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2173, file: !2142, line: 306, baseType: !40, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2173, file: !2142, line: 313, baseType: !825, size: 8, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2173, file: !2142, line: 314, baseType: !2242, size: 64, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2173, file: !2142, line: 317, baseType: !2249, size: 64, offset: 640)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!292, !2179, !2252}
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2254, line: 37, size: 128, elements: !2255)
!2254 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2255 = !{!2256, !2262}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2253, file: !2254, line: 38, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2254, line: 31, baseType: !2258)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{null, !640, !2261, !2252}
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2253, file: !2254, line: 39, baseType: !292, size: 32, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2173, file: !2142, line: 320, baseType: !2264, size: 64, offset: 704)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!27, !2179, !1676}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2168, file: !2142, line: 176, baseType: !2268, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2142, line: 35, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2168, file: !2142, line: 177, baseType: !46, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2168, file: !2142, line: 178, baseType: !2140, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2141, file: !2142, line: 215, baseType: !25, size: 64, offset: 768)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2141, file: !2142, line: 221, baseType: !363, size: 64, offset: 832)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2141, file: !2142, line: 223, baseType: !31, size: 16, offset: 896)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2141, file: !2142, line: 224, baseType: !29, size: 16, offset: 912)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2141, file: !2142, line: 225, baseType: !2277, size: 64, offset: 960)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2142, line: 36, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2141, file: !2142, line: 227, baseType: !648, size: 128, align: 64, offset: 1024)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1442, file: !1443, line: 71, baseType: !2281, size: 32, offset: 448)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2282, line: 19, size: 32, elements: !2283)
!2282 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2283 = !{!2284}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2281, file: !2282, line: 20, baseType: !312, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1442, file: !1443, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1442, file: !1443, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1442, file: !1443, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1442, file: !1443, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1442, file: !1443, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1439, file: !135, line: 47, baseType: !1429, size: 64, offset: 512)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1439, file: !135, line: 48, baseType: !1448, size: 64, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1439, file: !135, line: 49, baseType: !2293, size: 64, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !135, line: 49, flags: DIFlagFwdDecl)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1439, file: !135, line: 50, baseType: !990, size: 64, offset: 704)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1430, file: !135, line: 418, baseType: !2297, size: 64, offset: 1408)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !135, line: 53, size: 448, elements: !2299)
!2299 = !{!2300, !2301, !2306, !2310, !2314, !2318}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2298, file: !135, line: 54, baseType: !1513, size: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2298, file: !135, line: 55, baseType: !2302, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!1347, !2297, !2305, !913}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2298, file: !135, line: 57, baseType: !2307, size: 64, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!1347, !2297, !2305, !22, !40}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2298, file: !135, line: 59, baseType: !2311, size: 64, offset: 256)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{null, !1429, !22}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2298, file: !135, line: 60, baseType: !2315, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!27, !1429}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2298, file: !135, line: 61, baseType: !2319, size: 64, offset: 384)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{null, !1429}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1430, file: !135, line: 419, baseType: !22, size: 64, offset: 1472)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1430, file: !135, line: 420, baseType: !22, size: 64, offset: 1536)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1430, file: !135, line: 421, baseType: !1448, size: 64, offset: 1600)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1430, file: !135, line: 424, baseType: !2326, size: 64, offset: 1664)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2328)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !135, line: 424, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1430, file: !135, line: 425, baseType: !2330, size: 64, offset: 1728)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1430, file: !135, line: 426, baseType: !13, size: 32, offset: 1792)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1430, file: !135, line: 435, baseType: !668, size: 256, offset: 1856)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1430, file: !135, line: 437, baseType: !2335, size: 64, offset: 2112)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2337, line: 69, size: 320, elements: !2338)
!2337 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2338 = !{!2339, !2340, !2341, !2358, !2360, !2364, !2365}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2336, file: !2337, line: 70, baseType: !22, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2336, file: !2337, line: 71, baseType: !1429, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2336, file: !2337, line: 72, baseType: !2342, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2344)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2337, line: 47, size: 256, elements: !2345)
!2345 = !{!2346, !2347, !2353, !2357}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2344, file: !2337, line: 49, baseType: !13, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2344, file: !2337, line: 51, baseType: !2348, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!27, !22, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2336)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2344, file: !2337, line: 53, baseType: !2354, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!27, !913, !2351}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2344, file: !2337, line: 55, baseType: !1226, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2336, file: !2337, line: 73, baseType: !2359, size: 16, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2336, file: !2337, line: 74, baseType: !2361, size: 8, offset: 208)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !89, line: 16, baseType: !2362)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !91, line: 20, baseType: !2363)
!2363 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2336, file: !2337, line: 75, baseType: !88, size: 8, offset: 216)
!2365 = !DIDerivedType(tag: DW_TAG_member, scope: !2336, file: !2337, line: 76, baseType: !2366, size: 64, offset: 256)
!2366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2336, file: !2337, line: 76, size: 64, elements: !2367)
!2367 = !{!2368, !2369, !2376}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2366, file: !2337, line: 77, baseType: !25, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2366, file: !2337, line: 78, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2372)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2337, line: 86, size: 128, elements: !2373)
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2372, file: !2337, line: 87, baseType: !13, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2372, file: !2337, line: 88, baseType: !913, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2366, file: !2337, line: 79, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2337, line: 92, size: 256, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2385, !2386}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2379, file: !2337, line: 94, baseType: !13, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2379, file: !2337, line: 95, baseType: !13, size: 32, offset: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2379, file: !2337, line: 96, baseType: !2384, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2379, file: !2337, line: 97, baseType: !2342, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2379, file: !2337, line: 98, baseType: !25, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1430, file: !135, line: 438, baseType: !13, size: 32, offset: 2176)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1430, file: !135, line: 441, baseType: !13, size: 32, offset: 2208)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1430, file: !135, line: 442, baseType: !2326, size: 64, offset: 2240)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1430, file: !135, line: 443, baseType: !2330, size: 64, offset: 2304)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1430, file: !135, line: 444, baseType: !825, size: 8, offset: 2368)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1430, file: !135, line: 451, baseType: !825, size: 8, offset: 2376)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1430, file: !135, line: 454, baseType: !13, size: 32, offset: 2400)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1430, file: !135, line: 455, baseType: !2395, size: 64, offset: 2432)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2397, line: 23, size: 96, elements: !2398)
!2397 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2398 = !{!2399, !2400, !2401}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2396, file: !2397, line: 24, baseType: !27, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2396, file: !2397, line: 24, baseType: !27, size: 32, offset: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2396, file: !2397, line: 24, baseType: !27, size: 32, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1430, file: !135, line: 458, baseType: !2403, size: 64, offset: 2496)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!27}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1430, file: !135, line: 460, baseType: !2407, size: 4032, align: 512, offset: 2560)
!2407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2408, size: 4032, elements: !2424)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !135, line: 362, size: 576, elements: !2409)
!2409 = !{!2410, !2411, !2412}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2408, file: !135, line: 363, baseType: !25, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2408, file: !135, line: 364, baseType: !13, size: 32, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2408, file: !135, line: 367, baseType: !2413, size: 448, offset: 128)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !135, line: 319, size: 448, elements: !2414)
!2414 = !{!2415, !2416}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2413, file: !135, line: 320, baseType: !1429, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2413, file: !135, line: 321, baseType: !2417, size: 384, offset: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2418, line: 40, size: 384, elements: !2419)
!2418 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2419 = !{!2420}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2417, file: !2418, line: 41, baseType: !2421, size: 384, align: 64)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 384, align: 64, elements: !2422)
!2422 = !{!2423}
!2423 = !DISubrange(count: 2)
!2424 = !{!2425}
!2425 = !DISubrange(count: 7)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1430, file: !135, line: 463, baseType: !2427, size: 192, offset: 6592)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2428, line: 8, size: 192, elements: !2429)
!2428 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2429 = !{!2430, !2431, !2433}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2427, file: !2428, line: 10, baseType: !13, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2427, file: !2428, line: 11, baseType: !2432, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2427, file: !2428, line: 12, baseType: !2434, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2436, line: 59, size: 48, elements: !2437)
!2436 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2437 = !{!2438, !2441, !2442, !2443, !2444, !2445}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2435, file: !2436, line: 60, baseType: !2439, size: 16)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !89, line: 18, baseType: !2440)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !91, line: 23, baseType: !873)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2435, file: !2436, line: 61, baseType: !2439, size: 16, offset: 16)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2435, file: !2436, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2435, file: !2436, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2435, file: !2436, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2435, file: !2436, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1430, file: !135, line: 465, baseType: !44, size: 64, offset: 6784)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1430, file: !135, line: 469, baseType: !13, size: 32, offset: 6848)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1430, file: !135, line: 470, baseType: !102, size: 128, offset: 6912)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1430, file: !135, line: 471, baseType: !2450, size: 64, offset: 7040)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2452, line: 33, size: 96, elements: !2453)
!2452 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2453 = !{!2454, !2455, !2456, !2457}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2451, file: !2452, line: 37, baseType: !27, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2451, file: !2452, line: 43, baseType: !27, size: 32, offset: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2451, file: !2452, line: 45, baseType: !31, size: 16, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2451, file: !2452, line: 47, baseType: !31, size: 16, offset: 80)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1430, file: !135, line: 476, baseType: !2459, size: 64, offset: 7104)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !135, line: 378, size: 256, elements: !2461)
!2461 = !{!2462, !2478, !2479, !2480}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2460, file: !135, line: 379, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2465, line: 204, baseType: !2466)
!2465 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2465, line: 197, size: 192, elements: !2467)
!2467 = !{!2468, !2470, !2471, !2472, !2474, !2476}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2466, file: !2465, line: 198, baseType: !2469, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2465, line: 21, baseType: !307)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2466, file: !2465, line: 199, baseType: !92, size: 8, offset: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2466, file: !2465, line: 200, baseType: !92, size: 8, offset: 40)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2466, file: !2465, line: 201, baseType: !2473, size: 16, offset: 48)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2465, line: 17, baseType: !99)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2466, file: !2465, line: 202, baseType: !2475, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2465, line: 16, baseType: !364)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2466, file: !2465, line: 203, baseType: !2477, size: 64, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2465, line: 22, baseType: !364)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2460, file: !135, line: 380, baseType: !13, size: 32, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2460, file: !135, line: 381, baseType: !913, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2460, file: !135, line: 382, baseType: !913, size: 64, offset: 192)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1430, file: !135, line: 477, baseType: !2460, size: 256, offset: 7168)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1430, file: !135, line: 480, baseType: !2483, size: 64, offset: 7424)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !135, line: 480, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1430, file: !135, line: 483, baseType: !2486, size: 64, offset: 7488)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !135, line: 483, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1430, file: !135, line: 488, baseType: !913, size: 64, offset: 7552)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1430, file: !135, line: 492, baseType: !25, size: 64, offset: 7616)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1430, file: !135, line: 493, baseType: !13, size: 32, offset: 7680)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1430, file: !135, line: 495, baseType: !25, size: 64, offset: 7744)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1430, file: !135, line: 496, baseType: !13, size: 32, offset: 7808)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1430, file: !135, line: 499, baseType: !13, size: 32, offset: 7840)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1430, file: !135, line: 500, baseType: !2495, size: 64, offset: 7872)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2497, line: 45, baseType: !2498)
!2497 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1430, file: !135, line: 503, baseType: !13, size: 32, offset: 7936)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1430, file: !135, line: 504, baseType: !2501, size: 64, offset: 8000)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2504, line: 96, size: 192, elements: !2505)
!2504 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2505 = !{!2506, !2507, !2560, !2563}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2503, file: !2504, line: 97, baseType: !13, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2503, file: !2504, line: 98, baseType: !2508, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2504, line: 24, size: 3072, elements: !2510)
!2510 = !{!2511, !2513, !2514, !2515, !2516, !2529, !2530, !2531, !2532, !2544, !2545, !2546, !2557, !2558, !2559}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2509, file: !2504, line: 26, baseType: !2512, size: 128)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 128, elements: !2422)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2509, file: !2504, line: 27, baseType: !2512, size: 128, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2509, file: !2504, line: 28, baseType: !27, size: 32, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2509, file: !2504, line: 31, baseType: !64, size: 32, align: 512, offset: 512)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2509, file: !2504, line: 32, baseType: !2517, size: 960, offset: 576)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2518, line: 206, size: 960, elements: !2519)
!2518 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2519 = !{!2520, !2521, !2524, !2526, !2527, !2528}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2517, file: !2518, line: 207, baseType: !651, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2517, file: !2518, line: 208, baseType: !2522, size: 256, offset: 64)
!2522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2523, size: 256, elements: !725)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2517, file: !2518, line: 209, baseType: !2525, size: 256, offset: 320)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 256, elements: !725)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2517, file: !2518, line: 213, baseType: !1050, size: 64, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2517, file: !2518, line: 215, baseType: !1052, size: 256, offset: 640)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2517, file: !2518, line: 216, baseType: !88, size: 8, offset: 896)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2509, file: !2504, line: 33, baseType: !44, size: 64, offset: 1536)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2509, file: !2504, line: 34, baseType: !44, size: 64, offset: 1600)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2509, file: !2504, line: 35, baseType: !825, size: 8, offset: 1664)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2509, file: !2504, line: 36, baseType: !2533, size: 320, offset: 1728)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2534, line: 11, size: 320, elements: !2535)
!2534 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2535 = !{!2536, !2537, !2538, !2543}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2533, file: !2534, line: 16, baseType: !720, size: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2533, file: !2534, line: 17, baseType: !44, size: 64, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2533, file: !2534, line: 18, baseType: !2539, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{null, !2542}
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2533, file: !2534, line: 19, baseType: !306, size: 32, offset: 256)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2509, file: !2504, line: 37, baseType: !952, size: 256, offset: 2048)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2509, file: !2504, line: 38, baseType: !648, size: 128, align: 64, offset: 2304)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2509, file: !2504, line: 39, baseType: !2547, size: 64, offset: 2432)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2504, line: 49, size: 768, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2553, !2554, !2555, !2556}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2548, file: !2504, line: 50, baseType: !64, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2548, file: !2504, line: 51, baseType: !2525, size: 256, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2548, file: !2504, line: 53, baseType: !2525, size: 256, offset: 320)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2548, file: !2504, line: 54, baseType: !44, size: 64, offset: 576)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2548, file: !2504, line: 55, baseType: !2547, size: 64, offset: 640)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2548, file: !2504, line: 56, baseType: !27, size: 32, offset: 704)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2548, file: !2504, line: 57, baseType: !27, size: 32, offset: 736)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2509, file: !2504, line: 40, baseType: !44, size: 64, offset: 2496)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2509, file: !2504, line: 42, baseType: !27, size: 32, offset: 2560)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2509, file: !2504, line: 43, baseType: !2502, size: 64, offset: 2624)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2503, file: !2504, line: 99, baseType: !2561, offset: 128)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2562, line: 211, elements: !633)
!2562 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2503, file: !2504, line: 100, baseType: !2564, size: 64, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2504, line: 63, size: 3008, elements: !2566)
!2566 = !{!2567, !2568, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2598}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2565, file: !2504, line: 64, baseType: !2547, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2565, file: !2504, line: 65, baseType: !2569, size: 192, offset: 64)
!2569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2547, size: 192, elements: !704)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2565, file: !2504, line: 67, baseType: !27, size: 32, offset: 256)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2565, file: !2504, line: 68, baseType: !668, size: 256, offset: 320)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2565, file: !2504, line: 69, baseType: !64, size: 32, offset: 576)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2565, file: !2504, line: 70, baseType: !668, size: 256, offset: 640)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2565, file: !2504, line: 71, baseType: !44, size: 64, offset: 896)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2565, file: !2504, line: 72, baseType: !44, size: 64, offset: 960)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2565, file: !2504, line: 73, baseType: !44, size: 64, offset: 1024)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2565, file: !2504, line: 74, baseType: !44, size: 64, offset: 1088)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2565, file: !2504, line: 75, baseType: !44, size: 64, offset: 1152)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2565, file: !2504, line: 76, baseType: !44, size: 64, offset: 1216)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2565, file: !2504, line: 77, baseType: !44, size: 64, offset: 1280)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2565, file: !2504, line: 78, baseType: !44, size: 64, offset: 1344)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2565, file: !2504, line: 79, baseType: !825, size: 8, offset: 1408)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2565, file: !2504, line: 80, baseType: !44, size: 64, offset: 1472)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2565, file: !2504, line: 81, baseType: !668, size: 256, offset: 1536)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2565, file: !2504, line: 82, baseType: !991, size: 256, offset: 1792)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2565, file: !2504, line: 84, baseType: !54, size: 32, offset: 2048)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2565, file: !2504, line: 87, baseType: !44, size: 64, offset: 2112)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2565, file: !2504, line: 88, baseType: !44, size: 64, offset: 2176)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2565, file: !2504, line: 89, baseType: !2590, size: 704, offset: 2240)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !953, line: 111, size: 704, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2597}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2590, file: !953, line: 112, baseType: !952, size: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2590, file: !953, line: 113, baseType: !2533, size: 320, offset: 256)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2590, file: !953, line: 116, baseType: !2595, size: 64, offset: 576)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !953, line: 18, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2590, file: !953, line: 117, baseType: !27, size: 32, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2565, file: !2504, line: 90, baseType: !2502, size: 64, offset: 2944)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1430, file: !135, line: 515, baseType: !2600, size: 64, offset: 8064)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2602, line: 117, size: 128, elements: !2603)
!2602 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2603 = !{!2604, !2605, !2606}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2601, file: !2602, line: 118, baseType: !837, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2601, file: !2602, line: 119, baseType: !837, size: 32, offset: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2601, file: !2602, line: 120, baseType: !1050, size: 64, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1430, file: !135, line: 516, baseType: !13, size: 32, offset: 8128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1430, file: !135, line: 519, baseType: !13, size: 32, offset: 8160)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1430, file: !135, line: 520, baseType: !2610, size: 64, offset: 8192)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1430, file: !135, line: 523, baseType: !2612, size: 64, offset: 8256)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !148, line: 372, size: 1024, elements: !2615)
!2615 = !{!2616, !2617, !2657, !2717, !2798, !2799, !2802, !2807, !2808, !2809, !2810, !2812, !2815}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2614, file: !148, line: 373, baseType: !102, size: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2614, file: !148, line: 374, baseType: !2618, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !148, line: 291, size: 576, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2624, !2628, !2651, !2655, !2656}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2619, file: !148, line: 292, baseType: !22, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2619, file: !148, line: 293, baseType: !25, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2619, file: !148, line: 295, baseType: !25, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2619, file: !148, line: 297, baseType: !2625, size: 64, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!27, !2613, !147, !25}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2619, file: !148, line: 299, baseType: !2629, size: 64, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !148, line: 275, size: 320, elements: !2631)
!2631 = !{!2632, !2633}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2630, file: !148, line: 276, baseType: !22, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, scope: !2630, file: !148, line: 277, baseType: !2634, size: 256, offset: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2630, file: !148, line: 277, size: 256, elements: !2635)
!2635 = !{!2636, !2647}
!2636 = !DIDerivedType(tag: DW_TAG_member, scope: !2634, file: !148, line: 278, baseType: !2637, size: 256)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2634, file: !148, line: 278, size: 256, elements: !2638)
!2638 = !{!2639, !2640, !2641, !2642, !2644, !2645, !2646}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2637, file: !148, line: 279, baseType: !22, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2637, file: !148, line: 280, baseType: !2498, size: 32, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2637, file: !148, line: 281, baseType: !2498, size: 32, offset: 96)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2637, file: !148, line: 282, baseType: !2643, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2637, file: !148, line: 283, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2637, file: !148, line: 284, baseType: !2498, size: 32, offset: 160)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2637, file: !148, line: 285, baseType: !2498, size: 32, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2634, file: !148, line: 287, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!27, !2613}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2619, file: !148, line: 300, baseType: !2652, size: 64, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!105, !2613}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2619, file: !148, line: 301, baseType: !102, size: 128, offset: 384)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2619, file: !148, line: 302, baseType: !2648, size: 64, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_member, scope: !2614, file: !148, line: 375, baseType: !2658, size: 64, offset: 192)
!2658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2614, file: !148, line: 375, size: 64, elements: !2659)
!2659 = !{!2660, !2661}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2658, file: !148, line: 376, baseType: !22, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2658, file: !148, line: 378, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2497, line: 32, size: 640, elements: !2664)
!2664 = !{!2665, !2666, !2678, !2702, !2703, !2704, !2705, !2706, !2710}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2663, file: !2497, line: 33, baseType: !22, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2663, file: !2497, line: 34, baseType: !2667, size: 128, offset: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2602, line: 85, size: 128, elements: !2668)
!2668 = !{!2669, !2670}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2667, file: !2602, line: 86, baseType: !54, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, scope: !2667, file: !2602, line: 101, baseType: !2671, size: 64, offset: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2667, file: !2602, line: 101, size: 64, elements: !2672)
!2672 = !{!2673, !2674, !2675}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2671, file: !2602, line: 102, baseType: !44, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2671, file: !2602, line: 103, baseType: !2600, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2671, file: !2602, line: 104, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2602, line: 104, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2663, file: !2497, line: 35, baseType: !2679, size: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2681, line: 61, size: 128, elements: !2682)
!2681 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2682 = !{!2683, !2684}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2680, file: !2681, line: 62, baseType: !25, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, scope: !2680, file: !2681, line: 63, baseType: !2685, size: 64, offset: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2680, file: !2681, line: 63, size: 64, elements: !2686)
!2686 = !{!2687, !2688, !2701}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2685, file: !2681, line: 65, baseType: !44, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2685, file: !2681, line: 66, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2691, line: 169, size: 192, elements: !2692)
!2691 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2692 = !{!2693, !2694, !2695}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2690, file: !2691, line: 170, baseType: !2689, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2690, file: !2691, line: 171, baseType: !1429, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2690, file: !2691, line: 172, baseType: !2696, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2681, line: 32, size: 64, elements: !2698)
!2698 = !{!2699, !2700}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2697, file: !2681, line: 33, baseType: !837, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2697, file: !2681, line: 34, baseType: !837, size: 32, offset: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2685, file: !2681, line: 67, baseType: !2696, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2663, file: !2497, line: 36, baseType: !25, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2663, file: !2497, line: 37, baseType: !25, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2663, file: !2497, line: 38, baseType: !25, size: 64, offset: 384)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2663, file: !2497, line: 39, baseType: !2403, size: 64, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2663, file: !2497, line: 40, baseType: !2707, size: 64, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{null}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2663, file: !2497, line: 41, baseType: !2711, size: 64, offset: 576)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2497, line: 26, size: 192, elements: !2713)
!2713 = !{!2714, !2715, !2716}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2712, file: !2497, line: 27, baseType: !25, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2712, file: !2497, line: 28, baseType: !25, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2712, file: !2497, line: 29, baseType: !27, size: 32, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2614, file: !148, line: 380, baseType: !2718, size: 256, offset: 256)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !148, line: 148, size: 256, elements: !2719)
!2719 = !{!2720, !2721, !2722}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2718, file: !148, line: 149, baseType: !720, size: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2718, file: !148, line: 150, baseType: !27, size: 32, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2718, file: !148, line: 151, baseType: !2723, size: 64, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !148, line: 141, size: 256, elements: !2725)
!2725 = !{!2726, !2795, !2796, !2797}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2724, file: !148, line: 142, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !148, line: 138, baseType: !2728)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!158, !2731, !27, !2794}
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !148, line: 93, size: 67776, elements: !2733)
!2733 = !{!2734, !2737, !2740, !2743, !2744, !2745, !2746, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2774, !2777, !2778, !2779, !2787, !2788, !2789, !2790, !2791, !2792, !2793}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2732, file: !148, line: 94, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !148, line: 13, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2732, file: !148, line: 95, baseType: !2738, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !148, line: 15, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2732, file: !148, line: 96, baseType: !2741, size: 64, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !148, line: 14, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2732, file: !148, line: 97, baseType: !25, size: 64, offset: 192)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2732, file: !148, line: 98, baseType: !27, size: 32, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2732, file: !148, line: 99, baseType: !668, size: 256, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2732, file: !148, line: 100, baseType: !2747, size: 64, offset: 576)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2750, line: 10, flags: DIFlagFwdDecl)
!2750 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2732, file: !148, line: 101, baseType: !44, size: 64, offset: 640)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2732, file: !148, line: 102, baseType: !25, size: 64, offset: 704)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2732, file: !148, line: 103, baseType: !13, size: 32, offset: 768)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2732, file: !148, line: 104, baseType: !913, size: 64, offset: 832)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2732, file: !148, line: 105, baseType: !13, size: 32, offset: 896)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2732, file: !148, line: 106, baseType: !1050, size: 64, offset: 960)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2732, file: !148, line: 109, baseType: !2758, size: 33088, offset: 1024)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2759, line: 14, size: 33088, elements: !2760)
!2759 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2760 = !{!2761, !2765, !2772, !2773}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2758, file: !2759, line: 15, baseType: !2762, size: 32768)
!2762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2763)
!2763 = !{!2764}
!2764 = !DISubrange(count: 4096)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2758, file: !2759, line: 16, baseType: !2766, size: 192, offset: 32768)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2767, line: 18, size: 192, elements: !2768)
!2767 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2768 = !{!2769, !2770, !2771}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2766, file: !2767, line: 19, baseType: !913, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2766, file: !2767, line: 20, baseType: !40, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2766, file: !2767, line: 21, baseType: !40, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2758, file: !2759, line: 17, baseType: !40, size: 64, offset: 32960)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2758, file: !2759, line: 18, baseType: !27, size: 32, offset: 33024)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2732, file: !148, line: 111, baseType: !2775, size: 64, offset: 34112)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !559, line: 913, baseType: !2776)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 64, elements: !564)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2732, file: !148, line: 114, baseType: !825, size: 8, offset: 34176)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2732, file: !148, line: 117, baseType: !2758, size: 33088, offset: 34240)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2732, file: !148, line: 118, baseType: !2780, size: 64, offset: 67328)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !148, line: 79, size: 64, elements: !2782)
!2782 = !{!2783, !2784, !2785, !2786}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2781, file: !148, line: 80, baseType: !31, size: 16)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2781, file: !148, line: 81, baseType: !92, size: 8, offset: 16)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2781, file: !148, line: 82, baseType: !92, size: 8, offset: 24)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2781, file: !148, line: 83, baseType: !27, size: 32, offset: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2732, file: !148, line: 119, baseType: !44, size: 64, offset: 67392)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2732, file: !148, line: 120, baseType: !27, size: 32, offset: 67456)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2732, file: !148, line: 121, baseType: !27, size: 32, offset: 67488)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2732, file: !148, line: 122, baseType: !27, size: 32, offset: 67520)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2732, file: !148, line: 123, baseType: !363, size: 64, offset: 67584)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2732, file: !148, line: 125, baseType: !46, size: 64, offset: 67648)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2732, file: !148, line: 126, baseType: !1050, size: 64, offset: 67712)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2724, file: !148, line: 143, baseType: !2727, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2724, file: !148, line: 144, baseType: !2727, size: 64, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2724, file: !148, line: 145, baseType: !2727, size: 64, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2614, file: !148, line: 381, baseType: !913, size: 64, offset: 512)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2614, file: !148, line: 382, baseType: !2800, size: 64, offset: 576)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !218, line: 821, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, scope: !2614, file: !148, line: 387, baseType: !2803, size: 64, offset: 640)
!2803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2614, file: !148, line: 387, size: 64, elements: !2804)
!2804 = !{!2805, !2806}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2803, file: !148, line: 388, baseType: !25, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2803, file: !148, line: 389, baseType: !54, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2614, file: !148, line: 391, baseType: !25, size: 64, offset: 704)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2614, file: !148, line: 394, baseType: !27, size: 32, offset: 768)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2614, file: !148, line: 397, baseType: !27, size: 32, offset: 800)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2614, file: !148, line: 398, baseType: !2811, size: 64, offset: 832)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2614, file: !148, line: 399, baseType: !2813, size: 64, offset: 896)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !148, line: 399, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2614, file: !148, line: 401, baseType: !2816, size: 64, offset: 960)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!27, !2613, !2819}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !218, line: 671, size: 8512, elements: !2821)
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !3354, !3355, !3356, !3357, !3363, !3364, !3365, !3366, !3367, !3451, !3452, !3453, !3454, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3574, !3575, !3576, !3577, !3578, !3579, !3594, !3595, !3596, !3597, !3598, !3604, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3621, !3792, !3793, !3794, !3795, !4065, !4066, !4067}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2820, file: !218, line: 678, baseType: !102, size: 128)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2820, file: !218, line: 684, baseType: !102, size: 128, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2820, file: !218, line: 685, baseType: !102, size: 128, offset: 256)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2820, file: !218, line: 689, baseType: !355, size: 192, align: 64, offset: 384)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2820, file: !218, line: 690, baseType: !363, size: 64, offset: 576)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2820, file: !218, line: 696, baseType: !102, size: 128, offset: 640)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2820, file: !218, line: 698, baseType: !720, size: 128, offset: 768)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2820, file: !218, line: 699, baseType: !102, size: 128, offset: 896)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2820, file: !218, line: 700, baseType: !27, size: 32, offset: 1024)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2820, file: !218, line: 703, baseType: !27, size: 32, offset: 1056)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2820, file: !218, line: 705, baseType: !27, size: 32, offset: 1088)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2820, file: !218, line: 707, baseType: !13, size: 32, offset: 1120)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2820, file: !218, line: 708, baseType: !2819, size: 64, offset: 1152)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2820, file: !218, line: 714, baseType: !2836, size: 64, offset: 1216)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !218, line: 302, size: 2432, elements: !2838)
!2838 = !{!2839, !2840, !2841, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3264, !3265, !3266, !3267, !3268, !3272, !3273, !3277, !3281, !3282, !3286, !3290, !3291, !3292, !3296, !3300, !3304, !3305, !3306, !3310, !3311, !3315, !3319, !3320, !3340, !3344, !3345, !3346, !3350}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2837, file: !218, line: 303, baseType: !102, size: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2837, file: !218, line: 305, baseType: !1429, size: 64, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2837, file: !218, line: 306, baseType: !2842, size: 64, offset: 192)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !171, line: 705, size: 5824, elements: !2844)
!2844 = !{!2845, !2846, !2847, !2850, !2851, !2904, !2974, !2975, !2976, !2977, !2978, !2985, !3077, !3090, !3100, !3104, !3106, !3107, !3108, !3112, !3119, !3120, !3123, !3126, !3130, !3133, !3134, !3135, !3136, !3137, !3138, !3168, !3169, !3170, !3173, !3176, !3185, !3186, !3187, !3188, !3189, !3190}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2843, file: !171, line: 706, baseType: !1442, size: 512)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2843, file: !171, line: 707, baseType: !2842, size: 64, offset: 512)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2843, file: !171, line: 709, baseType: !2848, size: 64, offset: 576)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !171, line: 37, flags: DIFlagFwdDecl)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2843, file: !171, line: 711, baseType: !22, size: 64, offset: 640)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2843, file: !171, line: 712, baseType: !2852, size: 64, offset: 704)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2854)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !171, line: 89, size: 384, elements: !2855)
!2855 = !{!2856, !2857, !2858, !2864, !2869, !2873}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2854, file: !171, line: 90, baseType: !22, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2854, file: !171, line: 91, baseType: !1522, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2854, file: !171, line: 92, baseType: !2859, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!27, !2862, !1478}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2843)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2854, file: !171, line: 93, baseType: !2865, size: 64, offset: 192)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!913, !2862, !2868, !1016, !1017}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2854, file: !171, line: 95, baseType: !2870, size: 64, offset: 256)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{null, !2842}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2854, file: !171, line: 97, baseType: !2874, size: 64, offset: 320)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2876)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !178, line: 286, size: 1472, elements: !2877)
!2877 = !{!2878, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2876, file: !178, line: 287, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!27, !2842}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2876, file: !178, line: 288, baseType: !2870, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2876, file: !178, line: 289, baseType: !2879, size: 64, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2876, file: !178, line: 290, baseType: !2879, size: 64, offset: 192)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2876, file: !178, line: 291, baseType: !2879, size: 64, offset: 256)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2876, file: !178, line: 292, baseType: !2879, size: 64, offset: 320)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2876, file: !178, line: 293, baseType: !2879, size: 64, offset: 384)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2876, file: !178, line: 294, baseType: !2879, size: 64, offset: 448)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2876, file: !178, line: 295, baseType: !2879, size: 64, offset: 512)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2876, file: !178, line: 296, baseType: !2879, size: 64, offset: 576)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2876, file: !178, line: 297, baseType: !2879, size: 64, offset: 640)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2876, file: !178, line: 298, baseType: !2879, size: 64, offset: 704)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2876, file: !178, line: 299, baseType: !2879, size: 64, offset: 768)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2876, file: !178, line: 300, baseType: !2879, size: 64, offset: 832)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2876, file: !178, line: 301, baseType: !2879, size: 64, offset: 896)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2876, file: !178, line: 302, baseType: !2879, size: 64, offset: 960)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2876, file: !178, line: 303, baseType: !2879, size: 64, offset: 1024)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2876, file: !178, line: 304, baseType: !2879, size: 64, offset: 1088)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2876, file: !178, line: 305, baseType: !2879, size: 64, offset: 1152)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2876, file: !178, line: 306, baseType: !2879, size: 64, offset: 1216)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2876, file: !178, line: 307, baseType: !2879, size: 64, offset: 1280)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2876, file: !178, line: 308, baseType: !2879, size: 64, offset: 1344)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2876, file: !178, line: 309, baseType: !2879, size: 64, offset: 1408)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2843, file: !171, line: 714, baseType: !2905, size: 64, offset: 768)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2907)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2908, line: 80, size: 1344, elements: !2909)
!2908 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2909 = !{!2910, !2911, !2912, !2913, !2914, !2915, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2973}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2907, file: !2908, line: 81, baseType: !22, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2907, file: !2908, line: 82, baseType: !22, size: 64, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2907, file: !2908, line: 83, baseType: !1522, size: 64, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2907, file: !2908, line: 84, baseType: !1522, size: 64, offset: 192)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2907, file: !2908, line: 85, baseType: !1522, size: 64, offset: 256)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2907, file: !2908, line: 87, baseType: !2916, size: 64, offset: 320)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!27, !2842, !2919}
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !165, line: 96, size: 1152, elements: !2921)
!2921 = !{!2922, !2923, !2924, !2925, !2926, !2927, !2928, !2932, !2936, !2937, !2938, !2939, !2940, !2948, !2949, !2950, !2951, !2952, !2953}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2920, file: !165, line: 97, baseType: !22, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2920, file: !165, line: 98, baseType: !2905, size: 64, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2920, file: !165, line: 100, baseType: !1429, size: 64, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2920, file: !165, line: 101, baseType: !22, size: 64, offset: 192)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2920, file: !165, line: 103, baseType: !825, size: 8, offset: 256)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2920, file: !165, line: 104, baseType: !164, size: 32, offset: 288)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2920, file: !165, line: 106, baseType: !2929, size: 64, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2931)
!2931 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !165, line: 106, flags: DIFlagFwdDecl)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2920, file: !165, line: 107, baseType: !2933, size: 64, offset: 384)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2935)
!2935 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !165, line: 107, flags: DIFlagFwdDecl)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2920, file: !165, line: 109, baseType: !2879, size: 64, offset: 448)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2920, file: !165, line: 110, baseType: !2870, size: 64, offset: 512)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2920, file: !165, line: 111, baseType: !2879, size: 64, offset: 576)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2920, file: !165, line: 112, baseType: !2870, size: 64, offset: 640)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2920, file: !165, line: 113, baseType: !2941, size: 64, offset: 704)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!27, !2842, !2944}
!2944 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !178, line: 60, baseType: !2945)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !178, line: 58, size: 32, elements: !2946)
!2946 = !{!2947}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2945, file: !178, line: 59, baseType: !27, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2920, file: !165, line: 114, baseType: !2879, size: 64, offset: 768)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2920, file: !165, line: 115, baseType: !1522, size: 64, offset: 832)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2920, file: !165, line: 116, baseType: !1522, size: 64, offset: 896)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2920, file: !165, line: 118, baseType: !2874, size: 64, offset: 960)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2920, file: !165, line: 119, baseType: !2870, size: 64, offset: 1024)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2920, file: !165, line: 121, baseType: !2954, size: 64, offset: 1088)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !165, line: 121, flags: DIFlagFwdDecl)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2907, file: !2908, line: 88, baseType: !2859, size: 64, offset: 384)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2907, file: !2908, line: 89, baseType: !2879, size: 64, offset: 448)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2907, file: !2908, line: 90, baseType: !2870, size: 64, offset: 512)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2907, file: !2908, line: 91, baseType: !2870, size: 64, offset: 576)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2907, file: !2908, line: 92, baseType: !2870, size: 64, offset: 640)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2907, file: !2908, line: 94, baseType: !2879, size: 64, offset: 704)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2907, file: !2908, line: 95, baseType: !2879, size: 64, offset: 768)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2907, file: !2908, line: 97, baseType: !2941, size: 64, offset: 832)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2907, file: !2908, line: 98, baseType: !2879, size: 64, offset: 896)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2907, file: !2908, line: 100, baseType: !2879, size: 64, offset: 960)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2907, file: !2908, line: 102, baseType: !2879, size: 64, offset: 1024)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2907, file: !2908, line: 103, baseType: !2870, size: 64, offset: 1088)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2907, file: !2908, line: 105, baseType: !2874, size: 64, offset: 1152)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2907, file: !2908, line: 107, baseType: !2970, size: 64, offset: 1216)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2972)
!2972 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2908, line: 107, flags: DIFlagFwdDecl)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2907, file: !2908, line: 109, baseType: !825, size: 8, offset: 1280)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2843, file: !171, line: 715, baseType: !2919, size: 64, offset: 832)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2843, file: !171, line: 717, baseType: !25, size: 64, offset: 896)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2843, file: !171, line: 719, baseType: !25, size: 64, offset: 960)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2843, file: !171, line: 721, baseType: !668, size: 256, offset: 1024)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2843, file: !171, line: 725, baseType: !2979, size: 448, offset: 1280)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !171, line: 517, size: 448, elements: !2980)
!2980 = !{!2981, !2982, !2983, !2984}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2979, file: !171, line: 518, baseType: !102, size: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2979, file: !171, line: 519, baseType: !102, size: 128, offset: 128)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2979, file: !171, line: 520, baseType: !102, size: 128, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2979, file: !171, line: 521, baseType: !170, size: 32, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2843, file: !171, line: 726, baseType: !2986, size: 2496, offset: 1728)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !178, line: 663, size: 2496, elements: !2987)
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3070, !3074}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2986, file: !178, line: 664, baseType: !2944, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2986, file: !178, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2986, file: !178, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2986, file: !178, line: 667, baseType: !825, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2986, file: !178, line: 668, baseType: !825, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2986, file: !178, line: 669, baseType: !825, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2986, file: !178, line: 670, baseType: !825, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2986, file: !178, line: 671, baseType: !825, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2986, file: !178, line: 672, baseType: !825, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2986, file: !178, line: 673, baseType: !825, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2986, file: !178, line: 674, baseType: !825, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2986, file: !178, line: 675, baseType: !306, size: 32, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2986, file: !178, line: 676, baseType: !64, size: 32, offset: 96)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2986, file: !178, line: 678, baseType: !102, size: 128, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2986, file: !178, line: 679, baseType: !991, size: 256, offset: 256)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2986, file: !178, line: 680, baseType: !3004, size: 64, offset: 512)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3006, line: 43, size: 1536, elements: !3007)
!3006 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3007 = !{!3008, !3009, !3010, !3011, !3012, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3005, file: !3006, line: 44, baseType: !22, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3005, file: !3006, line: 45, baseType: !27, size: 32, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3005, file: !3006, line: 46, baseType: !102, size: 128, offset: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3005, file: !3006, line: 47, baseType: !64, size: 32, offset: 256)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3005, file: !3006, line: 48, baseType: !3013, size: 64, offset: 320)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !178, line: 629, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3005, file: !3006, line: 49, baseType: !2533, size: 320, offset: 384)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3005, file: !3006, line: 50, baseType: !44, size: 64, offset: 704)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3005, file: !3006, line: 51, baseType: !438, size: 64, offset: 768)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3005, file: !3006, line: 52, baseType: !438, size: 64, offset: 832)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3005, file: !3006, line: 53, baseType: !438, size: 64, offset: 896)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3005, file: !3006, line: 54, baseType: !438, size: 64, offset: 960)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3005, file: !3006, line: 55, baseType: !438, size: 64, offset: 1024)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3005, file: !3006, line: 56, baseType: !44, size: 64, offset: 1088)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3005, file: !3006, line: 57, baseType: !44, size: 64, offset: 1152)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3005, file: !3006, line: 58, baseType: !44, size: 64, offset: 1216)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3005, file: !3006, line: 59, baseType: !44, size: 64, offset: 1280)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3005, file: !3006, line: 60, baseType: !44, size: 64, offset: 1344)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3005, file: !3006, line: 61, baseType: !2842, size: 64, offset: 1408)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3005, file: !3006, line: 62, baseType: !825, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3005, file: !3006, line: 63, baseType: !825, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2986, file: !178, line: 681, baseType: !825, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2986, file: !178, line: 682, baseType: !825, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2986, file: !178, line: 683, baseType: !825, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2986, file: !178, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2986, file: !178, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2986, file: !178, line: 690, baseType: !430, size: 512, offset: 640)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2986, file: !178, line: 691, baseType: !363, size: 64, offset: 1152)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2986, file: !178, line: 692, baseType: !952, size: 256, offset: 1216)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2986, file: !178, line: 693, baseType: !59, size: 192, offset: 1472)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2986, file: !178, line: 694, baseType: !3013, size: 64, offset: 1664)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2986, file: !178, line: 695, baseType: !54, size: 32, offset: 1728)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2986, file: !178, line: 696, baseType: !54, size: 32, offset: 1760)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2986, file: !178, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2986, file: !178, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2986, file: !178, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2986, file: !178, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2986, file: !178, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2986, file: !178, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2986, file: !178, line: 703, baseType: !825, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2986, file: !178, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2986, file: !178, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2986, file: !178, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2986, file: !178, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2986, file: !178, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2986, file: !178, line: 709, baseType: !13, size: 32, offset: 1824)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2986, file: !178, line: 710, baseType: !177, size: 32, offset: 1856)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2986, file: !178, line: 711, baseType: !185, size: 32, offset: 1888)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2986, file: !178, line: 712, baseType: !185, size: 32, offset: 1920)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2986, file: !178, line: 713, baseType: !27, size: 32, offset: 1952)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2986, file: !178, line: 714, baseType: !27, size: 32, offset: 1984)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2986, file: !178, line: 715, baseType: !363, size: 64, offset: 2048)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2986, file: !178, line: 716, baseType: !363, size: 64, offset: 2112)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2986, file: !178, line: 717, baseType: !363, size: 64, offset: 2176)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2986, file: !178, line: 718, baseType: !363, size: 64, offset: 2240)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2986, file: !178, line: 720, baseType: !3065, size: 64, offset: 2304)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !178, line: 632, size: 64, elements: !3067)
!3067 = !{!3068, !3069}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3066, file: !178, line: 633, baseType: !64, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3066, file: !178, line: 634, baseType: !13, size: 32, offset: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2986, file: !178, line: 721, baseType: !3071, size: 64, offset: 2368)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !2842, !837}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2986, file: !178, line: 722, baseType: !3075, size: 64, offset: 2432)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !178, line: 722, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2843, file: !171, line: 727, baseType: !3078, size: 64, offset: 4224)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !178, line: 742, size: 1792, elements: !3080)
!3080 = !{!3081, !3082, !3083, !3087, !3088, !3089}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3079, file: !178, line: 743, baseType: !2876, size: 1472)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3079, file: !178, line: 744, baseType: !2879, size: 64, offset: 1472)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3079, file: !178, line: 745, baseType: !3084, size: 64, offset: 1536)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{null, !2842, !825}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3079, file: !178, line: 746, baseType: !2879, size: 64, offset: 1600)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3079, file: !178, line: 747, baseType: !2870, size: 64, offset: 1664)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3079, file: !178, line: 748, baseType: !2870, size: 64, offset: 1728)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2843, file: !171, line: 736, baseType: !3091, size: 128, offset: 4288)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !171, line: 529, size: 128, elements: !3092)
!3092 = !{!3093, !3097}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3091, file: !171, line: 531, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3096, line: 13, flags: DIFlagFwdDecl)
!3096 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3091, file: !171, line: 532, baseType: !3098, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !171, line: 49, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2843, file: !171, line: 738, baseType: !3101, size: 64, offset: 4416)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3103)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !171, line: 738, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2843, file: !171, line: 740, baseType: !3105, size: 64, offset: 4480)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2843, file: !171, line: 741, baseType: !363, size: 64, offset: 4544)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2843, file: !171, line: 746, baseType: !363, size: 64, offset: 4608)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2843, file: !171, line: 747, baseType: !3109, size: 64, offset: 4672)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3111)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !171, line: 747, flags: DIFlagFwdDecl)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2843, file: !171, line: 749, baseType: !3113, size: 64, offset: 4736)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !171, line: 428, size: 128, elements: !3115)
!3115 = !{!3116, !3117, !3118}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3114, file: !171, line: 433, baseType: !13, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3114, file: !171, line: 434, baseType: !13, size: 32, offset: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3114, file: !171, line: 435, baseType: !44, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2843, file: !171, line: 751, baseType: !102, size: 128, offset: 4800)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2843, file: !171, line: 762, baseType: !3121, size: 64, offset: 4928)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !171, line: 762, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2843, file: !171, line: 770, baseType: !3124, offset: 4992)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3125, line: 5, elements: !633)
!3125 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2843, file: !171, line: 772, baseType: !3127, size: 64, offset: 4992)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3129, line: 18, flags: DIFlagFwdDecl)
!3129 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2843, file: !171, line: 773, baseType: !3131, size: 64, offset: 5056)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2908, line: 22, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2843, file: !171, line: 776, baseType: !27, size: 32, offset: 5120)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2843, file: !171, line: 778, baseType: !1269, size: 32, offset: 5152)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2843, file: !171, line: 779, baseType: !306, size: 32, offset: 5184)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2843, file: !171, line: 781, baseType: !64, size: 32, offset: 5216)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2843, file: !171, line: 782, baseType: !102, size: 128, offset: 5248)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2843, file: !171, line: 784, baseType: !3139, size: 64, offset: 5376)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3141)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3142, line: 52, size: 768, elements: !3143)
!3142 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3143 = !{!3144, !3145, !3146, !3147, !3148, !3152, !3156, !3157, !3158, !3159, !3163, !3167}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3141, file: !3142, line: 53, baseType: !22, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3141, file: !3142, line: 55, baseType: !1522, size: 64, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3141, file: !3142, line: 56, baseType: !1522, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3141, file: !3142, line: 58, baseType: !2859, size: 64, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3141, file: !3142, line: 59, baseType: !3149, size: 64, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!913, !2862, !2868}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3141, file: !3142, line: 61, baseType: !3153, size: 64, offset: 320)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !3139}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3141, file: !3142, line: 62, baseType: !2870, size: 64, offset: 384)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3141, file: !3142, line: 64, baseType: !2879, size: 64, offset: 448)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3141, file: !3142, line: 66, baseType: !2105, size: 64, offset: 512)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3141, file: !3142, line: 67, baseType: !3160, size: 64, offset: 576)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!2122, !2862}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3141, file: !3142, line: 69, baseType: !3164, size: 64, offset: 640)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{null, !2862, !1016, !1017}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3141, file: !3142, line: 71, baseType: !2874, size: 64, offset: 704)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2843, file: !171, line: 785, baseType: !1522, size: 64, offset: 5440)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2843, file: !171, line: 787, baseType: !2870, size: 64, offset: 5504)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2843, file: !171, line: 788, baseType: !3171, size: 64, offset: 5568)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !171, line: 46, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2843, file: !171, line: 789, baseType: !3174, size: 64, offset: 5632)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !171, line: 48, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2843, file: !171, line: 791, baseType: !3177, size: 64, offset: 5696)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !171, line: 597, size: 128, elements: !3179)
!3179 = !{!3180, !3181, !3182, !3183, !3184}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3178, file: !171, line: 598, baseType: !192, size: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3178, file: !171, line: 599, baseType: !201, size: 32, offset: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3178, file: !171, line: 600, baseType: !206, size: 32, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3178, file: !171, line: 601, baseType: !825, size: 8, offset: 96)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3178, file: !171, line: 602, baseType: !825, size: 8, offset: 104)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2843, file: !171, line: 793, baseType: !211, size: 32, offset: 5760)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2843, file: !171, line: 795, baseType: !825, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2843, file: !171, line: 796, baseType: !825, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2843, file: !171, line: 797, baseType: !825, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2843, file: !171, line: 798, baseType: !825, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2843, file: !171, line: 799, baseType: !825, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2837, file: !218, line: 307, baseType: !2842, size: 64, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2837, file: !218, line: 308, baseType: !1522, size: 64, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2837, file: !218, line: 309, baseType: !1522, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2837, file: !218, line: 310, baseType: !22, size: 64, offset: 448)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2837, file: !218, line: 311, baseType: !27, size: 32, offset: 512)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2837, file: !218, line: 316, baseType: !27, size: 32, offset: 544)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2837, file: !218, line: 318, baseType: !2432, size: 64, offset: 576)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2837, file: !218, line: 319, baseType: !3199, size: 64, offset: 640)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !218, line: 977, size: 1856, elements: !3201)
!3201 = !{!3202, !3254, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3200, file: !218, line: 978, baseType: !3203, size: 896)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !218, line: 873, size: 896, elements: !3204)
!3204 = !{!3205, !3206, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3203, file: !218, line: 874, baseType: !2836, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3203, file: !218, line: 875, baseType: !3207, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !218, line: 912, size: 1792, elements: !3209)
!3209 = !{!3210, !3211, !3212, !3213, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3208, file: !218, line: 917, baseType: !455, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3208, file: !218, line: 923, baseType: !668, size: 256, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3208, file: !218, line: 925, baseType: !102, size: 128, offset: 320)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3208, file: !218, line: 926, baseType: !3214, size: 128, offset: 448)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !218, line: 901, size: 128, elements: !3215)
!3215 = !{!3216, !3217}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3214, file: !218, line: 902, baseType: !498, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3214, file: !218, line: 903, baseType: !363, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3208, file: !218, line: 927, baseType: !3214, size: 128, offset: 576)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3208, file: !218, line: 928, baseType: !102, size: 128, offset: 704)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3208, file: !218, line: 930, baseType: !27, size: 32, offset: 832)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3208, file: !218, line: 931, baseType: !27, size: 32, offset: 864)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3208, file: !218, line: 932, baseType: !27, size: 32, offset: 896)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3208, file: !218, line: 934, baseType: !27, size: 32, offset: 928)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3208, file: !218, line: 935, baseType: !27, size: 32, offset: 960)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3208, file: !218, line: 936, baseType: !27, size: 32, offset: 992)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3208, file: !218, line: 937, baseType: !27, size: 32, offset: 1024)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3208, file: !218, line: 939, baseType: !312, size: 32, offset: 1056)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3208, file: !218, line: 940, baseType: !295, size: 64, offset: 1088)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3208, file: !218, line: 945, baseType: !363, size: 64, offset: 1152)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3208, file: !218, line: 946, baseType: !363, size: 64, offset: 1216)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3208, file: !218, line: 947, baseType: !363, size: 64, offset: 1280)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3208, file: !218, line: 953, baseType: !3207, size: 64, offset: 1344)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3208, file: !218, line: 954, baseType: !363, size: 64, offset: 1408)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3208, file: !218, line: 955, baseType: !363, size: 64, offset: 1472)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3208, file: !218, line: 956, baseType: !27, size: 32, offset: 1536)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3208, file: !218, line: 958, baseType: !27, size: 32, offset: 1568)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3208, file: !218, line: 960, baseType: !648, size: 128, align: 64, offset: 1600)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3208, file: !218, line: 968, baseType: !3239, size: 64, offset: 1728)
!3239 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3240, line: 12, baseType: !3241)
!3240 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3240, line: 10, size: 64, elements: !3242)
!3242 = !{!3243}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3241, file: !3240, line: 11, baseType: !661, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3203, file: !218, line: 877, baseType: !102, size: 128, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3203, file: !218, line: 879, baseType: !102, size: 128, offset: 256)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3203, file: !218, line: 880, baseType: !102, size: 128, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3203, file: !218, line: 883, baseType: !13, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3203, file: !218, line: 885, baseType: !13, size: 32, offset: 544)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3203, file: !218, line: 886, baseType: !13, size: 32, offset: 576)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3203, file: !218, line: 888, baseType: !54, size: 32, offset: 608)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3203, file: !218, line: 889, baseType: !648, size: 128, align: 64, offset: 640)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3203, file: !218, line: 891, baseType: !25, size: 64, offset: 768)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3203, file: !218, line: 898, baseType: !27, size: 32, offset: 832)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3200, file: !218, line: 979, baseType: !3255, size: 64, offset: 896)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3200, file: !218, line: 981, baseType: !102, size: 128, offset: 960)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3200, file: !218, line: 982, baseType: !27, size: 32, offset: 1088)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3200, file: !218, line: 984, baseType: !27, size: 32, offset: 1120)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3200, file: !218, line: 985, baseType: !27, size: 32, offset: 1152)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3200, file: !218, line: 987, baseType: !455, size: 32, offset: 1184)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3200, file: !218, line: 988, baseType: !430, size: 512, offset: 1216)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3200, file: !218, line: 989, baseType: !438, size: 64, offset: 1728)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3200, file: !218, line: 990, baseType: !13, size: 32, offset: 1792)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2837, file: !218, line: 320, baseType: !54, size: 32, offset: 704)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2837, file: !218, line: 321, baseType: !27, size: 32, offset: 736)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2837, file: !218, line: 322, baseType: !27, size: 32, offset: 768)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2837, file: !218, line: 325, baseType: !13, size: 32, offset: 800)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2837, file: !218, line: 331, baseType: !3269, size: 64, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{null, !2836}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2837, file: !218, line: 332, baseType: !3269, size: 64, offset: 896)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2837, file: !218, line: 350, baseType: !3274, size: 64, offset: 960)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!27, !2819}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2837, file: !218, line: 356, baseType: !3278, size: 64, offset: 1024)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !2819, !612}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2837, file: !218, line: 357, baseType: !3278, size: 64, offset: 1088)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2837, file: !218, line: 385, baseType: !3283, size: 64, offset: 1152)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!27, !2819, !27}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2837, file: !218, line: 386, baseType: !3287, size: 64, offset: 1216)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{null, !2819, !27}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2837, file: !218, line: 406, baseType: !3287, size: 64, offset: 1280)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2837, file: !218, line: 407, baseType: !3287, size: 64, offset: 1344)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2837, file: !218, line: 415, baseType: !3293, size: 64, offset: 1408)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{null, !2819}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2837, file: !218, line: 427, baseType: !3297, size: 64, offset: 1472)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !2836, !13}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2837, file: !218, line: 436, baseType: !3301, size: 64, offset: 1536)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!27, !2836}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2837, file: !218, line: 443, baseType: !3269, size: 64, offset: 1600)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2837, file: !218, line: 450, baseType: !3274, size: 64, offset: 1664)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2837, file: !218, line: 455, baseType: !3307, size: 64, offset: 1728)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{null, !3255, !825}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2837, file: !218, line: 461, baseType: !758, size: 64, offset: 1792)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2837, file: !218, line: 469, baseType: !3312, size: 64, offset: 1856)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{null, !3255, !3255}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2837, file: !218, line: 476, baseType: !3316, size: 64, offset: 1920)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!25, !2819, !1944, !27, !825}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2837, file: !218, line: 483, baseType: !1226, size: 64, offset: 1984)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2837, file: !218, line: 494, baseType: !3321, size: 64, offset: 2048)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!1050, !2819, !3324, !44}
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !218, line: 1014, size: 448, elements: !3326)
!3326 = !{!3327, !3328, !3331, !3332, !3333, !3334, !3339}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3325, file: !218, line: 1015, baseType: !2819, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3325, file: !218, line: 1016, baseType: !3329, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !218, line: 641, flags: DIFlagFwdDecl)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3325, file: !218, line: 1017, baseType: !44, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3325, file: !218, line: 1018, baseType: !44, size: 64, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3325, file: !218, line: 1019, baseType: !363, size: 64, offset: 256)
!3334 = !DIDerivedType(tag: DW_TAG_member, scope: !3325, file: !218, line: 1020, baseType: !3335, size: 64, offset: 320)
!3335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3325, file: !218, line: 1020, size: 64, elements: !3336)
!3336 = !{!3337, !3338}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3335, file: !218, line: 1021, baseType: !25, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3335, file: !218, line: 1022, baseType: !44, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3325, file: !218, line: 1024, baseType: !27, size: 32, offset: 384)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2837, file: !218, line: 506, baseType: !3341, size: 64, offset: 2112)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!27, !105}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2837, file: !218, line: 520, baseType: !3293, size: 64, offset: 2176)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2837, file: !218, line: 530, baseType: !3274, size: 64, offset: 2240)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2837, file: !218, line: 537, baseType: !3347, size: 64, offset: 2304)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!825, !2836, !27}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2837, file: !218, line: 542, baseType: !3351, size: 64, offset: 2368)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!27, !2819, !363}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2820, file: !218, line: 715, baseType: !25, size: 64, offset: 1280)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2820, file: !218, line: 717, baseType: !217, size: 32, offset: 1344)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2820, file: !218, line: 718, baseType: !13, size: 32, offset: 1376)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2820, file: !218, line: 719, baseType: !3358, size: 64, offset: 1408)
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3359, line: 26, baseType: !3360)
!3359 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3359, line: 24, size: 64, elements: !3361)
!3361 = !{!3362}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3360, file: !3359, line: 25, baseType: !3239, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2820, file: !218, line: 720, baseType: !663, size: 64, offset: 1472)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2820, file: !218, line: 728, baseType: !363, size: 64, offset: 1536)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2820, file: !218, line: 729, baseType: !363, size: 64, offset: 1600)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2820, file: !218, line: 730, baseType: !363, size: 64, offset: 1664)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2820, file: !218, line: 732, baseType: !3368, size: 1088, offset: 1728)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3369, line: 385, size: 1088, elements: !3370)
!3369 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3370 = !{!3371, !3372, !3373, !3374, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3424, !3425, !3432, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3368, file: !3369, line: 390, baseType: !307, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3368, file: !3369, line: 395, baseType: !307, size: 32, offset: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3368, file: !3369, line: 400, baseType: !364, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, scope: !3368, file: !3369, line: 402, baseType: !3375, size: 64, offset: 128)
!3375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3368, file: !3369, line: 402, size: 64, elements: !3376)
!3376 = !{!3377, !3378}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3375, file: !3369, line: 403, baseType: !364, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3375, file: !3369, line: 404, baseType: !364, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3368, file: !3369, line: 407, baseType: !364, size: 64, offset: 192)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3368, file: !3369, line: 408, baseType: !364, size: 64, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3368, file: !3369, line: 410, baseType: !364, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3368, file: !3369, line: 411, baseType: !364, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3368, file: !3369, line: 412, baseType: !364, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3368, file: !3369, line: 413, baseType: !364, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3368, file: !3369, line: 414, baseType: !364, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3368, file: !3369, line: 415, baseType: !364, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3368, file: !3369, line: 416, baseType: !364, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3368, file: !3369, line: 417, baseType: !364, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3368, file: !3369, line: 418, baseType: !364, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3368, file: !3369, line: 419, baseType: !364, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3368, file: !3369, line: 420, baseType: !364, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3368, file: !3369, line: 421, baseType: !364, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3368, file: !3369, line: 422, baseType: !364, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3368, file: !3369, line: 423, baseType: !364, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3368, file: !3369, line: 424, baseType: !364, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3368, file: !3369, line: 435, baseType: !364, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3368, file: !3369, line: 436, baseType: !364, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3368, file: !3369, line: 437, baseType: !364, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3368, file: !3369, line: 439, baseType: !364, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3368, file: !3369, line: 440, baseType: !364, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3368, file: !3369, line: 442, baseType: !364, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3368, file: !3369, line: 443, baseType: !364, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3368, file: !3369, line: 444, baseType: !364, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3368, file: !3369, line: 445, baseType: !364, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3368, file: !3369, line: 446, baseType: !364, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3368, file: !3369, line: 447, baseType: !364, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3368, file: !3369, line: 448, baseType: !364, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3368, file: !3369, line: 449, baseType: !364, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3368, file: !3369, line: 450, baseType: !364, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3368, file: !3369, line: 451, baseType: !364, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3368, file: !3369, line: 452, baseType: !364, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3368, file: !3369, line: 453, baseType: !364, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3368, file: !3369, line: 454, baseType: !364, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3368, file: !3369, line: 455, baseType: !364, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3368, file: !3369, line: 456, baseType: !364, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3368, file: !3369, line: 457, baseType: !364, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3368, file: !3369, line: 458, baseType: !364, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3368, file: !3369, line: 459, baseType: !364, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3419 = !DIDerivedType(tag: DW_TAG_member, scope: !3368, file: !3369, line: 461, baseType: !3420, size: 32, offset: 384)
!3420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3368, file: !3369, line: 461, size: 32, elements: !3421)
!3421 = !{!3422, !3423}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3420, file: !3369, line: 462, baseType: !307, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3420, file: !3369, line: 463, baseType: !307, size: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3368, file: !3369, line: 466, baseType: !307, size: 32, offset: 416)
!3425 = !DIDerivedType(tag: DW_TAG_member, scope: !3368, file: !3369, line: 467, baseType: !3426, size: 64, offset: 448)
!3426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3368, file: !3369, line: 467, size: 64, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3426, file: !3369, line: 468, baseType: !364, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3426, file: !3369, line: 469, baseType: !364, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3426, file: !3369, line: 470, baseType: !364, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3426, file: !3369, line: 471, baseType: !364, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, scope: !3368, file: !3369, line: 473, baseType: !3433, size: 64, offset: 512)
!3433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3368, file: !3369, line: 473, size: 64, elements: !3434)
!3434 = !{!3435, !3436, !3437, !3438}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3433, file: !3369, line: 474, baseType: !364, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3433, file: !3369, line: 475, baseType: !364, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3433, file: !3369, line: 476, baseType: !364, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3433, file: !3369, line: 477, baseType: !364, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3368, file: !3369, line: 479, baseType: !364, size: 64, offset: 576)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3368, file: !3369, line: 485, baseType: !364, size: 64, offset: 640)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3368, file: !3369, line: 490, baseType: !307, size: 32, offset: 704)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3368, file: !3369, line: 492, baseType: !838, size: 32, offset: 736)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3368, file: !3369, line: 501, baseType: !364, size: 64, offset: 768)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3368, file: !3369, line: 506, baseType: !307, size: 32, offset: 832)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3368, file: !3369, line: 507, baseType: !99, size: 16, offset: 864)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3368, file: !3369, line: 508, baseType: !99, size: 16, offset: 880)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3368, file: !3369, line: 509, baseType: !307, size: 32, offset: 896)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3368, file: !3369, line: 510, baseType: !307, size: 32, offset: 928)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3368, file: !3369, line: 518, baseType: !364, size: 64, offset: 960)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3368, file: !3369, line: 520, baseType: !364, size: 64, offset: 1024)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2820, file: !218, line: 733, baseType: !98, size: 16, offset: 2816)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2820, file: !218, line: 734, baseType: !98, size: 16, offset: 2832)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2820, file: !218, line: 735, baseType: !98, size: 16, offset: 2848)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2820, file: !218, line: 736, baseType: !3455, size: 1536, offset: 2880)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !218, line: 155, size: 1536, elements: !3456)
!3456 = !{!3457, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3541, !3542, !3543, !3544}
!3457 = !DIDerivedType(tag: DW_TAG_member, scope: !3455, file: !218, line: 157, baseType: !3458, size: 768)
!3458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3455, file: !218, line: 157, size: 768, elements: !3459)
!3459 = !{!3460, !3479, !3483, !3487, !3492, !3514}
!3460 = !DIDerivedType(tag: DW_TAG_member, scope: !3458, file: !218, line: 158, baseType: !3461, size: 768)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3458, file: !218, line: 158, size: 768, elements: !3462)
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3478}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3461, file: !218, line: 159, baseType: !363, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3461, file: !218, line: 160, baseType: !363, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3461, file: !218, line: 161, baseType: !44, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3461, file: !218, line: 162, baseType: !44, size: 64, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3461, file: !218, line: 163, baseType: !27, size: 32, offset: 256)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3461, file: !218, line: 164, baseType: !27, size: 32, offset: 288)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3461, file: !218, line: 165, baseType: !27, size: 32, offset: 320)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3461, file: !218, line: 166, baseType: !27, size: 32, offset: 352)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3461, file: !218, line: 168, baseType: !3472, size: 192, offset: 384)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !218, line: 134, size: 192, elements: !3473)
!3473 = !{!3474, !3475, !3476, !3477}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3472, file: !218, line: 135, baseType: !363, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3472, file: !218, line: 136, baseType: !13, size: 32, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3472, file: !218, line: 137, baseType: !27, size: 32, offset: 96)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3472, file: !218, line: 138, baseType: !27, size: 32, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3461, file: !218, line: 169, baseType: !3472, size: 192, offset: 576)
!3479 = !DIDerivedType(tag: DW_TAG_member, scope: !3458, file: !218, line: 171, baseType: !3480, size: 512)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3458, file: !218, line: 171, size: 512, elements: !3481)
!3481 = !{!3482}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3480, file: !218, line: 172, baseType: !430, size: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, scope: !3458, file: !218, line: 174, baseType: !3484, size: 128)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3458, file: !218, line: 174, size: 128, elements: !3485)
!3485 = !{!3486}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3484, file: !218, line: 176, baseType: !102, size: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, scope: !3458, file: !218, line: 178, baseType: !3488, size: 128)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3458, file: !218, line: 178, size: 128, elements: !3489)
!3489 = !{!3490, !3491}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3488, file: !218, line: 179, baseType: !363, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3488, file: !218, line: 180, baseType: !363, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, scope: !3458, file: !218, line: 183, baseType: !3493, size: 320)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3458, file: !218, line: 183, size: 320, elements: !3494)
!3494 = !{!3495, !3503}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3493, file: !218, line: 189, baseType: !3496, size: 192)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3497, line: 14, size: 192, elements: !3498)
!3497 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3498 = !{!3499, !3500, !3501, !3502}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3496, file: !3497, line: 15, baseType: !44, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3496, file: !3497, line: 16, baseType: !44, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3496, file: !3497, line: 17, baseType: !88, size: 8, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3496, file: !3497, line: 18, baseType: !88, size: 8, offset: 136)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3493, file: !218, line: 190, baseType: !3504, size: 128, offset: 192)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3505, line: 21, size: 128, elements: !3506)
!3505 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3506 = !{!3507, !3512}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3504, file: !3505, line: 22, baseType: !3508, size: 64)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3505, line: 17, size: 64, elements: !3509)
!3509 = !{!3510}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3508, file: !3505, line: 18, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3504, file: !3505, line: 23, baseType: !3513, size: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, scope: !3458, file: !218, line: 193, baseType: !3515, size: 192)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3458, file: !218, line: 193, size: 192, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3515, file: !218, line: 194, baseType: !88, size: 8)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3515, file: !218, line: 195, baseType: !88, size: 8, offset: 8)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3515, file: !218, line: 196, baseType: !98, size: 16, offset: 16)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3515, file: !218, line: 197, baseType: !363, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3515, file: !218, line: 198, baseType: !363, size: 64, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3455, file: !218, line: 205, baseType: !295, size: 64, offset: 768)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3455, file: !218, line: 211, baseType: !25, size: 64, offset: 832)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3455, file: !218, line: 214, baseType: !44, size: 64, offset: 896)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3455, file: !218, line: 223, baseType: !27, size: 32, offset: 960)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3455, file: !218, line: 229, baseType: !3358, size: 64, offset: 1024)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3455, file: !218, line: 234, baseType: !363, size: 64, offset: 1088)
!3528 = !DIDerivedType(tag: DW_TAG_member, scope: !3455, file: !218, line: 236, baseType: !3529, size: 128, offset: 1152)
!3529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3455, file: !218, line: 236, size: 128, elements: !3530)
!3530 = !{!3531, !3536}
!3531 = !DIDerivedType(tag: DW_TAG_member, scope: !3529, file: !218, line: 237, baseType: !3532, size: 128)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3529, file: !218, line: 237, size: 128, elements: !3533)
!3533 = !{!3534, !3535}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3532, file: !218, line: 241, baseType: !363, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3532, file: !218, line: 249, baseType: !3358, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, scope: !3529, file: !218, line: 251, baseType: !3537, size: 128)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3529, file: !218, line: 251, size: 128, elements: !3538)
!3538 = !{!3539, !3540}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3537, file: !218, line: 252, baseType: !363, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3537, file: !218, line: 253, baseType: !363, size: 64, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3455, file: !218, line: 261, baseType: !363, size: 64, offset: 1280)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3455, file: !218, line: 262, baseType: !363, size: 64, offset: 1344)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3455, file: !218, line: 268, baseType: !363, size: 64, offset: 1408)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3455, file: !218, line: 269, baseType: !363, size: 64, offset: 1472)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2820, file: !218, line: 738, baseType: !3207, size: 64, offset: 4416)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2820, file: !218, line: 744, baseType: !3255, size: 64, offset: 4480)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2820, file: !218, line: 745, baseType: !661, size: 64, offset: 4544)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2820, file: !218, line: 751, baseType: !663, size: 64, offset: 4608)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2820, file: !218, line: 752, baseType: !663, size: 64, offset: 4672)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2820, file: !218, line: 757, baseType: !668, size: 256, offset: 4736)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2820, file: !218, line: 758, baseType: !102, size: 128, offset: 4992)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2820, file: !218, line: 759, baseType: !2819, size: 64, offset: 5120)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2820, file: !218, line: 761, baseType: !27, size: 32, offset: 5184)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2820, file: !218, line: 762, baseType: !27, size: 32, offset: 5216)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2820, file: !218, line: 764, baseType: !102, size: 128, offset: 5248)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2820, file: !218, line: 765, baseType: !295, size: 64, offset: 5376)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2820, file: !218, line: 768, baseType: !668, size: 256, offset: 5440)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2820, file: !218, line: 769, baseType: !54, size: 32, offset: 5696)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2820, file: !218, line: 771, baseType: !3329, size: 64, offset: 5760)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2820, file: !218, line: 772, baseType: !102, size: 128, offset: 5824)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2820, file: !218, line: 773, baseType: !44, size: 64, offset: 5952)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2820, file: !218, line: 774, baseType: !27, size: 32, offset: 6016)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2820, file: !218, line: 777, baseType: !59, size: 192, offset: 6080)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2820, file: !218, line: 778, baseType: !3565, size: 64, offset: 6272)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !227, line: 1083, size: 384, elements: !3567)
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3566, file: !227, line: 1084, baseType: !685, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3566, file: !227, line: 1085, baseType: !27, size: 32, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3566, file: !227, line: 1086, baseType: !27, size: 32, offset: 96)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3566, file: !227, line: 1087, baseType: !3565, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3566, file: !227, line: 1088, baseType: !640, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3566, file: !227, line: 1089, baseType: !648, size: 128, align: 64, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2820, file: !218, line: 781, baseType: !13, size: 32, offset: 6336)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2820, file: !218, line: 782, baseType: !13, size: 32, offset: 6368)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2820, file: !218, line: 783, baseType: !13, size: 32, offset: 6400)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2820, file: !218, line: 784, baseType: !13, size: 32, offset: 6432)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2820, file: !218, line: 785, baseType: !44, size: 64, offset: 6464)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2820, file: !218, line: 786, baseType: !3580, size: 256, offset: 6528)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3581, line: 17, size: 256, elements: !3582)
!3581 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3582 = !{!3583, !3584, !3589}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3580, file: !3581, line: 18, baseType: !320, size: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3580, file: !3581, line: 19, baseType: !3585, size: 64, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{null, !3588}
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3580, file: !3581, line: 20, baseType: !3590, size: 64, offset: 192)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3591, line: 16, size: 64, elements: !3592)
!3591 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3592 = !{!3593}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3590, file: !3591, line: 17, baseType: !295, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2820, file: !218, line: 787, baseType: !648, size: 128, align: 64, offset: 6784)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2820, file: !218, line: 788, baseType: !13, size: 32, offset: 6912)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2820, file: !218, line: 789, baseType: !3590, size: 64, offset: 6976)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2820, file: !218, line: 791, baseType: !54, size: 32, offset: 7040)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2820, file: !218, line: 794, baseType: !3599, size: 192, offset: 7104)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !218, line: 579, size: 192, elements: !3600)
!3600 = !{!3601, !3602, !3603}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3599, file: !218, line: 580, baseType: !102, size: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3599, file: !218, line: 581, baseType: !455, size: 32, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3599, file: !218, line: 582, baseType: !13, size: 32, offset: 160)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2820, file: !218, line: 796, baseType: !3605, size: 64, offset: 7296)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !218, line: 585, size: 128, elements: !3607)
!3607 = !{!3608, !3609}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3606, file: !218, line: 586, baseType: !44, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3606, file: !218, line: 587, baseType: !44, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2820, file: !218, line: 797, baseType: !44, size: 64, offset: 7360)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2820, file: !218, line: 800, baseType: !2819, size: 64, offset: 7424)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2820, file: !218, line: 802, baseType: !3293, size: 64, offset: 7488)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2820, file: !218, line: 803, baseType: !648, size: 128, align: 64, offset: 7552)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2820, file: !218, line: 805, baseType: !736, size: 64, offset: 7680)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2820, file: !218, line: 806, baseType: !363, size: 64, offset: 7744)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2820, file: !218, line: 808, baseType: !663, size: 64, offset: 7808)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2820, file: !218, line: 810, baseType: !3618, size: 64, offset: 7872)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!363}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2820, file: !218, line: 811, baseType: !3622, size: 64, offset: 7936)
!3622 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !218, line: 605, baseType: !3623)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{null, !2819, !3626, !3731}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !218, line: 1148, size: 2048, align: 512, elements: !3628)
!3628 = !{!3629, !3630, !3631, !3632, !3633, !3638, !3639, !3640, !3645, !3646, !3653, !3674, !3696, !3706, !3724, !3725, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3627, file: !218, line: 1153, baseType: !363, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3627, file: !218, line: 1154, baseType: !363, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3627, file: !218, line: 1155, baseType: !363, size: 64, offset: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3627, file: !218, line: 1161, baseType: !363, size: 64, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3627, file: !218, line: 1165, baseType: !3634, size: 64, offset: 256)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3627, file: !218, line: 1162, size: 64, elements: !3635)
!3635 = !{!3636, !3637}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3634, file: !218, line: 1163, baseType: !306, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3634, file: !218, line: 1164, baseType: !306, size: 32, offset: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3627, file: !218, line: 1166, baseType: !363, size: 64, offset: 320)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3627, file: !218, line: 1167, baseType: !363, size: 64, offset: 384)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3627, file: !218, line: 1171, baseType: !3641, size: 64, offset: 448)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3627, file: !218, line: 1168, size: 64, elements: !3642)
!3642 = !{!3643, !3644}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3641, file: !218, line: 1169, baseType: !306, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3641, file: !218, line: 1170, baseType: !306, size: 32, offset: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3627, file: !218, line: 1177, baseType: !363, size: 64, offset: 512)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3627, file: !218, line: 1178, baseType: !3647, size: 64, offset: 576)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !218, line: 67, size: 64, elements: !3649)
!3649 = !{!3650, !3651}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3648, file: !218, line: 68, baseType: !364, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3648, file: !218, line: 69, baseType: !3652, offset: 64)
!3652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, elements: !1057)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3627, file: !218, line: 1179, baseType: !3654, size: 64, offset: 640)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !218, line: 93, size: 256, elements: !3656)
!3656 = !{!3657, !3673}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3655, file: !218, line: 94, baseType: !3658, size: 224)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !218, line: 83, size: 224, elements: !3659)
!3659 = !{!3660, !3666, !3671, !3672}
!3660 = !DIDerivedType(tag: DW_TAG_member, scope: !3658, file: !218, line: 84, baseType: !3661, size: 64)
!3661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3658, file: !218, line: 84, size: 64, elements: !3662)
!3662 = !{!3663, !3665}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3661, file: !218, line: 85, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3661, file: !218, line: 86, baseType: !44, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3658, file: !218, line: 88, baseType: !3667, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !218, line: 80, baseType: !3668)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!44, !25, !2122, !44, !44}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3658, file: !218, line: 89, baseType: !25, size: 64, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3658, file: !218, line: 90, baseType: !306, size: 32, offset: 192)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3655, file: !218, line: 95, baseType: !306, size: 32, offset: 224)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3627, file: !218, line: 1180, baseType: !3675, size: 64, offset: 704)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !218, line: 123, size: 128, elements: !3677)
!3677 = !{!3678, !3679, !3680}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3676, file: !218, line: 124, baseType: !364, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3676, file: !218, line: 125, baseType: !364, size: 64, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3676, file: !218, line: 126, baseType: !3681, offset: 128)
!3681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3682, elements: !1057)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3369, line: 1415, size: 192, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3682, file: !3369, line: 1416, baseType: !364, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3682, file: !3369, line: 1417, baseType: !364, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3682, file: !3369, line: 1418, baseType: !364, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3682, file: !3369, line: 1419, baseType: !364, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3682, file: !3369, line: 1420, baseType: !364, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3682, file: !3369, line: 1421, baseType: !364, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3682, file: !3369, line: 1422, baseType: !364, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3682, file: !3369, line: 1423, baseType: !364, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3682, file: !3369, line: 1424, baseType: !364, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3682, file: !3369, line: 1425, baseType: !364, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3682, file: !3369, line: 1426, baseType: !364, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3682, file: !3369, line: 1427, baseType: !364, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3627, file: !218, line: 1181, baseType: !3697, size: 64, offset: 768)
!3697 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3369, line: 1430, size: 64, elements: !3698)
!3698 = !{!3699, !3700}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3697, file: !3369, line: 1431, baseType: !364, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, scope: !3697, file: !3369, line: 1433, baseType: !3701, size: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3697, file: !3369, line: 1433, size: 64, elements: !3702)
!3702 = !{!3703, !3704, !3705}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3701, file: !3369, line: 1434, baseType: !307, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3701, file: !3369, line: 1435, baseType: !99, size: 16, offset: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3701, file: !3369, line: 1436, baseType: !99, size: 16, offset: 48)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3627, file: !218, line: 1182, baseType: !3707, size: 64, offset: 832)
!3707 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3369, line: 1267, size: 64, elements: !3708)
!3708 = !{!3709, !3710}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3707, file: !3369, line: 1268, baseType: !364, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, scope: !3707, file: !3369, line: 1269, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3707, file: !3369, line: 1269, size: 64, elements: !3712)
!3712 = !{!3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3711, file: !3369, line: 1270, baseType: !364, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3711, file: !3369, line: 1271, baseType: !364, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3711, file: !3369, line: 1272, baseType: !364, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3711, file: !3369, line: 1273, baseType: !364, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3711, file: !3369, line: 1274, baseType: !364, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3711, file: !3369, line: 1275, baseType: !364, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3711, file: !3369, line: 1276, baseType: !364, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3711, file: !3369, line: 1277, baseType: !364, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3711, file: !3369, line: 1278, baseType: !364, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3711, file: !3369, line: 1279, baseType: !364, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3711, file: !3369, line: 1280, baseType: !364, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3627, file: !218, line: 1183, baseType: !363, size: 64, offset: 896)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3627, file: !218, line: 1185, baseType: !3726, size: 128, offset: 960)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3727, line: 7, size: 128, elements: !3728)
!3727 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3728 = !{!3729, !3730}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3726, file: !3727, line: 8, baseType: !364, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3726, file: !3727, line: 9, baseType: !3731, size: 64, offset: 64)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3733, line: 103, size: 1344, elements: !3734)
!3733 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3734 = !{!3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3763, !3764, !3765}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3732, file: !3733, line: 109, baseType: !44, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3732, file: !3733, line: 110, baseType: !44, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3732, file: !3733, line: 111, baseType: !44, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3732, file: !3733, line: 112, baseType: !44, size: 64, offset: 192)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3732, file: !3733, line: 113, baseType: !44, size: 64, offset: 256)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3732, file: !3733, line: 114, baseType: !44, size: 64, offset: 320)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3732, file: !3733, line: 117, baseType: !44, size: 64, offset: 384)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3732, file: !3733, line: 118, baseType: !44, size: 64, offset: 448)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3732, file: !3733, line: 119, baseType: !44, size: 64, offset: 512)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3732, file: !3733, line: 120, baseType: !44, size: 64, offset: 576)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3732, file: !3733, line: 121, baseType: !44, size: 64, offset: 640)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3732, file: !3733, line: 122, baseType: !44, size: 64, offset: 704)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3732, file: !3733, line: 123, baseType: !44, size: 64, offset: 768)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3732, file: !3733, line: 124, baseType: !44, size: 64, offset: 832)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3732, file: !3733, line: 125, baseType: !44, size: 64, offset: 896)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3732, file: !3733, line: 139, baseType: !44, size: 64, offset: 960)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3732, file: !3733, line: 142, baseType: !44, size: 64, offset: 1024)
!3752 = !DIDerivedType(tag: DW_TAG_member, scope: !3732, file: !3733, line: 144, baseType: !3753, size: 64, offset: 1088)
!3753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3732, file: !3733, line: 144, size: 64, elements: !3754)
!3754 = !{!3755, !3756, !3757}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3753, file: !3733, line: 146, baseType: !98, size: 16)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3753, file: !3733, line: 148, baseType: !363, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3753, file: !3733, line: 150, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3733, line: 59, size: 64, elements: !3759)
!3759 = !{!3760, !3761, !3762}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3758, file: !3733, line: 61, baseType: !363, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3758, file: !3733, line: 63, baseType: !363, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3758, file: !3733, line: 65, baseType: !363, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3732, file: !3733, line: 153, baseType: !44, size: 64, offset: 1152)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3732, file: !3733, line: 154, baseType: !44, size: 64, offset: 1216)
!3765 = !DIDerivedType(tag: DW_TAG_member, scope: !3732, file: !3733, line: 156, baseType: !3766, size: 64, offset: 1280)
!3766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3732, file: !3733, line: 156, size: 64, elements: !3767)
!3767 = !{!3768, !3769, !3770}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3766, file: !3733, line: 158, baseType: !98, size: 16)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3766, file: !3733, line: 160, baseType: !363, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3766, file: !3733, line: 162, baseType: !3771, size: 64)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3733, line: 69, size: 64, elements: !3772)
!3772 = !{!3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3771, file: !3733, line: 71, baseType: !363, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3771, file: !3733, line: 73, baseType: !363, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3771, file: !3733, line: 75, baseType: !363, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3771, file: !3733, line: 77, baseType: !363, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3771, file: !3733, line: 80, baseType: !363, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3771, file: !3733, line: 83, baseType: !363, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3771, file: !3733, line: 86, baseType: !363, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3771, file: !3733, line: 88, baseType: !363, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3771, file: !3733, line: 93, baseType: !363, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3771, file: !3733, line: 100, baseType: !363, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3627, file: !218, line: 1186, baseType: !3726, size: 128, offset: 1088)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3627, file: !218, line: 1187, baseType: !363, size: 64, offset: 1216)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3627, file: !218, line: 1189, baseType: !363, size: 64, offset: 1280)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3627, file: !218, line: 1190, baseType: !363, size: 64, offset: 1344)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3627, file: !218, line: 1191, baseType: !363, size: 64, offset: 1408)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3627, file: !218, line: 1192, baseType: !363, size: 64, offset: 1472)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3627, file: !218, line: 1193, baseType: !363, size: 64, offset: 1536)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3627, file: !218, line: 1194, baseType: !363, size: 64, offset: 1600)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3627, file: !218, line: 1195, baseType: !363, size: 64, offset: 1664)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2820, file: !218, line: 812, baseType: !25, size: 64, offset: 8000)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2820, file: !218, line: 820, baseType: !2613, size: 64, offset: 8064)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2820, file: !218, line: 821, baseType: !2800, size: 64, offset: 8128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2820, file: !218, line: 828, baseType: !3796, size: 64, offset: 8192)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !218, line: 1046, size: 1664, elements: !3798)
!3798 = !{!3799, !4057}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3797, file: !218, line: 1047, baseType: !3800, size: 1600)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3801, line: 152, size: 1600, elements: !3802)
!3801 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3802 = !{!3803, !3913, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4056}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3800, file: !3801, line: 154, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3801, line: 389, size: 7872, elements: !3806)
!3806 = !{!3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3826, !3827, !3831, !3832, !3833, !3834, !3835, !3840, !3856, !3857, !3859, !3860, !3861, !3883, !3884, !3885, !3886, !3892, !3893, !3894, !3895, !3896, !3900, !3903, !3904, !3911}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3805, file: !3801, line: 391, baseType: !3800, size: 1600)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3805, file: !3801, line: 393, baseType: !44, size: 64, offset: 1600)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3805, file: !3801, line: 401, baseType: !27, size: 32, offset: 1664)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3805, file: !3801, line: 404, baseType: !27, size: 32, offset: 1696)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3805, file: !3801, line: 417, baseType: !27, size: 32, offset: 1728)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3805, file: !3801, line: 418, baseType: !27, size: 32, offset: 1760)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3805, file: !3801, line: 419, baseType: !27, size: 32, offset: 1792)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3805, file: !3801, line: 432, baseType: !27, size: 32, offset: 1824)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3805, file: !3801, line: 433, baseType: !27, size: 32, offset: 1856)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3805, file: !3801, line: 434, baseType: !27, size: 32, offset: 1888)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3805, file: !3801, line: 436, baseType: !27, size: 32, offset: 1920)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3805, file: !3801, line: 439, baseType: !13, size: 32, offset: 1952)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3805, file: !3801, line: 441, baseType: !2140, size: 64, offset: 1984)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3805, file: !3801, line: 442, baseType: !3821, size: 448, offset: 2048)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3801, line: 138, size: 448, elements: !3822)
!3822 = !{!3823, !3824, !3825}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3821, file: !3801, line: 140, baseType: !2140, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3821, file: !3801, line: 141, baseType: !44, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3821, file: !3801, line: 142, baseType: !2533, size: 320, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3805, file: !3801, line: 443, baseType: !3821, size: 448, offset: 2496)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3805, file: !3801, line: 446, baseType: !3828, offset: 2944)
!3828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3821, elements: !3829)
!3829 = !{!3830}
!3830 = !DISubrange(count: 0)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3805, file: !3801, line: 455, baseType: !98, size: 16, offset: 2944)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3805, file: !3801, line: 456, baseType: !98, size: 16, offset: 2960)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3805, file: !3801, line: 457, baseType: !98, size: 16, offset: 2976)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3805, file: !3801, line: 458, baseType: !98, size: 16, offset: 2992)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3805, file: !3801, line: 461, baseType: !3836, size: 896, offset: 3008)
!3836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3837, size: 896, elements: !3838)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3838 = !{!3839}
!3839 = !DISubrange(count: 14)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3805, file: !3801, line: 463, baseType: !3841, size: 64, offset: 3904)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3801, line: 537, size: 41664, elements: !3843)
!3843 = !{!3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3842, file: !3801, line: 538, baseType: !2160, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3842, file: !3801, line: 541, baseType: !13, size: 32, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3842, file: !3801, line: 544, baseType: !27, size: 32, offset: 96)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3842, file: !3801, line: 547, baseType: !102, size: 128, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3842, file: !3801, line: 548, baseType: !648, size: 128, align: 64, offset: 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3842, file: !3801, line: 555, baseType: !3805, size: 7872, offset: 384)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3842, file: !3801, line: 558, baseType: !3804, size: 64, offset: 8256)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3842, file: !3801, line: 561, baseType: !54, size: 32, offset: 8320)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3842, file: !3801, line: 564, baseType: !13, size: 32, offset: 8352)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3842, file: !3801, line: 567, baseType: !2762, size: 32768, offset: 8384)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3842, file: !3801, line: 570, baseType: !3855, size: 512, offset: 41152)
!3855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1485)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3805, file: !3801, line: 469, baseType: !102, size: 128, offset: 3968)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3805, file: !3801, line: 478, baseType: !3858, size: 1792, offset: 4096)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 1792, elements: !3838)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3805, file: !3801, line: 487, baseType: !3804, size: 64, offset: 5888)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3805, file: !3801, line: 488, baseType: !3804, size: 64, offset: 5952)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3805, file: !3801, line: 491, baseType: !3862, size: 64, offset: 6016)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3801, line: 327, size: 896, elements: !3864)
!3864 = !{!3865, !3868, !3878, !3879, !3880, !3881, !3882}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3863, file: !3801, line: 332, baseType: !3866)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3867, line: 64, elements: !633)
!3867 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3863, file: !3801, line: 333, baseType: !3869, size: 192)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3801, line: 299, size: 192, elements: !3870)
!3870 = !{!3871}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3869, file: !3801, line: 300, baseType: !3872, size: 192)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3873, line: 17, size: 192, elements: !3874)
!3873 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3874 = !{!3875, !3876, !3877}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3872, file: !3873, line: 18, baseType: !363, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3872, file: !3873, line: 19, baseType: !363, size: 64, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3872, file: !3873, line: 20, baseType: !365, size: 64, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3863, file: !3801, line: 339, baseType: !3869, size: 192, offset: 192)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3863, file: !3801, line: 347, baseType: !3869, size: 192, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3863, file: !3801, line: 353, baseType: !3869, size: 192, offset: 576)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3863, file: !3801, line: 366, baseType: !3804, size: 64, offset: 768)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3863, file: !3801, line: 367, baseType: !3804, size: 64, offset: 832)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3805, file: !3801, line: 492, baseType: !102, size: 128, offset: 6080)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3805, file: !3801, line: 495, baseType: !3869, size: 192, offset: 6208)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3805, file: !3801, line: 496, baseType: !3869, size: 192, offset: 6400)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3805, file: !3801, line: 497, baseType: !3887, size: 192, offset: 6592)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !297, line: 324, size: 192, elements: !3888)
!3888 = !{!3889, !3890, !3891}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3887, file: !297, line: 326, baseType: !363, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3887, file: !297, line: 327, baseType: !363, size: 64, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3887, file: !297, line: 328, baseType: !455, size: 32, offset: 128)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3805, file: !3801, line: 503, baseType: !102, size: 128, offset: 6784)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3805, file: !3801, line: 504, baseType: !668, size: 256, offset: 6912)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3805, file: !3801, line: 507, baseType: !59, size: 192, offset: 7168)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3805, file: !3801, line: 510, baseType: !952, size: 256, offset: 7360)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3805, file: !3801, line: 513, baseType: !3897, size: 64, offset: 7616)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3899, line: 214, elements: !633)
!3899 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3805, file: !3801, line: 516, baseType: !3901, offset: 7680)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3902, line: 76, elements: !633)
!3902 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3805, file: !3801, line: 519, baseType: !54, size: 32, offset: 7680)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3805, file: !3801, line: 522, baseType: !3905, size: 128, offset: 7712)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3801, line: 370, size: 128, elements: !3906)
!3906 = !{!3907, !3908, !3909, !3910}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3905, file: !3801, line: 372, baseType: !825, size: 8)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3905, file: !3801, line: 375, baseType: !27, size: 32, offset: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3905, file: !3801, line: 380, baseType: !27, size: 32, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3905, file: !3801, line: 386, baseType: !27, size: 32, offset: 96)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3805, file: !3801, line: 529, baseType: !3912, offset: 7872)
!3912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3804, elements: !1057)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3800, file: !3801, line: 157, baseType: !3914, size: 64, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3801, line: 669, size: 1984, elements: !3916)
!3916 = !{!3917, !3921, !3925, !3929, !3930, !3931, !3932, !3936, !3940, !3941, !3947, !3951, !3952, !3953, !3982, !3986, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4039, !4040}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3915, file: !3801, line: 670, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!3837, !3837}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3915, file: !3801, line: 671, baseType: !3922, size: 64, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!27, !3837}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3915, file: !3801, line: 672, baseType: !3926, size: 64, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !3837}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3915, file: !3801, line: 673, baseType: !3926, size: 64, offset: 192)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3915, file: !3801, line: 674, baseType: !3926, size: 64, offset: 256)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3915, file: !3801, line: 675, baseType: !3926, size: 64, offset: 320)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3915, file: !3801, line: 676, baseType: !3933, size: 64, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{null, !3837, !27}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3915, file: !3801, line: 677, baseType: !3937, size: 64, offset: 448)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!27, !2185, !3837}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3915, file: !3801, line: 679, baseType: !3937, size: 64, offset: 512)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3915, file: !3801, line: 682, baseType: !3942, size: 64, offset: 576)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!27, !3945}
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3801, line: 30, flags: DIFlagFwdDecl)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3915, file: !3801, line: 683, baseType: !3948, size: 64, offset: 640)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !3945}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3915, file: !3801, line: 684, baseType: !3948, size: 64, offset: 704)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3915, file: !3801, line: 685, baseType: !2707, size: 64, offset: 768)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3915, file: !3801, line: 686, baseType: !3954, size: 64, offset: 832)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!27, !295, !3957}
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3801, line: 209, size: 4736, elements: !3959)
!3959 = !{!3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3958, file: !3801, line: 215, baseType: !3836, size: 896)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3958, file: !3801, line: 218, baseType: !312, size: 32, offset: 896)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3958, file: !3801, line: 226, baseType: !3957, size: 64, offset: 960)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3958, file: !3801, line: 229, baseType: !3804, size: 64, offset: 1024)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3958, file: !3801, line: 232, baseType: !27, size: 32, offset: 1088)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3958, file: !3801, line: 241, baseType: !102, size: 128, offset: 1152)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3958, file: !3801, line: 242, baseType: !102, size: 128, offset: 1280)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3958, file: !3801, line: 243, baseType: !102, size: 128, offset: 1408)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3958, file: !3801, line: 246, baseType: !102, size: 128, offset: 1536)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3958, file: !3801, line: 255, baseType: !3858, size: 1792, offset: 1664)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3958, file: !3801, line: 258, baseType: !102, size: 128, offset: 3456)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3958, file: !3801, line: 259, baseType: !102, size: 128, offset: 3584)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3958, file: !3801, line: 265, baseType: !720, size: 128, offset: 3712)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3958, file: !3801, line: 271, baseType: !102, size: 128, offset: 3840)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3958, file: !3801, line: 277, baseType: !102, size: 128, offset: 3968)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3958, file: !3801, line: 278, baseType: !102, size: 128, offset: 4096)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3958, file: !3801, line: 279, baseType: !102, size: 128, offset: 4224)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3958, file: !3801, line: 288, baseType: !3804, size: 64, offset: 4352)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3958, file: !3801, line: 289, baseType: !3804, size: 64, offset: 4416)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3958, file: !3801, line: 290, baseType: !3957, size: 64, offset: 4480)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3958, file: !3801, line: 293, baseType: !825, size: 8, offset: 4544)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3958, file: !3801, line: 296, baseType: !648, size: 128, align: 64, offset: 4608)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3915, file: !3801, line: 688, baseType: !3983, size: 64, offset: 896)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{null, !295, !3957}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3915, file: !3801, line: 689, baseType: !3987, size: 64, offset: 960)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{null, !295}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3915, file: !3801, line: 690, baseType: !3987, size: 64, offset: 1024)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3915, file: !3801, line: 691, baseType: !3987, size: 64, offset: 1088)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3915, file: !3801, line: 692, baseType: !3926, size: 64, offset: 1152)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3915, file: !3801, line: 694, baseType: !825, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3915, file: !3801, line: 707, baseType: !825, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3915, file: !3801, line: 719, baseType: !825, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3915, file: !3801, line: 722, baseType: !27, size: 32, offset: 1248)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3915, file: !3801, line: 723, baseType: !22, size: 64, offset: 1280)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3915, file: !3801, line: 726, baseType: !22, size: 64, offset: 1344)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3915, file: !3801, line: 729, baseType: !3841, size: 64, offset: 1408)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3915, file: !3801, line: 732, baseType: !741, size: 192, offset: 1472)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3915, file: !3801, line: 738, baseType: !102, size: 128, offset: 1664)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3915, file: !3801, line: 744, baseType: !4003, size: 64, offset: 1792)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3801, line: 580, size: 1728, elements: !4005)
!4005 = !{!4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4015, !4016, !4017, !4021, !4025, !4026, !4027, !4028, !4029, !4033, !4037, !4038}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4004, file: !3801, line: 586, baseType: !3855, size: 512)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4004, file: !3801, line: 587, baseType: !44, size: 64, offset: 512)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4004, file: !3801, line: 593, baseType: !40, size: 64, offset: 576)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4004, file: !3801, line: 596, baseType: !13, size: 32, offset: 640)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4004, file: !3801, line: 604, baseType: !13, size: 32, offset: 672)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4004, file: !3801, line: 610, baseType: !3914, size: 64, offset: 704)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4004, file: !3801, line: 611, baseType: !102, size: 128, offset: 768)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4004, file: !3801, line: 612, baseType: !4014, size: 64, offset: 896)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4004, file: !3801, line: 614, baseType: !2176, size: 64, offset: 960)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4004, file: !3801, line: 615, baseType: !2234, size: 64, offset: 1024)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4004, file: !3801, line: 621, baseType: !4018, size: 64, offset: 1088)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!363, !3837, !4003}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4004, file: !3801, line: 625, baseType: !4022, size: 64, offset: 1152)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!374, !3837, !4003}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4004, file: !3801, line: 628, baseType: !2215, size: 64, offset: 1216)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4004, file: !3801, line: 631, baseType: !2203, size: 64, offset: 1280)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4004, file: !3801, line: 632, baseType: !2211, size: 64, offset: 1344)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4004, file: !3801, line: 633, baseType: !2207, size: 64, offset: 1408)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4004, file: !3801, line: 640, baseType: !4030, size: 64, offset: 1472)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!27, !3837, !4003, !363}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4004, file: !3801, line: 645, baseType: !4034, size: 64, offset: 1536)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!27, !3837, !4003, !374}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4004, file: !3801, line: 654, baseType: !2242, size: 64, offset: 1600)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4004, file: !3801, line: 657, baseType: !2249, size: 64, offset: 1664)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3915, file: !3801, line: 745, baseType: !4003, size: 64, offset: 1856)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3915, file: !3801, line: 754, baseType: !13, size: 32, offset: 1920)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3800, file: !3801, line: 160, baseType: !1630, size: 128, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3800, file: !3801, line: 163, baseType: !102, size: 128, offset: 256)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3800, file: !3801, line: 164, baseType: !102, size: 128, offset: 384)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3800, file: !3801, line: 167, baseType: !102, size: 128, offset: 512)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3800, file: !3801, line: 173, baseType: !27, size: 32, offset: 640)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3800, file: !3801, line: 175, baseType: !13, size: 32, offset: 672)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3800, file: !3801, line: 183, baseType: !363, size: 64, offset: 704)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3800, file: !3801, line: 189, baseType: !54, size: 32, offset: 768)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3800, file: !3801, line: 192, baseType: !952, size: 256, offset: 832)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3800, file: !3801, line: 193, baseType: !4051, size: 448, offset: 1088)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !953, line: 120, size: 448, elements: !4052)
!4052 = !{!4053, !4054, !4055}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4051, file: !953, line: 121, baseType: !952, size: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4051, file: !953, line: 122, baseType: !648, size: 128, align: 64, offset: 256)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4051, file: !953, line: 125, baseType: !2595, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3800, file: !3801, line: 199, baseType: !3837, size: 64, offset: 1536)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3797, file: !218, line: 1048, baseType: !4058, size: 64, offset: 1600)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !218, line: 1039, size: 256, elements: !4060)
!4060 = !{!4061, !4062, !4063, !4064}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4059, file: !218, line: 1040, baseType: !363, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4059, file: !218, line: 1041, baseType: !363, size: 64, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4059, file: !218, line: 1042, baseType: !363, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4059, file: !218, line: 1043, baseType: !27, size: 32, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2820, file: !218, line: 832, baseType: !25, size: 64, offset: 8256)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2820, file: !218, line: 834, baseType: !102, size: 128, offset: 8320)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2820, file: !218, line: 842, baseType: !307, size: 32, offset: 8448)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1430, file: !135, line: 524, baseType: !13, size: 32, offset: 8320)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1430, file: !135, line: 525, baseType: !4070, size: 64, offset: 8384)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4073, line: 28, size: 192, elements: !4074)
!4073 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4074 = !{!4075, !4076, !4077}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4072, file: !4073, line: 29, baseType: !22, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4072, file: !4073, line: 30, baseType: !22, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4072, file: !4073, line: 31, baseType: !44, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1430, file: !135, line: 526, baseType: !13, size: 32, offset: 8448)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1430, file: !135, line: 533, baseType: !25, size: 64, offset: 8512)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1430, file: !135, line: 534, baseType: !13, size: 32, offset: 8576)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1430, file: !135, line: 535, baseType: !4082, size: 64, offset: 8640)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1430, file: !135, line: 536, baseType: !13, size: 32, offset: 8704)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1430, file: !135, line: 539, baseType: !27, size: 32, offset: 8736)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1430, file: !135, line: 540, baseType: !2696, size: 64, offset: 8768)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1430, file: !135, line: 563, baseType: !102, size: 128, offset: 8832)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1430, file: !135, line: 565, baseType: !102, size: 128, offset: 8960)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1430, file: !135, line: 568, baseType: !2707, size: 64, offset: 9088)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1430, file: !135, line: 570, baseType: !54, size: 32, offset: 9152)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1406, file: !227, line: 2382, baseType: !1405, size: 64, offset: 448)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1406, file: !227, line: 2383, baseType: !716, size: 64, offset: 512)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1406, file: !227, line: 2385, baseType: !4093, offset: 576)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2562, line: 206, elements: !633)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1406, file: !227, line: 2386, baseType: !4093, offset: 576)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1406, file: !227, line: 2387, baseType: !4093, offset: 576)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1406, file: !227, line: 2388, baseType: !4097, offset: 576)
!4097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4093, elements: !704)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1406, file: !227, line: 2390, baseType: !4093, offset: 576)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1406, file: !227, line: 2391, baseType: !4093, offset: 576)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1406, file: !227, line: 2392, baseType: !4093, offset: 576)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1406, file: !227, line: 2393, baseType: !4093, offset: 576)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1397, file: !227, line: 1197, baseType: !4103, size: 64, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4105)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !227, line: 2057, size: 1664, elements: !4106)
!4106 = !{!4107, !4111, !4115, !4116, !4120, !4124, !4128, !4129, !4130, !4134, !4138, !4142, !4143, !4144, !4150, !4154, !4155, !4159, !4160, !4161, !4162, !4166, !4170, !4217, !4232, !4233}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4105, file: !227, line: 2058, baseType: !4108, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!1195, !1396}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4105, file: !227, line: 2059, baseType: !4112, size: 64, offset: 64)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !1195}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4105, file: !227, line: 2060, baseType: !4112, size: 64, offset: 128)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4105, file: !227, line: 2062, baseType: !4117, size: 64, offset: 192)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{null, !1195, !27}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4105, file: !227, line: 2063, baseType: !4121, size: 64, offset: 256)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!27, !1195, !1853}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4105, file: !227, line: 2064, baseType: !4125, size: 64, offset: 320)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!27, !1195}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4105, file: !227, line: 2065, baseType: !4112, size: 64, offset: 384)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4105, file: !227, line: 2066, baseType: !1425, size: 64, offset: 448)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4105, file: !227, line: 2067, baseType: !4131, size: 64, offset: 512)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!27, !1396, !27}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4105, file: !227, line: 2068, baseType: !4135, size: 64, offset: 576)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!27, !1396, !226}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4105, file: !227, line: 2069, baseType: !4139, size: 64, offset: 640)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!27, !1396}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4105, file: !227, line: 2070, baseType: !4135, size: 64, offset: 704)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4105, file: !227, line: 2071, baseType: !4139, size: 64, offset: 768)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4105, file: !227, line: 2072, baseType: !4145, size: 64, offset: 832)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!27, !1160, !4148}
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !227, line: 62, flags: DIFlagFwdDecl)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4105, file: !227, line: 2073, baseType: !4151, size: 64, offset: 896)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!27, !1396, !2432, !913}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4105, file: !227, line: 2074, baseType: !1425, size: 64, offset: 960)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4105, file: !227, line: 2076, baseType: !4156, size: 64, offset: 1024)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!27, !2185, !1160}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4105, file: !227, line: 2077, baseType: !4156, size: 64, offset: 1088)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4105, file: !227, line: 2078, baseType: !4156, size: 64, offset: 1152)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4105, file: !227, line: 2079, baseType: !4156, size: 64, offset: 1216)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4105, file: !227, line: 2081, baseType: !4163, size: 64, offset: 1280)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!1347, !1396, !27, !913, !40, !46}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4105, file: !227, line: 2082, baseType: !4167, size: 64, offset: 1344)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!1347, !1396, !27, !22, !40, !46}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4105, file: !227, line: 2083, baseType: !4171, size: 64, offset: 1408)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!4174, !1195}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !232, line: 296, size: 1664, elements: !4177)
!4177 = !{!4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4202, !4203, !4204}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4176, file: !232, line: 297, baseType: !720, size: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4176, file: !232, line: 298, baseType: !102, size: 128, offset: 128)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4176, file: !232, line: 299, baseType: !102, size: 128, offset: 256)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4176, file: !232, line: 300, baseType: !102, size: 128, offset: 384)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4176, file: !232, line: 301, baseType: !668, size: 256, offset: 512)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4176, file: !232, line: 302, baseType: !64, size: 32, offset: 768)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4176, file: !232, line: 303, baseType: !54, size: 32, offset: 800)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4176, file: !232, line: 304, baseType: !1396, size: 64, offset: 832)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4176, file: !232, line: 305, baseType: !4187, size: 64, offset: 896)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !232, line: 68, size: 64, elements: !4188)
!4188 = !{!4189, !4201}
!4189 = !DIDerivedType(tag: DW_TAG_member, scope: !4187, file: !232, line: 69, baseType: !4190, size: 32)
!4190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4187, file: !232, line: 69, size: 32, elements: !4191)
!4191 = !{!4192, !4193, !4194}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4190, file: !232, line: 70, baseType: !798, size: 32)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4190, file: !232, line: 71, baseType: !806, size: 32)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4190, file: !232, line: 72, baseType: !4195, size: 32)
!4195 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4196, line: 24, baseType: !4197)
!4196 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4196, line: 22, size: 32, elements: !4198)
!4198 = !{!4199}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4197, file: !4196, line: 23, baseType: !4200, size: 32)
!4200 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4196, line: 20, baseType: !804)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4187, file: !232, line: 74, baseType: !231, size: 32, offset: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4176, file: !232, line: 306, baseType: !46, size: 64, offset: 960)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4176, file: !232, line: 307, baseType: !44, size: 64, offset: 1024)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4176, file: !232, line: 308, baseType: !4205, size: 576, offset: 1088)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !232, line: 205, size: 576, elements: !4206)
!4206 = !{!4207, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4205, file: !232, line: 206, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !232, line: 66, baseType: !48)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4205, file: !232, line: 207, baseType: !4208, size: 64, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4205, file: !232, line: 208, baseType: !4208, size: 64, offset: 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4205, file: !232, line: 209, baseType: !4208, size: 64, offset: 192)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4205, file: !232, line: 210, baseType: !4208, size: 64, offset: 256)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4205, file: !232, line: 211, baseType: !4208, size: 64, offset: 320)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4205, file: !232, line: 212, baseType: !4208, size: 64, offset: 384)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4205, file: !232, line: 213, baseType: !861, size: 64, offset: 448)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4205, file: !232, line: 214, baseType: !861, size: 64, offset: 512)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4105, file: !227, line: 2085, baseType: !4218, size: 64, offset: 1472)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!1050, !1396, !4221}
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4223, line: 15, size: 256, elements: !4224)
!4223 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4224 = !{!4225, !4226, !4227, !4228, !4229}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4222, file: !4223, line: 16, baseType: !750, size: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4222, file: !4223, line: 19, baseType: !27, size: 32, offset: 32)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4222, file: !4223, line: 26, baseType: !44, size: 64, offset: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4222, file: !4223, line: 33, baseType: !44, size: 64, offset: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4222, file: !4223, line: 36, baseType: !4230, size: 64, offset: 192)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !4223, line: 36, flags: DIFlagFwdDecl)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4105, file: !227, line: 2087, baseType: !4218, size: 64, offset: 1536)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4105, file: !227, line: 2089, baseType: !1425, size: 64, offset: 1600)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1397, file: !227, line: 1198, baseType: !4235, size: 64, offset: 448)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4237)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !232, line: 324, size: 704, elements: !4238)
!4238 = !{!4239, !4243, !4247, !4251, !4252, !4253, !4254, !4255, !4260, !4265, !4269}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4237, file: !232, line: 325, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!27, !4175}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4237, file: !232, line: 326, baseType: !4244, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!4175, !1396, !27}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4237, file: !232, line: 327, baseType: !4248, size: 64, offset: 128)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{null, !4175}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4237, file: !232, line: 328, baseType: !4240, size: 64, offset: 192)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4237, file: !232, line: 329, baseType: !4240, size: 64, offset: 256)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4237, file: !232, line: 330, baseType: !4240, size: 64, offset: 320)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4237, file: !232, line: 331, baseType: !4131, size: 64, offset: 384)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4237, file: !232, line: 334, baseType: !4256, size: 64, offset: 448)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!4259, !1195}
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4237, file: !232, line: 335, baseType: !4261, size: 64, offset: 512)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!27, !1195, !4264}
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4237, file: !232, line: 337, baseType: !4266, size: 64, offset: 576)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!27, !1195, !4259}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4237, file: !232, line: 339, baseType: !4270, size: 64, offset: 640)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!27, !1396, !4273}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1397, file: !227, line: 1199, baseType: !4275, size: 64, offset: 512)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4277)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !232, line: 430, size: 704, elements: !4278)
!4278 = !{!4279, !4283, !4284, !4288, !4289, !4290, !4305, !4328, !4332, !4333, !4356}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4277, file: !232, line: 431, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!27, !1396, !27, !27, !1316}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4277, file: !232, line: 432, baseType: !4131, size: 64, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4277, file: !232, line: 433, baseType: !4285, size: 64, offset: 128)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!27, !1396, !13}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4277, file: !232, line: 434, baseType: !4285, size: 64, offset: 192)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4277, file: !232, line: 435, baseType: !4131, size: 64, offset: 256)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4277, file: !232, line: 436, baseType: !4291, size: 64, offset: 320)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!27, !1396, !27, !4294}
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !232, line: 417, size: 256, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4295, file: !232, line: 418, baseType: !27, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4295, file: !232, line: 419, baseType: !13, size: 32, offset: 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4295, file: !232, line: 420, baseType: !13, size: 32, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4295, file: !232, line: 422, baseType: !13, size: 32, offset: 96)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4295, file: !232, line: 423, baseType: !13, size: 32, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4295, file: !232, line: 424, baseType: !13, size: 32, offset: 160)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4295, file: !232, line: 425, baseType: !13, size: 32, offset: 192)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4295, file: !232, line: 426, baseType: !13, size: 32, offset: 224)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4277, file: !232, line: 437, baseType: !4306, size: 64, offset: 384)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!27, !1396, !4187, !4309}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !232, line: 345, size: 960, elements: !4311)
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4310, file: !232, line: 346, baseType: !27, size: 32)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4310, file: !232, line: 347, baseType: !363, size: 64, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4310, file: !232, line: 348, baseType: !363, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4310, file: !232, line: 349, baseType: !363, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4310, file: !232, line: 350, baseType: !363, size: 64, offset: 256)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4310, file: !232, line: 351, baseType: !363, size: 64, offset: 320)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4310, file: !232, line: 352, baseType: !363, size: 64, offset: 384)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4310, file: !232, line: 353, baseType: !374, size: 64, offset: 448)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4310, file: !232, line: 355, baseType: !374, size: 64, offset: 512)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4310, file: !232, line: 356, baseType: !27, size: 32, offset: 576)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4310, file: !232, line: 357, baseType: !27, size: 32, offset: 608)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4310, file: !232, line: 358, baseType: !363, size: 64, offset: 640)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4310, file: !232, line: 359, baseType: !363, size: 64, offset: 704)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4310, file: !232, line: 360, baseType: !363, size: 64, offset: 768)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4310, file: !232, line: 361, baseType: !374, size: 64, offset: 832)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4310, file: !232, line: 362, baseType: !27, size: 32, offset: 896)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4277, file: !232, line: 438, baseType: !4329, size: 64, offset: 448)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!27, !1396, !4273, !4309}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4277, file: !232, line: 440, baseType: !4306, size: 64, offset: 512)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4277, file: !232, line: 441, baseType: !4334, size: 64, offset: 576)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!27, !1396, !4337}
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !232, line: 411, size: 1408, elements: !4339)
!4339 = !{!4340, !4341}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4338, file: !232, line: 412, baseType: !13, size: 32)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4338, file: !232, line: 413, baseType: !4342, size: 1344, offset: 64)
!4342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4343, size: 1344, elements: !704)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !232, line: 397, size: 448, elements: !4344)
!4344 = !{!4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4355}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4343, file: !232, line: 398, baseType: !13, size: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4343, file: !232, line: 399, baseType: !13, size: 32, offset: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4343, file: !232, line: 401, baseType: !13, size: 32, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4343, file: !232, line: 402, baseType: !13, size: 32, offset: 96)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4343, file: !232, line: 403, baseType: !13, size: 32, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4343, file: !232, line: 404, baseType: !13, size: 32, offset: 160)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4343, file: !232, line: 405, baseType: !13, size: 32, offset: 192)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4343, file: !232, line: 406, baseType: !365, size: 64, offset: 256)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4343, file: !232, line: 407, baseType: !4354, size: 64, offset: 320)
!4354 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !30, line: 132, baseType: !363)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4343, file: !232, line: 408, baseType: !4354, size: 64, offset: 384)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4277, file: !232, line: 442, baseType: !4285, size: 64, offset: 640)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1397, file: !227, line: 1200, baseType: !4358, size: 64, offset: 576)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4360)
!4360 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !227, line: 54, flags: DIFlagFwdDecl)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1397, file: !227, line: 1201, baseType: !44, size: 64, offset: 640)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1397, file: !227, line: 1202, baseType: !44, size: 64, offset: 704)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1397, file: !227, line: 1203, baseType: !44, size: 64, offset: 768)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1397, file: !227, line: 1204, baseType: !1160, size: 64, offset: 832)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1397, file: !227, line: 1205, baseType: !845, size: 320, offset: 896)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1397, file: !227, line: 1206, baseType: !27, size: 32, offset: 1216)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1397, file: !227, line: 1207, baseType: !54, size: 32, offset: 1248)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1397, file: !227, line: 1209, baseType: !25, size: 64, offset: 1280)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1397, file: !227, line: 1211, baseType: !4370, size: 64, offset: 1344)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4373)
!4373 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !227, line: 1211, flags: DIFlagFwdDecl)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1397, file: !227, line: 1223, baseType: !4375, size: 64, offset: 1408)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1172, line: 34, size: 64, elements: !4376)
!4376 = !{!4377}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4375, file: !1172, line: 35, baseType: !1175, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1397, file: !227, line: 1224, baseType: !102, size: 128, offset: 1472)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1397, file: !227, line: 1225, baseType: !4380, size: 64, offset: 1600)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !227, line: 1225, flags: DIFlagFwdDecl)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1397, file: !227, line: 1226, baseType: !4383, size: 64, offset: 1664)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !227, line: 1226, flags: DIFlagFwdDecl)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1397, file: !227, line: 1227, baseType: !4386, size: 64, offset: 1728)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !227, line: 50, flags: DIFlagFwdDecl)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1397, file: !227, line: 1228, baseType: !4389, size: 64, offset: 1792)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !227, line: 1228, flags: DIFlagFwdDecl)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1397, file: !227, line: 1229, baseType: !720, size: 128, offset: 1856)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1397, file: !227, line: 1230, baseType: !13, size: 32, offset: 1984)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1397, file: !227, line: 1231, baseType: !4394, size: 2496, offset: 2048)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !232, line: 521, size: 2496, elements: !4395)
!4395 = !{!4396, !4397, !4398, !4400, !4432}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4394, file: !232, line: 522, baseType: !13, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4394, file: !232, line: 523, baseType: !845, size: 320, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4394, file: !232, line: 524, baseType: !4399, size: 192, offset: 384)
!4399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1195, size: 192, elements: !704)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4394, file: !232, line: 525, baseType: !4401, size: 1728, offset: 576)
!4401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4402, size: 1728, elements: !704)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !232, line: 222, size: 576, elements: !4403)
!4403 = !{!4404, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4402, file: !232, line: 223, baseType: !4405, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !232, line: 445, size: 256, elements: !4407)
!4407 = !{!4408, !4409, !4422, !4423}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4406, file: !232, line: 446, baseType: !27, size: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4406, file: !232, line: 447, baseType: !4410, size: 64, offset: 64)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4412)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !232, line: 312, size: 512, elements: !4413)
!4413 = !{!4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4412, file: !232, line: 313, baseType: !4131, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4412, file: !232, line: 314, baseType: !4131, size: 64, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4412, file: !232, line: 315, baseType: !4131, size: 64, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4412, file: !232, line: 316, baseType: !4131, size: 64, offset: 192)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4412, file: !232, line: 317, baseType: !4240, size: 64, offset: 256)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4412, file: !232, line: 318, baseType: !4240, size: 64, offset: 320)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4412, file: !232, line: 319, baseType: !4240, size: 64, offset: 384)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4412, file: !232, line: 320, baseType: !4270, size: 64, offset: 448)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4406, file: !232, line: 448, baseType: !1429, size: 64, offset: 128)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4406, file: !232, line: 449, baseType: !4405, size: 64, offset: 192)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4402, file: !232, line: 224, baseType: !27, size: 32, offset: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4402, file: !232, line: 226, baseType: !102, size: 128, offset: 128)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4402, file: !232, line: 227, baseType: !44, size: 64, offset: 256)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4402, file: !232, line: 228, baseType: !13, size: 32, offset: 320)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4402, file: !232, line: 229, baseType: !13, size: 32, offset: 352)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4402, file: !232, line: 230, baseType: !4208, size: 64, offset: 384)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4402, file: !232, line: 231, baseType: !4208, size: 64, offset: 448)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4402, file: !232, line: 232, baseType: !25, size: 64, offset: 512)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4394, file: !232, line: 526, baseType: !4433, size: 192, offset: 2304)
!4433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4410, size: 192, elements: !704)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1397, file: !227, line: 1233, baseType: !4435, size: 2368, offset: 4544)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !227, line: 1184, size: 2368, elements: !4436)
!4436 = !{!4437, !4438, !4439}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4435, file: !227, line: 1185, baseType: !31, size: 16)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4435, file: !227, line: 1186, baseType: !31, size: 16, offset: 16)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4435, file: !227, line: 1187, baseType: !4440, size: 2304, offset: 64)
!4440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4441, size: 2304, elements: !704)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4442, line: 12, size: 768, elements: !4443)
!4442 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4443 = !{!4444, !4452, !4453, !4454, !4455}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4441, file: !4442, line: 13, baseType: !4445, size: 384)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4446, line: 17, size: 384, elements: !4447)
!4446 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4447 = !{!4448, !4449, !4450, !4451}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4445, file: !4446, line: 18, baseType: !27, size: 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4445, file: !4446, line: 19, baseType: !27, size: 32, offset: 32)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4445, file: !4446, line: 20, baseType: !59, size: 192, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4445, file: !4446, line: 22, baseType: !648, size: 128, align: 64, offset: 256)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4441, file: !4442, line: 14, baseType: !2384, size: 64, offset: 384)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4441, file: !4442, line: 15, baseType: !3590, size: 64, offset: 448)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4441, file: !4442, line: 16, baseType: !59, size: 192, offset: 512)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4441, file: !4442, line: 17, baseType: !54, size: 32, offset: 704)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1397, file: !227, line: 1240, baseType: !25, size: 64, offset: 6912)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1397, file: !227, line: 1243, baseType: !306, size: 32, offset: 6976)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1397, file: !227, line: 1245, baseType: !861, size: 64, offset: 7040)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1397, file: !227, line: 1246, baseType: !861, size: 64, offset: 7104)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1397, file: !227, line: 1248, baseType: !307, size: 32, offset: 7168)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1397, file: !227, line: 1249, baseType: !4462, size: 64, offset: 7232)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !227, line: 634, flags: DIFlagFwdDecl)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1397, file: !227, line: 1252, baseType: !4465, size: 256, offset: 7296)
!4465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !4466)
!4466 = !{!4467}
!4467 = !DISubrange(count: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1397, file: !227, line: 1253, baseType: !4469, size: 128, offset: 7552)
!4469 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4470, line: 21, baseType: !4471)
!4470 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4470, line: 19, size: 128, elements: !4472)
!4472 = !{!4473}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4471, file: !4470, line: 20, baseType: !4474, size: 128)
!4474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !4475)
!4475 = !{!4476}
!4476 = !DISubrange(count: 16)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1397, file: !227, line: 1255, baseType: !13, size: 32, offset: 7680)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1397, file: !227, line: 1261, baseType: !668, size: 256, offset: 7744)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1397, file: !227, line: 1267, baseType: !22, size: 64, offset: 8000)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1397, file: !227, line: 1269, baseType: !4481, size: 64, offset: 8064)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4483)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1162, line: 128, size: 1024, align: 512, elements: !4484)
!4484 = !{!4485, !4489, !4490, !4497, !4503, !4507, !4511, !4515, !4516, !4520, !4524, !4529, !4533}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4483, file: !1162, line: 129, baseType: !4486, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!27, !1160, !13}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4483, file: !1162, line: 130, baseType: !4486, size: 64, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4483, file: !1162, line: 131, baseType: !4491, size: 64, offset: 128)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!27, !4494, !4496}
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4483, file: !1162, line: 132, baseType: !4498, size: 64, offset: 192)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!27, !4494, !13, !22, !4501}
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4483, file: !1162, line: 134, baseType: !4504, size: 64, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!27, !4494}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4483, file: !1162, line: 135, baseType: !4508, size: 64, offset: 320)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!27, !1160}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4483, file: !1162, line: 136, baseType: !4512, size: 64, offset: 384)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{null, !1160}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4483, file: !1162, line: 137, baseType: !4512, size: 64, offset: 448)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4483, file: !1162, line: 138, baseType: !4517, size: 64, offset: 512)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{null, !1160, !1195}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4483, file: !1162, line: 139, baseType: !4521, size: 64, offset: 576)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!913, !1160, !913, !27}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4483, file: !1162, line: 140, baseType: !4525, size: 64, offset: 640)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!1155, !4528}
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4483, file: !1162, line: 141, baseType: !4530, size: 64, offset: 704)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!27, !1316, !825}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4483, file: !1162, line: 142, baseType: !4534, size: 64, offset: 768)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!1160, !1160, !4537}
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1397, file: !227, line: 1271, baseType: !4540, size: 448, offset: 8128)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4223, line: 63, size: 448, elements: !4541)
!4541 = !{!4542, !4547, !4548, !4549, !4550, !4551, !4552}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4540, file: !4223, line: 64, baseType: !4543, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!44, !4546, !4221}
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4540, file: !4223, line: 66, baseType: !4543, size: 64, offset: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4540, file: !4223, line: 69, baseType: !1050, size: 64, offset: 128)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4540, file: !4223, line: 70, baseType: !27, size: 32, offset: 192)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4540, file: !4223, line: 71, baseType: !13, size: 32, offset: 224)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4540, file: !4223, line: 74, baseType: !102, size: 128, offset: 256)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4540, file: !4223, line: 85, baseType: !4553, size: 64, offset: 384)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1397, file: !227, line: 1274, baseType: !661, size: 64, offset: 8576)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1397, file: !227, line: 1280, baseType: !661, size: 64, offset: 8640)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1397, file: !227, line: 1283, baseType: !27, size: 32, offset: 8704)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1397, file: !227, line: 1286, baseType: !2083, size: 32, offset: 8736)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1397, file: !227, line: 1289, baseType: !2595, size: 64, offset: 8768)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1397, file: !227, line: 1290, baseType: !716, size: 64, offset: 8832)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1397, file: !227, line: 1297, baseType: !767, size: 64, offset: 8896)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1397, file: !227, line: 1304, baseType: !4562, size: 64, offset: 8960)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4563, line: 49, size: 64, elements: !4564)
!4563 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4564 = !{!4565}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4562, file: !4563, line: 50, baseType: !4566, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4563, line: 41, size: 512, align: 512, elements: !4568)
!4568 = !{!4569, !4570, !4575}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4567, file: !4563, line: 43, baseType: !64, size: 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4567, file: !4563, line: 45, baseType: !4571, size: 192, offset: 64)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4563, line: 29, size: 192, elements: !4572)
!4572 = !{!4573, !4574}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4571, file: !4563, line: 30, baseType: !102, size: 128)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4571, file: !4563, line: 32, baseType: !1050, size: 64, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4567, file: !4563, line: 46, baseType: !1050, size: 64, offset: 256)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1397, file: !227, line: 1305, baseType: !4562, size: 64, offset: 9024)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1397, file: !227, line: 1306, baseType: !648, size: 128, align: 64, offset: 9088)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1397, file: !227, line: 1307, baseType: !952, size: 256, offset: 9216)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1397, file: !227, line: 1309, baseType: !668, size: 256, offset: 9472)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1397, file: !227, line: 1314, baseType: !27, size: 32, offset: 9728)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1397, file: !227, line: 1317, baseType: !64, size: 32, align: 512, offset: 10240)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1397, file: !227, line: 1318, baseType: !102, size: 128, offset: 10304)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1397, file: !227, line: 1320, baseType: !64, size: 32, offset: 10432)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1397, file: !227, line: 1321, baseType: !102, size: 128, offset: 10496)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1196, file: !227, line: 656, baseType: !1546, size: 64, offset: 512)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1196, file: !227, line: 659, baseType: !25, size: 64, offset: 576)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1196, file: !227, line: 663, baseType: !44, size: 64, offset: 640)
!4588 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !227, line: 671, baseType: !4589, size: 32, offset: 704)
!4589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1196, file: !227, line: 671, size: 32, elements: !4590)
!4590 = !{!4591, !4592}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4589, file: !227, line: 672, baseType: !2643, size: 32)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4589, file: !227, line: 673, baseType: !13, size: 32)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1196, file: !227, line: 675, baseType: !1269, size: 32, offset: 736)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1196, file: !227, line: 676, baseType: !46, size: 64, offset: 768)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1196, file: !227, line: 677, baseType: !1305, size: 128, offset: 832)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1196, file: !227, line: 678, baseType: !1305, size: 128, offset: 960)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1196, file: !227, line: 679, baseType: !1305, size: 128, offset: 1088)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1196, file: !227, line: 680, baseType: !64, size: 32, offset: 1216)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1196, file: !227, line: 681, baseType: !31, size: 16, offset: 1248)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1196, file: !227, line: 682, baseType: !88, size: 8, offset: 1264)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1196, file: !227, line: 683, baseType: !88, size: 8, offset: 1272)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1196, file: !227, line: 684, baseType: !4354, size: 64, offset: 1280)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1196, file: !227, line: 691, baseType: !44, size: 64, offset: 1344)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1196, file: !227, line: 692, baseType: !845, size: 320, offset: 1408)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1196, file: !227, line: 694, baseType: !44, size: 64, offset: 1728)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1196, file: !227, line: 695, baseType: !44, size: 64, offset: 1792)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1196, file: !227, line: 697, baseType: !720, size: 128, offset: 1856)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1196, file: !227, line: 698, baseType: !102, size: 128, offset: 1984)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1196, file: !227, line: 707, baseType: !102, size: 128, offset: 2112)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1196, file: !227, line: 708, baseType: !102, size: 128, offset: 2240)
!4611 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !227, line: 709, baseType: !4612, size: 128, offset: 2368)
!4612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1196, file: !227, line: 709, size: 128, elements: !4613)
!4613 = !{!4614, !4615}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4612, file: !227, line: 710, baseType: !716, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4612, file: !227, line: 711, baseType: !648, size: 128, align: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1196, file: !227, line: 713, baseType: !663, size: 64, offset: 2496)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1196, file: !227, line: 714, baseType: !663, size: 64, offset: 2560)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1196, file: !227, line: 715, baseType: !54, size: 32, offset: 2624)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1196, file: !227, line: 716, baseType: !54, size: 32, offset: 2656)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1196, file: !227, line: 717, baseType: !54, size: 32, offset: 2688)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1196, file: !227, line: 719, baseType: !54, size: 32, offset: 2720)
!4622 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !227, line: 721, baseType: !4623, size: 64, offset: 2752)
!4623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1196, file: !227, line: 721, size: 64, elements: !4624)
!4624 = !{!4625, !4751}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4623, file: !227, line: 722, baseType: !4626, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4628)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !227, line: 1914, size: 2112, elements: !4629)
!4629 = !{!4630, !4631, !4635, !4639, !4643, !4644, !4645, !4651, !4664, !4668, !4672, !4673, !4677, !4678, !4682, !4687, !4688, !4692, !4696, !4702, !4703, !4707, !4708, !4714, !4718, !4719, !4724, !4728, !4732, !4736, !4740, !4741, !4747}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4628, file: !227, line: 1915, baseType: !1429, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4628, file: !227, line: 1916, baseType: !4632, size: 64, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!46, !640, !46, !27}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4628, file: !227, line: 1917, baseType: !4636, size: 64, offset: 128)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!1347, !640, !913, !40, !45}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4628, file: !227, line: 1918, baseType: !4640, size: 64, offset: 192)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!1347, !640, !22, !40, !45}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4628, file: !227, line: 1919, baseType: !1967, size: 64, offset: 256)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4628, file: !227, line: 1920, baseType: !1967, size: 64, offset: 320)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4628, file: !227, line: 1921, baseType: !4646, size: 64, offset: 384)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!27, !1970, !4649, !13}
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !227, line: 53, flags: DIFlagFwdDecl)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4628, file: !227, line: 1923, baseType: !4652, size: 64, offset: 448)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!27, !640, !4655}
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !227, line: 1858, size: 128, elements: !4657)
!4657 = !{!4658, !4663}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4656, file: !227, line: 1859, baseType: !4659, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !227, line: 1855, baseType: !4660)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!825, !4655, !22, !27, !46, !363, !13}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4656, file: !227, line: 1860, baseType: !46, size: 64, offset: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4628, file: !227, line: 1924, baseType: !4665, size: 64, offset: 512)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!292, !640, !2252}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4628, file: !227, line: 1925, baseType: !4669, size: 64, offset: 576)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!1050, !640, !13, !44}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4628, file: !227, line: 1926, baseType: !4669, size: 64, offset: 640)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4628, file: !227, line: 1927, baseType: !4674, size: 64, offset: 704)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!27, !640, !1676}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4628, file: !227, line: 1928, baseType: !44, size: 64, offset: 768)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4628, file: !227, line: 1929, baseType: !4679, size: 64, offset: 832)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!27, !1195, !640}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4628, file: !227, line: 1930, baseType: !4683, size: 64, offset: 896)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!27, !640, !4686}
!4686 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !227, line: 1061, baseType: !25)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4628, file: !227, line: 1931, baseType: !4679, size: 64, offset: 960)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4628, file: !227, line: 1932, baseType: !4689, size: 64, offset: 1024)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!27, !640, !46, !46, !27}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4628, file: !227, line: 1933, baseType: !4693, size: 64, offset: 1088)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!27, !27, !640, !27}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4628, file: !227, line: 1934, baseType: !4697, size: 64, offset: 1152)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!27, !640, !27, !4700}
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !227, line: 1063, flags: DIFlagFwdDecl)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4628, file: !227, line: 1935, baseType: !637, size: 64, offset: 1216)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4628, file: !227, line: 1936, baseType: !4704, size: 64, offset: 1280)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!27, !27}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4628, file: !227, line: 1937, baseType: !4697, size: 64, offset: 1344)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4628, file: !227, line: 1938, baseType: !4709, size: 64, offset: 1408)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!1347, !4712, !640, !45, !40, !13}
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !297, line: 59, flags: DIFlagFwdDecl)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4628, file: !227, line: 1939, baseType: !4715, size: 64, offset: 1472)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!1347, !640, !45, !4712, !40, !13}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4628, file: !227, line: 1940, baseType: !2073, size: 64, offset: 1536)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4628, file: !227, line: 1941, baseType: !4720, size: 64, offset: 1600)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!27, !640, !27, !4723, !1944}
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4628, file: !227, line: 1942, baseType: !4725, size: 64, offset: 1664)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!1050, !640, !27, !46, !46}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4628, file: !227, line: 1944, baseType: !4729, size: 64, offset: 1728)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{null, !2185, !640}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4628, file: !227, line: 1948, baseType: !4733, size: 64, offset: 1792)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!1347, !640, !46, !640, !46, !40, !13}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4628, file: !227, line: 1950, baseType: !4737, size: 64, offset: 1856)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!46, !640, !46, !640, !46, !46, !13}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4628, file: !227, line: 1953, baseType: !4689, size: 64, offset: 1920)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4628, file: !227, line: 1954, baseType: !4742, size: 64, offset: 1984)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!27, !4745, !13}
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !227, line: 1911, flags: DIFlagFwdDecl)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4628, file: !227, line: 1955, baseType: !4748, size: 64, offset: 2048)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!27, !4745, !4649, !13}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4623, file: !227, line: 723, baseType: !4112, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1196, file: !227, line: 725, baseType: !4753, size: 64, offset: 2816)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !227, line: 725, flags: DIFlagFwdDecl)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1196, file: !227, line: 726, baseType: !1547, size: 1536, align: 64, offset: 2880)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1196, file: !227, line: 727, baseType: !102, size: 128, offset: 4416)
!4757 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !227, line: 728, baseType: !4758, size: 64, offset: 4544)
!4758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1196, file: !227, line: 728, size: 64, elements: !4759)
!4759 = !{!4760, !4761, !4764, !4765}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4758, file: !227, line: 729, baseType: !4712, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4758, file: !227, line: 730, baseType: !4762, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !227, line: 730, flags: DIFlagFwdDecl)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4758, file: !227, line: 731, baseType: !913, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4758, file: !227, line: 732, baseType: !13, size: 32)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1196, file: !227, line: 735, baseType: !307, size: 32, offset: 4608)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1196, file: !227, line: 738, baseType: !307, size: 32, offset: 4640)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1196, file: !227, line: 739, baseType: !4462, size: 64, offset: 4672)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1196, file: !227, line: 750, baseType: !25, size: 64, offset: 4736)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1161, file: !1162, line: 91, baseType: !4771, size: 256, offset: 448)
!4771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 256, elements: !4466)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1161, file: !1162, line: 94, baseType: !4773, size: 64, offset: 704)
!4773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4774, line: 25, size: 64, elements: !4775)
!4774 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4775 = !{!4776}
!4776 = !DIDerivedType(tag: DW_TAG_member, scope: !4773, file: !4774, line: 26, baseType: !4777, size: 64)
!4777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4773, file: !4774, line: 26, size: 64, elements: !4778)
!4778 = !{!4779, !4780}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4777, file: !4774, line: 28, baseType: !364, size: 64, align: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, scope: !4777, file: !4774, line: 30, baseType: !4781, size: 64)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4777, file: !4774, line: 30, size: 64, elements: !4782)
!4782 = !{!4783, !4784}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4781, file: !4774, line: 31, baseType: !64, size: 32)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4781, file: !4774, line: 32, baseType: !27, size: 32, offset: 32)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1161, file: !1162, line: 95, baseType: !4481, size: 64, offset: 768)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1161, file: !1162, line: 96, baseType: !1396, size: 64, offset: 832)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1161, file: !1162, line: 97, baseType: !44, size: 64, offset: 896)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1161, file: !1162, line: 98, baseType: !25, size: 64, offset: 960)
!4789 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !1162, line: 100, baseType: !4790, size: 128, offset: 1024)
!4790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 100, size: 128, elements: !4791)
!4791 = !{!4792, !4793}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4790, file: !1162, line: 101, baseType: !102, size: 128)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4790, file: !1162, line: 102, baseType: !2261, size: 64)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1161, file: !1162, line: 104, baseType: !102, size: 128, offset: 1152)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1161, file: !1162, line: 105, baseType: !102, size: 128, offset: 1280)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1161, file: !1162, line: 113, baseType: !4797, size: 128, offset: 1408)
!4797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 109, size: 128, elements: !4798)
!4798 = !{!4799, !4800, !4801}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4797, file: !1162, line: 110, baseType: !720, size: 128)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4797, file: !1162, line: 111, baseType: !1171, size: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4797, file: !1162, line: 112, baseType: !648, size: 128, align: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1156, file: !1157, line: 72, baseType: !1396, size: 64, offset: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1156, file: !1157, line: 73, baseType: !27, size: 32, offset: 128)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1156, file: !1157, line: 74, baseType: !1234, size: 64, offset: 192)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1151, file: !1152, line: 10, baseType: !1160, size: 64, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !641, file: !227, line: 1015, baseType: !1195, size: 64, offset: 1344)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !641, file: !227, line: 1016, baseType: !4626, size: 64, offset: 1408)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !641, file: !227, line: 1018, baseType: !363, size: 64, offset: 1472)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !641, file: !227, line: 1020, baseType: !25, size: 64, offset: 1536)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !641, file: !227, line: 1023, baseType: !25, size: 64, offset: 1600)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !641, file: !227, line: 1027, baseType: !2811, size: 64, offset: 1664)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !641, file: !227, line: 1029, baseType: !1546, size: 64, offset: 1728)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !641, file: !227, line: 1030, baseType: !2083, size: 32, offset: 1792)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !641, file: !227, line: 1031, baseType: !2083, size: 32, offset: 1824)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !616, file: !119, line: 756, baseType: !44, size: 64, offset: 704)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !616, file: !119, line: 757, baseType: !44, size: 64, offset: 768)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !616, file: !119, line: 760, baseType: !44, size: 64, offset: 832)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !616, file: !119, line: 761, baseType: !44, size: 64, offset: 896)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !616, file: !119, line: 763, baseType: !44, size: 64, offset: 960)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !616, file: !119, line: 764, baseType: !4821, size: 64, offset: 1024)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1691, line: 299, baseType: !4823)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1691, line: 299, size: 64, elements: !4824)
!4824 = !{!4825}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4823, file: !1691, line: 299, baseType: !4826, size: 64)
!4826 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1696, line: 18, baseType: !44)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !616, file: !119, line: 773, baseType: !54, size: 32, offset: 1088)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !616, file: !119, line: 785, baseType: !54, size: 32, offset: 1120)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !616, file: !119, line: 795, baseType: !4830, size: 64, offset: 1152)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !119, line: 726, size: 128, elements: !4832)
!4832 = !{!4833, !4834}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4831, file: !119, line: 727, baseType: !363, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4831, file: !119, line: 728, baseType: !27, size: 32, offset: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !616, file: !119, line: 801, baseType: !44, size: 64, offset: 1216)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !616, file: !119, line: 804, baseType: !661, size: 64, offset: 1280)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !616, file: !119, line: 806, baseType: !27, size: 32, offset: 1344)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !616, file: !119, line: 808, baseType: !64, size: 32, offset: 1376)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !616, file: !119, line: 823, baseType: !845, size: 320, offset: 1408)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !616, file: !119, line: 825, baseType: !102, size: 128, offset: 1728)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !616, file: !119, line: 845, baseType: !27, size: 32, offset: 1856)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !616, file: !119, line: 849, baseType: !44, size: 64, offset: 1920)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !616, file: !119, line: 850, baseType: !44, size: 64, offset: 1984)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !616, file: !119, line: 852, baseType: !44, size: 64, offset: 2048)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !616, file: !119, line: 853, baseType: !44, size: 64, offset: 2112)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !616, file: !119, line: 854, baseType: !663, size: 64, offset: 2176)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !616, file: !119, line: 855, baseType: !44, size: 64, offset: 2240)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !616, file: !119, line: 856, baseType: !44, size: 64, offset: 2304)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !616, file: !119, line: 857, baseType: !44, size: 64, offset: 2368)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !616, file: !119, line: 858, baseType: !44, size: 64, offset: 2432)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !616, file: !119, line: 865, baseType: !486, size: 32, offset: 2496)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !616, file: !119, line: 867, baseType: !64, size: 32, offset: 2528)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !616, file: !119, line: 869, baseType: !44, size: 64, offset: 2560)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !616, file: !119, line: 869, baseType: !44, size: 64, offset: 2624)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !616, file: !119, line: 869, baseType: !44, size: 64, offset: 2688)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !616, file: !119, line: 869, baseType: !44, size: 64, offset: 2752)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !616, file: !119, line: 870, baseType: !44, size: 64, offset: 2816)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !616, file: !119, line: 870, baseType: !44, size: 64, offset: 2880)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !616, file: !119, line: 870, baseType: !44, size: 64, offset: 2944)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !616, file: !119, line: 871, baseType: !44, size: 64, offset: 3008)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !616, file: !119, line: 871, baseType: !44, size: 64, offset: 3072)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !616, file: !119, line: 871, baseType: !44, size: 64, offset: 3136)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !616, file: !119, line: 871, baseType: !44, size: 64, offset: 3200)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !616, file: !119, line: 873, baseType: !4865, size: 3328, offset: 3264)
!4865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 3328, elements: !4866)
!4866 = !{!4867}
!4867 = !DISubrange(count: 52)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !616, file: !119, line: 875, baseType: !4869, size: 1280, offset: 6592)
!4869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 1280, elements: !725)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !616, file: !119, line: 877, baseType: !4871, size: 64, offset: 7872)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !119, line: 877, flags: DIFlagFwdDecl)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !616, file: !119, line: 880, baseType: !4874, size: 1088, offset: 7936)
!4874 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4875, line: 72, baseType: !4876)
!4875 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4875, line: 23, size: 1088, elements: !4877)
!4877 = !{!4878, !4879, !4880, !4881, !4882, !4885, !4886, !4887, !4888, !4913, !4914, !4915}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4876, file: !4875, line: 28, baseType: !363, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4876, file: !4875, line: 38, baseType: !663, size: 64, offset: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4876, file: !4875, line: 40, baseType: !44, size: 64, offset: 128)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4876, file: !4875, line: 43, baseType: !845, size: 320, offset: 192)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4876, file: !4875, line: 44, baseType: !4883, size: 64, offset: 512)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4875, line: 44, flags: DIFlagFwdDecl)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4876, file: !4875, line: 48, baseType: !44, size: 64, offset: 576)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4876, file: !4875, line: 59, baseType: !668, size: 256, offset: 640)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4876, file: !4875, line: 60, baseType: !25, size: 64, offset: 896)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4876, file: !4875, line: 61, baseType: !4889, size: 64, offset: 960)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4891)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4892, line: 13, size: 1216, elements: !4893)
!4892 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4893 = !{!4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4891, file: !4892, line: 14, baseType: !25, size: 64)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4891, file: !4892, line: 15, baseType: !44, size: 64, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4891, file: !4892, line: 17, baseType: !44, size: 64, offset: 128)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4891, file: !4892, line: 17, baseType: !44, size: 64, offset: 192)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4891, file: !4892, line: 18, baseType: !44, size: 64, offset: 256)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4891, file: !4892, line: 18, baseType: !44, size: 64, offset: 320)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4891, file: !4892, line: 19, baseType: !2122, size: 64, offset: 384)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4891, file: !4892, line: 21, baseType: !1050, size: 64, offset: 448)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4891, file: !4892, line: 23, baseType: !1050, size: 64, offset: 512)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4891, file: !4892, line: 24, baseType: !1050, size: 64, offset: 576)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4891, file: !4892, line: 25, baseType: !1050, size: 64, offset: 640)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4891, file: !4892, line: 26, baseType: !1050, size: 64, offset: 704)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4891, file: !4892, line: 27, baseType: !1050, size: 64, offset: 768)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4891, file: !4892, line: 28, baseType: !1050, size: 64, offset: 832)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4891, file: !4892, line: 29, baseType: !1050, size: 64, offset: 896)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4891, file: !4892, line: 30, baseType: !1050, size: 64, offset: 960)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4891, file: !4892, line: 31, baseType: !1050, size: 64, offset: 1024)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4891, file: !4892, line: 32, baseType: !1050, size: 64, offset: 1088)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4891, file: !4892, line: 33, baseType: !1050, size: 64, offset: 1152)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4876, file: !4875, line: 63, baseType: !54, size: 32, offset: 1024)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4876, file: !4875, line: 69, baseType: !98, size: 16, offset: 1056)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4876, file: !4875, line: 70, baseType: !2439, size: 16, offset: 1072)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !119, line: 882, baseType: !44, size: 64, offset: 9024)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !616, file: !119, line: 885, baseType: !64, size: 32, offset: 9088)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !616, file: !119, line: 886, baseType: !4919, size: 64, offset: 9152)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !119, line: 732, flags: DIFlagFwdDecl)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !616, file: !119, line: 901, baseType: !767, size: 64, offset: 9216)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !616, file: !119, line: 904, baseType: !640, size: 64, offset: 9280)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !616, file: !119, line: 906, baseType: !4924, size: 64, offset: 9344)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !119, line: 906, flags: DIFlagFwdDecl)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !616, file: !119, line: 930, baseType: !54, size: 32, offset: 9408)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !616, file: !119, line: 933, baseType: !54, size: 32, offset: 9440)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !616, file: !119, line: 935, baseType: !4929, size: 64, offset: 9472)
!4929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !253, line: 103, size: 64, elements: !4930)
!4930 = !{!4931}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4929, file: !253, line: 104, baseType: !4932, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !253, line: 101, flags: DIFlagFwdDecl)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !616, file: !119, line: 940, baseType: !661, size: 64, offset: 9536)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !616, file: !119, line: 942, baseType: !952, size: 256, offset: 9600)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !613, file: !119, line: 986, baseType: !4937, offset: 10240)
!4937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, elements: !1057)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !296, file: !297, line: 882, baseType: !612, size: 64, offset: 9792)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !296, file: !297, line: 884, baseType: !27, size: 32, offset: 9856)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !296, file: !297, line: 885, baseType: !27, size: 32, offset: 9888)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !296, file: !297, line: 886, baseType: !27, size: 32, offset: 9920)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !296, file: !297, line: 888, baseType: !27, size: 32, offset: 9952)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !296, file: !297, line: 890, baseType: !44, size: 64, offset: 9984)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !296, file: !297, line: 893, baseType: !13, size: 32, offset: 10048)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !296, file: !297, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !296, file: !297, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !296, file: !297, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !296, file: !297, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !296, file: !297, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !296, file: !297, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !296, file: !297, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !296, file: !297, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !296, file: !297, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !296, file: !297, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !296, file: !297, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !296, file: !297, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !296, file: !297, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !296, file: !297, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !296, file: !297, line: 969, baseType: !44, size: 64, offset: 10176)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !296, file: !297, line: 971, baseType: !4961, size: 448, offset: 10240)
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !113, line: 25, size: 448, elements: !4962)
!4962 = !{!4963, !4964, !4969}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4961, file: !113, line: 26, baseType: !44, size: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4961, file: !113, line: 27, baseType: !4965, size: 64, offset: 64)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!1050, !4968}
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4969 = !DIDerivedType(tag: DW_TAG_member, scope: !4961, file: !113, line: 28, baseType: !4970, size: 320, offset: 128)
!4970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4961, file: !113, line: 28, size: 320, elements: !4971)
!4971 = !{!4972, !4982, !5007}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4970, file: !113, line: 37, baseType: !4973, size: 320)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4970, file: !113, line: 30, size: 320, elements: !4974)
!4974 = !{!4975, !4977, !4978, !4979, !4980, !4981}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4973, file: !113, line: 31, baseType: !4976, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4973, file: !113, line: 32, baseType: !306, size: 32, offset: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4973, file: !113, line: 33, baseType: !306, size: 32, offset: 96)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4973, file: !113, line: 34, baseType: !306, size: 32, offset: 128)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4973, file: !113, line: 35, baseType: !363, size: 64, offset: 192)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4973, file: !113, line: 36, baseType: !4976, size: 64, offset: 256)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4970, file: !113, line: 47, baseType: !4983, size: 192)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4970, file: !113, line: 39, size: 192, elements: !4984)
!4984 = !{!4985, !4986, !4987, !5006}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4983, file: !113, line: 40, baseType: !478, size: 32)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4983, file: !113, line: 41, baseType: !112, size: 32, offset: 32)
!4987 = !DIDerivedType(tag: DW_TAG_member, scope: !4983, file: !113, line: 42, baseType: !4988, size: 64, offset: 64)
!4988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4983, file: !113, line: 42, size: 64, elements: !4989)
!4989 = !{!4990, !4998}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4988, file: !113, line: 43, baseType: !4991, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4993, line: 7, size: 128, elements: !4994)
!4993 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4994 = !{!4995, !4997}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4992, file: !4993, line: 8, baseType: !4996, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !42, line: 93, baseType: !48)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4992, file: !4993, line: 9, baseType: !48, size: 64, offset: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4988, file: !113, line: 44, baseType: !4999, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5001, line: 7, size: 64, elements: !5002)
!5001 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5002 = !{!5003, !5005}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5000, file: !5001, line: 8, baseType: !5004, size: 32)
!5004 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5001, line: 5, baseType: !837)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5000, file: !5001, line: 9, baseType: !837, size: 32, offset: 32)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4983, file: !113, line: 46, baseType: !363, size: 64, offset: 128)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4970, file: !113, line: 55, baseType: !5008, size: 256)
!5008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4970, file: !113, line: 49, size: 256, elements: !5009)
!5009 = !{!5010, !5018, !5019, !5020, !5021}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5008, file: !113, line: 50, baseType: !5011, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5013, line: 36, size: 64, elements: !5014)
!5013 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5014 = !{!5015, !5016, !5017}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5012, file: !5013, line: 37, baseType: !27, size: 32)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5012, file: !5013, line: 38, baseType: !873, size: 16, offset: 32)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5012, file: !5013, line: 39, baseType: !873, size: 16, offset: 48)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5008, file: !113, line: 51, baseType: !27, size: 32, offset: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5008, file: !113, line: 52, baseType: !27, size: 32, offset: 96)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5008, file: !113, line: 53, baseType: !44, size: 64, offset: 128)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5008, file: !113, line: 54, baseType: !44, size: 64, offset: 192)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !296, file: !297, line: 973, baseType: !5023, size: 32, offset: 10688)
!5023 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !30, line: 27, baseType: !5024)
!5024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !42, line: 28, baseType: !27)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !296, file: !297, line: 974, baseType: !5023, size: 32, offset: 10720)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !296, file: !297, line: 978, baseType: !44, size: 64, offset: 10752)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !296, file: !297, line: 987, baseType: !295, size: 64, offset: 10816)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !296, file: !297, line: 990, baseType: !295, size: 64, offset: 10880)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !296, file: !297, line: 995, baseType: !102, size: 128, offset: 10944)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !296, file: !297, line: 996, baseType: !102, size: 128, offset: 11072)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !296, file: !297, line: 997, baseType: !295, size: 64, offset: 11200)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !296, file: !297, line: 1005, baseType: !102, size: 128, offset: 11264)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !296, file: !297, line: 1006, baseType: !102, size: 128, offset: 11392)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !296, file: !297, line: 1009, baseType: !708, size: 64, offset: 11520)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !296, file: !297, line: 1010, baseType: !5036, size: 512, offset: 11584)
!5036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 512, elements: !725)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !296, file: !297, line: 1011, baseType: !102, size: 128, offset: 12096)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !296, file: !297, line: 1012, baseType: !102, size: 128, offset: 12224)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !296, file: !297, line: 1014, baseType: !990, size: 64, offset: 12352)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !296, file: !297, line: 1017, baseType: !2432, size: 64, offset: 12416)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !296, file: !297, line: 1020, baseType: !2432, size: 64, offset: 12480)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !296, file: !297, line: 1023, baseType: !25, size: 64, offset: 12544)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !296, file: !297, line: 1025, baseType: !363, size: 64, offset: 12608)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !296, file: !297, line: 1026, baseType: !363, size: 64, offset: 12672)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !296, file: !297, line: 1031, baseType: !363, size: 64, offset: 12736)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !296, file: !297, line: 1032, baseType: !3887, size: 192, offset: 12800)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !296, file: !297, line: 1041, baseType: !44, size: 64, offset: 12992)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !296, file: !297, line: 1042, baseType: !44, size: 64, offset: 13056)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !296, file: !297, line: 1045, baseType: !363, size: 64, offset: 13120)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !296, file: !297, line: 1048, baseType: !363, size: 64, offset: 13184)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !296, file: !297, line: 1051, baseType: !44, size: 64, offset: 13248)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !296, file: !297, line: 1052, baseType: !44, size: 64, offset: 13312)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !296, file: !297, line: 1055, baseType: !5054, size: 640, offset: 13376)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5055, line: 132, size: 640, elements: !5056)
!5055 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5056 = !{!5057, !5063, !5064}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5054, file: !5055, line: 133, baseType: !5058, size: 576)
!5058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5059, size: 576, elements: !704)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5055, line: 117, size: 192, elements: !5060)
!5060 = !{!5061, !5062}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5059, file: !5055, line: 118, baseType: !363, size: 64)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5059, file: !5055, line: 119, baseType: !492, size: 128, offset: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5054, file: !5055, line: 134, baseType: !13, size: 32, offset: 576)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5054, file: !5055, line: 135, baseType: !13, size: 32, offset: 608)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !296, file: !297, line: 1058, baseType: !5066, size: 448, offset: 14016)
!5066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5055, line: 144, size: 448, elements: !5067)
!5067 = !{!5068, !5069, !5070}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5066, file: !5055, line: 145, baseType: !648, size: 128, align: 64)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5066, file: !5055, line: 146, baseType: !668, size: 256, offset: 128)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5066, file: !5055, line: 147, baseType: !13, size: 32, offset: 384)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !296, file: !297, line: 1064, baseType: !1064, size: 64, offset: 14464)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !296, file: !297, line: 1067, baseType: !1064, size: 64, offset: 14528)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !296, file: !297, line: 1070, baseType: !1064, size: 64, offset: 14592)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !296, file: !297, line: 1074, baseType: !829, size: 64, offset: 14656)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !296, file: !297, line: 1084, baseType: !5076, size: 128, offset: 14720)
!5076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !4475)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !296, file: !297, line: 1086, baseType: !5078, size: 64, offset: 14848)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !297, line: 55, flags: DIFlagFwdDecl)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !296, file: !297, line: 1089, baseType: !5081, size: 64, offset: 14912)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5082, line: 12, size: 64, elements: !5083)
!5082 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5083 = !{!5084}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5081, file: !5082, line: 13, baseType: !5085, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5082, line: 8, flags: DIFlagFwdDecl)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !296, file: !297, line: 1090, baseType: !5088, size: 128, offset: 14976)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5089, line: 13, size: 128, elements: !5090)
!5089 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5090 = !{!5091}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5088, file: !5089, line: 14, baseType: !102, size: 128)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !296, file: !297, line: 1097, baseType: !5093, size: 64, offset: 15104)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !297, line: 50, flags: DIFlagFwdDecl)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !296, file: !297, line: 1100, baseType: !5096, size: 64, offset: 15168)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !297, line: 1100, flags: DIFlagFwdDecl)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !296, file: !297, line: 1103, baseType: !5099, size: 64, offset: 15232)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !297, line: 53, flags: DIFlagFwdDecl)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !296, file: !297, line: 1107, baseType: !5102, size: 64, offset: 15296)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5104, line: 31, size: 576, elements: !5105)
!5104 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5105 = !{!5106, !5107, !5110, !5113, !5116, !5117, !5120, !5123, !5124}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5103, file: !5104, line: 32, baseType: !312, size: 32)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5103, file: !5104, line: 33, baseType: !5108, size: 64, offset: 64)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5104, line: 9, flags: DIFlagFwdDecl)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5103, file: !5104, line: 34, baseType: !5111, size: 64, offset: 128)
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5104, line: 10, flags: DIFlagFwdDecl)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5103, file: !5104, line: 35, baseType: !5114, size: 64, offset: 192)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5104, line: 8, flags: DIFlagFwdDecl)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5103, file: !5104, line: 36, baseType: !736, size: 64, offset: 256)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5103, file: !5104, line: 37, baseType: !5118, size: 64, offset: 320)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !831, line: 34, flags: DIFlagFwdDecl)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5103, file: !5104, line: 38, baseType: !5121, size: 64, offset: 384)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5122, size: 64)
!5122 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5104, line: 38, flags: DIFlagFwdDecl)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5103, file: !5104, line: 39, baseType: !5121, size: 64, offset: 448)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5103, file: !5104, line: 40, baseType: !5125, size: 64, offset: 512)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5127, line: 771, size: 384, elements: !5128)
!5127 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5128 = !{!5129, !5130, !5131, !5132}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5126, file: !5127, line: 772, baseType: !813, size: 192)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5126, file: !5127, line: 773, baseType: !767, size: 64, offset: 192)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5126, file: !5127, line: 774, baseType: !1035, size: 64, offset: 256)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5126, file: !5127, line: 775, baseType: !3957, size: 64, offset: 320)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !296, file: !297, line: 1110, baseType: !5134, size: 64, offset: 15360)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5136, line: 93, size: 8768, elements: !5137)
!5136 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5137 = !{!5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5186, !5195, !5196, !5198, !5199, !5200, !5203, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5241, !5242, !5249, !5259, !5321, !5322, !5325, !5326, !5327, !5328, !5329, !5330}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5135, file: !5136, line: 94, baseType: !312, size: 32)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5135, file: !5136, line: 95, baseType: !54, size: 32, offset: 32)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5135, file: !5136, line: 96, baseType: !27, size: 32, offset: 64)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5135, file: !5136, line: 97, baseType: !27, size: 32, offset: 96)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5135, file: !5136, line: 98, baseType: !102, size: 128, offset: 128)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5135, file: !5136, line: 100, baseType: !59, size: 192, offset: 256)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5135, file: !5136, line: 103, baseType: !295, size: 64, offset: 448)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5135, file: !5136, line: 106, baseType: !5146, size: 192, offset: 512)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5147, line: 32, size: 192, elements: !5148)
!5147 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5148 = !{!5149, !5150}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5146, file: !5147, line: 33, baseType: !102, size: 128)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5146, file: !5147, line: 34, baseType: !5151, size: 64, offset: 128)
!5151 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5152, line: 25, baseType: !5153)
!5152 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5152, line: 23, size: 64, elements: !5154)
!5154 = !{!5155}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5153, file: !5152, line: 24, baseType: !563, size: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5135, file: !5136, line: 109, baseType: !716, size: 64, offset: 704)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5135, file: !5136, line: 112, baseType: !27, size: 32, offset: 768)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5135, file: !5136, line: 114, baseType: !27, size: 32, offset: 800)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5135, file: !5136, line: 115, baseType: !295, size: 64, offset: 832)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5135, file: !5136, line: 118, baseType: !27, size: 32, offset: 896)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5135, file: !5136, line: 119, baseType: !13, size: 32, offset: 928)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5135, file: !5136, line: 121, baseType: !5163, size: 64, offset: 960)
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5136, line: 80, size: 448, elements: !5165)
!5165 = !{!5166, !5167, !5173}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5164, file: !5136, line: 81, baseType: !54, size: 32)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5164, file: !5136, line: 82, baseType: !5168, size: 128, offset: 64)
!5168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5136, line: 75, size: 128, elements: !5169)
!5169 = !{!5170, !5171}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5168, file: !5136, line: 76, baseType: !295, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5168, file: !5136, line: 77, baseType: !5172, size: 64, offset: 64)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5164, file: !5136, line: 83, baseType: !991, size: 256, offset: 192)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5135, file: !5136, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5135, file: !5136, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5135, file: !5136, line: 138, baseType: !13, size: 32, offset: 1056)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5135, file: !5136, line: 139, baseType: !102, size: 128, offset: 1088)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5135, file: !5136, line: 142, baseType: !430, size: 512, offset: 1216)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5135, file: !5136, line: 143, baseType: !438, size: 64, offset: 1728)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5135, file: !5136, line: 150, baseType: !5181, size: 256, offset: 1792)
!5181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5182, size: 256, elements: !2422)
!5182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5136, line: 38, size: 128, elements: !5183)
!5183 = !{!5184, !5185}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5182, file: !5136, line: 39, baseType: !363, size: 64)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5182, file: !5136, line: 40, baseType: !363, size: 64, offset: 64)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5135, file: !5136, line: 156, baseType: !5187, size: 192, offset: 2048)
!5187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5136, line: 66, size: 192, elements: !5188)
!5188 = !{!5189}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5187, file: !5136, line: 67, baseType: !5190, size: 192)
!5190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5136, line: 47, size: 192, elements: !5191)
!5191 = !{!5192, !5193, !5194}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5190, file: !5136, line: 48, baseType: !663, size: 64)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5190, file: !5136, line: 49, baseType: !663, size: 64, offset: 64)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5190, file: !5136, line: 50, baseType: !663, size: 64, offset: 128)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5135, file: !5136, line: 160, baseType: !5054, size: 640, offset: 2240)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5135, file: !5136, line: 163, baseType: !5197, size: 256, offset: 2880)
!5197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 256, elements: !725)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5135, file: !5136, line: 169, baseType: !708, size: 64, offset: 3136)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5135, file: !5136, line: 172, baseType: !27, size: 32, offset: 3200)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5135, file: !5136, line: 174, baseType: !5201, size: 64, offset: 3264)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5136, line: 174, flags: DIFlagFwdDecl)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5135, file: !5136, line: 185, baseType: !5204, size: 64, offset: 3328)
!5204 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !482, line: 860, baseType: !5205)
!5205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !482, line: 853, size: 64, elements: !5206)
!5206 = !{!5207, !5208}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5205, file: !482, line: 858, baseType: !1166, size: 32)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5205, file: !482, line: 859, baseType: !64, size: 32, offset: 32)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5135, file: !5136, line: 186, baseType: !363, size: 64, offset: 3392)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5135, file: !5136, line: 186, baseType: !363, size: 64, offset: 3456)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5135, file: !5136, line: 186, baseType: !363, size: 64, offset: 3520)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5135, file: !5136, line: 186, baseType: !363, size: 64, offset: 3584)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5135, file: !5136, line: 187, baseType: !363, size: 64, offset: 3648)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5135, file: !5136, line: 188, baseType: !363, size: 64, offset: 3712)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5135, file: !5136, line: 189, baseType: !3887, size: 192, offset: 3776)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5135, file: !5136, line: 190, baseType: !44, size: 64, offset: 3968)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5135, file: !5136, line: 190, baseType: !44, size: 64, offset: 4032)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5135, file: !5136, line: 190, baseType: !44, size: 64, offset: 4096)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5135, file: !5136, line: 190, baseType: !44, size: 64, offset: 4160)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5135, file: !5136, line: 191, baseType: !44, size: 64, offset: 4224)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5135, file: !5136, line: 191, baseType: !44, size: 64, offset: 4288)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5135, file: !5136, line: 191, baseType: !44, size: 64, offset: 4352)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5135, file: !5136, line: 191, baseType: !44, size: 64, offset: 4416)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5135, file: !5136, line: 192, baseType: !44, size: 64, offset: 4480)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5135, file: !5136, line: 192, baseType: !44, size: 64, offset: 4544)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5135, file: !5136, line: 192, baseType: !44, size: 64, offset: 4608)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5135, file: !5136, line: 192, baseType: !44, size: 64, offset: 4672)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5135, file: !5136, line: 193, baseType: !44, size: 64, offset: 4736)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5135, file: !5136, line: 193, baseType: !44, size: 64, offset: 4800)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5135, file: !5136, line: 194, baseType: !5231, size: 448, offset: 4864)
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5232, line: 12, size: 448, elements: !5233)
!5232 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5233 = !{!5234, !5235, !5236, !5237, !5238, !5239, !5240}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5231, file: !5232, line: 15, baseType: !363, size: 64)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5231, file: !5232, line: 17, baseType: !363, size: 64, offset: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5231, file: !5232, line: 19, baseType: !363, size: 64, offset: 128)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5231, file: !5232, line: 21, baseType: !363, size: 64, offset: 192)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5231, file: !5232, line: 29, baseType: !363, size: 64, offset: 256)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5231, file: !5232, line: 35, baseType: !363, size: 64, offset: 320)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5231, file: !5232, line: 44, baseType: !363, size: 64, offset: 384)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5135, file: !5136, line: 202, baseType: !365, size: 64, offset: 5312)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5135, file: !5136, line: 213, baseType: !5243, size: 2048, offset: 5376)
!5243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5244, size: 2048, elements: !4475)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5245, line: 43, size: 128, elements: !5246)
!5245 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5246 = !{!5247, !5248}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5244, file: !5245, line: 44, baseType: !43, size: 64)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5244, file: !5245, line: 45, baseType: !43, size: 64, offset: 64)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5135, file: !5136, line: 216, baseType: !5250, size: 448, offset: 7424)
!5250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5136, line: 30, size: 448, elements: !5251)
!5251 = !{!5252, !5253, !5254, !5255, !5256, !5257, !5258}
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5250, file: !5136, line: 31, baseType: !27, size: 32)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5250, file: !5136, line: 32, baseType: !1050, size: 64, offset: 64)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5250, file: !5136, line: 33, baseType: !44, size: 64, offset: 128)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5250, file: !5136, line: 34, baseType: !363, size: 64, offset: 192)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5250, file: !5136, line: 34, baseType: !363, size: 64, offset: 256)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5250, file: !5136, line: 35, baseType: !44, size: 64, offset: 320)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5250, file: !5136, line: 35, baseType: !44, size: 64, offset: 384)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5135, file: !5136, line: 219, baseType: !5260, size: 64, offset: 7872)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5262, line: 41, size: 3456, elements: !5263)
!5262 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5263 = !{!5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5261, file: !5262, line: 47, baseType: !99, size: 16)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5261, file: !5262, line: 48, baseType: !307, size: 32, offset: 32)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5261, file: !5262, line: 54, baseType: !90, size: 8, offset: 64)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5261, file: !5262, line: 55, baseType: !90, size: 8, offset: 72)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5261, file: !5262, line: 73, baseType: !364, size: 64, align: 64, offset: 128)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5261, file: !5262, line: 74, baseType: !364, size: 64, offset: 192)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5261, file: !5262, line: 81, baseType: !364, size: 64, offset: 256)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5261, file: !5262, line: 82, baseType: !364, size: 64, offset: 320)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5261, file: !5262, line: 85, baseType: !364, size: 64, offset: 384)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5261, file: !5262, line: 86, baseType: !364, size: 64, offset: 448)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5261, file: !5262, line: 94, baseType: !364, size: 64, offset: 512)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5261, file: !5262, line: 102, baseType: !364, size: 64, offset: 576)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5261, file: !5262, line: 107, baseType: !4465, size: 256, offset: 640)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5261, file: !5262, line: 108, baseType: !90, size: 8, align: 64, offset: 896)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5261, file: !5262, line: 110, baseType: !5279, size: 24, offset: 904)
!5279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 24, elements: !704)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5261, file: !5262, line: 111, baseType: !307, size: 32, align: 64, offset: 960)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5261, file: !5262, line: 113, baseType: !307, size: 32, offset: 992)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5261, file: !5262, line: 114, baseType: !307, size: 32, offset: 1024)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5261, file: !5262, line: 115, baseType: !307, size: 32, offset: 1056)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5261, file: !5262, line: 117, baseType: !307, size: 32, offset: 1088)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5261, file: !5262, line: 118, baseType: !364, size: 64, align: 64, offset: 1152)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5261, file: !5262, line: 120, baseType: !364, size: 64, offset: 1216)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5261, file: !5262, line: 121, baseType: !364, size: 64, offset: 1280)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5261, file: !5262, line: 122, baseType: !364, size: 64, offset: 1344)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5261, file: !5262, line: 123, baseType: !364, size: 64, offset: 1408)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5261, file: !5262, line: 133, baseType: !364, size: 64, offset: 1472)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5261, file: !5262, line: 137, baseType: !364, size: 64, offset: 1536)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5261, file: !5262, line: 142, baseType: !364, size: 64, offset: 1600)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5261, file: !5262, line: 143, baseType: !364, size: 64, offset: 1664)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5261, file: !5262, line: 146, baseType: !364, size: 64, offset: 1728)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5261, file: !5262, line: 147, baseType: !364, size: 64, offset: 1792)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5261, file: !5262, line: 148, baseType: !364, size: 64, offset: 1856)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5261, file: !5262, line: 149, baseType: !364, size: 64, offset: 1920)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5261, file: !5262, line: 154, baseType: !364, size: 64, offset: 1984)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5261, file: !5262, line: 155, baseType: !364, size: 64, offset: 2048)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5261, file: !5262, line: 156, baseType: !364, size: 64, offset: 2112)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5261, file: !5262, line: 158, baseType: !364, size: 64, offset: 2176)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5261, file: !5262, line: 159, baseType: !364, size: 64, offset: 2240)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5261, file: !5262, line: 162, baseType: !364, size: 64, offset: 2304)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5261, file: !5262, line: 163, baseType: !364, size: 64, offset: 2368)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5261, file: !5262, line: 164, baseType: !364, size: 64, offset: 2432)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5261, file: !5262, line: 167, baseType: !364, size: 64, offset: 2496)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5261, file: !5262, line: 168, baseType: !364, size: 64, offset: 2560)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5261, file: !5262, line: 171, baseType: !364, size: 64, offset: 2624)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5261, file: !5262, line: 172, baseType: !364, size: 64, offset: 2688)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5261, file: !5262, line: 175, baseType: !364, size: 64, offset: 2752)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5261, file: !5262, line: 178, baseType: !364, size: 64, offset: 2816)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5261, file: !5262, line: 179, baseType: !364, size: 64, offset: 2880)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5261, file: !5262, line: 182, baseType: !307, size: 32, offset: 2944)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5261, file: !5262, line: 186, baseType: !364, size: 64, align: 64, offset: 3008)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5261, file: !5262, line: 194, baseType: !364, size: 64, offset: 3072)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5261, file: !5262, line: 195, baseType: !364, size: 64, offset: 3136)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5261, file: !5262, line: 199, baseType: !364, size: 64, offset: 3200)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5261, file: !5262, line: 200, baseType: !364, size: 64, offset: 3264)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5261, file: !5262, line: 203, baseType: !364, size: 64, offset: 3328)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5261, file: !5262, line: 204, baseType: !364, size: 64, offset: 3392)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5135, file: !5136, line: 222, baseType: !13, size: 32, offset: 7936)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5135, file: !5136, line: 223, baseType: !5323, size: 64, offset: 8000)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5136, line: 223, flags: DIFlagFwdDecl)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5135, file: !5136, line: 230, baseType: !825, size: 8, offset: 8064)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5135, file: !5136, line: 231, baseType: !873, size: 16, offset: 8080)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5135, file: !5136, line: 232, baseType: !873, size: 16, offset: 8096)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5135, file: !5136, line: 234, baseType: !612, size: 64, offset: 8128)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5135, file: !5136, line: 237, baseType: !668, size: 256, offset: 8192)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5135, file: !5136, line: 243, baseType: !845, size: 320, offset: 8448)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !296, file: !297, line: 1111, baseType: !5332, size: 64, offset: 15424)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!5333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5136, line: 20, size: 16640, elements: !5334)
!5334 = !{!5335, !5336, !5337, !5338}
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5333, file: !5136, line: 21, baseType: !64, size: 32)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5333, file: !5136, line: 22, baseType: !312, size: 32, offset: 32)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5333, file: !5136, line: 23, baseType: !59, size: 192, offset: 64)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5333, file: !5136, line: 24, baseType: !5339, size: 16384, offset: 256)
!5339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5340, size: 16384, elements: !1485)
!5340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5147, line: 51, size: 256, elements: !5341)
!5341 = !{!5342}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5340, file: !5147, line: 52, baseType: !5343, size: 256)
!5343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5147, line: 37, size: 256, elements: !5344)
!5344 = !{!5345, !5352, !5353, !5357}
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5343, file: !5147, line: 39, baseType: !5346, size: 64)
!5346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5347, line: 83, baseType: !5348)
!5347 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5349, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5347, line: 82, baseType: !5350)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{null, !27}
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5343, file: !5147, line: 40, baseType: !44, size: 64, offset: 64)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5343, file: !5147, line: 46, baseType: !5354, size: 64, offset: 128)
!5354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5347, line: 86, baseType: !5355)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5347, line: 85, baseType: !2708)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5343, file: !5147, line: 48, baseType: !5151, size: 64, offset: 192)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !296, file: !297, line: 1112, baseType: !5151, size: 64, offset: 15488)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !296, file: !297, line: 1113, baseType: !5151, size: 64, offset: 15552)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !296, file: !297, line: 1115, baseType: !5151, size: 64, offset: 15616)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !296, file: !297, line: 1116, baseType: !5146, size: 192, offset: 15680)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !296, file: !297, line: 1117, baseType: !44, size: 64, offset: 15872)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !296, file: !297, line: 1118, baseType: !40, size: 64, offset: 15936)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !296, file: !297, line: 1119, baseType: !13, size: 32, offset: 16000)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !296, file: !297, line: 1121, baseType: !651, size: 64, offset: 16064)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !296, file: !297, line: 1125, baseType: !5367, size: 64, offset: 16128)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !297, line: 43, flags: DIFlagFwdDecl)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !296, file: !297, line: 1127, baseType: !798, size: 32, offset: 16192)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !296, file: !297, line: 1128, baseType: !13, size: 32, offset: 16224)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !296, file: !297, line: 1130, baseType: !5372, size: 128, offset: 16256)
!5372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5373, line: 37, size: 128, elements: !5374)
!5373 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5374 = !{!5375, !5376, !5377}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5372, file: !5373, line: 38, baseType: !27, size: 32)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5372, file: !5373, line: 39, baseType: !54, size: 32, offset: 32)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5372, file: !5373, line: 40, baseType: !5378, size: 64, offset: 64)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5373, line: 24, flags: DIFlagFwdDecl)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !296, file: !297, line: 1131, baseType: !5381, size: 256, offset: 16384)
!5381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5382, line: 12, size: 256, elements: !5383)
!5382 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5383 = !{!5384, !5385, !5386, !5387}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5381, file: !5382, line: 13, baseType: !913, size: 64)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5381, file: !5382, line: 14, baseType: !44, size: 64, offset: 64)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5381, file: !5382, line: 15, baseType: !44, size: 64, offset: 128)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5381, file: !5382, line: 16, baseType: !825, size: 8, offset: 192)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !296, file: !297, line: 1134, baseType: !363, size: 64, offset: 16640)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !296, file: !297, line: 1135, baseType: !363, size: 64, offset: 16704)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !296, file: !297, line: 1138, baseType: !64, size: 32, offset: 16768)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !296, file: !297, line: 1141, baseType: !455, size: 32, offset: 16800)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !296, file: !297, line: 1143, baseType: !5393, size: 64, offset: 16832)
!5393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !297, line: 735, size: 64, elements: !5394)
!5394 = !{!5395}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5393, file: !297, line: 736, baseType: !5396, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !296, file: !297, line: 1147, baseType: !495, size: 128, offset: 16896)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !296, file: !297, line: 1149, baseType: !295, size: 64, offset: 17024)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !296, file: !297, line: 1151, baseType: !5400, size: 64, offset: 17088)
!5400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5401, size: 64)
!5401 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !297, line: 1151, flags: DIFlagFwdDecl)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !296, file: !297, line: 1188, baseType: !25, size: 64, offset: 17152)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !296, file: !297, line: 1191, baseType: !5404, size: 64, offset: 17216)
!5404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5405, size: 64)
!5405 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !297, line: 44, flags: DIFlagFwdDecl)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !296, file: !297, line: 1194, baseType: !5407, size: 64, offset: 17280)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5408 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !297, line: 45, flags: DIFlagFwdDecl)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !296, file: !297, line: 1197, baseType: !5410, size: 64, offset: 17344)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !297, line: 61, flags: DIFlagFwdDecl)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !296, file: !297, line: 1199, baseType: !5413, size: 64, offset: 17408)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5415, line: 99, size: 128, elements: !5416)
!5415 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5416 = !{!5417, !5418, !5419}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5414, file: !5415, line: 100, baseType: !661, size: 64)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5414, file: !5415, line: 101, baseType: !54, size: 32, offset: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5414, file: !5415, line: 103, baseType: !31, size: 16, offset: 96)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !296, file: !297, line: 1202, baseType: !5421, size: 64, offset: 17472)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !297, line: 48, flags: DIFlagFwdDecl)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !296, file: !297, line: 1205, baseType: !44, size: 64, offset: 17536)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !296, file: !297, line: 1206, baseType: !5425, size: 64, offset: 17600)
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5426, size: 64)
!5426 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5147, line: 14, baseType: !5427)
!5427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5147, line: 12, size: 384, elements: !5428)
!5428 = !{!5429}
!5429 = !DIDerivedType(tag: DW_TAG_member, scope: !5427, file: !5147, line: 13, baseType: !5430, size: 384)
!5430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5427, file: !5147, line: 13, size: 384, elements: !5431)
!5431 = !{!5432, !5433, !5434, !5435}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5430, file: !5147, line: 13, baseType: !27, size: 32)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5430, file: !5147, line: 13, baseType: !27, size: 32, offset: 32)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5430, file: !5147, line: 13, baseType: !27, size: 32, offset: 64)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5430, file: !5147, line: 13, baseType: !5436, size: 256, offset: 128)
!5436 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5437, line: 37, size: 256, elements: !5438)
!5437 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5438 = !{!5439, !5444, !5457, !5463, !5472, !5499, !5504}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5436, file: !5437, line: 42, baseType: !5440, size: 64)
!5440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5436, file: !5437, line: 39, size: 64, elements: !5441)
!5441 = !{!5442, !5443}
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5440, file: !5437, line: 40, baseType: !5024, size: 32)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5440, file: !5437, line: 41, baseType: !804, size: 32, offset: 32)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5436, file: !5437, line: 50, baseType: !5445, size: 192)
!5445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5436, file: !5437, line: 45, size: 192, elements: !5446)
!5446 = !{!5447, !5449, !5450, !5456}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5445, file: !5437, line: 46, baseType: !5448, size: 32)
!5448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !42, line: 95, baseType: !27)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5445, file: !5437, line: 47, baseType: !27, size: 32, offset: 32)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5445, file: !5437, line: 48, baseType: !5451, size: 64, offset: 64)
!5451 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5437, line: 11, baseType: !5452)
!5452 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5437, line: 8, size: 64, elements: !5453)
!5453 = !{!5454, !5455}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5452, file: !5437, line: 9, baseType: !27, size: 32)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5452, file: !5437, line: 10, baseType: !25, size: 64)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5445, file: !5437, line: 49, baseType: !27, size: 32, offset: 128)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5436, file: !5437, line: 57, baseType: !5458, size: 128)
!5458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5436, file: !5437, line: 53, size: 128, elements: !5459)
!5459 = !{!5460, !5461, !5462}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5458, file: !5437, line: 54, baseType: !5024, size: 32)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5458, file: !5437, line: 55, baseType: !804, size: 32, offset: 32)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5458, file: !5437, line: 56, baseType: !5451, size: 64, offset: 64)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5436, file: !5437, line: 66, baseType: !5464, size: 256)
!5464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5436, file: !5437, line: 60, size: 256, elements: !5465)
!5465 = !{!5466, !5467, !5468, !5469, !5471}
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5464, file: !5437, line: 61, baseType: !5024, size: 32)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5464, file: !5437, line: 62, baseType: !804, size: 32, offset: 32)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5464, file: !5437, line: 63, baseType: !27, size: 32, offset: 64)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5464, file: !5437, line: 64, baseType: !5470, size: 64, offset: 128)
!5470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !42, line: 94, baseType: !1349)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5464, file: !5437, line: 65, baseType: !5470, size: 64, offset: 192)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5436, file: !5437, line: 105, baseType: !5473, size: 256)
!5473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5436, file: !5437, line: 69, size: 256, elements: !5474)
!5474 = !{!5475, !5476}
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5473, file: !5437, line: 70, baseType: !25, size: 64)
!5476 = !DIDerivedType(tag: DW_TAG_member, scope: !5473, file: !5437, line: 79, baseType: !5477, size: 192, offset: 64)
!5477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5473, file: !5437, line: 79, size: 192, elements: !5478)
!5478 = !{!5479, !5480, !5481, !5488, !5493}
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5477, file: !5437, line: 81, baseType: !27, size: 32)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5477, file: !5437, line: 86, baseType: !873, size: 16)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5477, file: !5437, line: 92, baseType: !5482, size: 192)
!5482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5477, file: !5437, line: 88, size: 192, elements: !5483)
!5483 = !{!5484, !5486, !5487}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5482, file: !5437, line: 89, baseType: !5485, size: 64)
!5485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !474)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5482, file: !5437, line: 90, baseType: !25, size: 64, offset: 64)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5482, file: !5437, line: 91, baseType: !25, size: 64, offset: 128)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5477, file: !5437, line: 97, baseType: !5489, size: 96)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5477, file: !5437, line: 94, size: 96, elements: !5490)
!5490 = !{!5491, !5492}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5489, file: !5437, line: 95, baseType: !5485, size: 64)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5489, file: !5437, line: 96, baseType: !307, size: 32, offset: 64)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5477, file: !5437, line: 103, baseType: !5494, size: 128)
!5494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5477, file: !5437, line: 99, size: 128, elements: !5495)
!5495 = !{!5496, !5497, !5498}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5494, file: !5437, line: 100, baseType: !44, size: 64)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5494, file: !5437, line: 101, baseType: !307, size: 32, offset: 64)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5494, file: !5437, line: 102, baseType: !307, size: 32, offset: 96)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5436, file: !5437, line: 111, baseType: !5500, size: 128)
!5500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5436, file: !5437, line: 108, size: 128, elements: !5501)
!5501 = !{!5502, !5503}
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5500, file: !5437, line: 109, baseType: !1050, size: 64)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5500, file: !5437, line: 110, baseType: !27, size: 32, offset: 64)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5436, file: !5437, line: 118, baseType: !5505, size: 128)
!5505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5436, file: !5437, line: 114, size: 128, elements: !5506)
!5506 = !{!5507, !5508, !5509}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5505, file: !5437, line: 115, baseType: !25, size: 64)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5505, file: !5437, line: 116, baseType: !27, size: 32, offset: 64)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5505, file: !5437, line: 117, baseType: !13, size: 32, offset: 96)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !296, file: !297, line: 1208, baseType: !5231, size: 448, offset: 17664)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !296, file: !297, line: 1215, baseType: !363, size: 64, offset: 18112)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !296, file: !297, line: 1217, baseType: !363, size: 64, offset: 18176)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !296, file: !297, line: 1219, baseType: !363, size: 64, offset: 18240)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !296, file: !297, line: 1223, baseType: !5515, size: 64, offset: 18304)
!5515 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5516, line: 99, baseType: !5517)
!5516 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5516, line: 99, size: 64, elements: !5518)
!5518 = !{!5519}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5517, file: !5516, line: 99, baseType: !563, size: 64)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !296, file: !297, line: 1225, baseType: !1166, size: 32, offset: 18368)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !296, file: !297, line: 1226, baseType: !27, size: 32, offset: 18400)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !296, file: !297, line: 1227, baseType: !27, size: 32, offset: 18432)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !296, file: !297, line: 1231, baseType: !3957, size: 64, offset: 18496)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !296, file: !297, line: 1233, baseType: !102, size: 128, offset: 18560)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !296, file: !297, line: 1240, baseType: !5526, size: 64, offset: 18688)
!5526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5527, size: 64)
!5527 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !297, line: 62, flags: DIFlagFwdDecl)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !296, file: !297, line: 1242, baseType: !5529, size: 64, offset: 18752)
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5530, size: 64)
!5530 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !297, line: 1242, flags: DIFlagFwdDecl)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !296, file: !297, line: 1244, baseType: !102, size: 128, offset: 18816)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !296, file: !297, line: 1245, baseType: !5533, size: 64, offset: 18944)
!5533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5534, size: 64)
!5534 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !297, line: 51, flags: DIFlagFwdDecl)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !296, file: !297, line: 1246, baseType: !668, size: 256, offset: 19008)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !296, file: !297, line: 1247, baseType: !13, size: 32, offset: 19264)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !296, file: !297, line: 1250, baseType: !3207, size: 64, offset: 19328)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !296, file: !297, line: 1251, baseType: !668, size: 256, offset: 19392)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !296, file: !297, line: 1252, baseType: !102, size: 128, offset: 19648)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !296, file: !297, line: 1259, baseType: !1769, size: 64, offset: 19776)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !296, file: !297, line: 1260, baseType: !873, size: 16, offset: 19840)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !296, file: !297, line: 1261, baseType: !873, size: 16, offset: 19856)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !296, file: !297, line: 1314, baseType: !5544, size: 64, offset: 19904)
!5544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5545, size: 64)
!5545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5546, line: 62, size: 256, align: 256, elements: !5547)
!5546 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5547 = !{!5548, !5549, !5550, !5551, !5552, !5553, !5554}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5545, file: !5546, line: 75, baseType: !307, size: 32)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5545, file: !5546, line: 90, baseType: !307, size: 32, offset: 32)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5545, file: !5546, line: 112, baseType: !364, size: 64, offset: 64)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5545, file: !5546, line: 132, baseType: !307, size: 32, offset: 128)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5545, file: !5546, line: 140, baseType: !307, size: 32, offset: 160)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5545, file: !5546, line: 149, baseType: !307, size: 32, offset: 192)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5545, file: !5546, line: 154, baseType: !5555, offset: 224)
!5555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1057)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !296, file: !297, line: 1315, baseType: !306, size: 32, offset: 19968)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !296, file: !297, line: 1316, baseType: !306, size: 32, offset: 20000)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !296, file: !297, line: 1321, baseType: !44, size: 64, offset: 20032)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !296, file: !297, line: 1325, baseType: !27, size: 32, offset: 20096)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !296, file: !297, line: 1326, baseType: !27, size: 32, offset: 20128)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !296, file: !297, line: 1327, baseType: !27, size: 32, offset: 20160)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !296, file: !297, line: 1328, baseType: !27, size: 32, offset: 20192)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !296, file: !297, line: 1329, baseType: !648, size: 128, align: 64, offset: 20224)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !296, file: !297, line: 1332, baseType: !5565, size: 128, offset: 20352)
!5565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5566, line: 51, size: 128, elements: !5567)
!5566 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5567 = !{!5568, !5573, !5574}
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5565, file: !5566, line: 60, baseType: !5569, size: 64)
!5569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5570, line: 7, size: 64, elements: !5571)
!5570 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5571 = !{!5572}
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5569, file: !5570, line: 12, baseType: !560, size: 64)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5565, file: !5566, line: 63, baseType: !825, size: 8, offset: 64)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5565, file: !5566, line: 70, baseType: !825, size: 8, offset: 72)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !296, file: !297, line: 1335, baseType: !4712, size: 64, offset: 20480)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !296, file: !297, line: 1337, baseType: !5577, size: 128, offset: 20544)
!5577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5566, line: 39, size: 128, elements: !5578)
!5578 = !{!5579, !5580, !5581}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5577, file: !5566, line: 40, baseType: !1566, size: 64)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5577, file: !5566, line: 42, baseType: !307, size: 32, offset: 64)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5577, file: !5566, line: 43, baseType: !307, size: 32, offset: 96)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !296, file: !297, line: 1340, baseType: !5583, size: 64, offset: 20672)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 64)
!5584 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !297, line: 69, flags: DIFlagFwdDecl)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !296, file: !297, line: 1351, baseType: !27, size: 32, offset: 20736)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !296, file: !297, line: 1352, baseType: !27, size: 32, offset: 20768)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !296, file: !297, line: 1354, baseType: !44, size: 64, offset: 20800)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !296, file: !297, line: 1364, baseType: !363, size: 64, offset: 20864)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !296, file: !297, line: 1365, baseType: !363, size: 64, offset: 20928)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !296, file: !297, line: 1412, baseType: !44, size: 64, offset: 20992)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !296, file: !297, line: 1453, baseType: !5592, size: 64, offset: 21056)
!5592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5593, size: 64)
!5593 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !297, line: 1453, flags: DIFlagFwdDecl)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !296, file: !297, line: 1457, baseType: !5595, size: 64, offset: 21120)
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5596, size: 64)
!5596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !253, line: 61, size: 576, elements: !5597)
!5597 = !{!5598, !5599, !5618, !5621, !5622, !5655, !5665}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5596, file: !253, line: 62, baseType: !252, size: 32)
!5599 = !DIDerivedType(tag: DW_TAG_member, scope: !5596, file: !253, line: 64, baseType: !5600, size: 192, offset: 64)
!5600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5596, file: !253, line: 64, size: 192, elements: !5601)
!5601 = !{!5602, !5613}
!5602 = !DIDerivedType(tag: DW_TAG_member, scope: !5600, file: !253, line: 65, baseType: !5603, size: 192)
!5603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5600, file: !253, line: 65, size: 192, elements: !5604)
!5604 = !{!5605, !5612}
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5603, file: !253, line: 66, baseType: !5606, size: 128)
!5606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5607, line: 50, size: 128, elements: !5608)
!5607 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5608 = !{!5609, !5610, !5611}
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5606, file: !5607, line: 52, baseType: !44, size: 64)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5606, file: !5607, line: 54, baseType: !13, size: 32, offset: 64)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5606, file: !5607, line: 55, baseType: !13, size: 32, offset: 96)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5603, file: !253, line: 67, baseType: !44, size: 64, offset: 128)
!5613 = !DIDerivedType(tag: DW_TAG_member, scope: !5600, file: !253, line: 70, baseType: !5614, size: 192)
!5614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5600, file: !253, line: 70, size: 192, elements: !5615)
!5615 = !{!5616, !5617}
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5614, file: !253, line: 71, baseType: !648, size: 128, align: 64)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5614, file: !253, line: 72, baseType: !44, size: 64, offset: 128)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5596, file: !253, line: 76, baseType: !5619, size: 64, offset: 256)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5620 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !253, line: 76, flags: DIFlagFwdDecl)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5596, file: !253, line: 77, baseType: !44, size: 64, offset: 320)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5596, file: !253, line: 79, baseType: !5623, size: 64, offset: 384)
!5623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5624, size: 64)
!5624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5607, line: 25, size: 256, elements: !5625)
!5625 = !{!5626, !5632, !5636}
!5626 = !DIDerivedType(tag: DW_TAG_member, scope: !5624, file: !5607, line: 26, baseType: !5627, size: 128)
!5627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5624, file: !5607, line: 26, size: 128, elements: !5628)
!5628 = !{!5629, !5631}
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5627, file: !5607, line: 27, baseType: !5630, size: 128)
!5630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !4475)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5627, file: !5607, line: 28, baseType: !5630, size: 128)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5624, file: !5607, line: 31, baseType: !5633, size: 64, offset: 128)
!5633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5634, size: 64)
!5634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5635)
!5635 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5607, line: 23, flags: DIFlagFwdDecl)
!5636 = !DIDerivedType(tag: DW_TAG_member, scope: !5624, file: !5607, line: 33, baseType: !5637, size: 64, offset: 192)
!5637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5624, file: !5607, line: 33, size: 64, elements: !5638)
!5638 = !{!5639, !5645, !5650}
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5637, file: !5607, line: 38, baseType: !5640, size: 64)
!5640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5637, file: !5607, line: 34, size: 64, elements: !5641)
!5641 = !{!5642, !5643, !5644}
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5640, file: !5607, line: 35, baseType: !837, size: 32)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5640, file: !5607, line: 36, baseType: !88, size: 8, offset: 32)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5640, file: !5607, line: 37, baseType: !88, size: 8, offset: 40)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5637, file: !5607, line: 42, baseType: !5646, size: 16)
!5646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5637, file: !5607, line: 39, size: 16, elements: !5647)
!5647 = !{!5648, !5649}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5646, file: !5607, line: 40, baseType: !88, size: 8)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5646, file: !5607, line: 41, baseType: !88, size: 8, offset: 8)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5637, file: !5607, line: 46, baseType: !5651, size: 16)
!5651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5637, file: !5607, line: 43, size: 16, elements: !5652)
!5652 = !{!5653, !5654}
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5651, file: !5607, line: 44, baseType: !88, size: 8)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5651, file: !5607, line: 45, baseType: !88, size: 8, offset: 8)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5596, file: !253, line: 81, baseType: !5656, size: 64, offset: 448)
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5657, size: 64)
!5657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !253, line: 85, size: 384, elements: !5658)
!5658 = !{!5659, !5660, !5661, !5662, !5663, !5664}
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5657, file: !253, line: 86, baseType: !5619, size: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5657, file: !253, line: 87, baseType: !44, size: 64, offset: 64)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5657, file: !253, line: 88, baseType: !44, size: 64, offset: 128)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5657, file: !253, line: 89, baseType: !44, size: 64, offset: 192)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5657, file: !253, line: 90, baseType: !825, size: 8, offset: 256)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5657, file: !253, line: 92, baseType: !5656, size: 64, offset: 320)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5596, file: !253, line: 82, baseType: !13, size: 32, offset: 512)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !296, file: !297, line: 1463, baseType: !5667, offset: 21184)
!5667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !297, line: 739, elements: !633)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !296, file: !297, line: 1470, baseType: !648, size: 128, align: 64, offset: 21184)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !296, file: !297, line: 1471, baseType: !312, size: 32, offset: 21312)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !296, file: !297, line: 1472, baseType: !27, size: 32, offset: 21344)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !296, file: !297, line: 1474, baseType: !295, size: 64, offset: 21376)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !296, file: !297, line: 1475, baseType: !2533, size: 320, offset: 21440)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !296, file: !297, line: 1478, baseType: !5674, size: 64, offset: 21760)
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5675, size: 64)
!5675 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !297, line: 1478, flags: DIFlagFwdDecl)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !296, file: !297, line: 1482, baseType: !312, size: 32, offset: 21824)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !296, file: !297, line: 1489, baseType: !25, size: 64, offset: 21888)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !296, file: !297, line: 1504, baseType: !25, size: 64, offset: 21952)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !296, file: !297, line: 1505, baseType: !364, size: 64, offset: 22016)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !296, file: !297, line: 1506, baseType: !363, size: 64, offset: 22080)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !296, file: !297, line: 1507, baseType: !364, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !296, file: !297, line: 1508, baseType: !364, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !296, file: !297, line: 1509, baseType: !364, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !296, file: !297, line: 1510, baseType: !648, size: 128, align: 64, offset: 22208)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !296, file: !297, line: 1511, baseType: !27, size: 32, offset: 22336)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !296, file: !297, line: 1515, baseType: !5687, size: 64, offset: 22400)
!5687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !325, line: 56, size: 64, elements: !5688)
!5688 = !{!5689}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5687, file: !325, line: 57, baseType: !328, size: 64)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !296, file: !297, line: 1518, baseType: !5687, size: 64, offset: 22464)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !296, file: !297, line: 1528, baseType: !648, size: 128, align: 64, offset: 22528)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !296, file: !297, line: 1552, baseType: !5693, size: 35328, offset: 23040)
!5693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5694, line: 430, size: 35328, elements: !5695)
!5694 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5695 = !{!5696, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5723, !5724, !5725, !5726, !5727, !5728, !5731, !5732, !5733, !5734}
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5693, file: !5694, line: 432, baseType: !5697, size: 192)
!5697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5698, size: 192, elements: !704)
!5698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5699, line: 16, size: 64, elements: !5700)
!5699 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5700 = !{!5701, !5702, !5703, !5704, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713}
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5698, file: !5699, line: 17, baseType: !98, size: 16)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5698, file: !5699, line: 18, baseType: !98, size: 16, offset: 16)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5698, file: !5699, line: 19, baseType: !98, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5698, file: !5699, line: 19, baseType: !98, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5698, file: !5699, line: 19, baseType: !98, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5698, file: !5699, line: 19, baseType: !98, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5698, file: !5699, line: 19, baseType: !98, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5698, file: !5699, line: 20, baseType: !98, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5698, file: !5699, line: 20, baseType: !98, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5698, file: !5699, line: 20, baseType: !98, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5698, file: !5699, line: 20, baseType: !98, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5698, file: !5699, line: 20, baseType: !98, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5698, file: !5699, line: 20, baseType: !98, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5693, file: !5694, line: 436, baseType: !44, size: 64, offset: 192)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5693, file: !5694, line: 440, baseType: !31, size: 16, offset: 256)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5693, file: !5694, line: 441, baseType: !31, size: 16, offset: 272)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5693, file: !5694, line: 442, baseType: !31, size: 16, offset: 288)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5693, file: !5694, line: 443, baseType: !31, size: 16, offset: 304)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5693, file: !5694, line: 447, baseType: !44, size: 64, offset: 320)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5693, file: !5694, line: 448, baseType: !44, size: 64, offset: 384)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5693, file: !5694, line: 459, baseType: !5722, size: 256, offset: 448)
!5722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2819, size: 256, elements: !725)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5693, file: !5694, line: 461, baseType: !44, size: 64, offset: 704)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5693, file: !5694, line: 463, baseType: !44, size: 64, offset: 768)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5693, file: !5694, line: 465, baseType: !44, size: 64, offset: 832)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5693, file: !5694, line: 466, baseType: !44, size: 64, offset: 896)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5693, file: !5694, line: 467, baseType: !44, size: 64, offset: 960)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5693, file: !5694, line: 473, baseType: !5729, size: 64, offset: 1024)
!5729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5730, size: 64)
!5730 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5694, line: 10, flags: DIFlagFwdDecl)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5693, file: !5694, line: 480, baseType: !44, size: 64, offset: 1088)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5693, file: !5694, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5693, file: !5694, line: 491, baseType: !306, size: 32, offset: 1184)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5693, file: !5694, line: 501, baseType: !5735, size: 33792, offset: 1536)
!5735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5736, line: 448, size: 33792, elements: !5737)
!5736 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5737 = !{!5738, !5739, !5740, !5848, !5849, !5855, !5856}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5735, file: !5736, line: 461, baseType: !13, size: 32)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5735, file: !5736, line: 468, baseType: !44, size: 64, offset: 64)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5735, file: !5736, line: 476, baseType: !5741, size: 64, offset: 128)
!5741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5742, size: 64)
!5742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5736, line: 356, size: 33280, align: 512, elements: !5743)
!5743 = !{!5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5752, !5753}
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5742, file: !5736, line: 358, baseType: !13, size: 32)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5742, file: !5736, line: 361, baseType: !13, size: 32, offset: 32)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5742, file: !5736, line: 364, baseType: !363, size: 64, offset: 64)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5742, file: !5736, line: 367, baseType: !363, size: 64, offset: 128)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5742, file: !5736, line: 370, baseType: !363, size: 64, offset: 192)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5742, file: !5736, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5742, file: !5736, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5742, file: !5736, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5742, file: !5736, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5742, file: !5736, line: 397, baseType: !5754, size: 32768, offset: 512)
!5754 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5736, line: 348, size: 32768, elements: !5755)
!5755 = !{!5756, !5771, !5808, !5833, !5846}
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5754, file: !5736, line: 349, baseType: !5757, size: 896)
!5757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5736, line: 12, size: 896, elements: !5758)
!5758 = !{!5759, !5760, !5761, !5762, !5763, !5764, !5765, !5766, !5770}
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5757, file: !5736, line: 13, baseType: !306, size: 32)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5757, file: !5736, line: 14, baseType: !306, size: 32, offset: 32)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5757, file: !5736, line: 15, baseType: !306, size: 32, offset: 64)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5757, file: !5736, line: 16, baseType: !306, size: 32, offset: 96)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5757, file: !5736, line: 17, baseType: !306, size: 32, offset: 128)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5757, file: !5736, line: 18, baseType: !306, size: 32, offset: 160)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5757, file: !5736, line: 19, baseType: !306, size: 32, offset: 192)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5757, file: !5736, line: 22, baseType: !5767, size: 640, offset: 224)
!5767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 640, elements: !5768)
!5768 = !{!5769}
!5769 = !DISubrange(count: 20)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5757, file: !5736, line: 25, baseType: !306, size: 32, offset: 864)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5754, file: !5736, line: 350, baseType: !5772, size: 4096, align: 128)
!5772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5736, line: 34, size: 4096, align: 128, elements: !5773)
!5773 = !{!5774, !5775, !5776, !5777, !5778, !5793, !5794, !5795, !5797, !5799, !5803}
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5772, file: !5736, line: 35, baseType: !98, size: 16)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5772, file: !5736, line: 36, baseType: !98, size: 16, offset: 16)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5772, file: !5736, line: 37, baseType: !98, size: 16, offset: 32)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5772, file: !5736, line: 38, baseType: !98, size: 16, offset: 48)
!5778 = !DIDerivedType(tag: DW_TAG_member, scope: !5772, file: !5736, line: 39, baseType: !5779, size: 128, offset: 64)
!5779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5772, file: !5736, line: 39, size: 128, elements: !5780)
!5780 = !{!5781, !5786}
!5781 = !DIDerivedType(tag: DW_TAG_member, scope: !5779, file: !5736, line: 40, baseType: !5782, size: 128)
!5782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5779, file: !5736, line: 40, size: 128, elements: !5783)
!5783 = !{!5784, !5785}
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5782, file: !5736, line: 41, baseType: !363, size: 64)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5782, file: !5736, line: 42, baseType: !363, size: 64, offset: 64)
!5786 = !DIDerivedType(tag: DW_TAG_member, scope: !5779, file: !5736, line: 44, baseType: !5787, size: 128)
!5787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5779, file: !5736, line: 44, size: 128, elements: !5788)
!5788 = !{!5789, !5790, !5791, !5792}
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5787, file: !5736, line: 45, baseType: !306, size: 32)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5787, file: !5736, line: 46, baseType: !306, size: 32, offset: 32)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5787, file: !5736, line: 47, baseType: !306, size: 32, offset: 64)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5787, file: !5736, line: 48, baseType: !306, size: 32, offset: 96)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5772, file: !5736, line: 51, baseType: !306, size: 32, offset: 192)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5772, file: !5736, line: 52, baseType: !306, size: 32, offset: 224)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5772, file: !5736, line: 55, baseType: !5796, size: 1024, offset: 256)
!5796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 1024, elements: !4466)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5772, file: !5736, line: 58, baseType: !5798, size: 2048, offset: 1280)
!5798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 2048, elements: !1485)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5772, file: !5736, line: 60, baseType: !5800, size: 384, offset: 3328)
!5800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 384, elements: !5801)
!5801 = !{!5802}
!5802 = !DISubrange(count: 12)
!5803 = !DIDerivedType(tag: DW_TAG_member, scope: !5772, file: !5736, line: 62, baseType: !5804, size: 384, offset: 3712)
!5804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5772, file: !5736, line: 62, size: 384, elements: !5805)
!5805 = !{!5806, !5807}
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5804, file: !5736, line: 63, baseType: !5800, size: 384)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5804, file: !5736, line: 64, baseType: !5800, size: 384)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5754, file: !5736, line: 351, baseType: !5809, size: 1088)
!5809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5736, line: 79, size: 1088, elements: !5810)
!5810 = !{!5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5822, !5823, !5824, !5825, !5832}
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5809, file: !5736, line: 80, baseType: !306, size: 32)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5809, file: !5736, line: 81, baseType: !306, size: 32, offset: 32)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5809, file: !5736, line: 82, baseType: !306, size: 32, offset: 64)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5809, file: !5736, line: 83, baseType: !306, size: 32, offset: 96)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5809, file: !5736, line: 84, baseType: !306, size: 32, offset: 128)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5809, file: !5736, line: 85, baseType: !306, size: 32, offset: 160)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5809, file: !5736, line: 86, baseType: !306, size: 32, offset: 192)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5809, file: !5736, line: 88, baseType: !5767, size: 640, offset: 224)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5809, file: !5736, line: 89, baseType: !88, size: 8, offset: 864)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5809, file: !5736, line: 90, baseType: !88, size: 8, offset: 872)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5809, file: !5736, line: 91, baseType: !88, size: 8, offset: 880)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5809, file: !5736, line: 92, baseType: !88, size: 8, offset: 888)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5809, file: !5736, line: 93, baseType: !88, size: 8, offset: 896)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5809, file: !5736, line: 94, baseType: !88, size: 8, offset: 904)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5809, file: !5736, line: 95, baseType: !5826, size: 64, offset: 960)
!5826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5827, size: 64)
!5827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5828, line: 11, size: 128, elements: !5829)
!5828 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5829 = !{!5830, !5831}
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5827, file: !5828, line: 12, baseType: !1050, size: 64)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5827, file: !5828, line: 13, baseType: !3731, size: 64, offset: 64)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5809, file: !5736, line: 96, baseType: !306, size: 32, offset: 1024)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5754, file: !5736, line: 352, baseType: !5834, size: 4608, align: 512)
!5834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5736, line: 333, size: 4608, align: 512, elements: !5835)
!5835 = !{!5836, !5837, !5844}
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5834, file: !5736, line: 334, baseType: !5772, size: 4096, align: 128)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5834, file: !5736, line: 335, baseType: !5838, size: 512, offset: 4096)
!5838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5736, line: 312, size: 512, elements: !5839)
!5839 = !{!5840, !5841, !5842}
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5838, file: !5736, line: 313, baseType: !363, size: 64)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5838, file: !5736, line: 314, baseType: !363, size: 64, offset: 64)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5838, file: !5736, line: 315, baseType: !5843, size: 384, offset: 128)
!5843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 384, elements: !891)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5834, file: !5736, line: 336, baseType: !5845, offset: 4608)
!5845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, elements: !1057)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5754, file: !5736, line: 353, baseType: !5847, size: 32768)
!5847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 32768, elements: !2763)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5735, file: !5736, line: 484, baseType: !5741, size: 64, offset: 192)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5735, file: !5736, line: 491, baseType: !5850, size: 128, offset: 256)
!5850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5736, line: 404, size: 128, elements: !5851)
!5851 = !{!5852, !5853, !5854}
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5850, file: !5736, line: 424, baseType: !363, size: 64)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5850, file: !5736, line: 432, baseType: !13, size: 32, offset: 64)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5850, file: !5736, line: 440, baseType: !13, size: 32, offset: 96)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5735, file: !5736, line: 498, baseType: !5850, size: 128, offset: 384)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5735, file: !5736, line: 508, baseType: !5742, size: 33280, align: 512, offset: 512)
!5857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5858, size: 64)
!5858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5859)
!5859 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!5860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5861, size: 64)
!5861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eventfd_ctx", file: !2, line: 30, size: 384, elements: !5862)
!5862 = !{!5863, !5864, !5865, !5866, !5867}
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5861, file: !2, line: 31, baseType: !2281, size: 32)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "wqh", scope: !5861, file: !2, line: 32, baseType: !59, size: 192, offset: 64)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5861, file: !2, line: 41, baseType: !364, size: 64, offset: 256)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5861, file: !2, line: 42, baseType: !13, size: 32, offset: 320)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5861, file: !2, line: 43, baseType: !27, size: 32, offset: 352)
!5868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5859, size: 64)
!5869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5870, size: 64)
!5870 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!5871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_rwf_t", file: !5872, line: 287, baseType: !27)
!5872 = !DIFile(filename: "./include/uapi/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05057ca18a14d66575ba14cfa16a2889")
!5873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5874, size: 64)
!5874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5875)
!5875 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !365)
!5876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5877, size: 64)
!5877 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!5878 = !{!0, !7, !5879, !5881, !5883, !5885, !5887, !5889, !5891, !5896, !5898, !5904, !5909, !5911, !5913, !5925, !5928, !5930}
!5879 = !DIGlobalVariableExpression(var: !5880, expr: !DIExpression())
!5880 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_eventfd_ctx_put315", scope: !9, file: !2, line: 119, type: !25, isLocal: true, isDefinition: true)
!5881 = !DIGlobalVariableExpression(var: !5882, expr: !DIExpression())
!5882 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_eventfd_ctx_do_read317", scope: !9, file: !2, line: 195, type: !25, isLocal: true, isDefinition: true)
!5883 = !DIGlobalVariableExpression(var: !5884, expr: !DIExpression())
!5884 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_eventfd_ctx_remove_wait_queue318", scope: !9, file: !2, line: 224, type: !25, isLocal: true, isDefinition: true)
!5885 = !DIGlobalVariableExpression(var: !5886, expr: !DIExpression())
!5886 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_eventfd_fget321", scope: !9, file: !2, line: 344, type: !25, isLocal: true, isDefinition: true)
!5887 = !DIGlobalVariableExpression(var: !5888, expr: !DIExpression())
!5888 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_eventfd_ctx_fdget322", scope: !9, file: !2, line: 365, type: !25, isLocal: true, isDefinition: true)
!5889 = !DIGlobalVariableExpression(var: !5890, expr: !DIExpression())
!5890 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_eventfd_ctx_fileget323", scope: !9, file: !2, line: 387, type: !25, isLocal: true, isDefinition: true)
!5891 = !DIGlobalVariableExpression(var: !5892, expr: !DIExpression())
!5892 = distinct !DIGlobalVariable(name: "eventfd_ida", scope: !9, file: !2, line: 28, type: !5893, isLocal: true, isDefinition: true)
!5893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !742, line: 246, size: 128, elements: !5894)
!5894 = !{!5895}
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5893, file: !742, line: 247, baseType: !745, size: 128)
!5896 = !DIGlobalVariableExpression(var: !5897, expr: !DIExpression())
!5897 = distinct !DIGlobalVariable(name: "eventfd_fops", scope: !9, file: !2, line: 309, type: !4627, isLocal: true, isDefinition: true)
!5898 = !DIGlobalVariableExpression(var: !5899, expr: !DIExpression())
!5899 = distinct !DIGlobalVariable(scope: null, file: !5900, line: 249, type: !5901, isLocal: true, isDefinition: true)
!5900 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5902)
!5902 = !{!5903}
!5903 = !DISubrange(count: 28)
!5904 = !DIGlobalVariableExpression(var: !5905, expr: !DIExpression())
!5905 = distinct !DIGlobalVariable(scope: null, file: !2, line: 300, type: !5906, isLocal: true, isDefinition: true)
!5906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5907)
!5907 = !{!5908}
!5908 = !DISubrange(count: 23)
!5909 = !DIGlobalVariableExpression(var: !5910, expr: !DIExpression())
!5910 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !5076, isLocal: true, isDefinition: true)
!5911 = !DIGlobalVariableExpression(var: !5912, expr: !DIExpression())
!5912 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !5906, isLocal: true, isDefinition: true)
!5913 = !DIGlobalVariableExpression(var: !5914, expr: !DIExpression())
!5914 = distinct !DIGlobalVariable(name: "__key", scope: !5915, file: !2, line: 407, type: !4093, isLocal: true, isDefinition: true)
!5915 = distinct !DISubprogram(name: "do_eventfd", scope: !2, file: !2, line: 389, type: !5916, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5918)
!5916 = !DISubroutineType(types: !5917)
!5917 = !{!27, !13, !27}
!5918 = !{!5919, !5920, !5921, !5922, !5923, !5924}
!5919 = !DILocalVariable(name: "count", arg: 1, scope: !5915, file: !2, line: 389, type: !13)
!5920 = !DILocalVariable(name: "flags", arg: 2, scope: !5915, file: !2, line: 389, type: !27)
!5921 = !DILocalVariable(name: "ctx", scope: !5915, file: !2, line: 391, type: !5860)
!5922 = !DILocalVariable(name: "file", scope: !5915, file: !2, line: 392, type: !640)
!5923 = !DILocalVariable(name: "fd", scope: !5915, file: !2, line: 393, type: !27)
!5924 = !DILabel(scope: !5915, name: "err", file: !2, line: 428)
!5925 = !DIGlobalVariableExpression(var: !5926, expr: !DIExpression())
!5926 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !5927, isLocal: true, isDefinition: true)
!5927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !1044)
!5928 = !DIGlobalVariableExpression(var: !5929, expr: !DIExpression())
!5929 = distinct !DIGlobalVariable(scope: null, file: !2, line: 418, type: !5927, isLocal: true, isDefinition: true)
!5930 = !DIGlobalVariableExpression(var: !5931, expr: !DIExpression())
!5931 = distinct !DIGlobalVariable(scope: null, file: !281, line: 480, type: !5932, isLocal: true, isDefinition: true)
!5932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5933)
!5933 = !{!5934}
!5934 = !DISubrange(count: 21)
!5935 = !{i32 7, !"Dwarf Version", i32 5}
!5936 = !{i32 2, !"Debug Info Version", i32 3}
!5937 = !{i32 1, !"wchar_size", i32 2}
!5938 = !{i32 8, !"cf-protection-branch", i32 1}
!5939 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5940 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5941 = !{i32 1, !"Code Model", i32 2}
!5942 = !{i32 1, !"override-stack-alignment", i32 8}
!5943 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5944 = distinct !DISubprogram(name: "eventfd_signal_mask", scope: !2, file: !2, line: 46, type: !5945, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5947)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{!364, !5860, !364, !292}
!5947 = !{!5948, !5949, !5950, !5951, !5952, !5955, !5958, !5962}
!5948 = !DILocalVariable(name: "ctx", arg: 1, scope: !5944, file: !2, line: 46, type: !5860)
!5949 = !DILocalVariable(name: "n", arg: 2, scope: !5944, file: !2, line: 46, type: !364)
!5950 = !DILocalVariable(name: "mask", arg: 3, scope: !5944, file: !2, line: 46, type: !292)
!5951 = !DILocalVariable(name: "flags", scope: !5944, file: !2, line: 48, type: !44)
!5952 = !DILocalVariable(name: "__ret_warn_on", scope: !5953, file: !2, line: 58, type: !27)
!5953 = distinct !DILexicalBlock(scope: !5954, file: !2, line: 58, column: 6)
!5954 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 58, column: 6)
!5955 = !DILocalVariable(name: "__flags", scope: !5956, file: !2, line: 58, type: !27)
!5956 = distinct !DILexicalBlock(scope: !5957, file: !2, line: 58, column: 6)
!5957 = distinct !DILexicalBlock(scope: !5953, file: !2, line: 58, column: 6)
!5958 = !DILocalVariable(name: "__dummy", scope: !5959, file: !2, line: 61, type: !44)
!5959 = distinct !DILexicalBlock(scope: !5960, file: !2, line: 61, column: 2)
!5960 = distinct !DILexicalBlock(scope: !5961, file: !2, line: 61, column: 2)
!5961 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 61, column: 2)
!5962 = !DILocalVariable(name: "__dummy2", scope: !5959, file: !2, line: 61, type: !44)
!5963 = !DILocation(line: 46, column: 47, scope: !5944)
!5964 = !DILocation(line: 46, column: 58, scope: !5944)
!5965 = !DILocation(line: 46, column: 70, scope: !5944)
!5966 = !DILocation(line: 48, column: 2, scope: !5944)
!5967 = !DILocation(line: 48, column: 16, scope: !5944)
!5968 = !DILocation(line: 58, column: 6, scope: !5953)
!5969 = !DILocation(line: 58, column: 6, scope: !5957)
!5970 = !DILocation(line: 58, column: 6, scope: !5956)
!5971 = !DILocation(line: 58, column: 6, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 58, column: 6)
!5973 = !DILocation(line: 58, column: 6, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 58, column: 6)
!5975 = !{i64 2155500084, i64 2155500113, i64 2155500159, i64 2155500217, i64 2155500271, i64 2155500325, i64 2155500380, i64 2155500411, i64 2155500719, i64 2155500725, i64 2155500772, i64 2155500795, i64 2155500821}
!5976 = !DILocation(line: 58, column: 6, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 58, column: 6)
!5978 = !DILocation(line: 58, column: 6, scope: !5954)
!5979 = !DILocation(line: 58, column: 6, scope: !5944)
!5980 = !DILocation(line: 59, column: 3, scope: !5954)
!5981 = !DILocation(line: 61, column: 2, scope: !5944)
!5982 = !DILocation(line: 61, column: 2, scope: !5961)
!5983 = !DILocation(line: 61, column: 2, scope: !5959)
!5984 = !DILocation(line: 61, column: 2, scope: !5960)
!5985 = !DILocation(line: 62, column: 2, scope: !5944)
!5986 = !DILocation(line: 62, column: 11, scope: !5944)
!5987 = !DILocation(line: 62, column: 22, scope: !5944)
!5988 = !DILocation(line: 63, column: 19, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 63, column: 6)
!5990 = !DILocation(line: 63, column: 24, scope: !5989)
!5991 = !DILocation(line: 63, column: 17, scope: !5989)
!5992 = !DILocation(line: 63, column: 32, scope: !5989)
!5993 = !DILocation(line: 63, column: 30, scope: !5989)
!5994 = !DILocation(line: 63, column: 6, scope: !5944)
!5995 = !DILocation(line: 64, column: 20, scope: !5989)
!5996 = !DILocation(line: 64, column: 25, scope: !5989)
!5997 = !DILocation(line: 64, column: 18, scope: !5989)
!5998 = !DILocation(line: 64, column: 5, scope: !5989)
!5999 = !DILocation(line: 64, column: 3, scope: !5989)
!6000 = !DILocation(line: 65, column: 16, scope: !5944)
!6001 = !DILocation(line: 65, column: 2, scope: !5944)
!6002 = !DILocation(line: 65, column: 7, scope: !5944)
!6003 = !DILocation(line: 65, column: 13, scope: !5944)
!6004 = !DILocation(line: 66, column: 24, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 66, column: 6)
!6006 = !DILocation(line: 66, column: 29, scope: !6005)
!6007 = !DILocation(line: 66, column: 6, scope: !6005)
!6008 = !DILocation(line: 66, column: 6, scope: !5944)
!6009 = !DILocation(line: 67, column: 3, scope: !6005)
!6010 = !DILocation(line: 68, column: 2, scope: !5944)
!6011 = !DILocation(line: 68, column: 11, scope: !5944)
!6012 = !DILocation(line: 68, column: 22, scope: !5944)
!6013 = !DILocation(line: 69, column: 26, scope: !5944)
!6014 = !DILocation(line: 69, column: 31, scope: !5944)
!6015 = !DILocation(line: 69, column: 35, scope: !5944)
!6016 = !DILocation(line: 69, column: 41, scope: !5944)
!6017 = !DILocation(line: 69, column: 2, scope: !5944)
!6018 = !DILocation(line: 71, column: 9, scope: !5944)
!6019 = !DILocation(line: 71, column: 2, scope: !5944)
!6020 = !DILocation(line: 72, column: 1, scope: !5944)
!6021 = distinct !DISubprogram(name: "get_current", scope: !6022, file: !6022, line: 39, type: !6023, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6025)
!6022 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6023 = !DISubroutineType(types: !6024)
!6024 = !{!295}
!6025 = !{!6026, !6028, !6030}
!6026 = !DILocalVariable(name: "pscr_ret__", scope: !6027, file: !6022, line: 41, type: !295)
!6027 = distinct !DILexicalBlock(scope: !6021, file: !6022, line: 41, column: 9)
!6028 = !DILocalVariable(name: "__vpp_verify", scope: !6029, file: !6022, line: 41, type: !2122)
!6029 = distinct !DILexicalBlock(scope: !6027, file: !6022, line: 41, column: 9)
!6030 = !DILocalVariable(name: "pfo_val__", scope: !6031, file: !6022, line: 41, type: !363)
!6031 = distinct !DILexicalBlock(scope: !6027, file: !6022, line: 41, column: 9)
!6032 = !DILocation(line: 41, column: 9, scope: !6027)
!6033 = !DILocation(line: 41, column: 9, scope: !6029)
!6034 = !DILocation(line: 41, column: 9, scope: !6031)
!6035 = !{i64 2148430588}
!6036 = !DILocation(line: 41, column: 9, scope: !6021)
!6037 = !DILocation(line: 41, column: 2, scope: !6021)
!6038 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6039, file: !6039, line: 32, type: !6040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6039 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6040 = !DISubroutineType(types: !6041)
!6041 = !{!44, !6042}
!6042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!6043 = distinct !DISubprogram(name: "spinlock_check", scope: !6044, file: !6044, line: 324, type: !6045, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6047)
!6044 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6045 = !DISubroutineType(types: !6046)
!6046 = !{!6042, !1820}
!6047 = !{!6048}
!6048 = !DILocalVariable(name: "lock", arg: 1, scope: !6043, file: !6044, line: 324, type: !1820)
!6049 = !DILocation(line: 324, column: 67, scope: !6043)
!6050 = !DILocation(line: 326, column: 10, scope: !6043)
!6051 = !DILocation(line: 326, column: 16, scope: !6043)
!6052 = !DILocation(line: 326, column: 2, scope: !6043)
!6053 = distinct !DISubprogram(name: "waitqueue_active", scope: !60, file: !60, line: 127, type: !6054, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6057)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{!27, !6056}
!6056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!6057 = !{!6058}
!6058 = !DILocalVariable(name: "wq_head", arg: 1, scope: !6053, file: !60, line: 127, type: !6056)
!6059 = !DILocation(line: 127, column: 60, scope: !6053)
!6060 = !DILocation(line: 129, column: 22, scope: !6053)
!6061 = !DILocation(line: 129, column: 31, scope: !6053)
!6062 = !DILocation(line: 129, column: 10, scope: !6053)
!6063 = !DILocation(line: 129, column: 9, scope: !6053)
!6064 = !DILocation(line: 129, column: 2, scope: !6053)
!6065 = !DISubprogram(name: "__wake_up_locked_key", scope: !60, file: !60, line: 214, type: !6066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6066 = !DISubroutineType(types: !6067)
!6067 = !{null, !6056, !13, !25}
!6068 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6044, file: !6044, line: 404, type: !6069, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6071)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{null, !1820, !44}
!6071 = !{!6072, !6073, !6074, !6077}
!6072 = !DILocalVariable(name: "lock", arg: 1, scope: !6068, file: !6044, line: 404, type: !1820)
!6073 = !DILocalVariable(name: "flags", arg: 2, scope: !6068, file: !6044, line: 404, type: !44)
!6074 = !DILocalVariable(name: "__dummy", scope: !6075, file: !6044, line: 406, type: !44)
!6075 = distinct !DILexicalBlock(scope: !6076, file: !6044, line: 406, column: 2)
!6076 = distinct !DILexicalBlock(scope: !6068, file: !6044, line: 406, column: 2)
!6077 = !DILocalVariable(name: "__dummy2", scope: !6075, file: !6044, line: 406, type: !44)
!6078 = !DILocation(line: 404, column: 64, scope: !6068)
!6079 = !DILocation(line: 404, column: 84, scope: !6068)
!6080 = !DILocation(line: 406, column: 2, scope: !6068)
!6081 = !DILocation(line: 406, column: 2, scope: !6075)
!6082 = !DILocation(line: 406, column: 2, scope: !6076)
!6083 = !DILocation(line: 407, column: 1, scope: !6068)
!6084 = distinct !DISubprogram(name: "eventfd_signal", scope: !2, file: !2, line: 88, type: !6085, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6087)
!6085 = !DISubroutineType(types: !6086)
!6086 = !{!364, !5860, !364}
!6087 = !{!6088, !6089}
!6088 = !DILocalVariable(name: "ctx", arg: 1, scope: !6084, file: !2, line: 88, type: !5860)
!6089 = !DILocalVariable(name: "n", arg: 2, scope: !6084, file: !2, line: 88, type: !364)
!6090 = !DILocation(line: 88, column: 42, scope: !6084)
!6091 = !DILocation(line: 88, column: 53, scope: !6084)
!6092 = !DILocation(line: 90, column: 29, scope: !6084)
!6093 = !DILocation(line: 90, column: 34, scope: !6084)
!6094 = !DILocation(line: 90, column: 9, scope: !6084)
!6095 = !DILocation(line: 90, column: 2, scope: !6084)
!6096 = distinct !DISubprogram(name: "eventfd_ctx_put", scope: !2, file: !2, line: 115, type: !6097, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6099)
!6097 = !DISubroutineType(types: !6098)
!6098 = !{null, !5860}
!6099 = !{!6100}
!6100 = !DILocalVariable(name: "ctx", arg: 1, scope: !6096, file: !2, line: 115, type: !5860)
!6101 = !DILocation(line: 115, column: 42, scope: !6096)
!6102 = !DILocation(line: 117, column: 12, scope: !6096)
!6103 = !DILocation(line: 117, column: 17, scope: !6096)
!6104 = !DILocation(line: 117, column: 2, scope: !6096)
!6105 = !DILocation(line: 118, column: 1, scope: !6096)
!6106 = distinct !DISubprogram(name: "kref_put", scope: !2282, file: !2282, line: 62, type: !6107, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6113)
!6107 = !DISubroutineType(types: !6108)
!6108 = !{!27, !6109, !6110}
!6109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!6110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6111, size: 64)
!6111 = !DISubroutineType(types: !6112)
!6112 = !{null, !6109}
!6113 = !{!6114, !6115}
!6114 = !DILocalVariable(name: "kref", arg: 1, scope: !6106, file: !2282, line: 62, type: !6109)
!6115 = !DILocalVariable(name: "release", arg: 2, scope: !6106, file: !2282, line: 62, type: !6110)
!6116 = !DILocation(line: 62, column: 41, scope: !6106)
!6117 = !DILocation(line: 62, column: 54, scope: !6106)
!6118 = !DILocation(line: 64, column: 29, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6106, file: !2282, line: 64, column: 6)
!6120 = !DILocation(line: 64, column: 35, scope: !6119)
!6121 = !DILocation(line: 64, column: 6, scope: !6119)
!6122 = !DILocation(line: 64, column: 6, scope: !6106)
!6123 = !DILocation(line: 65, column: 3, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6119, file: !2282, line: 64, column: 46)
!6125 = !DILocation(line: 65, column: 11, scope: !6124)
!6126 = !DILocation(line: 66, column: 3, scope: !6124)
!6127 = !DILocation(line: 68, column: 2, scope: !6106)
!6128 = !DILocation(line: 69, column: 1, scope: !6106)
!6129 = distinct !DISubprogram(name: "eventfd_free", scope: !2, file: !2, line: 101, type: !6111, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6130)
!6130 = !{!6131, !6132, !6133}
!6131 = !DILocalVariable(name: "kref", arg: 1, scope: !6129, file: !2, line: 101, type: !6109)
!6132 = !DILocalVariable(name: "ctx", scope: !6129, file: !2, line: 103, type: !5860)
!6133 = !DILocalVariable(name: "__mptr", scope: !6134, file: !2, line: 103, type: !25)
!6134 = distinct !DILexicalBlock(scope: !6129, file: !2, line: 103, column: 28)
!6135 = !DILocation(line: 101, column: 39, scope: !6129)
!6136 = !DILocation(line: 103, column: 2, scope: !6129)
!6137 = !DILocation(line: 103, column: 22, scope: !6129)
!6138 = !DILocation(line: 103, column: 28, scope: !6134)
!6139 = !DILocation(line: 103, column: 28, scope: !6129)
!6140 = !DILocation(line: 105, column: 19, scope: !6129)
!6141 = !DILocation(line: 105, column: 2, scope: !6129)
!6142 = !DILocation(line: 106, column: 1, scope: !6129)
!6143 = distinct !DISubprogram(name: "eventfd_ctx_do_read", scope: !2, file: !2, line: 188, type: !6144, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6147)
!6144 = !DISubroutineType(types: !6145)
!6145 = !{null, !5860, !6146}
!6146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!6147 = !{!6148, !6149}
!6148 = !DILocalVariable(name: "ctx", arg: 1, scope: !6143, file: !2, line: 188, type: !5860)
!6149 = !DILocalVariable(name: "cnt", arg: 2, scope: !6143, file: !2, line: 188, type: !6146)
!6150 = !DILocation(line: 188, column: 46, scope: !6143)
!6151 = !DILocation(line: 188, column: 58, scope: !6143)
!6152 = !DILocation(line: 190, column: 2, scope: !6143)
!6153 = !DILocation(line: 190, column: 2, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6143, file: !2, line: 190, column: 2)
!6155 = !DILocation(line: 192, column: 11, scope: !6143)
!6156 = !DILocation(line: 192, column: 16, scope: !6143)
!6157 = !DILocation(line: 192, column: 22, scope: !6143)
!6158 = !DILocation(line: 192, column: 39, scope: !6143)
!6159 = !DILocation(line: 192, column: 42, scope: !6143)
!6160 = !DILocation(line: 192, column: 47, scope: !6143)
!6161 = !DILocation(line: 192, column: 9, scope: !6143)
!6162 = !DILocation(line: 192, column: 60, scope: !6143)
!6163 = !DILocation(line: 192, column: 65, scope: !6143)
!6164 = !DILocation(line: 192, column: 3, scope: !6143)
!6165 = !DILocation(line: 192, column: 7, scope: !6143)
!6166 = !DILocation(line: 193, column: 17, scope: !6143)
!6167 = !DILocation(line: 193, column: 16, scope: !6143)
!6168 = !DILocation(line: 193, column: 2, scope: !6143)
!6169 = !DILocation(line: 193, column: 7, scope: !6143)
!6170 = !DILocation(line: 193, column: 13, scope: !6143)
!6171 = !DILocation(line: 194, column: 1, scope: !6143)
!6172 = distinct !DISubprogram(name: "eventfd_ctx_remove_wait_queue", scope: !2, file: !2, line: 210, type: !6173, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6188)
!6173 = !DISubroutineType(types: !6174)
!6174 = !{!27, !5860, !6175, !6146}
!6175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6176, size: 64)
!6176 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !60, line: 14, baseType: !6177)
!6177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !60, line: 30, size: 320, elements: !6178)
!6178 = !{!6179, !6180, !6181, !6187}
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6177, file: !60, line: 31, baseType: !13, size: 32)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !6177, file: !60, line: 32, baseType: !25, size: 64, offset: 64)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6177, file: !60, line: 33, baseType: !6182, size: 64, offset: 128)
!6182 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !60, line: 16, baseType: !6183)
!6183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6184, size: 64)
!6184 = !DISubroutineType(types: !6185)
!6185 = !{!27, !6186, !13, !27, !25}
!6186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6177, size: 64)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6177, file: !60, line: 34, baseType: !102, size: 128, offset: 192)
!6188 = !{!6189, !6190, !6191, !6192, !6193, !6197}
!6189 = !DILocalVariable(name: "ctx", arg: 1, scope: !6172, file: !2, line: 210, type: !5860)
!6190 = !DILocalVariable(name: "wait", arg: 2, scope: !6172, file: !2, line: 210, type: !6175)
!6191 = !DILocalVariable(name: "cnt", arg: 3, scope: !6172, file: !2, line: 211, type: !6146)
!6192 = !DILocalVariable(name: "flags", scope: !6172, file: !2, line: 213, type: !44)
!6193 = !DILocalVariable(name: "__dummy", scope: !6194, file: !2, line: 215, type: !44)
!6194 = distinct !DILexicalBlock(scope: !6195, file: !2, line: 215, column: 2)
!6195 = distinct !DILexicalBlock(scope: !6196, file: !2, line: 215, column: 2)
!6196 = distinct !DILexicalBlock(scope: !6172, file: !2, line: 215, column: 2)
!6197 = !DILocalVariable(name: "__dummy2", scope: !6194, file: !2, line: 215, type: !44)
!6198 = !DILocation(line: 210, column: 55, scope: !6172)
!6199 = !DILocation(line: 210, column: 80, scope: !6172)
!6200 = !DILocation(line: 211, column: 14, scope: !6172)
!6201 = !DILocation(line: 213, column: 2, scope: !6172)
!6202 = !DILocation(line: 213, column: 16, scope: !6172)
!6203 = !DILocation(line: 215, column: 2, scope: !6172)
!6204 = !DILocation(line: 215, column: 2, scope: !6196)
!6205 = !DILocation(line: 215, column: 2, scope: !6194)
!6206 = !DILocation(line: 215, column: 2, scope: !6195)
!6207 = !DILocation(line: 216, column: 22, scope: !6172)
!6208 = !DILocation(line: 216, column: 27, scope: !6172)
!6209 = !DILocation(line: 216, column: 2, scope: !6172)
!6210 = !DILocation(line: 217, column: 23, scope: !6172)
!6211 = !DILocation(line: 217, column: 28, scope: !6172)
!6212 = !DILocation(line: 217, column: 33, scope: !6172)
!6213 = !DILocation(line: 217, column: 2, scope: !6172)
!6214 = !DILocation(line: 218, column: 7, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6172, file: !2, line: 218, column: 6)
!6216 = !DILocation(line: 218, column: 6, scope: !6215)
!6217 = !DILocation(line: 218, column: 11, scope: !6215)
!6218 = !DILocation(line: 218, column: 16, scope: !6215)
!6219 = !DILocation(line: 218, column: 37, scope: !6215)
!6220 = !DILocation(line: 218, column: 42, scope: !6215)
!6221 = !DILocation(line: 218, column: 19, scope: !6215)
!6222 = !DILocation(line: 218, column: 6, scope: !6172)
!6223 = !DILocation(line: 219, column: 3, scope: !6215)
!6224 = !DILocation(line: 220, column: 26, scope: !6172)
!6225 = !DILocation(line: 220, column: 31, scope: !6172)
!6226 = !DILocation(line: 220, column: 35, scope: !6172)
!6227 = !DILocation(line: 220, column: 41, scope: !6172)
!6228 = !DILocation(line: 220, column: 2, scope: !6172)
!6229 = !DILocation(line: 222, column: 10, scope: !6172)
!6230 = !DILocation(line: 222, column: 9, scope: !6172)
!6231 = !DILocation(line: 222, column: 14, scope: !6172)
!6232 = !DILocation(line: 223, column: 1, scope: !6172)
!6233 = !DILocation(line: 222, column: 2, scope: !6172)
!6234 = distinct !DISubprogram(name: "__remove_wait_queue", scope: !60, file: !60, line: 207, type: !6235, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6237)
!6235 = !DISubroutineType(types: !6236)
!6236 = !{null, !6056, !6186}
!6237 = !{!6238, !6239}
!6238 = !DILocalVariable(name: "wq_head", arg: 1, scope: !6234, file: !60, line: 207, type: !6056)
!6239 = !DILocalVariable(name: "wq_entry", arg: 2, scope: !6234, file: !60, line: 207, type: !6186)
!6240 = !DILocation(line: 207, column: 45, scope: !6234)
!6241 = !DILocation(line: 207, column: 79, scope: !6234)
!6242 = !DILocation(line: 209, column: 12, scope: !6234)
!6243 = !DILocation(line: 209, column: 22, scope: !6234)
!6244 = !DILocation(line: 209, column: 2, scope: !6234)
!6245 = !DILocation(line: 210, column: 1, scope: !6234)
!6246 = distinct !DISubprogram(name: "eventfd_fget", scope: !2, file: !2, line: 330, type: !6247, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6249)
!6247 = !DISubroutineType(types: !6248)
!6248 = !{!640, !27}
!6249 = !{!6250, !6251}
!6250 = !DILocalVariable(name: "fd", arg: 1, scope: !6246, file: !2, line: 330, type: !27)
!6251 = !DILocalVariable(name: "file", scope: !6246, file: !2, line: 332, type: !640)
!6252 = !DILocation(line: 330, column: 31, scope: !6246)
!6253 = !DILocation(line: 332, column: 2, scope: !6246)
!6254 = !DILocation(line: 332, column: 15, scope: !6246)
!6255 = !DILocation(line: 334, column: 14, scope: !6246)
!6256 = !DILocation(line: 334, column: 9, scope: !6246)
!6257 = !DILocation(line: 334, column: 7, scope: !6246)
!6258 = !DILocation(line: 335, column: 7, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6246, file: !2, line: 335, column: 6)
!6260 = !DILocation(line: 335, column: 6, scope: !6246)
!6261 = !DILocation(line: 336, column: 10, scope: !6259)
!6262 = !DILocation(line: 336, column: 3, scope: !6259)
!6263 = !DILocation(line: 337, column: 6, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6246, file: !2, line: 337, column: 6)
!6265 = !DILocation(line: 337, column: 12, scope: !6264)
!6266 = !DILocation(line: 337, column: 17, scope: !6264)
!6267 = !DILocation(line: 337, column: 6, scope: !6246)
!6268 = !DILocation(line: 338, column: 8, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6264, file: !2, line: 337, column: 35)
!6270 = !DILocation(line: 338, column: 3, scope: !6269)
!6271 = !DILocation(line: 339, column: 10, scope: !6269)
!6272 = !DILocation(line: 339, column: 3, scope: !6269)
!6273 = !DILocation(line: 342, column: 9, scope: !6246)
!6274 = !DILocation(line: 342, column: 2, scope: !6246)
!6275 = !DILocation(line: 343, column: 1, scope: !6246)
!6276 = !DISubprogram(name: "fget", scope: !6277, file: !6277, line: 49, type: !6278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6277 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!6278 = !DISubroutineType(types: !6279)
!6279 = !{!640, !13}
!6280 = distinct !DISubprogram(name: "ERR_PTR", scope: !6281, file: !6281, line: 39, type: !6282, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6284)
!6281 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6282 = !DISubroutineType(types: !6283)
!6283 = !{!25, !1050}
!6284 = !{!6285}
!6285 = !DILocalVariable(name: "error", arg: 1, scope: !6280, file: !6281, line: 39, type: !1050)
!6286 = !DILocation(line: 39, column: 48, scope: !6280)
!6287 = !DILocation(line: 41, column: 18, scope: !6280)
!6288 = !DILocation(line: 41, column: 9, scope: !6280)
!6289 = !DILocation(line: 41, column: 2, scope: !6280)
!6290 = !DISubprogram(name: "fput", scope: !6277, file: !6277, line: 17, type: !2074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6291 = distinct !DISubprogram(name: "eventfd_ctx_fdget", scope: !2, file: !2, line: 355, type: !6292, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6294)
!6292 = !DISubroutineType(types: !6293)
!6293 = !{!5860, !27}
!6294 = !{!6295, !6296, !6297}
!6295 = !DILocalVariable(name: "fd", arg: 1, scope: !6291, file: !2, line: 355, type: !27)
!6296 = !DILocalVariable(name: "ctx", scope: !6291, file: !2, line: 357, type: !5860)
!6297 = !DILocalVariable(name: "f", scope: !6291, file: !2, line: 358, type: !6298)
!6298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fd", file: !6277, line: 36, size: 128, elements: !6299)
!6299 = !{!6300, !6301}
!6300 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !6298, file: !6277, line: 37, baseType: !640, size: 64)
!6301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6298, file: !6277, line: 38, baseType: !13, size: 32, offset: 64)
!6302 = !DILocation(line: 355, column: 43, scope: !6291)
!6303 = !DILocation(line: 357, column: 2, scope: !6291)
!6304 = !DILocation(line: 357, column: 22, scope: !6291)
!6305 = !DILocation(line: 358, column: 2, scope: !6291)
!6306 = !DILocation(line: 358, column: 12, scope: !6291)
!6307 = !DILocation(line: 358, column: 22, scope: !6291)
!6308 = !DILocation(line: 358, column: 16, scope: !6291)
!6309 = !DILocation(line: 359, column: 9, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6291, file: !2, line: 359, column: 6)
!6311 = !DILocation(line: 359, column: 7, scope: !6310)
!6312 = !DILocation(line: 359, column: 6, scope: !6291)
!6313 = !DILocation(line: 360, column: 10, scope: !6310)
!6314 = !DILocation(line: 360, column: 3, scope: !6310)
!6315 = !DILocation(line: 361, column: 30, scope: !6291)
!6316 = !DILocation(line: 361, column: 8, scope: !6291)
!6317 = !DILocation(line: 361, column: 6, scope: !6291)
!6318 = !DILocation(line: 362, column: 2, scope: !6291)
!6319 = !DILocation(line: 363, column: 9, scope: !6291)
!6320 = !DILocation(line: 363, column: 2, scope: !6291)
!6321 = !DILocation(line: 364, column: 1, scope: !6291)
!6322 = distinct !DISubprogram(name: "fdget", scope: !6277, file: !6277, line: 62, type: !6323, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6325)
!6323 = !DISubroutineType(types: !6324)
!6324 = !{!6298, !13}
!6325 = !{!6326}
!6326 = !DILocalVariable(name: "fd", arg: 1, scope: !6322, file: !6277, line: 62, type: !13)
!6327 = !DILocation(line: 62, column: 44, scope: !6322)
!6328 = !DILocation(line: 64, column: 25, scope: !6322)
!6329 = !DILocation(line: 64, column: 17, scope: !6322)
!6330 = !DILocation(line: 64, column: 9, scope: !6322)
!6331 = !DILocation(line: 64, column: 2, scope: !6322)
!6332 = distinct !DISubprogram(name: "eventfd_ctx_fileget", scope: !2, file: !2, line: 376, type: !6333, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6335)
!6333 = !DISubroutineType(types: !6334)
!6334 = !{!5860, !640}
!6335 = !{!6336, !6337}
!6336 = !DILocalVariable(name: "file", arg: 1, scope: !6332, file: !2, line: 376, type: !640)
!6337 = !DILocalVariable(name: "ctx", scope: !6332, file: !2, line: 378, type: !5860)
!6338 = !DILocation(line: 376, column: 54, scope: !6332)
!6339 = !DILocation(line: 378, column: 2, scope: !6332)
!6340 = !DILocation(line: 378, column: 22, scope: !6332)
!6341 = !DILocation(line: 380, column: 6, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6332, file: !2, line: 380, column: 6)
!6343 = !DILocation(line: 380, column: 12, scope: !6342)
!6344 = !DILocation(line: 380, column: 17, scope: !6342)
!6345 = !DILocation(line: 380, column: 6, scope: !6332)
!6346 = !DILocation(line: 381, column: 10, scope: !6342)
!6347 = !DILocation(line: 381, column: 3, scope: !6342)
!6348 = !DILocation(line: 383, column: 8, scope: !6332)
!6349 = !DILocation(line: 383, column: 14, scope: !6332)
!6350 = !DILocation(line: 383, column: 6, scope: !6332)
!6351 = !DILocation(line: 384, column: 12, scope: !6332)
!6352 = !DILocation(line: 384, column: 17, scope: !6332)
!6353 = !DILocation(line: 384, column: 2, scope: !6332)
!6354 = !DILocation(line: 385, column: 9, scope: !6332)
!6355 = !DILocation(line: 385, column: 2, scope: !6332)
!6356 = !DILocation(line: 386, column: 1, scope: !6332)
!6357 = distinct !DISubprogram(name: "fdput", scope: !6277, file: !6277, line: 43, type: !6358, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6360)
!6358 = !DISubroutineType(types: !6359)
!6359 = !{null, !6298}
!6360 = !{!6361}
!6361 = !DILocalVariable(name: "fd", arg: 1, scope: !6357, file: !6277, line: 43, type: !6298)
!6362 = !DILocation(line: 43, column: 36, scope: !6357)
!6363 = !DILocation(line: 45, column: 9, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6357, file: !6277, line: 45, column: 6)
!6365 = !DILocation(line: 45, column: 15, scope: !6364)
!6366 = !DILocation(line: 45, column: 6, scope: !6357)
!6367 = !DILocation(line: 46, column: 11, scope: !6364)
!6368 = !DILocation(line: 46, column: 3, scope: !6364)
!6369 = !DILocation(line: 47, column: 1, scope: !6357)
!6370 = distinct !DISubprogram(name: "kref_get", scope: !2282, file: !2282, line: 43, type: !6111, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6371)
!6371 = !{!6372}
!6372 = !DILocalVariable(name: "kref", arg: 1, scope: !6370, file: !2282, line: 43, type: !6109)
!6373 = !DILocation(line: 43, column: 42, scope: !6370)
!6374 = !DILocation(line: 45, column: 16, scope: !6370)
!6375 = !DILocation(line: 45, column: 22, scope: !6370)
!6376 = !DILocation(line: 45, column: 2, scope: !6370)
!6377 = !DILocation(line: 46, column: 1, scope: !6370)
!6378 = distinct !DISubprogram(name: "__x64_sys_eventfd2", scope: !2, file: !2, line: 433, type: !6379, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6383)
!6379 = !DISubroutineType(types: !6380)
!6380 = !{!1050, !6381}
!6381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6382, size: 64)
!6382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3732)
!6383 = !{!6384}
!6384 = !DILocalVariable(name: "regs", arg: 1, scope: !6378, file: !2, line: 433, type: !6381)
!6385 = !DILocation(line: 433, column: 1, scope: !6378)
!6386 = distinct !DISubprogram(name: "__se_sys_eventfd2", scope: !2, file: !2, line: 433, type: !6387, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6389)
!6387 = !DISubroutineType(types: !6388)
!6388 = !{!1050, !1050, !1050}
!6389 = !{!6390, !6391, !6392}
!6390 = !DILocalVariable(name: "count", arg: 1, scope: !6386, file: !2, line: 433, type: !1050)
!6391 = !DILocalVariable(name: "flags", arg: 2, scope: !6386, file: !2, line: 433, type: !1050)
!6392 = !DILocalVariable(name: "ret", scope: !6386, file: !2, line: 433, type: !1050)
!6393 = !DILocation(line: 433, column: 1, scope: !6386)
!6394 = !DILocation(line: 433, column: 1, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6386, file: !2, line: 433, column: 1)
!6396 = distinct !DISubprogram(name: "__ia32_sys_eventfd2", scope: !2, file: !2, line: 433, type: !6379, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6397)
!6397 = !{!6398}
!6398 = !DILocalVariable(name: "regs", arg: 1, scope: !6396, file: !2, line: 433, type: !6381)
!6399 = !DILocation(line: 433, column: 1, scope: !6396)
!6400 = distinct !DISubprogram(name: "__x64_sys_eventfd", scope: !2, file: !2, line: 438, type: !6379, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6401)
!6401 = !{!6402}
!6402 = !DILocalVariable(name: "regs", arg: 1, scope: !6400, file: !2, line: 438, type: !6381)
!6403 = !DILocation(line: 438, column: 1, scope: !6400)
!6404 = distinct !DISubprogram(name: "__se_sys_eventfd", scope: !2, file: !2, line: 438, type: !6405, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6407)
!6405 = !DISubroutineType(types: !6406)
!6406 = !{!1050, !1050}
!6407 = !{!6408, !6409}
!6408 = !DILocalVariable(name: "count", arg: 1, scope: !6404, file: !2, line: 438, type: !1050)
!6409 = !DILocalVariable(name: "ret", scope: !6404, file: !2, line: 438, type: !1050)
!6410 = !DILocation(line: 438, column: 1, scope: !6404)
!6411 = !DILocation(line: 438, column: 1, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6404, file: !2, line: 438, column: 1)
!6413 = distinct !DISubprogram(name: "__ia32_sys_eventfd", scope: !2, file: !2, line: 438, type: !6379, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6414)
!6414 = !{!6415}
!6415 = !DILocalVariable(name: "regs", arg: 1, scope: !6413, file: !2, line: 438, type: !6381)
!6416 = !DILocation(line: 438, column: 1, scope: !6413)
!6417 = distinct !DISubprogram(name: "list_empty", scope: !6418, file: !6418, line: 371, type: !6419, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6423)
!6418 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6419 = !DISubroutineType(types: !6420)
!6420 = !{!27, !6421}
!6421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6422, size: 64)
!6422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!6423 = !{!6424}
!6424 = !DILocalVariable(name: "head", arg: 1, scope: !6417, file: !6418, line: 371, type: !6421)
!6425 = !DILocation(line: 371, column: 54, scope: !6417)
!6426 = !DILocation(line: 373, column: 9, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6417, file: !6418, line: 373, column: 9)
!6428 = !DILocation(line: 373, column: 9, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6427, file: !6418, line: 373, column: 9)
!6430 = !DILocation(line: 373, column: 34, scope: !6417)
!6431 = !DILocation(line: 373, column: 31, scope: !6417)
!6432 = !DILocation(line: 373, column: 2, scope: !6417)
!6433 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6039, file: !6039, line: 43, type: !6434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6434 = !DISubroutineType(types: !6435)
!6435 = !{null, !6042, !44}
!6436 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !273, file: !273, line: 331, type: !6437, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6440)
!6437 = !DISubroutineType(types: !6438)
!6438 = !{!825, !6439}
!6439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!6440 = !{!6441}
!6441 = !DILocalVariable(name: "r", arg: 1, scope: !6436, file: !273, line: 331, type: !6439)
!6442 = !DILocation(line: 331, column: 67, scope: !6436)
!6443 = !DILocation(line: 333, column: 33, scope: !6436)
!6444 = !DILocation(line: 333, column: 9, scope: !6436)
!6445 = !DILocation(line: 333, column: 2, scope: !6436)
!6446 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !273, file: !273, line: 313, type: !6447, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6449)
!6447 = !DISubroutineType(types: !6448)
!6448 = !{!825, !6439, !2432}
!6449 = !{!6450, !6451}
!6450 = !DILocalVariable(name: "r", arg: 1, scope: !6446, file: !273, line: 313, type: !6439)
!6451 = !DILocalVariable(name: "oldp", arg: 2, scope: !6446, file: !273, line: 313, type: !2432)
!6452 = !DILocation(line: 313, column: 69, scope: !6446)
!6453 = !DILocation(line: 313, column: 77, scope: !6446)
!6454 = !DILocation(line: 315, column: 36, scope: !6446)
!6455 = !DILocation(line: 315, column: 39, scope: !6446)
!6456 = !DILocation(line: 315, column: 9, scope: !6446)
!6457 = !DILocation(line: 315, column: 2, scope: !6446)
!6458 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !273, file: !273, line: 270, type: !6459, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6461)
!6459 = !DISubroutineType(types: !6460)
!6460 = !{!825, !27, !6439, !2432}
!6461 = !{!6462, !6463, !6464, !6465}
!6462 = !DILocalVariable(name: "i", arg: 1, scope: !6458, file: !273, line: 270, type: !27)
!6463 = !DILocalVariable(name: "r", arg: 2, scope: !6458, file: !273, line: 270, type: !6439)
!6464 = !DILocalVariable(name: "oldp", arg: 3, scope: !6458, file: !273, line: 270, type: !2432)
!6465 = !DILocalVariable(name: "old", scope: !6458, file: !273, line: 272, type: !27)
!6466 = !DILocation(line: 270, column: 61, scope: !6458)
!6467 = !DILocation(line: 270, column: 76, scope: !6458)
!6468 = !DILocation(line: 270, column: 84, scope: !6458)
!6469 = !DILocation(line: 272, column: 2, scope: !6458)
!6470 = !DILocation(line: 272, column: 6, scope: !6458)
!6471 = !DILocation(line: 272, column: 37, scope: !6458)
!6472 = !DILocation(line: 272, column: 41, scope: !6458)
!6473 = !DILocation(line: 272, column: 44, scope: !6458)
!6474 = !DILocation(line: 272, column: 12, scope: !6458)
!6475 = !DILocation(line: 274, column: 6, scope: !6476)
!6476 = distinct !DILexicalBlock(scope: !6458, file: !273, line: 274, column: 6)
!6477 = !DILocation(line: 274, column: 6, scope: !6458)
!6478 = !DILocation(line: 275, column: 11, scope: !6476)
!6479 = !DILocation(line: 275, column: 4, scope: !6476)
!6480 = !DILocation(line: 275, column: 9, scope: !6476)
!6481 = !DILocation(line: 275, column: 3, scope: !6476)
!6482 = !DILocation(line: 277, column: 6, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6458, file: !273, line: 277, column: 6)
!6484 = !DILocation(line: 277, column: 13, scope: !6483)
!6485 = !DILocation(line: 277, column: 10, scope: !6483)
!6486 = !DILocation(line: 277, column: 6, scope: !6458)
!6487 = !DILocation(line: 278, column: 3, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6483, file: !273, line: 277, column: 16)
!6489 = !DILocation(line: 278, column: 3, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6488, file: !273, line: 278, column: 3)
!6491 = !DILocation(line: 278, column: 3, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6490, file: !273, line: 278, column: 3)
!6493 = !DILocation(line: 278, column: 3, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6490, file: !273, line: 278, column: 3)
!6495 = !DILocation(line: 278, column: 3, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6494, file: !273, line: 278, column: 3)
!6497 = !{i64 2150889740}
!6498 = !DILocation(line: 279, column: 3, scope: !6488)
!6499 = !DILocation(line: 282, column: 6, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6458, file: !273, line: 282, column: 6)
!6501 = !DILocation(line: 282, column: 6, scope: !6458)
!6502 = !DILocation(line: 283, column: 26, scope: !6500)
!6503 = !DILocation(line: 283, column: 3, scope: !6500)
!6504 = !DILocation(line: 285, column: 2, scope: !6458)
!6505 = !DILocation(line: 286, column: 1, scope: !6458)
!6506 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6507, file: !6507, line: 397, type: !6508, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6511)
!6507 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6508 = !DISubroutineType(types: !6509)
!6509 = !{!27, !27, !6510}
!6510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!6511 = !{!6512, !6513}
!6512 = !DILocalVariable(name: "i", arg: 1, scope: !6506, file: !6507, line: 397, type: !27)
!6513 = !DILocalVariable(name: "v", arg: 2, scope: !6506, file: !6507, line: 397, type: !6510)
!6514 = !DILocation(line: 397, column: 30, scope: !6506)
!6515 = !DILocation(line: 397, column: 43, scope: !6506)
!6516 = !DILocation(line: 399, column: 2, scope: !6506)
!6517 = !DILocation(line: 399, column: 2, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6506, file: !6507, line: 399, column: 2)
!6519 = !DILocation(line: 400, column: 31, scope: !6506)
!6520 = !DILocation(line: 400, column: 2, scope: !6506)
!6521 = !DILocation(line: 401, column: 38, scope: !6506)
!6522 = !DILocation(line: 401, column: 41, scope: !6506)
!6523 = !DILocation(line: 401, column: 9, scope: !6506)
!6524 = !DILocation(line: 401, column: 2, scope: !6506)
!6525 = !DISubprogram(name: "refcount_warn_saturate", scope: !273, file: !273, line: 127, type: !6526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6526 = !DISubroutineType(types: !6527)
!6527 = !{null, !6439, !272}
!6528 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6529, file: !6529, line: 94, type: !6530, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6535)
!6529 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6530 = !DISubroutineType(types: !6531)
!6531 = !{null, !6532, !40}
!6532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6533, size: 64)
!6533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6534)
!6534 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6535 = !{!6536, !6537}
!6536 = !DILocalVariable(name: "v", arg: 1, scope: !6528, file: !6529, line: 94, type: !6532)
!6537 = !DILocalVariable(name: "size", arg: 2, scope: !6528, file: !6529, line: 94, type: !40)
!6538 = !DILocation(line: 94, column: 79, scope: !6528)
!6539 = !DILocation(line: 94, column: 89, scope: !6528)
!6540 = !DILocation(line: 96, column: 20, scope: !6528)
!6541 = !DILocation(line: 96, column: 23, scope: !6528)
!6542 = !DILocation(line: 96, column: 2, scope: !6528)
!6543 = !DILocation(line: 97, column: 2, scope: !6528)
!6544 = !DILocation(line: 98, column: 1, scope: !6528)
!6545 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !6546, file: !6546, line: 928, type: !6508, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6547)
!6546 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6547 = !{!6548, !6549}
!6548 = !DILocalVariable(name: "i", arg: 1, scope: !6545, file: !6546, line: 928, type: !27)
!6549 = !DILocalVariable(name: "v", arg: 2, scope: !6545, file: !6546, line: 928, type: !6510)
!6550 = !DILocation(line: 928, column: 34, scope: !6545)
!6551 = !DILocation(line: 928, column: 47, scope: !6545)
!6552 = !DILocation(line: 936, column: 31, scope: !6545)
!6553 = !DILocation(line: 936, column: 34, scope: !6545)
!6554 = !DILocation(line: 936, column: 9, scope: !6545)
!6555 = !DILocation(line: 936, column: 2, scope: !6545)
!6556 = distinct !DISubprogram(name: "kasan_check_write", scope: !6557, file: !6557, line: 44, type: !6558, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6560)
!6557 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6558 = !DISubroutineType(types: !6559)
!6559 = !{!825, !6532, !13}
!6560 = !{!6561, !6562}
!6561 = !DILocalVariable(name: "p", arg: 1, scope: !6556, file: !6557, line: 44, type: !6532)
!6562 = !DILocalVariable(name: "size", arg: 2, scope: !6556, file: !6557, line: 44, type: !13)
!6563 = !DILocation(line: 44, column: 59, scope: !6556)
!6564 = !DILocation(line: 44, column: 75, scope: !6556)
!6565 = !DILocation(line: 46, column: 2, scope: !6556)
!6566 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6567, file: !6567, line: 229, type: !6568, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6570)
!6567 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6568 = !DISubroutineType(types: !6569)
!6569 = !{null, !6532, !40, !27}
!6570 = !{!6571, !6572, !6573}
!6571 = !DILocalVariable(name: "ptr", arg: 1, scope: !6566, file: !6567, line: 229, type: !6532)
!6572 = !DILocalVariable(name: "size", arg: 2, scope: !6566, file: !6567, line: 229, type: !40)
!6573 = !DILocalVariable(name: "type", arg: 3, scope: !6566, file: !6567, line: 230, type: !27)
!6574 = !DILocation(line: 229, column: 60, scope: !6566)
!6575 = !DILocation(line: 229, column: 72, scope: !6566)
!6576 = !DILocation(line: 230, column: 15, scope: !6566)
!6577 = !DILocation(line: 230, column: 23, scope: !6566)
!6578 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6579, file: !6579, line: 101, type: !6508, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6580)
!6579 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6580 = !{!6581, !6582, !6583}
!6581 = !DILocalVariable(name: "i", arg: 1, scope: !6578, file: !6579, line: 101, type: !27)
!6582 = !DILocalVariable(name: "v", arg: 2, scope: !6578, file: !6579, line: 101, type: !6510)
!6583 = !DILocalVariable(name: "__ret", scope: !6584, file: !6579, line: 103, type: !27)
!6584 = distinct !DILexicalBlock(scope: !6578, file: !6579, line: 103, column: 9)
!6585 = !DILocation(line: 101, column: 54, scope: !6578)
!6586 = !DILocation(line: 101, column: 67, scope: !6578)
!6587 = !DILocation(line: 103, column: 9, scope: !6584)
!6588 = !{i64 2148679705, i64 2148679744, i64 2148679765, i64 2148679802, i64 2148679825, i64 2148679834}
!6589 = !DILocation(line: 103, column: 9, scope: !6578)
!6590 = !DILocation(line: 103, column: 2, scope: !6578)
!6591 = distinct !DISubprogram(name: "eventfd_free_ctx", scope: !2, file: !2, line: 94, type: !6097, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6592)
!6592 = !{!6593}
!6593 = !DILocalVariable(name: "ctx", arg: 1, scope: !6591, file: !2, line: 94, type: !5860)
!6594 = !DILocation(line: 94, column: 50, scope: !6591)
!6595 = !DILocation(line: 96, column: 6, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6591, file: !2, line: 96, column: 6)
!6597 = !DILocation(line: 96, column: 11, scope: !6596)
!6598 = !DILocation(line: 96, column: 14, scope: !6596)
!6599 = !DILocation(line: 96, column: 6, scope: !6591)
!6600 = !DILocation(line: 97, column: 3, scope: !6596)
!6601 = !DILocation(line: 98, column: 8, scope: !6591)
!6602 = !DILocation(line: 98, column: 2, scope: !6591)
!6603 = !DILocation(line: 99, column: 1, scope: !6591)
!6604 = !DISubprogram(name: "ida_free", scope: !742, file: !742, line: 258, type: !6605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6605 = !DISubroutineType(types: !6606)
!6606 = !{null, !6607, !13}
!6607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5893, size: 64)
!6608 = !DISubprogram(name: "kfree", scope: !281, file: !281, line: 227, type: !6609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6609 = !DISubroutineType(types: !6610)
!6610 = !{null, !2122}
!6611 = distinct !DISubprogram(name: "list_del", scope: !6418, file: !6418, line: 227, type: !6612, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6614)
!6612 = !DISubroutineType(types: !6613)
!6613 = !{null, !105}
!6614 = !{!6615}
!6615 = !DILocalVariable(name: "entry", arg: 1, scope: !6611, file: !6418, line: 227, type: !105)
!6616 = !DILocation(line: 227, column: 47, scope: !6611)
!6617 = !DILocation(line: 229, column: 19, scope: !6611)
!6618 = !DILocation(line: 229, column: 2, scope: !6611)
!6619 = !DILocation(line: 230, column: 2, scope: !6611)
!6620 = !DILocation(line: 230, column: 9, scope: !6611)
!6621 = !DILocation(line: 230, column: 14, scope: !6611)
!6622 = !DILocation(line: 231, column: 2, scope: !6611)
!6623 = !DILocation(line: 231, column: 9, scope: !6611)
!6624 = !DILocation(line: 231, column: 14, scope: !6611)
!6625 = !DILocation(line: 232, column: 1, scope: !6611)
!6626 = distinct !DISubprogram(name: "__list_del_entry", scope: !6418, file: !6418, line: 213, type: !6612, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6627)
!6627 = !{!6628}
!6628 = !DILocalVariable(name: "entry", arg: 1, scope: !6626, file: !6418, line: 213, type: !105)
!6629 = !DILocation(line: 213, column: 55, scope: !6626)
!6630 = !DILocation(line: 215, column: 30, scope: !6631)
!6631 = distinct !DILexicalBlock(scope: !6626, file: !6418, line: 215, column: 6)
!6632 = !DILocation(line: 215, column: 7, scope: !6631)
!6633 = !DILocation(line: 215, column: 6, scope: !6626)
!6634 = !DILocation(line: 216, column: 3, scope: !6631)
!6635 = !DILocation(line: 218, column: 13, scope: !6626)
!6636 = !DILocation(line: 218, column: 20, scope: !6626)
!6637 = !DILocation(line: 218, column: 26, scope: !6626)
!6638 = !DILocation(line: 218, column: 33, scope: !6626)
!6639 = !DILocation(line: 218, column: 2, scope: !6626)
!6640 = !DILocation(line: 219, column: 1, scope: !6626)
!6641 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6418, file: !6418, line: 134, type: !6642, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6644)
!6642 = !DISubroutineType(types: !6643)
!6643 = !{!825, !105}
!6644 = !{!6645}
!6645 = !DILocalVariable(name: "entry", arg: 1, scope: !6641, file: !6418, line: 134, type: !105)
!6646 = !DILocation(line: 134, column: 61, scope: !6641)
!6647 = !DILocation(line: 136, column: 2, scope: !6641)
!6648 = distinct !DISubprogram(name: "__list_del", scope: !6418, file: !6418, line: 193, type: !6649, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6651)
!6649 = !DISubroutineType(types: !6650)
!6650 = !{null, !105, !105}
!6651 = !{!6652, !6653}
!6652 = !DILocalVariable(name: "prev", arg: 1, scope: !6648, file: !6418, line: 193, type: !105)
!6653 = !DILocalVariable(name: "next", arg: 2, scope: !6648, file: !6418, line: 193, type: !105)
!6654 = !DILocation(line: 193, column: 50, scope: !6648)
!6655 = !DILocation(line: 193, column: 75, scope: !6648)
!6656 = !DILocation(line: 195, column: 15, scope: !6648)
!6657 = !DILocation(line: 195, column: 2, scope: !6648)
!6658 = !DILocation(line: 195, column: 8, scope: !6648)
!6659 = !DILocation(line: 195, column: 13, scope: !6648)
!6660 = !DILocation(line: 196, column: 2, scope: !6648)
!6661 = !DILocation(line: 196, column: 2, scope: !6662)
!6662 = distinct !DILexicalBlock(scope: !6648, file: !6418, line: 196, column: 2)
!6663 = !DILocation(line: 196, column: 2, scope: !6664)
!6664 = distinct !DILexicalBlock(scope: !6662, file: !6418, line: 196, column: 2)
!6665 = !DILocation(line: 196, column: 2, scope: !6666)
!6666 = distinct !DILexicalBlock(scope: !6662, file: !6418, line: 196, column: 2)
!6667 = !DILocation(line: 197, column: 1, scope: !6648)
!6668 = distinct !DISubprogram(name: "eventfd_write", scope: !2, file: !2, line: 259, type: !4641, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6669)
!6669 = !{!6670, !6671, !6672, !6673, !6674, !6675, !6676, !6677, !6682}
!6670 = !DILocalVariable(name: "file", arg: 1, scope: !6668, file: !2, line: 259, type: !640)
!6671 = !DILocalVariable(name: "buf", arg: 2, scope: !6668, file: !2, line: 259, type: !22)
!6672 = !DILocalVariable(name: "count", arg: 3, scope: !6668, file: !2, line: 259, type: !40)
!6673 = !DILocalVariable(name: "ppos", arg: 4, scope: !6668, file: !2, line: 260, type: !45)
!6674 = !DILocalVariable(name: "ctx", scope: !6668, file: !2, line: 262, type: !5860)
!6675 = !DILocalVariable(name: "res", scope: !6668, file: !2, line: 263, type: !1347)
!6676 = !DILocalVariable(name: "ucnt", scope: !6668, file: !2, line: 264, type: !364)
!6677 = !DILocalVariable(name: "__ret", scope: !6678, file: !2, line: 277, type: !27)
!6678 = distinct !DILexicalBlock(scope: !6679, file: !2, line: 277, column: 9)
!6679 = distinct !DILexicalBlock(scope: !6680, file: !2, line: 276, column: 42)
!6680 = distinct !DILexicalBlock(scope: !6681, file: !2, line: 276, column: 11)
!6681 = distinct !DILexicalBlock(scope: !6668, file: !2, line: 274, column: 6)
!6682 = !DILocalVariable(name: "__wait", scope: !6678, file: !2, line: 277, type: !6177)
!6683 = !DILocation(line: 259, column: 43, scope: !6668)
!6684 = !DILocation(line: 259, column: 68, scope: !6668)
!6685 = !DILocation(line: 259, column: 80, scope: !6668)
!6686 = !DILocation(line: 260, column: 17, scope: !6668)
!6687 = !DILocation(line: 262, column: 2, scope: !6668)
!6688 = !DILocation(line: 262, column: 22, scope: !6668)
!6689 = !DILocation(line: 262, column: 28, scope: !6668)
!6690 = !DILocation(line: 262, column: 34, scope: !6668)
!6691 = !DILocation(line: 263, column: 2, scope: !6668)
!6692 = !DILocation(line: 263, column: 10, scope: !6668)
!6693 = !DILocation(line: 264, column: 2, scope: !6668)
!6694 = !DILocation(line: 264, column: 8, scope: !6668)
!6695 = !DILocation(line: 266, column: 6, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6668, file: !2, line: 266, column: 6)
!6697 = !DILocation(line: 266, column: 12, scope: !6696)
!6698 = !DILocation(line: 266, column: 6, scope: !6668)
!6699 = !DILocation(line: 267, column: 3, scope: !6696)
!6700 = !DILocation(line: 268, column: 28, scope: !6701)
!6701 = distinct !DILexicalBlock(scope: !6668, file: !2, line: 268, column: 6)
!6702 = !DILocation(line: 268, column: 6, scope: !6701)
!6703 = !DILocation(line: 268, column: 6, scope: !6668)
!6704 = !DILocation(line: 269, column: 3, scope: !6701)
!6705 = !DILocation(line: 270, column: 6, scope: !6706)
!6706 = distinct !DILexicalBlock(scope: !6668, file: !2, line: 270, column: 6)
!6707 = !DILocation(line: 270, column: 11, scope: !6706)
!6708 = !DILocation(line: 270, column: 6, scope: !6668)
!6709 = !DILocation(line: 271, column: 3, scope: !6706)
!6710 = !DILocation(line: 272, column: 17, scope: !6668)
!6711 = !DILocation(line: 272, column: 22, scope: !6668)
!6712 = !DILocation(line: 272, column: 26, scope: !6668)
!6713 = !DILocation(line: 272, column: 2, scope: !6668)
!6714 = !DILocation(line: 273, column: 6, scope: !6668)
!6715 = !DILocation(line: 274, column: 19, scope: !6681)
!6716 = !DILocation(line: 274, column: 24, scope: !6681)
!6717 = !DILocation(line: 274, column: 17, scope: !6681)
!6718 = !DILocation(line: 274, column: 32, scope: !6681)
!6719 = !DILocation(line: 274, column: 30, scope: !6681)
!6720 = !DILocation(line: 274, column: 6, scope: !6668)
!6721 = !DILocation(line: 275, column: 7, scope: !6681)
!6722 = !DILocation(line: 275, column: 3, scope: !6681)
!6723 = !DILocation(line: 276, column: 13, scope: !6680)
!6724 = !DILocation(line: 276, column: 19, scope: !6680)
!6725 = !DILocation(line: 276, column: 27, scope: !6680)
!6726 = !DILocation(line: 276, column: 11, scope: !6681)
!6727 = !DILocation(line: 277, column: 9, scope: !6679)
!6728 = !DILocation(line: 277, column: 9, scope: !6678)
!6729 = !DILocation(line: 277, column: 9, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6678, file: !2, line: 277, column: 9)
!6731 = !DILocation(line: 277, column: 9, scope: !6732)
!6732 = distinct !DILexicalBlock(scope: !6730, file: !2, line: 277, column: 9)
!6733 = distinct !{!6733, !6728, !6728, !6734, !6735}
!6734 = !{!"llvm.loop.mustprogress"}
!6735 = !{!"llvm.loop.unroll.disable"}
!6736 = !DILocation(line: 277, column: 9, scope: !6737)
!6737 = distinct !DILexicalBlock(scope: !6678, file: !2, line: 277, column: 9)
!6738 = !DILocation(line: 277, column: 9, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6737, file: !2, line: 277, column: 9)
!6740 = !DILocation(line: 277, column: 9, scope: !6741)
!6741 = distinct !DILexicalBlock(scope: !6737, file: !2, line: 277, column: 9)
!6742 = !DILocation(line: 277, column: 9, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 277, column: 9)
!6744 = !DILocation(line: 277, column: 9, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 277, column: 9)
!6746 = !DILocation(line: 277, column: 7, scope: !6679)
!6747 = !DILocation(line: 279, column: 8, scope: !6748)
!6748 = distinct !DILexicalBlock(scope: !6679, file: !2, line: 279, column: 7)
!6749 = !DILocation(line: 279, column: 7, scope: !6679)
!6750 = !DILocation(line: 280, column: 8, scope: !6748)
!6751 = !DILocation(line: 280, column: 4, scope: !6748)
!6752 = !DILocation(line: 281, column: 2, scope: !6679)
!6753 = !DILocation(line: 282, column: 6, scope: !6754)
!6754 = distinct !DILexicalBlock(scope: !6668, file: !2, line: 282, column: 6)
!6755 = !DILocation(line: 282, column: 6, scope: !6668)
!6756 = !DILocation(line: 283, column: 17, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !6754, file: !2, line: 282, column: 23)
!6758 = !DILocation(line: 283, column: 3, scope: !6757)
!6759 = !DILocation(line: 283, column: 8, scope: !6757)
!6760 = !DILocation(line: 283, column: 14, scope: !6757)
!6761 = !DILocation(line: 284, column: 3, scope: !6757)
!6762 = !DILocation(line: 284, column: 12, scope: !6757)
!6763 = !DILocation(line: 284, column: 23, scope: !6757)
!6764 = !DILocation(line: 285, column: 25, scope: !6765)
!6765 = distinct !DILexicalBlock(scope: !6757, file: !2, line: 285, column: 7)
!6766 = !DILocation(line: 285, column: 30, scope: !6765)
!6767 = !DILocation(line: 285, column: 7, scope: !6765)
!6768 = !DILocation(line: 285, column: 7, scope: !6757)
!6769 = !DILocation(line: 286, column: 4, scope: !6765)
!6770 = !DILocation(line: 287, column: 3, scope: !6757)
!6771 = !DILocation(line: 287, column: 12, scope: !6757)
!6772 = !DILocation(line: 287, column: 23, scope: !6757)
!6773 = !DILocation(line: 288, column: 2, scope: !6757)
!6774 = !DILocation(line: 289, column: 19, scope: !6668)
!6775 = !DILocation(line: 289, column: 24, scope: !6668)
!6776 = !DILocation(line: 289, column: 28, scope: !6668)
!6777 = !DILocation(line: 289, column: 2, scope: !6668)
!6778 = !DILocation(line: 291, column: 9, scope: !6668)
!6779 = !DILocation(line: 291, column: 2, scope: !6668)
!6780 = !DILocation(line: 292, column: 1, scope: !6668)
!6781 = distinct !DISubprogram(name: "eventfd_read", scope: !2, file: !2, line: 226, type: !1968, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6782)
!6782 = !{!6783, !6784, !6785, !6786, !6787, !6788, !6793}
!6783 = !DILocalVariable(name: "iocb", arg: 1, scope: !6781, file: !2, line: 226, type: !1970)
!6784 = !DILocalVariable(name: "to", arg: 2, scope: !6781, file: !2, line: 226, type: !1992)
!6785 = !DILocalVariable(name: "file", scope: !6781, file: !2, line: 228, type: !640)
!6786 = !DILocalVariable(name: "ctx", scope: !6781, file: !2, line: 229, type: !5860)
!6787 = !DILocalVariable(name: "ucnt", scope: !6781, file: !2, line: 230, type: !364)
!6788 = !DILocalVariable(name: "__ret", scope: !6789, file: !2, line: 242, type: !27)
!6789 = distinct !DILexicalBlock(scope: !6790, file: !2, line: 242, column: 7)
!6790 = distinct !DILexicalBlock(scope: !6791, file: !2, line: 242, column: 7)
!6791 = distinct !DILexicalBlock(scope: !6792, file: !2, line: 235, column: 19)
!6792 = distinct !DILexicalBlock(scope: !6781, file: !2, line: 235, column: 6)
!6793 = !DILocalVariable(name: "__wait", scope: !6789, file: !2, line: 242, type: !6177)
!6794 = !DILocation(line: 226, column: 43, scope: !6781)
!6795 = !DILocation(line: 226, column: 66, scope: !6781)
!6796 = !DILocation(line: 228, column: 2, scope: !6781)
!6797 = !DILocation(line: 228, column: 15, scope: !6781)
!6798 = !DILocation(line: 228, column: 22, scope: !6781)
!6799 = !DILocation(line: 228, column: 28, scope: !6781)
!6800 = !DILocation(line: 229, column: 2, scope: !6781)
!6801 = !DILocation(line: 229, column: 22, scope: !6781)
!6802 = !DILocation(line: 229, column: 28, scope: !6781)
!6803 = !DILocation(line: 229, column: 34, scope: !6781)
!6804 = !DILocation(line: 230, column: 2, scope: !6781)
!6805 = !DILocation(line: 230, column: 8, scope: !6781)
!6806 = !DILocation(line: 232, column: 21, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6781, file: !2, line: 232, column: 6)
!6808 = !DILocation(line: 232, column: 6, scope: !6807)
!6809 = !DILocation(line: 232, column: 25, scope: !6807)
!6810 = !DILocation(line: 232, column: 6, scope: !6781)
!6811 = !DILocation(line: 233, column: 3, scope: !6807)
!6812 = !DILocation(line: 234, column: 17, scope: !6781)
!6813 = !DILocation(line: 234, column: 22, scope: !6781)
!6814 = !DILocation(line: 234, column: 26, scope: !6781)
!6815 = !DILocation(line: 234, column: 2, scope: !6781)
!6816 = !DILocation(line: 235, column: 7, scope: !6792)
!6817 = !DILocation(line: 235, column: 12, scope: !6792)
!6818 = !DILocation(line: 235, column: 6, scope: !6781)
!6819 = !DILocation(line: 236, column: 8, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !6791, file: !2, line: 236, column: 7)
!6821 = !DILocation(line: 236, column: 14, scope: !6820)
!6822 = !DILocation(line: 236, column: 22, scope: !6820)
!6823 = !DILocation(line: 236, column: 36, scope: !6820)
!6824 = !DILocation(line: 237, column: 8, scope: !6820)
!6825 = !DILocation(line: 237, column: 14, scope: !6820)
!6826 = !DILocation(line: 237, column: 23, scope: !6820)
!6827 = !DILocation(line: 236, column: 7, scope: !6791)
!6828 = !DILocation(line: 238, column: 21, scope: !6829)
!6829 = distinct !DILexicalBlock(scope: !6820, file: !2, line: 237, column: 39)
!6830 = !DILocation(line: 238, column: 26, scope: !6829)
!6831 = !DILocation(line: 238, column: 30, scope: !6829)
!6832 = !DILocation(line: 238, column: 4, scope: !6829)
!6833 = !DILocation(line: 239, column: 4, scope: !6829)
!6834 = !DILocation(line: 242, column: 7, scope: !6790)
!6835 = !DILocation(line: 242, column: 7, scope: !6791)
!6836 = !DILocation(line: 242, column: 7, scope: !6789)
!6837 = !DILocation(line: 242, column: 7, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6789, file: !2, line: 242, column: 7)
!6839 = !DILocation(line: 242, column: 7, scope: !6840)
!6840 = distinct !DILexicalBlock(scope: !6838, file: !2, line: 242, column: 7)
!6841 = distinct !{!6841, !6836, !6836, !6734, !6735}
!6842 = !DILocation(line: 242, column: 7, scope: !6843)
!6843 = distinct !DILexicalBlock(scope: !6789, file: !2, line: 242, column: 7)
!6844 = !DILocation(line: 242, column: 7, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6843, file: !2, line: 242, column: 7)
!6846 = !DILocation(line: 242, column: 7, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6843, file: !2, line: 242, column: 7)
!6848 = !DILocation(line: 242, column: 7, scope: !6849)
!6849 = distinct !DILexicalBlock(scope: !6847, file: !2, line: 242, column: 7)
!6850 = !DILocation(line: 242, column: 7, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6847, file: !2, line: 242, column: 7)
!6852 = !DILocation(line: 243, column: 21, scope: !6853)
!6853 = distinct !DILexicalBlock(scope: !6790, file: !2, line: 242, column: 66)
!6854 = !DILocation(line: 243, column: 26, scope: !6853)
!6855 = !DILocation(line: 243, column: 30, scope: !6853)
!6856 = !DILocation(line: 243, column: 4, scope: !6853)
!6857 = !DILocation(line: 244, column: 4, scope: !6853)
!6858 = !DILocation(line: 246, column: 2, scope: !6791)
!6859 = !DILocation(line: 247, column: 22, scope: !6781)
!6860 = !DILocation(line: 247, column: 2, scope: !6781)
!6861 = !DILocation(line: 248, column: 2, scope: !6781)
!6862 = !DILocation(line: 248, column: 11, scope: !6781)
!6863 = !DILocation(line: 248, column: 22, scope: !6781)
!6864 = !DILocation(line: 249, column: 24, scope: !6865)
!6865 = distinct !DILexicalBlock(scope: !6781, file: !2, line: 249, column: 6)
!6866 = !DILocation(line: 249, column: 29, scope: !6865)
!6867 = !DILocation(line: 249, column: 6, scope: !6865)
!6868 = !DILocation(line: 249, column: 6, scope: !6781)
!6869 = !DILocation(line: 250, column: 3, scope: !6865)
!6870 = !DILocation(line: 251, column: 2, scope: !6781)
!6871 = !DILocation(line: 251, column: 11, scope: !6781)
!6872 = !DILocation(line: 251, column: 22, scope: !6781)
!6873 = !DILocation(line: 252, column: 19, scope: !6781)
!6874 = !DILocation(line: 252, column: 24, scope: !6781)
!6875 = !DILocation(line: 252, column: 28, scope: !6781)
!6876 = !DILocation(line: 252, column: 2, scope: !6781)
!6877 = !DILocation(line: 253, column: 6, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !6781, file: !2, line: 253, column: 6)
!6879 = !DILocation(line: 253, column: 6, scope: !6781)
!6880 = !DILocation(line: 254, column: 3, scope: !6878)
!6881 = !DILocation(line: 256, column: 2, scope: !6781)
!6882 = !DILocation(line: 257, column: 1, scope: !6781)
!6883 = distinct !DISubprogram(name: "eventfd_poll", scope: !2, file: !2, line: 130, type: !6884, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6888)
!6884 = !DISubroutineType(types: !6885)
!6885 = !{!292, !640, !6886}
!6886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6887, size: 64)
!6887 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !2254, line: 40, baseType: !2253)
!6888 = !{!6889, !6890, !6891, !6892, !6893}
!6889 = !DILocalVariable(name: "file", arg: 1, scope: !6883, file: !2, line: 130, type: !640)
!6890 = !DILocalVariable(name: "wait", arg: 2, scope: !6883, file: !2, line: 130, type: !6886)
!6891 = !DILocalVariable(name: "ctx", scope: !6883, file: !2, line: 132, type: !5860)
!6892 = !DILocalVariable(name: "events", scope: !6883, file: !2, line: 133, type: !292)
!6893 = !DILocalVariable(name: "count", scope: !6883, file: !2, line: 134, type: !363)
!6894 = !DILocation(line: 130, column: 43, scope: !6883)
!6895 = !DILocation(line: 130, column: 61, scope: !6883)
!6896 = !DILocation(line: 132, column: 2, scope: !6883)
!6897 = !DILocation(line: 132, column: 22, scope: !6883)
!6898 = !DILocation(line: 132, column: 28, scope: !6883)
!6899 = !DILocation(line: 132, column: 34, scope: !6883)
!6900 = !DILocation(line: 133, column: 2, scope: !6883)
!6901 = !DILocation(line: 133, column: 11, scope: !6883)
!6902 = !DILocation(line: 134, column: 2, scope: !6883)
!6903 = !DILocation(line: 134, column: 6, scope: !6883)
!6904 = !DILocation(line: 136, column: 12, scope: !6883)
!6905 = !DILocation(line: 136, column: 19, scope: !6883)
!6906 = !DILocation(line: 136, column: 24, scope: !6883)
!6907 = !DILocation(line: 136, column: 29, scope: !6883)
!6908 = !DILocation(line: 136, column: 2, scope: !6883)
!6909 = !DILocation(line: 176, column: 10, scope: !6910)
!6910 = distinct !DILexicalBlock(scope: !6883, file: !2, line: 176, column: 10)
!6911 = !DILocation(line: 176, column: 10, scope: !6912)
!6912 = distinct !DILexicalBlock(scope: !6910, file: !2, line: 176, column: 10)
!6913 = !DILocation(line: 176, column: 8, scope: !6883)
!6914 = !DILocation(line: 178, column: 6, scope: !6915)
!6915 = distinct !DILexicalBlock(scope: !6883, file: !2, line: 178, column: 6)
!6916 = !DILocation(line: 178, column: 12, scope: !6915)
!6917 = !DILocation(line: 178, column: 6, scope: !6883)
!6918 = !DILocation(line: 179, column: 10, scope: !6915)
!6919 = !DILocation(line: 179, column: 3, scope: !6915)
!6920 = !DILocation(line: 180, column: 6, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6883, file: !2, line: 180, column: 6)
!6922 = !DILocation(line: 180, column: 12, scope: !6921)
!6923 = !DILocation(line: 180, column: 6, scope: !6883)
!6924 = !DILocation(line: 181, column: 10, scope: !6921)
!6925 = !DILocation(line: 181, column: 3, scope: !6921)
!6926 = !DILocation(line: 182, column: 23, scope: !6927)
!6927 = distinct !DILexicalBlock(scope: !6883, file: !2, line: 182, column: 6)
!6928 = !DILocation(line: 182, column: 21, scope: !6927)
!6929 = !DILocation(line: 182, column: 6, scope: !6883)
!6930 = !DILocation(line: 183, column: 10, scope: !6927)
!6931 = !DILocation(line: 183, column: 3, scope: !6927)
!6932 = !DILocation(line: 185, column: 9, scope: !6883)
!6933 = !DILocation(line: 186, column: 1, scope: !6883)
!6934 = !DILocation(line: 185, column: 2, scope: !6883)
!6935 = distinct !DISubprogram(name: "eventfd_release", scope: !2, file: !2, line: 121, type: !4680, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6936)
!6936 = !{!6937, !6938, !6939}
!6937 = !DILocalVariable(name: "inode", arg: 1, scope: !6935, file: !2, line: 121, type: !1195)
!6938 = !DILocalVariable(name: "file", arg: 2, scope: !6935, file: !2, line: 121, type: !640)
!6939 = !DILocalVariable(name: "ctx", scope: !6935, file: !2, line: 123, type: !5860)
!6940 = !DILocation(line: 121, column: 42, scope: !6935)
!6941 = !DILocation(line: 121, column: 62, scope: !6935)
!6942 = !DILocation(line: 123, column: 2, scope: !6935)
!6943 = !DILocation(line: 123, column: 22, scope: !6935)
!6944 = !DILocation(line: 123, column: 28, scope: !6935)
!6945 = !DILocation(line: 123, column: 34, scope: !6935)
!6946 = !DILocation(line: 125, column: 2, scope: !6935)
!6947 = !DILocation(line: 126, column: 18, scope: !6935)
!6948 = !DILocation(line: 126, column: 2, scope: !6935)
!6949 = !DILocation(line: 128, column: 1, scope: !6935)
!6950 = !DILocation(line: 127, column: 2, scope: !6935)
!6951 = distinct !DISubprogram(name: "eventfd_show_fdinfo", scope: !2, file: !2, line: 295, type: !4730, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6952)
!6952 = !{!6953, !6954, !6955}
!6953 = !DILocalVariable(name: "m", arg: 1, scope: !6951, file: !2, line: 295, type: !2185)
!6954 = !DILocalVariable(name: "f", arg: 2, scope: !6951, file: !2, line: 295, type: !640)
!6955 = !DILocalVariable(name: "ctx", scope: !6951, file: !2, line: 297, type: !5860)
!6956 = !DILocation(line: 295, column: 50, scope: !6951)
!6957 = !DILocation(line: 295, column: 66, scope: !6951)
!6958 = !DILocation(line: 297, column: 2, scope: !6951)
!6959 = !DILocation(line: 297, column: 22, scope: !6951)
!6960 = !DILocation(line: 297, column: 28, scope: !6951)
!6961 = !DILocation(line: 297, column: 31, scope: !6951)
!6962 = !DILocation(line: 299, column: 17, scope: !6951)
!6963 = !DILocation(line: 299, column: 22, scope: !6951)
!6964 = !DILocation(line: 299, column: 26, scope: !6951)
!6965 = !DILocation(line: 299, column: 2, scope: !6951)
!6966 = !DILocation(line: 300, column: 13, scope: !6951)
!6967 = !DILocation(line: 301, column: 26, scope: !6951)
!6968 = !DILocation(line: 301, column: 31, scope: !6951)
!6969 = !DILocation(line: 300, column: 2, scope: !6951)
!6970 = !DILocation(line: 302, column: 19, scope: !6951)
!6971 = !DILocation(line: 302, column: 24, scope: !6951)
!6972 = !DILocation(line: 302, column: 28, scope: !6951)
!6973 = !DILocation(line: 302, column: 2, scope: !6951)
!6974 = !DILocation(line: 303, column: 13, scope: !6951)
!6975 = !DILocation(line: 303, column: 36, scope: !6951)
!6976 = !DILocation(line: 303, column: 41, scope: !6951)
!6977 = !DILocation(line: 303, column: 2, scope: !6951)
!6978 = !DILocation(line: 304, column: 13, scope: !6951)
!6979 = !DILocation(line: 305, column: 9, scope: !6951)
!6980 = !DILocation(line: 305, column: 14, scope: !6951)
!6981 = !DILocation(line: 305, column: 20, scope: !6951)
!6982 = !DILocation(line: 305, column: 7, scope: !6951)
!6983 = !DILocation(line: 305, column: 6, scope: !6951)
!6984 = !DILocation(line: 304, column: 2, scope: !6951)
!6985 = !DILocation(line: 306, column: 1, scope: !6951)
!6986 = distinct !DISubprogram(name: "copy_from_user", scope: !6987, file: !6987, line: 180, type: !6988, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6990)
!6987 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6988 = !DISubroutineType(types: !6989)
!6989 = !{!44, !25, !2122, !44}
!6990 = !{!6991, !6992, !6993}
!6991 = !DILocalVariable(name: "to", arg: 1, scope: !6986, file: !6987, line: 180, type: !25)
!6992 = !DILocalVariable(name: "from", arg: 2, scope: !6986, file: !6987, line: 180, type: !2122)
!6993 = !DILocalVariable(name: "n", arg: 3, scope: !6986, file: !6987, line: 180, type: !44)
!6994 = !DILocation(line: 180, column: 22, scope: !6986)
!6995 = !DILocation(line: 180, column: 45, scope: !6986)
!6996 = !DILocation(line: 180, column: 65, scope: !6986)
!6997 = !DILocation(line: 182, column: 22, scope: !6998)
!6998 = distinct !DILexicalBlock(scope: !6986, file: !6987, line: 182, column: 6)
!6999 = !DILocation(line: 182, column: 26, scope: !6998)
!7000 = !DILocation(line: 182, column: 6, scope: !6998)
!7001 = !DILocation(line: 182, column: 6, scope: !6986)
!7002 = !DILocation(line: 183, column: 23, scope: !6998)
!7003 = !DILocation(line: 183, column: 27, scope: !6998)
!7004 = !DILocation(line: 183, column: 33, scope: !6998)
!7005 = !DILocation(line: 183, column: 7, scope: !6998)
!7006 = !DILocation(line: 183, column: 5, scope: !6998)
!7007 = !DILocation(line: 183, column: 3, scope: !6998)
!7008 = !DILocation(line: 184, column: 9, scope: !6986)
!7009 = !DILocation(line: 184, column: 2, scope: !6986)
!7010 = distinct !DISubprogram(name: "spin_lock_irq", scope: !6044, file: !6044, line: 374, type: !7011, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7013)
!7011 = !DISubroutineType(types: !7012)
!7012 = !{null, !1820}
!7013 = !{!7014}
!7014 = !DILocalVariable(name: "lock", arg: 1, scope: !7010, file: !6044, line: 374, type: !1820)
!7015 = !DILocation(line: 374, column: 55, scope: !7010)
!7016 = !DILocation(line: 376, column: 2, scope: !7010)
!7017 = !DILocation(line: 377, column: 1, scope: !7010)
!7018 = !DISubprogram(name: "do_wait_intr_irq", scope: !60, file: !60, line: 776, type: !7019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7019 = !DISubroutineType(types: !7020)
!7020 = !{!27, !2261, !6175}
!7021 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !6044, file: !6044, line: 399, type: !7011, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7022)
!7022 = !{!7023}
!7023 = !DILocalVariable(name: "lock", arg: 1, scope: !7021, file: !6044, line: 399, type: !1820)
!7024 = !DILocation(line: 399, column: 57, scope: !7021)
!7025 = !DILocation(line: 401, column: 2, scope: !7021)
!7026 = !DILocation(line: 402, column: 1, scope: !7021)
!7027 = distinct !DISubprogram(name: "check_copy_size", scope: !5900, file: !5900, line: 237, type: !7028, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7030)
!7028 = !DISubroutineType(types: !7029)
!7029 = !{!825, !2122, !40, !825}
!7030 = !{!7031, !7032, !7033, !7034, !7035, !7038}
!7031 = !DILocalVariable(name: "addr", arg: 1, scope: !7027, file: !5900, line: 237, type: !2122)
!7032 = !DILocalVariable(name: "bytes", arg: 2, scope: !7027, file: !5900, line: 237, type: !40)
!7033 = !DILocalVariable(name: "is_source", arg: 3, scope: !7027, file: !5900, line: 237, type: !825)
!7034 = !DILocalVariable(name: "sz", scope: !7027, file: !5900, line: 239, type: !27)
!7035 = !DILocalVariable(name: "__ret_warn_on", scope: !7036, file: !5900, line: 249, type: !27)
!7036 = distinct !DILexicalBlock(scope: !7037, file: !5900, line: 249, column: 6)
!7037 = distinct !DILexicalBlock(scope: !7027, file: !5900, line: 249, column: 6)
!7038 = !DILocalVariable(name: "__flags", scope: !7039, file: !5900, line: 249, type: !27)
!7039 = distinct !DILexicalBlock(scope: !7040, file: !5900, line: 249, column: 6)
!7040 = distinct !DILexicalBlock(scope: !7036, file: !5900, line: 249, column: 6)
!7041 = !DILocation(line: 237, column: 29, scope: !7027)
!7042 = !DILocation(line: 237, column: 42, scope: !7027)
!7043 = !DILocation(line: 237, column: 54, scope: !7027)
!7044 = !DILocation(line: 239, column: 2, scope: !7027)
!7045 = !DILocation(line: 239, column: 6, scope: !7027)
!7046 = !DILocation(line: 239, column: 33, scope: !7027)
!7047 = !DILocation(line: 239, column: 11, scope: !7027)
!7048 = !DILocation(line: 240, column: 6, scope: !7049)
!7049 = distinct !DILexicalBlock(scope: !7027, file: !5900, line: 240, column: 6)
!7050 = !DILocation(line: 0, scope: !7049)
!7051 = !DILocation(line: 240, column: 6, scope: !7027)
!7052 = !DILocation(line: 241, column: 29, scope: !7053)
!7053 = distinct !DILexicalBlock(scope: !7054, file: !5900, line: 241, column: 7)
!7054 = distinct !DILexicalBlock(scope: !7049, file: !5900, line: 240, column: 39)
!7055 = !DILocation(line: 241, column: 8, scope: !7053)
!7056 = !DILocation(line: 241, column: 7, scope: !7054)
!7057 = !DILocation(line: 242, column: 18, scope: !7053)
!7058 = !DILocation(line: 242, column: 22, scope: !7053)
!7059 = !DILocation(line: 242, column: 4, scope: !7053)
!7060 = !DILocation(line: 243, column: 12, scope: !7061)
!7061 = distinct !DILexicalBlock(scope: !7053, file: !5900, line: 243, column: 12)
!7062 = !{i8 0, i8 2}
!7063 = !DILocation(line: 243, column: 12, scope: !7053)
!7064 = !DILocation(line: 244, column: 4, scope: !7061)
!7065 = !{i32 2128580}
!7066 = !DILocation(line: 246, column: 4, scope: !7061)
!7067 = !{i32 2128609}
!7068 = !DILocation(line: 247, column: 3, scope: !7054)
!7069 = !DILocation(line: 249, column: 6, scope: !7036)
!7070 = !DILocation(line: 249, column: 6, scope: !7040)
!7071 = !DILocation(line: 249, column: 6, scope: !7039)
!7072 = !DILocation(line: 249, column: 6, scope: !7073)
!7073 = distinct !DILexicalBlock(scope: !7039, file: !5900, line: 249, column: 6)
!7074 = !DILocation(line: 249, column: 6, scope: !7075)
!7075 = distinct !DILexicalBlock(scope: !7039, file: !5900, line: 249, column: 6)
!7076 = !{i64 2149629042, i64 2149629071, i64 2149629117, i64 2149629175, i64 2149629229, i64 2149629283, i64 2149629338, i64 2149629369, i64 2149629677, i64 2149629683, i64 2149629730, i64 2149629753, i64 2149629779}
!7077 = !DILocation(line: 249, column: 6, scope: !7078)
!7078 = distinct !DILexicalBlock(scope: !7039, file: !5900, line: 249, column: 6)
!7079 = !DILocation(line: 249, column: 6, scope: !7037)
!7080 = !DILocation(line: 249, column: 6, scope: !7027)
!7081 = !DILocation(line: 250, column: 3, scope: !7037)
!7082 = !DILocation(line: 251, column: 20, scope: !7027)
!7083 = !DILocation(line: 251, column: 26, scope: !7027)
!7084 = !DILocation(line: 251, column: 33, scope: !7027)
!7085 = !DILocation(line: 251, column: 2, scope: !7027)
!7086 = !DILocation(line: 252, column: 2, scope: !7027)
!7087 = !DILocation(line: 253, column: 1, scope: !7027)
!7088 = !DISubprogram(name: "_copy_from_user", scope: !6987, file: !6987, line: 158, type: !6988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7089 = distinct !DISubprogram(name: "copy_overflow", scope: !5900, file: !5900, line: 230, type: !7090, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7092)
!7090 = !DISubroutineType(types: !7091)
!7091 = !{null, !27, !44}
!7092 = !{!7093, !7094}
!7093 = !DILocalVariable(name: "size", arg: 1, scope: !7089, file: !5900, line: 230, type: !27)
!7094 = !DILocalVariable(name: "count", arg: 2, scope: !7089, file: !5900, line: 230, type: !44)
!7095 = !DILocation(line: 230, column: 38, scope: !7089)
!7096 = !DILocation(line: 230, column: 58, scope: !7089)
!7097 = !DILocation(line: 233, column: 19, scope: !7098)
!7098 = distinct !DILexicalBlock(scope: !7089, file: !5900, line: 232, column: 6)
!7099 = !DILocation(line: 233, column: 25, scope: !7098)
!7100 = !DILocation(line: 233, column: 3, scope: !7098)
!7101 = !DILocation(line: 234, column: 1, scope: !7089)
!7102 = !DISubprogram(name: "__bad_copy_from", scope: !5900, file: !5900, line: 224, type: !2708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7103 = !DISubprogram(name: "__bad_copy_to", scope: !5900, file: !5900, line: 226, type: !2708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7104 = distinct !DISubprogram(name: "check_object_size", scope: !5900, file: !5900, line: 218, type: !7105, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7107)
!7105 = !DISubroutineType(types: !7106)
!7106 = !{null, !2122, !44, !825}
!7107 = !{!7108, !7109, !7110}
!7108 = !DILocalVariable(name: "ptr", arg: 1, scope: !7104, file: !5900, line: 218, type: !2122)
!7109 = !DILocalVariable(name: "n", arg: 2, scope: !7104, file: !5900, line: 218, type: !44)
!7110 = !DILocalVariable(name: "to_user", arg: 3, scope: !7104, file: !5900, line: 219, type: !825)
!7111 = !DILocation(line: 218, column: 50, scope: !7104)
!7112 = !DILocation(line: 218, column: 69, scope: !7104)
!7113 = !DILocation(line: 219, column: 15, scope: !7104)
!7114 = !DILocation(line: 220, column: 3, scope: !7104)
!7115 = !DISubprogram(name: "__copy_overflow", scope: !5900, file: !5900, line: 228, type: !7090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7116 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !6039, file: !6039, line: 29, type: !7117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7117 = !DISubroutineType(types: !7118)
!7118 = !{null, !6042}
!7119 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !6039, file: !6039, line: 41, type: !7117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7120 = distinct !DISubprogram(name: "iov_iter_count", scope: !1994, file: !1994, line: 296, type: !7121, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7125)
!7121 = !DISubroutineType(types: !7122)
!7122 = !{!40, !7123}
!7123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7124, size: 64)
!7124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!7125 = !{!7126}
!7126 = !DILocalVariable(name: "i", arg: 1, scope: !7120, file: !1994, line: 296, type: !7123)
!7127 = !DILocation(line: 296, column: 60, scope: !7120)
!7128 = !DILocation(line: 298, column: 9, scope: !7120)
!7129 = !DILocation(line: 298, column: 12, scope: !7120)
!7130 = !DILocation(line: 298, column: 2, scope: !7120)
!7131 = distinct !DISubprogram(name: "copy_to_iter", scope: !1994, file: !1994, line: 198, type: !7132, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7134)
!7132 = !DISubroutineType(types: !7133)
!7133 = !{!40, !2122, !40, !1992}
!7134 = !{!7135, !7136, !7137}
!7135 = !DILocalVariable(name: "addr", arg: 1, scope: !7131, file: !1994, line: 198, type: !2122)
!7136 = !DILocalVariable(name: "bytes", arg: 2, scope: !7131, file: !1994, line: 198, type: !40)
!7137 = !DILocalVariable(name: "i", arg: 3, scope: !7131, file: !1994, line: 198, type: !1992)
!7138 = !DILocation(line: 198, column: 33, scope: !7131)
!7139 = !DILocation(line: 198, column: 46, scope: !7131)
!7140 = !DILocation(line: 198, column: 70, scope: !7131)
!7141 = !DILocation(line: 200, column: 22, scope: !7142)
!7142 = distinct !DILexicalBlock(scope: !7131, file: !1994, line: 200, column: 6)
!7143 = !DILocation(line: 200, column: 28, scope: !7142)
!7144 = !DILocation(line: 200, column: 6, scope: !7142)
!7145 = !DILocation(line: 200, column: 6, scope: !7131)
!7146 = !DILocation(line: 201, column: 24, scope: !7142)
!7147 = !DILocation(line: 201, column: 30, scope: !7142)
!7148 = !DILocation(line: 201, column: 37, scope: !7142)
!7149 = !DILocation(line: 201, column: 10, scope: !7142)
!7150 = !DILocation(line: 201, column: 3, scope: !7142)
!7151 = !DILocation(line: 202, column: 2, scope: !7131)
!7152 = !DILocation(line: 203, column: 1, scope: !7131)
!7153 = !DISubprogram(name: "_copy_to_iter", scope: !1994, file: !1994, line: 178, type: !7132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7154 = distinct !DISubprogram(name: "poll_wait", scope: !2254, file: !2254, line: 42, type: !7155, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7157)
!7155 = !DISubroutineType(types: !7156)
!7156 = !{null, !640, !2261, !6886}
!7157 = !{!7158, !7159, !7160}
!7158 = !DILocalVariable(name: "filp", arg: 1, scope: !7154, file: !2254, line: 42, type: !640)
!7159 = !DILocalVariable(name: "wait_address", arg: 2, scope: !7154, file: !2254, line: 42, type: !2261)
!7160 = !DILocalVariable(name: "p", arg: 3, scope: !7154, file: !2254, line: 42, type: !6886)
!7161 = !DILocation(line: 42, column: 44, scope: !7154)
!7162 = !DILocation(line: 42, column: 70, scope: !7154)
!7163 = !DILocation(line: 42, column: 96, scope: !7154)
!7164 = !DILocation(line: 44, column: 6, scope: !7165)
!7165 = distinct !DILexicalBlock(scope: !7154, file: !2254, line: 44, column: 6)
!7166 = !DILocation(line: 44, column: 8, scope: !7165)
!7167 = !DILocation(line: 44, column: 11, scope: !7165)
!7168 = !DILocation(line: 44, column: 14, scope: !7165)
!7169 = !DILocation(line: 44, column: 21, scope: !7165)
!7170 = !DILocation(line: 44, column: 24, scope: !7165)
!7171 = !DILocation(line: 44, column: 6, scope: !7154)
!7172 = !DILocation(line: 45, column: 3, scope: !7173)
!7173 = distinct !DILexicalBlock(scope: !7165, file: !2254, line: 44, column: 38)
!7174 = !DILocation(line: 45, column: 6, scope: !7173)
!7175 = !DILocation(line: 45, column: 13, scope: !7173)
!7176 = !DILocation(line: 45, column: 19, scope: !7173)
!7177 = !DILocation(line: 45, column: 33, scope: !7173)
!7178 = !DILocation(line: 52, column: 3, scope: !7173)
!7179 = !DILocation(line: 52, column: 3, scope: !7180)
!7180 = distinct !DILexicalBlock(scope: !7173, file: !2254, line: 52, column: 3)
!7181 = !DILocation(line: 52, column: 3, scope: !7182)
!7182 = distinct !DILexicalBlock(scope: !7180, file: !2254, line: 52, column: 3)
!7183 = !{i64 2153383922}
!7184 = !DILocation(line: 53, column: 2, scope: !7173)
!7185 = !DILocation(line: 54, column: 1, scope: !7154)
!7186 = !DISubprogram(name: "__wake_up", scope: !60, file: !60, line: 212, type: !7187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7187 = !DISubroutineType(types: !7188)
!7188 = !{!27, !6056, !13, !27, !25}
!7189 = !DISubprogram(name: "seq_printf", scope: !2187, file: !2187, line: 119, type: !7190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7190 = !DISubroutineType(types: !7191)
!7191 = !{null, !2185, !22, null}
!7192 = distinct !DISubprogram(name: "__to_fd", scope: !6277, file: !6277, line: 57, type: !7193, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7195)
!7193 = !DISubroutineType(types: !7194)
!7194 = !{!6298, !44}
!7195 = !{!7196}
!7196 = !DILocalVariable(name: "v", arg: 1, scope: !7192, file: !6277, line: 57, type: !44)
!7197 = !DILocation(line: 57, column: 47, scope: !7192)
!7198 = !DILocation(line: 59, column: 20, scope: !7192)
!7199 = !DILocation(line: 59, column: 37, scope: !7192)
!7200 = !DILocation(line: 59, column: 39, scope: !7192)
!7201 = !DILocation(line: 59, column: 21, scope: !7192)
!7202 = !DILocation(line: 59, column: 45, scope: !7192)
!7203 = !DILocation(line: 59, column: 47, scope: !7192)
!7204 = !DILocation(line: 59, column: 2, scope: !7192)
!7205 = !DISubprogram(name: "__fdget", scope: !6277, file: !6277, line: 52, type: !7206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7206 = !DISubroutineType(types: !7207)
!7207 = !{!44, !13}
!7208 = distinct !DISubprogram(name: "refcount_inc", scope: !273, file: !273, line: 265, type: !7209, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7211)
!7209 = !DISubroutineType(types: !7210)
!7210 = !{null, !6439}
!7211 = !{!7212}
!7212 = !DILocalVariable(name: "r", arg: 1, scope: !7208, file: !273, line: 265, type: !6439)
!7213 = !DILocation(line: 265, column: 45, scope: !7208)
!7214 = !DILocation(line: 267, column: 17, scope: !7208)
!7215 = !DILocation(line: 267, column: 2, scope: !7208)
!7216 = !DILocation(line: 268, column: 1, scope: !7208)
!7217 = distinct !DISubprogram(name: "__refcount_inc", scope: !273, file: !273, line: 248, type: !7218, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7220)
!7218 = !DISubroutineType(types: !7219)
!7219 = !{null, !6439, !2432}
!7220 = !{!7221, !7222}
!7221 = !DILocalVariable(name: "r", arg: 1, scope: !7217, file: !273, line: 248, type: !6439)
!7222 = !DILocalVariable(name: "oldp", arg: 2, scope: !7217, file: !273, line: 248, type: !2432)
!7223 = !DILocation(line: 248, column: 47, scope: !7217)
!7224 = !DILocation(line: 248, column: 55, scope: !7217)
!7225 = !DILocation(line: 250, column: 20, scope: !7217)
!7226 = !DILocation(line: 250, column: 23, scope: !7217)
!7227 = !DILocation(line: 250, column: 2, scope: !7217)
!7228 = !DILocation(line: 251, column: 1, scope: !7217)
!7229 = distinct !DISubprogram(name: "__refcount_add", scope: !273, file: !273, line: 191, type: !7230, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7232)
!7230 = !DISubroutineType(types: !7231)
!7231 = !{null, !27, !6439, !2432}
!7232 = !{!7233, !7234, !7235, !7236}
!7233 = !DILocalVariable(name: "i", arg: 1, scope: !7229, file: !273, line: 191, type: !27)
!7234 = !DILocalVariable(name: "r", arg: 2, scope: !7229, file: !273, line: 191, type: !6439)
!7235 = !DILocalVariable(name: "oldp", arg: 3, scope: !7229, file: !273, line: 191, type: !2432)
!7236 = !DILocalVariable(name: "old", scope: !7229, file: !273, line: 193, type: !27)
!7237 = !DILocation(line: 191, column: 39, scope: !7229)
!7238 = !DILocation(line: 191, column: 54, scope: !7229)
!7239 = !DILocation(line: 191, column: 62, scope: !7229)
!7240 = !DILocation(line: 193, column: 2, scope: !7229)
!7241 = !DILocation(line: 193, column: 6, scope: !7229)
!7242 = !DILocation(line: 193, column: 37, scope: !7229)
!7243 = !DILocation(line: 193, column: 41, scope: !7229)
!7244 = !DILocation(line: 193, column: 44, scope: !7229)
!7245 = !DILocation(line: 193, column: 12, scope: !7229)
!7246 = !DILocation(line: 195, column: 6, scope: !7247)
!7247 = distinct !DILexicalBlock(scope: !7229, file: !273, line: 195, column: 6)
!7248 = !DILocation(line: 195, column: 6, scope: !7229)
!7249 = !DILocation(line: 196, column: 11, scope: !7247)
!7250 = !DILocation(line: 196, column: 4, scope: !7247)
!7251 = !DILocation(line: 196, column: 9, scope: !7247)
!7252 = !DILocation(line: 196, column: 3, scope: !7247)
!7253 = !DILocation(line: 198, column: 6, scope: !7254)
!7254 = distinct !DILexicalBlock(scope: !7229, file: !273, line: 198, column: 6)
!7255 = !DILocation(line: 198, column: 6, scope: !7229)
!7256 = !DILocation(line: 199, column: 26, scope: !7254)
!7257 = !DILocation(line: 199, column: 3, scope: !7254)
!7258 = !DILocation(line: 200, column: 11, scope: !7259)
!7259 = distinct !DILexicalBlock(scope: !7254, file: !273, line: 200, column: 11)
!7260 = !DILocation(line: 200, column: 11, scope: !7254)
!7261 = !DILocation(line: 201, column: 26, scope: !7259)
!7262 = !DILocation(line: 201, column: 3, scope: !7259)
!7263 = !DILocation(line: 202, column: 1, scope: !7229)
!7264 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !6507, file: !6507, line: 250, type: !6508, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7265)
!7265 = !{!7266, !7267}
!7266 = !DILocalVariable(name: "i", arg: 1, scope: !7264, file: !6507, line: 250, type: !27)
!7267 = !DILocalVariable(name: "v", arg: 2, scope: !7264, file: !6507, line: 250, type: !6510)
!7268 = !DILocation(line: 250, column: 30, scope: !7264)
!7269 = !DILocation(line: 250, column: 43, scope: !7264)
!7270 = !DILocation(line: 252, column: 31, scope: !7264)
!7271 = !DILocation(line: 252, column: 2, scope: !7264)
!7272 = !DILocation(line: 253, column: 38, scope: !7264)
!7273 = !DILocation(line: 253, column: 41, scope: !7264)
!7274 = !DILocation(line: 253, column: 9, scope: !7264)
!7275 = !DILocation(line: 253, column: 2, scope: !7264)
!7276 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !6546, file: !6546, line: 731, type: !6508, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7277)
!7277 = !{!7278, !7279}
!7278 = !DILocalVariable(name: "i", arg: 1, scope: !7276, file: !6546, line: 731, type: !27)
!7279 = !DILocalVariable(name: "v", arg: 2, scope: !7276, file: !6546, line: 731, type: !6510)
!7280 = !DILocation(line: 731, column: 34, scope: !7276)
!7281 = !DILocation(line: 731, column: 47, scope: !7276)
!7282 = !DILocation(line: 736, column: 31, scope: !7276)
!7283 = !DILocation(line: 736, column: 34, scope: !7276)
!7284 = !DILocation(line: 736, column: 9, scope: !7276)
!7285 = !DILocation(line: 736, column: 2, scope: !7276)
!7286 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !6579, file: !6579, line: 95, type: !6508, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7287)
!7287 = !{!7288, !7289, !7290}
!7288 = !DILocalVariable(name: "i", arg: 1, scope: !7286, file: !6579, line: 95, type: !27)
!7289 = !DILocalVariable(name: "v", arg: 2, scope: !7286, file: !6579, line: 95, type: !6510)
!7290 = !DILocalVariable(name: "__ret", scope: !7291, file: !6579, line: 97, type: !27)
!7291 = distinct !DILexicalBlock(scope: !7286, file: !6579, line: 97, column: 9)
!7292 = !DILocation(line: 95, column: 54, scope: !7286)
!7293 = !DILocation(line: 95, column: 67, scope: !7286)
!7294 = !DILocation(line: 97, column: 9, scope: !7291)
!7295 = !{i64 2148677520, i64 2148677559, i64 2148677580, i64 2148677617, i64 2148677640, i64 2148677649}
!7296 = !DILocation(line: 97, column: 9, scope: !7286)
!7297 = !DILocation(line: 97, column: 2, scope: !7286)
!7298 = distinct !DISubprogram(name: "__do_sys_eventfd2", scope: !2, file: !2, line: 433, type: !7299, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7301)
!7299 = !DISubroutineType(types: !7300)
!7300 = !{!1050, !13, !27}
!7301 = !{!7302, !7303}
!7302 = !DILocalVariable(name: "count", arg: 1, scope: !7298, file: !2, line: 433, type: !13)
!7303 = !DILocalVariable(name: "flags", arg: 2, scope: !7298, file: !2, line: 433, type: !27)
!7304 = !DILocation(line: 433, column: 1, scope: !7298)
!7305 = !DILocation(line: 435, column: 20, scope: !7298)
!7306 = !DILocation(line: 435, column: 27, scope: !7298)
!7307 = !DILocation(line: 435, column: 9, scope: !7298)
!7308 = !DILocation(line: 435, column: 2, scope: !7298)
!7309 = !DILocation(line: 389, column: 36, scope: !5915)
!7310 = !DILocation(line: 389, column: 47, scope: !5915)
!7311 = !DILocation(line: 391, column: 2, scope: !5915)
!7312 = !DILocation(line: 391, column: 22, scope: !5915)
!7313 = !DILocation(line: 392, column: 2, scope: !5915)
!7314 = !DILocation(line: 392, column: 15, scope: !5915)
!7315 = !DILocation(line: 393, column: 2, scope: !5915)
!7316 = !DILocation(line: 393, column: 6, scope: !5915)
!7317 = !DILocation(line: 396, column: 2, scope: !5915)
!7318 = !DILocation(line: 396, column: 2, scope: !7319)
!7319 = distinct !DILexicalBlock(scope: !5915, file: !2, line: 396, column: 2)
!7320 = !DILocation(line: 397, column: 2, scope: !5915)
!7321 = !DILocation(line: 397, column: 2, scope: !7322)
!7322 = distinct !DILexicalBlock(scope: !5915, file: !2, line: 397, column: 2)
!7323 = !DILocation(line: 399, column: 6, scope: !7324)
!7324 = distinct !DILexicalBlock(scope: !5915, file: !2, line: 399, column: 6)
!7325 = !DILocation(line: 399, column: 12, scope: !7324)
!7326 = !DILocation(line: 399, column: 6, scope: !5915)
!7327 = !DILocation(line: 400, column: 3, scope: !7324)
!7328 = !DILocation(line: 402, column: 8, scope: !5915)
!7329 = !DILocation(line: 402, column: 6, scope: !5915)
!7330 = !DILocation(line: 403, column: 7, scope: !7331)
!7331 = distinct !DILexicalBlock(scope: !5915, file: !2, line: 403, column: 6)
!7332 = !DILocation(line: 403, column: 6, scope: !5915)
!7333 = !DILocation(line: 404, column: 3, scope: !7331)
!7334 = !DILocation(line: 406, column: 13, scope: !5915)
!7335 = !DILocation(line: 406, column: 18, scope: !5915)
!7336 = !DILocation(line: 406, column: 2, scope: !5915)
!7337 = !DILocation(line: 407, column: 2, scope: !5915)
!7338 = !DILocation(line: 407, column: 2, scope: !7339)
!7339 = distinct !DILexicalBlock(scope: !5915, file: !2, line: 407, column: 2)
!7340 = !DILocation(line: 408, column: 15, scope: !5915)
!7341 = !DILocation(line: 408, column: 2, scope: !5915)
!7342 = !DILocation(line: 408, column: 7, scope: !5915)
!7343 = !DILocation(line: 408, column: 13, scope: !5915)
!7344 = !DILocation(line: 409, column: 15, scope: !5915)
!7345 = !DILocation(line: 409, column: 2, scope: !5915)
!7346 = !DILocation(line: 409, column: 7, scope: !5915)
!7347 = !DILocation(line: 409, column: 13, scope: !5915)
!7348 = !DILocation(line: 410, column: 12, scope: !5915)
!7349 = !DILocation(line: 410, column: 2, scope: !5915)
!7350 = !DILocation(line: 410, column: 7, scope: !5915)
!7351 = !DILocation(line: 410, column: 10, scope: !5915)
!7352 = !DILocation(line: 412, column: 8, scope: !5915)
!7353 = !DILocation(line: 413, column: 8, scope: !5915)
!7354 = !DILocation(line: 414, column: 27, scope: !5915)
!7355 = !DILocation(line: 414, column: 7, scope: !5915)
!7356 = !DILocation(line: 414, column: 5, scope: !5915)
!7357 = !DILocation(line: 415, column: 6, scope: !7358)
!7358 = distinct !DILexicalBlock(scope: !5915, file: !2, line: 415, column: 6)
!7359 = !DILocation(line: 415, column: 9, scope: !7358)
!7360 = !DILocation(line: 415, column: 6, scope: !5915)
!7361 = !DILocation(line: 416, column: 3, scope: !7358)
!7362 = !DILocation(line: 418, column: 56, scope: !5915)
!7363 = !DILocation(line: 418, column: 61, scope: !5915)
!7364 = !DILocation(line: 418, column: 9, scope: !5915)
!7365 = !DILocation(line: 418, column: 7, scope: !5915)
!7366 = !DILocation(line: 419, column: 13, scope: !7367)
!7367 = distinct !DILexicalBlock(scope: !5915, file: !2, line: 419, column: 6)
!7368 = !DILocation(line: 419, column: 6, scope: !7367)
!7369 = !DILocation(line: 419, column: 6, scope: !5915)
!7370 = !DILocation(line: 420, column: 17, scope: !7371)
!7371 = distinct !DILexicalBlock(scope: !7367, file: !2, line: 419, column: 20)
!7372 = !DILocation(line: 420, column: 3, scope: !7371)
!7373 = !DILocation(line: 421, column: 16, scope: !7371)
!7374 = !DILocation(line: 421, column: 8, scope: !7371)
!7375 = !DILocation(line: 421, column: 6, scope: !7371)
!7376 = !DILocation(line: 422, column: 3, scope: !7371)
!7377 = !DILocation(line: 425, column: 2, scope: !5915)
!7378 = !DILocation(line: 425, column: 8, scope: !5915)
!7379 = !DILocation(line: 425, column: 15, scope: !5915)
!7380 = !DILocation(line: 426, column: 13, scope: !5915)
!7381 = !DILocation(line: 426, column: 17, scope: !5915)
!7382 = !DILocation(line: 426, column: 2, scope: !5915)
!7383 = !DILocation(line: 427, column: 9, scope: !5915)
!7384 = !DILocation(line: 427, column: 2, scope: !5915)
!7385 = !DILocation(line: 428, column: 1, scope: !5915)
!7386 = !DILocation(line: 429, column: 19, scope: !5915)
!7387 = !DILocation(line: 429, column: 2, scope: !5915)
!7388 = !DILocation(line: 430, column: 9, scope: !5915)
!7389 = !DILocation(line: 430, column: 2, scope: !5915)
!7390 = !DILocation(line: 431, column: 1, scope: !5915)
!7391 = distinct !DISubprogram(name: "kmalloc", scope: !281, file: !281, line: 591, type: !7392, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7394)
!7392 = !DISubroutineType(types: !7393)
!7393 = !{!25, !40, !750}
!7394 = !{!7395, !7396, !7397}
!7395 = !DILocalVariable(name: "size", arg: 1, scope: !7391, file: !281, line: 591, type: !40)
!7396 = !DILocalVariable(name: "flags", arg: 2, scope: !7391, file: !281, line: 591, type: !750)
!7397 = !DILocalVariable(name: "index", scope: !7398, file: !281, line: 594, type: !13)
!7398 = distinct !DILexicalBlock(scope: !7399, file: !281, line: 593, column: 42)
!7399 = distinct !DILexicalBlock(scope: !7391, file: !281, line: 593, column: 6)
!7400 = !DILocation(line: 591, column: 61, scope: !7391)
!7401 = !DILocation(line: 591, column: 73, scope: !7391)
!7402 = !DILocation(line: 593, column: 27, scope: !7399)
!7403 = !DILocation(line: 593, column: 6, scope: !7399)
!7404 = !DILocation(line: 593, column: 33, scope: !7399)
!7405 = !DILocation(line: 593, column: 36, scope: !7399)
!7406 = !DILocation(line: 593, column: 6, scope: !7391)
!7407 = !DILocation(line: 594, column: 3, scope: !7398)
!7408 = !DILocation(line: 594, column: 16, scope: !7398)
!7409 = !DILocation(line: 596, column: 7, scope: !7410)
!7410 = distinct !DILexicalBlock(scope: !7398, file: !281, line: 596, column: 7)
!7411 = !DILocation(line: 596, column: 12, scope: !7410)
!7412 = !DILocation(line: 596, column: 7, scope: !7398)
!7413 = !DILocation(line: 597, column: 25, scope: !7410)
!7414 = !DILocation(line: 597, column: 31, scope: !7410)
!7415 = !DILocation(line: 597, column: 11, scope: !7410)
!7416 = !DILocation(line: 597, column: 4, scope: !7410)
!7417 = !DILocation(line: 599, column: 11, scope: !7398)
!7418 = !DILocation(line: 599, column: 9, scope: !7398)
!7419 = !DILocation(line: 601, column: 33, scope: !7398)
!7420 = !DILocation(line: 601, column: 40, scope: !7398)
!7421 = !DILocation(line: 601, column: 20, scope: !7398)
!7422 = !DILocation(line: 601, column: 5, scope: !7398)
!7423 = !DILocation(line: 601, column: 51, scope: !7398)
!7424 = !DILocation(line: 602, column: 5, scope: !7398)
!7425 = !DILocation(line: 602, column: 12, scope: !7398)
!7426 = !DILocation(line: 600, column: 10, scope: !7398)
!7427 = !DILocation(line: 600, column: 3, scope: !7398)
!7428 = !DILocation(line: 603, column: 2, scope: !7399)
!7429 = !DILocation(line: 604, column: 19, scope: !7391)
!7430 = !DILocation(line: 604, column: 25, scope: !7391)
!7431 = !DILocation(line: 604, column: 9, scope: !7391)
!7432 = !DILocation(line: 604, column: 2, scope: !7391)
!7433 = !DILocation(line: 605, column: 1, scope: !7391)
!7434 = distinct !DISubprogram(name: "kref_init", scope: !2282, file: !2282, line: 29, type: !6111, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7435)
!7435 = !{!7436}
!7436 = !DILocalVariable(name: "kref", arg: 1, scope: !7434, file: !2282, line: 29, type: !6109)
!7437 = !DILocation(line: 29, column: 43, scope: !7434)
!7438 = !DILocation(line: 31, column: 16, scope: !7434)
!7439 = !DILocation(line: 31, column: 22, scope: !7434)
!7440 = !DILocation(line: 31, column: 2, scope: !7434)
!7441 = !DILocation(line: 32, column: 1, scope: !7434)
!7442 = !DISubprogram(name: "__init_waitqueue_head", scope: !60, file: !60, line: 64, type: !7443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7443 = !DISubroutineType(types: !7444)
!7444 = !{null, !6056, !22, !7445}
!7445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!7446 = !DISubprogram(name: "ida_alloc_range", scope: !742, file: !742, line: 257, type: !7447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7447 = !DISubroutineType(types: !7448)
!7448 = !{!27, !6607, !13, !13, !750}
!7449 = !DISubprogram(name: "get_unused_fd_flags", scope: !6277, file: !6277, line: 91, type: !7450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7450 = !DISubroutineType(types: !7451)
!7451 = !{!27, !13}
!7452 = !DISubprogram(name: "anon_inode_getfile", scope: !7453, file: !7453, line: 15, type: !7454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7453 = !DIFile(filename: "./include/linux/anon_inodes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "00c0a889ffd591b5a8b4ccaa2c6d3740")
!7454 = !DISubroutineType(types: !7455)
!7455 = !{!640, !22, !4626, !25, !27}
!7456 = distinct !DISubprogram(name: "IS_ERR", scope: !6281, file: !6281, line: 59, type: !7457, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7459)
!7457 = !DISubroutineType(types: !7458)
!7458 = !{!825, !2122}
!7459 = !{!7460}
!7460 = !DILocalVariable(name: "ptr", arg: 1, scope: !7456, file: !6281, line: 59, type: !2122)
!7461 = !DILocation(line: 59, column: 60, scope: !7456)
!7462 = !DILocation(line: 61, column: 9, scope: !7456)
!7463 = !DILocation(line: 61, column: 2, scope: !7456)
!7464 = !DISubprogram(name: "put_unused_fd", scope: !6277, file: !6277, line: 92, type: !7465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7465 = !DISubroutineType(types: !7466)
!7466 = !{null, !13}
!7467 = distinct !DISubprogram(name: "PTR_ERR", scope: !6281, file: !6281, line: 49, type: !7468, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7470)
!7468 = !DISubroutineType(types: !7469)
!7469 = !{!1050, !2122}
!7470 = !{!7471}
!7471 = !DILocalVariable(name: "ptr", arg: 1, scope: !7467, file: !6281, line: 49, type: !2122)
!7472 = !DILocation(line: 49, column: 61, scope: !7467)
!7473 = !DILocation(line: 51, column: 16, scope: !7467)
!7474 = !DILocation(line: 51, column: 9, scope: !7467)
!7475 = !DILocation(line: 51, column: 2, scope: !7467)
!7476 = !DISubprogram(name: "fd_install", scope: !6277, file: !6277, line: 97, type: !7477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7477 = !DISubroutineType(types: !7478)
!7478 = !{null, !13, !640}
!7479 = !DISubprogram(name: "kmalloc_large", scope: !281, file: !281, line: 531, type: !7392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7480 = distinct !DISubprogram(name: "__kmalloc_index", scope: !281, file: !281, line: 444, type: !7481, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7483)
!7481 = !DISubroutineType(types: !7482)
!7482 = !{!13, !40, !825}
!7483 = !{!7484, !7485}
!7484 = !DILocalVariable(name: "size", arg: 1, scope: !7480, file: !281, line: 444, type: !40)
!7485 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7480, file: !281, line: 445, type: !825)
!7486 = !DILocation(line: 444, column: 60, scope: !7480)
!7487 = !DILocation(line: 445, column: 16, scope: !7480)
!7488 = !DILocation(line: 447, column: 7, scope: !7489)
!7489 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 447, column: 6)
!7490 = !DILocation(line: 447, column: 6, scope: !7480)
!7491 = !DILocation(line: 448, column: 3, scope: !7489)
!7492 = !DILocation(line: 450, column: 6, scope: !7493)
!7493 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 450, column: 6)
!7494 = !DILocation(line: 450, column: 11, scope: !7493)
!7495 = !DILocation(line: 450, column: 6, scope: !7480)
!7496 = !DILocation(line: 451, column: 3, scope: !7493)
!7497 = !DILocation(line: 453, column: 32, scope: !7498)
!7498 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 453, column: 6)
!7499 = !DILocation(line: 453, column: 37, scope: !7498)
!7500 = !DILocation(line: 453, column: 42, scope: !7498)
!7501 = !DILocation(line: 453, column: 45, scope: !7498)
!7502 = !DILocation(line: 453, column: 50, scope: !7498)
!7503 = !DILocation(line: 453, column: 6, scope: !7480)
!7504 = !DILocation(line: 454, column: 3, scope: !7498)
!7505 = !DILocation(line: 455, column: 32, scope: !7506)
!7506 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 455, column: 6)
!7507 = !DILocation(line: 455, column: 37, scope: !7506)
!7508 = !DILocation(line: 455, column: 43, scope: !7506)
!7509 = !DILocation(line: 455, column: 46, scope: !7506)
!7510 = !DILocation(line: 455, column: 51, scope: !7506)
!7511 = !DILocation(line: 455, column: 6, scope: !7480)
!7512 = !DILocation(line: 456, column: 3, scope: !7506)
!7513 = !DILocation(line: 457, column: 6, scope: !7514)
!7514 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 457, column: 6)
!7515 = !DILocation(line: 457, column: 11, scope: !7514)
!7516 = !DILocation(line: 457, column: 6, scope: !7480)
!7517 = !DILocation(line: 457, column: 26, scope: !7514)
!7518 = !DILocation(line: 458, column: 6, scope: !7519)
!7519 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 458, column: 6)
!7520 = !DILocation(line: 458, column: 11, scope: !7519)
!7521 = !DILocation(line: 458, column: 6, scope: !7480)
!7522 = !DILocation(line: 458, column: 26, scope: !7519)
!7523 = !DILocation(line: 459, column: 6, scope: !7524)
!7524 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 459, column: 6)
!7525 = !DILocation(line: 459, column: 11, scope: !7524)
!7526 = !DILocation(line: 459, column: 6, scope: !7480)
!7527 = !DILocation(line: 459, column: 26, scope: !7524)
!7528 = !DILocation(line: 460, column: 6, scope: !7529)
!7529 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 460, column: 6)
!7530 = !DILocation(line: 460, column: 11, scope: !7529)
!7531 = !DILocation(line: 460, column: 6, scope: !7480)
!7532 = !DILocation(line: 460, column: 26, scope: !7529)
!7533 = !DILocation(line: 461, column: 6, scope: !7534)
!7534 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 461, column: 6)
!7535 = !DILocation(line: 461, column: 11, scope: !7534)
!7536 = !DILocation(line: 461, column: 6, scope: !7480)
!7537 = !DILocation(line: 461, column: 26, scope: !7534)
!7538 = !DILocation(line: 462, column: 6, scope: !7539)
!7539 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 462, column: 6)
!7540 = !DILocation(line: 462, column: 11, scope: !7539)
!7541 = !DILocation(line: 462, column: 6, scope: !7480)
!7542 = !DILocation(line: 462, column: 26, scope: !7539)
!7543 = !DILocation(line: 463, column: 6, scope: !7544)
!7544 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 463, column: 6)
!7545 = !DILocation(line: 463, column: 11, scope: !7544)
!7546 = !DILocation(line: 463, column: 6, scope: !7480)
!7547 = !DILocation(line: 463, column: 26, scope: !7544)
!7548 = !DILocation(line: 464, column: 6, scope: !7549)
!7549 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 464, column: 6)
!7550 = !DILocation(line: 464, column: 11, scope: !7549)
!7551 = !DILocation(line: 464, column: 6, scope: !7480)
!7552 = !DILocation(line: 464, column: 26, scope: !7549)
!7553 = !DILocation(line: 465, column: 6, scope: !7554)
!7554 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 465, column: 6)
!7555 = !DILocation(line: 465, column: 11, scope: !7554)
!7556 = !DILocation(line: 465, column: 6, scope: !7480)
!7557 = !DILocation(line: 465, column: 26, scope: !7554)
!7558 = !DILocation(line: 466, column: 6, scope: !7559)
!7559 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 466, column: 6)
!7560 = !DILocation(line: 466, column: 11, scope: !7559)
!7561 = !DILocation(line: 466, column: 6, scope: !7480)
!7562 = !DILocation(line: 466, column: 26, scope: !7559)
!7563 = !DILocation(line: 467, column: 6, scope: !7564)
!7564 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 467, column: 6)
!7565 = !DILocation(line: 467, column: 11, scope: !7564)
!7566 = !DILocation(line: 467, column: 6, scope: !7480)
!7567 = !DILocation(line: 467, column: 26, scope: !7564)
!7568 = !DILocation(line: 468, column: 6, scope: !7569)
!7569 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 468, column: 6)
!7570 = !DILocation(line: 468, column: 11, scope: !7569)
!7571 = !DILocation(line: 468, column: 6, scope: !7480)
!7572 = !DILocation(line: 468, column: 26, scope: !7569)
!7573 = !DILocation(line: 469, column: 6, scope: !7574)
!7574 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 469, column: 6)
!7575 = !DILocation(line: 469, column: 11, scope: !7574)
!7576 = !DILocation(line: 469, column: 6, scope: !7480)
!7577 = !DILocation(line: 469, column: 26, scope: !7574)
!7578 = !DILocation(line: 470, column: 6, scope: !7579)
!7579 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 470, column: 6)
!7580 = !DILocation(line: 470, column: 11, scope: !7579)
!7581 = !DILocation(line: 470, column: 6, scope: !7480)
!7582 = !DILocation(line: 470, column: 26, scope: !7579)
!7583 = !DILocation(line: 471, column: 6, scope: !7584)
!7584 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 471, column: 6)
!7585 = !DILocation(line: 471, column: 11, scope: !7584)
!7586 = !DILocation(line: 471, column: 6, scope: !7480)
!7587 = !DILocation(line: 471, column: 26, scope: !7584)
!7588 = !DILocation(line: 472, column: 6, scope: !7589)
!7589 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 472, column: 6)
!7590 = !DILocation(line: 472, column: 11, scope: !7589)
!7591 = !DILocation(line: 472, column: 6, scope: !7480)
!7592 = !DILocation(line: 472, column: 26, scope: !7589)
!7593 = !DILocation(line: 473, column: 6, scope: !7594)
!7594 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 473, column: 6)
!7595 = !DILocation(line: 473, column: 11, scope: !7594)
!7596 = !DILocation(line: 473, column: 6, scope: !7480)
!7597 = !DILocation(line: 473, column: 26, scope: !7594)
!7598 = !DILocation(line: 474, column: 6, scope: !7599)
!7599 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 474, column: 6)
!7600 = !DILocation(line: 474, column: 11, scope: !7599)
!7601 = !DILocation(line: 474, column: 6, scope: !7480)
!7602 = !DILocation(line: 474, column: 27, scope: !7599)
!7603 = !DILocation(line: 475, column: 6, scope: !7604)
!7604 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 475, column: 6)
!7605 = !DILocation(line: 475, column: 11, scope: !7604)
!7606 = !DILocation(line: 475, column: 6, scope: !7480)
!7607 = !DILocation(line: 475, column: 32, scope: !7604)
!7608 = !DILocation(line: 477, column: 50, scope: !7609)
!7609 = distinct !DILexicalBlock(scope: !7480, file: !281, line: 477, column: 6)
!7610 = !DILocation(line: 477, column: 6, scope: !7480)
!7611 = !DILocation(line: 478, column: 3, scope: !7609)
!7612 = !DILocation(line: 478, column: 3, scope: !7613)
!7613 = distinct !DILexicalBlock(scope: !7614, file: !281, line: 478, column: 3)
!7614 = distinct !DILexicalBlock(scope: !7609, file: !281, line: 478, column: 3)
!7615 = !{i32 -2141698907}
!7616 = !DILocation(line: 478, column: 3, scope: !7614)
!7617 = !DILocation(line: 480, column: 3, scope: !7609)
!7618 = !DILocation(line: 480, column: 3, scope: !7619)
!7619 = distinct !DILexicalBlock(scope: !7609, file: !281, line: 480, column: 3)
!7620 = !DILocation(line: 480, column: 3, scope: !7621)
!7621 = distinct !DILexicalBlock(scope: !7619, file: !281, line: 480, column: 3)
!7622 = !DILocation(line: 480, column: 3, scope: !7623)
!7623 = distinct !DILexicalBlock(scope: !7619, file: !281, line: 480, column: 3)
!7624 = !{i64 2153268592, i64 2153268621, i64 2153268667, i64 2153268725, i64 2153268779, i64 2153268833, i64 2153268888, i64 2153268919}
!7625 = !DILocation(line: 483, column: 2, scope: !7480)
!7626 = !DILocation(line: 484, column: 1, scope: !7480)
!7627 = !DISubprogram(name: "kmalloc_trace", scope: !281, file: !281, line: 525, type: !7628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7628 = !DISubroutineType(types: !7629)
!7629 = !{!25, !758, !750, !40}
!7630 = distinct !DISubprogram(name: "kmalloc_type", scope: !281, file: !281, line: 401, type: !7631, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7633)
!7631 = !DISubroutineType(types: !7632)
!7632 = !{!280, !750, !44}
!7633 = !{!7634, !7635}
!7634 = !DILocalVariable(name: "flags", arg: 1, scope: !7630, file: !281, line: 401, type: !750)
!7635 = !DILocalVariable(name: "caller", arg: 2, scope: !7630, file: !281, line: 401, type: !44)
!7636 = !DILocation(line: 401, column: 67, scope: !7630)
!7637 = !DILocation(line: 401, column: 88, scope: !7630)
!7638 = !DILocation(line: 407, column: 6, scope: !7639)
!7639 = distinct !DILexicalBlock(scope: !7630, file: !281, line: 407, column: 6)
!7640 = !DILocation(line: 407, column: 6, scope: !7630)
!7641 = !DILocation(line: 413, column: 3, scope: !7639)
!7642 = !DILocation(line: 423, column: 38, scope: !7643)
!7643 = distinct !DILexicalBlock(scope: !7630, file: !281, line: 423, column: 6)
!7644 = !DILocation(line: 423, column: 44, scope: !7643)
!7645 = !DILocation(line: 423, column: 6, scope: !7630)
!7646 = !DILocation(line: 424, column: 3, scope: !7643)
!7647 = !DILocation(line: 426, column: 3, scope: !7648)
!7648 = distinct !DILexicalBlock(scope: !7630, file: !281, line: 425, column: 6)
!7649 = !DILocation(line: 429, column: 1, scope: !7630)
!7650 = !DISubprogram(name: "__kmalloc", scope: !281, file: !281, line: 488, type: !7392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7651 = !DISubprogram(name: "__compiletime_assert_245", scope: !281, file: !281, line: 478, type: !2708, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7652 = distinct !DISubprogram(name: "refcount_set", scope: !273, file: !273, line: 134, type: !7653, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7655)
!7653 = !DISubroutineType(types: !7654)
!7654 = !{null, !6439, !27}
!7655 = !{!7656, !7657}
!7656 = !DILocalVariable(name: "r", arg: 1, scope: !7652, file: !273, line: 134, type: !6439)
!7657 = !DILocalVariable(name: "n", arg: 2, scope: !7652, file: !273, line: 134, type: !27)
!7658 = !DILocation(line: 134, column: 45, scope: !7652)
!7659 = !DILocation(line: 134, column: 52, scope: !7652)
!7660 = !DILocation(line: 136, column: 14, scope: !7652)
!7661 = !DILocation(line: 136, column: 17, scope: !7652)
!7662 = !DILocation(line: 136, column: 23, scope: !7652)
!7663 = !DILocation(line: 136, column: 2, scope: !7652)
!7664 = !DILocation(line: 137, column: 1, scope: !7652)
!7665 = distinct !DISubprogram(name: "atomic_set", scope: !6507, file: !6507, line: 65, type: !7666, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7668)
!7666 = !DISubroutineType(types: !7667)
!7667 = !{null, !6510, !27}
!7668 = !{!7669, !7670}
!7669 = !DILocalVariable(name: "v", arg: 1, scope: !7665, file: !6507, line: 65, type: !6510)
!7670 = !DILocalVariable(name: "i", arg: 2, scope: !7665, file: !6507, line: 65, type: !27)
!7671 = !DILocation(line: 65, column: 22, scope: !7665)
!7672 = !DILocation(line: 65, column: 29, scope: !7665)
!7673 = !DILocation(line: 67, column: 26, scope: !7665)
!7674 = !DILocation(line: 67, column: 2, scope: !7665)
!7675 = !DILocation(line: 68, column: 17, scope: !7665)
!7676 = !DILocation(line: 68, column: 20, scope: !7665)
!7677 = !DILocation(line: 68, column: 2, scope: !7665)
!7678 = !DILocation(line: 69, column: 1, scope: !7665)
!7679 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6529, file: !6529, line: 80, type: !6530, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7680)
!7680 = !{!7681, !7682}
!7681 = !DILocalVariable(name: "v", arg: 1, scope: !7679, file: !6529, line: 80, type: !6532)
!7682 = !DILocalVariable(name: "size", arg: 2, scope: !7679, file: !6529, line: 80, type: !40)
!7683 = !DILocation(line: 80, column: 74, scope: !7679)
!7684 = !DILocation(line: 80, column: 84, scope: !7679)
!7685 = !DILocation(line: 82, column: 20, scope: !7679)
!7686 = !DILocation(line: 82, column: 23, scope: !7679)
!7687 = !DILocation(line: 82, column: 2, scope: !7679)
!7688 = !DILocation(line: 83, column: 2, scope: !7679)
!7689 = !DILocation(line: 84, column: 1, scope: !7679)
!7690 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6546, file: !6546, line: 488, type: !7666, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7691)
!7691 = !{!7692, !7693}
!7692 = !DILocalVariable(name: "v", arg: 1, scope: !7690, file: !6546, line: 488, type: !6510)
!7693 = !DILocalVariable(name: "i", arg: 2, scope: !7690, file: !6546, line: 488, type: !27)
!7694 = !DILocation(line: 488, column: 26, scope: !7690)
!7695 = !DILocation(line: 488, column: 33, scope: !7690)
!7696 = !DILocation(line: 490, column: 18, scope: !7690)
!7697 = !DILocation(line: 490, column: 21, scope: !7690)
!7698 = !DILocation(line: 490, column: 2, scope: !7690)
!7699 = !DILocation(line: 491, column: 1, scope: !7690)
!7700 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6579, file: !6579, line: 26, type: !7666, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7701)
!7701 = !{!7702, !7703}
!7702 = !DILocalVariable(name: "v", arg: 1, scope: !7700, file: !6579, line: 26, type: !6510)
!7703 = !DILocalVariable(name: "i", arg: 2, scope: !7700, file: !6579, line: 26, type: !27)
!7704 = !DILocation(line: 26, column: 55, scope: !7700)
!7705 = !DILocation(line: 26, column: 62, scope: !7700)
!7706 = !DILocation(line: 28, column: 2, scope: !7700)
!7707 = !DILocation(line: 28, column: 2, scope: !7708)
!7708 = distinct !DILexicalBlock(scope: !7700, file: !6579, line: 28, column: 2)
!7709 = !DILocation(line: 29, column: 1, scope: !7700)
!7710 = distinct !DISubprogram(name: "__do_sys_eventfd", scope: !2, file: !2, line: 438, type: !7711, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7713)
!7711 = !DISubroutineType(types: !7712)
!7712 = !{!1050, !13}
!7713 = !{!7714}
!7714 = !DILocalVariable(name: "count", arg: 1, scope: !7710, file: !2, line: 438, type: !13)
!7715 = !DILocation(line: 438, column: 1, scope: !7710)
!7716 = !DILocation(line: 440, column: 20, scope: !7710)
!7717 = !DILocation(line: 440, column: 9, scope: !7710)
!7718 = !DILocation(line: 440, column: 2, scope: !7710)
