; ModuleID = 'drivers/tty/vt/selection.c'
source_filename = "drivers/tty/vt/selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_clear_selection: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad clear_selection ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_set_selection_kernel: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad set_selection_kernel ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_paste_selection: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad paste_selection ; .previous"

%struct.vc_selection = type { %struct.mutex, ptr, ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.pcpu_hot = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19, [16 x i8] }
%struct.anon.19 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tiocl_selection = type { i16, i16, i16, i16, i16 }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i64, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [4 x i64], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, ptr, %struct.anon.14, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.13, i32, i32, i32, i32, i32, i8, [3 x i8], [0 x i8] }
%union.anon.13 = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.anon.14 = type { %union.anon.15, [0 x i8] }
%union.anon.15 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.tty_struct = type { %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, %struct.ld_semaphore, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, i32, %struct.winsize, %struct.anon.16, %struct.anon.17, i8, i8, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, ptr, %struct.list_head, %struct.work_struct }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.16 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.17 = type { ptr, ptr, %struct.spinlock, i8, i8, [0 x i64] }
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

@vc_sel = internal global %struct.vc_selection { %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vc_sel, i64 16), ptr getelementptr (i8, ptr @vc_sel, i64 16) } }, ptr null, ptr null, i32 0, i32 -1, i32 0 }, align 8, !dbg !0
@__UNIQUE_ID___addressable_clear_selection289 = internal global ptr @clear_selection, section ".discard.addressable", align 8, !dbg !5001
@inwordLut = internal global [4 x i32] [i32 0, i32 67100672, i32 -2013265922, i32 134217726], align 16, !dbg !5013
@vc_cons = external dso_local global [63 x %struct.vc], align 16
@fg_console = external dso_local global i32, align 4
@__UNIQUE_ID___addressable_set_selection_kernel298 = internal global ptr @set_selection_kernel, section ".discard.addressable", align 8, !dbg !5003
@__UNIQUE_ID___addressable_paste_selection301 = internal global ptr @paste_selection, section ".discard.addressable", align 8, !dbg !5005
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !5007
@.str.1 = private unnamed_addr constant [31 x i8] c"\014selection: kmalloc() failed\0A\00", align 1, !dbg !5016
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5021
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_clear_selection289, ptr @__UNIQUE_ID___addressable_set_selection_kernel298, ptr @__UNIQUE_ID___addressable_paste_selection301], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clear_selection() #0 align 16 !dbg !5237 {
entry:
  call void @highlight_pointer(i32 noundef -1) #18, !dbg !5238
  %0 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4, !dbg !5239
  %cmp = icmp ne i32 %0, -1, !dbg !5241
  br i1 %cmp, label %if.then, label %if.end, !dbg !5242

if.then:                                          ; preds = %entry
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4, !dbg !5243
  %2 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 8, !dbg !5245
  call void @highlight(i32 noundef %1, i32 noundef %2) #18, !dbg !5246
  store volatile i32 -1, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4, !dbg !5247
  br label %if.end, !dbg !5248

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5249
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @highlight_pointer(i32 noundef %where) #1 align 16 !dbg !5250 {
entry:
  %where.addr = alloca i32, align 4
  store i32 %where, ptr %where.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !5254, metadata !DIExpression()), !dbg !5255
  %0 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 8, !dbg !5256
  %1 = load i32, ptr %where.addr, align 4, !dbg !5257
  call void @complement_pos(ptr noundef %0, i32 noundef %1) #18, !dbg !5258
  ret void, !dbg !5259
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @highlight(i32 noundef %s, i32 noundef %e) #1 align 16 !dbg !5260 {
entry:
  %s.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  store i32 %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5264, metadata !DIExpression()), !dbg !5266
  store i32 %e, ptr %e.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !5265, metadata !DIExpression()), !dbg !5267
  %0 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 8, !dbg !5268
  %1 = load i32, ptr %s.addr, align 4, !dbg !5269
  %2 = load i32, ptr %e.addr, align 4, !dbg !5270
  %3 = load i32, ptr %s.addr, align 4, !dbg !5271
  %sub = sub i32 %2, %3, !dbg !5272
  %add = add i32 %sub, 2, !dbg !5273
  call void @invert_screen(ptr noundef %0, i32 noundef %1, i32 noundef %add, i1 noundef zeroext true) #18, !dbg !5274
  ret void, !dbg !5275
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @vc_is_sel(ptr noundef %vc) #0 align 16 !dbg !5276 {
entry:
  %vc.addr = alloca ptr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !5280, metadata !DIExpression()), !dbg !5281
  %0 = load ptr, ptr %vc.addr, align 8, !dbg !5282
  %1 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 8, !dbg !5283
  %cmp = icmp eq ptr %0, %1, !dbg !5284
  ret i1 %cmp, !dbg !5285
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sel_loadlut(ptr noundef %p) #0 align 16 !dbg !5286 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %tmplut = alloca [4 x i32], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5290, metadata !DIExpression()), !dbg !5292
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmplut) #19, !dbg !5293
  call void @llvm.dbg.declare(metadata ptr %tmplut, metadata !5291, metadata !DIExpression()), !dbg !5294
  %arraydecay = getelementptr inbounds [4 x i32], ptr %tmplut, i64 0, i64 0, !dbg !5295
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5297
  %add.ptr = getelementptr i8, ptr %0, i64 4, !dbg !5298
  %call = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %add.ptr, i64 noundef 16) #18, !dbg !5299
  %tobool = icmp ne i64 %call, 0, !dbg !5299
  br i1 %tobool, label %if.then, label %if.end, !dbg !5300

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !5301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5301

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [4 x i32], ptr %tmplut, i64 0, i64 0, !dbg !5302
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 @inwordLut, ptr align 16 %arraydecay1, i64 16, i1 false), !dbg !5302
  store i32 0, ptr %retval, align 4, !dbg !5303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5303

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmplut) #19, !dbg !5304
  %1 = load i32, ptr %retval, align 4, !dbg !5304
  ret i32 %1, !dbg !5304
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !5305 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5310, metadata !DIExpression()), !dbg !5313
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5311, metadata !DIExpression()), !dbg !5314
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5312, metadata !DIExpression()), !dbg !5315
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5316
  %1 = load i64, ptr %n.addr, align 8, !dbg !5318
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #18, !dbg !5319
  br i1 %call, label %if.then, label %if.end, !dbg !5320

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5321
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5322
  %4 = load i64, ptr %n.addr, align 8, !dbg !5323
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #18, !dbg !5324
  store i64 %call1, ptr %n.addr, align 8, !dbg !5325
  br label %if.end, !dbg !5326

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5327
  ret i64 %5, !dbg !5328
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @set_selection_user(ptr noundef %sel, ptr noundef %tty) #0 align 16 !dbg !5329 {
entry:
  %retval = alloca i32, align 4
  %sel.addr = alloca ptr, align 8
  %tty.addr = alloca ptr, align 8
  %v = alloca %struct.tiocl_selection, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sel, ptr %sel.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sel.addr, metadata !5343, metadata !DIExpression()), !dbg !5346
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5344, metadata !DIExpression()), !dbg !5347
  call void @llvm.lifetime.start.p0(i64 10, ptr %v) #19, !dbg !5348
  call void @llvm.dbg.declare(metadata ptr %v, metadata !5345, metadata !DIExpression()), !dbg !5349
  %0 = load ptr, ptr %sel.addr, align 8, !dbg !5350
  %call = call i64 @copy_from_user(ptr noundef %v, ptr noundef %0, i64 noundef 10) #18, !dbg !5352
  %tobool = icmp ne i64 %call, 0, !dbg !5352
  br i1 %tobool, label %if.then, label %if.end, !dbg !5353

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !5354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5354

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5355
  %call1 = call i32 @set_selection_kernel(ptr noundef %v, ptr noundef %1) #18, !dbg !5356
  store i32 %call1, ptr %retval, align 4, !dbg !5357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5357

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 10, ptr %v) #19, !dbg !5358
  %2 = load i32, ptr %retval, align 4, !dbg !5358
  ret i32 %2, !dbg !5358
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @set_selection_kernel(ptr noundef %v, ptr noundef %tty) #0 align 16 !dbg !5359 {
entry:
  %v.addr = alloca ptr, align 8
  %tty.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5364, metadata !DIExpression()), !dbg !5367
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5365, metadata !DIExpression()), !dbg !5368
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !5369
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5366, metadata !DIExpression()), !dbg !5370
  call void @mutex_lock(ptr noundef @vc_sel) #18, !dbg !5371
  call void @console_lock() #18, !dbg !5372
  %0 = load i32, ptr @fg_console, align 4, !dbg !5373
  %idxprom = sext i32 %0 to i64, !dbg !5374
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i64 0, i64 %idxprom, !dbg !5374
  %d = getelementptr inbounds %struct.vc, ptr %arrayidx, i32 0, i32 0, !dbg !5375
  %1 = load ptr, ptr %d, align 8, !dbg !5375
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5376
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5377
  %call = call i32 @vc_selection(ptr noundef %1, ptr noundef %2, ptr noundef %3) #18, !dbg !5378
  store i32 %call, ptr %ret, align 4, !dbg !5379
  call void @console_unlock() #18, !dbg !5380
  call void @mutex_unlock(ptr noundef @vc_sel) #18, !dbg !5381
  %4 = load i32, ptr %ret, align 4, !dbg !5382
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !5383
  ret i32 %4, !dbg !5384
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5385 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5389 dso_local void @console_lock() #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vc_selection(ptr noundef %vc, ptr noundef %v, ptr noundef %tty) #0 align 16 !dbg !5390 {
entry:
  %retval = alloca i32, align 4
  %vc.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %tty.addr = alloca ptr, align 8
  %ps = alloca i32, align 4
  %pe = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x290 = alloca i16, align 2
  %__UNIQUE_ID___y291 = alloca i16, align 2
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x292 = alloca i16, align 2
  %__UNIQUE_ID___y293 = alloca i16, align 2
  %tmp19 = alloca i32, align 4
  %__UNIQUE_ID___x294 = alloca i16, align 2
  %__UNIQUE_ID___y295 = alloca i16, align 2
  %tmp38 = alloca i32, align 4
  %__UNIQUE_ID___x296 = alloca i16, align 2
  %__UNIQUE_ID___y297 = alloca i16, align 2
  %tmp57 = alloca i32, align 4
  %__tmp = alloca i32, align 4
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !5394, metadata !DIExpression()), !dbg !5414
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5395, metadata !DIExpression()), !dbg !5415
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5396, metadata !DIExpression()), !dbg !5416
  call void @llvm.lifetime.start.p0(i64 4, ptr %ps) #19, !dbg !5417
  call void @llvm.dbg.declare(metadata ptr %ps, metadata !5397, metadata !DIExpression()), !dbg !5418
  call void @llvm.lifetime.start.p0(i64 4, ptr %pe) #19, !dbg !5417
  call void @llvm.dbg.declare(metadata ptr %pe, metadata !5398, metadata !DIExpression()), !dbg !5419
  call void @poke_blanked_console() #18, !dbg !5420
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5421
  %sel_mode = getelementptr inbounds %struct.tiocl_selection, ptr %0, i32 0, i32 4, !dbg !5423
  %1 = load i16, ptr %sel_mode, align 2, !dbg !5423
  %conv = zext i16 %1 to i32, !dbg !5421
  %cmp = icmp eq i32 %conv, 4, !dbg !5424
  br i1 %cmp, label %if.then, label %if.end, !dbg !5425

if.then:                                          ; preds = %entry
  call void @clear_selection() #18, !dbg !5426
  store i32 0, ptr %retval, align 4, !dbg !5428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5428

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___x290) #19, !dbg !5429
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x290, metadata !5399, metadata !DIExpression()), !dbg !5429
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5429
  %xs = getelementptr inbounds %struct.tiocl_selection, ptr %2, i32 0, i32 0, !dbg !5429
  %3 = load i16, ptr %xs, align 2, !dbg !5429
  %conv2 = zext i16 %3 to i32, !dbg !5429
  %sub = sub i32 %conv2, 1, !dbg !5429
  %conv3 = trunc i32 %sub to i16, !dbg !5429
  store i16 %conv3, ptr %__UNIQUE_ID___x290, align 2, !dbg !5429
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___y291) #19, !dbg !5429
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y291, metadata !5401, metadata !DIExpression()), !dbg !5429
  %4 = load ptr, ptr %vc.addr, align 8, !dbg !5429
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 4, !dbg !5429
  %5 = load i32, ptr %vc_cols, align 4, !dbg !5429
  %sub4 = sub i32 %5, 1, !dbg !5429
  %conv5 = trunc i32 %sub4 to i16, !dbg !5429
  store i16 %conv5, ptr %__UNIQUE_ID___y291, align 2, !dbg !5429
  %6 = load i16, ptr %__UNIQUE_ID___x290, align 2, !dbg !5429
  %conv6 = zext i16 %6 to i32, !dbg !5429
  %7 = load i16, ptr %__UNIQUE_ID___y291, align 2, !dbg !5429
  %conv7 = zext i16 %7 to i32, !dbg !5429
  %cmp8 = icmp slt i32 %conv6, %conv7, !dbg !5429
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !5429

cond.true:                                        ; preds = %if.end
  %8 = load i16, ptr %__UNIQUE_ID___x290, align 2, !dbg !5429
  %conv10 = zext i16 %8 to i32, !dbg !5429
  br label %cond.end, !dbg !5429

cond.false:                                       ; preds = %if.end
  %9 = load i16, ptr %__UNIQUE_ID___y291, align 2, !dbg !5429
  %conv11 = zext i16 %9 to i32, !dbg !5429
  br label %cond.end, !dbg !5429

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv10, %cond.true ], [ %conv11, %cond.false ], !dbg !5429
  store i32 %cond, ptr %tmp, align 4, !dbg !5429
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___y291) #19, !dbg !5430
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___x290) #19, !dbg !5430
  %10 = load i32, ptr %tmp, align 4, !dbg !5429
  %conv12 = trunc i32 %10 to i16, !dbg !5430
  %11 = load ptr, ptr %v.addr, align 8, !dbg !5431
  %xs13 = getelementptr inbounds %struct.tiocl_selection, ptr %11, i32 0, i32 0, !dbg !5432
  store i16 %conv12, ptr %xs13, align 2, !dbg !5433
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___x292) #19, !dbg !5434
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x292, metadata !5402, metadata !DIExpression()), !dbg !5434
  %12 = load ptr, ptr %v.addr, align 8, !dbg !5434
  %ys = getelementptr inbounds %struct.tiocl_selection, ptr %12, i32 0, i32 1, !dbg !5434
  %13 = load i16, ptr %ys, align 2, !dbg !5434
  %conv14 = zext i16 %13 to i32, !dbg !5434
  %sub15 = sub i32 %conv14, 1, !dbg !5434
  %conv16 = trunc i32 %sub15 to i16, !dbg !5434
  store i16 %conv16, ptr %__UNIQUE_ID___x292, align 2, !dbg !5434
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___y293) #19, !dbg !5434
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y293, metadata !5404, metadata !DIExpression()), !dbg !5434
  %14 = load ptr, ptr %vc.addr, align 8, !dbg !5434
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %14, i32 0, i32 5, !dbg !5434
  %15 = load i32, ptr %vc_rows, align 8, !dbg !5434
  %sub17 = sub i32 %15, 1, !dbg !5434
  %conv18 = trunc i32 %sub17 to i16, !dbg !5434
  store i16 %conv18, ptr %__UNIQUE_ID___y293, align 2, !dbg !5434
  %16 = load i16, ptr %__UNIQUE_ID___x292, align 2, !dbg !5434
  %conv20 = zext i16 %16 to i32, !dbg !5434
  %17 = load i16, ptr %__UNIQUE_ID___y293, align 2, !dbg !5434
  %conv21 = zext i16 %17 to i32, !dbg !5434
  %cmp22 = icmp slt i32 %conv20, %conv21, !dbg !5434
  br i1 %cmp22, label %cond.true24, label %cond.false26, !dbg !5434

cond.true24:                                      ; preds = %cond.end
  %18 = load i16, ptr %__UNIQUE_ID___x292, align 2, !dbg !5434
  %conv25 = zext i16 %18 to i32, !dbg !5434
  br label %cond.end28, !dbg !5434

cond.false26:                                     ; preds = %cond.end
  %19 = load i16, ptr %__UNIQUE_ID___y293, align 2, !dbg !5434
  %conv27 = zext i16 %19 to i32, !dbg !5434
  br label %cond.end28, !dbg !5434

cond.end28:                                       ; preds = %cond.false26, %cond.true24
  %cond29 = phi i32 [ %conv25, %cond.true24 ], [ %conv27, %cond.false26 ], !dbg !5434
  store i32 %cond29, ptr %tmp19, align 4, !dbg !5434
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___y293) #19, !dbg !5435
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___x292) #19, !dbg !5435
  %20 = load i32, ptr %tmp19, align 4, !dbg !5434
  %conv30 = trunc i32 %20 to i16, !dbg !5435
  %21 = load ptr, ptr %v.addr, align 8, !dbg !5436
  %ys31 = getelementptr inbounds %struct.tiocl_selection, ptr %21, i32 0, i32 1, !dbg !5437
  store i16 %conv30, ptr %ys31, align 2, !dbg !5438
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___x294) #19, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x294, metadata !5405, metadata !DIExpression()), !dbg !5439
  %22 = load ptr, ptr %v.addr, align 8, !dbg !5439
  %xe = getelementptr inbounds %struct.tiocl_selection, ptr %22, i32 0, i32 2, !dbg !5439
  %23 = load i16, ptr %xe, align 2, !dbg !5439
  %conv32 = zext i16 %23 to i32, !dbg !5439
  %sub33 = sub i32 %conv32, 1, !dbg !5439
  %conv34 = trunc i32 %sub33 to i16, !dbg !5439
  store i16 %conv34, ptr %__UNIQUE_ID___x294, align 2, !dbg !5439
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___y295) #19, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y295, metadata !5407, metadata !DIExpression()), !dbg !5439
  %24 = load ptr, ptr %vc.addr, align 8, !dbg !5439
  %vc_cols35 = getelementptr inbounds %struct.vc_data, ptr %24, i32 0, i32 4, !dbg !5439
  %25 = load i32, ptr %vc_cols35, align 4, !dbg !5439
  %sub36 = sub i32 %25, 1, !dbg !5439
  %conv37 = trunc i32 %sub36 to i16, !dbg !5439
  store i16 %conv37, ptr %__UNIQUE_ID___y295, align 2, !dbg !5439
  %26 = load i16, ptr %__UNIQUE_ID___x294, align 2, !dbg !5439
  %conv39 = zext i16 %26 to i32, !dbg !5439
  %27 = load i16, ptr %__UNIQUE_ID___y295, align 2, !dbg !5439
  %conv40 = zext i16 %27 to i32, !dbg !5439
  %cmp41 = icmp slt i32 %conv39, %conv40, !dbg !5439
  br i1 %cmp41, label %cond.true43, label %cond.false45, !dbg !5439

cond.true43:                                      ; preds = %cond.end28
  %28 = load i16, ptr %__UNIQUE_ID___x294, align 2, !dbg !5439
  %conv44 = zext i16 %28 to i32, !dbg !5439
  br label %cond.end47, !dbg !5439

cond.false45:                                     ; preds = %cond.end28
  %29 = load i16, ptr %__UNIQUE_ID___y295, align 2, !dbg !5439
  %conv46 = zext i16 %29 to i32, !dbg !5439
  br label %cond.end47, !dbg !5439

cond.end47:                                       ; preds = %cond.false45, %cond.true43
  %cond48 = phi i32 [ %conv44, %cond.true43 ], [ %conv46, %cond.false45 ], !dbg !5439
  store i32 %cond48, ptr %tmp38, align 4, !dbg !5439
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___y295) #19, !dbg !5440
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___x294) #19, !dbg !5440
  %30 = load i32, ptr %tmp38, align 4, !dbg !5439
  %conv49 = trunc i32 %30 to i16, !dbg !5440
  %31 = load ptr, ptr %v.addr, align 8, !dbg !5441
  %xe50 = getelementptr inbounds %struct.tiocl_selection, ptr %31, i32 0, i32 2, !dbg !5442
  store i16 %conv49, ptr %xe50, align 2, !dbg !5443
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___x296) #19, !dbg !5444
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x296, metadata !5408, metadata !DIExpression()), !dbg !5444
  %32 = load ptr, ptr %v.addr, align 8, !dbg !5444
  %ye = getelementptr inbounds %struct.tiocl_selection, ptr %32, i32 0, i32 3, !dbg !5444
  %33 = load i16, ptr %ye, align 2, !dbg !5444
  %conv51 = zext i16 %33 to i32, !dbg !5444
  %sub52 = sub i32 %conv51, 1, !dbg !5444
  %conv53 = trunc i32 %sub52 to i16, !dbg !5444
  store i16 %conv53, ptr %__UNIQUE_ID___x296, align 2, !dbg !5444
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___y297) #19, !dbg !5444
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y297, metadata !5410, metadata !DIExpression()), !dbg !5444
  %34 = load ptr, ptr %vc.addr, align 8, !dbg !5444
  %vc_rows54 = getelementptr inbounds %struct.vc_data, ptr %34, i32 0, i32 5, !dbg !5444
  %35 = load i32, ptr %vc_rows54, align 8, !dbg !5444
  %sub55 = sub i32 %35, 1, !dbg !5444
  %conv56 = trunc i32 %sub55 to i16, !dbg !5444
  store i16 %conv56, ptr %__UNIQUE_ID___y297, align 2, !dbg !5444
  %36 = load i16, ptr %__UNIQUE_ID___x296, align 2, !dbg !5444
  %conv58 = zext i16 %36 to i32, !dbg !5444
  %37 = load i16, ptr %__UNIQUE_ID___y297, align 2, !dbg !5444
  %conv59 = zext i16 %37 to i32, !dbg !5444
  %cmp60 = icmp slt i32 %conv58, %conv59, !dbg !5444
  br i1 %cmp60, label %cond.true62, label %cond.false64, !dbg !5444

cond.true62:                                      ; preds = %cond.end47
  %38 = load i16, ptr %__UNIQUE_ID___x296, align 2, !dbg !5444
  %conv63 = zext i16 %38 to i32, !dbg !5444
  br label %cond.end66, !dbg !5444

cond.false64:                                     ; preds = %cond.end47
  %39 = load i16, ptr %__UNIQUE_ID___y297, align 2, !dbg !5444
  %conv65 = zext i16 %39 to i32, !dbg !5444
  br label %cond.end66, !dbg !5444

cond.end66:                                       ; preds = %cond.false64, %cond.true62
  %cond67 = phi i32 [ %conv63, %cond.true62 ], [ %conv65, %cond.false64 ], !dbg !5444
  store i32 %cond67, ptr %tmp57, align 4, !dbg !5444
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___y297) #19, !dbg !5445
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___x296) #19, !dbg !5445
  %40 = load i32, ptr %tmp57, align 4, !dbg !5444
  %conv68 = trunc i32 %40 to i16, !dbg !5445
  %41 = load ptr, ptr %v.addr, align 8, !dbg !5446
  %ye69 = getelementptr inbounds %struct.tiocl_selection, ptr %41, i32 0, i32 3, !dbg !5447
  store i16 %conv68, ptr %ye69, align 2, !dbg !5448
  %call = call i32 @mouse_reporting() #18, !dbg !5449
  %tobool = icmp ne i32 %call, 0, !dbg !5449
  br i1 %tobool, label %land.lhs.true, label %if.end81, !dbg !5451

land.lhs.true:                                    ; preds = %cond.end66
  %42 = load ptr, ptr %v.addr, align 8, !dbg !5452
  %sel_mode70 = getelementptr inbounds %struct.tiocl_selection, ptr %42, i32 0, i32 4, !dbg !5453
  %43 = load i16, ptr %sel_mode70, align 2, !dbg !5453
  %conv71 = zext i16 %43 to i32, !dbg !5452
  %and = and i32 %conv71, 16, !dbg !5454
  %tobool72 = icmp ne i32 %and, 0, !dbg !5454
  br i1 %tobool72, label %if.then73, label %if.end81, !dbg !5455

if.then73:                                        ; preds = %land.lhs.true
  %44 = load ptr, ptr %tty.addr, align 8, !dbg !5456
  %45 = load ptr, ptr %v.addr, align 8, !dbg !5458
  %sel_mode74 = getelementptr inbounds %struct.tiocl_selection, ptr %45, i32 0, i32 4, !dbg !5459
  %46 = load i16, ptr %sel_mode74, align 2, !dbg !5459
  %conv75 = zext i16 %46 to i32, !dbg !5458
  %and76 = and i32 %conv75, 15, !dbg !5460
  %47 = load ptr, ptr %v.addr, align 8, !dbg !5461
  %xs77 = getelementptr inbounds %struct.tiocl_selection, ptr %47, i32 0, i32 0, !dbg !5462
  %48 = load i16, ptr %xs77, align 2, !dbg !5462
  %conv78 = zext i16 %48 to i32, !dbg !5461
  %49 = load ptr, ptr %v.addr, align 8, !dbg !5463
  %ys79 = getelementptr inbounds %struct.tiocl_selection, ptr %49, i32 0, i32 1, !dbg !5464
  %50 = load i16, ptr %ys79, align 2, !dbg !5464
  %conv80 = zext i16 %50 to i32, !dbg !5463
  call void @mouse_report(ptr noundef %44, i32 noundef %and76, i32 noundef %conv78, i32 noundef %conv80) #18, !dbg !5465
  store i32 0, ptr %retval, align 4, !dbg !5466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5466

if.end81:                                         ; preds = %land.lhs.true, %cond.end66
  %51 = load ptr, ptr %v.addr, align 8, !dbg !5467
  %ys82 = getelementptr inbounds %struct.tiocl_selection, ptr %51, i32 0, i32 1, !dbg !5468
  %52 = load i16, ptr %ys82, align 2, !dbg !5468
  %conv83 = zext i16 %52 to i32, !dbg !5467
  %53 = load ptr, ptr %vc.addr, align 8, !dbg !5469
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %53, i32 0, i32 6, !dbg !5470
  %54 = load i32, ptr %vc_size_row, align 4, !dbg !5470
  %mul = mul i32 %conv83, %54, !dbg !5471
  %55 = load ptr, ptr %v.addr, align 8, !dbg !5472
  %xs84 = getelementptr inbounds %struct.tiocl_selection, ptr %55, i32 0, i32 0, !dbg !5473
  %56 = load i16, ptr %xs84, align 2, !dbg !5473
  %conv85 = zext i16 %56 to i32, !dbg !5472
  %shl = shl i32 %conv85, 1, !dbg !5474
  %add = add i32 %mul, %shl, !dbg !5475
  store i32 %add, ptr %ps, align 4, !dbg !5476
  %57 = load ptr, ptr %v.addr, align 8, !dbg !5477
  %ye86 = getelementptr inbounds %struct.tiocl_selection, ptr %57, i32 0, i32 3, !dbg !5478
  %58 = load i16, ptr %ye86, align 2, !dbg !5478
  %conv87 = zext i16 %58 to i32, !dbg !5477
  %59 = load ptr, ptr %vc.addr, align 8, !dbg !5479
  %vc_size_row88 = getelementptr inbounds %struct.vc_data, ptr %59, i32 0, i32 6, !dbg !5480
  %60 = load i32, ptr %vc_size_row88, align 4, !dbg !5480
  %mul89 = mul i32 %conv87, %60, !dbg !5481
  %61 = load ptr, ptr %v.addr, align 8, !dbg !5482
  %xe90 = getelementptr inbounds %struct.tiocl_selection, ptr %61, i32 0, i32 2, !dbg !5483
  %62 = load i16, ptr %xe90, align 2, !dbg !5483
  %conv91 = zext i16 %62 to i32, !dbg !5482
  %shl92 = shl i32 %conv91, 1, !dbg !5484
  %add93 = add i32 %mul89, %shl92, !dbg !5485
  store i32 %add93, ptr %pe, align 4, !dbg !5486
  %63 = load i32, ptr %ps, align 4, !dbg !5487
  %64 = load i32, ptr %pe, align 4, !dbg !5488
  %cmp94 = icmp sgt i32 %63, %64, !dbg !5489
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !5490

if.then96:                                        ; preds = %if.end81
  br label %do.body, !dbg !5491

do.body:                                          ; preds = %if.then96
  call void @llvm.lifetime.start.p0(i64 4, ptr %__tmp) #19, !dbg !5492
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5411, metadata !DIExpression()), !dbg !5492
  %65 = load i32, ptr %ps, align 4, !dbg !5492
  store i32 %65, ptr %__tmp, align 4, !dbg !5492
  %66 = load i32, ptr %pe, align 4, !dbg !5492
  store i32 %66, ptr %ps, align 4, !dbg !5492
  %67 = load i32, ptr %__tmp, align 4, !dbg !5492
  store i32 %67, ptr %pe, align 4, !dbg !5492
  call void @llvm.lifetime.end.p0(i64 4, ptr %__tmp) #19, !dbg !5491
  br label %do.cond, !dbg !5492

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5492

do.end:                                           ; preds = %do.cond
  br label %if.end97, !dbg !5492

if.end97:                                         ; preds = %do.end, %if.end81
  %68 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 8, !dbg !5493
  %69 = load ptr, ptr %vc.addr, align 8, !dbg !5495
  %cmp98 = icmp ne ptr %68, %69, !dbg !5496
  br i1 %cmp98, label %if.then100, label %if.end101, !dbg !5497

if.then100:                                       ; preds = %if.end97
  call void @clear_selection() #18, !dbg !5498
  %70 = load ptr, ptr %vc.addr, align 8, !dbg !5500
  store ptr %70, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 8, !dbg !5501
  br label %if.end101, !dbg !5502

if.end101:                                        ; preds = %if.then100, %if.end97
  %71 = load ptr, ptr %vc.addr, align 8, !dbg !5503
  %72 = load ptr, ptr %v.addr, align 8, !dbg !5504
  %sel_mode102 = getelementptr inbounds %struct.tiocl_selection, ptr %72, i32 0, i32 4, !dbg !5505
  %73 = load i16, ptr %sel_mode102, align 2, !dbg !5505
  %74 = load i32, ptr %ps, align 4, !dbg !5506
  %75 = load i32, ptr %pe, align 4, !dbg !5507
  %call103 = call i32 @vc_do_selection(ptr noundef %71, i16 noundef zeroext %73, i32 noundef %74, i32 noundef %75) #18, !dbg !5508
  store i32 %call103, ptr %retval, align 4, !dbg !5509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5509

cleanup:                                          ; preds = %if.end101, %if.then73, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pe) #19, !dbg !5510
  call void @llvm.lifetime.end.p0(i64 4, ptr %ps) #19, !dbg !5510
  %76 = load i32, ptr %retval, align 4, !dbg !5510
  ret i32 %76, !dbg !5510
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5511 dso_local void @console_unlock() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5512 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @paste_selection(ptr noundef %tty) #0 align 16 !dbg !5513 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %vc = alloca ptr, align 8
  %pasted = alloca i32, align 4
  %count = alloca i64, align 8
  %ld = alloca ptr, align 8
  %wait = alloca %struct.wait_queue_entry, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5515, metadata !DIExpression()), !dbg !5541
  call void @llvm.lifetime.start.p0(i64 8, ptr %vc) #19, !dbg !5542
  call void @llvm.dbg.declare(metadata ptr %vc, metadata !5516, metadata !DIExpression()), !dbg !5543
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5544
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 31, !dbg !5545
  %1 = load ptr, ptr %driver_data, align 8, !dbg !5545
  store ptr %1, ptr %vc, align 8, !dbg !5543
  call void @llvm.lifetime.start.p0(i64 4, ptr %pasted) #19, !dbg !5546
  call void @llvm.dbg.declare(metadata ptr %pasted, metadata !5517, metadata !DIExpression()), !dbg !5547
  store i32 0, ptr %pasted, align 4, !dbg !5547
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #19, !dbg !5548
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5518, metadata !DIExpression()), !dbg !5549
  call void @llvm.lifetime.start.p0(i64 8, ptr %ld) #19, !dbg !5550
  call void @llvm.dbg.declare(metadata ptr %ld, metadata !5519, metadata !DIExpression()), !dbg !5551
  call void @llvm.lifetime.start.p0(i64 40, ptr %wait) #19, !dbg !5552
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !5520, metadata !DIExpression()), !dbg !5552
  %flags = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 0, !dbg !5552
  store i32 0, ptr %flags, align 8, !dbg !5552
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1, !dbg !5552
  %call = call ptr @get_current() #18, !dbg !5552
  store ptr %call, ptr %private, align 8, !dbg !5552
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2, !dbg !5552
  store ptr @default_wake_function, ptr %func, align 8, !dbg !5552
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, !dbg !5552
  %next = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 0, !dbg !5552
  store ptr null, ptr %next, align 8, !dbg !5552
  %prev = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1, !dbg !5552
  store ptr null, ptr %prev, align 8, !dbg !5552
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !5553
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5532, metadata !DIExpression()), !dbg !5554
  store i32 0, ptr %ret, align 4, !dbg !5554
  call void @console_lock() #18, !dbg !5555
  call void @poke_blanked_console() #18, !dbg !5556
  call void @console_unlock() #18, !dbg !5557
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5558
  %call2 = call ptr @tty_ldisc_ref_wait(ptr noundef %2) #18, !dbg !5559
  store ptr %call2, ptr %ld, align 8, !dbg !5560
  %3 = load ptr, ptr %ld, align 8, !dbg !5561
  %tobool = icmp ne ptr %3, null, !dbg !5561
  br i1 %tobool, label %if.end, label %if.then, !dbg !5563

if.then:                                          ; preds = %entry
  store i32 -5, ptr %retval, align 4, !dbg !5564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5564

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %vc, align 8, !dbg !5565
  %port = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 0, !dbg !5566
  call void @tty_buffer_lock_exclusive(ptr noundef %port) #18, !dbg !5567
  %5 = load ptr, ptr %vc, align 8, !dbg !5568
  %paste_wait = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 36, !dbg !5569
  call void @add_wait_queue(ptr noundef %paste_wait, ptr noundef %wait) #18, !dbg !5570
  call void @mutex_lock(ptr noundef @vc_sel) #18, !dbg !5571
  br label %while.cond, !dbg !5572

while.cond:                                       ; preds = %do.end45, %if.then27, %if.end
  %6 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 8, !dbg !5573
  %tobool3 = icmp ne ptr %6, null, !dbg !5574
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !5575

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 3), align 8, !dbg !5576
  %8 = load i32, ptr %pasted, align 4, !dbg !5577
  %cmp = icmp ugt i32 %7, %8, !dbg !5578
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !5579
  br i1 %9, label %while.body, label %while.end, !dbg !5572

while.body:                                       ; preds = %land.end
  br label %do.body, !dbg !5580

do.body:                                          ; preds = %while.body
  br label %do.body4, !dbg !5581

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !5582

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !5582

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !5581

do.body5:                                         ; preds = %do.end
  br label %do.body6, !dbg !5584

do.body6:                                         ; preds = %do.body5
  br label %do.cond7, !dbg !5585

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5585

do.end8:                                          ; preds = %do.cond7
  br label %do.body9, !dbg !5584

do.body9:                                         ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #19, !dbg !5587
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5533, metadata !DIExpression()), !dbg !5587
  %call10 = call ptr @get_current() #18, !dbg !5587
  %__state = getelementptr inbounds %struct.task_struct, ptr %call10, i32 0, i32 1, !dbg !5587
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !5587
  br label %do.body11, !dbg !5587

do.body11:                                        ; preds = %do.body9
  br label %do.cond12, !dbg !5588

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5588

do.end13:                                         ; preds = %do.cond12
  %10 = load ptr, ptr %__ai_ptr, align 8, !dbg !5587
  call void @instrument_atomic_read_write(ptr noundef %10, i64 noundef 4) #18, !dbg !5587
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #19, !dbg !5590
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5539, metadata !DIExpression()), !dbg !5590
  store i32 1, ptr %__ret, align 4, !dbg !5590
  %11 = load i32, ptr %__ret, align 4, !dbg !5590
  %12 = load ptr, ptr %__ai_ptr, align 8, !dbg !5590
  %13 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %12, i32 %11, ptr elementtype(i32) %12) #19, !dbg !5590, !srcloc !5591
  store i32 %13, ptr %__ret, align 4, !dbg !5590
  %14 = load i32, ptr %__ret, align 4, !dbg !5590
  store i32 %14, ptr %tmp14, align 4, !dbg !5590
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #19, !dbg !5587
  %15 = load i32, ptr %tmp14, align 4, !dbg !5590
  store i32 %15, ptr %tmp, align 4, !dbg !5587
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #19, !dbg !5592
  %16 = load i32, ptr %tmp, align 4, !dbg !5587
  br label %do.cond15, !dbg !5592

do.cond15:                                        ; preds = %do.end13
  br label %do.end16, !dbg !5592

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !5584

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5584

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !5581

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !5581

do.end20:                                         ; preds = %do.cond19
  %call21 = call ptr @get_current() #18, !dbg !5593
  %call22 = call i32 @signal_pending(ptr noundef %call21) #18, !dbg !5595
  %tobool23 = icmp ne i32 %call22, 0, !dbg !5595
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5596

if.then24:                                        ; preds = %do.end20
  store i32 -4, ptr %ret, align 4, !dbg !5597
  br label %while.end, !dbg !5599

if.end25:                                         ; preds = %do.end20
  %17 = load ptr, ptr %tty.addr, align 8, !dbg !5600
  %call26 = call zeroext i1 @tty_throttled(ptr noundef %17) #18, !dbg !5602
  br i1 %call26, label %if.then27, label %if.end28, !dbg !5603

if.then27:                                        ; preds = %if.end25
  call void @mutex_unlock(ptr noundef @vc_sel) #18, !dbg !5604
  call void @schedule() #18, !dbg !5606
  call void @mutex_lock(ptr noundef @vc_sel) #18, !dbg !5607
  br label %while.cond, !dbg !5608, !llvm.loop !5609

if.end28:                                         ; preds = %if.end25
  br label %do.body29, !dbg !5613

do.body29:                                        ; preds = %if.end28
  br label %do.body30, !dbg !5614

do.body30:                                        ; preds = %do.body29
  br label %do.cond31, !dbg !5616

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !5616

do.end32:                                         ; preds = %do.cond31
  br label %do.body33, !dbg !5614

do.body33:                                        ; preds = %do.end32
  br label %do.body34, !dbg !5618

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !5620

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5620

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5618

do.body37:                                        ; preds = %do.end36
  %call38 = call ptr @get_current() #18, !dbg !5622
  %__state39 = getelementptr inbounds %struct.task_struct, ptr %call38, i32 0, i32 1, !dbg !5622
  store volatile i32 0, ptr %__state39, align 8, !dbg !5622
  br label %do.cond40, !dbg !5622

do.cond40:                                        ; preds = %do.body37
  br label %do.end41, !dbg !5622

do.end41:                                         ; preds = %do.cond40
  br label %do.cond42, !dbg !5618

do.cond42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !5618

do.end43:                                         ; preds = %do.cond42
  br label %do.cond44, !dbg !5614

do.cond44:                                        ; preds = %do.end43
  br label %do.end45, !dbg !5614

do.end45:                                         ; preds = %do.cond44
  %18 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 3), align 8, !dbg !5624
  %19 = load i32, ptr %pasted, align 4, !dbg !5625
  %sub = sub i32 %18, %19, !dbg !5626
  %conv = zext i32 %sub to i64, !dbg !5627
  store i64 %conv, ptr %count, align 8, !dbg !5628
  %20 = load ptr, ptr %ld, align 8, !dbg !5629
  %21 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 8, !dbg !5630
  %22 = load i32, ptr %pasted, align 4, !dbg !5631
  %idx.ext = sext i32 %22 to i64, !dbg !5632
  %add.ptr = getelementptr i8, ptr %21, i64 %idx.ext, !dbg !5632
  %23 = load i64, ptr %count, align 8, !dbg !5633
  %call46 = call i64 @tty_ldisc_receive_buf(ptr noundef %20, ptr noundef %add.ptr, ptr noundef null, i64 noundef %23) #18, !dbg !5634
  store i64 %call46, ptr %count, align 8, !dbg !5635
  %24 = load i64, ptr %count, align 8, !dbg !5636
  %25 = load i32, ptr %pasted, align 4, !dbg !5637
  %conv47 = sext i32 %25 to i64, !dbg !5637
  %add = add i64 %conv47, %24, !dbg !5637
  %conv48 = trunc i64 %add to i32, !dbg !5637
  store i32 %conv48, ptr %pasted, align 4, !dbg !5637
  br label %while.cond, !dbg !5572, !llvm.loop !5609

while.end:                                        ; preds = %if.then24, %land.end
  call void @mutex_unlock(ptr noundef @vc_sel) #18, !dbg !5638
  %26 = load ptr, ptr %vc, align 8, !dbg !5639
  %paste_wait49 = getelementptr inbounds %struct.vc_data, ptr %26, i32 0, i32 36, !dbg !5640
  call void @remove_wait_queue(ptr noundef %paste_wait49, ptr noundef %wait) #18, !dbg !5641
  br label %do.body50, !dbg !5642

do.body50:                                        ; preds = %while.end
  br label %do.body51, !dbg !5643

do.body51:                                        ; preds = %do.body50
  br label %do.cond52, !dbg !5645

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !5645

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !5643

do.body54:                                        ; preds = %do.end53
  br label %do.body55, !dbg !5647

do.body55:                                        ; preds = %do.body54
  br label %do.cond56, !dbg !5649

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !5649

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !5647

do.body58:                                        ; preds = %do.end57
  %call59 = call ptr @get_current() #18, !dbg !5651
  %__state60 = getelementptr inbounds %struct.task_struct, ptr %call59, i32 0, i32 1, !dbg !5651
  store volatile i32 0, ptr %__state60, align 8, !dbg !5651
  br label %do.cond61, !dbg !5651

do.cond61:                                        ; preds = %do.body58
  br label %do.end62, !dbg !5651

do.end62:                                         ; preds = %do.cond61
  br label %do.cond63, !dbg !5647

do.cond63:                                        ; preds = %do.end62
  br label %do.end64, !dbg !5647

do.end64:                                         ; preds = %do.cond63
  br label %do.cond65, !dbg !5643

do.cond65:                                        ; preds = %do.end64
  br label %do.end66, !dbg !5643

do.end66:                                         ; preds = %do.cond65
  %27 = load ptr, ptr %vc, align 8, !dbg !5653
  %port67 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 0, !dbg !5654
  call void @tty_buffer_unlock_exclusive(ptr noundef %port67) #18, !dbg !5655
  %28 = load ptr, ptr %ld, align 8, !dbg !5656
  call void @tty_ldisc_deref(ptr noundef %28) #18, !dbg !5657
  %29 = load i32, ptr %ret, align 4, !dbg !5658
  store i32 %29, ptr %retval, align 4, !dbg !5659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5659

cleanup:                                          ; preds = %do.end66, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !5660
  call void @llvm.lifetime.end.p0(i64 40, ptr %wait) #19, !dbg !5660
  call void @llvm.lifetime.end.p0(i64 8, ptr %ld) #19, !dbg !5660
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #19, !dbg !5660
  call void @llvm.lifetime.end.p0(i64 4, ptr %pasted) #19, !dbg !5660
  call void @llvm.lifetime.end.p0(i64 8, ptr %vc) #19, !dbg !5660
  %30 = load i32, ptr %retval, align 4, !dbg !5660
  ret i32 %30, !dbg !5660
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !5661 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #19, !dbg !5672
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5666, metadata !DIExpression()), !dbg !5672
  br label %do.body, !dbg !5672

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5673
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5668, metadata !DIExpression()), !dbg !5673
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5673
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5673
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5672
  br label %do.cond, !dbg !5673

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5673

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #19, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5670, metadata !DIExpression()), !dbg !5674
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #20, !dbg !5674, !srcloc !5675
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5674
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5674
  %3 = inttoptr i64 %2 to ptr, !dbg !5674
  store ptr %3, ptr %tmp, align 8, !dbg !5674
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #19, !dbg !5672
  %4 = load ptr, ptr %tmp, align 8, !dbg !5674
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5672
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5672
  store ptr %5, ptr %tmp1, align 8, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #19, !dbg !5676
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5672
  ret ptr %6, !dbg !5677
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5678 dso_local void @poke_blanked_console() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5680 dso_local ptr @tty_ldisc_ref_wait(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5683 dso_local void @tty_buffer_lock_exclusive(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5685 dso_local void @add_wait_queue(ptr noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5689 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5697, metadata !DIExpression()), !dbg !5699
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5698, metadata !DIExpression()), !dbg !5700
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5701
  %1 = load i64, ptr %size.addr, align 8, !dbg !5702
  %conv = trunc i64 %1 to i32, !dbg !5702
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !5703
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5704
  %3 = load i64, ptr %size.addr, align 8, !dbg !5704
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !5704
  ret void, !dbg !5705
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #1 align 16 !dbg !5706 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5710, metadata !DIExpression()), !dbg !5711
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5712
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #18, !dbg !5712
  %tobool = icmp ne i32 %call, 0, !dbg !5712
  %lnot = xor i1 %tobool, true, !dbg !5712
  %lnot1 = xor i1 %lnot, true, !dbg !5712
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5712
  %conv = sext i32 %lnot.ext to i64, !dbg !5712
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5712
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5712
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5714

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5715
  br label %return, !dbg !5715

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5716
  %call3 = call i32 @task_sigpending(ptr noundef %1) #18, !dbg !5717
  store i32 %call3, ptr %retval, align 4, !dbg !5718
  br label %return, !dbg !5718

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5719
  ret i32 %2, !dbg !5719
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tty_throttled(ptr noundef %tty) #1 align 16 !dbg !5720 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5724, metadata !DIExpression()), !dbg !5725
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5726
  %flags = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16, !dbg !5726
  %1 = ptrtoint ptr %flags to i64, !dbg !5726
  %cmp = icmp ne i64 %1, 0, !dbg !5726
  %conv = zext i1 %cmp to i32, !dbg !5726
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5726
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !5726

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5726
  %flags1 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 16, !dbg !5726
  %4 = ptrtoint ptr %flags1 to i64, !dbg !5726
  %cmp2 = icmp ne i64 %4, 0, !dbg !5726
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5726

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !5726
  %flags5 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 16, !dbg !5726
  %6 = load i64, ptr %flags5, align 8, !dbg !5726
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5726
  br i1 %7, label %cond.true, label %cond.false, !dbg !5726

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !5726
  %flags6 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 16, !dbg !5726
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #18, !dbg !5726
  %conv7 = zext i1 %call to i32, !dbg !5726
  br label %cond.end, !dbg !5726

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !5726
  %flags8 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 16, !dbg !5726
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #18, !dbg !5726
  %conv10 = zext i1 %call9 to i32, !dbg !5726
  br label %cond.end, !dbg !5726

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !5726
  %tobool = icmp ne i32 %cond, 0, !dbg !5726
  ret i1 %tobool, !dbg !5727
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5728 dso_local void @schedule() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5729 dso_local i64 @tty_ldisc_receive_buf(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5732 dso_local void @remove_wait_queue(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5733 dso_local void @tty_buffer_unlock_exclusive(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5734 dso_local void @tty_ldisc_deref(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5737 dso_local void @complement_pos(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5739 dso_local void @invert_screen(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #4 align 16 !dbg !5742 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5746, metadata !DIExpression()), !dbg !5756
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5747, metadata !DIExpression()), !dbg !5757
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !5748, metadata !DIExpression()), !dbg !5758
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #19, !dbg !5759
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5749, metadata !DIExpression()), !dbg !5760
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5761
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !5762
  %conv = trunc i64 %1 to i32, !dbg !5762
  store i32 %conv, ptr %sz, align 4, !dbg !5760
  %2 = load i32, ptr %sz, align 4, !dbg !5763
  %cmp = icmp sge i32 %2, 0, !dbg !5763
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5763

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !5763
  %conv2 = sext i32 %3 to i64, !dbg !5763
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !5763
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !5763
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !5765
  %lnot = xor i1 %5, true, !dbg !5763
  %lnot5 = xor i1 %lnot, true, !dbg !5763
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5763
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5763
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5763
  %tobool = icmp ne i64 %expval, 0, !dbg !5763
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5766

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !5767
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5770
  br i1 %7, label %if.else, label %if.then7, !dbg !5771

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !5772
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !5773
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #18, !dbg !5774
  br label %if.end11, !dbg !5774

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !5775, !range !5777, !noundef !565
  %tobool8 = trunc i8 %10 to i1, !dbg !5775
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !5778

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #18, !dbg !5779, !srcloc !5780
  br label %if.end, !dbg !5779

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #18, !dbg !5781, !srcloc !5782
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !5783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5783

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5784
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5750, metadata !DIExpression()), !dbg !5784
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !5784
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !5784
  %lnot15 = xor i1 %cmp13, true, !dbg !5784
  %lnot17 = xor i1 %lnot15, true, !dbg !5784
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5784
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !5784
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5785
  %tobool19 = icmp ne i32 %12, 0, !dbg !5785
  %lnot20 = xor i1 %tobool19, true, !dbg !5785
  %lnot22 = xor i1 %lnot20, true, !dbg !5785
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5785
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5785
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5785
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5785
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !5784

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !5785

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !5786
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5753, metadata !DIExpression()), !dbg !5786
  store i32 2307, ptr %__flags, align 4, !dbg !5786
  br label %do.body28, !dbg !5786

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !5787

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !5787

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !5786

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !5789
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #19, !dbg !5789, !srcloc !5791
  br label %do.cond30, !dbg !5789

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5789

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5786

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !5792

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5792

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !5785
  br label %do.cond35, !dbg !5786

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5786

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !5786

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5784
  %tobool38 = icmp ne i32 %14, 0, !dbg !5784
  %lnot39 = xor i1 %tobool38, true, !dbg !5784
  %lnot41 = xor i1 %lnot39, true, !dbg !5784
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5784
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5784
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5784
  store i64 %expval44, ptr %tmp, align 8, !dbg !5785
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5794
  %15 = load i64, ptr %tmp, align 8, !dbg !5784
  %tobool45 = icmp ne i64 %15, 0, !dbg !5794
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5795

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !5796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5796

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !5797
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !5798
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !5799, !range !5777, !noundef !565
  %tobool48 = trunc i8 %18 to i1, !dbg !5799
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #18, !dbg !5800
  store i1 true, ptr %retval, align 1, !dbg !5801
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5801

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #19, !dbg !5802
  %19 = load i1, ptr %retval, align 1, !dbg !5802
  ret i1 %19, !dbg !5802
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5803 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #1 align 16 !dbg !5804 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5808, metadata !DIExpression()), !dbg !5810
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5809, metadata !DIExpression()), !dbg !5811
  %0 = load i32, ptr %size.addr, align 4, !dbg !5812
  %1 = load i64, ptr %count.addr, align 8, !dbg !5814
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #18, !dbg !5815
  ret void, !dbg !5816
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5817 dso_local void @__bad_copy_from() #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5818 dso_local void @__bad_copy_to() #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #1 align 16 !dbg !5819 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5823, metadata !DIExpression()), !dbg !5826
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5824, metadata !DIExpression()), !dbg !5827
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !5825, metadata !DIExpression()), !dbg !5828
  ret void, !dbg !5829
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5830 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5831 dso_local i32 @mouse_reporting() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5832 dso_local void @mouse_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vc_do_selection(ptr noundef %vc, i16 noundef zeroext %mode, i32 noundef %ps, i32 noundef %pe) #0 align 16 !dbg !5835 {
entry:
  %retval = alloca i32, align 4
  %vc.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %ps.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  %new_sel_start = alloca i32, align 4
  %new_sel_end = alloca i32, align 4
  %spc = alloca i32, align 4
  %unicode = alloca i8, align 1
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__x51 = alloca i32, align 4
  %tmp52 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !5839, metadata !DIExpression()), !dbg !5852
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5840, metadata !DIExpression()), !dbg !5853
  store i32 %ps, ptr %ps.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ps.addr, metadata !5841, metadata !DIExpression()), !dbg !5854
  store i32 %pe, ptr %pe.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pe.addr, metadata !5842, metadata !DIExpression()), !dbg !5855
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_sel_start) #19, !dbg !5856
  call void @llvm.dbg.declare(metadata ptr %new_sel_start, metadata !5843, metadata !DIExpression()), !dbg !5857
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_sel_end) #19, !dbg !5856
  call void @llvm.dbg.declare(metadata ptr %new_sel_end, metadata !5844, metadata !DIExpression()), !dbg !5858
  call void @llvm.lifetime.start.p0(i64 4, ptr %spc) #19, !dbg !5856
  call void @llvm.dbg.declare(metadata ptr %spc, metadata !5845, metadata !DIExpression()), !dbg !5859
  call void @llvm.lifetime.start.p0(i64 1, ptr %unicode) #19, !dbg !5860
  call void @llvm.dbg.declare(metadata ptr %unicode, metadata !5846, metadata !DIExpression()), !dbg !5861
  %0 = load i32, ptr @fg_console, align 4, !dbg !5862
  %call = call i32 @vt_do_kdgkbmode(i32 noundef %0) #18, !dbg !5863
  %cmp = icmp eq i32 %call, 3, !dbg !5864
  %frombool = zext i1 %cmp to i8, !dbg !5861
  store i8 %frombool, ptr %unicode, align 1, !dbg !5861
  %1 = load i16, ptr %mode.addr, align 2, !dbg !5865
  %conv = zext i16 %1 to i32, !dbg !5865
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb47
    i32 3, label %sw.bb59
  ], !dbg !5866

sw.bb:                                            ; preds = %entry
  %2 = load i32, ptr %ps.addr, align 4, !dbg !5867
  store i32 %2, ptr %new_sel_start, align 4, !dbg !5868
  %3 = load i32, ptr %pe.addr, align 4, !dbg !5869
  store i32 %3, ptr %new_sel_end, align 4, !dbg !5870
  br label %sw.epilog, !dbg !5871

sw.bb1:                                           ; preds = %entry
  %4 = load i32, ptr %ps.addr, align 4, !dbg !5872
  %5 = load i8, ptr %unicode, align 1, !dbg !5872, !range !5777, !noundef !565
  %tobool = trunc i8 %5 to i1, !dbg !5872
  %call2 = call i32 @sel_pos(i32 noundef %4, i1 noundef zeroext %tobool) #18, !dbg !5872
  %cmp3 = icmp eq i32 %call2, 32, !dbg !5872
  %conv4 = zext i1 %cmp3 to i32, !dbg !5872
  store i32 %conv4, ptr %spc, align 4, !dbg !5873
  %6 = load i32, ptr %ps.addr, align 4, !dbg !5874
  store i32 %6, ptr %new_sel_start, align 4, !dbg !5876
  br label %for.cond, !dbg !5877

for.cond:                                         ; preds = %for.inc, %sw.bb1
  %7 = load i32, ptr %spc, align 4, !dbg !5878
  %tobool5 = icmp ne i32 %7, 0, !dbg !5878
  br i1 %tobool5, label %land.lhs.true, label %lor.lhs.false, !dbg !5882

land.lhs.true:                                    ; preds = %for.cond
  %8 = load i32, ptr %ps.addr, align 4, !dbg !5883
  %9 = load i8, ptr %unicode, align 1, !dbg !5883, !range !5777, !noundef !565
  %tobool6 = trunc i8 %9 to i1, !dbg !5883
  %call7 = call i32 @sel_pos(i32 noundef %8, i1 noundef zeroext %tobool6) #18, !dbg !5883
  %cmp8 = icmp eq i32 %call7, 32, !dbg !5883
  br i1 %cmp8, label %lor.lhs.false, label %if.then, !dbg !5884

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.cond
  %10 = load i32, ptr %spc, align 4, !dbg !5885
  %tobool10 = icmp ne i32 %10, 0, !dbg !5885
  br i1 %tobool10, label %if.end, label %land.lhs.true11, !dbg !5886

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %11 = load i32, ptr %ps.addr, align 4, !dbg !5887
  %12 = load i8, ptr %unicode, align 1, !dbg !5888, !range !5777, !noundef !565
  %tobool12 = trunc i8 %12 to i1, !dbg !5888
  %call13 = call i32 @sel_pos(i32 noundef %11, i1 noundef zeroext %tobool12) #18, !dbg !5889
  %call14 = call i32 @inword(i32 noundef %call13) #18, !dbg !5890
  %tobool15 = icmp ne i32 %call14, 0, !dbg !5890
  br i1 %tobool15, label %if.end, label %if.then, !dbg !5891

if.then:                                          ; preds = %land.lhs.true11, %land.lhs.true
  br label %for.end, !dbg !5892

if.end:                                           ; preds = %land.lhs.true11, %lor.lhs.false
  %13 = load i32, ptr %ps.addr, align 4, !dbg !5893
  store i32 %13, ptr %new_sel_start, align 4, !dbg !5894
  %14 = load i32, ptr %ps.addr, align 4, !dbg !5895
  %15 = load ptr, ptr %vc.addr, align 8, !dbg !5897
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 6, !dbg !5898
  %16 = load i32, ptr %vc_size_row, align 4, !dbg !5898
  %rem = urem i32 %14, %16, !dbg !5899
  %tobool16 = icmp ne i32 %rem, 0, !dbg !5899
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !5900

if.then17:                                        ; preds = %if.end
  br label %for.end, !dbg !5901

if.end18:                                         ; preds = %if.end
  br label %for.inc, !dbg !5902

for.inc:                                          ; preds = %if.end18
  %17 = load i32, ptr %ps.addr, align 4, !dbg !5903
  %sub = sub i32 %17, 2, !dbg !5903
  store i32 %sub, ptr %ps.addr, align 4, !dbg !5903
  br label %for.cond, !dbg !5904, !llvm.loop !5905

for.end:                                          ; preds = %if.then17, %if.then
  %18 = load i32, ptr %pe.addr, align 4, !dbg !5908
  %19 = load i8, ptr %unicode, align 1, !dbg !5908, !range !5777, !noundef !565
  %tobool19 = trunc i8 %19 to i1, !dbg !5908
  %call20 = call i32 @sel_pos(i32 noundef %18, i1 noundef zeroext %tobool19) #18, !dbg !5908
  %cmp21 = icmp eq i32 %call20, 32, !dbg !5908
  %conv22 = zext i1 %cmp21 to i32, !dbg !5908
  store i32 %conv22, ptr %spc, align 4, !dbg !5909
  %20 = load i32, ptr %pe.addr, align 4, !dbg !5910
  store i32 %20, ptr %new_sel_end, align 4, !dbg !5912
  br label %for.cond23, !dbg !5913

for.cond23:                                       ; preds = %for.inc44, %for.end
  %21 = load i32, ptr %spc, align 4, !dbg !5914
  %tobool24 = icmp ne i32 %21, 0, !dbg !5914
  br i1 %tobool24, label %land.lhs.true25, label %lor.lhs.false30, !dbg !5918

land.lhs.true25:                                  ; preds = %for.cond23
  %22 = load i32, ptr %pe.addr, align 4, !dbg !5919
  %23 = load i8, ptr %unicode, align 1, !dbg !5919, !range !5777, !noundef !565
  %tobool26 = trunc i8 %23 to i1, !dbg !5919
  %call27 = call i32 @sel_pos(i32 noundef %22, i1 noundef zeroext %tobool26) #18, !dbg !5919
  %cmp28 = icmp eq i32 %call27, 32, !dbg !5919
  br i1 %cmp28, label %lor.lhs.false30, label %if.then37, !dbg !5920

lor.lhs.false30:                                  ; preds = %land.lhs.true25, %for.cond23
  %24 = load i32, ptr %spc, align 4, !dbg !5921
  %tobool31 = icmp ne i32 %24, 0, !dbg !5921
  br i1 %tobool31, label %if.end38, label %land.lhs.true32, !dbg !5922

land.lhs.true32:                                  ; preds = %lor.lhs.false30
  %25 = load i32, ptr %pe.addr, align 4, !dbg !5923
  %26 = load i8, ptr %unicode, align 1, !dbg !5924, !range !5777, !noundef !565
  %tobool33 = trunc i8 %26 to i1, !dbg !5924
  %call34 = call i32 @sel_pos(i32 noundef %25, i1 noundef zeroext %tobool33) #18, !dbg !5925
  %call35 = call i32 @inword(i32 noundef %call34) #18, !dbg !5926
  %tobool36 = icmp ne i32 %call35, 0, !dbg !5926
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !5927

if.then37:                                        ; preds = %land.lhs.true32, %land.lhs.true25
  br label %for.end46, !dbg !5928

if.end38:                                         ; preds = %land.lhs.true32, %lor.lhs.false30
  %27 = load i32, ptr %pe.addr, align 4, !dbg !5929
  store i32 %27, ptr %new_sel_end, align 4, !dbg !5930
  %28 = load i32, ptr %pe.addr, align 4, !dbg !5931
  %add = add i32 %28, 2, !dbg !5933
  %29 = load ptr, ptr %vc.addr, align 8, !dbg !5934
  %vc_size_row39 = getelementptr inbounds %struct.vc_data, ptr %29, i32 0, i32 6, !dbg !5935
  %30 = load i32, ptr %vc_size_row39, align 4, !dbg !5935
  %rem40 = urem i32 %add, %30, !dbg !5936
  %tobool41 = icmp ne i32 %rem40, 0, !dbg !5936
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !5937

if.then42:                                        ; preds = %if.end38
  br label %for.end46, !dbg !5938

if.end43:                                         ; preds = %if.end38
  br label %for.inc44, !dbg !5939

for.inc44:                                        ; preds = %if.end43
  %31 = load i32, ptr %pe.addr, align 4, !dbg !5940
  %add45 = add i32 %31, 2, !dbg !5940
  store i32 %add45, ptr %pe.addr, align 4, !dbg !5940
  br label %for.cond23, !dbg !5941, !llvm.loop !5942

for.end46:                                        ; preds = %if.then42, %if.then37
  br label %sw.epilog, !dbg !5945

sw.bb47:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #19, !dbg !5946
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5847, metadata !DIExpression()), !dbg !5946
  %32 = load i32, ptr %ps.addr, align 4, !dbg !5946
  store i32 %32, ptr %__x, align 4, !dbg !5946
  %33 = load i32, ptr %__x, align 4, !dbg !5946
  %34 = load i32, ptr %__x, align 4, !dbg !5946
  %35 = load ptr, ptr %vc.addr, align 8, !dbg !5946
  %vc_size_row48 = getelementptr inbounds %struct.vc_data, ptr %35, i32 0, i32 6, !dbg !5946
  %36 = load i32, ptr %vc_size_row48, align 4, !dbg !5946
  %rem49 = urem i32 %34, %36, !dbg !5946
  %sub50 = sub i32 %33, %rem49, !dbg !5946
  store i32 %sub50, ptr %tmp, align 4, !dbg !5946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #19, !dbg !5947
  %37 = load i32, ptr %tmp, align 4, !dbg !5946
  store i32 %37, ptr %new_sel_start, align 4, !dbg !5948
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x51) #19, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %__x51, metadata !5850, metadata !DIExpression()), !dbg !5949
  %38 = load i32, ptr %pe.addr, align 4, !dbg !5949
  store i32 %38, ptr %__x51, align 4, !dbg !5949
  %39 = load i32, ptr %__x51, align 4, !dbg !5949
  %40 = load i32, ptr %__x51, align 4, !dbg !5949
  %41 = load ptr, ptr %vc.addr, align 8, !dbg !5949
  %vc_size_row53 = getelementptr inbounds %struct.vc_data, ptr %41, i32 0, i32 6, !dbg !5949
  %42 = load i32, ptr %vc_size_row53, align 4, !dbg !5949
  %rem54 = urem i32 %40, %42, !dbg !5949
  %sub55 = sub i32 %39, %rem54, !dbg !5949
  store i32 %sub55, ptr %tmp52, align 4, !dbg !5949
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x51) #19, !dbg !5950
  %43 = load i32, ptr %tmp52, align 4, !dbg !5949
  %44 = load ptr, ptr %vc.addr, align 8, !dbg !5951
  %vc_size_row56 = getelementptr inbounds %struct.vc_data, ptr %44, i32 0, i32 6, !dbg !5952
  %45 = load i32, ptr %vc_size_row56, align 4, !dbg !5952
  %add57 = add i32 %43, %45, !dbg !5953
  %sub58 = sub i32 %add57, 2, !dbg !5954
  store i32 %sub58, ptr %new_sel_end, align 4, !dbg !5955
  br label %sw.epilog, !dbg !5956

sw.bb59:                                          ; preds = %entry
  %46 = load i32, ptr %pe.addr, align 4, !dbg !5957
  call void @highlight_pointer(i32 noundef %46) #18, !dbg !5958
  store i32 0, ptr %retval, align 4, !dbg !5959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5959

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5960
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5960

sw.epilog:                                        ; preds = %sw.bb47, %for.end46, %sw.bb
  call void @highlight_pointer(i32 noundef -1) #18, !dbg !5961
  %47 = load i32, ptr %new_sel_end, align 4, !dbg !5962
  %48 = load i32, ptr %new_sel_start, align 4, !dbg !5964
  %cmp60 = icmp sgt i32 %47, %48, !dbg !5965
  br i1 %cmp60, label %land.lhs.true62, label %if.end93, !dbg !5966

land.lhs.true62:                                  ; preds = %sw.epilog
  %49 = load i32, ptr %new_sel_end, align 4, !dbg !5967
  %50 = load ptr, ptr %vc.addr, align 8, !dbg !5968
  %vc_size_row63 = getelementptr inbounds %struct.vc_data, ptr %50, i32 0, i32 6, !dbg !5969
  %51 = load i32, ptr %vc_size_row63, align 4, !dbg !5969
  %call64 = call i32 @atedge(i32 noundef %49, i32 noundef %51) #18, !dbg !5970
  %tobool65 = icmp ne i32 %call64, 0, !dbg !5970
  br i1 %tobool65, label %if.end93, label %land.lhs.true66, !dbg !5971

land.lhs.true66:                                  ; preds = %land.lhs.true62
  %52 = load i32, ptr %new_sel_end, align 4, !dbg !5972
  %53 = load i8, ptr %unicode, align 1, !dbg !5972, !range !5777, !noundef !565
  %tobool67 = trunc i8 %53 to i1, !dbg !5972
  %call68 = call i32 @sel_pos(i32 noundef %52, i1 noundef zeroext %tobool67) #18, !dbg !5972
  %cmp69 = icmp eq i32 %call68, 32, !dbg !5972
  br i1 %cmp69, label %if.then71, label %if.end93, !dbg !5973

if.then71:                                        ; preds = %land.lhs.true66
  %54 = load i32, ptr %new_sel_end, align 4, !dbg !5974
  %add72 = add i32 %54, 2, !dbg !5977
  store i32 %add72, ptr %pe.addr, align 4, !dbg !5978
  br label %for.cond73, !dbg !5979

for.cond73:                                       ; preds = %for.inc84, %if.then71
  %55 = load i32, ptr %pe.addr, align 4, !dbg !5980
  %56 = load i8, ptr %unicode, align 1, !dbg !5980, !range !5777, !noundef !565
  %tobool74 = trunc i8 %56 to i1, !dbg !5980
  %call75 = call i32 @sel_pos(i32 noundef %55, i1 noundef zeroext %tobool74) #18, !dbg !5980
  %cmp76 = icmp eq i32 %call75, 32, !dbg !5980
  br i1 %cmp76, label %lor.lhs.false78, label %if.then82, !dbg !5983

lor.lhs.false78:                                  ; preds = %for.cond73
  %57 = load i32, ptr %pe.addr, align 4, !dbg !5984
  %58 = load ptr, ptr %vc.addr, align 8, !dbg !5985
  %vc_size_row79 = getelementptr inbounds %struct.vc_data, ptr %58, i32 0, i32 6, !dbg !5986
  %59 = load i32, ptr %vc_size_row79, align 4, !dbg !5986
  %call80 = call i32 @atedge(i32 noundef %57, i32 noundef %59) #18, !dbg !5987
  %tobool81 = icmp ne i32 %call80, 0, !dbg !5987
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !5988

if.then82:                                        ; preds = %lor.lhs.false78, %for.cond73
  br label %for.end86, !dbg !5989

if.end83:                                         ; preds = %lor.lhs.false78
  br label %for.inc84, !dbg !5990

for.inc84:                                        ; preds = %if.end83
  %60 = load i32, ptr %pe.addr, align 4, !dbg !5991
  %add85 = add i32 %60, 2, !dbg !5991
  store i32 %add85, ptr %pe.addr, align 4, !dbg !5991
  br label %for.cond73, !dbg !5992, !llvm.loop !5993

for.end86:                                        ; preds = %if.then82
  %61 = load i32, ptr %pe.addr, align 4, !dbg !5996
  %62 = load i8, ptr %unicode, align 1, !dbg !5996, !range !5777, !noundef !565
  %tobool87 = trunc i8 %62 to i1, !dbg !5996
  %call88 = call i32 @sel_pos(i32 noundef %61, i1 noundef zeroext %tobool87) #18, !dbg !5996
  %cmp89 = icmp eq i32 %call88, 32, !dbg !5996
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !5998

if.then91:                                        ; preds = %for.end86
  %63 = load i32, ptr %pe.addr, align 4, !dbg !5999
  store i32 %63, ptr %new_sel_end, align 4, !dbg !6000
  br label %if.end92, !dbg !6001

if.end92:                                         ; preds = %if.then91, %for.end86
  br label %if.end93, !dbg !6002

if.end93:                                         ; preds = %if.end92, %land.lhs.true66, %land.lhs.true62, %sw.epilog
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4, !dbg !6003
  %cmp94 = icmp eq i32 %64, -1, !dbg !6005
  br i1 %cmp94, label %if.then96, label %if.else, !dbg !6006

if.then96:                                        ; preds = %if.end93
  %65 = load i32, ptr %new_sel_start, align 4, !dbg !6007
  %66 = load i32, ptr %new_sel_end, align 4, !dbg !6008
  call void @highlight(i32 noundef %65, i32 noundef %66) #18, !dbg !6009
  br label %if.end126, !dbg !6009

if.else:                                          ; preds = %if.end93
  %67 = load i32, ptr %new_sel_start, align 4, !dbg !6010
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4, !dbg !6012
  %cmp97 = icmp eq i32 %67, %68, !dbg !6013
  br i1 %cmp97, label %if.then99, label %if.else112, !dbg !6014

if.then99:                                        ; preds = %if.else
  %69 = load i32, ptr %new_sel_end, align 4, !dbg !6015
  %70 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 8, !dbg !6018
  %cmp100 = icmp eq i32 %69, %70, !dbg !6019
  br i1 %cmp100, label %if.then102, label %if.else103, !dbg !6020

if.then102:                                       ; preds = %if.then99
  store i32 0, ptr %retval, align 4, !dbg !6021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6021

if.else103:                                       ; preds = %if.then99
  %71 = load i32, ptr %new_sel_end, align 4, !dbg !6022
  %72 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 8, !dbg !6024
  %cmp104 = icmp sgt i32 %71, %72, !dbg !6025
  br i1 %cmp104, label %if.then106, label %if.else108, !dbg !6026

if.then106:                                       ; preds = %if.else103
  %73 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 8, !dbg !6027
  %add107 = add i32 %73, 2, !dbg !6028
  %74 = load i32, ptr %new_sel_end, align 4, !dbg !6029
  call void @highlight(i32 noundef %add107, i32 noundef %74) #18, !dbg !6030
  br label %if.end110, !dbg !6030

if.else108:                                       ; preds = %if.else103
  %75 = load i32, ptr %new_sel_end, align 4, !dbg !6031
  %add109 = add i32 %75, 2, !dbg !6032
  %76 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 8, !dbg !6033
  call void @highlight(i32 noundef %add109, i32 noundef %76) #18, !dbg !6034
  br label %if.end110

if.end110:                                        ; preds = %if.else108, %if.then106
  br label %if.end111

if.end111:                                        ; preds = %if.end110
  br label %if.end125, !dbg !6035

if.else112:                                       ; preds = %if.else
  %77 = load i32, ptr %new_sel_end, align 4, !dbg !6036
  %78 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 8, !dbg !6038
  %cmp113 = icmp eq i32 %77, %78, !dbg !6039
  br i1 %cmp113, label %if.then115, label %if.else123, !dbg !6040

if.then115:                                       ; preds = %if.else112
  %79 = load i32, ptr %new_sel_start, align 4, !dbg !6041
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4, !dbg !6044
  %cmp116 = icmp slt i32 %79, %80, !dbg !6045
  br i1 %cmp116, label %if.then118, label %if.else120, !dbg !6046

if.then118:                                       ; preds = %if.then115
  %81 = load i32, ptr %new_sel_start, align 4, !dbg !6047
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4, !dbg !6048
  %sub119 = sub i32 %82, 2, !dbg !6049
  call void @highlight(i32 noundef %81, i32 noundef %sub119) #18, !dbg !6050
  br label %if.end122, !dbg !6050

if.else120:                                       ; preds = %if.then115
  %83 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4, !dbg !6051
  %84 = load i32, ptr %new_sel_start, align 4, !dbg !6052
  %sub121 = sub i32 %84, 2, !dbg !6053
  call void @highlight(i32 noundef %83, i32 noundef %sub121) #18, !dbg !6054
  br label %if.end122

if.end122:                                        ; preds = %if.else120, %if.then118
  br label %if.end124, !dbg !6055

if.else123:                                       ; preds = %if.else112
  call void @clear_selection() #18, !dbg !6056
  %85 = load i32, ptr %new_sel_start, align 4, !dbg !6058
  %86 = load i32, ptr %new_sel_end, align 4, !dbg !6059
  call void @highlight(i32 noundef %85, i32 noundef %86) #18, !dbg !6060
  br label %if.end124

if.end124:                                        ; preds = %if.else123, %if.end122
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end111
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then96
  %87 = load i32, ptr %new_sel_start, align 4, !dbg !6061
  store volatile i32 %87, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4, !dbg !6062
  %88 = load i32, ptr %new_sel_end, align 4, !dbg !6063
  store i32 %88, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 8, !dbg !6064
  %89 = load ptr, ptr %vc.addr, align 8, !dbg !6065
  %90 = load i8, ptr %unicode, align 1, !dbg !6066, !range !5777, !noundef !565
  %tobool127 = trunc i8 %90 to i1, !dbg !6066
  %call128 = call i32 @vc_selection_store_chars(ptr noundef %89, i1 noundef zeroext %tobool127) #18, !dbg !6067
  store i32 %call128, ptr %retval, align 4, !dbg !6068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6068

cleanup:                                          ; preds = %if.end126, %if.then102, %sw.default, %sw.bb59
  call void @llvm.lifetime.end.p0(i64 1, ptr %unicode) #19, !dbg !6069
  call void @llvm.lifetime.end.p0(i64 4, ptr %spc) #19, !dbg !6069
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_sel_end) #19, !dbg !6069
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_sel_start) #19, !dbg !6069
  %91 = load i32, ptr %retval, align 4, !dbg !6069
  ret i32 %91, !dbg !6069
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6070 dso_local i32 @vt_do_kdgkbmode(i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sel_pos(i32 noundef %n, i1 noundef zeroext %unicode) #0 align 16 !dbg !6073 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %unicode.addr = alloca i8, align 1
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6077, metadata !DIExpression()), !dbg !6079
  %frombool = zext i1 %unicode to i8
  store i8 %frombool, ptr %unicode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %unicode.addr, metadata !6078, metadata !DIExpression()), !dbg !6080
  %0 = load i8, ptr %unicode.addr, align 1, !dbg !6081, !range !5777, !noundef !565
  %tobool = trunc i8 %0 to i1, !dbg !6081
  br i1 %tobool, label %if.then, label %if.end, !dbg !6083

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 8, !dbg !6084
  %2 = load i32, ptr %n.addr, align 4, !dbg !6085
  %div = sdiv i32 %2, 2, !dbg !6086
  %call = call i32 @screen_glyph_unicode(ptr noundef %1, i32 noundef %div) #18, !dbg !6087
  store i32 %call, ptr %retval, align 4, !dbg !6088
  br label %return, !dbg !6088

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 8, !dbg !6089
  %4 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 8, !dbg !6090
  %5 = load i32, ptr %n.addr, align 4, !dbg !6091
  %call1 = call zeroext i16 @screen_glyph(ptr noundef %4, i32 noundef %5) #18, !dbg !6092
  %call2 = call zeroext i16 @inverse_translate(ptr noundef %3, i16 noundef zeroext %call1, i1 noundef zeroext false) #18, !dbg !6093
  %conv = zext i16 %call2 to i32, !dbg !6093
  store i32 %conv, ptr %retval, align 4, !dbg !6094
  br label %return, !dbg !6094

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !6095
  ret i32 %6, !dbg !6095
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inword(i32 noundef %c) #1 align 16 !dbg !6096 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !6101, metadata !DIExpression()), !dbg !6102
  %0 = load i32, ptr %c.addr, align 4, !dbg !6103
  %cmp = icmp ugt i32 %0, 127, !dbg !6104
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6105

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4, !dbg !6106
  %shr = lshr i32 %1, 5, !dbg !6107
  %idxprom = zext i32 %shr to i64, !dbg !6108
  %arrayidx = getelementptr [4 x i32], ptr @inwordLut, i64 0, i64 %idxprom, !dbg !6108
  %2 = load i32, ptr %arrayidx, align 4, !dbg !6108
  %3 = load i32, ptr %c.addr, align 4, !dbg !6109
  %and = and i32 %3, 31, !dbg !6110
  %shr1 = lshr i32 %2, %and, !dbg !6111
  %and2 = and i32 %shr1, 1, !dbg !6112
  %tobool = icmp ne i32 %and2, 0, !dbg !6105
  br label %lor.end, !dbg !6105

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !6105
  ret i32 %lor.ext, !dbg !6113
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atedge(i32 noundef %p, i32 noundef %size_row) #1 align 16 !dbg !6114 {
entry:
  %p.addr = alloca i32, align 4
  %size_row.addr = alloca i32, align 4
  store i32 %p, ptr %p.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6118, metadata !DIExpression()), !dbg !6120
  store i32 %size_row, ptr %size_row.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size_row.addr, metadata !6119, metadata !DIExpression()), !dbg !6121
  %0 = load i32, ptr %p.addr, align 4, !dbg !6122
  %1 = load i32, ptr %size_row.addr, align 4, !dbg !6123
  %rem = srem i32 %0, %1, !dbg !6124
  %tobool = icmp ne i32 %rem, 0, !dbg !6124
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !6125

lor.rhs:                                          ; preds = %entry
  %2 = load i32, ptr %p.addr, align 4, !dbg !6126
  %add = add i32 %2, 2, !dbg !6127
  %3 = load i32, ptr %size_row.addr, align 4, !dbg !6128
  %rem1 = srem i32 %add, %3, !dbg !6129
  %tobool2 = icmp ne i32 %rem1, 0, !dbg !6130
  %lnot = xor i1 %tobool2, true, !dbg !6130
  br label %lor.end, !dbg !6125

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !6125
  ret i32 %lor.ext, !dbg !6131
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vc_selection_store_chars(ptr noundef %vc, i1 noundef zeroext %unicode) #0 align 16 !dbg !6132 {
entry:
  %retval = alloca i32, align 4
  %vc.addr = alloca ptr, align 8
  %unicode.addr = alloca i8, align 1
  %bp = alloca ptr, align 8
  %obp = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !6136, metadata !DIExpression()), !dbg !6145
  %frombool = zext i1 %unicode to i8
  store i8 %frombool, ptr %unicode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %unicode.addr, metadata !6137, metadata !DIExpression()), !dbg !6146
  call void @llvm.lifetime.start.p0(i64 8, ptr %bp) #19, !dbg !6147
  call void @llvm.dbg.declare(metadata ptr %bp, metadata !6138, metadata !DIExpression()), !dbg !6148
  call void @llvm.lifetime.start.p0(i64 8, ptr %obp) #19, !dbg !6147
  call void @llvm.dbg.declare(metadata ptr %obp, metadata !6139, metadata !DIExpression()), !dbg !6149
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !6150
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6140, metadata !DIExpression()), !dbg !6151
  %0 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 8, !dbg !6152
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4, !dbg !6153
  %sub = sub i32 %0, %1, !dbg !6154
  %div = sdiv i32 %sub, 2, !dbg !6155
  %add = add i32 %div, 1, !dbg !6156
  %conv = sext i32 %add to i64, !dbg !6157
  %2 = load i8, ptr %unicode.addr, align 1, !dbg !6158, !range !5777, !noundef !565
  %tobool = trunc i8 %2 to i1, !dbg !6158
  %3 = zext i1 %tobool to i64, !dbg !6158
  %cond = select i1 %tobool, i32 4, i32 1, !dbg !6158
  %conv2 = sext i32 %cond to i64, !dbg !6158
  %call = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef %conv2, i32 noundef 11456) #21, !dbg !6159
  store ptr %call, ptr %bp, align 8, !dbg !6160
  %4 = load ptr, ptr %bp, align 8, !dbg !6161
  %tobool3 = icmp ne ptr %4, null, !dbg !6161
  br i1 %tobool3, label %if.end, label %if.then, !dbg !6163

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6164

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6167

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6167

do.end:                                           ; preds = %do.cond
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #22, !dbg !6164
  store i32 %call4, ptr %tmp, align 4, !dbg !6167
  %5 = load i32, ptr %tmp, align 4, !dbg !6164
  call void @clear_selection() #18, !dbg !6169
  store i32 -12, ptr %retval, align 4, !dbg !6170
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6170

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 8, !dbg !6171
  call void @kfree(ptr noundef %6) #18, !dbg !6172
  %7 = load ptr, ptr %bp, align 8, !dbg !6173
  store ptr %7, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 8, !dbg !6174
  %8 = load ptr, ptr %bp, align 8, !dbg !6175
  store ptr %8, ptr %obp, align 8, !dbg !6176
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4, !dbg !6177
  store i32 %9, ptr %i, align 4, !dbg !6178
  br label %for.cond, !dbg !6179

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4, !dbg !6180
  %11 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 8, !dbg !6181
  %cmp = icmp ule i32 %10, %11, !dbg !6182
  br i1 %cmp, label %for.body, label %for.end, !dbg !6183

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #19, !dbg !6184
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6141, metadata !DIExpression()), !dbg !6185
  %12 = load i32, ptr %i, align 4, !dbg !6186
  %13 = load i8, ptr %unicode.addr, align 1, !dbg !6187, !range !5777, !noundef !565
  %tobool6 = trunc i8 %13 to i1, !dbg !6187
  %call7 = call i32 @sel_pos(i32 noundef %12, i1 noundef zeroext %tobool6) #18, !dbg !6188
  store i32 %call7, ptr %c, align 4, !dbg !6185
  %14 = load i8, ptr %unicode.addr, align 1, !dbg !6189, !range !5777, !noundef !565
  %tobool8 = trunc i8 %14 to i1, !dbg !6189
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !6191

if.then9:                                         ; preds = %for.body
  %15 = load i32, ptr %c, align 4, !dbg !6192
  %16 = load ptr, ptr %bp, align 8, !dbg !6193
  %call10 = call i32 @store_utf8(i32 noundef %15, ptr noundef %16) #18, !dbg !6194
  %17 = load ptr, ptr %bp, align 8, !dbg !6195
  %idx.ext = sext i32 %call10 to i64, !dbg !6195
  %add.ptr = getelementptr i8, ptr %17, i64 %idx.ext, !dbg !6195
  store ptr %add.ptr, ptr %bp, align 8, !dbg !6195
  br label %if.end12, !dbg !6196

if.else:                                          ; preds = %for.body
  %18 = load i32, ptr %c, align 4, !dbg !6197
  %conv11 = trunc i32 %18 to i8, !dbg !6197
  %19 = load ptr, ptr %bp, align 8, !dbg !6198
  %incdec.ptr = getelementptr i8, ptr %19, i32 1, !dbg !6198
  store ptr %incdec.ptr, ptr %bp, align 8, !dbg !6198
  store i8 %conv11, ptr %19, align 1, !dbg !6199
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %20 = load i32, ptr %c, align 4, !dbg !6200
  %cmp13 = icmp eq i32 %20, 32, !dbg !6200
  br i1 %cmp13, label %if.end16, label %if.then15, !dbg !6202

if.then15:                                        ; preds = %if.end12
  %21 = load ptr, ptr %bp, align 8, !dbg !6203
  store ptr %21, ptr %obp, align 8, !dbg !6204
  br label %if.end16, !dbg !6205

if.end16:                                         ; preds = %if.then15, %if.end12
  %22 = load i32, ptr %i, align 4, !dbg !6206
  %add17 = add i32 %22, 2, !dbg !6208
  %23 = load ptr, ptr %vc.addr, align 8, !dbg !6209
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %23, i32 0, i32 6, !dbg !6210
  %24 = load i32, ptr %vc_size_row, align 4, !dbg !6210
  %rem = urem i32 %add17, %24, !dbg !6211
  %tobool18 = icmp ne i32 %rem, 0, !dbg !6211
  br i1 %tobool18, label %if.end25, label %if.then19, !dbg !6212

if.then19:                                        ; preds = %if.end16
  %25 = load ptr, ptr %obp, align 8, !dbg !6213
  %26 = load ptr, ptr %bp, align 8, !dbg !6216
  %cmp20 = icmp ne ptr %25, %26, !dbg !6217
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !6218

if.then22:                                        ; preds = %if.then19
  %27 = load ptr, ptr %obp, align 8, !dbg !6219
  store ptr %27, ptr %bp, align 8, !dbg !6221
  %28 = load ptr, ptr %bp, align 8, !dbg !6222
  %incdec.ptr23 = getelementptr i8, ptr %28, i32 1, !dbg !6222
  store ptr %incdec.ptr23, ptr %bp, align 8, !dbg !6222
  store i8 13, ptr %28, align 1, !dbg !6223
  br label %if.end24, !dbg !6224

if.end24:                                         ; preds = %if.then22, %if.then19
  %29 = load ptr, ptr %bp, align 8, !dbg !6225
  store ptr %29, ptr %obp, align 8, !dbg !6226
  br label %if.end25, !dbg !6227

if.end25:                                         ; preds = %if.end24, %if.end16
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #19, !dbg !6228
  br label %for.inc, !dbg !6229

for.inc:                                          ; preds = %if.end25
  %30 = load i32, ptr %i, align 4, !dbg !6230
  %add26 = add i32 %30, 2, !dbg !6230
  store i32 %add26, ptr %i, align 4, !dbg !6230
  br label %for.cond, !dbg !6231, !llvm.loop !6232

for.end:                                          ; preds = %for.cond
  %31 = load ptr, ptr %bp, align 8, !dbg !6234
  %32 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 8, !dbg !6235
  %sub.ptr.lhs.cast = ptrtoint ptr %31 to i64, !dbg !6236
  %sub.ptr.rhs.cast = ptrtoint ptr %32 to i64, !dbg !6236
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6236
  %conv27 = trunc i64 %sub.ptr.sub to i32, !dbg !6234
  store i32 %conv27, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 3), align 8, !dbg !6237
  store i32 0, ptr %retval, align 4, !dbg !6238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6238

cleanup:                                          ; preds = %for.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !6239
  call void @llvm.lifetime.end.p0(i64 8, ptr %obp) #19, !dbg !6239
  call void @llvm.lifetime.end.p0(i64 8, ptr %bp) #19, !dbg !6239
  %33 = load i32, ptr %retval, align 4, !dbg !6239
  ret i32 %33, !dbg !6239
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6240 dso_local i32 @screen_glyph_unicode(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6243 dso_local zeroext i16 @inverse_translate(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6247 dso_local zeroext i16 @screen_glyph(ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6250 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6254, metadata !DIExpression()), !dbg !6258
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6255, metadata !DIExpression()), !dbg !6259
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6256, metadata !DIExpression()), !dbg !6260
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #19, !dbg !6261
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6257, metadata !DIExpression()), !dbg !6262
  %0 = load i64, ptr %n.addr, align 8, !dbg !6263
  %1 = load i64, ptr %size.addr, align 8, !dbg !6263
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6263
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6263
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6263
  store i64 %4, ptr %bytes, align 8, !dbg !6263
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !6263
  %lnot = xor i1 %call, true, !dbg !6263
  %lnot1 = xor i1 %lnot, true, !dbg !6263
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6263
  %conv = sext i32 %lnot.ext to i64, !dbg !6263
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6263
  %tobool = icmp ne i64 %expval, 0, !dbg !6263
  br i1 %tobool, label %if.then, label %if.end, !dbg !6265

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6266

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6267
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6269
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6270

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6271
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6272
  br i1 %8, label %if.then2, label %if.end4, !dbg !6273

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6274
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6275
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #23, !dbg !6276
  store ptr %call3, ptr %retval, align 8, !dbg !6277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6277

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6278
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6279
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #23, !dbg !6280
  store ptr %call5, ptr %retval, align 8, !dbg !6281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6281

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #19, !dbg !6282
  %13 = load ptr, ptr %retval, align 8, !dbg !6282
  ret ptr %13, !dbg !6282
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6283 dso_local i32 @_printk(ptr noundef, ...) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6287 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @store_utf8(i32 noundef %c, ptr noundef %p) #0 align 16 !dbg !6290 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !6294, metadata !DIExpression()), !dbg !6296
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6295, metadata !DIExpression()), !dbg !6297
  %0 = load i32, ptr %c.addr, align 4, !dbg !6298
  %cmp = icmp ult i32 %0, 128, !dbg !6300
  br i1 %cmp, label %if.then, label %if.else, !dbg !6301

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4, !dbg !6302
  %conv = trunc i32 %1 to i8, !dbg !6302
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6304
  %arrayidx = getelementptr i8, ptr %2, i64 0, !dbg !6304
  store i8 %conv, ptr %arrayidx, align 1, !dbg !6305
  store i32 1, ptr %retval, align 4, !dbg !6306
  br label %return, !dbg !6306

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %c.addr, align 4, !dbg !6307
  %cmp1 = icmp ult i32 %3, 2048, !dbg !6309
  br i1 %cmp1, label %if.then3, label %if.else9, !dbg !6310

if.then3:                                         ; preds = %if.else
  %4 = load i32, ptr %c.addr, align 4, !dbg !6311
  %shr = lshr i32 %4, 6, !dbg !6313
  %or = or i32 192, %shr, !dbg !6314
  %conv4 = trunc i32 %or to i8, !dbg !6315
  %5 = load ptr, ptr %p.addr, align 8, !dbg !6316
  %arrayidx5 = getelementptr i8, ptr %5, i64 0, !dbg !6316
  store i8 %conv4, ptr %arrayidx5, align 1, !dbg !6317
  %6 = load i32, ptr %c.addr, align 4, !dbg !6318
  %and = and i32 %6, 63, !dbg !6319
  %or6 = or i32 128, %and, !dbg !6320
  %conv7 = trunc i32 %or6 to i8, !dbg !6321
  %7 = load ptr, ptr %p.addr, align 8, !dbg !6322
  %arrayidx8 = getelementptr i8, ptr %7, i64 1, !dbg !6322
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !6323
  store i32 2, ptr %retval, align 4, !dbg !6324
  br label %return, !dbg !6324

if.else9:                                         ; preds = %if.else
  %8 = load i32, ptr %c.addr, align 4, !dbg !6325
  %cmp10 = icmp ult i32 %8, 65536, !dbg !6327
  br i1 %cmp10, label %if.then12, label %if.else26, !dbg !6328

if.then12:                                        ; preds = %if.else9
  %9 = load i32, ptr %c.addr, align 4, !dbg !6329
  %shr13 = lshr i32 %9, 12, !dbg !6331
  %or14 = or i32 224, %shr13, !dbg !6332
  %conv15 = trunc i32 %or14 to i8, !dbg !6333
  %10 = load ptr, ptr %p.addr, align 8, !dbg !6334
  %arrayidx16 = getelementptr i8, ptr %10, i64 0, !dbg !6334
  store i8 %conv15, ptr %arrayidx16, align 1, !dbg !6335
  %11 = load i32, ptr %c.addr, align 4, !dbg !6336
  %shr17 = lshr i32 %11, 6, !dbg !6337
  %and18 = and i32 %shr17, 63, !dbg !6338
  %or19 = or i32 128, %and18, !dbg !6339
  %conv20 = trunc i32 %or19 to i8, !dbg !6340
  %12 = load ptr, ptr %p.addr, align 8, !dbg !6341
  %arrayidx21 = getelementptr i8, ptr %12, i64 1, !dbg !6341
  store i8 %conv20, ptr %arrayidx21, align 1, !dbg !6342
  %13 = load i32, ptr %c.addr, align 4, !dbg !6343
  %and22 = and i32 %13, 63, !dbg !6344
  %or23 = or i32 128, %and22, !dbg !6345
  %conv24 = trunc i32 %or23 to i8, !dbg !6346
  %14 = load ptr, ptr %p.addr, align 8, !dbg !6347
  %arrayidx25 = getelementptr i8, ptr %14, i64 2, !dbg !6347
  store i8 %conv24, ptr %arrayidx25, align 1, !dbg !6348
  store i32 3, ptr %retval, align 4, !dbg !6349
  br label %return, !dbg !6349

if.else26:                                        ; preds = %if.else9
  %15 = load i32, ptr %c.addr, align 4, !dbg !6350
  %cmp27 = icmp ult i32 %15, 1114112, !dbg !6352
  br i1 %cmp27, label %if.then29, label %if.else48, !dbg !6353

if.then29:                                        ; preds = %if.else26
  %16 = load i32, ptr %c.addr, align 4, !dbg !6354
  %shr30 = lshr i32 %16, 18, !dbg !6356
  %or31 = or i32 240, %shr30, !dbg !6357
  %conv32 = trunc i32 %or31 to i8, !dbg !6358
  %17 = load ptr, ptr %p.addr, align 8, !dbg !6359
  %arrayidx33 = getelementptr i8, ptr %17, i64 0, !dbg !6359
  store i8 %conv32, ptr %arrayidx33, align 1, !dbg !6360
  %18 = load i32, ptr %c.addr, align 4, !dbg !6361
  %shr34 = lshr i32 %18, 12, !dbg !6362
  %and35 = and i32 %shr34, 63, !dbg !6363
  %or36 = or i32 128, %and35, !dbg !6364
  %conv37 = trunc i32 %or36 to i8, !dbg !6365
  %19 = load ptr, ptr %p.addr, align 8, !dbg !6366
  %arrayidx38 = getelementptr i8, ptr %19, i64 1, !dbg !6366
  store i8 %conv37, ptr %arrayidx38, align 1, !dbg !6367
  %20 = load i32, ptr %c.addr, align 4, !dbg !6368
  %shr39 = lshr i32 %20, 6, !dbg !6369
  %and40 = and i32 %shr39, 63, !dbg !6370
  %or41 = or i32 128, %and40, !dbg !6371
  %conv42 = trunc i32 %or41 to i8, !dbg !6372
  %21 = load ptr, ptr %p.addr, align 8, !dbg !6373
  %arrayidx43 = getelementptr i8, ptr %21, i64 2, !dbg !6373
  store i8 %conv42, ptr %arrayidx43, align 1, !dbg !6374
  %22 = load i32, ptr %c.addr, align 4, !dbg !6375
  %and44 = and i32 %22, 63, !dbg !6376
  %or45 = or i32 128, %and44, !dbg !6377
  %conv46 = trunc i32 %or45 to i8, !dbg !6378
  %23 = load ptr, ptr %p.addr, align 8, !dbg !6379
  %arrayidx47 = getelementptr i8, ptr %23, i64 3, !dbg !6379
  store i8 %conv46, ptr %arrayidx47, align 1, !dbg !6380
  store i32 4, ptr %retval, align 4, !dbg !6381
  br label %return, !dbg !6381

if.else48:                                        ; preds = %if.else26
  %24 = load ptr, ptr %p.addr, align 8, !dbg !6382
  %arrayidx49 = getelementptr i8, ptr %24, i64 0, !dbg !6382
  store i8 -17, ptr %arrayidx49, align 1, !dbg !6384
  %25 = load ptr, ptr %p.addr, align 8, !dbg !6385
  %arrayidx50 = getelementptr i8, ptr %25, i64 1, !dbg !6385
  store i8 -65, ptr %arrayidx50, align 1, !dbg !6386
  %26 = load ptr, ptr %p.addr, align 8, !dbg !6387
  %arrayidx51 = getelementptr i8, ptr %26, i64 2, !dbg !6387
  store i8 -67, ptr %arrayidx51, align 1, !dbg !6388
  store i32 3, ptr %retval, align 4, !dbg !6389
  br label %return, !dbg !6389

return:                                           ; preds = %if.else48, %if.then29, %if.then12, %if.then3, %if.then
  %27 = load i32, ptr %retval, align 4, !dbg !6390
  ret i32 %27, !dbg !6390
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #1 align 16 !dbg !6391 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6396, metadata !DIExpression()), !dbg !6397
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6398, !range !5777, !noundef !565
  %tobool = trunc i8 %0 to i1, !dbg !6398
  %lnot = xor i1 %tobool, true, !dbg !6398
  %lnot1 = xor i1 %lnot, true, !dbg !6398
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6398
  %conv = sext i32 %lnot.ext to i64, !dbg !6398
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6398
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6398
  ret i1 %tobool2, !dbg !6399
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !6400 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6404, metadata !DIExpression()), !dbg !6409
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6405, metadata !DIExpression()), !dbg !6410
  %0 = load i64, ptr %size.addr, align 8, !dbg !6411
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6412
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6413

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6414
  %tobool = icmp ne i64 %2, 0, !dbg !6414
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6415

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !6416
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6406, metadata !DIExpression()), !dbg !6417
  %3 = load i64, ptr %size.addr, align 8, !dbg !6418
  %cmp = icmp ugt i64 %3, 8192, !dbg !6420
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6421

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6422
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6423
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #23, !dbg !6424
  store ptr %call, ptr %retval, align 8, !dbg !6425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6425

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6426
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6426
  store i32 %call2, ptr %index, align 4, !dbg !6427
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6428
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6429
  %9 = ptrtoint ptr %8 to i64, !dbg !6429
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6430
  %idxprom = zext i32 %call3 to i64, !dbg !6431
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6431
  %10 = load i32, ptr %index, align 4, !dbg !6432
  %idxprom4 = zext i32 %10 to i64, !dbg !6431
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6431
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6431
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6433
  %13 = load i64, ptr %size.addr, align 8, !dbg !6434
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #24, !dbg !6435
  store ptr %call6, ptr %retval, align 8, !dbg !6436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6436

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !6437
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6438
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6439
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #23, !dbg !6440
  store ptr %call8, ptr %retval, align 8, !dbg !6441
  br label %return, !dbg !6441

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6442
  ret ptr %16, !dbg !6442
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6443 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6444 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !6445 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6449, metadata !DIExpression()), !dbg !6451
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6450, metadata !DIExpression()), !dbg !6452
  %0 = load i64, ptr %size.addr, align 8, !dbg !6453
  %tobool = icmp ne i64 %0, 0, !dbg !6453
  br i1 %tobool, label %if.end, label %if.then, !dbg !6455

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6456
  br label %return, !dbg !6456

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6457
  %cmp = icmp ule i64 %1, 8, !dbg !6459
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6460

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6461
  br label %return, !dbg !6461

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6462
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6464
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6465

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6466
  %cmp4 = icmp ule i64 %3, 96, !dbg !6467
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6468

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6469
  br label %return, !dbg !6469

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6470
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6472
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6473

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6474
  %cmp9 = icmp ule i64 %5, 192, !dbg !6475
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6476

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6477
  br label %return, !dbg !6477

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6478
  %cmp12 = icmp ule i64 %6, 8, !dbg !6480
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6481

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6482
  br label %return, !dbg !6482

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6483
  %cmp15 = icmp ule i64 %7, 16, !dbg !6485
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6486

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6487
  br label %return, !dbg !6487

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6488
  %cmp18 = icmp ule i64 %8, 32, !dbg !6490
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6491

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6492
  br label %return, !dbg !6492

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6493
  %cmp21 = icmp ule i64 %9, 64, !dbg !6495
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6496

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6497
  br label %return, !dbg !6497

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6498
  %cmp24 = icmp ule i64 %10, 128, !dbg !6500
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6501

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6502
  br label %return, !dbg !6502

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6503
  %cmp27 = icmp ule i64 %11, 256, !dbg !6505
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6506

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6507
  br label %return, !dbg !6507

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6508
  %cmp30 = icmp ule i64 %12, 512, !dbg !6510
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6511

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6512
  br label %return, !dbg !6512

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6513
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6515
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6516

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6517
  br label %return, !dbg !6517

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6518
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6520
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6521

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6522
  br label %return, !dbg !6522

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6523
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6525
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6526

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6527
  br label %return, !dbg !6527

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6528
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6530
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6531

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6532
  br label %return, !dbg !6532

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6533
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6535
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6536

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6537
  br label %return, !dbg !6537

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6538
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6540
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6541

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6542
  br label %return, !dbg !6542

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6543
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6545
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6546

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6547
  br label %return, !dbg !6547

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6548
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6550
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6551

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6552
  br label %return, !dbg !6552

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6553
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6555
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6556

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6557
  br label %return, !dbg !6557

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6558
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6560
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6561

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6562
  br label %return, !dbg !6562

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6563
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6565
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6566

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6567
  br label %return, !dbg !6567

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6568
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6570
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6571

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6572
  br label %return, !dbg !6572

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6573, !range !5777, !noundef !565
  %tobool69 = trunc i8 %25 to i1, !dbg !6573
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6575

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6576

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #25, !dbg !6577, !srcloc !6580
  unreachable, !dbg !6577

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6581

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6582

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6583

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6585

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6583

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #19, !dbg !6587, !srcloc !6589
  br label %do.end75, !dbg !6587

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6583

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6590
  br label %return, !dbg !6590

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6591
  ret i32 %26, !dbg !6591
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6592 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6598 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6602, metadata !DIExpression()), !dbg !6604
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6603, metadata !DIExpression()), !dbg !6605
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6606
  %and = and i32 %0, 17, !dbg !6606
  %cmp = icmp eq i32 %and, 0, !dbg !6606
  %lnot = xor i1 %cmp, true, !dbg !6606
  %lnot1 = xor i1 %lnot, true, !dbg !6606
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6606
  %conv = sext i32 %lnot.ext to i64, !dbg !6606
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6606
  %tobool = icmp ne i64 %expval, 0, !dbg !6606
  br i1 %tobool, label %if.then, label %if.end, !dbg !6608

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6609
  br label %return, !dbg !6609

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6610
  %and2 = and i32 %1, 1, !dbg !6612
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6612
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6613

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6614
  br label %return, !dbg !6614

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6615
  br label %return, !dbg !6615

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6617
  ret i32 %2, !dbg !6617
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6618 dso_local void @__compiletime_assert_255() #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #1 align 16 !dbg !6619 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6624, metadata !DIExpression()), !dbg !6626
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6625, metadata !DIExpression()), !dbg !6627
  ret i1 true, !dbg !6628
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #1 align 16 !dbg !6629 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6634, metadata !DIExpression()), !dbg !6637
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6635, metadata !DIExpression()), !dbg !6638
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6636, metadata !DIExpression()), !dbg !6639
  ret void, !dbg !6640
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #1 align 16 !dbg !6641 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6645, metadata !DIExpression()), !dbg !6647
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6646, metadata !DIExpression()), !dbg !6648
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6649
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !6649
  %1 = load i32, ptr %flag.addr, align 4, !dbg !6650
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #18, !dbg !6651
  ret i32 %call, !dbg !6652
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #1 align 16 !dbg !6653 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6655, metadata !DIExpression()), !dbg !6656
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6657
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #18, !dbg !6657
  %tobool = icmp ne i32 %call, 0, !dbg !6657
  %lnot = xor i1 %tobool, true, !dbg !6657
  %lnot1 = xor i1 %lnot, true, !dbg !6657
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6657
  %conv = sext i32 %lnot.ext to i64, !dbg !6657
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6657
  %conv2 = trunc i64 %expval to i32, !dbg !6657
  ret i32 %conv2, !dbg !6658
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #1 align 16 !dbg !6659 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6664, metadata !DIExpression()), !dbg !6666
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6665, metadata !DIExpression()), !dbg !6667
  %0 = load i32, ptr %flag.addr, align 4, !dbg !6668
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6668
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6668

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !6668
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !6668
  %3 = ptrtoint ptr %flags to i64, !dbg !6668
  %cmp = icmp ne i64 %3, 0, !dbg !6668
  %conv = zext i1 %cmp to i32, !dbg !6668
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6668
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6668

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !6668
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !6668
  %6 = ptrtoint ptr %flags2 to i64, !dbg !6668
  %cmp3 = icmp ne i64 %6, 0, !dbg !6668
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !6668

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !6668
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !6668
  %8 = load i64, ptr %flags6, align 8, !dbg !6668
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6668
  br i1 %9, label %cond.true, label %cond.false, !dbg !6668

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !6668
  %conv7 = sext i32 %10 to i64, !dbg !6668
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !6668
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !6668
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #18, !dbg !6668
  %conv9 = zext i1 %call to i32, !dbg !6668
  br label %cond.end, !dbg !6668

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !6668
  %conv10 = sext i32 %12 to i64, !dbg !6668
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !6668
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !6668
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #18, !dbg !6668
  %conv13 = zext i1 %call12 to i32, !dbg !6668
  br label %cond.end, !dbg !6668

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !6668
  ret i32 %cond, !dbg !6669
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6670 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6678, metadata !DIExpression()), !dbg !6683
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6679, metadata !DIExpression()), !dbg !6684
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #19, !dbg !6685
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6680, metadata !DIExpression()), !dbg !6686
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6687
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6688
  %div = udiv i64 %1, 64, !dbg !6688
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6689
  store ptr %add.ptr, ptr %p, align 8, !dbg !6686
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #19, !dbg !6690
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6681, metadata !DIExpression()), !dbg !6691
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6692
  %rem = urem i64 %2, 64, !dbg !6692
  %shl = shl i64 1, %rem, !dbg !6692
  store i64 %shl, ptr %mask, align 8, !dbg !6691
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #19, !dbg !6693
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6682, metadata !DIExpression()), !dbg !6694
  %3 = load ptr, ptr %p, align 8, !dbg !6695
  %4 = load i64, ptr %3, align 8, !dbg !6696
  store i64 %4, ptr %val, align 8, !dbg !6694
  %5 = load i64, ptr %val, align 8, !dbg !6697
  %6 = load i64, ptr %mask, align 8, !dbg !6698
  %and = and i64 %5, %6, !dbg !6699
  %tobool = icmp ne i64 %and, 0, !dbg !6700
  %lnot = xor i1 %tobool, true, !dbg !6700
  %lnot1 = xor i1 %lnot, true, !dbg !6701
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #19, !dbg !6702
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #19, !dbg !6702
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #19, !dbg !6702
  ret i1 %lnot1, !dbg !6703
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6704 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6707, metadata !DIExpression()), !dbg !6709
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6708, metadata !DIExpression()), !dbg !6710
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6711
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6712
  %div = udiv i64 %1, 64, !dbg !6712
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6713
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !6714
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6715
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6716
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !6717
  ret i1 %call, !dbg !6718
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6719 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6721, metadata !DIExpression()), !dbg !6723
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6722, metadata !DIExpression()), !dbg !6724
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6725
  %1 = load i64, ptr %size.addr, align 8, !dbg !6726
  %conv = trunc i64 %1 to i32, !dbg !6726
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !6727
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6728
  %3 = load i64, ptr %size.addr, align 8, !dbg !6728
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !6728
  ret void, !dbg !6729
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6730 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6733, metadata !DIExpression()), !dbg !6735
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6734, metadata !DIExpression()), !dbg !6736
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6737
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6738
  br i1 %1, label %cond.true, label %cond.false, !dbg !6738

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6739
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6740
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !6741
  %conv = zext i1 %call to i32, !dbg !6741
  br label %cond.end, !dbg !6738

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6742
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6743
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !6744
  %conv2 = zext i1 %call1 to i32, !dbg !6744
  br label %cond.end, !dbg !6738

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6738
  %tobool = icmp ne i32 %cond, 0, !dbg !6738
  ret i1 %tobool, !dbg !6745
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #1 align 16 !dbg !6746 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6748, metadata !DIExpression()), !dbg !6750
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6749, metadata !DIExpression()), !dbg !6751
  ret i1 true, !dbg !6752
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6753 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6757, metadata !DIExpression()), !dbg !6759
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6758, metadata !DIExpression()), !dbg !6760
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6761
  %and = and i64 %0, 63, !dbg !6762
  %shl = shl i64 1, %and, !dbg !6763
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6764
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6765
  %shr = ashr i64 %2, 6, !dbg !6766
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6764
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6764
  %and1 = and i64 %shl, %3, !dbg !6767
  %cmp = icmp ne i64 %and1, 0, !dbg !6768
  ret i1 %cmp, !dbg !6769
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6770 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6772, metadata !DIExpression()), !dbg !6775
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6773, metadata !DIExpression()), !dbg !6776
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #19, !dbg !6777
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6774, metadata !DIExpression()), !dbg !6778
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6779
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6780
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #19, !dbg !6781, !srcloc !6782
  %3 = icmp ult i8 %2, 2, !dbg !6781
  call void @llvm.assume(i1 %3), !dbg !6781
  store i8 %2, ptr %oldbit, align 1, !dbg !6781
  %4 = load i8, ptr %oldbit, align 1, !dbg !6783, !range !5777, !noundef !565
  %tobool = trunc i8 %4 to i1, !dbg !6783
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #19, !dbg !6784
  ret i1 %tobool, !dbg !6785
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { noredzone }
attributes #19 = { nounwind }
attributes #20 = { nounwind memory(none) }
attributes #21 = { noredzone allocsize(0,1) }
attributes #22 = { cold noredzone }
attributes #23 = { noredzone allocsize(0) }
attributes #24 = { noredzone allocsize(2) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235}
!llvm.ident = !{!5236}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vc_sel", scope: !2, file: !3, line: 46, type: !5026, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/tty/vt/.selection.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/tty/vt/selection\22 -D KBUILD_BASENAME=\22selection\22 -D KBUILD_MODNAME=\22selection\22 -D __KBUILD_MODNAME=kmod_selection -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/tty/vt/selection.ll drivers/tty/vt/selection.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !168, globals: !5000, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/tty/vt/selection.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "46935432c5d458358f090ac680985a50")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !148, !153, !158}
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
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !27, line: 1325, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!29 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!30 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!31 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!32 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!33 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!34 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!35 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!36 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!37 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!38 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!39 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!40 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!41 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 68, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vc_intensity", file: !142, line: 25, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/console_struct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc5d6fd39238769b6b364c58144bb535")
!143 = !{!144, !145, !146, !147}
!144 = !DIEnumerator(name: "VCI_HALF_BRIGHT", value: 0)
!145 = !DIEnumerator(name: "VCI_NORMAL", value: 1)
!146 = !DIEnumerator(name: "VCI_BOLD", value: 2)
!147 = !DIEnumerator(name: "VCI_MASK", value: 3)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "con_scroll", file: !149, line: 29, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/console.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d83301157f54621331b27ae09c0fe11")
!150 = !{!151, !152}
!151 = !DIEnumerator(name: "SM_UP", value: 0)
!152 = !DIEnumerator(name: "SM_DOWN", value: 1)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !154, line: 10, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!155 = !{!156, !157}
!156 = !DIEnumerator(name: "false", value: 0)
!157 = !DIEnumerator(name: "true", value: 1)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !159, line: 364, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!160 = !{!161, !162, !163, !164, !165, !166, !167}
!161 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!162 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!163 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!164 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!165 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!166 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!167 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!168 = !{!169, !170, !175, !109, !177, !180, !182, !183, !184, !4998, !2369, !4999}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !172, line: 21, baseType: !173)
!172 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !174, line: 27, baseType: !7)
!174 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !172, line: 19, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !174, line: 24, baseType: !179)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !181, line: 154, baseType: !7)
!181 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!182 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !186, line: 746, size: 58368, elements: !187)
!186 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!187 = !{!188, !196, !197, !198, !208, !209, !210, !211, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !300, !311, !438, !442, !445, !476, !477, !478, !479, !490, !492, !493, !494, !495, !496, !497, !508, !509, !512, !513, !514, !515, !516, !517, !518, !519, !526, !527, !534, !535, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3327, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3375, !3381, !3382, !3383, !3384, !3385, !3387, !3390, !3397, !3402, !3405, !3408, !3411, !3415, !4404, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4442, !4443, !4444, !4453, !4461, !4462, !4463, !4464, !4465, !4470, !4471, !4472, !4475, !4476, !4479, !4482, !4485, !4493, !4496, !4497, !4583, !4584, !4585, !4586, !4587, !4593, !4594, !4595, !4596, !4599, !4600, !4603, !4606, !4607, !4610, !4611, !4612, !4615, !4616, !4617, !4618, !4619, !4620, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4652, !4653, !4659, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4671, !4743, !4745, !4746, !4747, !4748, !4749, !4750, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !185, file: !186, line: 752, baseType: !189, size: 192)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !190, line: 56, size: 192, elements: !191)
!190 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!191 = !{!192, !193, !194, !195}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !190, line: 57, baseType: !182, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !189, file: !190, line: 58, baseType: !182, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !189, file: !190, line: 59, baseType: !171, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !189, file: !190, line: 61, baseType: !171, size: 32, offset: 160)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !185, file: !186, line: 754, baseType: !7, size: 32, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !185, file: !186, line: 767, baseType: !169, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !185, file: !186, line: 768, baseType: !199, size: 32, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !200, line: 113, baseType: !201)
!200 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !200, line: 111, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !201, file: !200, line: 112, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !181, line: 174, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 172, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !205, file: !181, line: 173, baseType: !109, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !186, line: 770, baseType: !7, size: 32, offset: 352)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !185, file: !186, line: 771, baseType: !7, size: 32, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !185, file: !186, line: 774, baseType: !109, size: 32, offset: 416)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !185, file: !186, line: 775, baseType: !212, size: 128, offset: 448)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !213, line: 58, size: 128, elements: !214)
!213 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!214 = !{!215, !221, !226, !227}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !212, file: !213, line: 59, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !217, line: 60, size: 64, elements: !218)
!217 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !217, line: 61, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !213, line: 60, baseType: !222, size: 32, offset: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !213, line: 60, size: 32, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !222, file: !213, line: 61, baseType: !7, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !222, file: !213, line: 62, baseType: !204, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !212, file: !213, line: 65, baseType: !177, size: 16, offset: 96)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !212, file: !213, line: 65, baseType: !177, size: 16, offset: 112)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !185, file: !186, line: 776, baseType: !7, size: 32, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !185, file: !186, line: 777, baseType: !182, size: 64, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !185, file: !186, line: 778, baseType: !184, size: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !185, file: !186, line: 787, baseType: !109, size: 32, offset: 768)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !185, file: !186, line: 788, baseType: !109, size: 32, offset: 800)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !185, file: !186, line: 790, baseType: !109, size: 32, offset: 832)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !185, file: !186, line: 792, baseType: !109, size: 32, offset: 864)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !185, file: !186, line: 793, baseType: !109, size: 32, offset: 896)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !185, file: !186, line: 794, baseType: !109, size: 32, offset: 928)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !185, file: !186, line: 795, baseType: !7, size: 32, offset: 960)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !185, file: !186, line: 797, baseType: !239, size: 2048, offset: 1024)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !186, line: 551, size: 2048, elements: !240)
!240 = !{!241, !246, !254, !258, !259, !265, !266, !267, !268, !269, !270, !274, !275, !276, !277, !279, !282, !283, !284}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !239, file: !186, line: 553, baseType: !242, size: 128)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !186, line: 411, size: 128, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !242, file: !186, line: 412, baseType: !182, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !242, file: !186, line: 413, baseType: !171, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !239, file: !186, line: 554, baseType: !247, size: 192, align: 64, offset: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !248, line: 5, size: 192, align: 64, elements: !249)
!248 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!249 = !{!250, !251, !253}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !247, file: !248, line: 6, baseType: !182, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !247, file: !248, line: 7, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !247, file: !248, line: 8, baseType: !252, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !239, file: !186, line: 555, baseType: !255, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !172, line: 23, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !174, line: 31, baseType: !257)
!257 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !239, file: !186, line: 556, baseType: !255, size: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !239, file: !186, line: 558, baseType: !260, size: 128, offset: 448)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !181, line: 190, size: 128, elements: !261)
!261 = !{!262, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !181, line: 191, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !260, file: !181, line: 191, baseType: !263, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !239, file: !186, line: 559, baseType: !7, size: 32, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !239, file: !186, line: 561, baseType: !255, size: 64, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !239, file: !186, line: 562, baseType: !255, size: 64, offset: 704)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !239, file: !186, line: 563, baseType: !255, size: 64, offset: 768)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !239, file: !186, line: 564, baseType: !255, size: 64, offset: 832)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !239, file: !186, line: 565, baseType: !271, size: 64, offset: 896)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !172, line: 22, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !174, line: 30, baseType: !273)
!273 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !239, file: !186, line: 566, baseType: !255, size: 64, offset: 960)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !239, file: !186, line: 568, baseType: !255, size: 64, offset: 1024)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !239, file: !186, line: 571, baseType: !109, size: 32, offset: 1088)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !239, file: !186, line: 572, baseType: !278, size: 64, offset: 1152)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !239, file: !186, line: 574, baseType: !280, size: 64, offset: 1216)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !186, line: 49, flags: DIFlagFwdDecl)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !239, file: !186, line: 576, baseType: !280, size: 64, offset: 1280)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !239, file: !186, line: 578, baseType: !182, size: 64, offset: 1344)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !239, file: !186, line: 588, baseType: !285, size: 512, align: 512, offset: 1536)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !186, line: 497, size: 512, align: 512, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !285, file: !186, line: 498, baseType: !255, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !285, file: !186, line: 499, baseType: !255, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !285, file: !186, line: 500, baseType: !255, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !285, file: !186, line: 501, baseType: !171, size: 32, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !285, file: !186, line: 502, baseType: !171, size: 32, offset: 224)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !285, file: !186, line: 503, baseType: !182, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !285, file: !186, line: 504, baseType: !182, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !285, file: !186, line: 505, baseType: !182, size: 64, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !285, file: !186, line: 506, baseType: !296, size: 64, align: 64, offset: 448)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !186, line: 445, size: 64, align: 64, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !296, file: !186, line: 446, baseType: !7, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !296, file: !186, line: 447, baseType: !7, size: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !185, file: !186, line: 798, baseType: !301, size: 384, offset: 3072)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !186, line: 592, size: 384, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308, !309}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !301, file: !186, line: 593, baseType: !260, size: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !301, file: !186, line: 594, baseType: !182, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !301, file: !186, line: 595, baseType: !182, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !301, file: !186, line: 596, baseType: !7, size: 32, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !301, file: !186, line: 597, baseType: !179, size: 16, offset: 288)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !301, file: !186, line: 598, baseType: !179, size: 16, offset: 304)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !301, file: !186, line: 600, baseType: !310, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !185, file: !186, line: 799, baseType: !312, size: 1792, offset: 3456)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !186, line: 610, size: 1792, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !435, !436}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !312, file: !186, line: 611, baseType: !247, size: 192, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !312, file: !186, line: 618, baseType: !255, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !312, file: !186, line: 619, baseType: !255, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !312, file: !186, line: 620, baseType: !255, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !312, file: !186, line: 621, baseType: !255, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !312, file: !186, line: 622, baseType: !255, size: 64, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !312, file: !186, line: 629, baseType: !271, size: 64, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !312, file: !186, line: 630, baseType: !255, size: 64, offset: 576)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !186, line: 631, baseType: !7, size: 32, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !312, file: !186, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !312, file: !186, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !312, file: !186, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !312, file: !186, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !312, file: !186, line: 662, baseType: !328, size: 512, offset: 704)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !329)
!329 = !{!330, !338, !339, !344, !431, !432, !433, !434}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !328, file: !57, line: 119, baseType: !331, size: 256)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !332, line: 9, size: 256, elements: !333)
!332 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !331, file: !332, line: 10, baseType: !247, size: 192, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !331, file: !332, line: 11, baseType: !336, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !337, line: 29, baseType: !271)
!337 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !328, file: !57, line: 120, baseType: !336, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !328, file: !57, line: 121, baseType: !340, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!56, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !328, file: !57, line: 122, baseType: !345, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !347)
!347 = !{!348, !399, !400, !404, !414, !415, !426, !430}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !346, file: !57, line: 160, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !351)
!351 = !{!352, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !350, file: !57, line: 216, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !354, line: 23, baseType: !355)
!354 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !354, line: 14, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !355, file: !354, line: 15, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !359, line: 44, baseType: !360)
!359 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !359, line: 14, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !359, line: 15, baseType: !363, size: 32)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !359, line: 15, size: 32, elements: !364)
!364 = !{!365, !366, !374}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !363, file: !359, line: 16, baseType: !204, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !359, line: 24, baseType: !367, size: 16)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !359, line: 24, size: 16, elements: !368)
!368 = !{!369, !373}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !367, file: !359, line: 25, baseType: !370, size: 8)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !172, line: 17, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !174, line: 21, baseType: !372)
!372 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !367, file: !359, line: 26, baseType: !370, size: 8, offset: 8)
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !359, line: 28, baseType: !375, size: 32)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !359, line: 28, size: 32, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !375, file: !359, line: 29, baseType: !177, size: 16)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !375, file: !359, line: 30, baseType: !177, size: 16, offset: 16)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !350, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !350, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !350, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !350, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !350, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !350, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !350, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !350, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !350, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !350, file: !57, line: 227, baseType: !179, size: 16, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !350, file: !57, line: 228, baseType: !179, size: 16, offset: 208)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !350, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !350, file: !57, line: 235, baseType: !336, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !350, file: !57, line: 236, baseType: !343, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !350, file: !57, line: 237, baseType: !336, size: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !350, file: !57, line: 238, baseType: !343, size: 64, offset: 448)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !350, file: !57, line: 239, baseType: !396, size: 4096, align: 512, offset: 512)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 4096, align: 512, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 8)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !346, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !346, file: !57, line: 162, baseType: !401, size: 32, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !181, line: 32, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !403, line: 96, baseType: !109)
!403 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!404 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !346, file: !57, line: 163, baseType: !405, size: 32, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !406, line: 274, baseType: !407)
!406 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !406, line: 274, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !407, file: !406, line: 274, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !406, line: 69, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !406, line: 64, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !411, file: !406, line: 65, baseType: !7, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !346, file: !57, line: 164, baseType: !343, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !346, file: !57, line: 165, baseType: !416, size: 128, offset: 256)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !332, line: 14, size: 128, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !416, file: !332, line: 15, baseType: !419, size: 128)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !248, line: 26, size: 128, elements: !420)
!420 = !{!421, !425}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !419, file: !248, line: 27, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !248, line: 12, size: 64, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !422, file: !248, line: 13, baseType: !252, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !419, file: !248, line: 28, baseType: !252, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !346, file: !57, line: 166, baseType: !427, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!336}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !346, file: !57, line: 167, baseType: !336, size: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !57, line: 123, baseType: !370, size: 8, offset: 448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !328, file: !57, line: 124, baseType: !370, size: 8, offset: 456)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !328, file: !57, line: 125, baseType: !370, size: 8, offset: 464)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !328, file: !57, line: 126, baseType: !370, size: 8, offset: 472)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !312, file: !186, line: 671, baseType: !328, size: 512, offset: 1216)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !312, file: !186, line: 679, baseType: !437, size: 64, offset: 1728)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !185, file: !186, line: 800, baseType: !439, size: 64, offset: 5248)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !186, line: 800, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !185, file: !186, line: 809, baseType: !443, size: 64, offset: 5312)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !186, line: 70, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !185, file: !186, line: 825, baseType: !446, size: 2048, align: 512, offset: 5632)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !186, line: 509, size: 2048, align: 512, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !446, file: !186, line: 511, baseType: !255, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !446, file: !186, line: 512, baseType: !255, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !446, file: !186, line: 513, baseType: !255, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !446, file: !186, line: 514, baseType: !255, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !446, file: !186, line: 515, baseType: !255, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !446, file: !186, line: 516, baseType: !255, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !446, file: !186, line: 518, baseType: !255, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !446, file: !186, line: 519, baseType: !255, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !446, file: !186, line: 520, baseType: !271, size: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !446, file: !186, line: 522, baseType: !255, size: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !446, file: !186, line: 523, baseType: !255, size: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !446, file: !186, line: 524, baseType: !271, size: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !446, file: !186, line: 526, baseType: !271, size: 64, offset: 768)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !446, file: !186, line: 527, baseType: !255, size: 64, offset: 832)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !446, file: !186, line: 529, baseType: !255, size: 64, offset: 896)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !446, file: !186, line: 530, baseType: !255, size: 64, offset: 960)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !446, file: !186, line: 531, baseType: !255, size: 64, offset: 1024)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !446, file: !186, line: 532, baseType: !255, size: 64, offset: 1088)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !446, file: !186, line: 533, baseType: !255, size: 64, offset: 1152)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !446, file: !186, line: 535, baseType: !255, size: 64, offset: 1216)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !446, file: !186, line: 536, baseType: !255, size: 64, offset: 1280)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !446, file: !186, line: 537, baseType: !255, size: 64, offset: 1344)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !446, file: !186, line: 538, baseType: !255, size: 64, offset: 1408)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !446, file: !186, line: 539, baseType: !255, size: 64, offset: 1472)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !446, file: !186, line: 540, baseType: !255, size: 64, offset: 1536)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !446, file: !186, line: 541, baseType: !255, size: 64, offset: 1600)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !446, file: !186, line: 542, baseType: !255, size: 64, offset: 1664)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !446, file: !186, line: 543, baseType: !255, size: 64, offset: 1728)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !185, file: !186, line: 833, baseType: !7, size: 32, offset: 7680)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !185, file: !186, line: 836, baseType: !7, size: 32, offset: 7712)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !185, file: !186, line: 837, baseType: !109, size: 32, offset: 7744)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !185, file: !186, line: 838, baseType: !480, size: 64, offset: 7808)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !483, line: 19, baseType: !484)
!483 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !483, line: 19, size: 64, elements: !485)
!485 = !{!486}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !484, file: !483, line: 19, baseType: !487, size: 64)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 64, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 1)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !185, file: !186, line: 839, baseType: !491, size: 64, offset: 7872)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !185, file: !186, line: 840, baseType: !482, size: 64, offset: 7936)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !185, file: !186, line: 841, baseType: !169, size: 64, offset: 8000)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !185, file: !186, line: 843, baseType: !179, size: 16, offset: 8064)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !185, file: !186, line: 845, baseType: !179, size: 16, offset: 8080)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !185, file: !186, line: 848, baseType: !109, size: 32, offset: 8096)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !185, file: !186, line: 849, baseType: !498, size: 32, offset: 8128)
!498 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !186, line: 718, size: 32, elements: !499)
!499 = !{!500, !507}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !498, file: !186, line: 724, baseType: !501, size: 32)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !498, file: !186, line: 719, size: 32, elements: !502)
!502 = !{!503, !504, !505, !506}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !501, file: !186, line: 720, baseType: !370, size: 8)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !501, file: !186, line: 721, baseType: !370, size: 8, offset: 8)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !501, file: !186, line: 722, baseType: !370, size: 8, offset: 16)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !501, file: !186, line: 723, baseType: !370, size: 8, offset: 24)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !498, file: !186, line: 725, baseType: !171, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !185, file: !186, line: 850, baseType: !260, size: 128, offset: 8192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !185, file: !186, line: 851, baseType: !510, size: 64, offset: 8320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !186, line: 60, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !185, file: !186, line: 855, baseType: !182, size: 64, offset: 8384)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !185, file: !186, line: 856, baseType: !370, size: 8, offset: 8448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !185, file: !186, line: 857, baseType: !370, size: 8, offset: 8456)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !185, file: !186, line: 858, baseType: !109, size: 32, offset: 8480)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !185, file: !186, line: 859, baseType: !260, size: 128, offset: 8512)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !185, file: !186, line: 860, baseType: !109, size: 32, offset: 8640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !185, file: !186, line: 861, baseType: !260, size: 128, offset: 8704)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !185, file: !186, line: 873, baseType: !520, size: 256, offset: 8832)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !186, line: 376, size: 256, elements: !521)
!521 = !{!522, !523, !524, !525}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !520, file: !186, line: 381, baseType: !182, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !520, file: !186, line: 384, baseType: !257, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !520, file: !186, line: 389, baseType: !257, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !520, file: !186, line: 392, baseType: !257, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !185, file: !186, line: 875, baseType: !260, size: 128, offset: 9088)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !185, file: !186, line: 877, baseType: !528, size: 320, offset: 9216)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !529, line: 86, size: 320, elements: !530)
!529 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!530 = !{!531, !532, !533}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !528, file: !529, line: 87, baseType: !109, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !528, file: !529, line: 88, baseType: !260, size: 128, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !528, file: !529, line: 89, baseType: !260, size: 128, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !185, file: !186, line: 878, baseType: !247, size: 192, align: 64, offset: 9536)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !185, file: !186, line: 881, baseType: !536, size: 64, offset: 9728)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !538)
!538 = !{!539, !3247}
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !537, file: !27, line: 734, baseType: !540, size: 10240)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !537, file: !27, line: 734, size: 10240, elements: !541)
!541 = !{!542, !546, !568, !3126, !3127, !3128, !3129, !3130, !3131, !3138, !3139, !3140, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3179, !3181, !3184, !3227, !3228, !3229, !3232, !3233, !3234, !3237, !3238, !3239, !3245, !3246}
!542 = !DIDerivedType(tag: DW_TAG_member, scope: !540, file: !27, line: 739, baseType: !543, size: 512, align: 512)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !540, file: !27, line: 739, size: 512, align: 512, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !543, file: !27, line: 747, baseType: !204, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !540, file: !27, line: 750, baseType: !547, size: 128, offset: 512)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !548, line: 218, size: 128, elements: !549)
!548 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!549 = !{!550, !566, !567}
!550 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !548, line: 219, baseType: !551, size: 32)
!551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !548, line: 219, size: 32, elements: !552)
!552 = !{!553, !562}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !551, file: !548, line: 220, baseType: !554, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !555, line: 29, baseType: !556)
!555 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !555, line: 17, size: 32, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, scope: !556, file: !555, line: 18, baseType: !559, size: 32)
!559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !556, file: !555, line: 18, size: 32, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !559, file: !555, line: 19, baseType: !355, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !551, file: !548, line: 221, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !548, line: 197, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !548, line: 197, elements: !565)
!565 = !{}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !547, file: !548, line: 223, baseType: !7, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !547, file: !548, line: 224, baseType: !169, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !540, file: !27, line: 752, baseType: !569, size: 64, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!182, !572, !182, !182, !182, !182}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !574)
!574 = !{!575, !589, !590, !592, !599, !611, !614, !615, !691, !906, !915, !3116, !3117, !3118, !3119, !3120, !3121, !3123, !3124, !3125}
!575 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !14, line: 995, baseType: !576, size: 128)
!576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !14, line: 995, size: 128, elements: !577)
!577 = !{!578, !579, !588}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !576, file: !14, line: 996, baseType: !216, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !576, file: !14, line: 997, baseType: !580, size: 128, align: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !181, line: 232, size: 128, align: 64, elements: !581)
!581 = !{!582, !584}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !580, file: !181, line: 233, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !580, file: !181, line: 234, baseType: !585, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !583}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !576, file: !14, line: 998, baseType: !7, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !573, file: !14, line: 1005, baseType: !554, size: 32, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !573, file: !14, line: 1006, baseType: !591, size: 32, offset: 160)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !181, line: 156, baseType: !7)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !573, file: !14, line: 1007, baseType: !593, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !594, line: 13, baseType: !595)
!594 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !181, line: 181, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 179, size: 64, elements: !597)
!597 = !{!598}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !596, file: !181, line: 180, baseType: !271, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !573, file: !14, line: 1008, baseType: !600, size: 256, offset: 256)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !601, line: 66, size: 256, elements: !602)
!601 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!602 = !{!603, !604, !605, !610}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !600, file: !601, line: 67, baseType: !593, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !600, file: !601, line: 68, baseType: !353, size: 32, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !600, file: !601, line: 70, baseType: !606, size: 32, offset: 96)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !607, line: 15, size: 32, elements: !608)
!607 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !606, file: !607, line: 20, baseType: !204, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !600, file: !601, line: 72, baseType: !260, size: 128, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !573, file: !14, line: 1009, baseType: !612, size: 64, offset: 512)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !181, line: 52, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !403, line: 88, baseType: !273)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !573, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !573, file: !14, line: 1011, baseType: !616, size: 256, offset: 640)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !617)
!617 = !{!618, !641, !680, !681, !689, !690}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !616, file: !14, line: 949, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !620, line: 34, baseType: !621)
!620 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !620, line: 25, size: 64, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !621, file: !620, line: 26, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !625, line: 27, baseType: !626)
!625 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !625, line: 13, size: 64, elements: !627)
!627 = !{!628, !640}
!628 = !DIDerivedType(tag: DW_TAG_member, scope: !626, file: !625, line: 14, baseType: !629, size: 32)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !626, file: !625, line: 14, size: 32, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !629, file: !625, line: 15, baseType: !204, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, scope: !629, file: !625, line: 16, baseType: !633, size: 32)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !629, file: !625, line: 16, size: 32, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !633, file: !625, line: 18, baseType: !370, size: 8)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !633, file: !625, line: 19, baseType: !637, size: 24, offset: 8)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 24, elements: !638)
!638 = !{!639}
!639 = !DISubrange(count: 3)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !626, file: !625, line: 26, baseType: !358, size: 32, offset: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !616, file: !14, line: 950, baseType: !642, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !644)
!644 = !{!645, !646, !647, !648, !661, !662, !669, !670}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !643, file: !19, line: 61, baseType: !199, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !643, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !643, file: !19, line: 63, baseType: !554, size: 32, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !643, file: !19, line: 65, baseType: !649, size: 256, offset: 128)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 256, elements: !659)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !181, line: 194, size: 64, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !650, file: !181, line: 195, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !181, line: 198, size: 128, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !181, line: 199, baseType: !653, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !654, file: !181, line: 199, baseType: !658, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!659 = !{!660}
!660 = !DISubrange(count: 4)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !643, file: !19, line: 66, baseType: !650, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !643, file: !19, line: 68, baseType: !663, size: 192, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !664, line: 41, baseType: !665)
!664 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !664, line: 37, size: 192, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !665, file: !664, line: 38, baseType: !554, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !665, file: !664, line: 39, baseType: !260, size: 128, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !643, file: !19, line: 69, baseType: !580, size: 128, align: 64, offset: 640)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !643, file: !19, line: 70, baseType: !671, offset: 768)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, elements: !678)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !672, file: !19, line: 55, baseType: !109, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !672, file: !19, line: 56, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!678 = !{!679}
!679 = !DISubrange(count: -1)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !616, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !616, file: !14, line: 952, baseType: !682, size: 32, offset: 160)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !683, line: 23, baseType: !684)
!683 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 21, size: 32, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !684, file: !683, line: 22, baseType: !687, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !181, line: 37, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !403, line: 49, baseType: !7)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !616, file: !14, line: 952, baseType: !682, size: 32, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !616, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !573, file: !14, line: 1012, baseType: !692, size: 64, offset: 896)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !695, line: 110, size: 1472, elements: !696)
!695 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!696 = !{!697, !698, !699, !706, !707, !708, !709, !710, !711, !712, !713, !719, !720, !721, !722, !723, !724, !851, !852, !853, !854, !855, !886, !889, !893, !901}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !694, file: !695, line: 111, baseType: !593, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !694, file: !695, line: 112, baseType: !682, size: 32, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !694, file: !695, line: 113, baseType: !700, size: 32, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !683, line: 28, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 26, size: 32, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !701, file: !683, line: 27, baseType: !704, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !181, line: 38, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !403, line: 50, baseType: !7)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !694, file: !695, line: 114, baseType: !682, size: 32, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !694, file: !695, line: 115, baseType: !700, size: 32, offset: 160)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !694, file: !695, line: 116, baseType: !682, size: 32, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !694, file: !695, line: 117, baseType: !700, size: 32, offset: 224)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !694, file: !695, line: 118, baseType: !682, size: 32, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !694, file: !695, line: 119, baseType: !700, size: 32, offset: 288)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !694, file: !695, line: 120, baseType: !7, size: 32, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !694, file: !695, line: 121, baseType: !714, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !715, line: 24, baseType: !716)
!715 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 24, size: 64, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !716, file: !715, line: 24, baseType: !255, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !694, file: !695, line: 122, baseType: !714, size: 64, offset: 448)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !694, file: !695, line: 123, baseType: !714, size: 64, offset: 512)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !694, file: !695, line: 124, baseType: !714, size: 64, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !694, file: !695, line: 125, baseType: !714, size: 64, offset: 640)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !694, file: !695, line: 127, baseType: !372, size: 8, offset: 704)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !694, file: !695, line: 129, baseType: !725, size: 64, offset: 768)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !727, line: 195, size: 1728, elements: !728)
!727 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!728 = !{!729, !730, !735, !740, !749, !752, !753, !760, !761, !762, !763, !766, !767, !768, !770, !771, !815, !836}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !726, file: !727, line: 196, baseType: !199, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !726, file: !727, line: 197, baseType: !731, size: 32, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !727, line: 28, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !181, line: 104, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !172, line: 20, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !174, line: 26, baseType: !109)
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !727, line: 198, baseType: !736, size: 192, offset: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !727, line: 198, size: 192, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !736, file: !727, line: 199, baseType: !260, size: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !736, file: !727, line: 200, baseType: !247, size: 192, align: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !726, file: !727, line: 205, baseType: !741, size: 320, offset: 256)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !742, line: 48, size: 320, elements: !743)
!742 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!743 = !{!744, !745, !746, !747, !748}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !741, file: !742, line: 49, baseType: !593, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !741, file: !742, line: 55, baseType: !593, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !741, file: !742, line: 57, baseType: !606, size: 32, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !741, file: !742, line: 59, baseType: !353, size: 32, offset: 160)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !741, file: !742, line: 60, baseType: !260, size: 128, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !726, file: !727, line: 206, baseType: !750, size: 64, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !727, line: 206, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !726, file: !727, line: 207, baseType: !169, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !727, line: 208, baseType: !754, size: 64, offset: 704)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !727, line: 208, size: 64, elements: !755)
!755 = !{!756, !759}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !754, file: !727, line: 209, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !758, line: 8, baseType: !272)
!758 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!759 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !754, file: !727, line: 210, baseType: !757, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !726, file: !727, line: 212, baseType: !757, size: 64, offset: 768)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !726, file: !727, line: 213, baseType: !682, size: 32, offset: 832)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !726, file: !727, line: 214, baseType: !700, size: 32, offset: 864)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !726, file: !727, line: 215, baseType: !764, size: 32, offset: 896)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !727, line: 31, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !181, line: 110, baseType: !171)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !726, file: !727, line: 216, baseType: !179, size: 16, offset: 928)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !726, file: !727, line: 217, baseType: !179, size: 16, offset: 944)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !726, file: !727, line: 221, baseType: !769, size: 16, offset: 960)
!769 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !726, file: !727, line: 228, baseType: !182, size: 64, offset: 1024)
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !727, line: 245, baseType: !772, size: 320, offset: 1088)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !727, line: 245, size: 320, elements: !773)
!773 = !{!774, !806}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !772, file: !727, line: 246, baseType: !775, size: 320)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !727, line: 114, size: 320, elements: !776)
!776 = !{!777, !778, !791, !794, !803}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !775, file: !727, line: 116, baseType: !182, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !727, line: 117, baseType: !779, size: 64, offset: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !775, file: !727, line: 117, size: 64, elements: !780)
!780 = !{!781, !790}
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !727, line: 118, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !727, line: 118, size: 64, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !782, file: !727, line: 120, baseType: !177, size: 16)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !782, file: !727, line: 121, baseType: !786, size: 48, offset: 16)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 48, elements: !788)
!787 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!788 = !{!789}
!789 = !DISubrange(count: 6)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !779, file: !727, line: 127, baseType: !182, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !727, line: 129, baseType: !792, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !727, line: 102, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !775, file: !727, line: 130, baseType: !795, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !727, line: 108, size: 192, elements: !797)
!797 = !{!798, !799, !800}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !796, file: !727, line: 109, baseType: !580, size: 128, align: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !796, file: !727, line: 110, baseType: !199, size: 32, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !796, file: !727, line: 111, baseType: !801, size: 8, offset: 160)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !181, line: 35, baseType: !802)
!802 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !775, file: !727, line: 131, baseType: !804, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !727, line: 247, baseType: !807, size: 320)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !727, line: 247, size: 320, elements: !808)
!808 = !{!809, !810, !811, !812, !813}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !807, file: !727, line: 248, baseType: !182, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !807, file: !727, line: 249, baseType: !182, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !807, file: !727, line: 250, baseType: !792, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !807, file: !727, line: 251, baseType: !795, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !807, file: !727, line: 252, baseType: !814, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !727, line: 260, baseType: !816, size: 256, offset: 1408)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !727, line: 260, size: 256, elements: !817)
!817 = !{!818, !824}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !816, file: !727, line: 261, baseType: !819, size: 256)
!819 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !727, line: 134, size: 256, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !819, file: !727, line: 135, baseType: !169, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !819, file: !727, line: 136, baseType: !823, size: 256)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 256, elements: !659)
!824 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !727, line: 262, baseType: !825, size: 256)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !816, file: !727, line: 262, size: 256, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !825, file: !727, line: 264, baseType: !260, size: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !825, file: !727, line: 265, baseType: !829, size: 128, offset: 128)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !830, line: 22, size: 128, elements: !831)
!830 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!831 = !{!832, !835}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !829, file: !830, line: 23, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !830, line: 23, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !829, file: !830, line: 24, baseType: !182, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !726, file: !727, line: 280, baseType: !837, size: 64, offset: 1664)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !727, line: 176, size: 192, elements: !839)
!839 = !{!840, !849, !850}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !838, file: !727, line: 177, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !727, line: 171, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!109, !725, !845, !847, !725}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !838, file: !727, line: 178, baseType: !725, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !838, file: !727, line: 179, baseType: !792, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !694, file: !695, line: 130, baseType: !725, size: 64, offset: 832)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !694, file: !695, line: 131, baseType: !725, size: 64, offset: 896)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !694, file: !695, line: 132, baseType: !725, size: 64, offset: 960)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !694, file: !695, line: 135, baseType: !169, size: 64, offset: 1024)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !694, file: !695, line: 137, baseType: !856, size: 64, offset: 1088)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !858, line: 14, size: 1088, elements: !859)
!858 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!859 = !{!860, !861, !870, !871, !872, !873, !874, !875}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !857, file: !858, line: 15, baseType: !199, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !857, file: !858, line: 17, baseType: !862, size: 320, offset: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !863, line: 22, size: 320, elements: !864)
!863 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!864 = !{!865, !866, !867, !868}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !862, file: !863, line: 23, baseType: !353, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !862, file: !863, line: 24, baseType: !271, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !862, file: !863, line: 26, baseType: !260, size: 128, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !862, file: !863, line: 28, baseType: !869, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !857, file: !858, line: 19, baseType: !182, size: 64, offset: 384)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !857, file: !858, line: 20, baseType: !593, size: 64, offset: 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !857, file: !858, line: 23, baseType: !654, size: 128, offset: 512)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !857, file: !858, line: 24, baseType: !682, size: 32, offset: 640)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !857, file: !858, line: 29, baseType: !593, size: 64, offset: 704)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !857, file: !858, line: 36, baseType: !876, size: 320, offset: 768)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !877, line: 15, size: 320, elements: !878)
!877 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!878 = !{!879, !880, !881, !882, !883, !884, !885}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !876, file: !877, line: 16, baseType: !353, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !876, file: !877, line: 18, baseType: !109, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !876, file: !877, line: 19, baseType: !109, size: 32, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !876, file: !877, line: 20, baseType: !109, size: 32, offset: 96)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !876, file: !877, line: 21, baseType: !109, size: 32, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !876, file: !877, line: 22, baseType: !182, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !877, line: 23, baseType: !182, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !694, file: !695, line: 138, baseType: !887, size: 64, offset: 1152)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !683, line: 18, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !694, file: !695, line: 139, baseType: !890, size: 64, offset: 1216)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !892, line: 16, flags: DIFlagFwdDecl)
!892 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!893 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !694, file: !695, line: 140, baseType: !894, size: 64, offset: 1280)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !695, line: 25, size: 64, elements: !896)
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !895, file: !695, line: 26, baseType: !204, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !895, file: !695, line: 27, baseType: !109, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !895, file: !695, line: 28, baseType: !900, offset: 64)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, elements: !678)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !695, line: 142, baseType: !902, size: 128, offset: 1344)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !695, line: 142, size: 128, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !902, file: !695, line: 143, baseType: !109, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !902, file: !695, line: 144, baseType: !580, size: 128, align: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !573, file: !14, line: 1013, baseType: !907, size: 256, offset: 960)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !908)
!908 = !{!909, !910, !911, !912, !913, !914}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !907, file: !14, line: 971, baseType: !182, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !907, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !907, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !907, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !907, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !907, file: !14, line: 976, baseType: !612, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !573, file: !14, line: 1014, baseType: !916, size: 128, offset: 1216)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !917, line: 8, size: 128, elements: !918)
!917 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!918 = !{!919, !3115}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !916, file: !917, line: 9, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !922, line: 70, size: 256, elements: !923)
!922 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!923 = !{!924, !3112, !3113, !3114}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !921, file: !922, line: 71, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !927, line: 82, size: 1536, elements: !928)
!927 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!928 = !{!929, !930, !935, !943, !944, !959, !3079, !3081, !3094, !3095, !3096, !3097, !3098, !3104, !3105, !3106}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !926, file: !927, line: 84, baseType: !7, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !926, file: !927, line: 85, baseType: !931, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !406, line: 275, baseType: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !406, line: 275, size: 32, elements: !933)
!933 = !{!934}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !932, file: !406, line: 275, baseType: !410, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !926, file: !927, line: 86, baseType: !936, size: 128, offset: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !937, line: 38, size: 128, elements: !938)
!937 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!938 = !{!939, !941}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !936, file: !937, line: 39, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !936, file: !937, line: 39, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !926, file: !927, line: 87, baseType: !925, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !926, file: !927, line: 88, baseType: !945, size: 128, offset: 256)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !927, line: 49, size: 128, elements: !946)
!946 = !{!947, !956}
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !927, line: 50, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !927, line: 50, size: 64, elements: !949)
!949 = !{!950, !955}
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !927, line: 51, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !927, line: 51, size: 64, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !951, file: !927, line: 52, baseType: !171, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !951, file: !927, line: 52, baseType: !171, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !948, file: !927, line: 54, baseType: !255, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !945, file: !927, line: 56, baseType: !957, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !926, file: !927, line: 89, baseType: !960, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !962)
!962 = !{!963, !965, !966, !967, !968, !969, !970, !973, !974, !1171, !2885, !2886, !2887, !2888, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !3053, !3056, !3057, !3058, !3075, !3076, !3077, !3078}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !961, file: !14, line: 642, baseType: !964, size: 16)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !181, line: 24, baseType: !179)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !961, file: !14, line: 643, baseType: !179, size: 16, offset: 16)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !961, file: !14, line: 644, baseType: !682, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !961, file: !14, line: 645, baseType: !260, size: 128, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !961, file: !14, line: 646, baseType: !700, size: 32, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !961, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !961, file: !14, line: 650, baseType: !971, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !961, file: !14, line: 651, baseType: !971, size: 64, offset: 320)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !961, file: !14, line: 654, baseType: !975, size: 64, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !978)
!978 = !{!979, !983, !996, !1002, !1006, !1010, !1014, !1018, !1022, !1026, !1030, !1031, !1037, !1041, !1079, !1110, !1120, !1126, !1130, !1134, !1138, !1142, !1146, !1152, !1156}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !977, file: !14, line: 1967, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!925, !960, !925, !7}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !977, file: !14, line: 1968, baseType: !984, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!804, !925, !960, !987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !989, line: 10, size: 128, elements: !990)
!989 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!990 = !{!991, !995}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !988, file: !989, line: 11, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !169}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !988, file: !989, line: 12, baseType: !169, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !977, file: !14, line: 1969, baseType: !997, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!109, !1000, !960, !109}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !715, line: 42, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !977, file: !14, line: 1970, baseType: !1003, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!971, !960, !109, !801}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !977, file: !14, line: 1972, baseType: !1007, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!109, !925, !814, !109}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !977, file: !14, line: 1974, baseType: !1011, size: 64, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!109, !1000, !960, !925, !964, !801}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !977, file: !14, line: 1976, baseType: !1015, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!109, !925, !960, !925}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !977, file: !14, line: 1977, baseType: !1019, size: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!109, !960, !925}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !977, file: !14, line: 1978, baseType: !1023, size: 64, offset: 512)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!109, !1000, !960, !925, !804}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !977, file: !14, line: 1980, baseType: !1027, size: 64, offset: 576)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!109, !1000, !960, !925, !964}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !977, file: !14, line: 1982, baseType: !1019, size: 64, offset: 640)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !977, file: !14, line: 1983, baseType: !1032, size: 64, offset: 704)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!109, !1000, !960, !925, !964, !1035}
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !181, line: 21, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !181, line: 18, baseType: !171)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !977, file: !14, line: 1985, baseType: !1038, size: 64, offset: 768)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!109, !1000, !960, !925, !960, !925, !7}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !977, file: !14, line: 1987, baseType: !1042, size: 64, offset: 832)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!109, !1000, !925, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1060, !1069, !1070, !1076, !1077, !1078}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1046, file: !14, line: 227, baseType: !7, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1046, file: !14, line: 228, baseType: !964, size: 16, offset: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1046, file: !14, line: 241, baseType: !1051, size: 32, offset: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1046, file: !14, line: 241, size: 32, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1051, file: !14, line: 242, baseType: !682, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1051, file: !14, line: 243, baseType: !1055, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1056, line: 16, baseType: !1057)
!1056 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1056, line: 14, size: 32, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1057, file: !1056, line: 15, baseType: !687, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1046, file: !14, line: 245, baseType: !1061, size: 32, offset: 96)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1046, file: !14, line: 245, size: 32, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1061, file: !14, line: 246, baseType: !700, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1061, file: !14, line: 247, baseType: !1065, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1056, line: 20, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1056, line: 18, size: 32, elements: !1067)
!1067 = !{!1068}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1066, file: !1056, line: 19, baseType: !704, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1046, file: !14, line: 249, baseType: !612, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1046, file: !14, line: 250, baseType: !1071, size: 128, offset: 192)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !758, line: 13, size: 128, elements: !1072)
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1071, file: !758, line: 14, baseType: !757, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1071, file: !758, line: 15, baseType: !1075, size: 64, offset: 64)
!1075 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1046, file: !14, line: 251, baseType: !1071, size: 128, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1046, file: !14, line: 252, baseType: !1071, size: 128, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1046, file: !14, line: 259, baseType: !572, size: 64, offset: 576)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !977, file: !14, line: 1988, baseType: !1080, size: 64, offset: 896)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!109, !1000, !1083, !1085, !171, !7}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1087, line: 22, size: 1280, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1086, file: !1087, line: 23, baseType: !171, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1086, file: !1087, line: 24, baseType: !964, size: 16, offset: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1086, file: !1087, line: 25, baseType: !7, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1086, file: !1087, line: 26, baseType: !765, size: 32, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1086, file: !1087, line: 27, baseType: !255, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1086, file: !1087, line: 28, baseType: !255, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1086, file: !1087, line: 41, baseType: !255, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1086, file: !1087, line: 42, baseType: !1035, size: 32, offset: 320)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1086, file: !1087, line: 43, baseType: !1035, size: 32, offset: 352)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1086, file: !1087, line: 44, baseType: !682, size: 32, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1086, file: !1087, line: 45, baseType: !700, size: 32, offset: 416)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1086, file: !1087, line: 46, baseType: !612, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1086, file: !1087, line: 47, baseType: !1071, size: 128, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1086, file: !1087, line: 48, baseType: !1071, size: 128, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1086, file: !1087, line: 49, baseType: !1071, size: 128, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1086, file: !1087, line: 50, baseType: !1071, size: 128, offset: 896)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1086, file: !1087, line: 51, baseType: !255, size: 64, offset: 1024)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1086, file: !1087, line: 52, baseType: !255, size: 64, offset: 1088)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1086, file: !1087, line: 53, baseType: !171, size: 32, offset: 1152)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1086, file: !1087, line: 54, baseType: !171, size: 32, offset: 1184)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1086, file: !1087, line: 55, baseType: !255, size: 64, offset: 1216)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !977, file: !14, line: 1990, baseType: !1111, size: 64, offset: 960)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!1114, !925, !814, !1117}
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !181, line: 66, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !403, line: 73, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !403, line: 15, baseType: !1075)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 61, baseType: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !403, line: 72, baseType: !1119)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !403, line: 16, baseType: !182)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !977, file: !14, line: 1991, baseType: !1121, size: 64, offset: 1024)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!109, !960, !1124, !255, !255}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !977, file: !14, line: 1993, baseType: !1127, size: 64, offset: 1088)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!109, !960, !109}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !977, file: !14, line: 1994, baseType: !1131, size: 64, offset: 1152)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!109, !960, !925, !572, !7, !964}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !977, file: !14, line: 1997, baseType: !1135, size: 64, offset: 1216)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!109, !1000, !960, !572, !964}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !977, file: !14, line: 1999, baseType: !1139, size: 64, offset: 1280)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!971, !1000, !925, !109}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !977, file: !14, line: 2001, baseType: !1143, size: 64, offset: 1344)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!109, !1000, !925, !971, !109}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !977, file: !14, line: 2003, baseType: !1147, size: 64, offset: 1408)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!109, !1000, !925, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !977, file: !14, line: 2005, baseType: !1153, size: 64, offset: 1472)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!109, !925, !1150}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !977, file: !14, line: 2006, baseType: !1157, size: 64, offset: 1536)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!1160, !960}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !1162)
!1162 = !{!1163, !1170}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1161, file: !14, line: 3193, baseType: !1164, size: 128)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1165, line: 296, size: 128, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1166 = !{!1167, !1168, !1169}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1164, file: !1165, line: 297, baseType: !554, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1164, file: !1165, line: 299, baseType: !180, size: 32, offset: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1164, file: !1165, line: 300, baseType: !169, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1161, file: !14, line: 3194, baseType: !171, size: 32, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !961, file: !14, line: 655, baseType: !1172, size: 64, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1180, !2398, !2530, !2570, !2653, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2670, !2674, !2675, !2678, !2681, !2684, !2687, !2688, !2689, !2730, !2756, !2757, !2758, !2759, !2760, !2761, !2764, !2768, !2777, !2778, !2779, !2780, !2839, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1173, file: !14, line: 1191, baseType: !260, size: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1173, file: !14, line: 1192, baseType: !1035, size: 32, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1173, file: !14, line: 1193, baseType: !372, size: 8, offset: 160)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1173, file: !14, line: 1194, baseType: !182, size: 64, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1173, file: !14, line: 1195, baseType: !612, size: 64, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1173, file: !14, line: 1196, baseType: !1181, size: 64, offset: 320)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1193, !1197, !1201, !1205, !2386, !2387, !2388, !2390, !2391, !2392, !2394, !2395, !2396, !2397}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1182, file: !14, line: 2367, baseType: !804, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1182, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1182, file: !14, line: 2376, baseType: !1187, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!109, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1192, line: 32, flags: DIFlagFwdDecl)
!1192 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1182, file: !14, line: 2377, baseType: !1194, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1182, file: !14, line: 2378, baseType: !1198, size: 64, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!925, !1181, !109, !804, !169}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1182, file: !14, line: 2380, baseType: !1202, size: 64, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !1172}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1182, file: !14, line: 2381, baseType: !1206, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1215, !2029, !2055, !2056, !2057, !2058, !2062, !2065, !2066, !2067, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2135, !2139, !2159, !2179, !2180, !2181, !2182, !2191, !2214, !2215, !2218, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2232, !2233, !2344, !2352, !2353, !2354, !2356, !2360, !2361, !2365, !2366, !2367, !2368, !2370, !2371, !2372, !2379, !2380, !2381, !2385}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1207, file: !6, line: 403, baseType: !5, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1207, file: !6, line: 406, baseType: !260, size: 128, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1207, file: !6, line: 409, baseType: !1212, size: 448, offset: 192)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 448, elements: !1213)
!1213 = !{!1214}
!1214 = !DISubrange(count: 56)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1207, file: !6, line: 417, baseType: !1216, size: 768, offset: 640)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1217)
!1217 = !{!1218, !2022, !2023, !2024, !2027}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1216, file: !6, line: 46, baseType: !1219, size: 512)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1220, line: 64, size: 512, elements: !1221)
!1220 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1221 = !{!1222, !1223, !1224, !1226, !1270, !1878, !2012, !2017, !2018, !2019, !2020, !2021}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1219, file: !1220, line: 65, baseType: !804, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1219, file: !1220, line: 66, baseType: !260, size: 128, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1219, file: !1220, line: 67, baseType: !1225, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1219, file: !1220, line: 68, baseType: !1227, size: 64, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1220, line: 168, size: 768, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1228, file: !1220, line: 169, baseType: !260, size: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1228, file: !1220, line: 170, baseType: !554, size: 32, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1228, file: !1220, line: 171, baseType: !1219, size: 512, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1228, file: !1220, line: 172, baseType: !1234, size: 64, offset: 704)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1220, line: 133, size: 192, elements: !1237)
!1237 = !{!1238, !1245, !1250}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1236, file: !1220, line: 134, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!109, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1219)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1236, file: !1220, line: 135, baseType: !1246, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1247)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!804, !1243}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1236, file: !1220, line: 136, baseType: !1251, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!109, !1243, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1220, line: 125, size: 20736, elements: !1257)
!1257 = !{!1258, !1260, !1264, !1265, !1269}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1256, file: !1220, line: 126, baseType: !1259, size: 192)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 192, elements: !638)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1256, file: !1220, line: 127, baseType: !1261, size: 4096, offset: 192)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 4096, elements: !1262)
!1262 = !{!1263}
!1263 = !DISubrange(count: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1256, file: !1220, line: 128, baseType: !109, size: 32, offset: 4288)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1256, file: !1220, line: 129, baseType: !1266, size: 16384, offset: 4320)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 16384, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 2048)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1256, file: !1220, line: 130, baseType: !109, size: 32, offset: 20704)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1219, file: !1220, line: 69, baseType: !1271, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1220, line: 116, size: 384, elements: !1274)
!1274 = !{!1275, !1279, !1298, !1838, !1868, !1872}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1273, file: !1220, line: 117, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !1225}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1273, file: !1220, line: 118, baseType: !1280, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1283, line: 254, size: 128, elements: !1284)
!1283 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1284 = !{!1285, !1294}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1282, file: !1283, line: 255, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!1114, !1225, !1289, !814}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1283, line: 30, size: 128, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1290, file: !1283, line: 31, baseType: !804, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1290, file: !1283, line: 32, baseType: !964, size: 16, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1282, file: !1283, line: 256, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1114, !1225, !1289, !804, !1117}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1273, file: !1220, line: 119, baseType: !1299, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1302)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1283, line: 84, size: 320, elements: !1303)
!1303 = !{!1304, !1305, !1309, !1834, !1836}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1302, file: !1283, line: 85, baseType: !804, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1302, file: !1283, line: 86, baseType: !1306, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!964, !1225, !1289, !109}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1302, file: !1283, line: 88, baseType: !1310, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!964, !1225, !1313, !109}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1283, line: 175, size: 512, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1825, !1829, !1830}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1314, file: !1283, line: 176, baseType: !1290, size: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1314, file: !1283, line: 177, baseType: !1117, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1314, file: !1283, line: 178, baseType: !169, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1314, file: !1283, line: 179, baseType: !1320, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1817, !1818, !1819, !1822, !1823, !1824}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1324, file: !14, line: 473, baseType: !960, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1324, file: !14, line: 474, baseType: !1164, size: 128, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1324, file: !14, line: 475, baseType: !741, size: 320, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1324, file: !14, line: 476, baseType: !180, size: 32, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1324, file: !14, line: 477, baseType: !204, size: 32, offset: 544)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1324, file: !14, line: 482, baseType: !419, size: 128, offset: 576)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1324, file: !14, line: 483, baseType: !182, size: 64, offset: 704)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1324, file: !14, line: 484, baseType: !182, size: 64, offset: 768)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1324, file: !14, line: 485, baseType: !1335, size: 64, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !1338)
!1338 = !{!1339, !1642, !1712, !1716, !1720, !1726, !1732, !1736, !1741, !1745, !1749, !1753, !1781, !1785, !1789, !1793, !1798, !1802, !1809, !1813}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1337, file: !14, line: 405, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!109, !1343, !1640}
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !1345)
!1345 = !{!1346, !1347, !1634, !1639}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1344, file: !27, line: 75, baseType: !182, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !27, line: 83, baseType: !1348, size: 320, offset: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !27, line: 83, size: 320, elements: !1349)
!1349 = !{!1350, !1371, !1385, !1389, !1633}
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !27, line: 84, baseType: !1351, size: 320)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1348, file: !27, line: 84, size: 320, elements: !1352)
!1352 = !{!1353, !1364, !1365, !1370}
!1353 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !27, line: 90, baseType: !1354, size: 128)
!1354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1351, file: !27, line: 90, size: 128, elements: !1355)
!1355 = !{!1356, !1357, !1362, !1363}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1354, file: !27, line: 91, baseType: !260, size: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !27, line: 94, baseType: !1358, size: 128)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1354, file: !27, line: 94, size: 128, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1358, file: !27, line: 96, baseType: !169, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1358, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1354, file: !27, line: 102, baseType: !260, size: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1354, file: !27, line: 103, baseType: !260, size: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1351, file: !27, line: 106, baseType: !1323, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !27, line: 107, baseType: !1366, size: 64, offset: 192)
!1366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1351, file: !27, line: 107, size: 64, elements: !1367)
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1366, file: !27, line: 108, baseType: !182, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1366, file: !27, line: 109, baseType: !182, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1351, file: !27, line: 117, baseType: !182, size: 64, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !27, line: 119, baseType: !1372, size: 320)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1348, file: !27, line: 119, size: 320, elements: !1373)
!1373 = !{!1374, !1375, !1378, !1379, !1380}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1372, file: !27, line: 124, baseType: !182, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1372, file: !27, line: 125, baseType: !1376, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1372, file: !27, line: 126, baseType: !182, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1372, file: !27, line: 127, baseType: !182, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !27, line: 128, baseType: !1381, size: 64, offset: 256)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !27, line: 128, size: 64, elements: !1382)
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1381, file: !27, line: 133, baseType: !182, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1381, file: !27, line: 138, baseType: !593, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !27, line: 141, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1348, file: !27, line: 141, size: 64, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1386, file: !27, line: 142, baseType: !182, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !27, line: 144, baseType: !1390, size: 128)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1348, file: !27, line: 144, size: 128, elements: !1391)
!1391 = !{!1392, !1632}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1390, file: !27, line: 146, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !1395)
!1395 = !{!1396, !1406, !1427, !1438, !1439, !1440, !1441, !1614, !1615, !1616}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1394, file: !43, line: 127, baseType: !1397, size: 384)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !1398)
!1398 = !{!1399, !1400, !1402, !1403, !1404, !1405}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1397, file: !43, line: 22, baseType: !182, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1397, file: !43, line: 23, baseType: !1401, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1397, file: !43, line: 24, baseType: !1401, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1397, file: !43, line: 25, baseType: !182, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1397, file: !43, line: 26, baseType: !182, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1397, file: !43, line: 27, baseType: !182, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1394, file: !43, line: 128, baseType: !1407, size: 128, offset: 384)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1408, line: 105, size: 128, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1407, file: !1408, line: 110, baseType: !182, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1407, file: !1408, line: 118, baseType: !1412, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1408, line: 95, size: 448, elements: !1414)
!1414 = !{!1415, !1416, !1422, !1423, !1424, !1425, !1426}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1413, file: !1408, line: 96, baseType: !593, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1413, file: !1408, line: 97, baseType: !1417, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1408, line: 60, baseType: !1419)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1413, file: !1408, line: 98, baseType: !1417, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1413, file: !1408, line: 99, baseType: !801, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1413, file: !1408, line: 100, baseType: !801, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1413, file: !1408, line: 101, baseType: !580, size: 128, align: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1413, file: !1408, line: 102, baseType: !1421, size: 64, offset: 384)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1394, file: !43, line: 129, baseType: !1428, size: 256, offset: 512)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1429, line: 26, size: 256, elements: !1430)
!1429 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1428, file: !1429, line: 27, baseType: !7, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1428, file: !1429, line: 28, baseType: !1433, size: 192, offset: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1434, line: 43, size: 192, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1433, file: !1434, line: 44, baseType: !353, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1433, file: !1434, line: 45, baseType: !260, size: 128, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1394, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1394, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1394, file: !43, line: 132, baseType: !182, size: 64, offset: 832)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1394, file: !43, line: 133, baseType: !1442, size: 64, offset: 896)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !1445)
!1445 = !{!1446, !1450, !1610}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1444, file: !43, line: 83, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !1343}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1444, file: !43, line: 89, baseType: !1451, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1457, line: 512, size: 896, elements: !1458)
!1457 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1458 = !{!1459, !1577, !1578, !1585, !1592, !1602, !1603, !1604, !1606, !1608}
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !1457, line: 513, baseType: !1460, size: 320)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1456, file: !1457, line: 513, size: 320, elements: !1461)
!1461 = !{!1462, !1573, !1574, !1575, !1576}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1460, file: !1457, line: 514, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !1465)
!1465 = !{!1466, !1475, !1476, !1484, !1491, !1492, !1497, !1498, !1503, !1504, !1507, !1566, !1567, !1568, !1569, !1570, !1571}
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !27, line: 628, baseType: !1467, size: 128)
!1467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1464, file: !27, line: 628, size: 128, elements: !1468)
!1468 = !{!1469, !1474}
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1467, file: !27, line: 629, baseType: !1470, size: 128)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1467, file: !27, line: 629, size: 128, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1470, file: !27, line: 631, baseType: !182, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1470, file: !27, line: 632, baseType: !182, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1467, file: !27, line: 635, baseType: !580, size: 128, align: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1464, file: !27, line: 639, baseType: !536, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1464, file: !27, line: 640, baseType: !1477, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1478, line: 297, baseType: !1479)
!1478 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1478, line: 297, size: 64, elements: !1480)
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1479, file: !1478, line: 297, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1483, line: 19, baseType: !182)
!1483 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !27, line: 646, baseType: !1485, size: 64, offset: 256)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1464, file: !27, line: 646, size: 64, elements: !1486)
!1486 = !{!1487, !1490}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1485, file: !27, line: 647, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !182)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1485, file: !27, line: 648, baseType: !1489, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1464, file: !27, line: 666, baseType: !109, size: 32, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1464, file: !27, line: 667, baseType: !1493, size: 64, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !1495)
!1495 = !{!1496}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1494, file: !27, line: 580, baseType: !741, size: 320)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1464, file: !27, line: 670, baseType: !801, size: 8, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1464, file: !27, line: 681, baseType: !1499, size: 256, offset: 512)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1464, file: !27, line: 678, size: 256, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1499, file: !27, line: 679, baseType: !247, size: 192, align: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1499, file: !27, line: 680, baseType: !182, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1464, file: !27, line: 689, baseType: !260, size: 128, offset: 768)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1464, file: !27, line: 691, baseType: !1505, size: 64, offset: 896)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1464, file: !27, line: 694, baseType: !1508, size: 64, offset: 960)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1457, line: 563, size: 1024, elements: !1511)
!1511 = !{!1512, !1516, !1517, !1521, !1525, !1529, !1530, !1534, !1538, !1542, !1543, !1544, !1548, !1552, !1558, !1562}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1510, file: !1457, line: 564, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !1463}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1510, file: !1457, line: 569, baseType: !1513, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1510, file: !1457, line: 571, baseType: !1518, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!109, !1463, !182}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1510, file: !1457, line: 572, baseType: !1522, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!109, !1463}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1510, file: !1457, line: 578, baseType: !1526, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!109, !1463, !182, !182, !182}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1510, file: !1457, line: 580, baseType: !1451, size: 64, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1510, file: !1457, line: 581, baseType: !1531, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1454, !1455, !7}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1510, file: !1457, line: 582, baseType: !1535, size: 64, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1454, !1455, !182, !182}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1510, file: !1457, line: 584, baseType: !1539, size: 64, offset: 512)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!182, !1463}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1510, file: !1457, line: 588, baseType: !1451, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1510, file: !1457, line: 591, baseType: !1451, size: 64, offset: 640)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1510, file: !1457, line: 597, baseType: !1545, size: 64, offset: 704)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!109, !1463, !182, !169, !109, !109}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1510, file: !1457, line: 603, baseType: !1549, size: 64, offset: 768)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!804, !1463}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1510, file: !1457, line: 613, baseType: !1553, size: 64, offset: 832)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!109, !1463, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !27, line: 717, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1510, file: !1457, line: 625, baseType: !1559, size: 64, offset: 896)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!1556, !1463, !182}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1510, file: !1457, line: 633, baseType: !1563, size: 64, offset: 960)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!1343, !1463, !182}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1464, file: !27, line: 697, baseType: !182, size: 64, offset: 1024)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1464, file: !27, line: 699, baseType: !572, size: 64, offset: 1088)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1464, file: !27, line: 700, baseType: !169, size: 64, offset: 1152)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1464, file: !27, line: 711, baseType: !593, size: 64, offset: 1216)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1464, file: !27, line: 717, baseType: !1556, size: 64, offset: 1280)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1464, file: !27, line: 722, baseType: !1572, offset: 1344)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !565)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1460, file: !1457, line: 515, baseType: !180, size: 32, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1460, file: !1457, line: 516, baseType: !182, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1460, file: !1457, line: 517, baseType: !182, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1460, file: !1457, line: 518, baseType: !182, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1456, file: !1457, line: 520, baseType: !26, size: 32, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1456, file: !1457, line: 522, baseType: !1579, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1483, line: 22, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1483, line: 22, size: 64, elements: !1582)
!1582 = !{!1583}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1581, file: !1483, line: 22, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1483, line: 15, baseType: !182)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1456, file: !1457, line: 524, baseType: !1586, size: 64, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1478, line: 372, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1478, line: 372, size: 64, elements: !1589)
!1589 = !{!1590}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1588, file: !1478, line: 372, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1483, line: 16, baseType: !182)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !1457, line: 527, baseType: !1593, size: 64, offset: 512)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !1457, line: 527, size: 64, elements: !1594)
!1594 = !{!1595, !1601}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1593, file: !1457, line: 528, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1483, line: 21, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1483, line: 21, size: 64, elements: !1598)
!1598 = !{!1599}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1597, file: !1483, line: 21, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1483, line: 14, baseType: !182)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1593, file: !1457, line: 529, baseType: !1580, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1456, file: !1457, line: 534, baseType: !1343, size: 64, offset: 576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1456, file: !1457, line: 535, baseType: !1343, size: 64, offset: 640)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1456, file: !1457, line: 541, baseType: !1605, size: 64, offset: 704)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1456, file: !1457, line: 545, baseType: !1607, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1456, file: !1457, line: 549, baseType: !1609, size: 64, offset: 832)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1478, line: 520, baseType: !1343)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1444, file: !43, line: 100, baseType: !1611, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!109, !1393, !182, !182, !109}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1394, file: !43, line: 134, baseType: !169, size: 64, offset: 960)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1394, file: !43, line: 135, baseType: !109, size: 32, offset: 1024)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !43, line: 136, baseType: !1617, size: 128, offset: 1088)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1394, file: !43, line: 136, size: 128, elements: !1618)
!1618 = !{!1619, !1625}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1617, file: !43, line: 137, baseType: !1620, size: 128)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1621, line: 6, size: 128, elements: !1622)
!1621 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1620, file: !1621, line: 7, baseType: !255, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1620, file: !1621, line: 8, baseType: !255, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !43, line: 138, baseType: !1626)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !43, line: 138, elements: !1627)
!1627 = !{!1628, !1630}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1626, file: !43, line: 138, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1626, file: !43, line: 138, elements: !565)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1626, file: !43, line: 138, baseType: !1631)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1620, elements: !678)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1390, file: !27, line: 147, baseType: !169, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1348, file: !27, line: 161, baseType: !580, size: 128, align: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !27, line: 164, baseType: !1635, size: 32, offset: 384)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !27, line: 164, size: 32, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1635, file: !27, line: 169, baseType: !204, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1635, file: !27, line: 177, baseType: !7, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1344, file: !27, line: 181, baseType: !204, size: 32, offset: 416)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1337, file: !14, line: 406, baseType: !1643, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!109, !572, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !1648)
!1648 = !{!1649, !1679, !1693}
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !27, line: 295, baseType: !1650, size: 512)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1647, file: !27, line: 295, size: 512, elements: !1651)
!1651 = !{!1652, !1678}
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !27, line: 296, baseType: !1653, size: 448)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !27, line: 296, size: 448, elements: !1654)
!1654 = !{!1655, !1656, !1665, !1666, !1667, !1676, !1677}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1653, file: !27, line: 298, baseType: !182, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !27, line: 299, baseType: !1657, size: 128, offset: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1653, file: !27, line: 299, size: 128, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1657, file: !27, line: 300, baseType: !260, size: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !27, line: 302, baseType: !1661, size: 128)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1657, file: !27, line: 302, size: 128, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1661, file: !27, line: 303, baseType: !169, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1661, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1653, file: !27, line: 310, baseType: !1323, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1653, file: !27, line: 311, baseType: !182, size: 64, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !27, line: 312, baseType: !1668, size: 64, offset: 320)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1653, file: !27, line: 312, size: 64, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1668, file: !27, line: 313, baseType: !169, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1668, file: !27, line: 314, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !1674)
!1674 = !{!1675}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1673, file: !27, line: 256, baseType: !182, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1653, file: !27, line: 316, baseType: !204, size: 32, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1653, file: !27, line: 317, baseType: !204, size: 32, offset: 416)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1650, file: !27, line: 323, baseType: !1344, size: 512, align: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !27, line: 325, baseType: !1680, size: 512, offset: 512)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1647, file: !27, line: 325, size: 512, elements: !1681)
!1681 = !{!1682, !1692}
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !27, line: 326, baseType: !1683, size: 320)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1680, file: !27, line: 326, size: 320, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1683, file: !27, line: 327, baseType: !182, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1683, file: !27, line: 328, baseType: !182, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1683, file: !27, line: 329, baseType: !182, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1683, file: !27, line: 331, baseType: !204, size: 32, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1683, file: !27, line: 332, baseType: !204, size: 32, offset: 224)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1683, file: !27, line: 333, baseType: !204, size: 32, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1683, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1680, file: !27, line: 339, baseType: !1344, size: 512, align: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !27, line: 341, baseType: !1694, size: 512, offset: 1024)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1647, file: !27, line: 341, size: 512, elements: !1695)
!1695 = !{!1696, !1705, !1711}
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !27, line: 342, baseType: !1697, size: 384)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1694, file: !27, line: 342, size: 384, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1697, file: !27, line: 343, baseType: !182, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1697, file: !27, line: 344, baseType: !182, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1697, file: !27, line: 346, baseType: !169, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1697, file: !27, line: 347, baseType: !169, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1697, file: !27, line: 348, baseType: !169, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1697, file: !27, line: 349, baseType: !169, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !27, line: 352, baseType: !1706, size: 256)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1694, file: !27, line: 352, size: 256, elements: !1707)
!1707 = !{!1708, !1709, !1710}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1706, file: !27, line: 353, baseType: !182, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1706, file: !27, line: 354, baseType: !182, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1706, file: !27, line: 356, baseType: !260, size: 128, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1694, file: !27, line: 359, baseType: !1344, size: 512, align: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1337, file: !14, line: 409, baseType: !1713, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!109, !1323, !1640}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1337, file: !14, line: 412, baseType: !1717, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!801, !1323, !1646}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1337, file: !14, line: 414, baseType: !1721, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !1724}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1337, file: !14, line: 416, baseType: !1727, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!109, !572, !1323, !612, !7, !1730, !1731}
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1337, file: !14, line: 419, baseType: !1733, size: 64, offset: 384)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!109, !572, !1323, !612, !7, !7, !1343, !169}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1337, file: !14, line: 424, baseType: !1737, size: 64, offset: 448)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!1740, !1323, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !181, line: 131, baseType: !255)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1337, file: !14, line: 425, baseType: !1742, size: 64, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !1646, !1117, !1117}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1337, file: !14, line: 426, baseType: !1746, size: 64, offset: 576)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!801, !1646, !180}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1337, file: !14, line: 427, baseType: !1750, size: 64, offset: 640)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1646}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1337, file: !14, line: 428, baseType: !1754, size: 64, offset: 704)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!1114, !1757, !1779}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1759)
!1759 = !{!1760, !1761, !1762, !1766, !1767, !1768, !1769}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1758, file: !14, line: 374, baseType: !572, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1758, file: !14, line: 375, baseType: !612, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1758, file: !14, line: 376, baseType: !1763, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{null, !1757, !1075}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1758, file: !14, line: 377, baseType: !169, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1758, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1758, file: !14, line: 379, baseType: !177, size: 16, offset: 288)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !14, line: 380, baseType: !1770, size: 64, offset: 320)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1758, file: !14, line: 380, size: 64, elements: !1771)
!1771 = !{!1772, !1775}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1770, file: !14, line: 386, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1770, file: !14, line: 395, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!1114, !169}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1337, file: !14, line: 433, baseType: !1782, size: 64, offset: 768)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!109, !1323, !1646, !1646, !74}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1337, file: !14, line: 435, baseType: !1786, size: 64, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!109, !1646}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1337, file: !14, line: 436, baseType: !1790, size: 64, offset: 896)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!801, !1646, !1117, !1117}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1337, file: !14, line: 438, baseType: !1794, size: 64, offset: 960)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{null, !1646, !1797, !1797}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1337, file: !14, line: 439, baseType: !1799, size: 64, offset: 1024)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!109, !1323, !1343}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1337, file: !14, line: 442, baseType: !1803, size: 64, offset: 1088)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!109, !1806, !572, !1808}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1337, file: !14, line: 444, baseType: !1810, size: 64, offset: 1152)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !572}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1337, file: !14, line: 445, baseType: !1814, size: 64, offset: 1216)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!109, !1757, !1779}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1324, file: !14, line: 486, baseType: !182, size: 64, offset: 896)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1324, file: !14, line: 487, baseType: !741, size: 320, offset: 960)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1324, file: !14, line: 488, baseType: !1820, size: 32, offset: 1280)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1821, line: 8, baseType: !171)
!1821 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1324, file: !14, line: 489, baseType: !554, size: 32, offset: 1312)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1324, file: !14, line: 490, baseType: !260, size: 128, offset: 1344)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1324, file: !14, line: 491, baseType: !169, size: 64, offset: 1472)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1314, file: !1283, line: 180, baseType: !1826, size: 64, offset: 320)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!1114, !572, !1225, !1313, !814, !612, !1117}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1314, file: !1283, line: 182, baseType: !1826, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1314, file: !1283, line: 184, baseType: !1831, size: 64, offset: 448)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!109, !572, !1225, !1313, !1463}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1302, file: !1283, line: 90, baseType: !1835, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1302, file: !1283, line: 91, baseType: !1837, size: 64, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1273, file: !1220, line: 120, baseType: !1839, size: 64, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!1842, !1243}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1844)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !1845)
!1845 = !{!1846, !1847, !1851, !1855, !1863, !1867}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1844, file: !82, line: 40, baseType: !81, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1844, file: !82, line: 41, baseType: !1848, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!801}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1844, file: !82, line: 42, baseType: !1852, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!169}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1844, file: !82, line: 43, baseType: !1856, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!1859, !1861}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1844, file: !82, line: 44, baseType: !1864, size: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!1859}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1844, file: !82, line: 45, baseType: !992, size: 64, offset: 320)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1273, file: !1220, line: 121, baseType: !1869, size: 64, offset: 256)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!1859, !1243}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1273, file: !1220, line: 122, baseType: !1873, size: 64, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null, !1243, !1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1219, file: !1220, line: 70, baseType: !1879, size: 64, offset: 384)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1192, line: 190, size: 1152, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !2004, !2005, !2006, !2007, !2008, !2011}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1880, file: !1192, line: 191, baseType: !204, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1880, file: !1192, line: 192, baseType: !204, size: 32, offset: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1880, file: !1192, line: 202, baseType: !1879, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1880, file: !1192, line: 203, baseType: !804, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1880, file: !1192, line: 205, baseType: !247, size: 192, align: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1880, file: !1192, line: 207, baseType: !1859, size: 64, offset: 384)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1880, file: !1192, line: 208, baseType: !7, size: 32, offset: 448)
!1889 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !1192, line: 209, baseType: !1890, size: 256, offset: 512)
!1890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1880, file: !1192, line: 209, size: 256, elements: !1891)
!1891 = !{!1892, !1901, !1905}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1890, file: !1192, line: 210, baseType: !1893, size: 256)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1192, line: 153, size: 256, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1900}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1893, file: !1192, line: 154, baseType: !182, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1893, file: !1192, line: 156, baseType: !422, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1893, file: !1192, line: 162, baseType: !1898, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1192, line: 162, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1893, file: !1192, line: 167, baseType: !182, size: 64, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1890, file: !1192, line: 211, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1192, line: 170, size: 64, elements: !1903)
!1903 = !{!1904}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1902, file: !1192, line: 171, baseType: !1879, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1890, file: !1192, line: 212, baseType: !1906, size: 256)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1192, line: 174, size: 256, elements: !1907)
!1907 = !{!1908, !1999, !2002, !2003}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1906, file: !1192, line: 175, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1192, line: 271, size: 768, elements: !1912)
!1912 = !{!1913, !1972, !1976, !1977, !1978, !1979, !1980, !1984, !1985, !1986, !1987, !1995}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1911, file: !1192, line: 276, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!109, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1192, line: 251, size: 1216, elements: !1919)
!1919 = !{!1920, !1921, !1922, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1918, file: !1192, line: 253, baseType: !1879, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1918, file: !1192, line: 254, baseType: !572, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1918, file: !1192, line: 255, baseType: !1923, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1925, line: 17, size: 960, elements: !1926)
!1925 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1957, !1958, !1961}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1924, file: !1925, line: 18, baseType: !814, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1924, file: !1925, line: 19, baseType: !1117, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1924, file: !1925, line: 20, baseType: !1117, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1924, file: !1925, line: 21, baseType: !1117, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1924, file: !1925, line: 22, baseType: !1117, size: 64, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1924, file: !1925, line: 23, baseType: !612, size: 64, offset: 320)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1924, file: !1925, line: 24, baseType: !612, size: 64, offset: 384)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1924, file: !1925, line: 25, baseType: !600, size: 256, offset: 448)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1924, file: !1925, line: 26, baseType: !1936, size: 64, offset: 704)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1938)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1925, line: 32, size: 256, elements: !1939)
!1939 = !{!1940, !1945, !1949, !1953}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1938, file: !1925, line: 33, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!169, !1923, !1944}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1938, file: !1925, line: 34, baseType: !1946, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !1923, !169}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1938, file: !1925, line: 35, baseType: !1950, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!169, !1923, !169, !1944}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1938, file: !1925, line: 36, baseType: !1954, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!109, !1923, !169}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1924, file: !1925, line: 27, baseType: !109, size: 32, offset: 768)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1924, file: !1925, line: 28, baseType: !1959, size: 64, offset: 832)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1924, file: !1925, line: 29, baseType: !169, size: 64, offset: 896)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1918, file: !1192, line: 256, baseType: !169, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1918, file: !1192, line: 259, baseType: !600, size: 256, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1918, file: !1192, line: 260, baseType: !600, size: 256, offset: 512)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1918, file: !1192, line: 261, baseType: !109, size: 32, offset: 768)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1918, file: !1192, line: 262, baseType: !260, size: 128, offset: 832)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1918, file: !1192, line: 263, baseType: !814, size: 64, offset: 960)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1918, file: !1192, line: 265, baseType: !1117, size: 64, offset: 1024)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1918, file: !1192, line: 266, baseType: !801, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1918, file: !1192, line: 267, baseType: !801, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1918, file: !1192, line: 268, baseType: !1508, size: 64, offset: 1152)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1911, file: !1192, line: 277, baseType: !1973, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null, !1917}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1911, file: !1192, line: 290, baseType: !1954, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1911, file: !1192, line: 292, baseType: !1941, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1911, file: !1192, line: 293, baseType: !1950, size: 64, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1911, file: !1192, line: 294, baseType: !1946, size: 64, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1911, file: !1192, line: 296, baseType: !1981, size: 64, offset: 384)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!1114, !1917, !814, !1117, !612}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1911, file: !1192, line: 306, baseType: !1117, size: 64, offset: 448)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1911, file: !1192, line: 313, baseType: !801, size: 8, offset: 512)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1911, file: !1192, line: 314, baseType: !1981, size: 64, offset: 576)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1911, file: !1192, line: 317, baseType: !1988, size: 64, offset: 640)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!1991, !1917, !1993}
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1992, line: 59, baseType: !7)
!1992 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1192, line: 31, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1911, file: !1192, line: 320, baseType: !1996, size: 64, offset: 704)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!109, !1917, !1463}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1906, file: !1192, line: 176, baseType: !2000, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1192, line: 35, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1906, file: !1192, line: 177, baseType: !612, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1906, file: !1192, line: 178, baseType: !1879, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1880, file: !1192, line: 215, baseType: !169, size: 64, offset: 768)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1880, file: !1192, line: 221, baseType: !255, size: 64, offset: 832)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1880, file: !1192, line: 223, baseType: !179, size: 16, offset: 896)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1880, file: !1192, line: 224, baseType: !964, size: 16, offset: 912)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1880, file: !1192, line: 225, baseType: !2009, size: 64, offset: 960)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1192, line: 36, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1880, file: !1192, line: 227, baseType: !580, size: 128, align: 64, offset: 1024)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1219, file: !1220, line: 71, baseType: !2013, size: 32, offset: 448)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2014, line: 19, size: 32, elements: !2015)
!2014 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2015 = !{!2016}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2013, file: !2014, line: 20, baseType: !199, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1219, file: !1220, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1219, file: !1220, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1219, file: !1220, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1219, file: !1220, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1219, file: !1220, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1216, file: !6, line: 47, baseType: !1206, size: 64, offset: 512)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1216, file: !6, line: 48, baseType: !1225, size: 64, offset: 576)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1216, file: !6, line: 49, baseType: !2025, size: 64, offset: 640)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1216, file: !6, line: 50, baseType: !2028, size: 64, offset: 704)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1207, file: !6, line: 418, baseType: !2030, size: 64, offset: 1408)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2032)
!2032 = !{!2033, !2034, !2039, !2043, !2047, !2051}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2031, file: !6, line: 54, baseType: !1290, size: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2031, file: !6, line: 55, baseType: !2035, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!1114, !2030, !2038, !814}
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2031, file: !6, line: 57, baseType: !2040, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!1114, !2030, !2038, !804, !1117}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2031, file: !6, line: 59, baseType: !2044, size: 64, offset: 256)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !1206, !804}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2031, file: !6, line: 60, baseType: !2048, size: 64, offset: 320)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!109, !1206}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2031, file: !6, line: 61, baseType: !2052, size: 64, offset: 384)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !1206}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1207, file: !6, line: 419, baseType: !804, size: 64, offset: 1472)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1207, file: !6, line: 420, baseType: !804, size: 64, offset: 1536)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1207, file: !6, line: 421, baseType: !1225, size: 64, offset: 1600)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1207, file: !6, line: 424, baseType: !2059, size: 64, offset: 1664)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2061)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1207, file: !6, line: 425, baseType: !2063, size: 64, offset: 1728)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !733)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1207, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1207, file: !6, line: 435, baseType: !600, size: 256, offset: 1856)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1207, file: !6, line: 437, baseType: !2068, size: 64, offset: 2112)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2070, line: 69, size: 320, elements: !2071)
!2070 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2071 = !{!2072, !2073, !2074, !2091, !2093, !2097, !2098}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2069, file: !2070, line: 70, baseType: !804, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2069, file: !2070, line: 71, baseType: !1206, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2069, file: !2070, line: 72, baseType: !2075, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2077)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2070, line: 47, size: 256, elements: !2078)
!2078 = !{!2079, !2080, !2086, !2090}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2077, file: !2070, line: 49, baseType: !7, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2077, file: !2070, line: 51, baseType: !2081, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!109, !804, !2084}
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2069)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2077, file: !2070, line: 53, baseType: !2087, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!109, !814, !2084}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2077, file: !2070, line: 55, baseType: !992, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2069, file: !2070, line: 73, baseType: !2092, size: 16, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2069, file: !2070, line: 74, baseType: !2094, size: 8, offset: 208)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !172, line: 16, baseType: !2095)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !174, line: 20, baseType: !2096)
!2096 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2069, file: !2070, line: 75, baseType: !370, size: 8, offset: 216)
!2098 = !DIDerivedType(tag: DW_TAG_member, scope: !2069, file: !2070, line: 76, baseType: !2099, size: 64, offset: 256)
!2099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2069, file: !2070, line: 76, size: 64, elements: !2100)
!2100 = !{!2101, !2102, !2109}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2099, file: !2070, line: 77, baseType: !169, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2099, file: !2070, line: 78, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2105)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2070, line: 86, size: 128, elements: !2106)
!2106 = !{!2107, !2108}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2105, file: !2070, line: 87, baseType: !7, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2105, file: !2070, line: 88, baseType: !814, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2099, file: !2070, line: 79, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2112)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2070, line: 92, size: 256, elements: !2113)
!2113 = !{!2114, !2115, !2116, !2118, !2119}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2112, file: !2070, line: 94, baseType: !7, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2112, file: !2070, line: 95, baseType: !7, size: 32, offset: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2112, file: !2070, line: 96, baseType: !2117, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2112, file: !2070, line: 97, baseType: !2075, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2112, file: !2070, line: 98, baseType: !169, size: 64, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1207, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1207, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1207, file: !6, line: 442, baseType: !2059, size: 64, offset: 2240)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1207, file: !6, line: 443, baseType: !2063, size: 64, offset: 2304)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1207, file: !6, line: 444, baseType: !801, size: 8, offset: 2368)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1207, file: !6, line: 451, baseType: !801, size: 8, offset: 2376)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1207, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1207, file: !6, line: 455, baseType: !2128, size: 64, offset: 2432)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2130, line: 23, size: 96, elements: !2131)
!2130 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2131 = !{!2132, !2133, !2134}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2129, file: !2130, line: 24, baseType: !109, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2129, file: !2130, line: 24, baseType: !109, size: 32, offset: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2129, file: !2130, line: 24, baseType: !109, size: 32, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1207, file: !6, line: 458, baseType: !2136, size: 64, offset: 2496)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!109}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1207, file: !6, line: 460, baseType: !2140, size: 4032, align: 512, offset: 2560)
!2140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2141, size: 4032, elements: !2157)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2142)
!2142 = !{!2143, !2144, !2145}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2141, file: !6, line: 363, baseType: !169, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2141, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2141, file: !6, line: 367, baseType: !2146, size: 448, offset: 128)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2147)
!2147 = !{!2148, !2149}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2146, file: !6, line: 320, baseType: !1206, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2146, file: !6, line: 321, baseType: !2150, size: 384, offset: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2151, line: 40, size: 384, elements: !2152)
!2151 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2152 = !{!2153}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2150, file: !2151, line: 41, baseType: !2154, size: 384, align: 64)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 384, align: 64, elements: !2155)
!2155 = !{!2156}
!2156 = !DISubrange(count: 2)
!2157 = !{!2158}
!2158 = !DISubrange(count: 7)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1207, file: !6, line: 463, baseType: !2160, size: 192, offset: 6592)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2161, line: 8, size: 192, elements: !2162)
!2161 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2162 = !{!2163, !2164, !2166}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2160, file: !2161, line: 10, baseType: !7, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2160, file: !2161, line: 11, baseType: !2165, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2160, file: !2161, line: 12, baseType: !2167, size: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2169, line: 59, size: 48, elements: !2170)
!2169 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2170 = !{!2171, !2174, !2175, !2176, !2177, !2178}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2168, file: !2169, line: 60, baseType: !2172, size: 16)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !172, line: 18, baseType: !2173)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !174, line: 23, baseType: !769)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2168, file: !2169, line: 61, baseType: !2172, size: 16, offset: 16)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2168, file: !2169, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2168, file: !2169, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2168, file: !2169, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2168, file: !2169, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1207, file: !6, line: 465, baseType: !182, size: 64, offset: 6784)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1207, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1207, file: !6, line: 470, baseType: !260, size: 128, offset: 6912)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1207, file: !6, line: 471, baseType: !2183, size: 64, offset: 7040)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2185, line: 33, size: 96, elements: !2186)
!2185 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2186 = !{!2187, !2188, !2189, !2190}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2184, file: !2185, line: 37, baseType: !109, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2184, file: !2185, line: 43, baseType: !109, size: 32, offset: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2184, file: !2185, line: 45, baseType: !179, size: 16, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2184, file: !2185, line: 47, baseType: !179, size: 16, offset: 80)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1207, file: !6, line: 476, baseType: !2192, size: 64, offset: 7104)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2194)
!2194 = !{!2195, !2211, !2212, !2213}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2193, file: !6, line: 379, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2198, line: 204, baseType: !2199)
!2198 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2198, line: 197, size: 192, elements: !2200)
!2200 = !{!2201, !2203, !2204, !2205, !2207, !2209}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2199, file: !2198, line: 198, baseType: !2202, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2198, line: 21, baseType: !173)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2199, file: !2198, line: 199, baseType: !372, size: 8, offset: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2199, file: !2198, line: 200, baseType: !372, size: 8, offset: 40)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2199, file: !2198, line: 201, baseType: !2206, size: 16, offset: 48)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2198, line: 17, baseType: !178)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2199, file: !2198, line: 202, baseType: !2208, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2198, line: 16, baseType: !256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2199, file: !2198, line: 203, baseType: !2210, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2198, line: 22, baseType: !256)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2193, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2193, file: !6, line: 381, baseType: !814, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2193, file: !6, line: 382, baseType: !814, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1207, file: !6, line: 477, baseType: !2193, size: 256, offset: 7168)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1207, file: !6, line: 480, baseType: !2216, size: 64, offset: 7424)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1207, file: !6, line: 483, baseType: !2219, size: 64, offset: 7488)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1207, file: !6, line: 488, baseType: !814, size: 64, offset: 7552)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1207, file: !6, line: 492, baseType: !169, size: 64, offset: 7616)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1207, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1207, file: !6, line: 495, baseType: !169, size: 64, offset: 7744)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1207, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1207, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1207, file: !6, line: 500, baseType: !2228, size: 64, offset: 7872)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2230, line: 45, baseType: !2231)
!2230 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1207, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1207, file: !6, line: 504, baseType: !2234, size: 64, offset: 8000)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2237, line: 96, size: 192, elements: !2238)
!2237 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2238 = !{!2239, !2240, !2305, !2308}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2236, file: !2237, line: 97, baseType: !7, size: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2236, file: !2237, line: 98, baseType: !2241, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2237, line: 24, size: 3072, elements: !2243)
!2243 = !{!2244, !2246, !2247, !2248, !2249, !2263, !2264, !2265, !2266, !2278, !2290, !2291, !2302, !2303, !2304}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2242, file: !2237, line: 26, baseType: !2245, size: 128)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 128, elements: !2155)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2242, file: !2237, line: 27, baseType: !2245, size: 128, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2242, file: !2237, line: 28, baseType: !109, size: 32, offset: 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2242, file: !2237, line: 31, baseType: !554, size: 32, align: 512, offset: 512)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2242, file: !2237, line: 32, baseType: !2250, size: 960, offset: 576)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2251, line: 206, size: 960, elements: !2252)
!2251 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2252 = !{!2253, !2254, !2257, !2259, !2260, !2262}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2250, file: !2251, line: 207, baseType: !583, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2250, file: !2251, line: 208, baseType: !2255, size: 256, offset: 64)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2256, size: 256, elements: !659)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2250, file: !2251, line: 209, baseType: !2258, size: 256, offset: 320)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 256, elements: !659)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2250, file: !2251, line: 213, baseType: !1075, size: 64, offset: 576)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2250, file: !2251, line: 215, baseType: !2261, size: 256, offset: 640)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1075, size: 256, elements: !659)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2250, file: !2251, line: 216, baseType: !370, size: 8, offset: 896)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2242, file: !2237, line: 33, baseType: !182, size: 64, offset: 1536)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2242, file: !2237, line: 34, baseType: !182, size: 64, offset: 1600)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2242, file: !2237, line: 35, baseType: !801, size: 8, offset: 1664)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2242, file: !2237, line: 36, baseType: !2267, size: 320, offset: 1728)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2268, line: 11, size: 320, elements: !2269)
!2268 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2269 = !{!2270, !2271, !2272, !2277}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2267, file: !2268, line: 16, baseType: !654, size: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2267, file: !2268, line: 17, baseType: !182, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2267, file: !2268, line: 18, baseType: !2273, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{null, !2276}
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2267, file: !2268, line: 19, baseType: !171, size: 32, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2242, file: !2237, line: 37, baseType: !2279, size: 256, offset: 2048)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2280, line: 98, size: 256, elements: !2281)
!2280 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2281 = !{!2282, !2283, !2284}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2279, file: !2280, line: 99, baseType: !593, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2279, file: !2280, line: 100, baseType: !260, size: 128, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2279, file: !2280, line: 101, baseType: !2285, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2280, line: 21, baseType: !2286)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{null, !2289}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2242, file: !2237, line: 38, baseType: !580, size: 128, align: 64, offset: 2304)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2242, file: !2237, line: 39, baseType: !2292, size: 64, offset: 2432)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2237, line: 49, size: 768, elements: !2294)
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2300, !2301}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2293, file: !2237, line: 50, baseType: !554, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2293, file: !2237, line: 51, baseType: !2258, size: 256, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2293, file: !2237, line: 53, baseType: !2258, size: 256, offset: 320)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2293, file: !2237, line: 54, baseType: !182, size: 64, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2293, file: !2237, line: 55, baseType: !2292, size: 64, offset: 640)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2293, file: !2237, line: 56, baseType: !109, size: 32, offset: 704)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2293, file: !2237, line: 57, baseType: !109, size: 32, offset: 736)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2242, file: !2237, line: 40, baseType: !182, size: 64, offset: 2496)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2242, file: !2237, line: 42, baseType: !109, size: 32, offset: 2560)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2242, file: !2237, line: 43, baseType: !2235, size: 64, offset: 2624)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2236, file: !2237, line: 99, baseType: !2306, offset: 128)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2307, line: 211, elements: !565)
!2307 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2236, file: !2237, line: 100, baseType: !2309, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2237, line: 63, size: 3008, elements: !2311)
!2311 = !{!2312, !2313, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2343}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2310, file: !2237, line: 64, baseType: !2292, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2310, file: !2237, line: 65, baseType: !2314, size: 192, offset: 64)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2292, size: 192, elements: !638)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2310, file: !2237, line: 67, baseType: !109, size: 32, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2310, file: !2237, line: 68, baseType: !600, size: 256, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2310, file: !2237, line: 69, baseType: !554, size: 32, offset: 576)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2310, file: !2237, line: 70, baseType: !600, size: 256, offset: 640)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2310, file: !2237, line: 71, baseType: !182, size: 64, offset: 896)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2310, file: !2237, line: 72, baseType: !182, size: 64, offset: 960)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2310, file: !2237, line: 73, baseType: !182, size: 64, offset: 1024)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2310, file: !2237, line: 74, baseType: !182, size: 64, offset: 1088)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2310, file: !2237, line: 75, baseType: !182, size: 64, offset: 1152)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2310, file: !2237, line: 76, baseType: !182, size: 64, offset: 1216)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2310, file: !2237, line: 77, baseType: !182, size: 64, offset: 1280)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2310, file: !2237, line: 78, baseType: !182, size: 64, offset: 1344)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2310, file: !2237, line: 79, baseType: !801, size: 8, offset: 1408)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2310, file: !2237, line: 80, baseType: !182, size: 64, offset: 1472)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2310, file: !2237, line: 81, baseType: !600, size: 256, offset: 1536)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2310, file: !2237, line: 82, baseType: !1428, size: 256, offset: 1792)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2310, file: !2237, line: 84, baseType: !204, size: 32, offset: 2048)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2310, file: !2237, line: 87, baseType: !182, size: 64, offset: 2112)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2310, file: !2237, line: 88, baseType: !182, size: 64, offset: 2176)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2310, file: !2237, line: 89, baseType: !2335, size: 704, offset: 2240)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2280, line: 111, size: 704, elements: !2336)
!2336 = !{!2337, !2338, !2339, !2342}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2335, file: !2280, line: 112, baseType: !2279, size: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2335, file: !2280, line: 113, baseType: !2267, size: 320, offset: 256)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2335, file: !2280, line: 116, baseType: !2340, size: 64, offset: 576)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2280, line: 18, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2335, file: !2280, line: 117, baseType: !109, size: 32, offset: 640)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2310, file: !2237, line: 90, baseType: !2235, size: 64, offset: 2944)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1207, file: !6, line: 515, baseType: !2345, size: 64, offset: 8064)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2347, line: 117, size: 128, elements: !2348)
!2347 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2348 = !{!2349, !2350, !2351}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2346, file: !2347, line: 118, baseType: !733, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2346, file: !2347, line: 119, baseType: !733, size: 32, offset: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2346, file: !2347, line: 120, baseType: !1075, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1207, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1207, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1207, file: !6, line: 520, baseType: !2355, size: 64, offset: 8192)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1207, file: !6, line: 523, baseType: !2357, size: 64, offset: 8256)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1207, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1207, file: !6, line: 525, baseType: !2362, size: 64, offset: 8384)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1207, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1207, file: !6, line: 533, baseType: !169, size: 64, offset: 8512)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1207, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1207, file: !6, line: 535, baseType: !2369, size: 64, offset: 8640)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1207, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1207, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1207, file: !6, line: 540, baseType: !2373, size: 64, offset: 8768)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2375, line: 32, size: 64, elements: !2376)
!2375 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2376 = !{!2377, !2378}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2374, file: !2375, line: 33, baseType: !733, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2374, file: !2375, line: 34, baseType: !733, size: 32, offset: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1207, file: !6, line: 563, baseType: !260, size: 128, offset: 8832)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1207, file: !6, line: 565, baseType: !260, size: 128, offset: 8960)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1207, file: !6, line: 568, baseType: !2382, size: 64, offset: 9088)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{null}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1207, file: !6, line: 570, baseType: !204, size: 32, offset: 9152)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1182, file: !14, line: 2382, baseType: !1181, size: 64, offset: 448)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1182, file: !14, line: 2383, baseType: !650, size: 64, offset: 512)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1182, file: !14, line: 2385, baseType: !2389, offset: 576)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2307, line: 206, elements: !565)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1182, file: !14, line: 2386, baseType: !2389, offset: 576)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1182, file: !14, line: 2387, baseType: !2389, offset: 576)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1182, file: !14, line: 2388, baseType: !2393, offset: 576)
!2393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2389, elements: !638)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1182, file: !14, line: 2390, baseType: !2389, offset: 576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1182, file: !14, line: 2391, baseType: !2389, offset: 576)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1182, file: !14, line: 2392, baseType: !2389, offset: 576)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1182, file: !14, line: 2393, baseType: !2389, offset: 576)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1173, file: !14, line: 1197, baseType: !2399, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !2402)
!2402 = !{!2403, !2407, !2411, !2412, !2416, !2420, !2424, !2425, !2426, !2430, !2434, !2438, !2439, !2440, !2446, !2450, !2451, !2455, !2456, !2457, !2458, !2462, !2466, !2513, !2528, !2529}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2401, file: !14, line: 2058, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!960, !1172}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2401, file: !14, line: 2059, baseType: !2408, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{null, !960}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2401, file: !14, line: 2060, baseType: !2408, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2401, file: !14, line: 2062, baseType: !2413, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !960, !109}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2401, file: !14, line: 2063, baseType: !2417, size: 64, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!109, !960, !1640}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2401, file: !14, line: 2064, baseType: !2421, size: 64, offset: 320)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!109, !960}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2401, file: !14, line: 2065, baseType: !2408, size: 64, offset: 384)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2401, file: !14, line: 2066, baseType: !1202, size: 64, offset: 448)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2401, file: !14, line: 2067, baseType: !2427, size: 64, offset: 512)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!109, !1172, !109}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2401, file: !14, line: 2068, baseType: !2431, size: 64, offset: 576)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!109, !1172, !13}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2401, file: !14, line: 2069, baseType: !2435, size: 64, offset: 640)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!109, !1172}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2401, file: !14, line: 2070, baseType: !2431, size: 64, offset: 704)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2401, file: !14, line: 2071, baseType: !2435, size: 64, offset: 768)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2401, file: !14, line: 2072, baseType: !2441, size: 64, offset: 832)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!109, !925, !2444}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2401, file: !14, line: 2073, baseType: !2447, size: 64, offset: 896)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!109, !1172, !2165, !814}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2401, file: !14, line: 2074, baseType: !1202, size: 64, offset: 960)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2401, file: !14, line: 2076, baseType: !2452, size: 64, offset: 1024)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!109, !1923, !925}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2401, file: !14, line: 2077, baseType: !2452, size: 64, offset: 1088)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2401, file: !14, line: 2078, baseType: !2452, size: 64, offset: 1152)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2401, file: !14, line: 2079, baseType: !2452, size: 64, offset: 1216)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2401, file: !14, line: 2081, baseType: !2459, size: 64, offset: 1280)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!1114, !1172, !109, !814, !1117, !612}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2401, file: !14, line: 2082, baseType: !2463, size: 64, offset: 1344)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!1114, !1172, !109, !804, !1117, !612}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2401, file: !14, line: 2083, baseType: !2467, size: 64, offset: 1408)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!2470, !960}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2498, !2499, !2500}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2472, file: !51, line: 297, baseType: !654, size: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2472, file: !51, line: 298, baseType: !260, size: 128, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2472, file: !51, line: 299, baseType: !260, size: 128, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2472, file: !51, line: 300, baseType: !260, size: 128, offset: 384)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2472, file: !51, line: 301, baseType: !600, size: 256, offset: 512)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2472, file: !51, line: 302, baseType: !554, size: 32, offset: 768)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2472, file: !51, line: 303, baseType: !204, size: 32, offset: 800)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2472, file: !51, line: 304, baseType: !1172, size: 64, offset: 832)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2472, file: !51, line: 305, baseType: !2483, size: 64, offset: 896)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !2484)
!2484 = !{!2485, !2497}
!2485 = !DIDerivedType(tag: DW_TAG_member, scope: !2483, file: !51, line: 69, baseType: !2486, size: 32)
!2486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2483, file: !51, line: 69, size: 32, elements: !2487)
!2487 = !{!2488, !2489, !2490}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2486, file: !51, line: 70, baseType: !682, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2486, file: !51, line: 71, baseType: !700, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2486, file: !51, line: 72, baseType: !2491, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2492, line: 24, baseType: !2493)
!2492 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2492, line: 22, size: 32, elements: !2494)
!2494 = !{!2495}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2493, file: !2492, line: 23, baseType: !2496, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2492, line: 20, baseType: !688)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2483, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2472, file: !51, line: 306, baseType: !612, size: 64, offset: 960)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2472, file: !51, line: 307, baseType: !182, size: 64, offset: 1024)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2472, file: !51, line: 308, baseType: !2501, size: 576, offset: 1088)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !2502)
!2502 = !{!2503, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2501, file: !51, line: 206, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !273)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2501, file: !51, line: 207, baseType: !2504, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2501, file: !51, line: 208, baseType: !2504, size: 64, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2501, file: !51, line: 209, baseType: !2504, size: 64, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2501, file: !51, line: 210, baseType: !2504, size: 64, offset: 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2501, file: !51, line: 211, baseType: !2504, size: 64, offset: 320)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2501, file: !51, line: 212, baseType: !2504, size: 64, offset: 384)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2501, file: !51, line: 213, baseType: !757, size: 64, offset: 448)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2501, file: !51, line: 214, baseType: !757, size: 64, offset: 512)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2401, file: !14, line: 2085, baseType: !2514, size: 64, offset: 1472)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!1075, !1172, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2519, line: 15, size: 256, elements: !2520)
!2519 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2520 = !{!2521, !2522, !2523, !2524, !2525}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2518, file: !2519, line: 16, baseType: !180, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2518, file: !2519, line: 19, baseType: !109, size: 32, offset: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2518, file: !2519, line: 26, baseType: !182, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2518, file: !2519, line: 33, baseType: !182, size: 64, offset: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2518, file: !2519, line: 36, baseType: !2526, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !27, line: 33, flags: DIFlagFwdDecl)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2401, file: !14, line: 2087, baseType: !2514, size: 64, offset: 1536)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2401, file: !14, line: 2089, baseType: !1202, size: 64, offset: 1600)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1173, file: !14, line: 1198, baseType: !2531, size: 64, offset: 448)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2533)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !2534)
!2534 = !{!2535, !2539, !2543, !2547, !2548, !2549, !2550, !2551, !2556, !2561, !2565}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2533, file: !51, line: 325, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!109, !2471}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2533, file: !51, line: 326, baseType: !2540, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!2471, !1172, !109}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2533, file: !51, line: 327, baseType: !2544, size: 64, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{null, !2471}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2533, file: !51, line: 328, baseType: !2536, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2533, file: !51, line: 329, baseType: !2536, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2533, file: !51, line: 330, baseType: !2536, size: 64, offset: 320)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2533, file: !51, line: 331, baseType: !2427, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2533, file: !51, line: 334, baseType: !2552, size: 64, offset: 448)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!2555, !960}
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2533, file: !51, line: 335, baseType: !2557, size: 64, offset: 512)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!109, !960, !2560}
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2533, file: !51, line: 337, baseType: !2562, size: 64, offset: 576)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!109, !960, !2555}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2533, file: !51, line: 339, baseType: !2566, size: 64, offset: 640)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!109, !1172, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1173, file: !14, line: 1199, baseType: !2571, size: 64, offset: 512)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2573)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !2574)
!2574 = !{!2575, !2579, !2580, !2584, !2585, !2586, !2601, !2624, !2628, !2629, !2652}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2573, file: !51, line: 431, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!109, !1172, !109, !109, !1083}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2573, file: !51, line: 432, baseType: !2427, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2573, file: !51, line: 433, baseType: !2581, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!109, !1172, !7}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2573, file: !51, line: 434, baseType: !2581, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2573, file: !51, line: 435, baseType: !2427, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2573, file: !51, line: 436, baseType: !2587, size: 64, offset: 320)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!109, !1172, !109, !2590}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !2592)
!2592 = !{!2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2591, file: !51, line: 418, baseType: !109, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2591, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2591, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2591, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2591, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2591, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2591, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2591, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2573, file: !51, line: 437, baseType: !2602, size: 64, offset: 384)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!109, !1172, !2483, !2605}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !2607)
!2607 = !{!2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2606, file: !51, line: 346, baseType: !109, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2606, file: !51, line: 347, baseType: !255, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2606, file: !51, line: 348, baseType: !255, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2606, file: !51, line: 349, baseType: !255, size: 64, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2606, file: !51, line: 350, baseType: !255, size: 64, offset: 256)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2606, file: !51, line: 351, baseType: !255, size: 64, offset: 320)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2606, file: !51, line: 352, baseType: !255, size: 64, offset: 384)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2606, file: !51, line: 353, baseType: !271, size: 64, offset: 448)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2606, file: !51, line: 355, baseType: !271, size: 64, offset: 512)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2606, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2606, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2606, file: !51, line: 358, baseType: !255, size: 64, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2606, file: !51, line: 359, baseType: !255, size: 64, offset: 704)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2606, file: !51, line: 360, baseType: !255, size: 64, offset: 768)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2606, file: !51, line: 361, baseType: !271, size: 64, offset: 832)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2606, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2573, file: !51, line: 438, baseType: !2625, size: 64, offset: 448)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!109, !1172, !2569, !2605}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2573, file: !51, line: 440, baseType: !2602, size: 64, offset: 512)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2573, file: !51, line: 441, baseType: !2630, size: 64, offset: 576)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!109, !1172, !2633}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2635)
!2635 = !{!2636, !2637}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2634, file: !51, line: 412, baseType: !7, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2634, file: !51, line: 413, baseType: !2638, size: 1344, offset: 64)
!2638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2639, size: 1344, elements: !638)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2640)
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2651}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2639, file: !51, line: 398, baseType: !7, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2639, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2639, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2639, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2639, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2639, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2639, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2639, file: !51, line: 406, baseType: !257, size: 64, offset: 256)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2639, file: !51, line: 407, baseType: !2650, size: 64, offset: 320)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !181, line: 132, baseType: !255)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2639, file: !51, line: 408, baseType: !2650, size: 64, offset: 384)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2573, file: !51, line: 442, baseType: !2581, size: 64, offset: 640)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1173, file: !14, line: 1200, baseType: !2654, size: 64, offset: 576)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2656)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1173, file: !14, line: 1201, baseType: !182, size: 64, offset: 640)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1173, file: !14, line: 1202, baseType: !182, size: 64, offset: 704)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1173, file: !14, line: 1203, baseType: !182, size: 64, offset: 768)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1173, file: !14, line: 1204, baseType: !925, size: 64, offset: 832)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1173, file: !14, line: 1205, baseType: !741, size: 320, offset: 896)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1173, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1173, file: !14, line: 1207, baseType: !204, size: 32, offset: 1248)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1173, file: !14, line: 1209, baseType: !169, size: 64, offset: 1280)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1173, file: !14, line: 1211, baseType: !2666, size: 64, offset: 1344)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2669)
!2669 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1173, file: !14, line: 1223, baseType: !2671, size: 64, offset: 1408)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !937, line: 34, size: 64, elements: !2672)
!2672 = !{!2673}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2671, file: !937, line: 35, baseType: !940, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1173, file: !14, line: 1224, baseType: !260, size: 128, offset: 1472)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1173, file: !14, line: 1225, baseType: !2676, size: 64, offset: 1600)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1173, file: !14, line: 1226, baseType: !2679, size: 64, offset: 1664)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1173, file: !14, line: 1227, baseType: !2682, size: 64, offset: 1728)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1173, file: !14, line: 1228, baseType: !2685, size: 64, offset: 1792)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1173, file: !14, line: 1229, baseType: !654, size: 128, offset: 1856)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1173, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1173, file: !14, line: 1231, baseType: !2690, size: 2496, offset: 2048)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2696, !2728}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2690, file: !51, line: 522, baseType: !7, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2690, file: !51, line: 523, baseType: !741, size: 320, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2690, file: !51, line: 524, baseType: !2695, size: 192, offset: 384)
!2695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 192, elements: !638)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2690, file: !51, line: 525, baseType: !2697, size: 1728, offset: 576)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2698, size: 1728, elements: !638)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !2699)
!2699 = !{!2700, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2698, file: !51, line: 223, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !2703)
!2703 = !{!2704, !2705, !2718, !2719}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2702, file: !51, line: 446, baseType: !109, size: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2702, file: !51, line: 447, baseType: !2706, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2708)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !2709)
!2709 = !{!2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2708, file: !51, line: 313, baseType: !2427, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2708, file: !51, line: 314, baseType: !2427, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2708, file: !51, line: 315, baseType: !2427, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2708, file: !51, line: 316, baseType: !2427, size: 64, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2708, file: !51, line: 317, baseType: !2536, size: 64, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2708, file: !51, line: 318, baseType: !2536, size: 64, offset: 320)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2708, file: !51, line: 319, baseType: !2536, size: 64, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2708, file: !51, line: 320, baseType: !2566, size: 64, offset: 448)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2702, file: !51, line: 448, baseType: !1206, size: 64, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2702, file: !51, line: 449, baseType: !2701, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2698, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2698, file: !51, line: 226, baseType: !260, size: 128, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2698, file: !51, line: 227, baseType: !182, size: 64, offset: 256)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2698, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2698, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2698, file: !51, line: 230, baseType: !2504, size: 64, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2698, file: !51, line: 231, baseType: !2504, size: 64, offset: 448)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2698, file: !51, line: 232, baseType: !169, size: 64, offset: 512)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2690, file: !51, line: 526, baseType: !2729, size: 192, offset: 2304)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2706, size: 192, elements: !638)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1173, file: !14, line: 1233, baseType: !2731, size: 2368, offset: 4544)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2732)
!2732 = !{!2733, !2734, !2735}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2731, file: !14, line: 1185, baseType: !179, size: 16)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2731, file: !14, line: 1186, baseType: !179, size: 16, offset: 16)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2731, file: !14, line: 1187, baseType: !2736, size: 2304, offset: 64)
!2736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2737, size: 2304, elements: !638)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2738, line: 12, size: 768, elements: !2739)
!2738 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2739 = !{!2740, !2748, !2749, !2754, !2755}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2737, file: !2738, line: 13, baseType: !2741, size: 384)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2742, line: 17, size: 384, elements: !2743)
!2742 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2743 = !{!2744, !2745, !2746, !2747}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2741, file: !2742, line: 18, baseType: !109, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2741, file: !2742, line: 19, baseType: !109, size: 32, offset: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2741, file: !2742, line: 20, baseType: !663, size: 192, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2741, file: !2742, line: 22, baseType: !580, size: 128, align: 64, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2737, file: !2738, line: 14, baseType: !2117, size: 64, offset: 384)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2737, file: !2738, line: 15, baseType: !2750, size: 64, offset: 448)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2751, line: 16, size: 64, elements: !2752)
!2751 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2752 = !{!2753}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2750, file: !2751, line: 17, baseType: !184, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2737, file: !2738, line: 16, baseType: !663, size: 192, offset: 512)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2737, file: !2738, line: 17, baseType: !204, size: 32, offset: 704)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1173, file: !14, line: 1240, baseType: !169, size: 64, offset: 6912)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1173, file: !14, line: 1243, baseType: !171, size: 32, offset: 6976)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1173, file: !14, line: 1245, baseType: !757, size: 64, offset: 7040)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1173, file: !14, line: 1246, baseType: !757, size: 64, offset: 7104)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1173, file: !14, line: 1248, baseType: !173, size: 32, offset: 7168)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1173, file: !14, line: 1249, baseType: !2762, size: 64, offset: 7232)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1173, file: !14, line: 1252, baseType: !2765, size: 256, offset: 7296)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 256, elements: !2766)
!2766 = !{!2767}
!2767 = !DISubrange(count: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1173, file: !14, line: 1253, baseType: !2769, size: 128, offset: 7552)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2770, line: 21, baseType: !2771)
!2770 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2770, line: 19, size: 128, elements: !2772)
!2772 = !{!2773}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2771, file: !2770, line: 20, baseType: !2774, size: 128)
!2774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 128, elements: !2775)
!2775 = !{!2776}
!2776 = !DISubrange(count: 16)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1173, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1173, file: !14, line: 1261, baseType: !600, size: 256, offset: 7744)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1173, file: !14, line: 1267, baseType: !804, size: 64, offset: 8000)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1173, file: !14, line: 1269, baseType: !2781, size: 64, offset: 8064)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2783)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !927, line: 128, size: 1024, align: 512, elements: !2784)
!2784 = !{!2785, !2789, !2790, !2797, !2803, !2807, !2811, !2815, !2816, !2820, !2824, !2829, !2833}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2783, file: !927, line: 129, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!109, !925, !7}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2783, file: !927, line: 130, baseType: !2786, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2783, file: !927, line: 131, baseType: !2791, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!109, !2794, !2796}
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !926)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2783, file: !927, line: 132, baseType: !2798, size: 64, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!109, !2794, !7, !804, !2801}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2783, file: !927, line: 134, baseType: !2804, size: 64, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!109, !2794}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2783, file: !927, line: 135, baseType: !2808, size: 64, offset: 320)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!109, !925}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2783, file: !927, line: 136, baseType: !2812, size: 64, offset: 384)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !925}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2783, file: !927, line: 137, baseType: !2812, size: 64, offset: 448)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2783, file: !927, line: 138, baseType: !2817, size: 64, offset: 512)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{null, !925, !960}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2783, file: !927, line: 139, baseType: !2821, size: 64, offset: 576)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!814, !925, !814, !109}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2783, file: !927, line: 140, baseType: !2825, size: 64, offset: 640)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!920, !2828}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2783, file: !927, line: 141, baseType: !2830, size: 64, offset: 704)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!109, !1083, !801}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2783, file: !927, line: 142, baseType: !2834, size: 64, offset: 768)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!925, !925, !2837}
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !961)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1173, file: !14, line: 1271, baseType: !2840, size: 448, offset: 8128)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2519, line: 63, size: 448, elements: !2841)
!2841 = !{!2842, !2847, !2848, !2849, !2850, !2851, !2852}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2840, file: !2519, line: 64, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!182, !2846, !2517}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2840, file: !2519, line: 66, baseType: !2843, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2840, file: !2519, line: 69, baseType: !1075, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2840, file: !2519, line: 70, baseType: !109, size: 32, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2840, file: !2519, line: 71, baseType: !7, size: 32, offset: 224)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2840, file: !2519, line: 74, baseType: !260, size: 128, offset: 256)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2840, file: !2519, line: 85, baseType: !2853, size: 64, offset: 384)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1173, file: !14, line: 1274, baseType: !593, size: 64, offset: 8576)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1173, file: !14, line: 1280, baseType: !593, size: 64, offset: 8640)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1173, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1173, file: !14, line: 1286, baseType: !1820, size: 32, offset: 8736)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1173, file: !14, line: 1289, baseType: !2340, size: 64, offset: 8768)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1173, file: !14, line: 1290, baseType: !650, size: 64, offset: 8832)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1173, file: !14, line: 1297, baseType: !887, size: 64, offset: 8896)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1173, file: !14, line: 1304, baseType: !2862, size: 64, offset: 8960)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2863, line: 49, size: 64, elements: !2864)
!2863 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2864 = !{!2865}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2862, file: !2863, line: 50, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2863, line: 41, size: 512, align: 512, elements: !2868)
!2868 = !{!2869, !2870, !2875}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2867, file: !2863, line: 43, baseType: !554, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2867, file: !2863, line: 45, baseType: !2871, size: 192, offset: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2863, line: 29, size: 192, elements: !2872)
!2872 = !{!2873, !2874}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2871, file: !2863, line: 30, baseType: !260, size: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2871, file: !2863, line: 32, baseType: !1075, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2867, file: !2863, line: 46, baseType: !1075, size: 64, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1173, file: !14, line: 1305, baseType: !2862, size: 64, offset: 9024)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1173, file: !14, line: 1306, baseType: !580, size: 128, align: 64, offset: 9088)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1173, file: !14, line: 1307, baseType: !2279, size: 256, offset: 9216)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1173, file: !14, line: 1309, baseType: !600, size: 256, offset: 9472)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1173, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1173, file: !14, line: 1317, baseType: !554, size: 32, align: 512, offset: 10240)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1173, file: !14, line: 1318, baseType: !260, size: 128, offset: 10304)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1173, file: !14, line: 1320, baseType: !554, size: 32, offset: 10432)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1173, file: !14, line: 1321, baseType: !260, size: 128, offset: 10496)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !961, file: !14, line: 656, baseType: !1323, size: 64, offset: 512)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !961, file: !14, line: 659, baseType: !169, size: 64, offset: 576)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !961, file: !14, line: 663, baseType: !182, size: 64, offset: 640)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !14, line: 671, baseType: !2889, size: 32, offset: 704)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !14, line: 671, size: 32, elements: !2890)
!2890 = !{!2891, !2893}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2889, file: !14, line: 672, baseType: !2892, size: 32)
!2892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2889, file: !14, line: 673, baseType: !7, size: 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !961, file: !14, line: 675, baseType: !1035, size: 32, offset: 736)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !961, file: !14, line: 676, baseType: !612, size: 64, offset: 768)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !961, file: !14, line: 677, baseType: !1071, size: 128, offset: 832)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !961, file: !14, line: 678, baseType: !1071, size: 128, offset: 960)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !961, file: !14, line: 679, baseType: !1071, size: 128, offset: 1088)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !961, file: !14, line: 680, baseType: !554, size: 32, offset: 1216)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !961, file: !14, line: 681, baseType: !179, size: 16, offset: 1248)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !961, file: !14, line: 682, baseType: !370, size: 8, offset: 1264)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !961, file: !14, line: 683, baseType: !370, size: 8, offset: 1272)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !961, file: !14, line: 684, baseType: !2650, size: 64, offset: 1280)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !961, file: !14, line: 691, baseType: !182, size: 64, offset: 1344)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !961, file: !14, line: 692, baseType: !741, size: 320, offset: 1408)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !961, file: !14, line: 694, baseType: !182, size: 64, offset: 1728)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !961, file: !14, line: 695, baseType: !182, size: 64, offset: 1792)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !961, file: !14, line: 697, baseType: !654, size: 128, offset: 1856)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !961, file: !14, line: 698, baseType: !260, size: 128, offset: 1984)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !961, file: !14, line: 707, baseType: !260, size: 128, offset: 2112)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !961, file: !14, line: 708, baseType: !260, size: 128, offset: 2240)
!2912 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !14, line: 709, baseType: !2913, size: 128, offset: 2368)
!2913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !14, line: 709, size: 128, elements: !2914)
!2914 = !{!2915, !2916}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2913, file: !14, line: 710, baseType: !650, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2913, file: !14, line: 711, baseType: !580, size: 128, align: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !961, file: !14, line: 713, baseType: !595, size: 64, offset: 2496)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !961, file: !14, line: 714, baseType: !595, size: 64, offset: 2560)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !961, file: !14, line: 715, baseType: !204, size: 32, offset: 2624)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !961, file: !14, line: 716, baseType: !204, size: 32, offset: 2656)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !961, file: !14, line: 717, baseType: !204, size: 32, offset: 2688)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !961, file: !14, line: 719, baseType: !204, size: 32, offset: 2720)
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !14, line: 721, baseType: !2924, size: 64, offset: 2752)
!2924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !14, line: 721, size: 64, elements: !2925)
!2925 = !{!2926, !3052}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2924, file: !14, line: 722, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2930)
!2930 = !{!2931, !2932, !2936, !2940, !2944, !2945, !2946, !2952, !2965, !2969, !2973, !2974, !2978, !2979, !2983, !2988, !2989, !2993, !2997, !3003, !3004, !3008, !3009, !3015, !3019, !3020, !3025, !3029, !3033, !3037, !3041, !3042, !3048}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2929, file: !14, line: 1915, baseType: !1206, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2929, file: !14, line: 1916, baseType: !2933, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!612, !572, !612, !109}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2929, file: !14, line: 1917, baseType: !2937, size: 64, offset: 128)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!1114, !572, !814, !1117, !1944}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2929, file: !14, line: 1918, baseType: !2941, size: 64, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!1114, !572, !804, !1117, !1944}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2929, file: !14, line: 1919, baseType: !1754, size: 64, offset: 256)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2929, file: !14, line: 1920, baseType: !1754, size: 64, offset: 320)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2929, file: !14, line: 1921, baseType: !2947, size: 64, offset: 384)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!109, !1757, !2950, !7}
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2929, file: !14, line: 1923, baseType: !2953, size: 64, offset: 448)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!109, !572, !2956}
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2958)
!2958 = !{!2959, !2964}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2957, file: !14, line: 1859, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2961)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!801, !2956, !804, !109, !612, !255, !7}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2957, file: !14, line: 1860, baseType: !612, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2929, file: !14, line: 1924, baseType: !2966, size: 64, offset: 512)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!1991, !572, !1993}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2929, file: !14, line: 1925, baseType: !2970, size: 64, offset: 576)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!1075, !572, !7, !182}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2929, file: !14, line: 1926, baseType: !2970, size: 64, offset: 640)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2929, file: !14, line: 1927, baseType: !2975, size: 64, offset: 704)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!109, !572, !1463}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2929, file: !14, line: 1928, baseType: !182, size: 64, offset: 768)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2929, file: !14, line: 1929, baseType: !2980, size: 64, offset: 832)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!109, !960, !572}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2929, file: !14, line: 1930, baseType: !2984, size: 64, offset: 896)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!109, !572, !2987}
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !169)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2929, file: !14, line: 1931, baseType: !2980, size: 64, offset: 960)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2929, file: !14, line: 1932, baseType: !2990, size: 64, offset: 1024)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!109, !572, !612, !612, !109}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2929, file: !14, line: 1933, baseType: !2994, size: 64, offset: 1088)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!109, !109, !572, !109}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2929, file: !14, line: 1934, baseType: !2998, size: 64, offset: 1152)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!109, !572, !109, !3001}
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2929, file: !14, line: 1935, baseType: !569, size: 64, offset: 1216)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2929, file: !14, line: 1936, baseType: !3005, size: 64, offset: 1280)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!109, !109}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2929, file: !14, line: 1937, baseType: !2998, size: 64, offset: 1344)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2929, file: !14, line: 1938, baseType: !3010, size: 64, offset: 1408)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!1114, !3013, !572, !1944, !1117, !7}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !186, line: 59, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2929, file: !14, line: 1939, baseType: !3016, size: 64, offset: 1472)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!1114, !572, !1944, !3013, !1117, !7}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2929, file: !14, line: 1940, baseType: !1810, size: 64, offset: 1536)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2929, file: !14, line: 1941, baseType: !3021, size: 64, offset: 1600)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!109, !572, !109, !3024, !1731}
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2929, file: !14, line: 1942, baseType: !3026, size: 64, offset: 1664)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!1075, !572, !109, !612, !612}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2929, file: !14, line: 1944, baseType: !3030, size: 64, offset: 1728)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !1923, !572}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2929, file: !14, line: 1948, baseType: !3034, size: 64, offset: 1792)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!1114, !572, !612, !572, !612, !1117, !7}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2929, file: !14, line: 1950, baseType: !3038, size: 64, offset: 1856)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!612, !572, !612, !572, !612, !612, !7}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2929, file: !14, line: 1953, baseType: !2990, size: 64, offset: 1920)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2929, file: !14, line: 1954, baseType: !3043, size: 64, offset: 1984)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!109, !3046, !7}
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2929, file: !14, line: 1955, baseType: !3049, size: 64, offset: 2048)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!109, !3046, !2950, !7}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2924, file: !14, line: 723, baseType: !2408, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !961, file: !14, line: 725, baseType: !3054, size: 64, offset: 2816)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !961, file: !14, line: 726, baseType: !1324, size: 1536, align: 64, offset: 2880)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !961, file: !14, line: 727, baseType: !260, size: 128, offset: 4416)
!3058 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !14, line: 728, baseType: !3059, size: 64, offset: 4544)
!3059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !14, line: 728, size: 64, elements: !3060)
!3060 = !{!3061, !3062, !3073, !3074}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3059, file: !14, line: 729, baseType: !3013, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3059, file: !14, line: 730, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3065, line: 14, size: 832, elements: !3066)
!3065 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3066 = !{!3067, !3068, !3069, !3070, !3071, !3072}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3064, file: !3065, line: 15, baseType: !1219, size: 512)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3064, file: !3065, line: 16, baseType: !1206, size: 64, offset: 512)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3064, file: !3065, line: 17, baseType: !2927, size: 64, offset: 576)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3064, file: !3065, line: 18, baseType: !260, size: 128, offset: 640)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3064, file: !3065, line: 19, baseType: !1035, size: 32, offset: 768)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3064, file: !3065, line: 20, baseType: !7, size: 32, offset: 800)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3059, file: !14, line: 731, baseType: !814, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3059, file: !14, line: 732, baseType: !7, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !961, file: !14, line: 735, baseType: !173, size: 32, offset: 4608)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !961, file: !14, line: 738, baseType: !173, size: 32, offset: 4640)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !961, file: !14, line: 739, baseType: !2762, size: 64, offset: 4672)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !961, file: !14, line: 750, baseType: !169, size: 64, offset: 4736)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !926, file: !927, line: 91, baseType: !3080, size: 256, offset: 448)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 256, elements: !2766)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !926, file: !927, line: 94, baseType: !3082, size: 64, offset: 704)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3083, line: 25, size: 64, elements: !3084)
!3083 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3084 = !{!3085}
!3085 = !DIDerivedType(tag: DW_TAG_member, scope: !3082, file: !3083, line: 26, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3082, file: !3083, line: 26, size: 64, elements: !3087)
!3087 = !{!3088, !3089}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3086, file: !3083, line: 28, baseType: !256, size: 64, align: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, scope: !3086, file: !3083, line: 30, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3086, file: !3083, line: 30, size: 64, elements: !3091)
!3091 = !{!3092, !3093}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3090, file: !3083, line: 31, baseType: !554, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3090, file: !3083, line: 32, baseType: !109, size: 32, offset: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !926, file: !927, line: 95, baseType: !2781, size: 64, offset: 768)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !926, file: !927, line: 96, baseType: !1172, size: 64, offset: 832)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !926, file: !927, line: 97, baseType: !182, size: 64, offset: 896)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !926, file: !927, line: 98, baseType: !169, size: 64, offset: 960)
!3098 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !927, line: 100, baseType: !3099, size: 128, offset: 1024)
!3099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !927, line: 100, size: 128, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3099, file: !927, line: 101, baseType: !260, size: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3099, file: !927, line: 102, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !926, file: !927, line: 104, baseType: !260, size: 128, offset: 1152)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !926, file: !927, line: 105, baseType: !260, size: 128, offset: 1280)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !926, file: !927, line: 113, baseType: !3107, size: 128, offset: 1408)
!3107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !927, line: 109, size: 128, elements: !3108)
!3108 = !{!3109, !3110, !3111}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3107, file: !927, line: 110, baseType: !654, size: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3107, file: !927, line: 111, baseType: !936, size: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3107, file: !927, line: 112, baseType: !580, size: 128, align: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !921, file: !922, line: 72, baseType: !1172, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !921, file: !922, line: 73, baseType: !109, size: 32, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !921, file: !922, line: 74, baseType: !1000, size: 64, offset: 192)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !916, file: !917, line: 10, baseType: !925, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !573, file: !14, line: 1015, baseType: !960, size: 64, offset: 1344)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !573, file: !14, line: 1016, baseType: !2927, size: 64, offset: 1408)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !573, file: !14, line: 1018, baseType: !255, size: 64, offset: 1472)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !573, file: !14, line: 1020, baseType: !169, size: 64, offset: 1536)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !573, file: !14, line: 1023, baseType: !169, size: 64, offset: 1600)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !573, file: !14, line: 1027, baseType: !3122, size: 64, offset: 1664)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !573, file: !14, line: 1029, baseType: !1323, size: 64, offset: 1728)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !573, file: !14, line: 1030, baseType: !1820, size: 32, offset: 1792)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !573, file: !14, line: 1031, baseType: !1820, size: 32, offset: 1824)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !540, file: !27, line: 756, baseType: !182, size: 64, offset: 704)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !540, file: !27, line: 757, baseType: !182, size: 64, offset: 768)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !540, file: !27, line: 760, baseType: !182, size: 64, offset: 832)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !540, file: !27, line: 761, baseType: !182, size: 64, offset: 896)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !540, file: !27, line: 763, baseType: !182, size: 64, offset: 960)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !540, file: !27, line: 764, baseType: !3132, size: 64, offset: 1024)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1478, line: 299, baseType: !3134)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1478, line: 299, size: 64, elements: !3135)
!3135 = !{!3136}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3134, file: !1478, line: 299, baseType: !3137, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1483, line: 18, baseType: !182)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !540, file: !27, line: 773, baseType: !204, size: 32, offset: 1088)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !540, file: !27, line: 785, baseType: !204, size: 32, offset: 1120)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !540, file: !27, line: 795, baseType: !3141, size: 64, offset: 1152)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !3143)
!3143 = !{!3144, !3145}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3142, file: !27, line: 727, baseType: !255, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3142, file: !27, line: 728, baseType: !109, size: 32, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !540, file: !27, line: 801, baseType: !182, size: 64, offset: 1216)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !540, file: !27, line: 804, baseType: !593, size: 64, offset: 1280)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !540, file: !27, line: 806, baseType: !109, size: 32, offset: 1344)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !540, file: !27, line: 808, baseType: !554, size: 32, offset: 1376)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !540, file: !27, line: 823, baseType: !741, size: 320, offset: 1408)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !540, file: !27, line: 825, baseType: !260, size: 128, offset: 1728)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !540, file: !27, line: 845, baseType: !109, size: 32, offset: 1856)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !540, file: !27, line: 849, baseType: !182, size: 64, offset: 1920)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !540, file: !27, line: 850, baseType: !182, size: 64, offset: 1984)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !540, file: !27, line: 852, baseType: !182, size: 64, offset: 2048)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !540, file: !27, line: 853, baseType: !182, size: 64, offset: 2112)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !540, file: !27, line: 854, baseType: !595, size: 64, offset: 2176)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !540, file: !27, line: 855, baseType: !182, size: 64, offset: 2240)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !540, file: !27, line: 856, baseType: !182, size: 64, offset: 2304)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !540, file: !27, line: 857, baseType: !182, size: 64, offset: 2368)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !540, file: !27, line: 858, baseType: !182, size: 64, offset: 2432)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !540, file: !27, line: 865, baseType: !410, size: 32, offset: 2496)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !540, file: !27, line: 867, baseType: !554, size: 32, offset: 2528)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !540, file: !27, line: 869, baseType: !182, size: 64, offset: 2560)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !540, file: !27, line: 869, baseType: !182, size: 64, offset: 2624)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !540, file: !27, line: 869, baseType: !182, size: 64, offset: 2688)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !540, file: !27, line: 869, baseType: !182, size: 64, offset: 2752)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !540, file: !27, line: 870, baseType: !182, size: 64, offset: 2816)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !540, file: !27, line: 870, baseType: !182, size: 64, offset: 2880)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !540, file: !27, line: 870, baseType: !182, size: 64, offset: 2944)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !540, file: !27, line: 871, baseType: !182, size: 64, offset: 3008)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !540, file: !27, line: 871, baseType: !182, size: 64, offset: 3072)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !540, file: !27, line: 871, baseType: !182, size: 64, offset: 3136)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !540, file: !27, line: 871, baseType: !182, size: 64, offset: 3200)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !540, file: !27, line: 873, baseType: !3176, size: 3328, offset: 3264)
!3176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 3328, elements: !3177)
!3177 = !{!3178}
!3178 = !DISubrange(count: 52)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !540, file: !27, line: 875, baseType: !3180, size: 1280, offset: 6592)
!3180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 1280, elements: !659)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !540, file: !27, line: 877, baseType: !3182, size: 64, offset: 7872)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !540, file: !27, line: 880, baseType: !3185, size: 1088, offset: 7936)
!3185 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3186, line: 72, baseType: !3187)
!3186 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3186, line: 23, size: 1088, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192, !3193, !3196, !3197, !3198, !3199, !3224, !3225, !3226}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3187, file: !3186, line: 28, baseType: !255, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3187, file: !3186, line: 38, baseType: !595, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3187, file: !3186, line: 40, baseType: !182, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3187, file: !3186, line: 43, baseType: !741, size: 320, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3187, file: !3186, line: 44, baseType: !3194, size: 64, offset: 512)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3186, line: 44, flags: DIFlagFwdDecl)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3187, file: !3186, line: 48, baseType: !182, size: 64, offset: 576)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3187, file: !3186, line: 59, baseType: !600, size: 256, offset: 640)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3187, file: !3186, line: 60, baseType: !169, size: 64, offset: 896)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3187, file: !3186, line: 61, baseType: !3200, size: 64, offset: 960)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3202)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3203, line: 13, size: 1216, elements: !3204)
!3203 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3204 = !{!3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3202, file: !3203, line: 14, baseType: !169, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3202, file: !3203, line: 15, baseType: !182, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3202, file: !3203, line: 17, baseType: !182, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3202, file: !3203, line: 17, baseType: !182, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3202, file: !3203, line: 18, baseType: !182, size: 64, offset: 256)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3202, file: !3203, line: 18, baseType: !182, size: 64, offset: 320)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3202, file: !3203, line: 19, baseType: !1859, size: 64, offset: 384)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3202, file: !3203, line: 21, baseType: !1075, size: 64, offset: 448)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3202, file: !3203, line: 23, baseType: !1075, size: 64, offset: 512)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3202, file: !3203, line: 24, baseType: !1075, size: 64, offset: 576)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3202, file: !3203, line: 25, baseType: !1075, size: 64, offset: 640)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3202, file: !3203, line: 26, baseType: !1075, size: 64, offset: 704)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3202, file: !3203, line: 27, baseType: !1075, size: 64, offset: 768)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3202, file: !3203, line: 28, baseType: !1075, size: 64, offset: 832)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3202, file: !3203, line: 29, baseType: !1075, size: 64, offset: 896)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3202, file: !3203, line: 30, baseType: !1075, size: 64, offset: 960)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3202, file: !3203, line: 31, baseType: !1075, size: 64, offset: 1024)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3202, file: !3203, line: 32, baseType: !1075, size: 64, offset: 1088)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3202, file: !3203, line: 33, baseType: !1075, size: 64, offset: 1152)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3187, file: !3186, line: 63, baseType: !204, size: 32, offset: 1024)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3187, file: !3186, line: 69, baseType: !177, size: 16, offset: 1056)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3187, file: !3186, line: 70, baseType: !2172, size: 16, offset: 1072)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !27, line: 882, baseType: !182, size: 64, offset: 9024)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !540, file: !27, line: 885, baseType: !554, size: 32, offset: 9088)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !540, file: !27, line: 886, baseType: !3230, size: 64, offset: 9152)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !540, file: !27, line: 901, baseType: !887, size: 64, offset: 9216)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !540, file: !27, line: 904, baseType: !572, size: 64, offset: 9280)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !540, file: !27, line: 906, baseType: !3235, size: 64, offset: 9344)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !540, file: !27, line: 930, baseType: !204, size: 32, offset: 9408)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !540, file: !27, line: 933, baseType: !204, size: 32, offset: 9440)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !540, file: !27, line: 935, baseType: !3240, size: 64, offset: 9472)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !3241)
!3241 = !{!3242}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3240, file: !68, line: 104, baseType: !3243, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !540, file: !27, line: 940, baseType: !593, size: 64, offset: 9536)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !540, file: !27, line: 942, baseType: !2279, size: 256, offset: 9600)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !537, file: !27, line: 986, baseType: !3248, offset: 10240)
!3248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, elements: !678)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !185, file: !186, line: 882, baseType: !536, size: 64, offset: 9792)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !185, file: !186, line: 884, baseType: !109, size: 32, offset: 9856)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !185, file: !186, line: 885, baseType: !109, size: 32, offset: 9888)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !185, file: !186, line: 886, baseType: !109, size: 32, offset: 9920)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !185, file: !186, line: 888, baseType: !109, size: 32, offset: 9952)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !185, file: !186, line: 890, baseType: !182, size: 64, offset: 9984)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !185, file: !186, line: 893, baseType: !7, size: 32, offset: 10048)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !185, file: !186, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !185, file: !186, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !185, file: !186, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !185, file: !186, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !185, file: !186, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !185, file: !186, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !185, file: !186, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !185, file: !186, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !185, file: !186, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !185, file: !186, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !185, file: !186, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !185, file: !186, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !185, file: !186, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !185, file: !186, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !185, file: !186, line: 969, baseType: !182, size: 64, offset: 10176)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !185, file: !186, line: 971, baseType: !3272, size: 448, offset: 10240)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !3273)
!3273 = !{!3274, !3275, !3280}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3272, file: !62, line: 26, baseType: !182, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3272, file: !62, line: 27, baseType: !3276, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!1075, !3279}
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, scope: !3272, file: !62, line: 28, baseType: !3281, size: 320, offset: 128)
!3281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3272, file: !62, line: 28, size: 320, elements: !3282)
!3282 = !{!3283, !3292, !3317}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3281, file: !62, line: 37, baseType: !3284, size: 320)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3281, file: !62, line: 30, size: 320, elements: !3285)
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3284, file: !62, line: 31, baseType: !170, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3284, file: !62, line: 32, baseType: !171, size: 32, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3284, file: !62, line: 33, baseType: !171, size: 32, offset: 96)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3284, file: !62, line: 34, baseType: !171, size: 32, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3284, file: !62, line: 35, baseType: !255, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3284, file: !62, line: 36, baseType: !170, size: 64, offset: 256)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3281, file: !62, line: 47, baseType: !3293, size: 192)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3281, file: !62, line: 39, size: 192, elements: !3294)
!3294 = !{!3295, !3296, !3297, !3316}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3293, file: !62, line: 40, baseType: !401, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3293, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, scope: !3293, file: !62, line: 42, baseType: !3298, size: 64, offset: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3293, file: !62, line: 42, size: 64, elements: !3299)
!3299 = !{!3300, !3308}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3298, file: !62, line: 43, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3303, line: 7, size: 128, elements: !3304)
!3303 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3304 = !{!3305, !3307}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3302, file: !3303, line: 8, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !403, line: 93, baseType: !273)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3302, file: !3303, line: 9, baseType: !273, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3298, file: !62, line: 44, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3311, line: 7, size: 64, elements: !3312)
!3311 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3312 = !{!3313, !3315}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3310, file: !3311, line: 8, baseType: !3314, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3311, line: 5, baseType: !733)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3310, file: !3311, line: 9, baseType: !733, size: 32, offset: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3293, file: !62, line: 46, baseType: !255, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3281, file: !62, line: 55, baseType: !3318, size: 256)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3281, file: !62, line: 49, size: 256, elements: !3319)
!3319 = !{!3320, !3323, !3324, !3325, !3326}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3318, file: !62, line: 50, baseType: !3321, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3318, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3318, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3318, file: !62, line: 53, baseType: !182, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3318, file: !62, line: 54, baseType: !182, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !185, file: !186, line: 973, baseType: !3328, size: 32, offset: 10688)
!3328 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !181, line: 27, baseType: !3329)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !403, line: 28, baseType: !109)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !185, file: !186, line: 974, baseType: !3328, size: 32, offset: 10720)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !185, file: !186, line: 978, baseType: !182, size: 64, offset: 10752)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !185, file: !186, line: 987, baseType: !184, size: 64, offset: 10816)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !185, file: !186, line: 990, baseType: !184, size: 64, offset: 10880)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !185, file: !186, line: 995, baseType: !260, size: 128, offset: 10944)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !185, file: !186, line: 996, baseType: !260, size: 128, offset: 11072)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !185, file: !186, line: 997, baseType: !184, size: 64, offset: 11200)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !185, file: !186, line: 1005, baseType: !260, size: 128, offset: 11264)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !185, file: !186, line: 1006, baseType: !260, size: 128, offset: 11392)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !185, file: !186, line: 1009, baseType: !642, size: 64, offset: 11520)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !185, file: !186, line: 1010, baseType: !3341, size: 512, offset: 11584)
!3341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 512, elements: !659)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !185, file: !186, line: 1011, baseType: !260, size: 128, offset: 12096)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !185, file: !186, line: 1012, baseType: !260, size: 128, offset: 12224)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !185, file: !186, line: 1014, baseType: !2028, size: 64, offset: 12352)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !185, file: !186, line: 1017, baseType: !2165, size: 64, offset: 12416)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !185, file: !186, line: 1020, baseType: !2165, size: 64, offset: 12480)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !185, file: !186, line: 1023, baseType: !169, size: 64, offset: 12544)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !185, file: !186, line: 1025, baseType: !255, size: 64, offset: 12608)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !185, file: !186, line: 1026, baseType: !255, size: 64, offset: 12672)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !185, file: !186, line: 1031, baseType: !255, size: 64, offset: 12736)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !185, file: !186, line: 1032, baseType: !3352, size: 192, offset: 12800)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !186, line: 324, size: 192, elements: !3353)
!3353 = !{!3354, !3355, !3356}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3352, file: !186, line: 326, baseType: !255, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3352, file: !186, line: 327, baseType: !255, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3352, file: !186, line: 328, baseType: !353, size: 32, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !185, file: !186, line: 1041, baseType: !182, size: 64, offset: 12992)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !185, file: !186, line: 1042, baseType: !182, size: 64, offset: 13056)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !185, file: !186, line: 1045, baseType: !255, size: 64, offset: 13120)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !185, file: !186, line: 1048, baseType: !255, size: 64, offset: 13184)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !185, file: !186, line: 1051, baseType: !182, size: 64, offset: 13248)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !185, file: !186, line: 1052, baseType: !182, size: 64, offset: 13312)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !185, file: !186, line: 1055, baseType: !3364, size: 640, offset: 13376)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3365, line: 132, size: 640, elements: !3366)
!3365 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3366 = !{!3367, !3373, !3374}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3364, file: !3365, line: 133, baseType: !3368, size: 576)
!3368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3369, size: 576, elements: !638)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3365, line: 117, size: 192, elements: !3370)
!3370 = !{!3371, !3372}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3369, file: !3365, line: 118, baseType: !255, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3369, file: !3365, line: 119, baseType: !416, size: 128, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3364, file: !3365, line: 134, baseType: !7, size: 32, offset: 576)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3364, file: !3365, line: 135, baseType: !7, size: 32, offset: 608)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !185, file: !186, line: 1058, baseType: !3376, size: 448, offset: 14016)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3365, line: 144, size: 448, elements: !3377)
!3377 = !{!3378, !3379, !3380}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3376, file: !3365, line: 145, baseType: !580, size: 128, align: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3376, file: !3365, line: 146, baseType: !600, size: 256, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3376, file: !3365, line: 147, baseType: !7, size: 32, offset: 384)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !185, file: !186, line: 1064, baseType: !692, size: 64, offset: 14464)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !185, file: !186, line: 1067, baseType: !692, size: 64, offset: 14528)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !185, file: !186, line: 1070, baseType: !692, size: 64, offset: 14592)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !185, file: !186, line: 1074, baseType: !725, size: 64, offset: 14656)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !185, file: !186, line: 1084, baseType: !3386, size: 128, offset: 14720)
!3386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 128, elements: !2775)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !185, file: !186, line: 1086, baseType: !3388, size: 64, offset: 14848)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !186, line: 55, flags: DIFlagFwdDecl)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !185, file: !186, line: 1089, baseType: !3391, size: 64, offset: 14912)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3392, line: 12, size: 64, elements: !3393)
!3392 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3393 = !{!3394}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3391, file: !3392, line: 13, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3392, line: 8, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !185, file: !186, line: 1090, baseType: !3398, size: 128, offset: 14976)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3399, line: 13, size: 128, elements: !3400)
!3399 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3400 = !{!3401}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3398, file: !3399, line: 14, baseType: !260, size: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !185, file: !186, line: 1097, baseType: !3403, size: 64, offset: 15104)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !186, line: 50, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !185, file: !186, line: 1100, baseType: !3406, size: 64, offset: 15168)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !186, line: 1100, flags: DIFlagFwdDecl)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !185, file: !186, line: 1103, baseType: !3409, size: 64, offset: 15232)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !186, line: 53, flags: DIFlagFwdDecl)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !185, file: !186, line: 1107, baseType: !3412, size: 64, offset: 15296)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3414, line: 35, flags: DIFlagFwdDecl)
!3414 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !185, file: !186, line: 1110, baseType: !3416, size: 64, offset: 15360)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3418, line: 93, size: 8768, elements: !3419)
!3418 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3467, !3476, !3477, !3479, !3480, !3481, !4335, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4373, !4374, !4381, !4391, !4394, !4395, !4398, !4399, !4400, !4401, !4402, !4403}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3417, file: !3418, line: 94, baseType: !199, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3417, file: !3418, line: 95, baseType: !204, size: 32, offset: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3417, file: !3418, line: 96, baseType: !109, size: 32, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3417, file: !3418, line: 97, baseType: !109, size: 32, offset: 96)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3417, file: !3418, line: 98, baseType: !260, size: 128, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3417, file: !3418, line: 100, baseType: !663, size: 192, offset: 256)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3417, file: !3418, line: 103, baseType: !184, size: 64, offset: 448)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3417, file: !3418, line: 106, baseType: !3428, size: 192, offset: 512)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !892, line: 32, size: 192, elements: !3429)
!3429 = !{!3430, !3431}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3428, file: !892, line: 33, baseType: !260, size: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3428, file: !892, line: 34, baseType: !3432, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3433, line: 25, baseType: !3434)
!3433 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3433, line: 23, size: 64, elements: !3435)
!3435 = !{!3436}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3434, file: !3433, line: 24, baseType: !487, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3417, file: !3418, line: 109, baseType: !650, size: 64, offset: 704)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3417, file: !3418, line: 112, baseType: !109, size: 32, offset: 768)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3417, file: !3418, line: 114, baseType: !109, size: 32, offset: 800)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3417, file: !3418, line: 115, baseType: !184, size: 64, offset: 832)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3417, file: !3418, line: 118, baseType: !109, size: 32, offset: 896)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3417, file: !3418, line: 119, baseType: !7, size: 32, offset: 928)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3417, file: !3418, line: 121, baseType: !3444, size: 64, offset: 960)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3418, line: 80, size: 448, elements: !3446)
!3446 = !{!3447, !3448, !3454}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3445, file: !3418, line: 81, baseType: !204, size: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3445, file: !3418, line: 82, baseType: !3449, size: 128, offset: 64)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3418, line: 75, size: 128, elements: !3450)
!3450 = !{!3451, !3452}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3449, file: !3418, line: 76, baseType: !184, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3449, file: !3418, line: 77, baseType: !3453, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3445, file: !3418, line: 83, baseType: !1428, size: 256, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3417, file: !3418, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3417, file: !3418, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3417, file: !3418, line: 138, baseType: !7, size: 32, offset: 1056)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3417, file: !3418, line: 139, baseType: !260, size: 128, offset: 1088)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3417, file: !3418, line: 142, baseType: !328, size: 512, offset: 1216)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3417, file: !3418, line: 143, baseType: !336, size: 64, offset: 1728)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3417, file: !3418, line: 150, baseType: !3462, size: 256, offset: 1792)
!3462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3463, size: 256, elements: !2155)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3418, line: 38, size: 128, elements: !3464)
!3464 = !{!3465, !3466}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3463, file: !3418, line: 39, baseType: !255, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3463, file: !3418, line: 40, baseType: !255, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3417, file: !3418, line: 156, baseType: !3468, size: 192, offset: 2048)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3418, line: 66, size: 192, elements: !3469)
!3469 = !{!3470}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3468, file: !3418, line: 67, baseType: !3471, size: 192)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3418, line: 47, size: 192, elements: !3472)
!3472 = !{!3473, !3474, !3475}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3471, file: !3418, line: 48, baseType: !595, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3471, file: !3418, line: 49, baseType: !595, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3471, file: !3418, line: 50, baseType: !595, size: 64, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3417, file: !3418, line: 160, baseType: !3364, size: 640, offset: 2240)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3417, file: !3418, line: 163, baseType: !3478, size: 256, offset: 2880)
!3478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 256, elements: !659)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3417, file: !3418, line: 169, baseType: !642, size: 64, offset: 3136)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3417, file: !3418, line: 172, baseType: !109, size: 32, offset: 3200)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3417, file: !3418, line: 174, baseType: !3482, size: 64, offset: 3264)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3484, line: 193, size: 5248, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!3485 = !{!3486, !3487, !3488, !3939, !4224, !4225, !4226, !4273, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4290, !4291, !4292, !4293, !4294, !4302, !4311, !4312, !4313, !4314, !4315, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3483, file: !3484, line: 194, baseType: !2013, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3483, file: !3484, line: 195, baseType: !109, size: 32, offset: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3483, file: !3484, line: 196, baseType: !3489, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !3491)
!3491 = !{!3492, !3493, !3494, !3497, !3498, !3551, !3621, !3622, !3623, !3624, !3625, !3632, !3724, !3737, !3747, !3751, !3753, !3754, !3755, !3759, !3766, !3767, !3770, !3773, !3777, !3881, !3882, !3883, !3884, !3885, !3886, !3916, !3917, !3918, !3921, !3924, !3933, !3934, !3935, !3936, !3937, !3938}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3490, file: !94, line: 706, baseType: !1219, size: 512)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3490, file: !94, line: 707, baseType: !3489, size: 64, offset: 512)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3490, file: !94, line: 709, baseType: !3495, size: 64, offset: 576)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3490, file: !94, line: 711, baseType: !804, size: 64, offset: 640)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3490, file: !94, line: 712, baseType: !3499, size: 64, offset: 704)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3501)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !3502)
!3502 = !{!3503, !3504, !3505, !3511, !3516, !3520}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3501, file: !94, line: 90, baseType: !804, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3501, file: !94, line: 91, baseType: !1299, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3501, file: !94, line: 92, baseType: !3506, size: 64, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!109, !3509, !1255}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3490)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3501, file: !94, line: 93, baseType: !3512, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!814, !3509, !3515, !1876, !1877}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3501, file: !94, line: 95, baseType: !3517, size: 64, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{null, !3489}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3501, file: !94, line: 97, baseType: !3521, size: 64, offset: 320)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3523)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !3524)
!3524 = !{!3525, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3523, file: !101, line: 287, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!109, !3489}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3523, file: !101, line: 288, baseType: !3517, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3523, file: !101, line: 289, baseType: !3526, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3523, file: !101, line: 290, baseType: !3526, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3523, file: !101, line: 291, baseType: !3526, size: 64, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3523, file: !101, line: 292, baseType: !3526, size: 64, offset: 320)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3523, file: !101, line: 293, baseType: !3526, size: 64, offset: 384)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3523, file: !101, line: 294, baseType: !3526, size: 64, offset: 448)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3523, file: !101, line: 295, baseType: !3526, size: 64, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3523, file: !101, line: 296, baseType: !3526, size: 64, offset: 576)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3523, file: !101, line: 297, baseType: !3526, size: 64, offset: 640)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3523, file: !101, line: 298, baseType: !3526, size: 64, offset: 704)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3523, file: !101, line: 299, baseType: !3526, size: 64, offset: 768)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3523, file: !101, line: 300, baseType: !3526, size: 64, offset: 832)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3523, file: !101, line: 301, baseType: !3526, size: 64, offset: 896)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3523, file: !101, line: 302, baseType: !3526, size: 64, offset: 960)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3523, file: !101, line: 303, baseType: !3526, size: 64, offset: 1024)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3523, file: !101, line: 304, baseType: !3526, size: 64, offset: 1088)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3523, file: !101, line: 305, baseType: !3526, size: 64, offset: 1152)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3523, file: !101, line: 306, baseType: !3526, size: 64, offset: 1216)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3523, file: !101, line: 307, baseType: !3526, size: 64, offset: 1280)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3523, file: !101, line: 308, baseType: !3526, size: 64, offset: 1344)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3523, file: !101, line: 309, baseType: !3526, size: 64, offset: 1408)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3490, file: !94, line: 714, baseType: !3552, size: 64, offset: 768)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3554)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3555, line: 80, size: 1344, elements: !3556)
!3555 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3562, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3620}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3554, file: !3555, line: 81, baseType: !804, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3554, file: !3555, line: 82, baseType: !804, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3554, file: !3555, line: 83, baseType: !1299, size: 64, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3554, file: !3555, line: 84, baseType: !1299, size: 64, offset: 192)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3554, file: !3555, line: 85, baseType: !1299, size: 64, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3554, file: !3555, line: 87, baseType: !3563, size: 64, offset: 320)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!109, !3489, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573, !3574, !3575, !3579, !3583, !3584, !3585, !3586, !3587, !3595, !3596, !3597, !3598, !3599, !3600}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3567, file: !88, line: 97, baseType: !804, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3567, file: !88, line: 98, baseType: !3552, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3567, file: !88, line: 100, baseType: !1206, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3567, file: !88, line: 101, baseType: !804, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3567, file: !88, line: 103, baseType: !801, size: 8, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3567, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3567, file: !88, line: 106, baseType: !3576, size: 64, offset: 320)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3578)
!3578 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3567, file: !88, line: 107, baseType: !3580, size: 64, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3582)
!3582 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3567, file: !88, line: 109, baseType: !3526, size: 64, offset: 448)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3567, file: !88, line: 110, baseType: !3517, size: 64, offset: 512)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3567, file: !88, line: 111, baseType: !3526, size: 64, offset: 576)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3567, file: !88, line: 112, baseType: !3517, size: 64, offset: 640)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3567, file: !88, line: 113, baseType: !3588, size: 64, offset: 704)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!109, !3489, !3591}
!3591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !3592)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !3593)
!3593 = !{!3594}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3592, file: !101, line: 59, baseType: !109, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3567, file: !88, line: 114, baseType: !3526, size: 64, offset: 768)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3567, file: !88, line: 115, baseType: !1299, size: 64, offset: 832)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3567, file: !88, line: 116, baseType: !1299, size: 64, offset: 896)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3567, file: !88, line: 118, baseType: !3521, size: 64, offset: 960)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3567, file: !88, line: 119, baseType: !3517, size: 64, offset: 1024)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3567, file: !88, line: 121, baseType: !3601, size: 64, offset: 1088)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3554, file: !3555, line: 88, baseType: !3506, size: 64, offset: 384)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3554, file: !3555, line: 89, baseType: !3526, size: 64, offset: 448)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3554, file: !3555, line: 90, baseType: !3517, size: 64, offset: 512)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3554, file: !3555, line: 91, baseType: !3517, size: 64, offset: 576)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3554, file: !3555, line: 92, baseType: !3517, size: 64, offset: 640)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3554, file: !3555, line: 94, baseType: !3526, size: 64, offset: 704)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3554, file: !3555, line: 95, baseType: !3526, size: 64, offset: 768)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3554, file: !3555, line: 97, baseType: !3588, size: 64, offset: 832)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3554, file: !3555, line: 98, baseType: !3526, size: 64, offset: 896)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3554, file: !3555, line: 100, baseType: !3526, size: 64, offset: 960)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3554, file: !3555, line: 102, baseType: !3526, size: 64, offset: 1024)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3554, file: !3555, line: 103, baseType: !3517, size: 64, offset: 1088)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3554, file: !3555, line: 105, baseType: !3521, size: 64, offset: 1152)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3554, file: !3555, line: 107, baseType: !3617, size: 64, offset: 1216)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3619)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3555, line: 107, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3554, file: !3555, line: 109, baseType: !801, size: 8, offset: 1280)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3490, file: !94, line: 715, baseType: !3566, size: 64, offset: 832)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3490, file: !94, line: 717, baseType: !169, size: 64, offset: 896)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3490, file: !94, line: 719, baseType: !169, size: 64, offset: 960)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3490, file: !94, line: 721, baseType: !600, size: 256, offset: 1024)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3490, file: !94, line: 725, baseType: !3626, size: 448, offset: 1280)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !3627)
!3627 = !{!3628, !3629, !3630, !3631}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3626, file: !94, line: 518, baseType: !260, size: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3626, file: !94, line: 519, baseType: !260, size: 128, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3626, file: !94, line: 520, baseType: !260, size: 128, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3626, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3490, file: !94, line: 726, baseType: !3633, size: 2496, offset: 1728)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3717, !3721}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3633, file: !101, line: 664, baseType: !3591, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3633, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3633, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3633, file: !101, line: 667, baseType: !801, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3633, file: !101, line: 668, baseType: !801, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3633, file: !101, line: 669, baseType: !801, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3633, file: !101, line: 670, baseType: !801, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3633, file: !101, line: 671, baseType: !801, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3633, file: !101, line: 672, baseType: !801, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3633, file: !101, line: 673, baseType: !801, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3633, file: !101, line: 674, baseType: !801, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3633, file: !101, line: 675, baseType: !171, size: 32, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3633, file: !101, line: 676, baseType: !554, size: 32, offset: 96)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3633, file: !101, line: 678, baseType: !260, size: 128, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3633, file: !101, line: 679, baseType: !1428, size: 256, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3633, file: !101, line: 680, baseType: !3651, size: 64, offset: 512)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3653, line: 43, size: 1536, elements: !3654)
!3653 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3654 = !{!3655, !3656, !3657, !3658, !3659, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3652, file: !3653, line: 44, baseType: !804, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3652, file: !3653, line: 45, baseType: !109, size: 32, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3652, file: !3653, line: 46, baseType: !260, size: 128, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3652, file: !3653, line: 47, baseType: !554, size: 32, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3652, file: !3653, line: 48, baseType: !3660, size: 64, offset: 320)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3652, file: !3653, line: 49, baseType: !2267, size: 320, offset: 384)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3652, file: !3653, line: 50, baseType: !182, size: 64, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3652, file: !3653, line: 51, baseType: !336, size: 64, offset: 768)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3652, file: !3653, line: 52, baseType: !336, size: 64, offset: 832)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3652, file: !3653, line: 53, baseType: !336, size: 64, offset: 896)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3652, file: !3653, line: 54, baseType: !336, size: 64, offset: 960)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3652, file: !3653, line: 55, baseType: !336, size: 64, offset: 1024)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3652, file: !3653, line: 56, baseType: !182, size: 64, offset: 1088)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3652, file: !3653, line: 57, baseType: !182, size: 64, offset: 1152)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3652, file: !3653, line: 58, baseType: !182, size: 64, offset: 1216)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3652, file: !3653, line: 59, baseType: !182, size: 64, offset: 1280)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3652, file: !3653, line: 60, baseType: !182, size: 64, offset: 1344)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3652, file: !3653, line: 61, baseType: !3489, size: 64, offset: 1408)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3652, file: !3653, line: 62, baseType: !801, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3652, file: !3653, line: 63, baseType: !801, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3633, file: !101, line: 681, baseType: !801, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3633, file: !101, line: 682, baseType: !801, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3633, file: !101, line: 683, baseType: !801, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3633, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3633, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3633, file: !101, line: 690, baseType: !328, size: 512, offset: 640)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3633, file: !101, line: 691, baseType: !255, size: 64, offset: 1152)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3633, file: !101, line: 692, baseType: !2279, size: 256, offset: 1216)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3633, file: !101, line: 693, baseType: !663, size: 192, offset: 1472)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3633, file: !101, line: 694, baseType: !3660, size: 64, offset: 1664)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3633, file: !101, line: 695, baseType: !204, size: 32, offset: 1728)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3633, file: !101, line: 696, baseType: !204, size: 32, offset: 1760)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3633, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3633, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3633, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3633, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3633, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3633, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3633, file: !101, line: 703, baseType: !801, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3633, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3633, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3633, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3633, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3633, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3633, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3633, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3633, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3633, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3633, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3633, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3633, file: !101, line: 715, baseType: !255, size: 64, offset: 2048)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3633, file: !101, line: 716, baseType: !255, size: 64, offset: 2112)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3633, file: !101, line: 717, baseType: !255, size: 64, offset: 2176)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3633, file: !101, line: 718, baseType: !255, size: 64, offset: 2240)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3633, file: !101, line: 720, baseType: !3712, size: 64, offset: 2304)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !3714)
!3714 = !{!3715, !3716}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3713, file: !101, line: 633, baseType: !554, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3713, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3633, file: !101, line: 721, baseType: !3718, size: 64, offset: 2368)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{null, !3489, !733}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3633, file: !101, line: 722, baseType: !3722, size: 64, offset: 2432)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3490, file: !94, line: 727, baseType: !3725, size: 64, offset: 4224)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !3727)
!3727 = !{!3728, !3729, !3730, !3734, !3735, !3736}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3726, file: !101, line: 743, baseType: !3523, size: 1472)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3726, file: !101, line: 744, baseType: !3526, size: 64, offset: 1472)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3726, file: !101, line: 745, baseType: !3731, size: 64, offset: 1536)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{null, !3489, !801}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3726, file: !101, line: 746, baseType: !3526, size: 64, offset: 1600)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3726, file: !101, line: 747, baseType: !3517, size: 64, offset: 1664)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3726, file: !101, line: 748, baseType: !3517, size: 64, offset: 1728)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3490, file: !94, line: 736, baseType: !3738, size: 128, offset: 4288)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !3739)
!3739 = !{!3740, !3744}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3738, file: !94, line: 531, baseType: !3741, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3743, line: 13, flags: DIFlagFwdDecl)
!3743 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3738, file: !94, line: 532, baseType: !3745, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3490, file: !94, line: 738, baseType: !3748, size: 64, offset: 4416)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3750)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3490, file: !94, line: 740, baseType: !3752, size: 64, offset: 4480)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3490, file: !94, line: 741, baseType: !255, size: 64, offset: 4544)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3490, file: !94, line: 746, baseType: !255, size: 64, offset: 4608)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3490, file: !94, line: 747, baseType: !3756, size: 64, offset: 4672)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3758)
!3758 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3490, file: !94, line: 749, baseType: !3760, size: 64, offset: 4736)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !3762)
!3762 = !{!3763, !3764, !3765}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3761, file: !94, line: 433, baseType: !7, size: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3761, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3761, file: !94, line: 435, baseType: !182, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3490, file: !94, line: 751, baseType: !260, size: 128, offset: 4800)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3490, file: !94, line: 762, baseType: !3768, size: 64, offset: 4928)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3490, file: !94, line: 770, baseType: !3771, offset: 4992)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3772, line: 5, elements: !565)
!3772 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3490, file: !94, line: 772, baseType: !3774, size: 64, offset: 4992)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3776, line: 18, flags: DIFlagFwdDecl)
!3776 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3490, file: !94, line: 773, baseType: !3778, size: 64, offset: 5056)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3780, line: 41, size: 512, elements: !3781)
!3780 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3781 = !{!3782, !3783, !3877, !3878, !3879, !3880}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3779, file: !3780, line: 42, baseType: !3778, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3779, file: !3780, line: 43, baseType: !3784, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3786)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3780, line: 125, size: 1408, elements: !3787)
!3787 = !{!3788, !3792, !3796, !3802, !3806, !3807, !3812, !3816, !3820, !3824, !3828, !3829, !3833, !3837, !3841, !3852, !3853, !3854, !3855, !3865, !3869, !3873}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3786, file: !3780, line: 126, baseType: !3789, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!3778, !3778}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3786, file: !3780, line: 127, baseType: !3793, size: 64, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !3778}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3786, file: !3780, line: 128, baseType: !3797, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!801, !3800}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3779)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3786, file: !3780, line: 129, baseType: !3803, size: 64, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!1859, !3800, !3509}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3786, file: !3780, line: 131, baseType: !3797, size: 64, offset: 256)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3786, file: !3780, line: 133, baseType: !3808, size: 64, offset: 320)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!3811, !3800}
!3811 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3780, line: 132, flags: DIFlagFwdDecl)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3786, file: !3780, line: 134, baseType: !3813, size: 64, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!801, !3800, !804}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3786, file: !3780, line: 136, baseType: !3817, size: 64, offset: 448)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!109, !3800, !804, !7, !169, !1117}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3786, file: !3780, line: 141, baseType: !3821, size: 64, offset: 512)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!109, !3800, !804, !2355, !1117}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3786, file: !3780, line: 144, baseType: !3825, size: 64, offset: 576)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!804, !3800}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3786, file: !3780, line: 145, baseType: !3825, size: 64, offset: 640)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3786, file: !3780, line: 146, baseType: !3830, size: 64, offset: 704)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!3778, !3800}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3786, file: !3780, line: 148, baseType: !3834, size: 64, offset: 768)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!3778, !3800, !3778}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3786, file: !3780, line: 151, baseType: !3838, size: 64, offset: 832)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!3778, !3800, !804}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3786, file: !3780, line: 153, baseType: !3842, size: 64, offset: 896)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!109, !3800, !804, !804, !7, !7, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3780, line: 94, size: 640, elements: !3847)
!3847 = !{!3848, !3849, !3850}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3846, file: !3780, line: 95, baseType: !3778, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3846, file: !3780, line: 96, baseType: !7, size: 32, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3846, file: !3780, line: 97, baseType: !3851, size: 512, offset: 128)
!3851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 512, elements: !397)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3786, file: !3780, line: 158, baseType: !3834, size: 64, offset: 960)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3786, file: !3780, line: 161, baseType: !3830, size: 64, offset: 1024)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3786, file: !3780, line: 163, baseType: !3789, size: 64, offset: 1088)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3786, file: !3780, line: 164, baseType: !3856, size: 64, offset: 1152)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!109, !3800, !3859}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3780, line: 73, size: 128, elements: !3861)
!3861 = !{!3862, !3863, !3864}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3860, file: !3780, line: 74, baseType: !7, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3860, file: !3780, line: 75, baseType: !7, size: 32, offset: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3860, file: !3780, line: 76, baseType: !3800, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3786, file: !3780, line: 166, baseType: !3866, size: 64, offset: 1216)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!169, !3778, !109}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3786, file: !3780, line: 167, baseType: !3870, size: 64, offset: 1280)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!109, !3800, !7}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3786, file: !3780, line: 168, baseType: !3874, size: 64, offset: 1344)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!109, !3778}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3779, file: !3780, line: 44, baseType: !3489, size: 64, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3779, file: !3780, line: 45, baseType: !260, size: 128, offset: 192)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3779, file: !3780, line: 46, baseType: !260, size: 128, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3779, file: !3780, line: 47, baseType: !370, size: 8, offset: 448)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3490, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3490, file: !94, line: 778, baseType: !1035, size: 32, offset: 5152)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3490, file: !94, line: 779, baseType: !171, size: 32, offset: 5184)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3490, file: !94, line: 781, baseType: !554, size: 32, offset: 5216)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3490, file: !94, line: 782, baseType: !260, size: 128, offset: 5248)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3490, file: !94, line: 784, baseType: !3887, size: 64, offset: 5376)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3889)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3890, line: 52, size: 768, elements: !3891)
!3890 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3891 = !{!3892, !3893, !3894, !3895, !3896, !3900, !3904, !3905, !3906, !3907, !3911, !3915}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3889, file: !3890, line: 53, baseType: !804, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3889, file: !3890, line: 55, baseType: !1299, size: 64, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3889, file: !3890, line: 56, baseType: !1299, size: 64, offset: 128)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3889, file: !3890, line: 58, baseType: !3506, size: 64, offset: 192)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3889, file: !3890, line: 59, baseType: !3897, size: 64, offset: 256)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!814, !3509, !3515}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3889, file: !3890, line: 61, baseType: !3901, size: 64, offset: 320)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{null, !3887}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3889, file: !3890, line: 62, baseType: !3517, size: 64, offset: 384)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3889, file: !3890, line: 64, baseType: !3526, size: 64, offset: 448)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3889, file: !3890, line: 66, baseType: !1842, size: 64, offset: 512)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3889, file: !3890, line: 67, baseType: !3908, size: 64, offset: 576)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!1859, !3509}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3889, file: !3890, line: 69, baseType: !3912, size: 64, offset: 640)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{null, !3509, !1876, !1877}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3889, file: !3890, line: 71, baseType: !3521, size: 64, offset: 704)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3490, file: !94, line: 785, baseType: !1299, size: 64, offset: 5440)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3490, file: !94, line: 787, baseType: !3517, size: 64, offset: 5504)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3490, file: !94, line: 788, baseType: !3919, size: 64, offset: 5568)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3490, file: !94, line: 789, baseType: !3922, size: 64, offset: 5632)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3490, file: !94, line: 791, baseType: !3925, size: 64, offset: 5696)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !3927)
!3927 = !{!3928, !3929, !3930, !3931, !3932}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3926, file: !94, line: 598, baseType: !116, size: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3926, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3926, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3926, file: !94, line: 601, baseType: !801, size: 8, offset: 96)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3926, file: !94, line: 602, baseType: !801, size: 8, offset: 104)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3490, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3490, file: !94, line: 795, baseType: !801, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3490, file: !94, line: 796, baseType: !801, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3490, file: !94, line: 797, baseType: !801, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3490, file: !94, line: 798, baseType: !801, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3490, file: !94, line: 799, baseType: !801, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3483, file: !3484, line: 197, baseType: !3940, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3942, line: 441, size: 1472, elements: !3943)
!3942 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!3943 = !{!3944, !3945, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3975, !3976, !3979, !3980, !3982, !4103, !4106, !4107, !4223}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3941, file: !3942, line: 442, baseType: !2013, size: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3941, file: !3942, line: 443, baseType: !3946, size: 64, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3941, file: !3942, line: 444, baseType: !1206, size: 64, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3941, file: !3942, line: 445, baseType: !804, size: 64, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3941, file: !3942, line: 446, baseType: !804, size: 64, offset: 256)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3941, file: !3942, line: 447, baseType: !109, size: 32, offset: 320)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3941, file: !3942, line: 448, baseType: !109, size: 32, offset: 352)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3941, file: !3942, line: 449, baseType: !109, size: 32, offset: 384)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3941, file: !3942, line: 450, baseType: !7, size: 32, offset: 416)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3941, file: !3942, line: 451, baseType: !769, size: 16, offset: 448)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3941, file: !3942, line: 452, baseType: !769, size: 16, offset: 464)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3941, file: !3942, line: 453, baseType: !3957, size: 352, offset: 480)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !3958, line: 30, size: 352, elements: !3959)
!3958 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!3959 = !{!3960, !3962, !3963, !3964, !3965, !3968, !3972, !3974}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3957, file: !3958, line: 31, baseType: !3961, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !3958, line: 7, baseType: !7)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3957, file: !3958, line: 32, baseType: !3961, size: 32, offset: 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3957, file: !3958, line: 33, baseType: !3961, size: 32, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3957, file: !3958, line: 34, baseType: !3961, size: 32, offset: 96)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3957, file: !3958, line: 35, baseType: !3966, size: 8, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !3967, line: 5, baseType: !372)
!3967 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3957, file: !3958, line: 36, baseType: !3969, size: 152, offset: 136)
!3969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3966, size: 152, elements: !3970)
!3970 = !{!3971}
!3971 = !DISubrange(count: 19)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3957, file: !3958, line: 37, baseType: !3973, size: 32, offset: 288)
!3973 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !3967, line: 6, baseType: !7)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3957, file: !3958, line: 38, baseType: !3973, size: 32, offset: 320)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3941, file: !3942, line: 454, baseType: !182, size: 64, offset: 832)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3941, file: !3942, line: 455, baseType: !3977, size: 64, offset: 896)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3942, line: 455, flags: DIFlagFwdDecl)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3941, file: !3942, line: 456, baseType: !3940, size: 64, offset: 960)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3941, file: !3942, line: 461, baseType: !3981, size: 64, offset: 1024)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3941, file: !3942, line: 462, baseType: !3983, size: 64, offset: 1088)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !3986, line: 101, size: 3008, elements: !3987)
!3986 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!3987 = !{!3988, !4020, !4021, !4022, !4044, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4072, !4098, !4099, !4100, !4101, !4102}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3985, file: !3986, line: 102, baseType: !3989, size: 1088)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !3990, line: 35, size: 1088, elements: !3991)
!3990 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!3991 = !{!3992, !4009, !4010, !4011, !4012, !4013, !4017, !4018, !4019}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3989, file: !3990, line: 36, baseType: !3993, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !3990, line: 10, size: 256, elements: !3995)
!3995 = !{!3996, !4001, !4002, !4003, !4004, !4005, !4006, !4007}
!3996 = !DIDerivedType(tag: DW_TAG_member, scope: !3994, file: !3990, line: 11, baseType: !3997, size: 64)
!3997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3994, file: !3990, line: 11, size: 64, elements: !3998)
!3998 = !{!3999, !4000}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3997, file: !3990, line: 12, baseType: !3993, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3997, file: !3990, line: 13, baseType: !216, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3994, file: !3990, line: 15, baseType: !7, size: 32, offset: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3994, file: !3990, line: 16, baseType: !7, size: 32, offset: 96)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !3994, file: !3990, line: 17, baseType: !7, size: 32, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3994, file: !3990, line: 18, baseType: !7, size: 32, offset: 160)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3994, file: !3990, line: 19, baseType: !7, size: 32, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3994, file: !3990, line: 20, baseType: !801, size: 8, offset: 224)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3994, file: !3990, line: 22, baseType: !4008, align: 64, offset: 256)
!4008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, elements: !678)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3989, file: !3990, line: 37, baseType: !2279, size: 256, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3989, file: !3990, line: 38, baseType: !600, size: 256, offset: 320)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3989, file: !3990, line: 39, baseType: !204, size: 32, offset: 576)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !3989, file: !3990, line: 40, baseType: !3994, size: 256, offset: 640)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3989, file: !3990, line: 41, baseType: !4014, size: 64, offset: 896)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !217, line: 56, size: 64, elements: !4015)
!4015 = !{!4016}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4014, file: !217, line: 57, baseType: !220, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !3989, file: !3990, line: 42, baseType: !204, size: 32, offset: 960)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !3989, file: !3990, line: 43, baseType: !109, size: 32, offset: 992)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3989, file: !3990, line: 44, baseType: !3993, size: 64, offset: 1024)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3985, file: !3986, line: 103, baseType: !3482, size: 64, offset: 1088)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !3985, file: !3986, line: 104, baseType: !3482, size: 64, offset: 1152)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3985, file: !3986, line: 105, baseType: !4023, size: 64, offset: 1216)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4025)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !3986, line: 33, size: 320, elements: !4026)
!4026 = !{!4027, !4031, !4035, !4039, !4043}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !4025, file: !3986, line: 34, baseType: !4028, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!801, !3984}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !4025, file: !3986, line: 35, baseType: !4032, size: 64, offset: 64)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{null, !3984, !801}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4025, file: !3986, line: 36, baseType: !4036, size: 64, offset: 128)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{null, !3984}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4025, file: !3986, line: 37, baseType: !4040, size: 64, offset: 192)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!109, !3984, !3482}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !4025, file: !3986, line: 38, baseType: !4036, size: 64, offset: 256)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !3985, file: !3986, line: 106, baseType: !4045, size: 64, offset: 1280)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4047)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !3986, line: 41, size: 192, elements: !4048)
!4048 = !{!4049, !4055, !4059}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4047, file: !3986, line: 42, baseType: !4050, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!1117, !3984, !4053, !4053, !1117}
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4047, file: !3986, line: 44, baseType: !4056, size: 64, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{null, !3984, !4053, !4053, !1117}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4047, file: !3986, line: 46, baseType: !4036, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3985, file: !3986, line: 107, baseType: !554, size: 32, offset: 1344)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !3985, file: !3986, line: 108, baseType: !109, size: 32, offset: 1376)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3985, file: !3986, line: 109, baseType: !109, size: 32, offset: 1408)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !3985, file: !3986, line: 110, baseType: !663, size: 192, offset: 1472)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !3985, file: !3986, line: 111, baseType: !663, size: 192, offset: 1664)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3985, file: !3986, line: 112, baseType: !182, size: 64, offset: 1856)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !3985, file: !3986, line: 113, baseType: !182, size: 64, offset: 1920)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !3985, file: !3986, line: 114, baseType: !372, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3985, file: !3986, line: 115, baseType: !600, size: 256, offset: 2048)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !3985, file: !3986, line: 116, baseType: !600, size: 256, offset: 2304)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !3985, file: !3986, line: 117, baseType: !4071, size: 64, offset: 2560)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !3985, file: !3986, line: 118, baseType: !4073, size: 192, offset: 2624)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3985, file: !3986, line: 118, size: 192, elements: !4074)
!4074 = !{!4075, !4096}
!4075 = !DIDerivedType(tag: DW_TAG_member, scope: !4073, file: !3986, line: 118, baseType: !4076, size: 192)
!4076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4073, file: !3986, line: 118, size: 192, elements: !4077)
!4077 = !{!4078, !4087, !4088, !4089, !4094, !4095}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !4076, file: !3986, line: 118, baseType: !4079, size: 192)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !4080, line: 44, size: 192, elements: !4081)
!4080 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!4081 = !{!4082, !4083, !4084, !4085, !4086}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4079, file: !4080, line: 45, baseType: !7, size: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4079, file: !4080, line: 46, baseType: !7, size: 32, offset: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4079, file: !4080, line: 47, baseType: !7, size: 32, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !4079, file: !4080, line: 48, baseType: !7, size: 32, offset: 96)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4079, file: !4080, line: 49, baseType: !169, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4076, file: !3986, line: 118, baseType: !4071, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !4076, file: !3986, line: 118, baseType: !957, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !4076, file: !3986, line: 118, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, elements: !4092)
!4092 = !{!4093}
!4093 = !DISubrange(count: 0)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4076, file: !3986, line: 118, baseType: !4071, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !4076, file: !3986, line: 118, baseType: !957, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4073, file: !3986, line: 118, baseType: !4097, offset: 192)
!4097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, elements: !4092)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3985, file: !3986, line: 119, baseType: !7, size: 32, offset: 2816)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3985, file: !3986, line: 120, baseType: !7, size: 32, offset: 2848)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !3985, file: !3986, line: 121, baseType: !109, size: 32, offset: 2880)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3985, file: !3986, line: 122, baseType: !2013, size: 32, offset: 2912)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !3985, file: !3986, line: 123, baseType: !169, size: 64, offset: 2944)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3941, file: !3942, line: 463, baseType: !4104, size: 64, offset: 1152)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3941, file: !3942, line: 464, baseType: !169, size: 64, offset: 1216)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3941, file: !3942, line: 470, baseType: !4108, size: 64, offset: 1280)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4110)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3942, line: 357, size: 2176, elements: !4111)
!4111 = !{!4112, !4116, !4120, !4124, !4128, !4132, !4136, !4137, !4141, !4145, !4146, !4150, !4151, !4155, !4159, !4165, !4166, !4167, !4168, !4169, !4170, !4174, !4175, !4176, !4177, !4181, !4185, !4189, !4193, !4205, !4211, !4217, !4218, !4222}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !4110, file: !3942, line: 358, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!3482, !3940, !572, !109}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !4110, file: !3942, line: 360, baseType: !4117, size: 64, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!109, !3940, !3482}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4110, file: !3942, line: 361, baseType: !4121, size: 64, offset: 128)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{null, !3940, !3482}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4110, file: !3942, line: 362, baseType: !4125, size: 64, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!109, !3482, !572}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4110, file: !3942, line: 363, baseType: !4129, size: 64, offset: 256)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !3482, !572}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4110, file: !3942, line: 364, baseType: !4133, size: 64, offset: 320)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{null, !3482}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4110, file: !3942, line: 365, baseType: !4133, size: 64, offset: 384)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4110, file: !3942, line: 366, baseType: !4138, size: 64, offset: 448)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!1114, !3482, !4053, !1117}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !4110, file: !3942, line: 367, baseType: !4142, size: 64, offset: 512)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!109, !3482, !370}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !4110, file: !3942, line: 368, baseType: !4133, size: 64, offset: 576)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !4110, file: !3942, line: 369, baseType: !4147, size: 64, offset: 640)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!7, !3482}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !4110, file: !3942, line: 370, baseType: !4147, size: 64, offset: 704)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4110, file: !3942, line: 371, baseType: !4152, size: 64, offset: 768)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!109, !3482, !7, !182}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4110, file: !3942, line: 373, baseType: !4156, size: 64, offset: 832)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!1075, !3482, !7, !182}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4110, file: !3942, line: 375, baseType: !4160, size: 64, offset: 896)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{null, !3482, !4163}
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3957)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4110, file: !3942, line: 376, baseType: !4133, size: 64, offset: 960)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !4110, file: !3942, line: 377, baseType: !4133, size: 64, offset: 1024)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4110, file: !3942, line: 378, baseType: !4133, size: 64, offset: 1088)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4110, file: !3942, line: 379, baseType: !4133, size: 64, offset: 1152)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4110, file: !3942, line: 380, baseType: !4133, size: 64, offset: 1216)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !4110, file: !3942, line: 381, baseType: !4171, size: 64, offset: 1280)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!109, !3482, !109}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4110, file: !3942, line: 382, baseType: !4133, size: 64, offset: 1344)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !4110, file: !3942, line: 383, baseType: !4171, size: 64, offset: 1408)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !4110, file: !3942, line: 384, baseType: !4133, size: 64, offset: 1472)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !4110, file: !3942, line: 385, baseType: !4178, size: 64, offset: 1536)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{null, !3482, !109}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !4110, file: !3942, line: 386, baseType: !4182, size: 64, offset: 1600)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{null, !3482, !787}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !4110, file: !3942, line: 387, baseType: !4186, size: 64, offset: 1664)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!109, !3482}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !4110, file: !3942, line: 388, baseType: !4190, size: 64, offset: 1728)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!109, !3482, !7, !7}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !4110, file: !3942, line: 390, baseType: !4194, size: 64, offset: 1792)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!109, !3482, !4197}
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !4199, line: 15, size: 64, elements: !4200)
!4199 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!4200 = !{!4201, !4202, !4203, !4204}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !4198, file: !4199, line: 16, baseType: !179, size: 16)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !4198, file: !4199, line: 17, baseType: !179, size: 16, offset: 16)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !4198, file: !4199, line: 18, baseType: !179, size: 16, offset: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !4198, file: !4199, line: 19, baseType: !179, size: 16, offset: 48)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !4110, file: !3942, line: 391, baseType: !4206, size: 64, offset: 1856)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!109, !3482, !4209}
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3942, line: 16, flags: DIFlagFwdDecl)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !4110, file: !3942, line: 393, baseType: !4212, size: 64, offset: 1920)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!109, !3482, !4215}
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3942, line: 17, flags: DIFlagFwdDecl)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !4110, file: !3942, line: 394, baseType: !4212, size: 64, offset: 1984)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4110, file: !3942, line: 395, baseType: !4219, size: 64, offset: 2048)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{null, !3482, !1923}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !4110, file: !3942, line: 401, baseType: !1954, size: 64, offset: 2112)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3941, file: !3942, line: 471, baseType: !260, size: 128, offset: 1344)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3483, file: !3484, line: 198, baseType: !3984, size: 64, offset: 192)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3483, file: !3484, line: 199, baseType: !4108, size: 64, offset: 256)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !3483, file: !3484, line: 201, baseType: !4227, size: 64, offset: 320)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !4229, line: 269, size: 128, elements: !4230)
!4229 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!4230 = !{!4231, !4272}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4228, file: !4229, line: 270, baseType: !4232, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !4229, line: 231, size: 1152, elements: !4234)
!4234 = !{!4235, !4236, !4237, !4238, !4239, !4240, !4245, !4249, !4250, !4251, !4252, !4256, !4257, !4261, !4262, !4266, !4270, !4271}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4233, file: !4229, line: 232, baseType: !814, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4233, file: !4229, line: 233, baseType: !109, size: 32, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4233, file: !4229, line: 238, baseType: !4186, size: 64, offset: 128)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4233, file: !4229, line: 239, baseType: !4133, size: 64, offset: 192)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4233, file: !4229, line: 240, baseType: !4133, size: 64, offset: 256)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4233, file: !4229, line: 241, baseType: !4241, size: 64, offset: 320)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!1114, !3482, !572, !4244, !1117, !1731, !182}
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4233, file: !4229, line: 243, baseType: !4246, size: 64, offset: 384)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!1114, !3482, !572, !4053, !1117}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4233, file: !4229, line: 245, baseType: !4152, size: 64, offset: 448)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4233, file: !4229, line: 247, baseType: !4152, size: 64, offset: 512)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4233, file: !4229, line: 249, baseType: !4160, size: 64, offset: 576)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4233, file: !4229, line: 250, baseType: !4253, size: 64, offset: 640)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!1991, !3482, !572, !1993}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4233, file: !4229, line: 252, baseType: !4133, size: 64, offset: 704)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4233, file: !4229, line: 257, baseType: !4258, size: 64, offset: 768)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{null, !3482, !4053, !4053, !1117}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4233, file: !4229, line: 259, baseType: !4133, size: 64, offset: 832)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !4233, file: !4229, line: 260, baseType: !4263, size: 64, offset: 896)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{null, !3482, !801}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !4233, file: !4229, line: 261, baseType: !4267, size: 64, offset: 960)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!1117, !3482, !4053, !4053, !1117}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4233, file: !4229, line: 263, baseType: !4258, size: 64, offset: 1024)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4233, file: !4229, line: 266, baseType: !1206, size: 64, offset: 1088)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4228, file: !4229, line: 271, baseType: !3482, size: 64, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !3483, file: !3484, line: 202, baseType: !4274, size: 384, offset: 384)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !4229, line: 17, size: 384, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279, !4280}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4274, file: !4229, line: 18, baseType: !593, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4274, file: !4229, line: 19, baseType: !353, size: 32, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !4274, file: !4229, line: 20, baseType: !7, size: 32, offset: 96)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !4274, file: !4229, line: 21, baseType: !260, size: 128, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !4274, file: !4229, line: 22, baseType: !260, size: 128, offset: 256)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !3483, file: !3484, line: 204, baseType: !600, size: 256, offset: 768)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !3483, file: !3484, line: 205, baseType: !600, size: 256, offset: 1024)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !3483, file: !3484, line: 206, baseType: !600, size: 256, offset: 1280)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !3483, file: !3484, line: 207, baseType: !741, size: 320, offset: 1536)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !3483, file: !3484, line: 208, baseType: !600, size: 256, offset: 1856)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3483, file: !3484, line: 209, baseType: !3957, size: 352, offset: 2112)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !3483, file: !3484, line: 209, baseType: !3957, size: 352, offset: 2464)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3483, file: !3484, line: 210, baseType: !4289, size: 512, offset: 2816)
!4289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 512, elements: !1262)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3483, file: !3484, line: 211, baseType: !182, size: 64, offset: 3328)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3483, file: !3484, line: 212, baseType: !109, size: 32, offset: 3392)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !3483, file: !3484, line: 213, baseType: !7, size: 32, offset: 3424)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !3483, file: !3484, line: 214, baseType: !4198, size: 64, offset: 3456)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !3483, file: !3484, line: 221, baseType: !4295, size: 64, align: 64, offset: 3520)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3483, file: !3484, line: 216, size: 64, align: 64, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4295, file: !3484, line: 217, baseType: !554, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !4295, file: !3484, line: 218, baseType: !801, size: 8, offset: 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !4295, file: !3484, line: 219, baseType: !801, size: 8, offset: 40)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4295, file: !3484, line: 220, baseType: !4301, offset: 64)
!4301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, elements: !4092)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3483, file: !3484, line: 230, baseType: !4303, size: 192, align: 64, offset: 3584)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3483, file: !3484, line: 223, size: 192, align: 64, elements: !4304)
!4304 = !{!4305, !4306, !4307, !4308, !4309, !4310}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !4303, file: !3484, line: 224, baseType: !642, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !4303, file: !3484, line: 225, baseType: !642, size: 64, offset: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4303, file: !3484, line: 226, baseType: !554, size: 32, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !4303, file: !3484, line: 227, baseType: !372, size: 8, offset: 160)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !4303, file: !3484, line: 228, baseType: !801, size: 8, offset: 168)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4303, file: !3484, line: 229, baseType: !4301, offset: 192)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !3483, file: !3484, line: 232, baseType: !801, size: 8, offset: 3776)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !3483, file: !3484, line: 233, baseType: !801, size: 8, offset: 3784)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !3483, file: !3484, line: 234, baseType: !109, size: 32, offset: 3808)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3483, file: !3484, line: 236, baseType: !3482, size: 64, offset: 3840)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3483, file: !3484, line: 237, baseType: !4316, size: 64, offset: 3904)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !4318)
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4317, file: !14, line: 1084, baseType: !619, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4317, file: !14, line: 1085, baseType: !109, size: 32, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4317, file: !14, line: 1086, baseType: !109, size: 32, offset: 96)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4317, file: !14, line: 1087, baseType: !4316, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4317, file: !14, line: 1088, baseType: !572, size: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4317, file: !14, line: 1089, baseType: !580, size: 128, align: 64, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3483, file: !3484, line: 238, baseType: !663, size: 192, offset: 3968)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3483, file: !3484, line: 239, baseType: !663, size: 192, offset: 4160)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !3483, file: !3484, line: 240, baseType: !2279, size: 256, offset: 4352)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !3483, file: !3484, line: 241, baseType: !169, size: 64, offset: 4608)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3483, file: !3484, line: 242, baseType: !169, size: 64, offset: 4672)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !3483, file: !3484, line: 243, baseType: !554, size: 32, offset: 4736)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !3483, file: !3484, line: 244, baseType: !109, size: 32, offset: 4768)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !3483, file: !3484, line: 245, baseType: !4071, size: 64, offset: 4800)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !3483, file: !3484, line: 247, baseType: !260, size: 128, offset: 4864)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !3483, file: !3484, line: 250, baseType: !2279, size: 256, offset: 4992)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3417, file: !3418, line: 185, baseType: !4336, size: 64, offset: 3328)
!4336 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !406, line: 860, baseType: !4337)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 853, size: 64, elements: !4338)
!4338 = !{!4339, !4340}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4337, file: !406, line: 858, baseType: !931, size: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4337, file: !406, line: 859, baseType: !554, size: 32, offset: 32)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3417, file: !3418, line: 186, baseType: !255, size: 64, offset: 3392)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3417, file: !3418, line: 186, baseType: !255, size: 64, offset: 3456)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3417, file: !3418, line: 186, baseType: !255, size: 64, offset: 3520)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3417, file: !3418, line: 186, baseType: !255, size: 64, offset: 3584)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3417, file: !3418, line: 187, baseType: !255, size: 64, offset: 3648)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3417, file: !3418, line: 188, baseType: !255, size: 64, offset: 3712)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3417, file: !3418, line: 189, baseType: !3352, size: 192, offset: 3776)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3417, file: !3418, line: 190, baseType: !182, size: 64, offset: 3968)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3417, file: !3418, line: 190, baseType: !182, size: 64, offset: 4032)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3417, file: !3418, line: 190, baseType: !182, size: 64, offset: 4096)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3417, file: !3418, line: 190, baseType: !182, size: 64, offset: 4160)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3417, file: !3418, line: 191, baseType: !182, size: 64, offset: 4224)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3417, file: !3418, line: 191, baseType: !182, size: 64, offset: 4288)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3417, file: !3418, line: 191, baseType: !182, size: 64, offset: 4352)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3417, file: !3418, line: 191, baseType: !182, size: 64, offset: 4416)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3417, file: !3418, line: 192, baseType: !182, size: 64, offset: 4480)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3417, file: !3418, line: 192, baseType: !182, size: 64, offset: 4544)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3417, file: !3418, line: 192, baseType: !182, size: 64, offset: 4608)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3417, file: !3418, line: 192, baseType: !182, size: 64, offset: 4672)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3417, file: !3418, line: 193, baseType: !182, size: 64, offset: 4736)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3417, file: !3418, line: 193, baseType: !182, size: 64, offset: 4800)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3417, file: !3418, line: 194, baseType: !4363, size: 448, offset: 4864)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4364, line: 12, size: 448, elements: !4365)
!4364 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4365 = !{!4366, !4367, !4368, !4369, !4370, !4371, !4372}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4363, file: !4364, line: 15, baseType: !255, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4363, file: !4364, line: 17, baseType: !255, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4363, file: !4364, line: 19, baseType: !255, size: 64, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4363, file: !4364, line: 21, baseType: !255, size: 64, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4363, file: !4364, line: 29, baseType: !255, size: 64, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4363, file: !4364, line: 35, baseType: !255, size: 64, offset: 320)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4363, file: !4364, line: 44, baseType: !255, size: 64, offset: 384)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3417, file: !3418, line: 202, baseType: !257, size: 64, offset: 5312)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3417, file: !3418, line: 213, baseType: !4375, size: 2048, offset: 5376)
!4375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4376, size: 2048, elements: !2775)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4377, line: 43, size: 128, elements: !4378)
!4377 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4378 = !{!4379, !4380}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4376, file: !4377, line: 44, baseType: !1119, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4376, file: !4377, line: 45, baseType: !1119, size: 64, offset: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3417, file: !3418, line: 216, baseType: !4382, size: 448, offset: 7424)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3418, line: 30, size: 448, elements: !4383)
!4383 = !{!4384, !4385, !4386, !4387, !4388, !4389, !4390}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4382, file: !3418, line: 31, baseType: !109, size: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4382, file: !3418, line: 32, baseType: !1075, size: 64, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4382, file: !3418, line: 33, baseType: !182, size: 64, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4382, file: !3418, line: 34, baseType: !255, size: 64, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4382, file: !3418, line: 34, baseType: !255, size: 64, offset: 256)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4382, file: !3418, line: 35, baseType: !182, size: 64, offset: 320)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4382, file: !3418, line: 35, baseType: !182, size: 64, offset: 384)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3417, file: !3418, line: 219, baseType: !4392, size: 64, offset: 7872)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3418, line: 219, flags: DIFlagFwdDecl)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3417, file: !3418, line: 222, baseType: !7, size: 32, offset: 7936)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3417, file: !3418, line: 223, baseType: !4396, size: 64, offset: 8000)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3418, line: 223, flags: DIFlagFwdDecl)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3417, file: !3418, line: 230, baseType: !801, size: 8, offset: 8064)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3417, file: !3418, line: 231, baseType: !769, size: 16, offset: 8080)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3417, file: !3418, line: 232, baseType: !769, size: 16, offset: 8096)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3417, file: !3418, line: 234, baseType: !536, size: 64, offset: 8128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3417, file: !3418, line: 237, baseType: !600, size: 256, offset: 8192)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3417, file: !3418, line: 243, baseType: !741, size: 320, offset: 8448)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !185, file: !186, line: 1111, baseType: !4405, size: 64, offset: 15424)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3418, line: 20, size: 16640, elements: !4407)
!4407 = !{!4408, !4409, !4410, !4411}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4406, file: !3418, line: 21, baseType: !554, size: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4406, file: !3418, line: 22, baseType: !199, size: 32, offset: 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4406, file: !3418, line: 23, baseType: !663, size: 192, offset: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4406, file: !3418, line: 24, baseType: !4412, size: 16384, offset: 256)
!4412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4413, size: 16384, elements: !1262)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !892, line: 51, size: 256, elements: !4414)
!4414 = !{!4415}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4413, file: !892, line: 52, baseType: !4416, size: 256)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !892, line: 37, size: 256, elements: !4417)
!4417 = !{!4418, !4425, !4426, !4430}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4416, file: !892, line: 39, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4420, line: 83, baseType: !4421)
!4420 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4420, line: 82, baseType: !4423)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{null, !109}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4416, file: !892, line: 40, baseType: !182, size: 64, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4416, file: !892, line: 46, baseType: !4427, size: 64, offset: 128)
!4427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4420, line: 86, baseType: !4428)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4420, line: 85, baseType: !2383)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4416, file: !892, line: 48, baseType: !3432, size: 64, offset: 192)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !185, file: !186, line: 1112, baseType: !3432, size: 64, offset: 15488)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !185, file: !186, line: 1113, baseType: !3432, size: 64, offset: 15552)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !185, file: !186, line: 1115, baseType: !3432, size: 64, offset: 15616)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !185, file: !186, line: 1116, baseType: !3428, size: 192, offset: 15680)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !185, file: !186, line: 1117, baseType: !182, size: 64, offset: 15872)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !185, file: !186, line: 1118, baseType: !1117, size: 64, offset: 15936)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !185, file: !186, line: 1119, baseType: !7, size: 32, offset: 16000)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !185, file: !186, line: 1121, baseType: !583, size: 64, offset: 16064)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !185, file: !186, line: 1125, baseType: !4440, size: 64, offset: 16128)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !186, line: 43, flags: DIFlagFwdDecl)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !185, file: !186, line: 1127, baseType: !682, size: 32, offset: 16192)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !185, file: !186, line: 1128, baseType: !7, size: 32, offset: 16224)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !185, file: !186, line: 1130, baseType: !4445, size: 128, offset: 16256)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4446, line: 37, size: 128, elements: !4447)
!4446 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4447 = !{!4448, !4449, !4450}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4445, file: !4446, line: 38, baseType: !109, size: 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4445, file: !4446, line: 39, baseType: !204, size: 32, offset: 32)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4445, file: !4446, line: 40, baseType: !4451, size: 64, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4446, line: 24, flags: DIFlagFwdDecl)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !185, file: !186, line: 1131, baseType: !4454, size: 256, offset: 16384)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4455, line: 12, size: 256, elements: !4456)
!4455 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4456 = !{!4457, !4458, !4459, !4460}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4454, file: !4455, line: 13, baseType: !814, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4454, file: !4455, line: 14, baseType: !182, size: 64, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4454, file: !4455, line: 15, baseType: !182, size: 64, offset: 128)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4454, file: !4455, line: 16, baseType: !801, size: 8, offset: 192)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !185, file: !186, line: 1134, baseType: !255, size: 64, offset: 16640)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !185, file: !186, line: 1135, baseType: !255, size: 64, offset: 16704)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !185, file: !186, line: 1138, baseType: !554, size: 32, offset: 16768)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !185, file: !186, line: 1141, baseType: !353, size: 32, offset: 16800)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !185, file: !186, line: 1143, baseType: !4466, size: 64, offset: 16832)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !186, line: 735, size: 64, elements: !4467)
!4467 = !{!4468}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4466, file: !186, line: 736, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !185, file: !186, line: 1147, baseType: !419, size: 128, offset: 16896)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !185, file: !186, line: 1149, baseType: !184, size: 64, offset: 17024)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !185, file: !186, line: 1151, baseType: !4473, size: 64, offset: 17088)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !186, line: 1151, flags: DIFlagFwdDecl)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !185, file: !186, line: 1188, baseType: !169, size: 64, offset: 17152)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !185, file: !186, line: 1191, baseType: !4477, size: 64, offset: 17216)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !186, line: 44, flags: DIFlagFwdDecl)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !185, file: !186, line: 1194, baseType: !4480, size: 64, offset: 17280)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !186, line: 45, flags: DIFlagFwdDecl)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !185, file: !186, line: 1197, baseType: !4483, size: 64, offset: 17344)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !186, line: 61, flags: DIFlagFwdDecl)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !185, file: !186, line: 1199, baseType: !4486, size: 64, offset: 17408)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4488, line: 99, size: 128, elements: !4489)
!4488 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4489 = !{!4490, !4491, !4492}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4487, file: !4488, line: 100, baseType: !593, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4487, file: !4488, line: 101, baseType: !204, size: 32, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4487, file: !4488, line: 103, baseType: !179, size: 16, offset: 96)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !185, file: !186, line: 1202, baseType: !4494, size: 64, offset: 17472)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !186, line: 48, flags: DIFlagFwdDecl)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !185, file: !186, line: 1205, baseType: !182, size: 64, offset: 17536)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !185, file: !186, line: 1206, baseType: !4498, size: 64, offset: 17600)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !892, line: 14, baseType: !4500)
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !892, line: 12, size: 384, elements: !4501)
!4501 = !{!4502}
!4502 = !DIDerivedType(tag: DW_TAG_member, scope: !4500, file: !892, line: 13, baseType: !4503, size: 384)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4500, file: !892, line: 13, size: 384, elements: !4504)
!4504 = !{!4505, !4506, !4507, !4508}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4503, file: !892, line: 13, baseType: !109, size: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4503, file: !892, line: 13, baseType: !109, size: 32, offset: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4503, file: !892, line: 13, baseType: !109, size: 32, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4503, file: !892, line: 13, baseType: !4509, size: 256, offset: 128)
!4509 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4510, line: 37, size: 256, elements: !4511)
!4510 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4511 = !{!4512, !4517, !4530, !4536, !4545, !4572, !4577}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4509, file: !4510, line: 42, baseType: !4513, size: 64)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4509, file: !4510, line: 39, size: 64, elements: !4514)
!4514 = !{!4515, !4516}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4513, file: !4510, line: 40, baseType: !3329, size: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4513, file: !4510, line: 41, baseType: !688, size: 32, offset: 32)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4509, file: !4510, line: 50, baseType: !4518, size: 192)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4509, file: !4510, line: 45, size: 192, elements: !4519)
!4519 = !{!4520, !4522, !4523, !4529}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4518, file: !4510, line: 46, baseType: !4521, size: 32)
!4521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !403, line: 95, baseType: !109)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4518, file: !4510, line: 47, baseType: !109, size: 32, offset: 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4518, file: !4510, line: 48, baseType: !4524, size: 64, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4510, line: 11, baseType: !4525)
!4525 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4510, line: 8, size: 64, elements: !4526)
!4526 = !{!4527, !4528}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4525, file: !4510, line: 9, baseType: !109, size: 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4525, file: !4510, line: 10, baseType: !169, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4518, file: !4510, line: 49, baseType: !109, size: 32, offset: 128)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4509, file: !4510, line: 57, baseType: !4531, size: 128)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4509, file: !4510, line: 53, size: 128, elements: !4532)
!4532 = !{!4533, !4534, !4535}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4531, file: !4510, line: 54, baseType: !3329, size: 32)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4531, file: !4510, line: 55, baseType: !688, size: 32, offset: 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4531, file: !4510, line: 56, baseType: !4524, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4509, file: !4510, line: 66, baseType: !4537, size: 256)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4509, file: !4510, line: 60, size: 256, elements: !4538)
!4538 = !{!4539, !4540, !4541, !4542, !4544}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4537, file: !4510, line: 61, baseType: !3329, size: 32)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4537, file: !4510, line: 62, baseType: !688, size: 32, offset: 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4537, file: !4510, line: 63, baseType: !109, size: 32, offset: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4537, file: !4510, line: 64, baseType: !4543, size: 64, offset: 128)
!4543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !403, line: 94, baseType: !1116)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4537, file: !4510, line: 65, baseType: !4543, size: 64, offset: 192)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4509, file: !4510, line: 105, baseType: !4546, size: 256)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4509, file: !4510, line: 69, size: 256, elements: !4547)
!4547 = !{!4548, !4549}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4546, file: !4510, line: 70, baseType: !169, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, scope: !4546, file: !4510, line: 79, baseType: !4550, size: 192, offset: 64)
!4550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4546, file: !4510, line: 79, size: 192, elements: !4551)
!4551 = !{!4552, !4553, !4554, !4561, !4566}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4550, file: !4510, line: 81, baseType: !109, size: 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4550, file: !4510, line: 86, baseType: !769, size: 16)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4550, file: !4510, line: 92, baseType: !4555, size: 192)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4550, file: !4510, line: 88, size: 192, elements: !4556)
!4556 = !{!4557, !4559, !4560}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4555, file: !4510, line: 89, baseType: !4558, size: 64)
!4558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 64, elements: !397)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4555, file: !4510, line: 90, baseType: !169, size: 64, offset: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4555, file: !4510, line: 91, baseType: !169, size: 64, offset: 128)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4550, file: !4510, line: 97, baseType: !4562, size: 96)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4550, file: !4510, line: 94, size: 96, elements: !4563)
!4563 = !{!4564, !4565}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4562, file: !4510, line: 95, baseType: !4558, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4562, file: !4510, line: 96, baseType: !173, size: 32, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4550, file: !4510, line: 103, baseType: !4567, size: 128)
!4567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4550, file: !4510, line: 99, size: 128, elements: !4568)
!4568 = !{!4569, !4570, !4571}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4567, file: !4510, line: 100, baseType: !182, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4567, file: !4510, line: 101, baseType: !173, size: 32, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4567, file: !4510, line: 102, baseType: !173, size: 32, offset: 96)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4509, file: !4510, line: 111, baseType: !4573, size: 128)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4509, file: !4510, line: 108, size: 128, elements: !4574)
!4574 = !{!4575, !4576}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4573, file: !4510, line: 109, baseType: !1075, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4573, file: !4510, line: 110, baseType: !109, size: 32, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4509, file: !4510, line: 118, baseType: !4578, size: 128)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4509, file: !4510, line: 114, size: 128, elements: !4579)
!4579 = !{!4580, !4581, !4582}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4578, file: !4510, line: 115, baseType: !169, size: 64)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4578, file: !4510, line: 116, baseType: !109, size: 32, offset: 64)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4578, file: !4510, line: 117, baseType: !7, size: 32, offset: 96)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !185, file: !186, line: 1208, baseType: !4363, size: 448, offset: 17664)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !185, file: !186, line: 1215, baseType: !255, size: 64, offset: 18112)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !185, file: !186, line: 1217, baseType: !255, size: 64, offset: 18176)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !185, file: !186, line: 1219, baseType: !255, size: 64, offset: 18240)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !185, file: !186, line: 1223, baseType: !4588, size: 64, offset: 18304)
!4588 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4589, line: 99, baseType: !4590)
!4589 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4589, line: 99, size: 64, elements: !4591)
!4591 = !{!4592}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4590, file: !4589, line: 99, baseType: !487, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !185, file: !186, line: 1225, baseType: !931, size: 32, offset: 18368)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !185, file: !186, line: 1226, baseType: !109, size: 32, offset: 18400)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !185, file: !186, line: 1227, baseType: !109, size: 32, offset: 18432)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !185, file: !186, line: 1231, baseType: !4597, size: 64, offset: 18496)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !186, line: 1231, flags: DIFlagFwdDecl)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !185, file: !186, line: 1233, baseType: !260, size: 128, offset: 18560)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !185, file: !186, line: 1240, baseType: !4601, size: 64, offset: 18688)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !186, line: 62, flags: DIFlagFwdDecl)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !185, file: !186, line: 1242, baseType: !4604, size: 64, offset: 18752)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !186, line: 1242, flags: DIFlagFwdDecl)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !185, file: !186, line: 1244, baseType: !260, size: 128, offset: 18816)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !185, file: !186, line: 1245, baseType: !4608, size: 64, offset: 18944)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !186, line: 51, flags: DIFlagFwdDecl)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !185, file: !186, line: 1246, baseType: !600, size: 256, offset: 19008)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !185, file: !186, line: 1247, baseType: !7, size: 32, offset: 19264)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !185, file: !186, line: 1250, baseType: !4613, size: 64, offset: 19328)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !186, line: 57, flags: DIFlagFwdDecl)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !185, file: !186, line: 1251, baseType: !600, size: 256, offset: 19392)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !185, file: !186, line: 1252, baseType: !260, size: 128, offset: 19648)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !185, file: !186, line: 1259, baseType: !1556, size: 64, offset: 19776)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !185, file: !186, line: 1260, baseType: !769, size: 16, offset: 19840)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !185, file: !186, line: 1261, baseType: !769, size: 16, offset: 19856)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !185, file: !186, line: 1314, baseType: !4621, size: 64, offset: 19904)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4623, line: 62, size: 256, align: 256, elements: !4624)
!4623 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4624 = !{!4625, !4626, !4627, !4628, !4629, !4630, !4631}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4622, file: !4623, line: 75, baseType: !173, size: 32)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4622, file: !4623, line: 90, baseType: !173, size: 32, offset: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4622, file: !4623, line: 112, baseType: !256, size: 64, offset: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4622, file: !4623, line: 132, baseType: !173, size: 32, offset: 128)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4622, file: !4623, line: 140, baseType: !173, size: 32, offset: 160)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4622, file: !4623, line: 149, baseType: !173, size: 32, offset: 192)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4622, file: !4623, line: 154, baseType: !4632, offset: 224)
!4632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, elements: !678)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !185, file: !186, line: 1315, baseType: !171, size: 32, offset: 19968)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !185, file: !186, line: 1316, baseType: !171, size: 32, offset: 20000)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !185, file: !186, line: 1321, baseType: !182, size: 64, offset: 20032)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !185, file: !186, line: 1325, baseType: !109, size: 32, offset: 20096)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !185, file: !186, line: 1326, baseType: !109, size: 32, offset: 20128)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !185, file: !186, line: 1327, baseType: !109, size: 32, offset: 20160)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !185, file: !186, line: 1328, baseType: !109, size: 32, offset: 20192)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !185, file: !186, line: 1329, baseType: !580, size: 128, align: 64, offset: 20224)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !185, file: !186, line: 1332, baseType: !4642, size: 128, offset: 20352)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4643, line: 51, size: 128, elements: !4644)
!4643 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4644 = !{!4645, !4650, !4651}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4642, file: !4643, line: 60, baseType: !4646, size: 64)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4647, line: 7, size: 64, elements: !4648)
!4647 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4648 = !{!4649}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4646, file: !4647, line: 12, baseType: !484, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4642, file: !4643, line: 63, baseType: !801, size: 8, offset: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4642, file: !4643, line: 70, baseType: !801, size: 8, offset: 72)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !185, file: !186, line: 1335, baseType: !3013, size: 64, offset: 20480)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !185, file: !186, line: 1337, baseType: !4654, size: 128, offset: 20544)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4643, line: 39, size: 128, elements: !4655)
!4655 = !{!4656, !4657, !4658}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4654, file: !4643, line: 40, baseType: !1343, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4654, file: !4643, line: 42, baseType: !173, size: 32, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4654, file: !4643, line: 43, baseType: !173, size: 32, offset: 96)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !185, file: !186, line: 1340, baseType: !4660, size: 64, offset: 20672)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !186, line: 69, flags: DIFlagFwdDecl)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !185, file: !186, line: 1351, baseType: !109, size: 32, offset: 20736)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !185, file: !186, line: 1352, baseType: !109, size: 32, offset: 20768)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !185, file: !186, line: 1354, baseType: !182, size: 64, offset: 20800)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !185, file: !186, line: 1364, baseType: !255, size: 64, offset: 20864)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !185, file: !186, line: 1365, baseType: !255, size: 64, offset: 20928)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !185, file: !186, line: 1412, baseType: !182, size: 64, offset: 20992)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !185, file: !186, line: 1453, baseType: !4669, size: 64, offset: 21056)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !186, line: 1453, flags: DIFlagFwdDecl)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !185, file: !186, line: 1457, baseType: !4672, size: 64, offset: 21120)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !4674)
!4674 = !{!4675, !4676, !4695, !4698, !4699, !4732, !4742}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4673, file: !68, line: 62, baseType: !67, size: 32)
!4676 = !DIDerivedType(tag: DW_TAG_member, scope: !4673, file: !68, line: 64, baseType: !4677, size: 192, offset: 64)
!4677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4673, file: !68, line: 64, size: 192, elements: !4678)
!4678 = !{!4679, !4690}
!4679 = !DIDerivedType(tag: DW_TAG_member, scope: !4677, file: !68, line: 65, baseType: !4680, size: 192)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4677, file: !68, line: 65, size: 192, elements: !4681)
!4681 = !{!4682, !4689}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4680, file: !68, line: 66, baseType: !4683, size: 128)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4684, line: 50, size: 128, elements: !4685)
!4684 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4685 = !{!4686, !4687, !4688}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4683, file: !4684, line: 52, baseType: !182, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4683, file: !4684, line: 54, baseType: !7, size: 32, offset: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4683, file: !4684, line: 55, baseType: !7, size: 32, offset: 96)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4680, file: !68, line: 67, baseType: !182, size: 64, offset: 128)
!4690 = !DIDerivedType(tag: DW_TAG_member, scope: !4677, file: !68, line: 70, baseType: !4691, size: 192)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4677, file: !68, line: 70, size: 192, elements: !4692)
!4692 = !{!4693, !4694}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4691, file: !68, line: 71, baseType: !580, size: 128, align: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4691, file: !68, line: 72, baseType: !182, size: 64, offset: 128)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4673, file: !68, line: 76, baseType: !4696, size: 64, offset: 256)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4673, file: !68, line: 77, baseType: !182, size: 64, offset: 320)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4673, file: !68, line: 79, baseType: !4700, size: 64, offset: 384)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4684, line: 25, size: 256, elements: !4702)
!4702 = !{!4703, !4709, !4713}
!4703 = !DIDerivedType(tag: DW_TAG_member, scope: !4701, file: !4684, line: 26, baseType: !4704, size: 128)
!4704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4701, file: !4684, line: 26, size: 128, elements: !4705)
!4705 = !{!4706, !4708}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4704, file: !4684, line: 27, baseType: !4707, size: 128)
!4707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 128, elements: !2775)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4704, file: !4684, line: 28, baseType: !4707, size: 128)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4701, file: !4684, line: 31, baseType: !4710, size: 64, offset: 128)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4712)
!4712 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4684, line: 23, flags: DIFlagFwdDecl)
!4713 = !DIDerivedType(tag: DW_TAG_member, scope: !4701, file: !4684, line: 33, baseType: !4714, size: 64, offset: 192)
!4714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4701, file: !4684, line: 33, size: 64, elements: !4715)
!4715 = !{!4716, !4722, !4727}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4714, file: !4684, line: 38, baseType: !4717, size: 64)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4714, file: !4684, line: 34, size: 64, elements: !4718)
!4718 = !{!4719, !4720, !4721}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4717, file: !4684, line: 35, baseType: !733, size: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4717, file: !4684, line: 36, baseType: !370, size: 8, offset: 32)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4717, file: !4684, line: 37, baseType: !370, size: 8, offset: 40)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4714, file: !4684, line: 42, baseType: !4723, size: 16)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4714, file: !4684, line: 39, size: 16, elements: !4724)
!4724 = !{!4725, !4726}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4723, file: !4684, line: 40, baseType: !370, size: 8)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4723, file: !4684, line: 41, baseType: !370, size: 8, offset: 8)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4714, file: !4684, line: 46, baseType: !4728, size: 16)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4714, file: !4684, line: 43, size: 16, elements: !4729)
!4729 = !{!4730, !4731}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4728, file: !4684, line: 44, baseType: !370, size: 8)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4728, file: !4684, line: 45, baseType: !370, size: 8, offset: 8)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4673, file: !68, line: 81, baseType: !4733, size: 64, offset: 448)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !4735)
!4735 = !{!4736, !4737, !4738, !4739, !4740, !4741}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4734, file: !68, line: 86, baseType: !4696, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4734, file: !68, line: 87, baseType: !182, size: 64, offset: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4734, file: !68, line: 88, baseType: !182, size: 64, offset: 128)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4734, file: !68, line: 89, baseType: !182, size: 64, offset: 192)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4734, file: !68, line: 90, baseType: !801, size: 8, offset: 256)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4734, file: !68, line: 92, baseType: !4733, size: 64, offset: 320)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4673, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !185, file: !186, line: 1463, baseType: !4744, offset: 21184)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !186, line: 739, elements: !565)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !185, file: !186, line: 1470, baseType: !580, size: 128, align: 64, offset: 21184)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !185, file: !186, line: 1471, baseType: !199, size: 32, offset: 21312)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !185, file: !186, line: 1472, baseType: !109, size: 32, offset: 21344)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !185, file: !186, line: 1474, baseType: !184, size: 64, offset: 21376)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !185, file: !186, line: 1475, baseType: !2267, size: 320, offset: 21440)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !185, file: !186, line: 1478, baseType: !4751, size: 64, offset: 21760)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4753, line: 49, size: 512, elements: !4754)
!4753 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4754 = !{!4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4764}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4752, file: !4753, line: 50, baseType: !4751, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4752, file: !4753, line: 51, baseType: !169, size: 64, offset: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4752, file: !4753, line: 52, baseType: !182, size: 64, offset: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4752, file: !4753, line: 53, baseType: !182, size: 64, offset: 192)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4752, file: !4753, line: 54, baseType: !1730, size: 64, offset: 256)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4752, file: !4753, line: 56, baseType: !7, size: 32, offset: 320)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4752, file: !4753, line: 58, baseType: !7, size: 32, offset: 352)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4752, file: !4753, line: 59, baseType: !4763, size: 64, offset: 384)
!4763 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !181, line: 159, baseType: !255)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4752, file: !4753, line: 60, baseType: !1859, size: 64, offset: 448)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !185, file: !186, line: 1482, baseType: !199, size: 32, offset: 21824)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !185, file: !186, line: 1489, baseType: !169, size: 64, offset: 21888)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !185, file: !186, line: 1504, baseType: !169, size: 64, offset: 21952)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !185, file: !186, line: 1505, baseType: !256, size: 64, offset: 22016)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !185, file: !186, line: 1506, baseType: !255, size: 64, offset: 22080)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !185, file: !186, line: 1507, baseType: !256, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !185, file: !186, line: 1508, baseType: !256, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !185, file: !186, line: 1509, baseType: !256, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !185, file: !186, line: 1510, baseType: !580, size: 128, align: 64, offset: 22208)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !185, file: !186, line: 1511, baseType: !109, size: 32, offset: 22336)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !185, file: !186, line: 1515, baseType: !4014, size: 64, offset: 22400)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !185, file: !186, line: 1518, baseType: !4014, size: 64, offset: 22464)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !185, file: !186, line: 1528, baseType: !580, size: 128, align: 64, offset: 22528)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !185, file: !186, line: 1552, baseType: !4779, size: 35328, offset: 23040)
!4779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4780, line: 430, size: 35328, elements: !4781)
!4780 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4781 = !{!4782, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4811, !4812, !4813, !4814, !4815, !4816, !4819, !4820, !4821, !4822}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4779, file: !4780, line: 432, baseType: !4783, size: 192)
!4783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4784, size: 192, elements: !638)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4785, line: 16, size: 64, elements: !4786)
!4785 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4786 = !{!4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4784, file: !4785, line: 17, baseType: !177, size: 16)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4784, file: !4785, line: 18, baseType: !177, size: 16, offset: 16)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4784, file: !4785, line: 19, baseType: !177, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4784, file: !4785, line: 19, baseType: !177, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4784, file: !4785, line: 19, baseType: !177, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4784, file: !4785, line: 19, baseType: !177, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4784, file: !4785, line: 19, baseType: !177, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4784, file: !4785, line: 20, baseType: !177, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4784, file: !4785, line: 20, baseType: !177, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4784, file: !4785, line: 20, baseType: !177, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4784, file: !4785, line: 20, baseType: !177, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4784, file: !4785, line: 20, baseType: !177, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4784, file: !4785, line: 20, baseType: !177, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4779, file: !4780, line: 436, baseType: !182, size: 64, offset: 192)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4779, file: !4780, line: 440, baseType: !179, size: 16, offset: 256)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4779, file: !4780, line: 441, baseType: !179, size: 16, offset: 272)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4779, file: !4780, line: 442, baseType: !179, size: 16, offset: 288)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4779, file: !4780, line: 443, baseType: !179, size: 16, offset: 304)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4779, file: !4780, line: 447, baseType: !182, size: 64, offset: 320)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4779, file: !4780, line: 448, baseType: !182, size: 64, offset: 384)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4779, file: !4780, line: 459, baseType: !4808, size: 256, offset: 448)
!4808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4809, size: 256, elements: !659)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4780, line: 428, flags: DIFlagFwdDecl)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4779, file: !4780, line: 461, baseType: !182, size: 64, offset: 704)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4779, file: !4780, line: 463, baseType: !182, size: 64, offset: 768)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4779, file: !4780, line: 465, baseType: !182, size: 64, offset: 832)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4779, file: !4780, line: 466, baseType: !182, size: 64, offset: 896)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4779, file: !4780, line: 467, baseType: !182, size: 64, offset: 960)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4779, file: !4780, line: 473, baseType: !4817, size: 64, offset: 1024)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4780, line: 10, flags: DIFlagFwdDecl)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4779, file: !4780, line: 480, baseType: !182, size: 64, offset: 1088)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4779, file: !4780, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4779, file: !4780, line: 491, baseType: !171, size: 32, offset: 1184)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4779, file: !4780, line: 501, baseType: !4823, size: 33792, offset: 1536)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4824, line: 448, size: 33792, elements: !4825)
!4824 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4825 = !{!4826, !4827, !4828, !4989, !4990, !4996, !4997}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4823, file: !4824, line: 461, baseType: !7, size: 32)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4823, file: !4824, line: 468, baseType: !182, size: 64, offset: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4823, file: !4824, line: 476, baseType: !4829, size: 64, offset: 128)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4824, line: 356, size: 33280, align: 512, elements: !4831)
!4831 = !{!4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4830, file: !4824, line: 358, baseType: !7, size: 32)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4830, file: !4824, line: 361, baseType: !7, size: 32, offset: 32)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4830, file: !4824, line: 364, baseType: !255, size: 64, offset: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4830, file: !4824, line: 367, baseType: !255, size: 64, offset: 128)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4830, file: !4824, line: 370, baseType: !255, size: 64, offset: 192)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4830, file: !4824, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4830, file: !4824, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4830, file: !4824, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4830, file: !4824, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4830, file: !4824, line: 397, baseType: !4842, size: 32768, offset: 512)
!4842 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4824, line: 348, size: 32768, elements: !4843)
!4843 = !{!4844, !4859, !4896, !4973, !4985}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4842, file: !4824, line: 349, baseType: !4845, size: 896)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4824, line: 12, size: 896, elements: !4846)
!4846 = !{!4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4858}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4845, file: !4824, line: 13, baseType: !171, size: 32)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4845, file: !4824, line: 14, baseType: !171, size: 32, offset: 32)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4845, file: !4824, line: 15, baseType: !171, size: 32, offset: 64)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4845, file: !4824, line: 16, baseType: !171, size: 32, offset: 96)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4845, file: !4824, line: 17, baseType: !171, size: 32, offset: 128)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4845, file: !4824, line: 18, baseType: !171, size: 32, offset: 160)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4845, file: !4824, line: 19, baseType: !171, size: 32, offset: 192)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4845, file: !4824, line: 22, baseType: !4855, size: 640, offset: 224)
!4855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 640, elements: !4856)
!4856 = !{!4857}
!4857 = !DISubrange(count: 20)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4845, file: !4824, line: 25, baseType: !171, size: 32, offset: 864)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4842, file: !4824, line: 350, baseType: !4860, size: 4096, align: 128)
!4860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4824, line: 34, size: 4096, align: 128, elements: !4861)
!4861 = !{!4862, !4863, !4864, !4865, !4866, !4881, !4882, !4883, !4885, !4887, !4891}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4860, file: !4824, line: 35, baseType: !177, size: 16)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4860, file: !4824, line: 36, baseType: !177, size: 16, offset: 16)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4860, file: !4824, line: 37, baseType: !177, size: 16, offset: 32)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4860, file: !4824, line: 38, baseType: !177, size: 16, offset: 48)
!4866 = !DIDerivedType(tag: DW_TAG_member, scope: !4860, file: !4824, line: 39, baseType: !4867, size: 128, offset: 64)
!4867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4860, file: !4824, line: 39, size: 128, elements: !4868)
!4868 = !{!4869, !4874}
!4869 = !DIDerivedType(tag: DW_TAG_member, scope: !4867, file: !4824, line: 40, baseType: !4870, size: 128)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4867, file: !4824, line: 40, size: 128, elements: !4871)
!4871 = !{!4872, !4873}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4870, file: !4824, line: 41, baseType: !255, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4870, file: !4824, line: 42, baseType: !255, size: 64, offset: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, scope: !4867, file: !4824, line: 44, baseType: !4875, size: 128)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4867, file: !4824, line: 44, size: 128, elements: !4876)
!4876 = !{!4877, !4878, !4879, !4880}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4875, file: !4824, line: 45, baseType: !171, size: 32)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4875, file: !4824, line: 46, baseType: !171, size: 32, offset: 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4875, file: !4824, line: 47, baseType: !171, size: 32, offset: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4875, file: !4824, line: 48, baseType: !171, size: 32, offset: 96)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4860, file: !4824, line: 51, baseType: !171, size: 32, offset: 192)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4860, file: !4824, line: 52, baseType: !171, size: 32, offset: 224)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4860, file: !4824, line: 55, baseType: !4884, size: 1024, offset: 256)
!4884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 1024, elements: !2766)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4860, file: !4824, line: 58, baseType: !4886, size: 2048, offset: 1280)
!4886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 2048, elements: !1262)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4860, file: !4824, line: 60, baseType: !4888, size: 384, offset: 3328)
!4888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 384, elements: !4889)
!4889 = !{!4890}
!4890 = !DISubrange(count: 12)
!4891 = !DIDerivedType(tag: DW_TAG_member, scope: !4860, file: !4824, line: 62, baseType: !4892, size: 384, offset: 3712)
!4892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4860, file: !4824, line: 62, size: 384, elements: !4893)
!4893 = !{!4894, !4895}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4892, file: !4824, line: 63, baseType: !4888, size: 384)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4892, file: !4824, line: 64, baseType: !4888, size: 384)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4842, file: !4824, line: 351, baseType: !4897, size: 1088)
!4897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4824, line: 79, size: 1088, elements: !4898)
!4898 = !{!4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4972}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4897, file: !4824, line: 80, baseType: !171, size: 32)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4897, file: !4824, line: 81, baseType: !171, size: 32, offset: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4897, file: !4824, line: 82, baseType: !171, size: 32, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4897, file: !4824, line: 83, baseType: !171, size: 32, offset: 96)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4897, file: !4824, line: 84, baseType: !171, size: 32, offset: 128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4897, file: !4824, line: 85, baseType: !171, size: 32, offset: 160)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4897, file: !4824, line: 86, baseType: !171, size: 32, offset: 192)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4897, file: !4824, line: 88, baseType: !4855, size: 640, offset: 224)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4897, file: !4824, line: 89, baseType: !370, size: 8, offset: 864)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4897, file: !4824, line: 90, baseType: !370, size: 8, offset: 872)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4897, file: !4824, line: 91, baseType: !370, size: 8, offset: 880)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4897, file: !4824, line: 92, baseType: !370, size: 8, offset: 888)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4897, file: !4824, line: 93, baseType: !370, size: 8, offset: 896)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4897, file: !4824, line: 94, baseType: !370, size: 8, offset: 904)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4897, file: !4824, line: 95, baseType: !4914, size: 64, offset: 960)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4916, line: 11, size: 128, elements: !4917)
!4916 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4917 = !{!4918, !4919}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4915, file: !4916, line: 12, baseType: !1075, size: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4915, file: !4916, line: 13, baseType: !4920, size: 64, offset: 64)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4922, line: 103, size: 1344, elements: !4923)
!4922 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4923 = !{!4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4952, !4953, !4954}
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4921, file: !4922, line: 109, baseType: !182, size: 64)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4921, file: !4922, line: 110, baseType: !182, size: 64, offset: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4921, file: !4922, line: 111, baseType: !182, size: 64, offset: 128)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4921, file: !4922, line: 112, baseType: !182, size: 64, offset: 192)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4921, file: !4922, line: 113, baseType: !182, size: 64, offset: 256)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4921, file: !4922, line: 114, baseType: !182, size: 64, offset: 320)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4921, file: !4922, line: 117, baseType: !182, size: 64, offset: 384)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4921, file: !4922, line: 118, baseType: !182, size: 64, offset: 448)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4921, file: !4922, line: 119, baseType: !182, size: 64, offset: 512)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4921, file: !4922, line: 120, baseType: !182, size: 64, offset: 576)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4921, file: !4922, line: 121, baseType: !182, size: 64, offset: 640)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4921, file: !4922, line: 122, baseType: !182, size: 64, offset: 704)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4921, file: !4922, line: 123, baseType: !182, size: 64, offset: 768)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4921, file: !4922, line: 124, baseType: !182, size: 64, offset: 832)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4921, file: !4922, line: 125, baseType: !182, size: 64, offset: 896)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4921, file: !4922, line: 139, baseType: !182, size: 64, offset: 960)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4921, file: !4922, line: 142, baseType: !182, size: 64, offset: 1024)
!4941 = !DIDerivedType(tag: DW_TAG_member, scope: !4921, file: !4922, line: 144, baseType: !4942, size: 64, offset: 1088)
!4942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4921, file: !4922, line: 144, size: 64, elements: !4943)
!4943 = !{!4944, !4945, !4946}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4942, file: !4922, line: 146, baseType: !177, size: 16)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4942, file: !4922, line: 148, baseType: !255, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4942, file: !4922, line: 150, baseType: !4947, size: 64)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4922, line: 59, size: 64, elements: !4948)
!4948 = !{!4949, !4950, !4951}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4947, file: !4922, line: 61, baseType: !255, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4947, file: !4922, line: 63, baseType: !255, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4947, file: !4922, line: 65, baseType: !255, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4921, file: !4922, line: 153, baseType: !182, size: 64, offset: 1152)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4921, file: !4922, line: 154, baseType: !182, size: 64, offset: 1216)
!4954 = !DIDerivedType(tag: DW_TAG_member, scope: !4921, file: !4922, line: 156, baseType: !4955, size: 64, offset: 1280)
!4955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4921, file: !4922, line: 156, size: 64, elements: !4956)
!4956 = !{!4957, !4958, !4959}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4955, file: !4922, line: 158, baseType: !177, size: 16)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4955, file: !4922, line: 160, baseType: !255, size: 64)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4955, file: !4922, line: 162, baseType: !4960, size: 64)
!4960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4922, line: 69, size: 64, elements: !4961)
!4961 = !{!4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4960, file: !4922, line: 71, baseType: !255, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4960, file: !4922, line: 73, baseType: !255, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4960, file: !4922, line: 75, baseType: !255, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4960, file: !4922, line: 77, baseType: !255, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4960, file: !4922, line: 80, baseType: !255, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4960, file: !4922, line: 83, baseType: !255, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4960, file: !4922, line: 86, baseType: !255, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4960, file: !4922, line: 88, baseType: !255, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4960, file: !4922, line: 93, baseType: !255, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4960, file: !4922, line: 100, baseType: !255, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4897, file: !4824, line: 96, baseType: !171, size: 32, offset: 1024)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4842, file: !4824, line: 352, baseType: !4974, size: 4608, align: 512)
!4974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4824, line: 333, size: 4608, align: 512, elements: !4975)
!4975 = !{!4976, !4977, !4984}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4974, file: !4824, line: 334, baseType: !4860, size: 4096, align: 128)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4974, file: !4824, line: 335, baseType: !4978, size: 512, offset: 4096)
!4978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4824, line: 312, size: 512, elements: !4979)
!4979 = !{!4980, !4981, !4982}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4978, file: !4824, line: 313, baseType: !255, size: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4978, file: !4824, line: 314, baseType: !255, size: 64, offset: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4978, file: !4824, line: 315, baseType: !4983, size: 384, offset: 128)
!4983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 384, elements: !788)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4974, file: !4824, line: 336, baseType: !4008, offset: 4608)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4842, file: !4824, line: 353, baseType: !4986, size: 32768)
!4986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 32768, elements: !4987)
!4987 = !{!4988}
!4988 = !DISubrange(count: 4096)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4823, file: !4824, line: 484, baseType: !4829, size: 64, offset: 192)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4823, file: !4824, line: 491, baseType: !4991, size: 128, offset: 256)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4824, line: 404, size: 128, elements: !4992)
!4992 = !{!4993, !4994, !4995}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4991, file: !4824, line: 424, baseType: !255, size: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4991, file: !4824, line: 432, baseType: !7, size: 32, offset: 64)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4991, file: !4824, line: 440, baseType: !7, size: 32, offset: 96)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4823, file: !4824, line: 498, baseType: !4991, size: 128, offset: 384)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4823, file: !4824, line: 508, baseType: !4830, size: 33280, align: 512, offset: 512)
!4998 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !181, line: 42, baseType: !182)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!5000 = !{!5001, !5003, !5005, !0, !5007, !5013, !5016, !5021}
!5001 = !DIGlobalVariableExpression(var: !5002, expr: !DIExpression())
!5002 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_clear_selection289", scope: !2, file: !3, line: 89, type: !169, isLocal: true, isDefinition: true)
!5003 = !DIGlobalVariableExpression(var: !5004, expr: !DIExpression())
!5004 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_set_selection_kernel298", scope: !2, file: !3, line: 366, type: !169, isLocal: true, isDefinition: true)
!5005 = !DIGlobalVariableExpression(var: !5006, expr: !DIExpression())
!5006 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_paste_selection301", scope: !2, file: !3, line: 421, type: !169, isLocal: true, isDefinition: true)
!5007 = !DIGlobalVariableExpression(var: !5008, expr: !DIExpression())
!5008 = distinct !DIGlobalVariable(scope: null, file: !5009, line: 249, type: !5010, isLocal: true, isDefinition: true)
!5009 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 224, elements: !5011)
!5011 = !{!5012}
!5012 = !DISubrange(count: 28)
!5013 = !DIGlobalVariableExpression(var: !5014, expr: !DIExpression())
!5014 = distinct !DIGlobalVariable(name: "inwordLut", scope: !2, file: !3, line: 100, type: !5015, isLocal: true, isDefinition: true)
!5015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 128, elements: !659)
!5016 = !DIGlobalVariableExpression(var: !5017, expr: !DIExpression())
!5017 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !5018, isLocal: true, isDefinition: true)
!5018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 248, elements: !5019)
!5019 = !{!5020}
!5020 = !DISubrange(count: 31)
!5021 = !DIGlobalVariableExpression(var: !5022, expr: !DIExpression())
!5022 = distinct !DIGlobalVariable(scope: null, file: !159, line: 480, type: !5023, isLocal: true, isDefinition: true)
!5023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 168, elements: !5024)
!5024 = !{!5025}
!5025 = !DISubrange(count: 21)
!5026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vc_selection", file: !3, line: 39, size: 512, elements: !5027)
!5027 = !{!5028, !5029, !5223, !5224, !5225, !5227}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5026, file: !3, line: 40, baseType: !600, size: 256)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "cons", scope: !5026, file: !3, line: 41, baseType: !5030, size: 64, offset: 256)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vc_data", file: !142, line: 93, size: 6592, elements: !5032)
!5032 = !{!5033, !5034, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5158, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5178, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5209, !5210, !5211, !5212, !5213, !5214, !5216, !5219, !5221}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5031, file: !142, line: 94, baseType: !3985, size: 3008)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5031, file: !142, line: 96, baseType: !5035, size: 160, offset: 3008)
!5035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vc_state", file: !142, line: 45, size: 160, elements: !5036)
!5036 = !{!5037, !5038, !5039, !5040, !5042, !5043, !5044, !5045, !5046, !5047}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5035, file: !142, line: 46, baseType: !7, size: 32)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5035, file: !142, line: 46, baseType: !7, size: 32, offset: 32)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !5035, file: !142, line: 48, baseType: !372, size: 8, offset: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "Gx_charset", scope: !5035, file: !142, line: 50, baseType: !5041, size: 16, offset: 72)
!5041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 16, elements: !2155)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !5035, file: !142, line: 51, baseType: !7, size: 1, offset: 88, flags: DIFlagBitField, extraData: i64 88)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !5035, file: !142, line: 54, baseType: !141, size: 32, offset: 96)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "italic", scope: !5035, file: !142, line: 55, baseType: !801, size: 8, offset: 128)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "underline", scope: !5035, file: !142, line: 56, baseType: !801, size: 8, offset: 136)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "blink", scope: !5035, file: !142, line: 57, baseType: !801, size: 8, offset: 144)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !5035, file: !142, line: 58, baseType: !801, size: 8, offset: 152)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "saved_state", scope: !5031, file: !142, line: 96, baseType: !5035, size: 160, offset: 3168)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "vc_num", scope: !5031, file: !142, line: 98, baseType: !179, size: 16, offset: 3328)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cols", scope: !5031, file: !142, line: 99, baseType: !7, size: 32, offset: 3360)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "vc_rows", scope: !5031, file: !142, line: 100, baseType: !7, size: 32, offset: 3392)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "vc_size_row", scope: !5031, file: !142, line: 101, baseType: !7, size: 32, offset: 3424)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "vc_scan_lines", scope: !5031, file: !142, line: 102, baseType: !7, size: 32, offset: 3456)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cell_height", scope: !5031, file: !142, line: 103, baseType: !7, size: 32, offset: 3488)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "vc_origin", scope: !5031, file: !142, line: 104, baseType: !182, size: 64, offset: 3520)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "vc_scr_end", scope: !5031, file: !142, line: 105, baseType: !182, size: 64, offset: 3584)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "vc_visible_origin", scope: !5031, file: !142, line: 106, baseType: !182, size: 64, offset: 3648)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "vc_top", scope: !5031, file: !142, line: 107, baseType: !7, size: 32, offset: 3712)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bottom", scope: !5031, file: !142, line: 107, baseType: !7, size: 32, offset: 3744)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "vc_sw", scope: !5031, file: !142, line: 108, baseType: !5061, size: 64, offset: 3776)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5063)
!5063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "consw", file: !149, line: 46, size: 1664, elements: !5064)
!5064 = !{!5065, !5066, !5070, !5074, !5078, !5082, !5086, !5092, !5093, !5097, !5101, !5105, !5117, !5121, !5125, !5129, !5133, !5134, !5135, !5136, !5140, !5145, !5151, !5155, !5156, !5157}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5063, file: !149, line: 47, baseType: !1206, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "con_startup", scope: !5063, file: !149, line: 48, baseType: !5067, size: 64, offset: 64)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!804}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "con_init", scope: !5063, file: !149, line: 49, baseType: !5071, size: 64, offset: 128)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{null, !5030, !109}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "con_deinit", scope: !5063, file: !149, line: 50, baseType: !5075, size: 64, offset: 192)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{null, !5030}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "con_clear", scope: !5063, file: !149, line: 51, baseType: !5079, size: 64, offset: 256)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{null, !5030, !109, !109, !109, !109}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "con_putc", scope: !5063, file: !149, line: 53, baseType: !5083, size: 64, offset: 320)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{null, !5030, !109, !109, !109}
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "con_putcs", scope: !5063, file: !149, line: 54, baseType: !5087, size: 64, offset: 384)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{null, !5030, !5090, !109, !109, !109}
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "con_cursor", scope: !5063, file: !149, line: 56, baseType: !5071, size: 64, offset: 448)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "con_scroll", scope: !5063, file: !149, line: 57, baseType: !5094, size: 64, offset: 512)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!801, !5030, !7, !7, !148, !7}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "con_switch", scope: !5063, file: !149, line: 60, baseType: !5098, size: 64, offset: 576)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!109, !5030}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "con_blank", scope: !5063, file: !149, line: 61, baseType: !5102, size: 64, offset: 640)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!109, !5030, !109, !109}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_set", scope: !5063, file: !149, line: 62, baseType: !5106, size: 64, offset: 704)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!109, !5030, !5109, !7, !7}
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "console_font", file: !5111, line: 169, size: 192, elements: !5112)
!5111 = !DIFile(filename: "./include/uapi/linux/kd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "935a4835df836685dd96475b03a1f9f1")
!5112 = !{!5113, !5114, !5115, !5116}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5110, file: !5111, line: 170, baseType: !7, size: 32)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5110, file: !5111, line: 170, baseType: !7, size: 32, offset: 32)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "charcount", scope: !5110, file: !5111, line: 171, baseType: !7, size: 32, offset: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5110, file: !5111, line: 172, baseType: !4071, size: 64, offset: 128)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_get", scope: !5063, file: !149, line: 64, baseType: !5118, size: 64, offset: 768)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!109, !5030, !5109, !7}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_default", scope: !5063, file: !149, line: 66, baseType: !5122, size: 64, offset: 832)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DISubroutineType(types: !5124)
!5124 = !{!109, !5030, !5109, !814}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "con_resize", scope: !5063, file: !149, line: 68, baseType: !5126, size: 64, offset: 896)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!109, !5030, !7, !7, !7}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "con_set_palette", scope: !5063, file: !149, line: 70, baseType: !5130, size: 64, offset: 960)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{null, !5030, !957}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "con_scrolldelta", scope: !5063, file: !149, line: 72, baseType: !5071, size: 64, offset: 1024)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "con_set_origin", scope: !5063, file: !149, line: 73, baseType: !5098, size: 64, offset: 1088)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "con_save_screen", scope: !5063, file: !149, line: 74, baseType: !5075, size: 64, offset: 1152)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "con_build_attr", scope: !5063, file: !149, line: 75, baseType: !5137, size: 64, offset: 1216)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!370, !5030, !370, !141, !801, !801, !801, !801}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "con_invert_region", scope: !5063, file: !149, line: 78, baseType: !5141, size: 64, offset: 1280)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{null, !5030, !5144, !109}
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "con_screen_pos", scope: !5063, file: !149, line: 79, baseType: !5146, size: 64, offset: 1344)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!5144, !5149, !109}
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5031)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "con_getxy", scope: !5063, file: !149, line: 80, baseType: !5152, size: 64, offset: 1408)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!182, !5030, !182, !2165, !2165}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "con_flush_scrollback", scope: !5063, file: !149, line: 85, baseType: !5075, size: 64, offset: 1472)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "con_debug_enter", scope: !5063, file: !149, line: 91, baseType: !5098, size: 64, offset: 1536)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "con_debug_leave", scope: !5063, file: !149, line: 95, baseType: !5098, size: 64, offset: 1600)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "vc_screenbuf", scope: !5031, file: !142, line: 109, baseType: !5159, size: 64, offset: 3840)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "vc_screenbuf_size", scope: !5031, file: !142, line: 110, baseType: !7, size: 32, offset: 3904)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "vc_mode", scope: !5031, file: !142, line: 111, baseType: !372, size: 8, offset: 3936)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "vc_attr", scope: !5031, file: !142, line: 113, baseType: !372, size: 8, offset: 3944)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "vc_def_color", scope: !5031, file: !142, line: 114, baseType: !372, size: 8, offset: 3952)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "vc_ulcolor", scope: !5031, file: !142, line: 115, baseType: !372, size: 8, offset: 3960)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "vc_itcolor", scope: !5031, file: !142, line: 116, baseType: !372, size: 8, offset: 3968)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "vc_halfcolor", scope: !5031, file: !142, line: 117, baseType: !372, size: 8, offset: 3976)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cursor_type", scope: !5031, file: !142, line: 119, baseType: !7, size: 32, offset: 4000)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "vc_complement_mask", scope: !5031, file: !142, line: 120, baseType: !179, size: 16, offset: 4032)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "vc_s_complement_mask", scope: !5031, file: !142, line: 121, baseType: !179, size: 16, offset: 4048)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "vc_pos", scope: !5031, file: !142, line: 122, baseType: !182, size: 64, offset: 4096)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "vc_hi_font_mask", scope: !5031, file: !142, line: 124, baseType: !179, size: 16, offset: 4160)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "vc_font", scope: !5031, file: !142, line: 125, baseType: !5110, size: 192, offset: 4224)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "vc_video_erase_char", scope: !5031, file: !142, line: 126, baseType: !179, size: 16, offset: 4416)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "vc_state", scope: !5031, file: !142, line: 128, baseType: !7, size: 32, offset: 4448)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "vc_npar", scope: !5031, file: !142, line: 129, baseType: !7, size: 32, offset: 4480)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "vc_par", scope: !5031, file: !142, line: 129, baseType: !5177, size: 512, offset: 4512)
!5177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !2775)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "vt_mode", scope: !5031, file: !142, line: 131, baseType: !5179, size: 64, offset: 5024)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vt_mode", file: !5180, line: 19, size: 64, elements: !5181)
!5180 = !DIFile(filename: "./include/uapi/linux/vt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9e1a50369aa89014c0868246d1a3fec5")
!5181 = !{!5182, !5183, !5184, !5185, !5186}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5179, file: !5180, line: 20, baseType: !787, size: 8)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "waitv", scope: !5179, file: !5180, line: 21, baseType: !787, size: 8, offset: 8)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "relsig", scope: !5179, file: !5180, line: 22, baseType: !769, size: 16, offset: 16)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "acqsig", scope: !5179, file: !5180, line: 23, baseType: !769, size: 16, offset: 32)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "frsig", scope: !5179, file: !5180, line: 24, baseType: !769, size: 16, offset: 48)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "vt_pid", scope: !5031, file: !142, line: 132, baseType: !642, size: 64, offset: 5120)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "vt_newvt", scope: !5031, file: !142, line: 133, baseType: !109, size: 32, offset: 5184)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "paste_wait", scope: !5031, file: !142, line: 134, baseType: !663, size: 192, offset: 5248)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "vc_disp_ctrl", scope: !5031, file: !142, line: 136, baseType: !7, size: 1, offset: 5440, flags: DIFlagBitField, extraData: i64 5440)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "vc_toggle_meta", scope: !5031, file: !142, line: 137, baseType: !7, size: 1, offset: 5441, flags: DIFlagBitField, extraData: i64 5440)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decscnm", scope: !5031, file: !142, line: 138, baseType: !7, size: 1, offset: 5442, flags: DIFlagBitField, extraData: i64 5440)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decom", scope: !5031, file: !142, line: 139, baseType: !7, size: 1, offset: 5443, flags: DIFlagBitField, extraData: i64 5440)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decawm", scope: !5031, file: !142, line: 140, baseType: !7, size: 1, offset: 5444, flags: DIFlagBitField, extraData: i64 5440)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "vc_deccm", scope: !5031, file: !142, line: 141, baseType: !7, size: 1, offset: 5445, flags: DIFlagBitField, extraData: i64 5440)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decim", scope: !5031, file: !142, line: 142, baseType: !7, size: 1, offset: 5446, flags: DIFlagBitField, extraData: i64 5440)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "vc_priv", scope: !5031, file: !142, line: 144, baseType: !7, size: 3, offset: 5447, flags: DIFlagBitField, extraData: i64 5440)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "vc_need_wrap", scope: !5031, file: !142, line: 145, baseType: !7, size: 1, offset: 5450, flags: DIFlagBitField, extraData: i64 5440)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "vc_can_do_color", scope: !5031, file: !142, line: 146, baseType: !7, size: 1, offset: 5451, flags: DIFlagBitField, extraData: i64 5440)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "vc_report_mouse", scope: !5031, file: !142, line: 147, baseType: !7, size: 2, offset: 5452, flags: DIFlagBitField, extraData: i64 5440)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf", scope: !5031, file: !142, line: 148, baseType: !372, size: 1, offset: 5454, flags: DIFlagBitField, extraData: i64 5440)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf_count", scope: !5031, file: !142, line: 149, baseType: !372, size: 8, offset: 5456)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf_char", scope: !5031, file: !142, line: 150, baseType: !109, size: 32, offset: 5472)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "vc_tab_stop", scope: !5031, file: !142, line: 151, baseType: !2258, size: 256, offset: 5504)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "vc_palette", scope: !5031, file: !142, line: 152, baseType: !5206, size: 384, offset: 5760)
!5206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 384, elements: !5207)
!5207 = !{!5208}
!5208 = !DISubrange(count: 48)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "vc_translate", scope: !5031, file: !142, line: 153, baseType: !5159, size: 64, offset: 6144)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "vc_resize_user", scope: !5031, file: !142, line: 154, baseType: !7, size: 32, offset: 6208)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bell_pitch", scope: !5031, file: !142, line: 155, baseType: !7, size: 32, offset: 6240)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bell_duration", scope: !5031, file: !142, line: 156, baseType: !7, size: 32, offset: 6272)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cur_blink_ms", scope: !5031, file: !142, line: 157, baseType: !179, size: 16, offset: 6304)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "vc_display_fg", scope: !5031, file: !142, line: 158, baseType: !5215, size: 64, offset: 6336)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "uni_pagedict", scope: !5031, file: !142, line: 159, baseType: !5217, size: 64, offset: 6400)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = !DICompositeType(tag: DW_TAG_structure_type, name: "uni_pagedict", file: !142, line: 20, flags: DIFlagFwdDecl)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "uni_pagedict_loc", scope: !5031, file: !142, line: 160, baseType: !5220, size: 64, offset: 6464)
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "vc_uni_lines", scope: !5031, file: !142, line: 161, baseType: !5222, size: 64, offset: 6528)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5026, file: !3, line: 42, baseType: !814, size: 64, offset: 320)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !5026, file: !3, line: 43, baseType: !7, size: 32, offset: 384)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5026, file: !3, line: 44, baseType: !5226, size: 32, offset: 416)
!5226 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5026, file: !3, line: 45, baseType: !109, size: 32, offset: 448)
!5228 = !{i32 7, !"Dwarf Version", i32 5}
!5229 = !{i32 2, !"Debug Info Version", i32 3}
!5230 = !{i32 1, !"wchar_size", i32 2}
!5231 = !{i32 8, !"cf-protection-branch", i32 1}
!5232 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5233 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5234 = !{i32 1, !"Code Model", i32 2}
!5235 = !{i32 1, !"override-stack-alignment", i32 8}
!5236 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5237 = distinct !DISubprogram(name: "clear_selection", scope: !3, file: !3, line: 81, type: !2383, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5238 = !DILocation(line: 83, column: 2, scope: !5237)
!5239 = !DILocation(line: 84, column: 13, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 84, column: 6)
!5241 = !DILocation(line: 84, column: 19, scope: !5240)
!5242 = !DILocation(line: 84, column: 6, scope: !5237)
!5243 = !DILocation(line: 85, column: 20, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 84, column: 26)
!5245 = !DILocation(line: 85, column: 34, scope: !5244)
!5246 = !DILocation(line: 85, column: 3, scope: !5244)
!5247 = !DILocation(line: 86, column: 16, scope: !5244)
!5248 = !DILocation(line: 87, column: 2, scope: !5244)
!5249 = !DILocation(line: 88, column: 1, scope: !5237)
!5250 = distinct !DISubprogram(name: "highlight_pointer", scope: !3, file: !3, line: 61, type: !5251, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5253)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{null, !2231}
!5253 = !{!5254}
!5254 = !DILocalVariable(name: "where", arg: 1, scope: !5250, file: !3, line: 61, type: !2231)
!5255 = !DILocation(line: 61, column: 48, scope: !5250)
!5256 = !DILocation(line: 63, column: 24, scope: !5250)
!5257 = !DILocation(line: 63, column: 30, scope: !5250)
!5258 = !DILocation(line: 63, column: 2, scope: !5250)
!5259 = !DILocation(line: 64, column: 1, scope: !5250)
!5260 = distinct !DISubprogram(name: "highlight", scope: !3, file: !3, line: 55, type: !5261, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5263)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{null, !2231, !2231}
!5263 = !{!5264, !5265}
!5264 = !DILocalVariable(name: "s", arg: 1, scope: !5260, file: !3, line: 55, type: !2231)
!5265 = !DILocalVariable(name: "e", arg: 2, scope: !5260, file: !3, line: 55, type: !2231)
!5266 = !DILocation(line: 55, column: 40, scope: !5260)
!5267 = !DILocation(line: 55, column: 53, scope: !5260)
!5268 = !DILocation(line: 57, column: 23, scope: !5260)
!5269 = !DILocation(line: 57, column: 29, scope: !5260)
!5270 = !DILocation(line: 57, column: 32, scope: !5260)
!5271 = !DILocation(line: 57, column: 34, scope: !5260)
!5272 = !DILocation(line: 57, column: 33, scope: !5260)
!5273 = !DILocation(line: 57, column: 35, scope: !5260)
!5274 = !DILocation(line: 57, column: 2, scope: !5260)
!5275 = !DILocation(line: 58, column: 1, scope: !5260)
!5276 = distinct !DISubprogram(name: "vc_is_sel", scope: !3, file: !3, line: 91, type: !5277, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5279)
!5277 = !DISubroutineType(types: !5278)
!5278 = !{!801, !5030}
!5279 = !{!5280}
!5280 = !DILocalVariable(name: "vc", arg: 1, scope: !5276, file: !3, line: 91, type: !5030)
!5281 = !DILocation(line: 91, column: 32, scope: !5276)
!5282 = !DILocation(line: 93, column: 9, scope: !5276)
!5283 = !DILocation(line: 93, column: 22, scope: !5276)
!5284 = !DILocation(line: 93, column: 12, scope: !5276)
!5285 = !DILocation(line: 93, column: 2, scope: !5276)
!5286 = distinct !DISubprogram(name: "sel_loadlut", scope: !3, file: !3, line: 119, type: !5287, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5289)
!5287 = !DISubroutineType(types: !5288)
!5288 = !{!109, !814}
!5289 = !{!5290, !5291}
!5290 = !DILocalVariable(name: "p", arg: 1, scope: !5286, file: !3, line: 119, type: !814)
!5291 = !DILocalVariable(name: "tmplut", scope: !5286, file: !3, line: 121, type: !5015)
!5292 = !DILocation(line: 119, column: 30, scope: !5286)
!5293 = !DILocation(line: 121, column: 2, scope: !5286)
!5294 = !DILocation(line: 121, column: 6, scope: !5286)
!5295 = !DILocation(line: 122, column: 21, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 122, column: 6)
!5297 = !DILocation(line: 122, column: 44, scope: !5296)
!5298 = !DILocation(line: 122, column: 45, scope: !5296)
!5299 = !DILocation(line: 122, column: 6, scope: !5296)
!5300 = !DILocation(line: 122, column: 6, scope: !5286)
!5301 = !DILocation(line: 123, column: 3, scope: !5296)
!5302 = !DILocation(line: 124, column: 2, scope: !5286)
!5303 = !DILocation(line: 125, column: 2, scope: !5286)
!5304 = !DILocation(line: 126, column: 1, scope: !5286)
!5305 = distinct !DISubprogram(name: "copy_from_user", scope: !5306, file: !5306, line: 180, type: !5307, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5309)
!5306 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!182, !169, !1859, !182}
!5309 = !{!5310, !5311, !5312}
!5310 = !DILocalVariable(name: "to", arg: 1, scope: !5305, file: !5306, line: 180, type: !169)
!5311 = !DILocalVariable(name: "from", arg: 2, scope: !5305, file: !5306, line: 180, type: !1859)
!5312 = !DILocalVariable(name: "n", arg: 3, scope: !5305, file: !5306, line: 180, type: !182)
!5313 = !DILocation(line: 180, column: 22, scope: !5305)
!5314 = !DILocation(line: 180, column: 45, scope: !5305)
!5315 = !DILocation(line: 180, column: 65, scope: !5305)
!5316 = !DILocation(line: 182, column: 22, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5305, file: !5306, line: 182, column: 6)
!5318 = !DILocation(line: 182, column: 26, scope: !5317)
!5319 = !DILocation(line: 182, column: 6, scope: !5317)
!5320 = !DILocation(line: 182, column: 6, scope: !5305)
!5321 = !DILocation(line: 183, column: 23, scope: !5317)
!5322 = !DILocation(line: 183, column: 27, scope: !5317)
!5323 = !DILocation(line: 183, column: 33, scope: !5317)
!5324 = !DILocation(line: 183, column: 7, scope: !5317)
!5325 = !DILocation(line: 183, column: 5, scope: !5317)
!5326 = !DILocation(line: 183, column: 3, scope: !5317)
!5327 = !DILocation(line: 184, column: 9, scope: !5305)
!5328 = !DILocation(line: 184, column: 2, scope: !5305)
!5329 = distinct !DISubprogram(name: "set_selection_user", scope: !3, file: !3, line: 178, type: !5330, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5342)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{!109, !5332, !3482}
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!5333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5334)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tiocl_selection", file: !5335, line: 14, size: 80, elements: !5336)
!5335 = !DIFile(filename: "./include/uapi/linux/tiocl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc72a802d8d0679617451e738a01f353")
!5336 = !{!5337, !5338, !5339, !5340, !5341}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "xs", scope: !5334, file: !5335, line: 15, baseType: !179, size: 16)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "ys", scope: !5334, file: !5335, line: 16, baseType: !179, size: 16, offset: 16)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "xe", scope: !5334, file: !5335, line: 17, baseType: !179, size: 16, offset: 32)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "ye", scope: !5334, file: !5335, line: 18, baseType: !179, size: 16, offset: 48)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "sel_mode", scope: !5334, file: !5335, line: 19, baseType: !179, size: 16, offset: 64)
!5342 = !{!5343, !5344, !5345}
!5343 = !DILocalVariable(name: "sel", arg: 1, scope: !5329, file: !3, line: 178, type: !5332)
!5344 = !DILocalVariable(name: "tty", arg: 2, scope: !5329, file: !3, line: 179, type: !3482)
!5345 = !DILocalVariable(name: "v", scope: !5329, file: !3, line: 181, type: !5334)
!5346 = !DILocation(line: 178, column: 61, scope: !5329)
!5347 = !DILocation(line: 179, column: 29, scope: !5329)
!5348 = !DILocation(line: 181, column: 2, scope: !5329)
!5349 = !DILocation(line: 181, column: 25, scope: !5329)
!5350 = !DILocation(line: 183, column: 25, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 183, column: 6)
!5352 = !DILocation(line: 183, column: 6, scope: !5351)
!5353 = !DILocation(line: 183, column: 6, scope: !5329)
!5354 = !DILocation(line: 184, column: 3, scope: !5351)
!5355 = !DILocation(line: 186, column: 34, scope: !5329)
!5356 = !DILocation(line: 186, column: 9, scope: !5329)
!5357 = !DILocation(line: 186, column: 2, scope: !5329)
!5358 = !DILocation(line: 187, column: 1, scope: !5329)
!5359 = distinct !DISubprogram(name: "set_selection_kernel", scope: !3, file: !3, line: 354, type: !5360, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5363)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!109, !5362, !3482}
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5363 = !{!5364, !5365, !5366}
!5364 = !DILocalVariable(name: "v", arg: 1, scope: !5359, file: !3, line: 354, type: !5362)
!5365 = !DILocalVariable(name: "tty", arg: 2, scope: !5359, file: !3, line: 354, type: !3482)
!5366 = !DILocalVariable(name: "ret", scope: !5359, file: !3, line: 356, type: !109)
!5367 = !DILocation(line: 354, column: 50, scope: !5359)
!5368 = !DILocation(line: 354, column: 72, scope: !5359)
!5369 = !DILocation(line: 356, column: 2, scope: !5359)
!5370 = !DILocation(line: 356, column: 6, scope: !5359)
!5371 = !DILocation(line: 358, column: 2, scope: !5359)
!5372 = !DILocation(line: 359, column: 2, scope: !5359)
!5373 = !DILocation(line: 360, column: 29, scope: !5359)
!5374 = !DILocation(line: 360, column: 21, scope: !5359)
!5375 = !DILocation(line: 360, column: 41, scope: !5359)
!5376 = !DILocation(line: 360, column: 44, scope: !5359)
!5377 = !DILocation(line: 360, column: 47, scope: !5359)
!5378 = !DILocation(line: 360, column: 8, scope: !5359)
!5379 = !DILocation(line: 360, column: 6, scope: !5359)
!5380 = !DILocation(line: 361, column: 2, scope: !5359)
!5381 = !DILocation(line: 362, column: 2, scope: !5359)
!5382 = !DILocation(line: 364, column: 9, scope: !5359)
!5383 = !DILocation(line: 365, column: 1, scope: !5359)
!5384 = !DILocation(line: 364, column: 2, scope: !5359)
!5385 = !DISubprogram(name: "mutex_lock", scope: !601, file: !601, line: 227, type: !5386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{null, !5388}
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!5389 = !DISubprogram(name: "console_lock", scope: !149, file: !149, line: 347, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5390 = distinct !DISubprogram(name: "vc_selection", scope: !3, file: !3, line: 317, type: !5391, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5393)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!109, !5030, !5362, !3482}
!5393 = !{!5394, !5395, !5396, !5397, !5398, !5399, !5401, !5402, !5404, !5405, !5407, !5408, !5410, !5411}
!5394 = !DILocalVariable(name: "vc", arg: 1, scope: !5390, file: !3, line: 317, type: !5030)
!5395 = !DILocalVariable(name: "v", arg: 2, scope: !5390, file: !3, line: 317, type: !5362)
!5396 = !DILocalVariable(name: "tty", arg: 3, scope: !5390, file: !3, line: 318, type: !3482)
!5397 = !DILocalVariable(name: "ps", scope: !5390, file: !3, line: 320, type: !109)
!5398 = !DILocalVariable(name: "pe", scope: !5390, file: !3, line: 320, type: !109)
!5399 = !DILocalVariable(name: "__UNIQUE_ID___x290", scope: !5400, file: !3, line: 330, type: !177)
!5400 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 330, column: 10)
!5401 = !DILocalVariable(name: "__UNIQUE_ID___y291", scope: !5400, file: !3, line: 330, type: !177)
!5402 = !DILocalVariable(name: "__UNIQUE_ID___x292", scope: !5403, file: !3, line: 331, type: !177)
!5403 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 331, column: 10)
!5404 = !DILocalVariable(name: "__UNIQUE_ID___y293", scope: !5403, file: !3, line: 331, type: !177)
!5405 = !DILocalVariable(name: "__UNIQUE_ID___x294", scope: !5406, file: !3, line: 332, type: !177)
!5406 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 332, column: 10)
!5407 = !DILocalVariable(name: "__UNIQUE_ID___y295", scope: !5406, file: !3, line: 332, type: !177)
!5408 = !DILocalVariable(name: "__UNIQUE_ID___x296", scope: !5409, file: !3, line: 333, type: !177)
!5409 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 333, column: 10)
!5410 = !DILocalVariable(name: "__UNIQUE_ID___y297", scope: !5409, file: !3, line: 333, type: !177)
!5411 = !DILocalVariable(name: "__tmp", scope: !5412, file: !3, line: 344, type: !109)
!5412 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 344, column: 3)
!5413 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 343, column: 6)
!5414 = !DILocation(line: 317, column: 41, scope: !5390)
!5415 = !DILocation(line: 317, column: 69, scope: !5390)
!5416 = !DILocation(line: 318, column: 22, scope: !5390)
!5417 = !DILocation(line: 320, column: 2, scope: !5390)
!5418 = !DILocation(line: 320, column: 6, scope: !5390)
!5419 = !DILocation(line: 320, column: 10, scope: !5390)
!5420 = !DILocation(line: 322, column: 2, scope: !5390)
!5421 = !DILocation(line: 324, column: 6, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 324, column: 6)
!5423 = !DILocation(line: 324, column: 9, scope: !5422)
!5424 = !DILocation(line: 324, column: 18, scope: !5422)
!5425 = !DILocation(line: 324, column: 6, scope: !5390)
!5426 = !DILocation(line: 326, column: 3, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 324, column: 37)
!5428 = !DILocation(line: 327, column: 3, scope: !5427)
!5429 = !DILocation(line: 330, column: 10, scope: !5400)
!5430 = !DILocation(line: 330, column: 10, scope: !5390)
!5431 = !DILocation(line: 330, column: 2, scope: !5390)
!5432 = !DILocation(line: 330, column: 5, scope: !5390)
!5433 = !DILocation(line: 330, column: 8, scope: !5390)
!5434 = !DILocation(line: 331, column: 10, scope: !5403)
!5435 = !DILocation(line: 331, column: 10, scope: !5390)
!5436 = !DILocation(line: 331, column: 2, scope: !5390)
!5437 = !DILocation(line: 331, column: 5, scope: !5390)
!5438 = !DILocation(line: 331, column: 8, scope: !5390)
!5439 = !DILocation(line: 332, column: 10, scope: !5406)
!5440 = !DILocation(line: 332, column: 10, scope: !5390)
!5441 = !DILocation(line: 332, column: 2, scope: !5390)
!5442 = !DILocation(line: 332, column: 5, scope: !5390)
!5443 = !DILocation(line: 332, column: 8, scope: !5390)
!5444 = !DILocation(line: 333, column: 10, scope: !5409)
!5445 = !DILocation(line: 333, column: 10, scope: !5390)
!5446 = !DILocation(line: 333, column: 2, scope: !5390)
!5447 = !DILocation(line: 333, column: 5, scope: !5390)
!5448 = !DILocation(line: 333, column: 8, scope: !5390)
!5449 = !DILocation(line: 335, column: 6, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 335, column: 6)
!5451 = !DILocation(line: 335, column: 24, scope: !5450)
!5452 = !DILocation(line: 335, column: 28, scope: !5450)
!5453 = !DILocation(line: 335, column: 31, scope: !5450)
!5454 = !DILocation(line: 335, column: 40, scope: !5450)
!5455 = !DILocation(line: 335, column: 6, scope: !5390)
!5456 = !DILocation(line: 336, column: 16, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 335, column: 65)
!5458 = !DILocation(line: 336, column: 21, scope: !5457)
!5459 = !DILocation(line: 336, column: 24, scope: !5457)
!5460 = !DILocation(line: 336, column: 33, scope: !5457)
!5461 = !DILocation(line: 336, column: 56, scope: !5457)
!5462 = !DILocation(line: 336, column: 59, scope: !5457)
!5463 = !DILocation(line: 337, column: 9, scope: !5457)
!5464 = !DILocation(line: 337, column: 12, scope: !5457)
!5465 = !DILocation(line: 336, column: 3, scope: !5457)
!5466 = !DILocation(line: 338, column: 3, scope: !5457)
!5467 = !DILocation(line: 341, column: 7, scope: !5390)
!5468 = !DILocation(line: 341, column: 10, scope: !5390)
!5469 = !DILocation(line: 341, column: 15, scope: !5390)
!5470 = !DILocation(line: 341, column: 19, scope: !5390)
!5471 = !DILocation(line: 341, column: 13, scope: !5390)
!5472 = !DILocation(line: 341, column: 34, scope: !5390)
!5473 = !DILocation(line: 341, column: 37, scope: !5390)
!5474 = !DILocation(line: 341, column: 40, scope: !5390)
!5475 = !DILocation(line: 341, column: 31, scope: !5390)
!5476 = !DILocation(line: 341, column: 5, scope: !5390)
!5477 = !DILocation(line: 342, column: 7, scope: !5390)
!5478 = !DILocation(line: 342, column: 10, scope: !5390)
!5479 = !DILocation(line: 342, column: 15, scope: !5390)
!5480 = !DILocation(line: 342, column: 19, scope: !5390)
!5481 = !DILocation(line: 342, column: 13, scope: !5390)
!5482 = !DILocation(line: 342, column: 34, scope: !5390)
!5483 = !DILocation(line: 342, column: 37, scope: !5390)
!5484 = !DILocation(line: 342, column: 40, scope: !5390)
!5485 = !DILocation(line: 342, column: 31, scope: !5390)
!5486 = !DILocation(line: 342, column: 5, scope: !5390)
!5487 = !DILocation(line: 343, column: 6, scope: !5413)
!5488 = !DILocation(line: 343, column: 11, scope: !5413)
!5489 = !DILocation(line: 343, column: 9, scope: !5413)
!5490 = !DILocation(line: 343, column: 6, scope: !5390)
!5491 = !DILocation(line: 344, column: 3, scope: !5413)
!5492 = !DILocation(line: 344, column: 3, scope: !5412)
!5493 = !DILocation(line: 346, column: 13, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 346, column: 6)
!5495 = !DILocation(line: 346, column: 21, scope: !5494)
!5496 = !DILocation(line: 346, column: 18, scope: !5494)
!5497 = !DILocation(line: 346, column: 6, scope: !5390)
!5498 = !DILocation(line: 347, column: 3, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 346, column: 25)
!5500 = !DILocation(line: 348, column: 17, scope: !5499)
!5501 = !DILocation(line: 348, column: 15, scope: !5499)
!5502 = !DILocation(line: 349, column: 2, scope: !5499)
!5503 = !DILocation(line: 351, column: 25, scope: !5390)
!5504 = !DILocation(line: 351, column: 29, scope: !5390)
!5505 = !DILocation(line: 351, column: 32, scope: !5390)
!5506 = !DILocation(line: 351, column: 42, scope: !5390)
!5507 = !DILocation(line: 351, column: 46, scope: !5390)
!5508 = !DILocation(line: 351, column: 9, scope: !5390)
!5509 = !DILocation(line: 351, column: 2, scope: !5390)
!5510 = !DILocation(line: 352, column: 1, scope: !5390)
!5511 = !DISubprogram(name: "console_unlock", scope: !149, file: !149, line: 349, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5512 = !DISubprogram(name: "mutex_unlock", scope: !601, file: !601, line: 246, type: !5386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5513 = distinct !DISubprogram(name: "paste_selection", scope: !3, file: !3, line: 375, type: !4187, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5514)
!5514 = !{!5515, !5516, !5517, !5518, !5519, !5520, !5532, !5533, !5539}
!5515 = !DILocalVariable(name: "tty", arg: 1, scope: !5513, file: !3, line: 375, type: !3482)
!5516 = !DILocalVariable(name: "vc", scope: !5513, file: !3, line: 377, type: !5030)
!5517 = !DILocalVariable(name: "pasted", scope: !5513, file: !3, line: 378, type: !109)
!5518 = !DILocalVariable(name: "count", scope: !5513, file: !3, line: 379, type: !1117)
!5519 = !DILocalVariable(name: "ld", scope: !5513, file: !3, line: 380, type: !4227)
!5520 = !DILocalVariable(name: "wait", scope: !5513, file: !3, line: 381, type: !5521)
!5521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !664, line: 30, size: 320, elements: !5522)
!5522 = !{!5523, !5524, !5525, !5531}
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5521, file: !664, line: 31, baseType: !7, size: 32)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5521, file: !664, line: 32, baseType: !169, size: 64, offset: 64)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5521, file: !664, line: 33, baseType: !5526, size: 64, offset: 128)
!5526 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !664, line: 16, baseType: !5527)
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5528 = !DISubroutineType(types: !5529)
!5529 = !{!109, !5530, !7, !109, !169}
!5530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5521, size: 64)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5521, file: !664, line: 34, baseType: !260, size: 128, offset: 192)
!5532 = !DILocalVariable(name: "ret", scope: !5513, file: !3, line: 382, type: !109)
!5533 = !DILocalVariable(name: "__ai_ptr", scope: !5534, file: !3, line: 396, type: !2117)
!5534 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 396, column: 3)
!5535 = distinct !DILexicalBlock(scope: !5536, file: !3, line: 396, column: 3)
!5536 = distinct !DILexicalBlock(scope: !5537, file: !3, line: 396, column: 3)
!5537 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 396, column: 3)
!5538 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 395, column: 51)
!5539 = !DILocalVariable(name: "__ret", scope: !5540, file: !3, line: 396, type: !7)
!5540 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 396, column: 3)
!5541 = !DILocation(line: 375, column: 40, scope: !5513)
!5542 = !DILocation(line: 377, column: 2, scope: !5513)
!5543 = !DILocation(line: 377, column: 18, scope: !5513)
!5544 = !DILocation(line: 377, column: 23, scope: !5513)
!5545 = !DILocation(line: 377, column: 28, scope: !5513)
!5546 = !DILocation(line: 378, column: 2, scope: !5513)
!5547 = !DILocation(line: 378, column: 6, scope: !5513)
!5548 = !DILocation(line: 379, column: 2, scope: !5513)
!5549 = !DILocation(line: 379, column: 9, scope: !5513)
!5550 = !DILocation(line: 380, column: 2, scope: !5513)
!5551 = !DILocation(line: 380, column: 21, scope: !5513)
!5552 = !DILocation(line: 381, column: 2, scope: !5513)
!5553 = !DILocation(line: 382, column: 2, scope: !5513)
!5554 = !DILocation(line: 382, column: 6, scope: !5513)
!5555 = !DILocation(line: 384, column: 2, scope: !5513)
!5556 = !DILocation(line: 385, column: 2, scope: !5513)
!5557 = !DILocation(line: 386, column: 2, scope: !5513)
!5558 = !DILocation(line: 388, column: 26, scope: !5513)
!5559 = !DILocation(line: 388, column: 7, scope: !5513)
!5560 = !DILocation(line: 388, column: 5, scope: !5513)
!5561 = !DILocation(line: 389, column: 7, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 389, column: 6)
!5563 = !DILocation(line: 389, column: 6, scope: !5513)
!5564 = !DILocation(line: 390, column: 3, scope: !5562)
!5565 = !DILocation(line: 391, column: 29, scope: !5513)
!5566 = !DILocation(line: 391, column: 33, scope: !5513)
!5567 = !DILocation(line: 391, column: 2, scope: !5513)
!5568 = !DILocation(line: 393, column: 18, scope: !5513)
!5569 = !DILocation(line: 393, column: 22, scope: !5513)
!5570 = !DILocation(line: 393, column: 2, scope: !5513)
!5571 = !DILocation(line: 394, column: 2, scope: !5513)
!5572 = !DILocation(line: 395, column: 2, scope: !5513)
!5573 = !DILocation(line: 395, column: 16, scope: !5513)
!5574 = !DILocation(line: 395, column: 9, scope: !5513)
!5575 = !DILocation(line: 395, column: 23, scope: !5513)
!5576 = !DILocation(line: 395, column: 33, scope: !5513)
!5577 = !DILocation(line: 395, column: 43, scope: !5513)
!5578 = !DILocation(line: 395, column: 41, scope: !5513)
!5579 = !DILocation(line: 0, scope: !5513)
!5580 = !DILocation(line: 396, column: 3, scope: !5538)
!5581 = !DILocation(line: 396, column: 3, scope: !5537)
!5582 = !DILocation(line: 396, column: 3, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5537, file: !3, line: 396, column: 3)
!5584 = !DILocation(line: 396, column: 3, scope: !5536)
!5585 = !DILocation(line: 396, column: 3, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5536, file: !3, line: 396, column: 3)
!5587 = !DILocation(line: 396, column: 3, scope: !5534)
!5588 = !DILocation(line: 396, column: 3, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 396, column: 3)
!5590 = !DILocation(line: 396, column: 3, scope: !5540)
!5591 = !{i64 2154865561}
!5592 = !DILocation(line: 396, column: 3, scope: !5535)
!5593 = !DILocation(line: 397, column: 22, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 397, column: 7)
!5595 = !DILocation(line: 397, column: 7, scope: !5594)
!5596 = !DILocation(line: 397, column: 7, scope: !5538)
!5597 = !DILocation(line: 398, column: 8, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 397, column: 32)
!5599 = !DILocation(line: 399, column: 4, scope: !5598)
!5600 = !DILocation(line: 401, column: 21, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 401, column: 7)
!5602 = !DILocation(line: 401, column: 7, scope: !5601)
!5603 = !DILocation(line: 401, column: 7, scope: !5538)
!5604 = !DILocation(line: 402, column: 4, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 401, column: 27)
!5606 = !DILocation(line: 403, column: 4, scope: !5605)
!5607 = !DILocation(line: 404, column: 4, scope: !5605)
!5608 = !DILocation(line: 405, column: 4, scope: !5605)
!5609 = distinct !{!5609, !5572, !5610, !5611, !5612}
!5610 = !DILocation(line: 412, column: 2, scope: !5513)
!5611 = !{!"llvm.loop.mustprogress"}
!5612 = !{!"llvm.loop.unroll.disable"}
!5613 = !DILocation(line: 407, column: 3, scope: !5538)
!5614 = !DILocation(line: 407, column: 3, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 407, column: 3)
!5616 = !DILocation(line: 407, column: 3, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 407, column: 3)
!5618 = !DILocation(line: 407, column: 3, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 407, column: 3)
!5620 = !DILocation(line: 407, column: 3, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 407, column: 3)
!5622 = !DILocation(line: 407, column: 3, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 407, column: 3)
!5624 = !DILocation(line: 408, column: 18, scope: !5538)
!5625 = !DILocation(line: 408, column: 28, scope: !5538)
!5626 = !DILocation(line: 408, column: 26, scope: !5538)
!5627 = !DILocation(line: 408, column: 11, scope: !5538)
!5628 = !DILocation(line: 408, column: 9, scope: !5538)
!5629 = !DILocation(line: 409, column: 33, scope: !5538)
!5630 = !DILocation(line: 409, column: 44, scope: !5538)
!5631 = !DILocation(line: 409, column: 53, scope: !5538)
!5632 = !DILocation(line: 409, column: 51, scope: !5538)
!5633 = !DILocation(line: 410, column: 12, scope: !5538)
!5634 = !DILocation(line: 409, column: 11, scope: !5538)
!5635 = !DILocation(line: 409, column: 9, scope: !5538)
!5636 = !DILocation(line: 411, column: 13, scope: !5538)
!5637 = !DILocation(line: 411, column: 10, scope: !5538)
!5638 = !DILocation(line: 413, column: 2, scope: !5513)
!5639 = !DILocation(line: 414, column: 21, scope: !5513)
!5640 = !DILocation(line: 414, column: 25, scope: !5513)
!5641 = !DILocation(line: 414, column: 2, scope: !5513)
!5642 = !DILocation(line: 415, column: 2, scope: !5513)
!5643 = !DILocation(line: 415, column: 2, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 415, column: 2)
!5645 = !DILocation(line: 415, column: 2, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 415, column: 2)
!5647 = !DILocation(line: 415, column: 2, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 415, column: 2)
!5649 = !DILocation(line: 415, column: 2, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 415, column: 2)
!5651 = !DILocation(line: 415, column: 2, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 415, column: 2)
!5653 = !DILocation(line: 417, column: 31, scope: !5513)
!5654 = !DILocation(line: 417, column: 35, scope: !5513)
!5655 = !DILocation(line: 417, column: 2, scope: !5513)
!5656 = !DILocation(line: 418, column: 18, scope: !5513)
!5657 = !DILocation(line: 418, column: 2, scope: !5513)
!5658 = !DILocation(line: 419, column: 9, scope: !5513)
!5659 = !DILocation(line: 419, column: 2, scope: !5513)
!5660 = !DILocation(line: 420, column: 1, scope: !5513)
!5661 = distinct !DISubprogram(name: "get_current", scope: !5662, file: !5662, line: 39, type: !5663, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5665)
!5662 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!184}
!5665 = !{!5666, !5668, !5670}
!5666 = !DILocalVariable(name: "pscr_ret__", scope: !5667, file: !5662, line: 41, type: !184)
!5667 = distinct !DILexicalBlock(scope: !5661, file: !5662, line: 41, column: 9)
!5668 = !DILocalVariable(name: "__vpp_verify", scope: !5669, file: !5662, line: 41, type: !1859)
!5669 = distinct !DILexicalBlock(scope: !5667, file: !5662, line: 41, column: 9)
!5670 = !DILocalVariable(name: "pfo_val__", scope: !5671, file: !5662, line: 41, type: !255)
!5671 = distinct !DILexicalBlock(scope: !5667, file: !5662, line: 41, column: 9)
!5672 = !DILocation(line: 41, column: 9, scope: !5667)
!5673 = !DILocation(line: 41, column: 9, scope: !5669)
!5674 = !DILocation(line: 41, column: 9, scope: !5671)
!5675 = !{i64 2148541611}
!5676 = !DILocation(line: 41, column: 9, scope: !5661)
!5677 = !DILocation(line: 41, column: 2, scope: !5661)
!5678 = !DISubprogram(name: "poke_blanked_console", scope: !5679, file: !5679, line: 33, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5679 = !DIFile(filename: "./include/linux/vt_kern.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83e57bc81c61ff5fee07ce676ec7836f")
!5680 = !DISubprogram(name: "tty_ldisc_ref_wait", scope: !4229, file: !4229, line: 281, type: !5681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5681 = !DISubroutineType(types: !5682)
!5682 = !{!4227, !3482}
!5683 = !DISubprogram(name: "tty_buffer_lock_exclusive", scope: !5684, file: !5684, line: 89, type: !4037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5684 = !DIFile(filename: "./include/linux/tty_flip.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04380b3f455bbeb1733f22cd11e51be3")
!5685 = !DISubprogram(name: "add_wait_queue", scope: !664, file: !664, line: 166, type: !5686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{null, !5688, !5530}
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!5689 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5690, file: !5690, line: 94, type: !5691, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5696)
!5690 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5691 = !DISubroutineType(types: !5692)
!5692 = !{null, !5693, !1117}
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5694, size: 64)
!5694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5695)
!5695 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5696 = !{!5697, !5698}
!5697 = !DILocalVariable(name: "v", arg: 1, scope: !5689, file: !5690, line: 94, type: !5693)
!5698 = !DILocalVariable(name: "size", arg: 2, scope: !5689, file: !5690, line: 94, type: !1117)
!5699 = !DILocation(line: 94, column: 79, scope: !5689)
!5700 = !DILocation(line: 94, column: 89, scope: !5689)
!5701 = !DILocation(line: 96, column: 20, scope: !5689)
!5702 = !DILocation(line: 96, column: 23, scope: !5689)
!5703 = !DILocation(line: 96, column: 2, scope: !5689)
!5704 = !DILocation(line: 97, column: 2, scope: !5689)
!5705 = !DILocation(line: 98, column: 1, scope: !5689)
!5706 = distinct !DISubprogram(name: "signal_pending", scope: !3418, file: !3418, line: 392, type: !5707, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5709)
!5707 = !DISubroutineType(types: !5708)
!5708 = !{!109, !184}
!5709 = !{!5710}
!5710 = !DILocalVariable(name: "p", arg: 1, scope: !5706, file: !3418, line: 392, type: !184)
!5711 = !DILocation(line: 392, column: 54, scope: !5706)
!5712 = !DILocation(line: 399, column: 6, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5706, file: !3418, line: 399, column: 6)
!5714 = !DILocation(line: 399, column: 6, scope: !5706)
!5715 = !DILocation(line: 400, column: 3, scope: !5713)
!5716 = !DILocation(line: 401, column: 25, scope: !5706)
!5717 = !DILocation(line: 401, column: 9, scope: !5706)
!5718 = !DILocation(line: 401, column: 2, scope: !5706)
!5719 = !DILocation(line: 402, column: 1, scope: !5706)
!5720 = distinct !DISubprogram(name: "tty_throttled", scope: !3484, file: !3484, line: 338, type: !5721, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5723)
!5721 = !DISubroutineType(types: !5722)
!5722 = !{!801, !3482}
!5723 = !{!5724}
!5724 = !DILocalVariable(name: "tty", arg: 1, scope: !5720, file: !3484, line: 338, type: !3482)
!5725 = !DILocation(line: 338, column: 53, scope: !5720)
!5726 = !DILocation(line: 340, column: 9, scope: !5720)
!5727 = !DILocation(line: 340, column: 2, scope: !5720)
!5728 = !DISubprogram(name: "schedule", scope: !186, file: !186, line: 303, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5729 = !DISubprogram(name: "tty_ldisc_receive_buf", scope: !5684, file: !5684, line: 86, type: !5730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{!1117, !4227, !4053, !4053, !1117}
!5732 = !DISubprogram(name: "remove_wait_queue", scope: !664, file: !664, line: 169, type: !5686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5733 = !DISubprogram(name: "tty_buffer_unlock_exclusive", scope: !5684, file: !5684, line: 90, type: !4037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5734 = !DISubprogram(name: "tty_ldisc_deref", scope: !4229, file: !4229, line: 280, type: !5735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5735 = !DISubroutineType(types: !5736)
!5736 = !{null, !4227}
!5737 = !DISubprogram(name: "complement_pos", scope: !5738, file: !5738, line: 40, type: !5072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5738 = !DIFile(filename: "./include/linux/selection.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f24566a625a35aa34ca21fa0e23556ce")
!5739 = !DISubprogram(name: "invert_screen", scope: !5738, file: !5738, line: 41, type: !5740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5740 = !DISubroutineType(types: !5741)
!5741 = !{null, !5030, !109, !109, !801}
!5742 = distinct !DISubprogram(name: "check_copy_size", scope: !5009, file: !5009, line: 237, type: !5743, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5745)
!5743 = !DISubroutineType(types: !5744)
!5744 = !{!801, !1859, !1117, !801}
!5745 = !{!5746, !5747, !5748, !5749, !5750, !5753}
!5746 = !DILocalVariable(name: "addr", arg: 1, scope: !5742, file: !5009, line: 237, type: !1859)
!5747 = !DILocalVariable(name: "bytes", arg: 2, scope: !5742, file: !5009, line: 237, type: !1117)
!5748 = !DILocalVariable(name: "is_source", arg: 3, scope: !5742, file: !5009, line: 237, type: !801)
!5749 = !DILocalVariable(name: "sz", scope: !5742, file: !5009, line: 239, type: !109)
!5750 = !DILocalVariable(name: "__ret_warn_on", scope: !5751, file: !5009, line: 249, type: !109)
!5751 = distinct !DILexicalBlock(scope: !5752, file: !5009, line: 249, column: 6)
!5752 = distinct !DILexicalBlock(scope: !5742, file: !5009, line: 249, column: 6)
!5753 = !DILocalVariable(name: "__flags", scope: !5754, file: !5009, line: 249, type: !109)
!5754 = distinct !DILexicalBlock(scope: !5755, file: !5009, line: 249, column: 6)
!5755 = distinct !DILexicalBlock(scope: !5751, file: !5009, line: 249, column: 6)
!5756 = !DILocation(line: 237, column: 29, scope: !5742)
!5757 = !DILocation(line: 237, column: 42, scope: !5742)
!5758 = !DILocation(line: 237, column: 54, scope: !5742)
!5759 = !DILocation(line: 239, column: 2, scope: !5742)
!5760 = !DILocation(line: 239, column: 6, scope: !5742)
!5761 = !DILocation(line: 239, column: 33, scope: !5742)
!5762 = !DILocation(line: 239, column: 11, scope: !5742)
!5763 = !DILocation(line: 240, column: 6, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5742, file: !5009, line: 240, column: 6)
!5765 = !DILocation(line: 0, scope: !5764)
!5766 = !DILocation(line: 240, column: 6, scope: !5742)
!5767 = !DILocation(line: 241, column: 29, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5769, file: !5009, line: 241, column: 7)
!5769 = distinct !DILexicalBlock(scope: !5764, file: !5009, line: 240, column: 39)
!5770 = !DILocation(line: 241, column: 8, scope: !5768)
!5771 = !DILocation(line: 241, column: 7, scope: !5769)
!5772 = !DILocation(line: 242, column: 18, scope: !5768)
!5773 = !DILocation(line: 242, column: 22, scope: !5768)
!5774 = !DILocation(line: 242, column: 4, scope: !5768)
!5775 = !DILocation(line: 243, column: 12, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5768, file: !5009, line: 243, column: 12)
!5777 = !{i8 0, i8 2}
!5778 = !DILocation(line: 243, column: 12, scope: !5768)
!5779 = !DILocation(line: 244, column: 4, scope: !5776)
!5780 = !{i32 2115790}
!5781 = !DILocation(line: 246, column: 4, scope: !5776)
!5782 = !{i32 2115819}
!5783 = !DILocation(line: 247, column: 3, scope: !5769)
!5784 = !DILocation(line: 249, column: 6, scope: !5751)
!5785 = !DILocation(line: 249, column: 6, scope: !5755)
!5786 = !DILocation(line: 249, column: 6, scope: !5754)
!5787 = !DILocation(line: 249, column: 6, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5754, file: !5009, line: 249, column: 6)
!5789 = !DILocation(line: 249, column: 6, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5754, file: !5009, line: 249, column: 6)
!5791 = !{i64 2149616252, i64 2149616281, i64 2149616327, i64 2149616385, i64 2149616439, i64 2149616493, i64 2149616548, i64 2149616579, i64 2149616887, i64 2149616893, i64 2149616940, i64 2149616963, i64 2149616989}
!5792 = !DILocation(line: 249, column: 6, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5754, file: !5009, line: 249, column: 6)
!5794 = !DILocation(line: 249, column: 6, scope: !5752)
!5795 = !DILocation(line: 249, column: 6, scope: !5742)
!5796 = !DILocation(line: 250, column: 3, scope: !5752)
!5797 = !DILocation(line: 251, column: 20, scope: !5742)
!5798 = !DILocation(line: 251, column: 26, scope: !5742)
!5799 = !DILocation(line: 251, column: 33, scope: !5742)
!5800 = !DILocation(line: 251, column: 2, scope: !5742)
!5801 = !DILocation(line: 252, column: 2, scope: !5742)
!5802 = !DILocation(line: 253, column: 1, scope: !5742)
!5803 = !DISubprogram(name: "_copy_from_user", scope: !5306, file: !5306, line: 158, type: !5307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5804 = distinct !DISubprogram(name: "copy_overflow", scope: !5009, file: !5009, line: 230, type: !5805, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5807)
!5805 = !DISubroutineType(types: !5806)
!5806 = !{null, !109, !182}
!5807 = !{!5808, !5809}
!5808 = !DILocalVariable(name: "size", arg: 1, scope: !5804, file: !5009, line: 230, type: !109)
!5809 = !DILocalVariable(name: "count", arg: 2, scope: !5804, file: !5009, line: 230, type: !182)
!5810 = !DILocation(line: 230, column: 38, scope: !5804)
!5811 = !DILocation(line: 230, column: 58, scope: !5804)
!5812 = !DILocation(line: 233, column: 19, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5804, file: !5009, line: 232, column: 6)
!5814 = !DILocation(line: 233, column: 25, scope: !5813)
!5815 = !DILocation(line: 233, column: 3, scope: !5813)
!5816 = !DILocation(line: 234, column: 1, scope: !5804)
!5817 = !DISubprogram(name: "__bad_copy_from", scope: !5009, file: !5009, line: 224, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5818 = !DISubprogram(name: "__bad_copy_to", scope: !5009, file: !5009, line: 226, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5819 = distinct !DISubprogram(name: "check_object_size", scope: !5009, file: !5009, line: 218, type: !5820, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5822)
!5820 = !DISubroutineType(types: !5821)
!5821 = !{null, !1859, !182, !801}
!5822 = !{!5823, !5824, !5825}
!5823 = !DILocalVariable(name: "ptr", arg: 1, scope: !5819, file: !5009, line: 218, type: !1859)
!5824 = !DILocalVariable(name: "n", arg: 2, scope: !5819, file: !5009, line: 218, type: !182)
!5825 = !DILocalVariable(name: "to_user", arg: 3, scope: !5819, file: !5009, line: 219, type: !801)
!5826 = !DILocation(line: 218, column: 50, scope: !5819)
!5827 = !DILocation(line: 218, column: 69, scope: !5819)
!5828 = !DILocation(line: 219, column: 15, scope: !5819)
!5829 = !DILocation(line: 220, column: 3, scope: !5819)
!5830 = !DISubprogram(name: "__copy_overflow", scope: !5009, file: !5009, line: 228, type: !5805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5831 = !DISubprogram(name: "mouse_reporting", scope: !5738, file: !5738, line: 24, type: !2137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5832 = !DISubprogram(name: "mouse_report", scope: !5738, file: !5738, line: 25, type: !5833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5833 = !DISubroutineType(types: !5834)
!5834 = !{null, !3482, !109, !109, !109}
!5835 = distinct !DISubprogram(name: "vc_do_selection", scope: !3, file: !3, line: 230, type: !5836, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5838)
!5836 = !DISubroutineType(types: !5837)
!5837 = !{!109, !5030, !179, !109, !109}
!5838 = !{!5839, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5850}
!5839 = !DILocalVariable(name: "vc", arg: 1, scope: !5835, file: !3, line: 230, type: !5030)
!5840 = !DILocalVariable(name: "mode", arg: 2, scope: !5835, file: !3, line: 230, type: !179)
!5841 = !DILocalVariable(name: "ps", arg: 3, scope: !5835, file: !3, line: 230, type: !109)
!5842 = !DILocalVariable(name: "pe", arg: 4, scope: !5835, file: !3, line: 231, type: !109)
!5843 = !DILocalVariable(name: "new_sel_start", scope: !5835, file: !3, line: 233, type: !109)
!5844 = !DILocalVariable(name: "new_sel_end", scope: !5835, file: !3, line: 233, type: !109)
!5845 = !DILocalVariable(name: "spc", scope: !5835, file: !3, line: 233, type: !109)
!5846 = !DILocalVariable(name: "unicode", scope: !5835, file: !3, line: 234, type: !801)
!5847 = !DILocalVariable(name: "__x", scope: !5848, file: !3, line: 263, type: !109)
!5848 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 263, column: 19)
!5849 = distinct !DILexicalBlock(scope: !5835, file: !3, line: 236, column: 16)
!5850 = !DILocalVariable(name: "__x", scope: !5851, file: !3, line: 264, type: !109)
!5851 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 264, column: 17)
!5852 = !DILocation(line: 230, column: 44, scope: !5835)
!5853 = !DILocation(line: 230, column: 63, scope: !5835)
!5854 = !DILocation(line: 230, column: 73, scope: !5835)
!5855 = !DILocation(line: 231, column: 7, scope: !5835)
!5856 = !DILocation(line: 233, column: 2, scope: !5835)
!5857 = !DILocation(line: 233, column: 6, scope: !5835)
!5858 = !DILocation(line: 233, column: 21, scope: !5835)
!5859 = !DILocation(line: 233, column: 34, scope: !5835)
!5860 = !DILocation(line: 234, column: 2, scope: !5835)
!5861 = !DILocation(line: 234, column: 7, scope: !5835)
!5862 = !DILocation(line: 234, column: 33, scope: !5835)
!5863 = !DILocation(line: 234, column: 17, scope: !5835)
!5864 = !DILocation(line: 234, column: 45, scope: !5835)
!5865 = !DILocation(line: 236, column: 10, scope: !5835)
!5866 = !DILocation(line: 236, column: 2, scope: !5835)
!5867 = !DILocation(line: 238, column: 19, scope: !5849)
!5868 = !DILocation(line: 238, column: 17, scope: !5849)
!5869 = !DILocation(line: 239, column: 17, scope: !5849)
!5870 = !DILocation(line: 239, column: 15, scope: !5849)
!5871 = !DILocation(line: 240, column: 3, scope: !5849)
!5872 = !DILocation(line: 242, column: 9, scope: !5849)
!5873 = !DILocation(line: 242, column: 7, scope: !5849)
!5874 = !DILocation(line: 243, column: 24, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 243, column: 3)
!5876 = !DILocation(line: 243, column: 22, scope: !5875)
!5877 = !DILocation(line: 243, column: 8, scope: !5875)
!5878 = !DILocation(line: 244, column: 9, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 244, column: 8)
!5880 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 243, column: 39)
!5881 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 243, column: 3)
!5882 = !DILocation(line: 244, column: 13, scope: !5879)
!5883 = !DILocation(line: 244, column: 17, scope: !5879)
!5884 = !DILocation(line: 244, column: 55, scope: !5879)
!5885 = !DILocation(line: 245, column: 10, scope: !5879)
!5886 = !DILocation(line: 245, column: 14, scope: !5879)
!5887 = !DILocation(line: 245, column: 33, scope: !5879)
!5888 = !DILocation(line: 245, column: 37, scope: !5879)
!5889 = !DILocation(line: 245, column: 25, scope: !5879)
!5890 = !DILocation(line: 245, column: 18, scope: !5879)
!5891 = !DILocation(line: 244, column: 8, scope: !5880)
!5892 = !DILocation(line: 246, column: 5, scope: !5879)
!5893 = !DILocation(line: 247, column: 20, scope: !5880)
!5894 = !DILocation(line: 247, column: 18, scope: !5880)
!5895 = !DILocation(line: 248, column: 10, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 248, column: 8)
!5897 = !DILocation(line: 248, column: 15, scope: !5896)
!5898 = !DILocation(line: 248, column: 19, scope: !5896)
!5899 = !DILocation(line: 248, column: 13, scope: !5896)
!5900 = !DILocation(line: 248, column: 8, scope: !5880)
!5901 = !DILocation(line: 249, column: 5, scope: !5896)
!5902 = !DILocation(line: 250, column: 3, scope: !5880)
!5903 = !DILocation(line: 243, column: 33, scope: !5881)
!5904 = !DILocation(line: 243, column: 3, scope: !5881)
!5905 = distinct !{!5905, !5906, !5907, !5612}
!5906 = !DILocation(line: 243, column: 3, scope: !5875)
!5907 = !DILocation(line: 250, column: 3, scope: !5875)
!5908 = !DILocation(line: 252, column: 9, scope: !5849)
!5909 = !DILocation(line: 252, column: 7, scope: !5849)
!5910 = !DILocation(line: 253, column: 22, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 253, column: 3)
!5912 = !DILocation(line: 253, column: 20, scope: !5911)
!5913 = !DILocation(line: 253, column: 8, scope: !5911)
!5914 = !DILocation(line: 254, column: 9, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 254, column: 8)
!5916 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 253, column: 37)
!5917 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 253, column: 3)
!5918 = !DILocation(line: 254, column: 13, scope: !5915)
!5919 = !DILocation(line: 254, column: 17, scope: !5915)
!5920 = !DILocation(line: 254, column: 55, scope: !5915)
!5921 = !DILocation(line: 255, column: 10, scope: !5915)
!5922 = !DILocation(line: 255, column: 14, scope: !5915)
!5923 = !DILocation(line: 255, column: 33, scope: !5915)
!5924 = !DILocation(line: 255, column: 37, scope: !5915)
!5925 = !DILocation(line: 255, column: 25, scope: !5915)
!5926 = !DILocation(line: 255, column: 18, scope: !5915)
!5927 = !DILocation(line: 254, column: 8, scope: !5916)
!5928 = !DILocation(line: 256, column: 5, scope: !5915)
!5929 = !DILocation(line: 257, column: 18, scope: !5916)
!5930 = !DILocation(line: 257, column: 16, scope: !5916)
!5931 = !DILocation(line: 258, column: 11, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 258, column: 8)
!5933 = !DILocation(line: 258, column: 14, scope: !5932)
!5934 = !DILocation(line: 258, column: 21, scope: !5932)
!5935 = !DILocation(line: 258, column: 25, scope: !5932)
!5936 = !DILocation(line: 258, column: 19, scope: !5932)
!5937 = !DILocation(line: 258, column: 8, scope: !5916)
!5938 = !DILocation(line: 259, column: 5, scope: !5932)
!5939 = !DILocation(line: 260, column: 3, scope: !5916)
!5940 = !DILocation(line: 253, column: 31, scope: !5917)
!5941 = !DILocation(line: 253, column: 3, scope: !5917)
!5942 = distinct !{!5942, !5943, !5944, !5612}
!5943 = !DILocation(line: 253, column: 3, scope: !5911)
!5944 = !DILocation(line: 260, column: 3, scope: !5911)
!5945 = !DILocation(line: 261, column: 3, scope: !5849)
!5946 = !DILocation(line: 263, column: 19, scope: !5848)
!5947 = !DILocation(line: 263, column: 19, scope: !5849)
!5948 = !DILocation(line: 263, column: 17, scope: !5849)
!5949 = !DILocation(line: 264, column: 17, scope: !5851)
!5950 = !DILocation(line: 264, column: 17, scope: !5849)
!5951 = !DILocation(line: 265, column: 4, scope: !5849)
!5952 = !DILocation(line: 265, column: 8, scope: !5849)
!5953 = !DILocation(line: 264, column: 48, scope: !5849)
!5954 = !DILocation(line: 265, column: 20, scope: !5849)
!5955 = !DILocation(line: 264, column: 15, scope: !5849)
!5956 = !DILocation(line: 266, column: 3, scope: !5849)
!5957 = !DILocation(line: 268, column: 21, scope: !5849)
!5958 = !DILocation(line: 268, column: 3, scope: !5849)
!5959 = !DILocation(line: 269, column: 3, scope: !5849)
!5960 = !DILocation(line: 271, column: 3, scope: !5849)
!5961 = !DILocation(line: 275, column: 2, scope: !5835)
!5962 = !DILocation(line: 278, column: 6, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5835, file: !3, line: 278, column: 6)
!5964 = !DILocation(line: 278, column: 20, scope: !5963)
!5965 = !DILocation(line: 278, column: 18, scope: !5963)
!5966 = !DILocation(line: 278, column: 34, scope: !5963)
!5967 = !DILocation(line: 279, column: 11, scope: !5963)
!5968 = !DILocation(line: 279, column: 24, scope: !5963)
!5969 = !DILocation(line: 279, column: 28, scope: !5963)
!5970 = !DILocation(line: 279, column: 4, scope: !5963)
!5971 = !DILocation(line: 279, column: 41, scope: !5963)
!5972 = !DILocation(line: 280, column: 3, scope: !5963)
!5973 = !DILocation(line: 278, column: 6, scope: !5835)
!5974 = !DILocation(line: 281, column: 13, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 281, column: 3)
!5976 = distinct !DILexicalBlock(scope: !5963, file: !3, line: 280, column: 50)
!5977 = !DILocation(line: 281, column: 25, scope: !5975)
!5978 = !DILocation(line: 281, column: 11, scope: !5975)
!5979 = !DILocation(line: 281, column: 8, scope: !5975)
!5980 = !DILocation(line: 282, column: 9, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 282, column: 8)
!5982 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 281, column: 3)
!5983 = !DILocation(line: 282, column: 46, scope: !5981)
!5984 = !DILocation(line: 283, column: 15, scope: !5981)
!5985 = !DILocation(line: 283, column: 19, scope: !5981)
!5986 = !DILocation(line: 283, column: 23, scope: !5981)
!5987 = !DILocation(line: 283, column: 8, scope: !5981)
!5988 = !DILocation(line: 282, column: 8, scope: !5982)
!5989 = !DILocation(line: 284, column: 5, scope: !5981)
!5990 = !DILocation(line: 283, column: 34, scope: !5981)
!5991 = !DILocation(line: 281, column: 35, scope: !5982)
!5992 = !DILocation(line: 281, column: 3, scope: !5982)
!5993 = distinct !{!5993, !5994, !5995, !5612}
!5994 = !DILocation(line: 281, column: 3, scope: !5975)
!5995 = !DILocation(line: 284, column: 5, scope: !5975)
!5996 = !DILocation(line: 285, column: 7, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 285, column: 7)
!5998 = !DILocation(line: 285, column: 7, scope: !5976)
!5999 = !DILocation(line: 286, column: 18, scope: !5997)
!6000 = !DILocation(line: 286, column: 16, scope: !5997)
!6001 = !DILocation(line: 286, column: 4, scope: !5997)
!6002 = !DILocation(line: 287, column: 2, scope: !5976)
!6003 = !DILocation(line: 288, column: 13, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5835, file: !3, line: 288, column: 6)
!6005 = !DILocation(line: 288, column: 19, scope: !6004)
!6006 = !DILocation(line: 288, column: 6, scope: !5835)
!6007 = !DILocation(line: 289, column: 13, scope: !6004)
!6008 = !DILocation(line: 289, column: 28, scope: !6004)
!6009 = !DILocation(line: 289, column: 3, scope: !6004)
!6010 = !DILocation(line: 290, column: 11, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !6004, file: !3, line: 290, column: 11)
!6012 = !DILocation(line: 290, column: 35, scope: !6011)
!6013 = !DILocation(line: 290, column: 25, scope: !6011)
!6014 = !DILocation(line: 290, column: 11, scope: !6004)
!6015 = !DILocation(line: 292, column: 7, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 292, column: 7)
!6017 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 291, column: 2)
!6018 = !DILocation(line: 292, column: 29, scope: !6016)
!6019 = !DILocation(line: 292, column: 19, scope: !6016)
!6020 = !DILocation(line: 292, column: 7, scope: !6017)
!6021 = !DILocation(line: 293, column: 4, scope: !6016)
!6022 = !DILocation(line: 294, column: 12, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 294, column: 12)
!6024 = !DILocation(line: 294, column: 33, scope: !6023)
!6025 = !DILocation(line: 294, column: 24, scope: !6023)
!6026 = !DILocation(line: 294, column: 12, scope: !6016)
!6027 = !DILocation(line: 295, column: 21, scope: !6023)
!6028 = !DILocation(line: 295, column: 25, scope: !6023)
!6029 = !DILocation(line: 295, column: 30, scope: !6023)
!6030 = !DILocation(line: 295, column: 4, scope: !6023)
!6031 = !DILocation(line: 297, column: 14, scope: !6023)
!6032 = !DILocation(line: 297, column: 26, scope: !6023)
!6033 = !DILocation(line: 297, column: 38, scope: !6023)
!6034 = !DILocation(line: 297, column: 4, scope: !6023)
!6035 = !DILocation(line: 298, column: 2, scope: !6017)
!6036 = !DILocation(line: 299, column: 11, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 299, column: 11)
!6038 = !DILocation(line: 299, column: 33, scope: !6037)
!6039 = !DILocation(line: 299, column: 23, scope: !6037)
!6040 = !DILocation(line: 299, column: 11, scope: !6011)
!6041 = !DILocation(line: 301, column: 7, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6043, file: !3, line: 301, column: 7)
!6043 = distinct !DILexicalBlock(scope: !6037, file: !3, line: 300, column: 2)
!6044 = !DILocation(line: 301, column: 30, scope: !6042)
!6045 = !DILocation(line: 301, column: 21, scope: !6042)
!6046 = !DILocation(line: 301, column: 7, scope: !6043)
!6047 = !DILocation(line: 302, column: 14, scope: !6042)
!6048 = !DILocation(line: 302, column: 36, scope: !6042)
!6049 = !DILocation(line: 302, column: 42, scope: !6042)
!6050 = !DILocation(line: 302, column: 4, scope: !6042)
!6051 = !DILocation(line: 304, column: 21, scope: !6042)
!6052 = !DILocation(line: 304, column: 28, scope: !6042)
!6053 = !DILocation(line: 304, column: 42, scope: !6042)
!6054 = !DILocation(line: 304, column: 4, scope: !6042)
!6055 = !DILocation(line: 305, column: 2, scope: !6043)
!6056 = !DILocation(line: 308, column: 3, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !6037, file: !3, line: 307, column: 2)
!6058 = !DILocation(line: 309, column: 13, scope: !6057)
!6059 = !DILocation(line: 309, column: 28, scope: !6057)
!6060 = !DILocation(line: 309, column: 3, scope: !6057)
!6061 = !DILocation(line: 311, column: 17, scope: !5835)
!6062 = !DILocation(line: 311, column: 15, scope: !5835)
!6063 = !DILocation(line: 312, column: 15, scope: !5835)
!6064 = !DILocation(line: 312, column: 13, scope: !5835)
!6065 = !DILocation(line: 314, column: 34, scope: !5835)
!6066 = !DILocation(line: 314, column: 38, scope: !5835)
!6067 = !DILocation(line: 314, column: 9, scope: !5835)
!6068 = !DILocation(line: 314, column: 2, scope: !5835)
!6069 = !DILocation(line: 315, column: 1, scope: !5835)
!6070 = !DISubprogram(name: "vt_do_kdgkbmode", scope: !5679, file: !5679, line: 158, type: !6071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6071 = !DISubroutineType(types: !6072)
!6072 = !{!109, !7}
!6073 = distinct !DISubprogram(name: "sel_pos", scope: !3, file: !3, line: 67, type: !6074, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6076)
!6074 = !DISubroutineType(types: !6075)
!6075 = !{!171, !109, !801}
!6076 = !{!6077, !6078}
!6077 = !DILocalVariable(name: "n", arg: 1, scope: !6073, file: !3, line: 67, type: !109)
!6078 = !DILocalVariable(name: "unicode", arg: 2, scope: !6073, file: !3, line: 67, type: !801)
!6079 = !DILocation(line: 67, column: 13, scope: !6073)
!6080 = !DILocation(line: 67, column: 21, scope: !6073)
!6081 = !DILocation(line: 69, column: 6, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6073, file: !3, line: 69, column: 6)
!6083 = !DILocation(line: 69, column: 6, scope: !6073)
!6084 = !DILocation(line: 70, column: 38, scope: !6082)
!6085 = !DILocation(line: 70, column: 44, scope: !6082)
!6086 = !DILocation(line: 70, column: 46, scope: !6082)
!6087 = !DILocation(line: 70, column: 10, scope: !6082)
!6088 = !DILocation(line: 70, column: 3, scope: !6082)
!6089 = !DILocation(line: 71, column: 34, scope: !6073)
!6090 = !DILocation(line: 71, column: 60, scope: !6073)
!6091 = !DILocation(line: 71, column: 66, scope: !6073)
!6092 = !DILocation(line: 71, column: 40, scope: !6073)
!6093 = !DILocation(line: 71, column: 9, scope: !6073)
!6094 = !DILocation(line: 71, column: 2, scope: !6073)
!6095 = !DILocation(line: 73, column: 1, scope: !6073)
!6096 = distinct !DISubprogram(name: "inword", scope: !3, file: !3, line: 107, type: !6097, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6100)
!6097 = !DISubroutineType(types: !6098)
!6098 = !{!109, !6099}
!6099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!6100 = !{!6101}
!6101 = !DILocalVariable(name: "c", arg: 1, scope: !6096, file: !3, line: 107, type: !6099)
!6102 = !DILocation(line: 107, column: 36, scope: !6096)
!6103 = !DILocation(line: 109, column: 9, scope: !6096)
!6104 = !DILocation(line: 109, column: 11, scope: !6096)
!6105 = !DILocation(line: 109, column: 18, scope: !6096)
!6106 = !DILocation(line: 109, column: 34, scope: !6096)
!6107 = !DILocation(line: 109, column: 35, scope: !6096)
!6108 = !DILocation(line: 109, column: 24, scope: !6096)
!6109 = !DILocation(line: 109, column: 44, scope: !6096)
!6110 = !DILocation(line: 109, column: 46, scope: !6096)
!6111 = !DILocation(line: 109, column: 40, scope: !6096)
!6112 = !DILocation(line: 109, column: 56, scope: !6096)
!6113 = !DILocation(line: 109, column: 2, scope: !6096)
!6114 = distinct !DISubprogram(name: "atedge", scope: !3, file: !3, line: 129, type: !6115, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6117)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!109, !2231, !109}
!6117 = !{!6118, !6119}
!6118 = !DILocalVariable(name: "p", arg: 1, scope: !6114, file: !3, line: 129, type: !2231)
!6119 = !DILocalVariable(name: "size_row", arg: 2, scope: !6114, file: !3, line: 129, type: !109)
!6120 = !DILocation(line: 129, column: 36, scope: !6114)
!6121 = !DILocation(line: 129, column: 43, scope: !6114)
!6122 = !DILocation(line: 131, column: 12, scope: !6114)
!6123 = !DILocation(line: 131, column: 16, scope: !6114)
!6124 = !DILocation(line: 131, column: 14, scope: !6114)
!6125 = !DILocation(line: 131, column: 26, scope: !6114)
!6126 = !DILocation(line: 131, column: 32, scope: !6114)
!6127 = !DILocation(line: 131, column: 34, scope: !6114)
!6128 = !DILocation(line: 131, column: 41, scope: !6114)
!6129 = !DILocation(line: 131, column: 39, scope: !6114)
!6130 = !DILocation(line: 131, column: 29, scope: !6114)
!6131 = !DILocation(line: 131, column: 2, scope: !6114)
!6132 = distinct !DISubprogram(name: "vc_selection_store_chars", scope: !3, file: !3, line: 189, type: !6133, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6135)
!6133 = !DISubroutineType(types: !6134)
!6134 = !{!109, !5030, !801}
!6135 = !{!6136, !6137, !6138, !6139, !6140, !6141}
!6136 = !DILocalVariable(name: "vc", arg: 1, scope: !6132, file: !3, line: 189, type: !5030)
!6137 = !DILocalVariable(name: "unicode", arg: 2, scope: !6132, file: !3, line: 189, type: !801)
!6138 = !DILocalVariable(name: "bp", scope: !6132, file: !3, line: 191, type: !814)
!6139 = !DILocalVariable(name: "obp", scope: !6132, file: !3, line: 191, type: !814)
!6140 = !DILocalVariable(name: "i", scope: !6132, file: !3, line: 192, type: !7)
!6141 = !DILocalVariable(name: "c", scope: !6142, file: !3, line: 208, type: !171)
!6142 = distinct !DILexicalBlock(scope: !6143, file: !3, line: 207, column: 50)
!6143 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 207, column: 2)
!6144 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 207, column: 2)
!6145 = !DILocation(line: 189, column: 53, scope: !6132)
!6146 = !DILocation(line: 189, column: 62, scope: !6132)
!6147 = !DILocation(line: 191, column: 2, scope: !6132)
!6148 = !DILocation(line: 191, column: 8, scope: !6132)
!6149 = !DILocation(line: 191, column: 13, scope: !6132)
!6150 = !DILocation(line: 192, column: 2, scope: !6132)
!6151 = !DILocation(line: 192, column: 15, scope: !6132)
!6152 = !DILocation(line: 196, column: 29, scope: !6132)
!6153 = !DILocation(line: 196, column: 42, scope: !6132)
!6154 = !DILocation(line: 196, column: 33, scope: !6132)
!6155 = !DILocation(line: 196, column: 49, scope: !6132)
!6156 = !DILocation(line: 196, column: 53, scope: !6132)
!6157 = !DILocation(line: 196, column: 21, scope: !6132)
!6158 = !DILocation(line: 196, column: 58, scope: !6132)
!6159 = !DILocation(line: 196, column: 7, scope: !6132)
!6160 = !DILocation(line: 196, column: 5, scope: !6132)
!6161 = !DILocation(line: 198, column: 7, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 198, column: 6)
!6163 = !DILocation(line: 198, column: 6, scope: !6132)
!6164 = !DILocation(line: 199, column: 3, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 199, column: 3)
!6166 = distinct !DILexicalBlock(scope: !6162, file: !3, line: 198, column: 11)
!6167 = !DILocation(line: 199, column: 3, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6165, file: !3, line: 199, column: 3)
!6169 = !DILocation(line: 200, column: 3, scope: !6166)
!6170 = !DILocation(line: 201, column: 3, scope: !6166)
!6171 = !DILocation(line: 203, column: 15, scope: !6132)
!6172 = !DILocation(line: 203, column: 2, scope: !6132)
!6173 = !DILocation(line: 204, column: 18, scope: !6132)
!6174 = !DILocation(line: 204, column: 16, scope: !6132)
!6175 = !DILocation(line: 206, column: 8, scope: !6132)
!6176 = !DILocation(line: 206, column: 6, scope: !6132)
!6177 = !DILocation(line: 207, column: 18, scope: !6144)
!6178 = !DILocation(line: 207, column: 9, scope: !6144)
!6179 = !DILocation(line: 207, column: 7, scope: !6144)
!6180 = !DILocation(line: 207, column: 25, scope: !6143)
!6181 = !DILocation(line: 207, column: 37, scope: !6143)
!6182 = !DILocation(line: 207, column: 27, scope: !6143)
!6183 = !DILocation(line: 207, column: 2, scope: !6144)
!6184 = !DILocation(line: 208, column: 3, scope: !6142)
!6185 = !DILocation(line: 208, column: 7, scope: !6142)
!6186 = !DILocation(line: 208, column: 19, scope: !6142)
!6187 = !DILocation(line: 208, column: 22, scope: !6142)
!6188 = !DILocation(line: 208, column: 11, scope: !6142)
!6189 = !DILocation(line: 209, column: 7, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 209, column: 7)
!6191 = !DILocation(line: 209, column: 7, scope: !6142)
!6192 = !DILocation(line: 210, column: 21, scope: !6190)
!6193 = !DILocation(line: 210, column: 24, scope: !6190)
!6194 = !DILocation(line: 210, column: 10, scope: !6190)
!6195 = !DILocation(line: 210, column: 7, scope: !6190)
!6196 = !DILocation(line: 210, column: 4, scope: !6190)
!6197 = !DILocation(line: 212, column: 12, scope: !6190)
!6198 = !DILocation(line: 212, column: 7, scope: !6190)
!6199 = !DILocation(line: 212, column: 10, scope: !6190)
!6200 = !DILocation(line: 213, column: 8, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 213, column: 7)
!6202 = !DILocation(line: 213, column: 7, scope: !6142)
!6203 = !DILocation(line: 214, column: 10, scope: !6201)
!6204 = !DILocation(line: 214, column: 8, scope: !6201)
!6205 = !DILocation(line: 214, column: 4, scope: !6201)
!6206 = !DILocation(line: 215, column: 10, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 215, column: 7)
!6208 = !DILocation(line: 215, column: 12, scope: !6207)
!6209 = !DILocation(line: 215, column: 19, scope: !6207)
!6210 = !DILocation(line: 215, column: 23, scope: !6207)
!6211 = !DILocation(line: 215, column: 17, scope: !6207)
!6212 = !DILocation(line: 215, column: 7, scope: !6142)
!6213 = !DILocation(line: 218, column: 8, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6215, file: !3, line: 218, column: 8)
!6215 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 215, column: 37)
!6216 = !DILocation(line: 218, column: 15, scope: !6214)
!6217 = !DILocation(line: 218, column: 12, scope: !6214)
!6218 = !DILocation(line: 218, column: 8, scope: !6215)
!6219 = !DILocation(line: 219, column: 10, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 218, column: 19)
!6221 = !DILocation(line: 219, column: 8, scope: !6220)
!6222 = !DILocation(line: 220, column: 8, scope: !6220)
!6223 = !DILocation(line: 220, column: 11, scope: !6220)
!6224 = !DILocation(line: 221, column: 4, scope: !6220)
!6225 = !DILocation(line: 222, column: 10, scope: !6215)
!6226 = !DILocation(line: 222, column: 8, scope: !6215)
!6227 = !DILocation(line: 223, column: 3, scope: !6215)
!6228 = !DILocation(line: 224, column: 2, scope: !6143)
!6229 = !DILocation(line: 224, column: 2, scope: !6142)
!6230 = !DILocation(line: 207, column: 44, scope: !6143)
!6231 = !DILocation(line: 207, column: 2, scope: !6143)
!6232 = distinct !{!6232, !6183, !6233, !5611, !5612}
!6233 = !DILocation(line: 224, column: 2, scope: !6144)
!6234 = !DILocation(line: 225, column: 19, scope: !6132)
!6235 = !DILocation(line: 225, column: 31, scope: !6132)
!6236 = !DILocation(line: 225, column: 22, scope: !6132)
!6237 = !DILocation(line: 225, column: 17, scope: !6132)
!6238 = !DILocation(line: 227, column: 2, scope: !6132)
!6239 = !DILocation(line: 228, column: 1, scope: !6132)
!6240 = !DISubprogram(name: "screen_glyph_unicode", scope: !5738, file: !5738, line: 39, type: !6241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6241 = !DISubroutineType(types: !6242)
!6242 = !{!171, !5149, !109}
!6243 = !DISubprogram(name: "inverse_translate", scope: !6244, file: !6244, line: 25, type: !6245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6244 = !DIFile(filename: "./include/linux/consolemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5cfe9d9d8976228a5ee7dde0628eb89")
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!177, !5149, !177, !801}
!6247 = !DISubprogram(name: "screen_glyph", scope: !5738, file: !5738, line: 38, type: !6248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!177, !5149, !109}
!6250 = distinct !DISubprogram(name: "kmalloc_array", scope: !159, file: !159, line: 629, type: !6251, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6253)
!6251 = !DISubroutineType(types: !6252)
!6252 = !{!169, !1117, !1117, !180}
!6253 = !{!6254, !6255, !6256, !6257}
!6254 = !DILocalVariable(name: "n", arg: 1, scope: !6250, file: !159, line: 629, type: !1117)
!6255 = !DILocalVariable(name: "size", arg: 2, scope: !6250, file: !159, line: 629, type: !1117)
!6256 = !DILocalVariable(name: "flags", arg: 3, scope: !6250, file: !159, line: 629, type: !180)
!6257 = !DILocalVariable(name: "bytes", scope: !6250, file: !159, line: 631, type: !1117)
!6258 = !DILocation(line: 629, column: 61, scope: !6250)
!6259 = !DILocation(line: 629, column: 71, scope: !6250)
!6260 = !DILocation(line: 629, column: 83, scope: !6250)
!6261 = !DILocation(line: 631, column: 2, scope: !6250)
!6262 = !DILocation(line: 631, column: 9, scope: !6250)
!6263 = !DILocation(line: 633, column: 6, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6250, file: !159, line: 633, column: 6)
!6265 = !DILocation(line: 633, column: 6, scope: !6250)
!6266 = !DILocation(line: 634, column: 3, scope: !6264)
!6267 = !DILocation(line: 635, column: 27, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6250, file: !159, line: 635, column: 6)
!6269 = !DILocation(line: 635, column: 6, scope: !6268)
!6270 = !DILocation(line: 635, column: 30, scope: !6268)
!6271 = !DILocation(line: 635, column: 54, scope: !6268)
!6272 = !DILocation(line: 635, column: 33, scope: !6268)
!6273 = !DILocation(line: 635, column: 6, scope: !6250)
!6274 = !DILocation(line: 636, column: 18, scope: !6268)
!6275 = !DILocation(line: 636, column: 25, scope: !6268)
!6276 = !DILocation(line: 636, column: 10, scope: !6268)
!6277 = !DILocation(line: 636, column: 3, scope: !6268)
!6278 = !DILocation(line: 637, column: 19, scope: !6250)
!6279 = !DILocation(line: 637, column: 26, scope: !6250)
!6280 = !DILocation(line: 637, column: 9, scope: !6250)
!6281 = !DILocation(line: 637, column: 2, scope: !6250)
!6282 = !DILocation(line: 638, column: 1, scope: !6250)
!6283 = !DISubprogram(name: "_printk", scope: !6284, file: !6284, line: 153, type: !6285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6284 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6285 = !DISubroutineType(types: !6286)
!6286 = !{!109, !804, null}
!6287 = !DISubprogram(name: "kfree", scope: !159, file: !159, line: 227, type: !6288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6288 = !DISubroutineType(types: !6289)
!6289 = !{null, !1859}
!6290 = distinct !DISubprogram(name: "store_utf8", scope: !3, file: !3, line: 135, type: !6291, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6293)
!6291 = !DISubroutineType(types: !6292)
!6292 = !{!109, !171, !814}
!6293 = !{!6294, !6295}
!6294 = !DILocalVariable(name: "c", arg: 1, scope: !6290, file: !3, line: 135, type: !171)
!6295 = !DILocalVariable(name: "p", arg: 2, scope: !6290, file: !3, line: 135, type: !814)
!6296 = !DILocation(line: 135, column: 27, scope: !6290)
!6297 = !DILocation(line: 135, column: 36, scope: !6290)
!6298 = !DILocation(line: 137, column: 6, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 137, column: 6)
!6300 = !DILocation(line: 137, column: 8, scope: !6299)
!6301 = !DILocation(line: 137, column: 6, scope: !6290)
!6302 = !DILocation(line: 139, column: 10, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6299, file: !3, line: 137, column: 16)
!6304 = !DILocation(line: 139, column: 3, scope: !6303)
!6305 = !DILocation(line: 139, column: 8, scope: !6303)
!6306 = !DILocation(line: 140, column: 3, scope: !6303)
!6307 = !DILocation(line: 141, column: 13, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6299, file: !3, line: 141, column: 13)
!6309 = !DILocation(line: 141, column: 15, scope: !6308)
!6310 = !DILocation(line: 141, column: 13, scope: !6299)
!6311 = !DILocation(line: 143, column: 18, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6308, file: !3, line: 141, column: 24)
!6313 = !DILocation(line: 143, column: 20, scope: !6312)
!6314 = !DILocation(line: 143, column: 15, scope: !6312)
!6315 = !DILocation(line: 143, column: 10, scope: !6312)
!6316 = !DILocation(line: 143, column: 3, scope: !6312)
!6317 = !DILocation(line: 143, column: 8, scope: !6312)
!6318 = !DILocation(line: 144, column: 18, scope: !6312)
!6319 = !DILocation(line: 144, column: 20, scope: !6312)
!6320 = !DILocation(line: 144, column: 15, scope: !6312)
!6321 = !DILocation(line: 144, column: 10, scope: !6312)
!6322 = !DILocation(line: 144, column: 3, scope: !6312)
!6323 = !DILocation(line: 144, column: 8, scope: !6312)
!6324 = !DILocation(line: 145, column: 3, scope: !6312)
!6325 = !DILocation(line: 146, column: 13, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6308, file: !3, line: 146, column: 13)
!6327 = !DILocation(line: 146, column: 15, scope: !6326)
!6328 = !DILocation(line: 146, column: 13, scope: !6308)
!6329 = !DILocation(line: 148, column: 18, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6326, file: !3, line: 146, column: 26)
!6331 = !DILocation(line: 148, column: 20, scope: !6330)
!6332 = !DILocation(line: 148, column: 15, scope: !6330)
!6333 = !DILocation(line: 148, column: 10, scope: !6330)
!6334 = !DILocation(line: 148, column: 3, scope: !6330)
!6335 = !DILocation(line: 148, column: 8, scope: !6330)
!6336 = !DILocation(line: 149, column: 19, scope: !6330)
!6337 = !DILocation(line: 149, column: 21, scope: !6330)
!6338 = !DILocation(line: 149, column: 27, scope: !6330)
!6339 = !DILocation(line: 149, column: 15, scope: !6330)
!6340 = !DILocation(line: 149, column: 10, scope: !6330)
!6341 = !DILocation(line: 149, column: 3, scope: !6330)
!6342 = !DILocation(line: 149, column: 8, scope: !6330)
!6343 = !DILocation(line: 150, column: 18, scope: !6330)
!6344 = !DILocation(line: 150, column: 20, scope: !6330)
!6345 = !DILocation(line: 150, column: 15, scope: !6330)
!6346 = !DILocation(line: 150, column: 10, scope: !6330)
!6347 = !DILocation(line: 150, column: 3, scope: !6330)
!6348 = !DILocation(line: 150, column: 8, scope: !6330)
!6349 = !DILocation(line: 151, column: 3, scope: !6330)
!6350 = !DILocation(line: 152, column: 13, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6326, file: !3, line: 152, column: 13)
!6352 = !DILocation(line: 152, column: 15, scope: !6351)
!6353 = !DILocation(line: 152, column: 13, scope: !6326)
!6354 = !DILocation(line: 154, column: 18, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6351, file: !3, line: 152, column: 27)
!6356 = !DILocation(line: 154, column: 20, scope: !6355)
!6357 = !DILocation(line: 154, column: 15, scope: !6355)
!6358 = !DILocation(line: 154, column: 10, scope: !6355)
!6359 = !DILocation(line: 154, column: 3, scope: !6355)
!6360 = !DILocation(line: 154, column: 8, scope: !6355)
!6361 = !DILocation(line: 155, column: 19, scope: !6355)
!6362 = !DILocation(line: 155, column: 21, scope: !6355)
!6363 = !DILocation(line: 155, column: 28, scope: !6355)
!6364 = !DILocation(line: 155, column: 15, scope: !6355)
!6365 = !DILocation(line: 155, column: 10, scope: !6355)
!6366 = !DILocation(line: 155, column: 3, scope: !6355)
!6367 = !DILocation(line: 155, column: 8, scope: !6355)
!6368 = !DILocation(line: 156, column: 19, scope: !6355)
!6369 = !DILocation(line: 156, column: 21, scope: !6355)
!6370 = !DILocation(line: 156, column: 27, scope: !6355)
!6371 = !DILocation(line: 156, column: 15, scope: !6355)
!6372 = !DILocation(line: 156, column: 10, scope: !6355)
!6373 = !DILocation(line: 156, column: 3, scope: !6355)
!6374 = !DILocation(line: 156, column: 8, scope: !6355)
!6375 = !DILocation(line: 157, column: 18, scope: !6355)
!6376 = !DILocation(line: 157, column: 20, scope: !6355)
!6377 = !DILocation(line: 157, column: 15, scope: !6355)
!6378 = !DILocation(line: 157, column: 10, scope: !6355)
!6379 = !DILocation(line: 157, column: 3, scope: !6355)
!6380 = !DILocation(line: 157, column: 8, scope: !6355)
!6381 = !DILocation(line: 158, column: 3, scope: !6355)
!6382 = !DILocation(line: 161, column: 3, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6351, file: !3, line: 159, column: 9)
!6384 = !DILocation(line: 161, column: 8, scope: !6383)
!6385 = !DILocation(line: 162, column: 3, scope: !6383)
!6386 = !DILocation(line: 162, column: 8, scope: !6383)
!6387 = !DILocation(line: 163, column: 3, scope: !6383)
!6388 = !DILocation(line: 163, column: 8, scope: !6383)
!6389 = !DILocation(line: 164, column: 3, scope: !6383)
!6390 = !DILocation(line: 166, column: 1, scope: !6290)
!6391 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6392, file: !6392, line: 51, type: !6393, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6395)
!6392 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6393 = !DISubroutineType(types: !6394)
!6394 = !{!801, !801}
!6395 = !{!6396}
!6396 = !DILocalVariable(name: "overflow", arg: 1, scope: !6391, file: !6392, line: 51, type: !801)
!6397 = !DILocation(line: 51, column: 60, scope: !6391)
!6398 = !DILocation(line: 53, column: 9, scope: !6391)
!6399 = !DILocation(line: 53, column: 2, scope: !6391)
!6400 = distinct !DISubprogram(name: "kmalloc", scope: !159, file: !159, line: 591, type: !6401, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6403)
!6401 = !DISubroutineType(types: !6402)
!6402 = !{!169, !1117, !180}
!6403 = !{!6404, !6405, !6406}
!6404 = !DILocalVariable(name: "size", arg: 1, scope: !6400, file: !159, line: 591, type: !1117)
!6405 = !DILocalVariable(name: "flags", arg: 2, scope: !6400, file: !159, line: 591, type: !180)
!6406 = !DILocalVariable(name: "index", scope: !6407, file: !159, line: 594, type: !7)
!6407 = distinct !DILexicalBlock(scope: !6408, file: !159, line: 593, column: 42)
!6408 = distinct !DILexicalBlock(scope: !6400, file: !159, line: 593, column: 6)
!6409 = !DILocation(line: 591, column: 61, scope: !6400)
!6410 = !DILocation(line: 591, column: 73, scope: !6400)
!6411 = !DILocation(line: 593, column: 27, scope: !6408)
!6412 = !DILocation(line: 593, column: 6, scope: !6408)
!6413 = !DILocation(line: 593, column: 33, scope: !6408)
!6414 = !DILocation(line: 593, column: 36, scope: !6408)
!6415 = !DILocation(line: 593, column: 6, scope: !6400)
!6416 = !DILocation(line: 594, column: 3, scope: !6407)
!6417 = !DILocation(line: 594, column: 16, scope: !6407)
!6418 = !DILocation(line: 596, column: 7, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6407, file: !159, line: 596, column: 7)
!6420 = !DILocation(line: 596, column: 12, scope: !6419)
!6421 = !DILocation(line: 596, column: 7, scope: !6407)
!6422 = !DILocation(line: 597, column: 25, scope: !6419)
!6423 = !DILocation(line: 597, column: 31, scope: !6419)
!6424 = !DILocation(line: 597, column: 11, scope: !6419)
!6425 = !DILocation(line: 597, column: 4, scope: !6419)
!6426 = !DILocation(line: 599, column: 11, scope: !6407)
!6427 = !DILocation(line: 599, column: 9, scope: !6407)
!6428 = !DILocation(line: 601, column: 33, scope: !6407)
!6429 = !DILocation(line: 601, column: 40, scope: !6407)
!6430 = !DILocation(line: 601, column: 20, scope: !6407)
!6431 = !DILocation(line: 601, column: 5, scope: !6407)
!6432 = !DILocation(line: 601, column: 51, scope: !6407)
!6433 = !DILocation(line: 602, column: 5, scope: !6407)
!6434 = !DILocation(line: 602, column: 12, scope: !6407)
!6435 = !DILocation(line: 600, column: 10, scope: !6407)
!6436 = !DILocation(line: 600, column: 3, scope: !6407)
!6437 = !DILocation(line: 603, column: 2, scope: !6408)
!6438 = !DILocation(line: 604, column: 19, scope: !6400)
!6439 = !DILocation(line: 604, column: 25, scope: !6400)
!6440 = !DILocation(line: 604, column: 9, scope: !6400)
!6441 = !DILocation(line: 604, column: 2, scope: !6400)
!6442 = !DILocation(line: 605, column: 1, scope: !6400)
!6443 = !DISubprogram(name: "__kmalloc", scope: !159, file: !159, line: 488, type: !6401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6444 = !DISubprogram(name: "kmalloc_large", scope: !159, file: !159, line: 531, type: !6401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6445 = distinct !DISubprogram(name: "__kmalloc_index", scope: !159, file: !159, line: 444, type: !6446, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6448)
!6446 = !DISubroutineType(types: !6447)
!6447 = !{!7, !1117, !801}
!6448 = !{!6449, !6450}
!6449 = !DILocalVariable(name: "size", arg: 1, scope: !6445, file: !159, line: 444, type: !1117)
!6450 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6445, file: !159, line: 445, type: !801)
!6451 = !DILocation(line: 444, column: 60, scope: !6445)
!6452 = !DILocation(line: 445, column: 16, scope: !6445)
!6453 = !DILocation(line: 447, column: 7, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 447, column: 6)
!6455 = !DILocation(line: 447, column: 6, scope: !6445)
!6456 = !DILocation(line: 448, column: 3, scope: !6454)
!6457 = !DILocation(line: 450, column: 6, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 450, column: 6)
!6459 = !DILocation(line: 450, column: 11, scope: !6458)
!6460 = !DILocation(line: 450, column: 6, scope: !6445)
!6461 = !DILocation(line: 451, column: 3, scope: !6458)
!6462 = !DILocation(line: 453, column: 32, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 453, column: 6)
!6464 = !DILocation(line: 453, column: 37, scope: !6463)
!6465 = !DILocation(line: 453, column: 42, scope: !6463)
!6466 = !DILocation(line: 453, column: 45, scope: !6463)
!6467 = !DILocation(line: 453, column: 50, scope: !6463)
!6468 = !DILocation(line: 453, column: 6, scope: !6445)
!6469 = !DILocation(line: 454, column: 3, scope: !6463)
!6470 = !DILocation(line: 455, column: 32, scope: !6471)
!6471 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 455, column: 6)
!6472 = !DILocation(line: 455, column: 37, scope: !6471)
!6473 = !DILocation(line: 455, column: 43, scope: !6471)
!6474 = !DILocation(line: 455, column: 46, scope: !6471)
!6475 = !DILocation(line: 455, column: 51, scope: !6471)
!6476 = !DILocation(line: 455, column: 6, scope: !6445)
!6477 = !DILocation(line: 456, column: 3, scope: !6471)
!6478 = !DILocation(line: 457, column: 6, scope: !6479)
!6479 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 457, column: 6)
!6480 = !DILocation(line: 457, column: 11, scope: !6479)
!6481 = !DILocation(line: 457, column: 6, scope: !6445)
!6482 = !DILocation(line: 457, column: 26, scope: !6479)
!6483 = !DILocation(line: 458, column: 6, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 458, column: 6)
!6485 = !DILocation(line: 458, column: 11, scope: !6484)
!6486 = !DILocation(line: 458, column: 6, scope: !6445)
!6487 = !DILocation(line: 458, column: 26, scope: !6484)
!6488 = !DILocation(line: 459, column: 6, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 459, column: 6)
!6490 = !DILocation(line: 459, column: 11, scope: !6489)
!6491 = !DILocation(line: 459, column: 6, scope: !6445)
!6492 = !DILocation(line: 459, column: 26, scope: !6489)
!6493 = !DILocation(line: 460, column: 6, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 460, column: 6)
!6495 = !DILocation(line: 460, column: 11, scope: !6494)
!6496 = !DILocation(line: 460, column: 6, scope: !6445)
!6497 = !DILocation(line: 460, column: 26, scope: !6494)
!6498 = !DILocation(line: 461, column: 6, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 461, column: 6)
!6500 = !DILocation(line: 461, column: 11, scope: !6499)
!6501 = !DILocation(line: 461, column: 6, scope: !6445)
!6502 = !DILocation(line: 461, column: 26, scope: !6499)
!6503 = !DILocation(line: 462, column: 6, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 462, column: 6)
!6505 = !DILocation(line: 462, column: 11, scope: !6504)
!6506 = !DILocation(line: 462, column: 6, scope: !6445)
!6507 = !DILocation(line: 462, column: 26, scope: !6504)
!6508 = !DILocation(line: 463, column: 6, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 463, column: 6)
!6510 = !DILocation(line: 463, column: 11, scope: !6509)
!6511 = !DILocation(line: 463, column: 6, scope: !6445)
!6512 = !DILocation(line: 463, column: 26, scope: !6509)
!6513 = !DILocation(line: 464, column: 6, scope: !6514)
!6514 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 464, column: 6)
!6515 = !DILocation(line: 464, column: 11, scope: !6514)
!6516 = !DILocation(line: 464, column: 6, scope: !6445)
!6517 = !DILocation(line: 464, column: 26, scope: !6514)
!6518 = !DILocation(line: 465, column: 6, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 465, column: 6)
!6520 = !DILocation(line: 465, column: 11, scope: !6519)
!6521 = !DILocation(line: 465, column: 6, scope: !6445)
!6522 = !DILocation(line: 465, column: 26, scope: !6519)
!6523 = !DILocation(line: 466, column: 6, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 466, column: 6)
!6525 = !DILocation(line: 466, column: 11, scope: !6524)
!6526 = !DILocation(line: 466, column: 6, scope: !6445)
!6527 = !DILocation(line: 466, column: 26, scope: !6524)
!6528 = !DILocation(line: 467, column: 6, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 467, column: 6)
!6530 = !DILocation(line: 467, column: 11, scope: !6529)
!6531 = !DILocation(line: 467, column: 6, scope: !6445)
!6532 = !DILocation(line: 467, column: 26, scope: !6529)
!6533 = !DILocation(line: 468, column: 6, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 468, column: 6)
!6535 = !DILocation(line: 468, column: 11, scope: !6534)
!6536 = !DILocation(line: 468, column: 6, scope: !6445)
!6537 = !DILocation(line: 468, column: 26, scope: !6534)
!6538 = !DILocation(line: 469, column: 6, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 469, column: 6)
!6540 = !DILocation(line: 469, column: 11, scope: !6539)
!6541 = !DILocation(line: 469, column: 6, scope: !6445)
!6542 = !DILocation(line: 469, column: 26, scope: !6539)
!6543 = !DILocation(line: 470, column: 6, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 470, column: 6)
!6545 = !DILocation(line: 470, column: 11, scope: !6544)
!6546 = !DILocation(line: 470, column: 6, scope: !6445)
!6547 = !DILocation(line: 470, column: 26, scope: !6544)
!6548 = !DILocation(line: 471, column: 6, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 471, column: 6)
!6550 = !DILocation(line: 471, column: 11, scope: !6549)
!6551 = !DILocation(line: 471, column: 6, scope: !6445)
!6552 = !DILocation(line: 471, column: 26, scope: !6549)
!6553 = !DILocation(line: 472, column: 6, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 472, column: 6)
!6555 = !DILocation(line: 472, column: 11, scope: !6554)
!6556 = !DILocation(line: 472, column: 6, scope: !6445)
!6557 = !DILocation(line: 472, column: 26, scope: !6554)
!6558 = !DILocation(line: 473, column: 6, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 473, column: 6)
!6560 = !DILocation(line: 473, column: 11, scope: !6559)
!6561 = !DILocation(line: 473, column: 6, scope: !6445)
!6562 = !DILocation(line: 473, column: 26, scope: !6559)
!6563 = !DILocation(line: 474, column: 6, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 474, column: 6)
!6565 = !DILocation(line: 474, column: 11, scope: !6564)
!6566 = !DILocation(line: 474, column: 6, scope: !6445)
!6567 = !DILocation(line: 474, column: 27, scope: !6564)
!6568 = !DILocation(line: 475, column: 6, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 475, column: 6)
!6570 = !DILocation(line: 475, column: 11, scope: !6569)
!6571 = !DILocation(line: 475, column: 6, scope: !6445)
!6572 = !DILocation(line: 475, column: 32, scope: !6569)
!6573 = !DILocation(line: 477, column: 50, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6445, file: !159, line: 477, column: 6)
!6575 = !DILocation(line: 477, column: 6, scope: !6445)
!6576 = !DILocation(line: 478, column: 3, scope: !6574)
!6577 = !DILocation(line: 478, column: 3, scope: !6578)
!6578 = distinct !DILexicalBlock(scope: !6579, file: !159, line: 478, column: 3)
!6579 = distinct !DILexicalBlock(scope: !6574, file: !159, line: 478, column: 3)
!6580 = !{i32 -2141453986}
!6581 = !DILocation(line: 478, column: 3, scope: !6579)
!6582 = !DILocation(line: 480, column: 3, scope: !6574)
!6583 = !DILocation(line: 480, column: 3, scope: !6584)
!6584 = distinct !DILexicalBlock(scope: !6574, file: !159, line: 480, column: 3)
!6585 = !DILocation(line: 480, column: 3, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6584, file: !159, line: 480, column: 3)
!6587 = !DILocation(line: 480, column: 3, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6584, file: !159, line: 480, column: 3)
!6589 = !{i64 2153513513, i64 2153513542, i64 2153513588, i64 2153513646, i64 2153513700, i64 2153513754, i64 2153513809, i64 2153513840}
!6590 = !DILocation(line: 483, column: 2, scope: !6445)
!6591 = !DILocation(line: 484, column: 1, scope: !6445)
!6592 = !DISubprogram(name: "kmalloc_trace", scope: !159, file: !159, line: 525, type: !6593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6593 = !DISubroutineType(types: !6594)
!6594 = !{!169, !6595, !180, !1117}
!6595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6596, size: 64)
!6596 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6597, line: 325, flags: DIFlagFwdDecl)
!6597 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6598 = distinct !DISubprogram(name: "kmalloc_type", scope: !159, file: !159, line: 401, type: !6599, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6601)
!6599 = !DISubroutineType(types: !6600)
!6600 = !{!158, !180, !182}
!6601 = !{!6602, !6603}
!6602 = !DILocalVariable(name: "flags", arg: 1, scope: !6598, file: !159, line: 401, type: !180)
!6603 = !DILocalVariable(name: "caller", arg: 2, scope: !6598, file: !159, line: 401, type: !182)
!6604 = !DILocation(line: 401, column: 67, scope: !6598)
!6605 = !DILocation(line: 401, column: 88, scope: !6598)
!6606 = !DILocation(line: 407, column: 6, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6598, file: !159, line: 407, column: 6)
!6608 = !DILocation(line: 407, column: 6, scope: !6598)
!6609 = !DILocation(line: 413, column: 3, scope: !6607)
!6610 = !DILocation(line: 423, column: 38, scope: !6611)
!6611 = distinct !DILexicalBlock(scope: !6598, file: !159, line: 423, column: 6)
!6612 = !DILocation(line: 423, column: 44, scope: !6611)
!6613 = !DILocation(line: 423, column: 6, scope: !6598)
!6614 = !DILocation(line: 424, column: 3, scope: !6611)
!6615 = !DILocation(line: 426, column: 3, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6598, file: !159, line: 425, column: 6)
!6617 = !DILocation(line: 429, column: 1, scope: !6598)
!6618 = !DISubprogram(name: "__compiletime_assert_255", scope: !159, file: !159, line: 478, type: !2383, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6619 = distinct !DISubprogram(name: "kasan_check_write", scope: !6620, file: !6620, line: 44, type: !6621, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6623)
!6620 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6621 = !DISubroutineType(types: !6622)
!6622 = !{!801, !5693, !7}
!6623 = !{!6624, !6625}
!6624 = !DILocalVariable(name: "p", arg: 1, scope: !6619, file: !6620, line: 44, type: !5693)
!6625 = !DILocalVariable(name: "size", arg: 2, scope: !6619, file: !6620, line: 44, type: !7)
!6626 = !DILocation(line: 44, column: 59, scope: !6619)
!6627 = !DILocation(line: 44, column: 75, scope: !6619)
!6628 = !DILocation(line: 46, column: 2, scope: !6619)
!6629 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6630, file: !6630, line: 229, type: !6631, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6633)
!6630 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6631 = !DISubroutineType(types: !6632)
!6632 = !{null, !5693, !1117, !109}
!6633 = !{!6634, !6635, !6636}
!6634 = !DILocalVariable(name: "ptr", arg: 1, scope: !6629, file: !6630, line: 229, type: !5693)
!6635 = !DILocalVariable(name: "size", arg: 2, scope: !6629, file: !6630, line: 229, type: !1117)
!6636 = !DILocalVariable(name: "type", arg: 3, scope: !6629, file: !6630, line: 230, type: !109)
!6637 = !DILocation(line: 229, column: 60, scope: !6629)
!6638 = !DILocation(line: 229, column: 72, scope: !6629)
!6639 = !DILocation(line: 230, column: 15, scope: !6629)
!6640 = !DILocation(line: 230, column: 23, scope: !6629)
!6641 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !186, file: !186, line: 2066, type: !6642, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6644)
!6642 = !DISubroutineType(types: !6643)
!6643 = !{!109, !184, !109}
!6644 = !{!6645, !6646}
!6645 = !DILocalVariable(name: "tsk", arg: 1, scope: !6641, file: !186, line: 2066, type: !184)
!6646 = !DILocalVariable(name: "flag", arg: 2, scope: !6641, file: !186, line: 2066, type: !109)
!6647 = !DILocation(line: 2066, column: 60, scope: !6641)
!6648 = !DILocation(line: 2066, column: 69, scope: !6641)
!6649 = !DILocation(line: 2068, column: 29, scope: !6641)
!6650 = !DILocation(line: 2068, column: 52, scope: !6641)
!6651 = !DILocation(line: 2068, column: 9, scope: !6641)
!6652 = !DILocation(line: 2068, column: 2, scope: !6641)
!6653 = distinct !DISubprogram(name: "task_sigpending", scope: !3418, file: !3418, line: 387, type: !5707, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6654)
!6654 = !{!6655}
!6655 = !DILocalVariable(name: "p", arg: 1, scope: !6653, file: !3418, line: 387, type: !184)
!6656 = !DILocation(line: 387, column: 55, scope: !6653)
!6657 = !DILocation(line: 389, column: 9, scope: !6653)
!6658 = !DILocation(line: 389, column: 2, scope: !6653)
!6659 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !5009, file: !5009, line: 116, type: !6660, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6663)
!6660 = !DISubroutineType(types: !6661)
!6661 = !{!109, !6662, !109}
!6662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!6663 = !{!6664, !6665}
!6664 = !DILocalVariable(name: "ti", arg: 1, scope: !6659, file: !5009, line: 116, type: !6662)
!6665 = !DILocalVariable(name: "flag", arg: 2, scope: !6659, file: !5009, line: 116, type: !109)
!6666 = !DILocation(line: 116, column: 59, scope: !6659)
!6667 = !DILocation(line: 116, column: 67, scope: !6659)
!6668 = !DILocation(line: 118, column: 9, scope: !6659)
!6669 = !DILocation(line: 118, column: 2, scope: !6659)
!6670 = distinct !DISubprogram(name: "const_test_bit", scope: !6671, file: !6671, line: 166, type: !6672, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6677)
!6671 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6672 = !DISubroutineType(types: !6673)
!6673 = !{!801, !182, !6674}
!6674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6675, size: 64)
!6675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6676)
!6676 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !182)
!6677 = !{!6678, !6679, !6680, !6681, !6682}
!6678 = !DILocalVariable(name: "nr", arg: 1, scope: !6670, file: !6671, line: 166, type: !182)
!6679 = !DILocalVariable(name: "addr", arg: 2, scope: !6670, file: !6671, line: 166, type: !6674)
!6680 = !DILocalVariable(name: "p", scope: !6670, file: !6671, line: 168, type: !4999)
!6681 = !DILocalVariable(name: "mask", scope: !6670, file: !6671, line: 169, type: !182)
!6682 = !DILocalVariable(name: "val", scope: !6670, file: !6671, line: 170, type: !182)
!6683 = !DILocation(line: 166, column: 30, scope: !6670)
!6684 = !DILocation(line: 166, column: 64, scope: !6670)
!6685 = !DILocation(line: 168, column: 2, scope: !6670)
!6686 = !DILocation(line: 168, column: 23, scope: !6670)
!6687 = !DILocation(line: 168, column: 50, scope: !6670)
!6688 = !DILocation(line: 168, column: 57, scope: !6670)
!6689 = !DILocation(line: 168, column: 55, scope: !6670)
!6690 = !DILocation(line: 169, column: 2, scope: !6670)
!6691 = !DILocation(line: 169, column: 16, scope: !6670)
!6692 = !DILocation(line: 169, column: 23, scope: !6670)
!6693 = !DILocation(line: 170, column: 2, scope: !6670)
!6694 = !DILocation(line: 170, column: 16, scope: !6670)
!6695 = !DILocation(line: 170, column: 23, scope: !6670)
!6696 = !DILocation(line: 170, column: 22, scope: !6670)
!6697 = !DILocation(line: 172, column: 12, scope: !6670)
!6698 = !DILocation(line: 172, column: 18, scope: !6670)
!6699 = !DILocation(line: 172, column: 16, scope: !6670)
!6700 = !DILocation(line: 172, column: 10, scope: !6670)
!6701 = !DILocation(line: 172, column: 9, scope: !6670)
!6702 = !DILocation(line: 173, column: 1, scope: !6670)
!6703 = !DILocation(line: 172, column: 2, scope: !6670)
!6704 = distinct !DISubprogram(name: "_test_bit", scope: !6705, file: !6705, line: 139, type: !6672, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6706)
!6705 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6706 = !{!6707, !6708}
!6707 = !DILocalVariable(name: "nr", arg: 1, scope: !6704, file: !6705, line: 139, type: !182)
!6708 = !DILocalVariable(name: "addr", arg: 2, scope: !6704, file: !6705, line: 139, type: !6674)
!6709 = !DILocation(line: 139, column: 25, scope: !6704)
!6710 = !DILocation(line: 139, column: 59, scope: !6704)
!6711 = !DILocation(line: 141, column: 25, scope: !6704)
!6712 = !DILocation(line: 141, column: 32, scope: !6704)
!6713 = !DILocation(line: 141, column: 30, scope: !6704)
!6714 = !DILocation(line: 141, column: 2, scope: !6704)
!6715 = !DILocation(line: 142, column: 23, scope: !6704)
!6716 = !DILocation(line: 142, column: 27, scope: !6704)
!6717 = !DILocation(line: 142, column: 9, scope: !6704)
!6718 = !DILocation(line: 142, column: 2, scope: !6704)
!6719 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5690, file: !5690, line: 66, type: !5691, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6720)
!6720 = !{!6721, !6722}
!6721 = !DILocalVariable(name: "v", arg: 1, scope: !6719, file: !5690, line: 66, type: !5693)
!6722 = !DILocalVariable(name: "size", arg: 2, scope: !6719, file: !5690, line: 66, type: !1117)
!6723 = !DILocation(line: 66, column: 73, scope: !6719)
!6724 = !DILocation(line: 66, column: 83, scope: !6719)
!6725 = !DILocation(line: 68, column: 19, scope: !6719)
!6726 = !DILocation(line: 68, column: 22, scope: !6719)
!6727 = !DILocation(line: 68, column: 2, scope: !6719)
!6728 = !DILocation(line: 69, column: 2, scope: !6719)
!6729 = !DILocation(line: 70, column: 1, scope: !6719)
!6730 = distinct !DISubprogram(name: "arch_test_bit", scope: !6731, file: !6731, line: 237, type: !6672, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6732)
!6731 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6732 = !{!6733, !6734}
!6733 = !DILocalVariable(name: "nr", arg: 1, scope: !6730, file: !6731, line: 237, type: !182)
!6734 = !DILocalVariable(name: "addr", arg: 2, scope: !6730, file: !6731, line: 237, type: !6674)
!6735 = !DILocation(line: 237, column: 29, scope: !6730)
!6736 = !DILocation(line: 237, column: 63, scope: !6730)
!6737 = !DILocation(line: 239, column: 30, scope: !6730)
!6738 = !DILocation(line: 239, column: 9, scope: !6730)
!6739 = !DILocation(line: 239, column: 54, scope: !6730)
!6740 = !DILocation(line: 239, column: 58, scope: !6730)
!6741 = !DILocation(line: 239, column: 36, scope: !6730)
!6742 = !DILocation(line: 240, column: 26, scope: !6730)
!6743 = !DILocation(line: 240, column: 30, scope: !6730)
!6744 = !DILocation(line: 240, column: 8, scope: !6730)
!6745 = !DILocation(line: 239, column: 2, scope: !6730)
!6746 = distinct !DISubprogram(name: "kasan_check_read", scope: !6620, file: !6620, line: 40, type: !6621, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6747)
!6747 = !{!6748, !6749}
!6748 = !DILocalVariable(name: "p", arg: 1, scope: !6746, file: !6620, line: 40, type: !5693)
!6749 = !DILocalVariable(name: "size", arg: 2, scope: !6746, file: !6620, line: 40, type: !7)
!6750 = !DILocation(line: 40, column: 58, scope: !6746)
!6751 = !DILocation(line: 40, column: 74, scope: !6746)
!6752 = !DILocation(line: 42, column: 2, scope: !6746)
!6753 = distinct !DISubprogram(name: "constant_test_bit", scope: !6731, file: !6731, line: 204, type: !6754, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6756)
!6754 = !DISubroutineType(types: !6755)
!6755 = !{!801, !1075, !6674}
!6756 = !{!6757, !6758}
!6757 = !DILocalVariable(name: "nr", arg: 1, scope: !6753, file: !6731, line: 204, type: !1075)
!6758 = !DILocalVariable(name: "addr", arg: 2, scope: !6753, file: !6731, line: 204, type: !6674)
!6759 = !DILocation(line: 204, column: 52, scope: !6753)
!6760 = !DILocation(line: 204, column: 86, scope: !6753)
!6761 = !DILocation(line: 206, column: 19, scope: !6753)
!6762 = !DILocation(line: 206, column: 22, scope: !6753)
!6763 = !DILocation(line: 206, column: 15, scope: !6753)
!6764 = !DILocation(line: 207, column: 4, scope: !6753)
!6765 = !DILocation(line: 207, column: 9, scope: !6753)
!6766 = !DILocation(line: 207, column: 12, scope: !6753)
!6767 = !DILocation(line: 206, column: 44, scope: !6753)
!6768 = !DILocation(line: 207, column: 37, scope: !6753)
!6769 = !DILocation(line: 206, column: 2, scope: !6753)
!6770 = distinct !DISubprogram(name: "variable_test_bit", scope: !6731, file: !6731, line: 224, type: !6754, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6771)
!6771 = !{!6772, !6773, !6774}
!6772 = !DILocalVariable(name: "nr", arg: 1, scope: !6770, file: !6731, line: 224, type: !1075)
!6773 = !DILocalVariable(name: "addr", arg: 2, scope: !6770, file: !6731, line: 224, type: !6674)
!6774 = !DILocalVariable(name: "oldbit", scope: !6770, file: !6731, line: 226, type: !801)
!6775 = !DILocation(line: 224, column: 52, scope: !6770)
!6776 = !DILocation(line: 224, column: 86, scope: !6770)
!6777 = !DILocation(line: 226, column: 2, scope: !6770)
!6778 = !DILocation(line: 226, column: 7, scope: !6770)
!6779 = !DILocation(line: 231, column: 33, scope: !6770)
!6780 = !DILocation(line: 231, column: 46, scope: !6770)
!6781 = !DILocation(line: 228, column: 2, scope: !6770)
!6782 = !{i64 2148351198, i64 2148351272}
!6783 = !DILocation(line: 233, column: 9, scope: !6770)
!6784 = !DILocation(line: 234, column: 1, scope: !6770)
!6785 = !DILocation(line: 233, column: 2, scope: !6770)
