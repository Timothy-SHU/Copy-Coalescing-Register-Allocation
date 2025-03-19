; ModuleID = 'fs/fs_struct.c'
source_filename = "fs/fs_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_unshare_fs_struct: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad unshare_fs_struct ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_current_umask: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad current_umask ; .previous"

%struct.static_call_key = type { ptr, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
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
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.path = type { ptr, ptr }
%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.pacct_struct = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }

@set_fs_root.__UNIQUE_ID___addressable___SCK__preempt_schedule251 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !0
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@set_fs_pwd.__UNIQUE_ID___addressable___SCK__preempt_schedule252 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !3205
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@chroot_fs_refs.__UNIQUE_ID___addressable___SCK__preempt_schedule256 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !3212
@fs_cachep = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_unshare_fs_struct257 = internal global ptr @unshare_fs_struct, section ".discard.addressable", align 8, !dbg !3238
@__UNIQUE_ID___addressable_current_umask258 = internal global ptr @current_umask, section ".discard.addressable", align 8, !dbg !3240
@init_fs = hidden global %struct.fs_struct { i32 1, %struct.spinlock zeroinitializer, %struct.seqcount_spinlock zeroinitializer, i32 18, i32 0, %struct.path zeroinitializer, %struct.path zeroinitializer }, align 8, !dbg !3242
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [5 x ptr] [ptr @set_fs_root.__UNIQUE_ID___addressable___SCK__preempt_schedule251, ptr @set_fs_pwd.__UNIQUE_ID___addressable___SCK__preempt_schedule252, ptr @chroot_fs_refs.__UNIQUE_ID___addressable___SCK__preempt_schedule256, ptr @__UNIQUE_ID___addressable_unshare_fs_struct257, ptr @__UNIQUE_ID___addressable_current_umask258], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @set_fs_root(ptr noundef %fs, ptr noundef %path) #0 align 16 !dbg !2 {
entry:
  %fs.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %old_root = alloca %struct.path, align 8
  store ptr %fs, ptr %fs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs.addr, metadata !3245, metadata !DIExpression()), !dbg !3258
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3246, metadata !DIExpression()), !dbg !3259
  call void @llvm.lifetime.start.p0(i64 16, ptr %old_root) #12, !dbg !3260
  call void @llvm.dbg.declare(metadata ptr %old_root, metadata !3247, metadata !DIExpression()), !dbg !3261
  %0 = load ptr, ptr %path.addr, align 8, !dbg !3262
  call void @path_get(ptr noundef %0) #13, !dbg !3263
  %1 = load ptr, ptr %fs.addr, align 8, !dbg !3264
  %lock = getelementptr inbounds %struct.fs_struct, ptr %1, i32 0, i32 1, !dbg !3265
  call void @spin_lock(ptr noundef %lock) #13, !dbg !3266
  br label %do.body, !dbg !3267

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %fs.addr, align 8, !dbg !3268
  %seq = getelementptr inbounds %struct.fs_struct, ptr %2, i32 0, i32 2, !dbg !3268
  call void @__seqprop_spinlock_assert(ptr noundef %seq) #13, !dbg !3268
  %3 = load ptr, ptr %fs.addr, align 8, !dbg !3270
  %seq1 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 2, !dbg !3270
  %call = call zeroext i1 @__seqprop_spinlock_preemptible(ptr noundef %seq1) #13, !dbg !3270
  br i1 %call, label %if.then, label %if.end, !dbg !3268

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !3270

do.body2:                                         ; preds = %if.then
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !3272
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3272, !srcloc !3274
  br label %do.cond, !dbg !3272

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !3272

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !3272

if.end:                                           ; preds = %do.end, %do.body
  %4 = load ptr, ptr %fs.addr, align 8, !dbg !3268
  %seq3 = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 2, !dbg !3268
  %call4 = call ptr @__seqprop_spinlock_ptr(ptr noundef %seq3) #13, !dbg !3268
  call void @do_write_seqcount_begin(ptr noundef %call4) #13, !dbg !3268
  br label %do.cond5, !dbg !3268

do.cond5:                                         ; preds = %if.end
  br label %do.end6, !dbg !3268

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %fs.addr, align 8, !dbg !3275
  %root = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 5, !dbg !3276
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %old_root, ptr align 8 %root, i64 16, i1 false), !dbg !3276
  %6 = load ptr, ptr %fs.addr, align 8, !dbg !3277
  %root7 = getelementptr inbounds %struct.fs_struct, ptr %6, i32 0, i32 5, !dbg !3278
  %7 = load ptr, ptr %path.addr, align 8, !dbg !3279
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %root7, ptr align 8 %7, i64 16, i1 false), !dbg !3280
  br label %do.body8, !dbg !3281

do.body8:                                         ; preds = %do.end6
  %8 = load ptr, ptr %fs.addr, align 8, !dbg !3282
  %seq9 = getelementptr inbounds %struct.fs_struct, ptr %8, i32 0, i32 2, !dbg !3282
  %call10 = call ptr @__seqprop_spinlock_ptr(ptr noundef %seq9) #13, !dbg !3282
  call void @do_write_seqcount_end(ptr noundef %call10) #13, !dbg !3282
  %9 = load ptr, ptr %fs.addr, align 8, !dbg !3284
  %seq11 = getelementptr inbounds %struct.fs_struct, ptr %9, i32 0, i32 2, !dbg !3284
  %call12 = call zeroext i1 @__seqprop_spinlock_preemptible(ptr noundef %seq11) #13, !dbg !3284
  br i1 %call12, label %if.then13, label %if.end24, !dbg !3282

if.then13:                                        ; preds = %do.body8
  br label %do.body14, !dbg !3284

do.body14:                                        ; preds = %if.then13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3286, !srcloc !3288
  %call15 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !3289
  %lnot = xor i1 %call15, true, !dbg !3289
  %lnot16 = xor i1 %lnot, true, !dbg !3289
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !3289
  %conv = sext i32 %lnot.ext to i64, !dbg !3289
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3289
  %tobool = icmp ne i64 %expval, 0, !dbg !3289
  br i1 %tobool, label %if.then17, label %if.end21, !dbg !3286

if.then17:                                        ; preds = %do.body14
  br label %do.body18, !dbg !3289

do.body18:                                        ; preds = %if.then17
  %10 = call i64 @llvm.read_register.i64(metadata !3248), !dbg !3291
  %11 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %10) #12, !dbg !3291, !srcloc !3293
  call void @llvm.write_register.i64(metadata !3248, i64 %11), !dbg !3291
  br label %do.cond19, !dbg !3291

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !3291

do.end20:                                         ; preds = %do.cond19
  br label %if.end21, !dbg !3291

if.end21:                                         ; preds = %do.end20, %do.body14
  br label %do.cond22, !dbg !3286

do.cond22:                                        ; preds = %if.end21
  br label %do.end23, !dbg !3286

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !3286

if.end24:                                         ; preds = %do.end23, %do.body8
  br label %do.cond25, !dbg !3282

do.cond25:                                        ; preds = %if.end24
  br label %do.end26, !dbg !3282

do.end26:                                         ; preds = %do.cond25
  %12 = load ptr, ptr %fs.addr, align 8, !dbg !3294
  %lock27 = getelementptr inbounds %struct.fs_struct, ptr %12, i32 0, i32 1, !dbg !3295
  call void @spin_unlock(ptr noundef %lock27) #13, !dbg !3296
  %dentry = getelementptr inbounds %struct.path, ptr %old_root, i32 0, i32 1, !dbg !3297
  %13 = load ptr, ptr %dentry, align 8, !dbg !3297
  %tobool28 = icmp ne ptr %13, null, !dbg !3299
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !3300

if.then29:                                        ; preds = %do.end26
  call void @path_put(ptr noundef %old_root) #13, !dbg !3301
  br label %if.end30, !dbg !3301

if.end30:                                         ; preds = %if.then29, %do.end26
  call void @llvm.lifetime.end.p0(i64 16, ptr %old_root) #12, !dbg !3302
  ret void, !dbg !3302
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3303 dso_local void @path_get(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !3306 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3312, metadata !DIExpression()), !dbg !3313
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3314
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3314
  call void @_raw_spin_lock(ptr noundef %1) #13, !dbg !3314
  ret void, !dbg !3315
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__seqprop_spinlock_assert(ptr noundef %s) #4 align 16 !dbg !3316 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3322, metadata !DIExpression()), !dbg !3323
  ret void, !dbg !3323
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__seqprop_spinlock_preemptible(ptr noundef %s) #4 align 16 !dbg !3324 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3328, metadata !DIExpression()), !dbg !3329
  ret i1 false, !dbg !3330
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #4 align 16 !dbg !3332 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3335, metadata !DIExpression()), !dbg !3343
  br label %do.body, !dbg !3344

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !3345
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !3336, metadata !DIExpression()), !dbg !3345
  %0 = load i32, ptr %val.addr, align 4, !dbg !3345
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3345
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !3345

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !3345
  %cmp = icmp eq i32 %2, 1, !dbg !3345
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3345

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !3345
  %cmp1 = icmp eq i32 %3, -1, !dbg !3345
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !3345

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !3345
  br label %cond.end, !dbg !3345

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !3345

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !3345
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !3345
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !3346
  %cmp2 = icmp eq i32 %5, 1, !dbg !3346
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3345

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !3347, !srcloc !3349
  br label %if.end8, !dbg !3346

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !3350
  %cmp3 = icmp eq i32 %6, -1, !dbg !3350
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !3346

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !3351, !srcloc !3353
  br label %if.end, !dbg !3350

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !3350

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !3354
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !3339, metadata !DIExpression()), !dbg !3354
  %7 = load i32, ptr %val.addr, align 4, !dbg !3354
  %conv = sext i32 %7 to i64, !dbg !3354
  %and = and i64 %conv, 4294967295, !dbg !3354
  %conv7 = trunc i64 %and to i32, !dbg !3354
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !3354
  %8 = load i32, ptr %pto_val__, align 4, !dbg !3354
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !3354, !srcloc !3355
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !3350
  br label %do.cond, !dbg !3354

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !3354

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !3344
  br label %do.end10, !dbg !3345

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !3356
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_begin(ptr noundef %s) #5 align 16 !dbg !3357 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3362, metadata !DIExpression()), !dbg !3363
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3364
  call void @do_write_seqcount_begin_nested(ptr noundef %0, i32 noundef 0) #13, !dbg !3365
  ret void, !dbg !3366
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__seqprop_spinlock_ptr(ptr noundef %s) #4 align 16 !dbg !3367 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3372, metadata !DIExpression()), !dbg !3373
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3373
  %seqcount = getelementptr inbounds %struct.seqcount_spinlock, ptr %0, i32 0, i32 0, !dbg !3373
  ret ptr %seqcount, !dbg !3373
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_end(ptr noundef %s) #5 align 16 !dbg !3374 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3376, metadata !DIExpression()), !dbg !3377
  br label %do.body, !dbg !3378

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3379

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3381
  call void @do_raw_write_seqcount_end(ptr noundef %0) #13, !dbg !3382
  ret void, !dbg !3383
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #4 align 16 !dbg !3384 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !3390
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3388, metadata !DIExpression()), !dbg !3390
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !3390, !srcloc !3391
  %1 = icmp ult i8 %0, 2, !dbg !3390
  call void @llvm.assume(i1 %1), !dbg !3390
  store i8 %0, ptr %c, align 1, !dbg !3390
  %2 = load i8, ptr %c, align 1, !dbg !3390, !range !3392, !noundef !745
  %tobool = trunc i8 %2 to i1, !dbg !3390
  %frombool = zext i1 %tobool to i8, !dbg !3390
  store i8 %frombool, ptr %tmp, align 1, !dbg !3390
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !3393
  %3 = load i8, ptr %tmp, align 1, !dbg !3390, !range !3392, !noundef !745
  %tobool1 = trunc i8 %3 to i1, !dbg !3390
  ret i1 %tobool1, !dbg !3394
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !3395 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3397, metadata !DIExpression()), !dbg !3398
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3399
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3399
  call void @_raw_spin_unlock(ptr noundef %1) #13, !dbg !3399
  ret void, !dbg !3400
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3401 dso_local void @path_put(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @set_fs_pwd(ptr noundef %fs, ptr noundef %path) #0 align 16 !dbg !3207 {
entry:
  %fs.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %old_pwd = alloca %struct.path, align 8
  store ptr %fs, ptr %fs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs.addr, metadata !3209, metadata !DIExpression()), !dbg !3402
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3210, metadata !DIExpression()), !dbg !3403
  call void @llvm.lifetime.start.p0(i64 16, ptr %old_pwd) #12, !dbg !3404
  call void @llvm.dbg.declare(metadata ptr %old_pwd, metadata !3211, metadata !DIExpression()), !dbg !3405
  %0 = load ptr, ptr %path.addr, align 8, !dbg !3406
  call void @path_get(ptr noundef %0) #13, !dbg !3407
  %1 = load ptr, ptr %fs.addr, align 8, !dbg !3408
  %lock = getelementptr inbounds %struct.fs_struct, ptr %1, i32 0, i32 1, !dbg !3409
  call void @spin_lock(ptr noundef %lock) #13, !dbg !3410
  br label %do.body, !dbg !3411

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %fs.addr, align 8, !dbg !3412
  %seq = getelementptr inbounds %struct.fs_struct, ptr %2, i32 0, i32 2, !dbg !3412
  call void @__seqprop_spinlock_assert(ptr noundef %seq) #13, !dbg !3412
  %3 = load ptr, ptr %fs.addr, align 8, !dbg !3414
  %seq1 = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 2, !dbg !3414
  %call = call zeroext i1 @__seqprop_spinlock_preemptible(ptr noundef %seq1) #13, !dbg !3414
  br i1 %call, label %if.then, label %if.end, !dbg !3412

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !3414

do.body2:                                         ; preds = %if.then
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !3416
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3416, !srcloc !3418
  br label %do.cond, !dbg !3416

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !3416

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !3416

if.end:                                           ; preds = %do.end, %do.body
  %4 = load ptr, ptr %fs.addr, align 8, !dbg !3412
  %seq3 = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 2, !dbg !3412
  %call4 = call ptr @__seqprop_spinlock_ptr(ptr noundef %seq3) #13, !dbg !3412
  call void @do_write_seqcount_begin(ptr noundef %call4) #13, !dbg !3412
  br label %do.cond5, !dbg !3412

do.cond5:                                         ; preds = %if.end
  br label %do.end6, !dbg !3412

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %fs.addr, align 8, !dbg !3419
  %pwd = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 6, !dbg !3420
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %old_pwd, ptr align 8 %pwd, i64 16, i1 false), !dbg !3420
  %6 = load ptr, ptr %fs.addr, align 8, !dbg !3421
  %pwd7 = getelementptr inbounds %struct.fs_struct, ptr %6, i32 0, i32 6, !dbg !3422
  %7 = load ptr, ptr %path.addr, align 8, !dbg !3423
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pwd7, ptr align 8 %7, i64 16, i1 false), !dbg !3424
  br label %do.body8, !dbg !3425

do.body8:                                         ; preds = %do.end6
  %8 = load ptr, ptr %fs.addr, align 8, !dbg !3426
  %seq9 = getelementptr inbounds %struct.fs_struct, ptr %8, i32 0, i32 2, !dbg !3426
  %call10 = call ptr @__seqprop_spinlock_ptr(ptr noundef %seq9) #13, !dbg !3426
  call void @do_write_seqcount_end(ptr noundef %call10) #13, !dbg !3426
  %9 = load ptr, ptr %fs.addr, align 8, !dbg !3428
  %seq11 = getelementptr inbounds %struct.fs_struct, ptr %9, i32 0, i32 2, !dbg !3428
  %call12 = call zeroext i1 @__seqprop_spinlock_preemptible(ptr noundef %seq11) #13, !dbg !3428
  br i1 %call12, label %if.then13, label %if.end24, !dbg !3426

if.then13:                                        ; preds = %do.body8
  br label %do.body14, !dbg !3428

do.body14:                                        ; preds = %if.then13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3430, !srcloc !3432
  %call15 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !3433
  %lnot = xor i1 %call15, true, !dbg !3433
  %lnot16 = xor i1 %lnot, true, !dbg !3433
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !3433
  %conv = sext i32 %lnot.ext to i64, !dbg !3433
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3433
  %tobool = icmp ne i64 %expval, 0, !dbg !3433
  br i1 %tobool, label %if.then17, label %if.end21, !dbg !3430

if.then17:                                        ; preds = %do.body14
  br label %do.body18, !dbg !3433

do.body18:                                        ; preds = %if.then17
  %10 = call i64 @llvm.read_register.i64(metadata !3248), !dbg !3435
  %11 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %10) #12, !dbg !3435, !srcloc !3437
  call void @llvm.write_register.i64(metadata !3248, i64 %11), !dbg !3435
  br label %do.cond19, !dbg !3435

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !3435

do.end20:                                         ; preds = %do.cond19
  br label %if.end21, !dbg !3435

if.end21:                                         ; preds = %do.end20, %do.body14
  br label %do.cond22, !dbg !3430

do.cond22:                                        ; preds = %if.end21
  br label %do.end23, !dbg !3430

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !3430

if.end24:                                         ; preds = %do.end23, %do.body8
  br label %do.cond25, !dbg !3426

do.cond25:                                        ; preds = %if.end24
  br label %do.end26, !dbg !3426

do.end26:                                         ; preds = %do.cond25
  %12 = load ptr, ptr %fs.addr, align 8, !dbg !3438
  %lock27 = getelementptr inbounds %struct.fs_struct, ptr %12, i32 0, i32 1, !dbg !3439
  call void @spin_unlock(ptr noundef %lock27) #13, !dbg !3440
  %dentry = getelementptr inbounds %struct.path, ptr %old_pwd, i32 0, i32 1, !dbg !3441
  %13 = load ptr, ptr %dentry, align 8, !dbg !3441
  %tobool28 = icmp ne ptr %13, null, !dbg !3443
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !3444

if.then29:                                        ; preds = %do.end26
  call void @path_put(ptr noundef %old_pwd) #13, !dbg !3445
  br label %if.end30, !dbg !3445

if.end30:                                         ; preds = %if.then29, %do.end26
  call void @llvm.lifetime.end.p0(i64 16, ptr %old_pwd) #12, !dbg !3446
  ret void, !dbg !3446
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @chroot_fs_refs(ptr noundef %old_root, ptr noundef %new_root) #0 align 16 !dbg !3214 {
entry:
  %old_root.addr = alloca ptr, align 8
  %new_root.addr = alloca ptr, align 8
  %g = alloca ptr, align 8
  %p = alloca ptr, align 8
  %fs = alloca ptr, align 8
  %count = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %hits = alloca i32, align 4
  %__mptr52 = alloca ptr, align 8
  %tmp56 = alloca ptr, align 8
  %tmp59 = alloca ptr, align 8
  store ptr %old_root, ptr %old_root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_root.addr, metadata !3218, metadata !DIExpression()), !dbg !3447
  store ptr %new_root, ptr %new_root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_root.addr, metadata !3219, metadata !DIExpression()), !dbg !3448
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #12, !dbg !3449
  call void @llvm.dbg.declare(metadata ptr %g, metadata !3220, metadata !DIExpression()), !dbg !3450
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !3449
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3221, metadata !DIExpression()), !dbg !3451
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs) #12, !dbg !3452
  call void @llvm.dbg.declare(metadata ptr %fs, metadata !3222, metadata !DIExpression()), !dbg !3453
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #12, !dbg !3454
  call void @llvm.dbg.declare(metadata ptr %count, metadata !3223, metadata !DIExpression()), !dbg !3455
  store i32 0, ptr %count, align 4, !dbg !3455
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #13, !dbg !3456
  store ptr @init_task, ptr %g, align 8, !dbg !3457
  br label %for.cond, !dbg !3457

for.cond:                                         ; preds = %for.end, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !3458
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3224, metadata !DIExpression()), !dbg !3458
  br label %do.body, !dbg !3459

do.body:                                          ; preds = %for.cond
  br label %do.cond, !dbg !3461

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3461

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %g, align 8, !dbg !3459
  %tasks = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 46, !dbg !3459
  %next = getelementptr inbounds %struct.list_head, ptr %tasks, i32 0, i32 0, !dbg !3459
  %1 = load volatile ptr, ptr %next, align 16, !dbg !3459
  store ptr %1, ptr %tmp, align 8, !dbg !3461
  %2 = load ptr, ptr %tmp, align 8, !dbg !3459
  store ptr %2, ptr %__mptr, align 8, !dbg !3458
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3458
  %add.ptr = getelementptr i8, ptr %3, i64 -1136, !dbg !3458
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3458
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !3463
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3458
  store ptr %4, ptr %g, align 8, !dbg !3463
  %cmp = icmp ne ptr %4, @init_task, !dbg !3463
  br i1 %cmp, label %for.body, label %for.end61, !dbg !3457

for.body:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #12, !dbg !3464
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !3228, metadata !DIExpression()), !dbg !3464
  br label %do.body3, !dbg !3465

do.body3:                                         ; preds = %for.body
  br label %do.cond4, !dbg !3467

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !3467

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %g, align 8, !dbg !3465
  %signal = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 104, !dbg !3465
  %6 = load ptr, ptr %signal, align 64, !dbg !3465
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 4, !dbg !3465
  %next7 = getelementptr inbounds %struct.list_head, ptr %thread_head, i32 0, i32 0, !dbg !3465
  %7 = load volatile ptr, ptr %next7, align 8, !dbg !3465
  store ptr %7, ptr %tmp6, align 8, !dbg !3467
  %8 = load ptr, ptr %tmp6, align 8, !dbg !3465
  store ptr %8, ptr %__mptr2, align 8, !dbg !3464
  %9 = load ptr, ptr %__mptr2, align 8, !dbg !3464
  %add.ptr9 = getelementptr i8, ptr %9, i64 -1528, !dbg !3464
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !3464
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #12, !dbg !3469
  %10 = load ptr, ptr %tmp8, align 8, !dbg !3464
  store ptr %10, ptr %p, align 8, !dbg !3469
  br label %for.cond10, !dbg !3469

for.cond10:                                       ; preds = %do.end55, %do.end5
  %11 = load ptr, ptr %p, align 8, !dbg !3470
  %thread_node = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 75, !dbg !3470
  %12 = load ptr, ptr %g, align 8, !dbg !3470
  %signal11 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 104, !dbg !3470
  %13 = load ptr, ptr %signal11, align 64, !dbg !3470
  %thread_head12 = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 4, !dbg !3470
  %cmp13 = icmp ne ptr %thread_node, %thread_head12, !dbg !3470
  br i1 %cmp13, label %for.body14, label %for.end, !dbg !3469

for.body14:                                       ; preds = %for.cond10
  %14 = load ptr, ptr %p, align 8, !dbg !3471
  call void @task_lock(ptr noundef %14) #13, !dbg !3472
  %15 = load ptr, ptr %p, align 8, !dbg !3473
  %fs15 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 100, !dbg !3474
  %16 = load ptr, ptr %fs15, align 32, !dbg !3474
  store ptr %16, ptr %fs, align 8, !dbg !3475
  %17 = load ptr, ptr %fs, align 8, !dbg !3476
  %tobool = icmp ne ptr %17, null, !dbg !3476
  br i1 %tobool, label %if.then, label %if.end51, !dbg !3477

if.then:                                          ; preds = %for.body14
  call void @llvm.lifetime.start.p0(i64 4, ptr %hits) #12, !dbg !3478
  call void @llvm.dbg.declare(metadata ptr %hits, metadata !3231, metadata !DIExpression()), !dbg !3479
  store i32 0, ptr %hits, align 4, !dbg !3479
  %18 = load ptr, ptr %fs, align 8, !dbg !3480
  %lock = getelementptr inbounds %struct.fs_struct, ptr %18, i32 0, i32 1, !dbg !3481
  call void @spin_lock(ptr noundef %lock) #13, !dbg !3482
  br label %do.body16, !dbg !3483

do.body16:                                        ; preds = %if.then
  %19 = load ptr, ptr %fs, align 8, !dbg !3484
  %seq = getelementptr inbounds %struct.fs_struct, ptr %19, i32 0, i32 2, !dbg !3484
  call void @__seqprop_spinlock_assert(ptr noundef %seq) #13, !dbg !3484
  %20 = load ptr, ptr %fs, align 8, !dbg !3486
  %seq17 = getelementptr inbounds %struct.fs_struct, ptr %20, i32 0, i32 2, !dbg !3486
  %call = call zeroext i1 @__seqprop_spinlock_preemptible(ptr noundef %seq17) #13, !dbg !3486
  br i1 %call, label %if.then18, label %if.end, !dbg !3484

if.then18:                                        ; preds = %do.body16
  br label %do.body19, !dbg !3486

do.body19:                                        ; preds = %if.then18
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !3488
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3488, !srcloc !3490
  br label %do.cond20, !dbg !3488

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !3488

do.end21:                                         ; preds = %do.cond20
  br label %if.end, !dbg !3488

if.end:                                           ; preds = %do.end21, %do.body16
  %21 = load ptr, ptr %fs, align 8, !dbg !3484
  %seq22 = getelementptr inbounds %struct.fs_struct, ptr %21, i32 0, i32 2, !dbg !3484
  %call23 = call ptr @__seqprop_spinlock_ptr(ptr noundef %seq22) #13, !dbg !3484
  call void @do_write_seqcount_begin(ptr noundef %call23) #13, !dbg !3484
  br label %do.cond24, !dbg !3484

do.cond24:                                        ; preds = %if.end
  br label %do.end25, !dbg !3484

do.end25:                                         ; preds = %do.cond24
  %22 = load ptr, ptr %fs, align 8, !dbg !3491
  %root = getelementptr inbounds %struct.fs_struct, ptr %22, i32 0, i32 5, !dbg !3492
  %23 = load ptr, ptr %old_root.addr, align 8, !dbg !3493
  %24 = load ptr, ptr %new_root.addr, align 8, !dbg !3494
  %call26 = call i32 @replace_path(ptr noundef %root, ptr noundef %23, ptr noundef %24) #13, !dbg !3495
  %25 = load i32, ptr %hits, align 4, !dbg !3496
  %add = add i32 %25, %call26, !dbg !3496
  store i32 %add, ptr %hits, align 4, !dbg !3496
  %26 = load ptr, ptr %fs, align 8, !dbg !3497
  %pwd = getelementptr inbounds %struct.fs_struct, ptr %26, i32 0, i32 6, !dbg !3498
  %27 = load ptr, ptr %old_root.addr, align 8, !dbg !3499
  %28 = load ptr, ptr %new_root.addr, align 8, !dbg !3500
  %call27 = call i32 @replace_path(ptr noundef %pwd, ptr noundef %27, ptr noundef %28) #13, !dbg !3501
  %29 = load i32, ptr %hits, align 4, !dbg !3502
  %add28 = add i32 %29, %call27, !dbg !3502
  store i32 %add28, ptr %hits, align 4, !dbg !3502
  br label %do.body29, !dbg !3503

do.body29:                                        ; preds = %do.end25
  %30 = load ptr, ptr %fs, align 8, !dbg !3504
  %seq30 = getelementptr inbounds %struct.fs_struct, ptr %30, i32 0, i32 2, !dbg !3504
  %call31 = call ptr @__seqprop_spinlock_ptr(ptr noundef %seq30) #13, !dbg !3504
  call void @do_write_seqcount_end(ptr noundef %call31) #13, !dbg !3504
  %31 = load ptr, ptr %fs, align 8, !dbg !3506
  %seq32 = getelementptr inbounds %struct.fs_struct, ptr %31, i32 0, i32 2, !dbg !3506
  %call33 = call zeroext i1 @__seqprop_spinlock_preemptible(ptr noundef %seq32) #13, !dbg !3506
  br i1 %call33, label %if.then34, label %if.end46, !dbg !3504

if.then34:                                        ; preds = %do.body29
  br label %do.body35, !dbg !3506

do.body35:                                        ; preds = %if.then34
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3508, !srcloc !3510
  %call36 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !3511
  %lnot = xor i1 %call36, true, !dbg !3511
  %lnot37 = xor i1 %lnot, true, !dbg !3511
  %lnot.ext = zext i1 %lnot37 to i32, !dbg !3511
  %conv = sext i32 %lnot.ext to i64, !dbg !3511
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3511
  %tobool38 = icmp ne i64 %expval, 0, !dbg !3511
  br i1 %tobool38, label %if.then39, label %if.end43, !dbg !3508

if.then39:                                        ; preds = %do.body35
  br label %do.body40, !dbg !3511

do.body40:                                        ; preds = %if.then39
  %32 = call i64 @llvm.read_register.i64(metadata !3248), !dbg !3513
  %33 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %32) #12, !dbg !3513, !srcloc !3515
  call void @llvm.write_register.i64(metadata !3248, i64 %33), !dbg !3513
  br label %do.cond41, !dbg !3513

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !3513

do.end42:                                         ; preds = %do.cond41
  br label %if.end43, !dbg !3513

if.end43:                                         ; preds = %do.end42, %do.body35
  br label %do.cond44, !dbg !3508

do.cond44:                                        ; preds = %if.end43
  br label %do.end45, !dbg !3508

do.end45:                                         ; preds = %do.cond44
  br label %if.end46, !dbg !3508

if.end46:                                         ; preds = %do.end45, %do.body29
  br label %do.cond47, !dbg !3504

do.cond47:                                        ; preds = %if.end46
  br label %do.end48, !dbg !3504

do.end48:                                         ; preds = %do.cond47
  br label %while.cond, !dbg !3516

while.cond:                                       ; preds = %while.body, %do.end48
  %34 = load i32, ptr %hits, align 4, !dbg !3517
  %dec = add i32 %34, -1, !dbg !3517
  store i32 %dec, ptr %hits, align 4, !dbg !3517
  %tobool49 = icmp ne i32 %34, 0, !dbg !3516
  br i1 %tobool49, label %while.body, label %while.end, !dbg !3516

while.body:                                       ; preds = %while.cond
  %35 = load i32, ptr %count, align 4, !dbg !3518
  %inc = add i32 %35, 1, !dbg !3518
  store i32 %inc, ptr %count, align 4, !dbg !3518
  %36 = load ptr, ptr %new_root.addr, align 8, !dbg !3520
  call void @path_get(ptr noundef %36) #13, !dbg !3521
  br label %while.cond, !dbg !3516, !llvm.loop !3522

while.end:                                        ; preds = %while.cond
  %37 = load ptr, ptr %fs, align 8, !dbg !3526
  %lock50 = getelementptr inbounds %struct.fs_struct, ptr %37, i32 0, i32 1, !dbg !3527
  call void @spin_unlock(ptr noundef %lock50) #13, !dbg !3528
  call void @llvm.lifetime.end.p0(i64 4, ptr %hits) #12, !dbg !3529
  br label %if.end51, !dbg !3530

if.end51:                                         ; preds = %while.end, %for.body14
  %38 = load ptr, ptr %p, align 8, !dbg !3531
  call void @task_unlock(ptr noundef %38) #13, !dbg !3532
  br label %for.inc, !dbg !3533

for.inc:                                          ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr52) #12, !dbg !3534
  call void @llvm.dbg.declare(metadata ptr %__mptr52, metadata !3236, metadata !DIExpression()), !dbg !3534
  br label %do.body53, !dbg !3535

do.body53:                                        ; preds = %for.inc
  br label %do.cond54, !dbg !3537

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !3537

do.end55:                                         ; preds = %do.cond54
  %39 = load ptr, ptr %p, align 8, !dbg !3535
  %thread_node57 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 75, !dbg !3535
  %next58 = getelementptr inbounds %struct.list_head, ptr %thread_node57, i32 0, i32 0, !dbg !3535
  %40 = load volatile ptr, ptr %next58, align 8, !dbg !3535
  store ptr %40, ptr %tmp56, align 8, !dbg !3537
  %41 = load ptr, ptr %tmp56, align 8, !dbg !3535
  store ptr %41, ptr %__mptr52, align 8, !dbg !3534
  %42 = load ptr, ptr %__mptr52, align 8, !dbg !3534
  %add.ptr60 = getelementptr i8, ptr %42, i64 -1528, !dbg !3534
  store ptr %add.ptr60, ptr %tmp59, align 8, !dbg !3534
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr52) #12, !dbg !3470
  %43 = load ptr, ptr %tmp59, align 8, !dbg !3534
  store ptr %43, ptr %p, align 8, !dbg !3470
  br label %for.cond10, !dbg !3470, !llvm.loop !3539

for.end:                                          ; preds = %for.cond10
  br label %for.cond, !dbg !3463, !llvm.loop !3541

for.end61:                                        ; preds = %do.end
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #13, !dbg !3543
  br label %while.cond62, !dbg !3544

while.cond62:                                     ; preds = %while.body65, %for.end61
  %44 = load i32, ptr %count, align 4, !dbg !3545
  %dec63 = add i32 %44, -1, !dbg !3545
  store i32 %dec63, ptr %count, align 4, !dbg !3545
  %tobool64 = icmp ne i32 %44, 0, !dbg !3544
  br i1 %tobool64, label %while.body65, label %while.end66, !dbg !3544

while.body65:                                     ; preds = %while.cond62
  %45 = load ptr, ptr %old_root.addr, align 8, !dbg !3546
  call void @path_put(ptr noundef %45) #13, !dbg !3547
  br label %while.cond62, !dbg !3544, !llvm.loop !3548

while.end66:                                      ; preds = %while.cond62
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #12, !dbg !3550
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs) #12, !dbg !3550
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !3550
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #12, !dbg !3550
  ret void, !dbg !3550
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3551 dso_local void @_raw_read_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_lock(ptr noundef %p) #5 align 16 !dbg !3556 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3561, metadata !DIExpression()), !dbg !3562
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3563
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !3564
  call void @spin_lock(ptr noundef %alloc_lock) #13, !dbg !3565
  ret void, !dbg !3566
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @replace_path(ptr noundef %p, ptr noundef %old, ptr noundef %new) #5 align 16 !dbg !3567 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3571, metadata !DIExpression()), !dbg !3574
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3572, metadata !DIExpression()), !dbg !3575
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3573, metadata !DIExpression()), !dbg !3576
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3577
  %dentry = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !3577
  %1 = load ptr, ptr %dentry, align 8, !dbg !3577
  %2 = load ptr, ptr %old.addr, align 8, !dbg !3577
  %dentry1 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1, !dbg !3577
  %3 = load ptr, ptr %dentry1, align 8, !dbg !3577
  %cmp = icmp ne ptr %1, %3, !dbg !3577
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3577

lor.rhs:                                          ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8, !dbg !3577
  %mnt = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 0, !dbg !3577
  %5 = load ptr, ptr %mnt, align 8, !dbg !3577
  %6 = load ptr, ptr %old.addr, align 8, !dbg !3577
  %mnt2 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 0, !dbg !3577
  %7 = load ptr, ptr %mnt2, align 8, !dbg !3577
  %cmp3 = icmp ne ptr %5, %7, !dbg !3577
  br label %lor.end, !dbg !3577

lor.end:                                          ; preds = %lor.rhs, %entry
  %8 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lnot = xor i1 %8, true, !dbg !3577
  %lnot4 = xor i1 %lnot, true, !dbg !3577
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3577
  %conv = sext i32 %lnot.ext to i64, !dbg !3577
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3577
  %tobool = icmp ne i64 %expval, 0, !dbg !3577
  br i1 %tobool, label %if.then, label %if.end, !dbg !3579

if.then:                                          ; preds = %lor.end
  store i32 0, ptr %retval, align 4, !dbg !3580
  br label %return, !dbg !3580

if.end:                                           ; preds = %lor.end
  %9 = load ptr, ptr %p.addr, align 8, !dbg !3581
  %10 = load ptr, ptr %new.addr, align 8, !dbg !3582
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %10, i64 16, i1 false), !dbg !3583
  store i32 1, ptr %retval, align 4, !dbg !3584
  br label %return, !dbg !3584

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !3585
  ret i32 %11, !dbg !3585
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_unlock(ptr noundef %p) #5 align 16 !dbg !3586 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3588, metadata !DIExpression()), !dbg !3589
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3590
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !3591
  call void @spin_unlock(ptr noundef %alloc_lock) #13, !dbg !3592
  ret void, !dbg !3593
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3594 dso_local void @_raw_read_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @free_fs_struct(ptr noundef %fs) #0 align 16 !dbg !3595 {
entry:
  %fs.addr = alloca ptr, align 8
  store ptr %fs, ptr %fs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs.addr, metadata !3599, metadata !DIExpression()), !dbg !3600
  %0 = load ptr, ptr %fs.addr, align 8, !dbg !3601
  %root = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 5, !dbg !3602
  call void @path_put(ptr noundef %root) #13, !dbg !3603
  %1 = load ptr, ptr %fs.addr, align 8, !dbg !3604
  %pwd = getelementptr inbounds %struct.fs_struct, ptr %1, i32 0, i32 6, !dbg !3605
  call void @path_put(ptr noundef %pwd) #13, !dbg !3606
  %2 = load ptr, ptr @fs_cachep, align 8, !dbg !3607
  %3 = load ptr, ptr %fs.addr, align 8, !dbg !3608
  call void @kmem_cache_free(ptr noundef %2, ptr noundef %3) #13, !dbg !3609
  ret void, !dbg !3610
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3611 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @exit_fs(ptr noundef %tsk) #0 align 16 !dbg !3617 {
entry:
  %tsk.addr = alloca ptr, align 8
  %fs = alloca ptr, align 8
  %kill = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !3619, metadata !DIExpression()), !dbg !3624
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs) #12, !dbg !3625
  call void @llvm.dbg.declare(metadata ptr %fs, metadata !3620, metadata !DIExpression()), !dbg !3626
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !3627
  %fs1 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 100, !dbg !3628
  %1 = load ptr, ptr %fs1, align 32, !dbg !3628
  store ptr %1, ptr %fs, align 8, !dbg !3626
  %2 = load ptr, ptr %fs, align 8, !dbg !3629
  %tobool = icmp ne ptr %2, null, !dbg !3629
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3630

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %kill) #12, !dbg !3631
  call void @llvm.dbg.declare(metadata ptr %kill, metadata !3621, metadata !DIExpression()), !dbg !3632
  %3 = load ptr, ptr %tsk.addr, align 8, !dbg !3633
  call void @task_lock(ptr noundef %3) #13, !dbg !3634
  %4 = load ptr, ptr %fs, align 8, !dbg !3635
  %lock = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 1, !dbg !3636
  call void @spin_lock(ptr noundef %lock) #13, !dbg !3637
  %5 = load ptr, ptr %tsk.addr, align 8, !dbg !3638
  %fs2 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 100, !dbg !3639
  store ptr null, ptr %fs2, align 32, !dbg !3640
  %6 = load ptr, ptr %fs, align 8, !dbg !3641
  %users = getelementptr inbounds %struct.fs_struct, ptr %6, i32 0, i32 0, !dbg !3642
  %7 = load i32, ptr %users, align 8, !dbg !3643
  %dec = add i32 %7, -1, !dbg !3643
  store i32 %dec, ptr %users, align 8, !dbg !3643
  %tobool3 = icmp ne i32 %dec, 0, !dbg !3644
  %lnot = xor i1 %tobool3, true, !dbg !3644
  %lnot.ext = zext i1 %lnot to i32, !dbg !3644
  store i32 %lnot.ext, ptr %kill, align 4, !dbg !3645
  %8 = load ptr, ptr %fs, align 8, !dbg !3646
  %lock4 = getelementptr inbounds %struct.fs_struct, ptr %8, i32 0, i32 1, !dbg !3647
  call void @spin_unlock(ptr noundef %lock4) #13, !dbg !3648
  %9 = load ptr, ptr %tsk.addr, align 8, !dbg !3649
  call void @task_unlock(ptr noundef %9) #13, !dbg !3650
  %10 = load i32, ptr %kill, align 4, !dbg !3651
  %tobool5 = icmp ne i32 %10, 0, !dbg !3651
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !3653

if.then6:                                         ; preds = %if.then
  %11 = load ptr, ptr %fs, align 8, !dbg !3654
  call void @free_fs_struct(ptr noundef %11) #13, !dbg !3655
  br label %if.end, !dbg !3655

if.end:                                           ; preds = %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %kill) #12, !dbg !3656
  br label %if.end7, !dbg !3657

if.end7:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs) #12, !dbg !3658
  ret void, !dbg !3658
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @copy_fs_struct(ptr noundef %old) #0 align 16 !dbg !3659 {
entry:
  %old.addr = alloca ptr, align 8
  %fs = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  %____s = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3663, metadata !DIExpression()), !dbg !3670
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs) #12, !dbg !3671
  call void @llvm.dbg.declare(metadata ptr %fs, metadata !3664, metadata !DIExpression()), !dbg !3672
  %0 = load ptr, ptr @fs_cachep, align 8, !dbg !3673
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #13, !dbg !3674
  store ptr %call, ptr %fs, align 8, !dbg !3672
  %1 = load ptr, ptr %fs, align 8, !dbg !3675
  %tobool = icmp ne ptr %1, null, !dbg !3675
  br i1 %tobool, label %if.then, label %if.end, !dbg !3676

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %fs, align 8, !dbg !3677
  %users = getelementptr inbounds %struct.fs_struct, ptr %2, i32 0, i32 0, !dbg !3678
  store i32 1, ptr %users, align 8, !dbg !3679
  %3 = load ptr, ptr %fs, align 8, !dbg !3680
  %in_exec = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 4, !dbg !3681
  store i32 0, ptr %in_exec, align 8, !dbg !3682
  br label %do.body, !dbg !3683

do.body:                                          ; preds = %if.then
  %4 = load ptr, ptr %fs, align 8, !dbg !3684
  %lock = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 1, !dbg !3684
  %call1 = call ptr @spinlock_check(ptr noundef %lock) #13, !dbg !3684
  %5 = load ptr, ptr %fs, align 8, !dbg !3684
  %lock2 = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 1, !dbg !3684
  %6 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !3684
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %6, i32 0, i32 0, !dbg !3684
  %7 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !3684
  %counter = getelementptr inbounds %struct.atomic_t, ptr %7, i32 0, i32 0, !dbg !3684
  store i32 0, ptr %counter, align 4, !dbg !3684
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !3684
  br label %do.cond, !dbg !3684

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3684

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !3686

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____s) #12, !dbg !3687
  call void @llvm.dbg.declare(metadata ptr %____s, metadata !3665, metadata !DIExpression()), !dbg !3687
  %8 = load ptr, ptr %fs, align 8, !dbg !3687
  %seq = getelementptr inbounds %struct.fs_struct, ptr %8, i32 0, i32 2, !dbg !3687
  store ptr %seq, ptr %____s, align 8, !dbg !3687
  %9 = load ptr, ptr %____s, align 8, !dbg !3687
  %seqcount = getelementptr inbounds %struct.seqcount_spinlock, ptr %9, i32 0, i32 0, !dbg !3687
  call void @__seqcount_init(ptr noundef %seqcount, ptr noundef null, ptr noundef null) #13, !dbg !3687
  call void @llvm.lifetime.end.p0(i64 8, ptr %____s) #12, !dbg !3686
  br label %do.cond4, !dbg !3687

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !3687

do.end5:                                          ; preds = %do.cond4
  %10 = load ptr, ptr %old.addr, align 8, !dbg !3688
  %umask = getelementptr inbounds %struct.fs_struct, ptr %10, i32 0, i32 3, !dbg !3689
  %11 = load i32, ptr %umask, align 4, !dbg !3689
  %12 = load ptr, ptr %fs, align 8, !dbg !3690
  %umask6 = getelementptr inbounds %struct.fs_struct, ptr %12, i32 0, i32 3, !dbg !3691
  store i32 %11, ptr %umask6, align 4, !dbg !3692
  %13 = load ptr, ptr %old.addr, align 8, !dbg !3693
  %lock7 = getelementptr inbounds %struct.fs_struct, ptr %13, i32 0, i32 1, !dbg !3694
  call void @spin_lock(ptr noundef %lock7) #13, !dbg !3695
  %14 = load ptr, ptr %fs, align 8, !dbg !3696
  %root = getelementptr inbounds %struct.fs_struct, ptr %14, i32 0, i32 5, !dbg !3697
  %15 = load ptr, ptr %old.addr, align 8, !dbg !3698
  %root8 = getelementptr inbounds %struct.fs_struct, ptr %15, i32 0, i32 5, !dbg !3699
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %root, ptr align 8 %root8, i64 16, i1 false), !dbg !3699
  %16 = load ptr, ptr %fs, align 8, !dbg !3700
  %root9 = getelementptr inbounds %struct.fs_struct, ptr %16, i32 0, i32 5, !dbg !3701
  call void @path_get(ptr noundef %root9) #13, !dbg !3702
  %17 = load ptr, ptr %fs, align 8, !dbg !3703
  %pwd = getelementptr inbounds %struct.fs_struct, ptr %17, i32 0, i32 6, !dbg !3704
  %18 = load ptr, ptr %old.addr, align 8, !dbg !3705
  %pwd10 = getelementptr inbounds %struct.fs_struct, ptr %18, i32 0, i32 6, !dbg !3706
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pwd, ptr align 8 %pwd10, i64 16, i1 false), !dbg !3706
  %19 = load ptr, ptr %fs, align 8, !dbg !3707
  %pwd11 = getelementptr inbounds %struct.fs_struct, ptr %19, i32 0, i32 6, !dbg !3708
  call void @path_get(ptr noundef %pwd11) #13, !dbg !3709
  %20 = load ptr, ptr %old.addr, align 8, !dbg !3710
  %lock12 = getelementptr inbounds %struct.fs_struct, ptr %20, i32 0, i32 1, !dbg !3711
  call void @spin_unlock(ptr noundef %lock12) #13, !dbg !3712
  br label %if.end, !dbg !3713

if.end:                                           ; preds = %do.end5, %entry
  %21 = load ptr, ptr %fs, align 8, !dbg !3714
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs) #12, !dbg !3715
  ret ptr %21, !dbg !3716
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3717 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !3720 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3725, metadata !DIExpression()), !dbg !3726
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3727
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3728
  ret ptr %1, !dbg !3729
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__seqcount_init(ptr noundef %s, ptr noundef %name, ptr noundef %key) #5 align 16 !dbg !3730 {
entry:
  %s.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3735, metadata !DIExpression()), !dbg !3738
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3736, metadata !DIExpression()), !dbg !3739
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3737, metadata !DIExpression()), !dbg !3740
  br label %do.body, !dbg !3741

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8, !dbg !3742
  %1 = load ptr, ptr %key.addr, align 8, !dbg !3742
  br label %do.end, !dbg !3742

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3744
  %sequence = getelementptr inbounds %struct.seqcount, ptr %2, i32 0, i32 0, !dbg !3745
  store i32 0, ptr %sequence, align 4, !dbg !3746
  ret void, !dbg !3747
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @unshare_fs_struct() #0 align 16 !dbg !3748 {
entry:
  %retval = alloca i32, align 4
  %fs = alloca ptr, align 8
  %new_fs = alloca ptr, align 8
  %kill = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs) #12, !dbg !3755
  call void @llvm.dbg.declare(metadata ptr %fs, metadata !3752, metadata !DIExpression()), !dbg !3756
  %call = call ptr @get_current() #13, !dbg !3757
  %fs1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 100, !dbg !3758
  %0 = load ptr, ptr %fs1, align 32, !dbg !3758
  store ptr %0, ptr %fs, align 8, !dbg !3756
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_fs) #12, !dbg !3759
  call void @llvm.dbg.declare(metadata ptr %new_fs, metadata !3753, metadata !DIExpression()), !dbg !3760
  %1 = load ptr, ptr %fs, align 8, !dbg !3761
  %call2 = call ptr @copy_fs_struct(ptr noundef %1) #13, !dbg !3762
  store ptr %call2, ptr %new_fs, align 8, !dbg !3760
  call void @llvm.lifetime.start.p0(i64 4, ptr %kill) #12, !dbg !3763
  call void @llvm.dbg.declare(metadata ptr %kill, metadata !3754, metadata !DIExpression()), !dbg !3764
  %2 = load ptr, ptr %new_fs, align 8, !dbg !3765
  %tobool = icmp ne ptr %2, null, !dbg !3765
  br i1 %tobool, label %if.end, label %if.then, !dbg !3767

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !3768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3768

if.end:                                           ; preds = %entry
  %call3 = call ptr @get_current() #13, !dbg !3769
  call void @task_lock(ptr noundef %call3) #13, !dbg !3770
  %3 = load ptr, ptr %fs, align 8, !dbg !3771
  %lock = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 1, !dbg !3772
  call void @spin_lock(ptr noundef %lock) #13, !dbg !3773
  %4 = load ptr, ptr %fs, align 8, !dbg !3774
  %users = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 0, !dbg !3775
  %5 = load i32, ptr %users, align 8, !dbg !3776
  %dec = add i32 %5, -1, !dbg !3776
  store i32 %dec, ptr %users, align 8, !dbg !3776
  %tobool4 = icmp ne i32 %dec, 0, !dbg !3777
  %lnot = xor i1 %tobool4, true, !dbg !3777
  %lnot.ext = zext i1 %lnot to i32, !dbg !3777
  store i32 %lnot.ext, ptr %kill, align 4, !dbg !3778
  %6 = load ptr, ptr %new_fs, align 8, !dbg !3779
  %call5 = call ptr @get_current() #13, !dbg !3780
  %fs6 = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 100, !dbg !3781
  store ptr %6, ptr %fs6, align 32, !dbg !3782
  %7 = load ptr, ptr %fs, align 8, !dbg !3783
  %lock7 = getelementptr inbounds %struct.fs_struct, ptr %7, i32 0, i32 1, !dbg !3784
  call void @spin_unlock(ptr noundef %lock7) #13, !dbg !3785
  %call8 = call ptr @get_current() #13, !dbg !3786
  call void @task_unlock(ptr noundef %call8) #13, !dbg !3787
  %8 = load i32, ptr %kill, align 4, !dbg !3788
  %tobool9 = icmp ne i32 %8, 0, !dbg !3788
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3790

if.then10:                                        ; preds = %if.end
  %9 = load ptr, ptr %fs, align 8, !dbg !3791
  call void @free_fs_struct(ptr noundef %9) #13, !dbg !3792
  br label %if.end11, !dbg !3792

if.end11:                                         ; preds = %if.then10, %if.end
  store i32 0, ptr %retval, align 4, !dbg !3793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3793

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %kill) #12, !dbg !3794
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_fs) #12, !dbg !3794
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs) #12, !dbg !3794
  %10 = load i32, ptr %retval, align 4, !dbg !3794
  ret i32 %10, !dbg !3794
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !3795 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !3808
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3800, metadata !DIExpression()), !dbg !3808
  br label %do.body, !dbg !3808

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3809
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3802, metadata !DIExpression()), !dbg !3809
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3809
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3809
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3808
  br label %do.cond, !dbg !3809

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3809

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !3810
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3806, metadata !DIExpression()), !dbg !3810
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #14, !dbg !3810, !srcloc !3811
  store i64 %1, ptr %pfo_val__, align 8, !dbg !3810
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !3810
  %3 = inttoptr i64 %2 to ptr, !dbg !3810
  store ptr %3, ptr %tmp, align 8, !dbg !3810
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !3808
  %4 = load ptr, ptr %tmp, align 8, !dbg !3810
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !3808
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !3808
  store ptr %5, ptr %tmp1, align 8, !dbg !3808
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !3812
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3808
  ret ptr %6, !dbg !3813
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @current_umask() #0 align 16 !dbg !3814 {
entry:
  %call = call ptr @get_current() #13, !dbg !3815
  %fs = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 100, !dbg !3816
  %0 = load ptr, ptr %fs, align 32, !dbg !3816
  %umask = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 3, !dbg !3817
  %1 = load i32, ptr %umask, align 4, !dbg !3817
  ret i32 %1, !dbg !3818
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3819 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_begin_nested(ptr noundef %s, i32 noundef %subclass) #5 align 16 !dbg !3823 {
entry:
  %s.addr = alloca ptr, align 8
  %subclass.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3827, metadata !DIExpression()), !dbg !3829
  store i32 %subclass, ptr %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subclass.addr, metadata !3828, metadata !DIExpression()), !dbg !3830
  br label %do.body, !dbg !3831

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3832

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3834
  call void @do_raw_write_seqcount_begin(ptr noundef %0) #13, !dbg !3835
  ret void, !dbg !3836
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_begin(ptr noundef %s) #5 align 16 !dbg !3837 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3839, metadata !DIExpression()), !dbg !3840
  call void @kcsan_nestable_atomic_begin() #13, !dbg !3841
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3842
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !3843
  %1 = load i32, ptr %sequence, align 4, !dbg !3844
  %inc = add i32 %1, 1, !dbg !3844
  store i32 %inc, ptr %sequence, align 4, !dbg !3844
  br label %do.body, !dbg !3845

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3846

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3848

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3846, !srcloc !3850
  br label %do.end2, !dbg !3846

do.end2:                                          ; preds = %do.end
  ret void, !dbg !3851
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_begin() #5 align 16 !dbg !3852 {
entry:
  ret void, !dbg !3854
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_end(ptr noundef %s) #5 align 16 !dbg !3855 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3857, metadata !DIExpression()), !dbg !3858
  br label %do.body, !dbg !3859

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3860

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3862

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3860, !srcloc !3864
  br label %do.end2, !dbg !3860

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3865
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !3866
  %1 = load i32, ptr %sequence, align 4, !dbg !3867
  %inc = add i32 %1, 1, !dbg !3867
  store i32 %inc, ptr %sequence, align 4, !dbg !3867
  call void @kcsan_nestable_atomic_end() #13, !dbg !3868
  ret void, !dbg !3869
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_end() #5 align 16 !dbg !3870 {
entry:
  ret void, !dbg !3871
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3872 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { nounwind memory(none) }

!llvm.dbg.cu = !{!3197}
!llvm.named.register.rsp = !{!3248}
!llvm.module.flags = !{!3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256}
!llvm.ident = !{!3257}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule251", scope: !2, file: !3, line: 24, type: !173, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "set_fs_root", scope: !3, file: !3, line: 15, type: !4, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3244)
!3 = !DIFile(filename: "fs/fs_struct.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "843cf117907b83039e7ad8696a99c0bc")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !1261}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !8, line: 9, size: 448, elements: !9)
!8 = !DIFile(filename: "./include/linux/fs_struct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "974310bb6a29a53024699f0fa1ab259a")
!9 = !{!10, !12, !56, !67, !68, !69, !3196}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !7, file: !8, line: 10, baseType: !11, size: 32)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !7, file: !8, line: 11, baseType: !13, size: 32, offset: 32)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !14, line: 29, baseType: !15)
!14 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !14, line: 17, size: 32, elements: !16)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_member, scope: !15, file: !14, line: 18, baseType: !18, size: 32)
!18 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !15, file: !14, line: 18, size: 32, elements: !19)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !18, file: !14, line: 19, baseType: !21, size: 32)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !22, line: 14, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !21, file: !22, line: 15, baseType: !25, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !26, line: 44, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !26, line: 14, size: 32, elements: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, scope: !27, file: !26, line: 15, baseType: !30, size: 32)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !27, file: !26, line: 15, size: 32, elements: !31)
!31 = !{!32, !38, !48}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !30, file: !26, line: 16, baseType: !33, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !34, line: 174, baseType: !35)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 172, size: 32, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !35, file: !34, line: 173, baseType: !11, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, scope: !30, file: !26, line: 24, baseType: !39, size: 16)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !30, file: !26, line: 24, size: 16, elements: !40)
!40 = !{!41, !47}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !39, file: !26, line: 25, baseType: !42, size: 8)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !43, line: 17, baseType: !44)
!43 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !45, line: 21, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !39, file: !26, line: 26, baseType: !42, size: 8, offset: 8)
!48 = !DIDerivedType(tag: DW_TAG_member, scope: !30, file: !26, line: 28, baseType: !49, size: 32)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !30, file: !26, line: 28, size: 32, elements: !50)
!50 = !{!51, !55}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !49, file: !26, line: 29, baseType: !52, size: 16)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !43, line: 19, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !45, line: 24, baseType: !54)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !49, file: !26, line: 30, baseType: !52, size: 16, offset: 16)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !7, file: !8, line: 12, baseType: !57, size: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !58, line: 275, baseType: !59)
!58 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !58, line: 275, size: 32, elements: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !59, file: !58, line: 275, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !58, line: 69, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !58, line: 64, size: 32, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !63, file: !58, line: 65, baseType: !66, size: 32)
!66 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "umask", scope: !7, file: !8, line: 13, baseType: !11, size: 32, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "in_exec", scope: !7, file: !8, line: 14, baseType: !11, size: 32, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !7, file: !8, line: 15, baseType: !70, size: 128, offset: 192)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !71, line: 8, size: 128, elements: !72)
!71 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!72 = !{!73, !3195}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !70, file: !71, line: 9, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !76, line: 70, size: 256, elements: !77)
!76 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!77 = !{!78, !3192, !3193, !3194}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !75, file: !76, line: 71, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !81, line: 82, size: 1536, elements: !82)
!81 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!82 = !{!83, !84, !85, !93, !94, !114, !3159, !3161, !3174, !3175, !3176, !3177, !3178, !3184, !3185, !3186}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !80, file: !81, line: 84, baseType: !66, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !80, file: !81, line: 85, baseType: !57, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !80, file: !81, line: 86, baseType: !86, size: 128, offset: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !87, line: 38, size: 128, elements: !88)
!87 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!88 = !{!89, !91}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !86, file: !87, line: 39, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !86, file: !87, line: 39, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !80, file: !81, line: 87, baseType: !79, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !80, file: !81, line: 88, baseType: !95, size: 128, offset: 256)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !81, line: 49, size: 128, elements: !96)
!96 = !{!97, !111}
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !95, file: !81, line: 50, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !81, line: 50, size: 64, elements: !99)
!99 = !{!100, !107}
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !98, file: !81, line: 51, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !98, file: !81, line: 51, size: 64, elements: !102)
!102 = !{!103, !106}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !101, file: !81, line: 52, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !43, line: 21, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !45, line: 27, baseType: !66)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !101, file: !81, line: 52, baseType: !104, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !98, file: !81, line: 54, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !43, line: 23, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !45, line: 31, baseType: !110)
!110 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !95, file: !81, line: 56, baseType: !112, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !80, file: !81, line: 89, baseType: !115, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !117, line: 641, size: 4800, elements: !118)
!117 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!118 = !{!119, !121, !122, !131, !137, !144, !145, !148, !149, !1337, !3098, !3099, !3100, !3101, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3141, !3144, !3145, !3146, !3155, !3156, !3157, !3158}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !116, file: !117, line: 642, baseType: !120, size: 16)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !34, line: 24, baseType: !54)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !116, file: !117, line: 643, baseType: !54, size: 16, offset: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !116, file: !117, line: 644, baseType: !123, size: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !124, line: 23, baseType: !125)
!124 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 21, size: 32, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !125, file: !124, line: 22, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !34, line: 37, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !130, line: 49, baseType: !66)
!130 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !116, file: !117, line: 645, baseType: !132, size: 128, offset: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !34, line: 190, size: 128, elements: !133)
!133 = !{!134, !136}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !34, line: 191, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !34, line: 191, baseType: !135, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !116, file: !117, line: 646, baseType: !138, size: 32, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !124, line: 28, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 26, size: 32, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !139, file: !124, line: 27, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !34, line: 38, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !130, line: 50, baseType: !66)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !116, file: !117, line: 647, baseType: !66, size: 32, offset: 224)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !116, file: !117, line: 650, baseType: !146, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !117, line: 607, flags: DIFlagFwdDecl)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !116, file: !117, line: 651, baseType: !146, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !116, file: !117, line: 654, baseType: !150, size: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !117, line: 1966, size: 2048, align: 512, elements: !153)
!153 = !{!154, !158, !175, !182, !188, !193, !197, !201, !205, !209, !213, !214, !220, !224, !1257, !1288, !1292, !1298, !1302, !1306, !1310, !1314, !1318, !1324, !1328}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !152, file: !117, line: 1967, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!79, !115, !79, !66}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !152, file: !117, line: 1968, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !79, !115, !165}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !167, line: 10, size: 128, elements: !168)
!167 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!168 = !{!169, !174}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !166, file: !167, line: 11, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !166, file: !167, line: 12, baseType: !173, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !152, file: !117, line: 1969, baseType: !176, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!11, !179, !115, !11}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !181, line: 42, flags: DIFlagFwdDecl)
!181 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !152, file: !117, line: 1970, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!146, !115, !11, !186}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !34, line: 35, baseType: !187)
!187 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !152, file: !117, line: 1972, baseType: !189, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!11, !79, !192, !11}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !152, file: !117, line: 1974, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!11, !179, !115, !79, !120, !186}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !152, file: !117, line: 1976, baseType: !198, size: 64, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!11, !79, !115, !79}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !152, file: !117, line: 1977, baseType: !202, size: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!11, !115, !79}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !152, file: !117, line: 1978, baseType: !206, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!11, !179, !115, !79, !162}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !152, file: !117, line: 1980, baseType: !210, size: 64, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!11, !179, !115, !79, !120}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !152, file: !117, line: 1982, baseType: !202, size: 64, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !152, file: !117, line: 1983, baseType: !215, size: 64, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!11, !179, !115, !79, !120, !218}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !34, line: 21, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !34, line: 18, baseType: !104)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !152, file: !117, line: 1985, baseType: !221, size: 64, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!11, !179, !115, !79, !115, !79, !66}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !152, file: !117, line: 1987, baseType: !225, size: 64, offset: 832)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!11, !179, !79, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !117, line: 226, size: 640, elements: !230)
!230 = !{!231, !232, !233, !243, !252, !256, !265, !266, !267}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !229, file: !117, line: 227, baseType: !66, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !229, file: !117, line: 228, baseType: !120, size: 16, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !117, line: 241, baseType: !234, size: 32, offset: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !117, line: 241, size: 32, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !234, file: !117, line: 242, baseType: !123, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !234, file: !117, line: 243, baseType: !238, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !239, line: 16, baseType: !240)
!239 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 14, size: 32, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !240, file: !239, line: 15, baseType: !128, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !117, line: 245, baseType: !244, size: 32, offset: 96)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !117, line: 245, size: 32, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !244, file: !117, line: 246, baseType: !138, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !244, file: !117, line: 247, baseType: !248, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !239, line: 20, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 18, size: 32, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !249, file: !239, line: 19, baseType: !142, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !229, file: !117, line: 249, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !34, line: 52, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !130, line: 88, baseType: !255)
!255 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !229, file: !117, line: 250, baseType: !257, size: 128, offset: 192)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !258, line: 13, size: 128, elements: !259)
!258 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!259 = !{!260, !263}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !257, file: !258, line: 14, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !258, line: 8, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !45, line: 30, baseType: !255)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !257, file: !258, line: 15, baseType: !264, size: 64, offset: 64)
!264 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !229, file: !117, line: 251, baseType: !257, size: 128, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !229, file: !117, line: 252, baseType: !257, size: 128, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !229, file: !117, line: 259, baseType: !268, size: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !117, line: 994, size: 1856, align: 64, elements: !270)
!270 = !{!271, !290, !291, !293, !301, !314, !315, !316, !398, !606, !615, !616, !617, !994, !995, !996, !997, !999, !1255, !1256}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !117, line: 995, baseType: !272, size: 128)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !117, line: 995, size: 128, elements: !273)
!273 = !{!274, !280, !289}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !272, file: !117, line: 996, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !276, line: 60, size: 64, elements: !277)
!276 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !276, line: 61, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !272, file: !117, line: 997, baseType: !281, size: 128, align: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !34, line: 232, size: 128, align: 64, elements: !282)
!282 = !{!283, !285}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !34, line: 233, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !281, file: !34, line: 234, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !284}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !272, file: !117, line: 998, baseType: !66, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !269, file: !117, line: 1005, baseType: !13, size: 32, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !269, file: !117, line: 1006, baseType: !292, size: 32, offset: 160)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !34, line: 156, baseType: !66)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !269, file: !117, line: 1007, baseType: !294, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !295, line: 13, baseType: !296)
!295 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !34, line: 181, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 179, size: 64, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !297, file: !34, line: 180, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !43, line: 22, baseType: !262)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !269, file: !117, line: 1008, baseType: !302, size: 256, offset: 256)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !303, line: 66, size: 256, elements: !304)
!303 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!304 = !{!305, !306, !308, !313}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !302, file: !303, line: 67, baseType: !294, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !302, file: !303, line: 68, baseType: !307, size: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !22, line: 23, baseType: !21)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !302, file: !303, line: 70, baseType: !309, size: 32, offset: 96)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !310, line: 15, size: 32, elements: !311)
!310 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !309, file: !310, line: 20, baseType: !33, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !302, file: !303, line: 72, baseType: !132, size: 128, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !269, file: !117, line: 1009, baseType: !253, size: 64, offset: 512)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !269, file: !117, line: 1010, baseType: !66, size: 32, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !269, file: !117, line: 1011, baseType: !317, size: 256, offset: 640)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !117, line: 948, size: 256, elements: !318)
!318 = !{!319, !342, !387, !395, !396, !397}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !317, file: !117, line: 949, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !321, line: 34, baseType: !322)
!321 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 25, size: 64, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !322, file: !321, line: 26, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !326, line: 27, baseType: !327)
!326 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !326, line: 13, size: 64, elements: !328)
!328 = !{!329, !341}
!329 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !326, line: 14, baseType: !330, size: 32)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !326, line: 14, size: 32, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !330, file: !326, line: 15, baseType: !33, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !330, file: !326, line: 16, baseType: !334, size: 32)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !330, file: !326, line: 16, size: 32, elements: !335)
!335 = !{!336, !337}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !334, file: !326, line: 18, baseType: !42, size: 8)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !334, file: !326, line: 19, baseType: !338, size: 24, offset: 8)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 24, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 3)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !327, file: !326, line: 26, baseType: !25, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !317, file: !117, line: 950, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !345, line: 59, size: 768, elements: !346)
!345 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!346 = !{!347, !353, !354, !355, !368, !369, !376, !377}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !344, file: !345, line: 61, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !349, line: 113, baseType: !350)
!349 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !349, line: 111, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !350, file: !349, line: 112, baseType: !33, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !344, file: !345, line: 62, baseType: !66, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !344, file: !345, line: 63, baseType: !13, size: 32, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !344, file: !345, line: 65, baseType: !356, size: 256, offset: 128)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 256, elements: !366)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !34, line: 194, size: 64, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !357, file: !34, line: 195, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !34, line: 198, size: 128, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !34, line: 199, baseType: !360, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !361, file: !34, line: 199, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!366 = !{!367}
!367 = !DISubrange(count: 4)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !344, file: !345, line: 66, baseType: !357, size: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !344, file: !345, line: 68, baseType: !370, size: 192, offset: 448)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !371, line: 41, baseType: !372)
!371 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !371, line: 37, size: 192, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !372, file: !371, line: 38, baseType: !13, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !372, file: !371, line: 39, baseType: !132, size: 128, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !344, file: !345, line: 69, baseType: !281, size: 128, align: 64, offset: 640)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !344, file: !345, line: 70, baseType: !378, offset: 768)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, elements: !385)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !345, line: 54, size: 128, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !379, file: !345, line: 55, baseType: !11, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !379, file: !345, line: 56, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !345, line: 56, flags: DIFlagFwdDecl)
!385 = !{!386}
!386 = !DISubrange(count: -1)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !317, file: !117, line: 951, baseType: !388, size: 32, offset: 128)
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !345, line: 9, baseType: !66, size: 32, elements: !389)
!389 = !{!390, !391, !392, !393, !394}
!390 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!391 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!392 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!393 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!394 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !317, file: !117, line: 952, baseType: !123, size: 32, offset: 160)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !317, file: !117, line: 952, baseType: !123, size: 32, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !317, file: !117, line: 953, baseType: !11, size: 32, offset: 224)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !269, file: !117, line: 1012, baseType: !399, size: 64, offset: 896)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !402, line: 110, size: 1472, elements: !403)
!402 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !419, !420, !421, !422, !423, !424, !551, !552, !553, !554, !555, !586, !589, !593, !601}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !401, file: !402, line: 111, baseType: !294, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !401, file: !402, line: 112, baseType: !123, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !401, file: !402, line: 113, baseType: !138, size: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !401, file: !402, line: 114, baseType: !123, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !401, file: !402, line: 115, baseType: !138, size: 32, offset: 160)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !401, file: !402, line: 116, baseType: !123, size: 32, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !401, file: !402, line: 117, baseType: !138, size: 32, offset: 224)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !401, file: !402, line: 118, baseType: !123, size: 32, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !401, file: !402, line: 119, baseType: !138, size: 32, offset: 288)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !401, file: !402, line: 120, baseType: !66, size: 32, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !401, file: !402, line: 121, baseType: !415, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !181, line: 24, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 24, size: 64, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !416, file: !181, line: 24, baseType: !108, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !401, file: !402, line: 122, baseType: !415, size: 64, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !401, file: !402, line: 123, baseType: !415, size: 64, offset: 512)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !401, file: !402, line: 124, baseType: !415, size: 64, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !401, file: !402, line: 125, baseType: !415, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !401, file: !402, line: 127, baseType: !46, size: 8, offset: 704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !401, file: !402, line: 129, baseType: !425, size: 64, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !427, line: 195, size: 1728, elements: !428)
!427 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!428 = !{!429, !430, !435, !448, !457, !460, !461, !466, !467, !468, !469, !472, !473, !474, !476, !477, !515, !536}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !426, file: !427, line: 196, baseType: !348, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !426, file: !427, line: 197, baseType: !431, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !427, line: 28, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !34, line: 104, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !43, line: 20, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !45, line: 26, baseType: !11)
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !427, line: 198, baseType: !436, size: 192, offset: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !427, line: 198, size: 192, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !436, file: !427, line: 199, baseType: !132, size: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !436, file: !427, line: 200, baseType: !440, size: 192, align: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !441, line: 5, size: 192, align: 64, elements: !442)
!441 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!442 = !{!443, !445, !447}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !440, file: !441, line: 6, baseType: !444, size: 64)
!444 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !440, file: !441, line: 7, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !440, file: !441, line: 8, baseType: !446, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !426, file: !427, line: 205, baseType: !449, size: 320, offset: 256)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !450, line: 48, size: 320, elements: !451)
!450 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!451 = !{!452, !453, !454, !455, !456}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !449, file: !450, line: 49, baseType: !294, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !449, file: !450, line: 55, baseType: !294, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !449, file: !450, line: 57, baseType: !309, size: 32, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !449, file: !450, line: 59, baseType: !307, size: 32, offset: 160)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !449, file: !450, line: 60, baseType: !132, size: 128, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !426, file: !427, line: 206, baseType: !458, size: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !427, line: 206, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !426, file: !427, line: 207, baseType: !173, size: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !427, line: 208, baseType: !462, size: 64, offset: 704)
!462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !427, line: 208, size: 64, elements: !463)
!463 = !{!464, !465}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !462, file: !427, line: 209, baseType: !261, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !462, file: !427, line: 210, baseType: !261, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !426, file: !427, line: 212, baseType: !261, size: 64, offset: 768)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !426, file: !427, line: 213, baseType: !123, size: 32, offset: 832)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !426, file: !427, line: 214, baseType: !138, size: 32, offset: 864)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !426, file: !427, line: 215, baseType: !470, size: 32, offset: 896)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !427, line: 31, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 110, baseType: !104)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !426, file: !427, line: 216, baseType: !54, size: 16, offset: 928)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !426, file: !427, line: 217, baseType: !54, size: 16, offset: 944)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !426, file: !427, line: 221, baseType: !475, size: 16, offset: 960)
!475 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !427, line: 228, baseType: !444, size: 64, offset: 1024)
!477 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !427, line: 245, baseType: !478, size: 320, offset: 1088)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !427, line: 245, size: 320, elements: !479)
!479 = !{!480, !507}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !478, file: !427, line: 246, baseType: !481, size: 320)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !427, line: 114, size: 320, elements: !482)
!482 = !{!483, !484, !496, !499, !506}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !481, file: !427, line: 116, baseType: !444, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !427, line: 117, baseType: !485, size: 64, offset: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !427, line: 117, size: 64, elements: !486)
!486 = !{!487, !495}
!487 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !427, line: 118, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !427, line: 118, size: 64, elements: !489)
!489 = !{!490, !491}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !488, file: !427, line: 120, baseType: !52, size: 16)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !488, file: !427, line: 121, baseType: !492, size: 48, offset: 16)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 48, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 6)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !485, file: !427, line: 127, baseType: !444, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !481, file: !427, line: 129, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !427, line: 102, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !481, file: !427, line: 130, baseType: !500, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !427, line: 108, size: 192, elements: !502)
!502 = !{!503, !504, !505}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !501, file: !427, line: 109, baseType: !281, size: 128, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !501, file: !427, line: 110, baseType: !348, size: 32, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !501, file: !427, line: 111, baseType: !186, size: 8, offset: 160)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !481, file: !427, line: 131, baseType: !162, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !427, line: 247, baseType: !508, size: 320)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !478, file: !427, line: 247, size: 320, elements: !509)
!509 = !{!510, !511, !512, !513, !514}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !508, file: !427, line: 248, baseType: !444, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !508, file: !427, line: 249, baseType: !444, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !508, file: !427, line: 250, baseType: !497, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !508, file: !427, line: 251, baseType: !500, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !508, file: !427, line: 252, baseType: !192, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !427, line: 260, baseType: !516, size: 256, offset: 1408)
!516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !427, line: 260, size: 256, elements: !517)
!517 = !{!518, !524}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !516, file: !427, line: 261, baseType: !519, size: 256)
!519 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !427, line: 134, size: 256, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !519, file: !427, line: 135, baseType: !173, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !519, file: !427, line: 136, baseType: !523, size: 256)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 256, elements: !366)
!524 = !DIDerivedType(tag: DW_TAG_member, scope: !516, file: !427, line: 262, baseType: !525, size: 256)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !516, file: !427, line: 262, size: 256, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !525, file: !427, line: 264, baseType: !132, size: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !525, file: !427, line: 265, baseType: !529, size: 128, offset: 128)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !530, line: 22, size: 128, elements: !531)
!530 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!531 = !{!532, !535}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !529, file: !530, line: 23, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !530, line: 23, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !529, file: !530, line: 24, baseType: !444, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !426, file: !427, line: 280, baseType: !537, size: 64, offset: 1664)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !427, line: 176, size: 192, elements: !539)
!539 = !{!540, !549, !550}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !538, file: !427, line: 177, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !427, line: 171, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!11, !425, !545, !547, !425}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !538, file: !427, line: 178, baseType: !425, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !538, file: !427, line: 179, baseType: !497, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !401, file: !402, line: 130, baseType: !425, size: 64, offset: 832)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !401, file: !402, line: 131, baseType: !425, size: 64, offset: 896)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !401, file: !402, line: 132, baseType: !425, size: 64, offset: 960)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !401, file: !402, line: 135, baseType: !173, size: 64, offset: 1024)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !401, file: !402, line: 137, baseType: !556, size: 64, offset: 1088)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !558, line: 14, size: 1088, elements: !559)
!558 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!559 = !{!560, !561, !570, !571, !572, !573, !574, !575}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !557, file: !558, line: 15, baseType: !348, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !557, file: !558, line: 17, baseType: !562, size: 320, offset: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !563, line: 22, size: 320, elements: !564)
!563 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!564 = !{!565, !566, !567, !568}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !562, file: !563, line: 23, baseType: !307, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !562, file: !563, line: 24, baseType: !300, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !562, file: !563, line: 26, baseType: !132, size: 128, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !562, file: !563, line: 28, baseType: !569, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !557, file: !558, line: 19, baseType: !444, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !557, file: !558, line: 20, baseType: !294, size: 64, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !557, file: !558, line: 23, baseType: !361, size: 128, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !557, file: !558, line: 24, baseType: !123, size: 32, offset: 640)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !557, file: !558, line: 29, baseType: !294, size: 64, offset: 704)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !557, file: !558, line: 36, baseType: !576, size: 320, offset: 768)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !577, line: 15, size: 320, elements: !578)
!577 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!578 = !{!579, !580, !581, !582, !583, !584, !585}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !576, file: !577, line: 16, baseType: !307, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !576, file: !577, line: 18, baseType: !11, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !576, file: !577, line: 19, baseType: !11, size: 32, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !576, file: !577, line: 20, baseType: !11, size: 32, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !576, file: !577, line: 21, baseType: !11, size: 32, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !576, file: !577, line: 22, baseType: !444, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !577, line: 23, baseType: !444, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !401, file: !402, line: 138, baseType: !587, size: 64, offset: 1152)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !124, line: 18, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !401, file: !402, line: 139, baseType: !590, size: 64, offset: 1216)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !592, line: 16, flags: DIFlagFwdDecl)
!592 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!593 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !401, file: !402, line: 140, baseType: !594, size: 64, offset: 1280)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !402, line: 25, size: 64, elements: !596)
!596 = !{!597, !598, !599}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !595, file: !402, line: 26, baseType: !33, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !595, file: !402, line: 27, baseType: !11, size: 32, offset: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !595, file: !402, line: 28, baseType: !600, offset: 64)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, elements: !385)
!601 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !402, line: 142, baseType: !602, size: 128, offset: 1344)
!602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !402, line: 142, size: 128, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !602, file: !402, line: 143, baseType: !11, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !602, file: !402, line: 144, baseType: !281, size: 128, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !269, file: !117, line: 1013, baseType: !607, size: 256, offset: 960)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !117, line: 970, size: 256, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !607, file: !117, line: 971, baseType: !444, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !607, file: !117, line: 972, baseType: !66, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !607, file: !117, line: 973, baseType: !66, size: 32, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !607, file: !117, line: 974, baseType: !66, size: 32, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !607, file: !117, line: 975, baseType: !66, size: 32, offset: 160)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !607, file: !117, line: 976, baseType: !253, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !269, file: !117, line: 1014, baseType: !70, size: 128, offset: 1216)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !269, file: !117, line: 1015, baseType: !115, size: 64, offset: 1344)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !269, file: !117, line: 1016, baseType: !618, size: 64, offset: 1408)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !117, line: 1914, size: 2112, elements: !621)
!621 = !{!622, !626, !630, !641, !645, !673, !674, !680, !693, !701, !705, !706, !913, !914, !918, !923, !924, !928, !932, !938, !939, !943, !944, !950, !954, !958, !964, !968, !975, !979, !983, !984, !990}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !620, file: !117, line: 1915, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !625, line: 103, flags: DIFlagFwdDecl)
!625 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!626 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !620, file: !117, line: 1916, baseType: !627, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!253, !268, !253, !11}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !620, file: !117, line: 1917, baseType: !631, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!634, !268, !192, !637, !640}
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !34, line: 66, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !130, line: 73, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !130, line: 15, baseType: !264)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 61, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !130, line: 72, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !130, line: 16, baseType: !444)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !620, file: !117, line: 1918, baseType: !642, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!634, !268, !162, !637, !640}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !620, file: !117, line: 1919, baseType: !646, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!634, !649, !671}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !117, line: 373, size: 384, elements: !651)
!651 = !{!652, !653, !654, !658, !659, !660, !661}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !650, file: !117, line: 374, baseType: !268, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !650, file: !117, line: 375, baseType: !253, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !650, file: !117, line: 376, baseType: !655, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !649, !264}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !650, file: !117, line: 377, baseType: !173, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !650, file: !117, line: 378, baseType: !11, size: 32, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !650, file: !117, line: 379, baseType: !52, size: 16, offset: 288)
!661 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !117, line: 380, baseType: !662, size: 64, offset: 320)
!662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !117, line: 380, size: 64, elements: !663)
!663 = !{!664, !667}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !662, file: !117, line: 386, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !117, line: 386, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !662, file: !117, line: 395, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!634, !173}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !117, line: 69, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !620, file: !117, line: 1920, baseType: !646, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !620, file: !117, line: 1921, baseType: !675, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!11, !649, !678, !66}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !117, line: 53, flags: DIFlagFwdDecl)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !620, file: !117, line: 1923, baseType: !681, size: 64, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!11, !268, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !117, line: 1858, size: 128, elements: !686)
!686 = !{!687, !692}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !685, file: !117, line: 1859, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !117, line: 1855, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!186, !684, !162, !11, !253, !108, !66}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !685, file: !117, line: 1860, baseType: !253, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !620, file: !117, line: 1924, baseType: !694, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!697, !268, !699}
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !698, line: 59, baseType: !66)
!698 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !117, line: 61, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !620, file: !117, line: 1925, baseType: !702, size: 64, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!264, !268, !66, !444}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !620, file: !117, line: 1926, baseType: !702, size: 64, offset: 640)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !620, file: !117, line: 1927, baseType: !707, size: 64, offset: 704)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!11, !268, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !712, line: 625, size: 1344, elements: !713)
!712 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!713 = !{!714, !723, !870, !876, !883, !884, !889, !890, !895, !896, !899, !903, !904, !905, !906, !907, !911}
!714 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !712, line: 628, baseType: !715, size: 128)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !712, line: 628, size: 128, elements: !716)
!716 = !{!717, !722}
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !712, line: 629, baseType: !718, size: 128)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !715, file: !712, line: 629, size: 128, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !718, file: !712, line: 631, baseType: !444, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !718, file: !712, line: 632, baseType: !444, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !715, file: !712, line: 635, baseType: !281, size: 128, align: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !711, file: !712, line: 639, baseType: !724, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !712, line: 733, size: 10240, elements: !726)
!726 = !{!727, !868}
!727 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !712, line: 734, baseType: !728, size: 10240)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !725, file: !712, line: 734, size: 10240, elements: !729)
!729 = !{!730, !734, !748, !752, !753, !754, !755, !756, !757, !766, !767, !768, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !807, !809, !812, !836, !837, !838, !841, !842, !843, !846, !847, !848, !855, !856}
!730 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !712, line: 739, baseType: !731, size: 512, align: 512)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !712, line: 739, size: 512, align: 512, elements: !732)
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !731, file: !712, line: 747, baseType: !33, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !728, file: !712, line: 750, baseType: !735, size: 128, offset: 512)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !736, line: 218, size: 128, elements: !737)
!736 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!737 = !{!738, !746, !747}
!738 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !736, line: 219, baseType: !739, size: 32)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !735, file: !736, line: 219, size: 32, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !739, file: !736, line: 220, baseType: !13, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !739, file: !736, line: 221, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !736, line: 197, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !736, line: 197, elements: !745)
!745 = !{}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !735, file: !736, line: 223, baseType: !66, size: 32, offset: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !735, file: !736, line: 224, baseType: !173, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !728, file: !712, line: 752, baseType: !749, size: 64, offset: 640)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!444, !268, !444, !444, !444, !444}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !728, file: !712, line: 756, baseType: !444, size: 64, offset: 704)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !728, file: !712, line: 757, baseType: !444, size: 64, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !728, file: !712, line: 760, baseType: !444, size: 64, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !728, file: !712, line: 761, baseType: !444, size: 64, offset: 896)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !728, file: !712, line: 763, baseType: !444, size: 64, offset: 960)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !728, file: !712, line: 764, baseType: !758, size: 64, offset: 1024)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !760, line: 299, baseType: !761)
!760 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !760, line: 299, size: 64, elements: !762)
!762 = !{!763}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !761, file: !760, line: 299, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !765, line: 18, baseType: !444)
!765 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!766 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !728, file: !712, line: 773, baseType: !33, size: 32, offset: 1088)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !728, file: !712, line: 785, baseType: !33, size: 32, offset: 1120)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !728, file: !712, line: 795, baseType: !769, size: 64, offset: 1152)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !712, line: 726, size: 128, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !770, file: !712, line: 727, baseType: !108, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !770, file: !712, line: 728, baseType: !11, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !728, file: !712, line: 801, baseType: !444, size: 64, offset: 1216)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !728, file: !712, line: 804, baseType: !294, size: 64, offset: 1280)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !728, file: !712, line: 806, baseType: !11, size: 32, offset: 1344)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !728, file: !712, line: 808, baseType: !13, size: 32, offset: 1376)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !728, file: !712, line: 823, baseType: !449, size: 320, offset: 1408)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !728, file: !712, line: 825, baseType: !132, size: 128, offset: 1728)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !728, file: !712, line: 845, baseType: !11, size: 32, offset: 1856)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !728, file: !712, line: 849, baseType: !444, size: 64, offset: 1920)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !728, file: !712, line: 850, baseType: !444, size: 64, offset: 1984)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !728, file: !712, line: 852, baseType: !444, size: 64, offset: 2048)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !728, file: !712, line: 853, baseType: !444, size: 64, offset: 2112)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !728, file: !712, line: 854, baseType: !296, size: 64, offset: 2176)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !728, file: !712, line: 855, baseType: !444, size: 64, offset: 2240)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !728, file: !712, line: 856, baseType: !444, size: 64, offset: 2304)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !728, file: !712, line: 857, baseType: !444, size: 64, offset: 2368)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !728, file: !712, line: 858, baseType: !444, size: 64, offset: 2432)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !728, file: !712, line: 865, baseType: !62, size: 32, offset: 2496)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !728, file: !712, line: 867, baseType: !13, size: 32, offset: 2528)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !728, file: !712, line: 869, baseType: !444, size: 64, offset: 2560)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !728, file: !712, line: 869, baseType: !444, size: 64, offset: 2624)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !728, file: !712, line: 869, baseType: !444, size: 64, offset: 2688)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !728, file: !712, line: 869, baseType: !444, size: 64, offset: 2752)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !728, file: !712, line: 870, baseType: !444, size: 64, offset: 2816)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !728, file: !712, line: 870, baseType: !444, size: 64, offset: 2880)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !728, file: !712, line: 870, baseType: !444, size: 64, offset: 2944)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !728, file: !712, line: 871, baseType: !444, size: 64, offset: 3008)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !728, file: !712, line: 871, baseType: !444, size: 64, offset: 3072)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !728, file: !712, line: 871, baseType: !444, size: 64, offset: 3136)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !728, file: !712, line: 871, baseType: !444, size: 64, offset: 3200)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !728, file: !712, line: 873, baseType: !804, size: 3328, offset: 3264)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 3328, elements: !805)
!805 = !{!806}
!806 = !DISubrange(count: 52)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !728, file: !712, line: 875, baseType: !808, size: 1280, offset: 6592)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 1280, elements: !366)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !728, file: !712, line: 877, baseType: !810, size: 64, offset: 7872)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !712, line: 877, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !728, file: !712, line: 880, baseType: !813, size: 1088, offset: 7936)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !814, line: 72, baseType: !815)
!814 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !814, line: 23, size: 1088, elements: !816)
!816 = !{!817, !818, !819, !820, !821, !824, !825, !826, !827, !831, !832, !833}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !815, file: !814, line: 28, baseType: !108, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !815, file: !814, line: 38, baseType: !296, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !815, file: !814, line: 40, baseType: !444, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !815, file: !814, line: 43, baseType: !449, size: 320, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !815, file: !814, line: 44, baseType: !822, size: 64, offset: 512)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !814, line: 44, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !815, file: !814, line: 48, baseType: !444, size: 64, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !815, file: !814, line: 59, baseType: !302, size: 256, offset: 640)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !815, file: !814, line: 60, baseType: !173, size: 64, offset: 896)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !815, file: !814, line: 61, baseType: !828, size: 64, offset: 960)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !814, line: 61, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !815, file: !814, line: 63, baseType: !33, size: 32, offset: 1024)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !815, file: !814, line: 69, baseType: !52, size: 16, offset: 1056)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !815, file: !814, line: 70, baseType: !834, size: 16, offset: 1072)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !43, line: 18, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !45, line: 23, baseType: !475)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !712, line: 882, baseType: !444, size: 64, offset: 9024)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !728, file: !712, line: 885, baseType: !13, size: 32, offset: 9088)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !728, file: !712, line: 886, baseType: !839, size: 64, offset: 9152)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !712, line: 732, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !728, file: !712, line: 901, baseType: !587, size: 64, offset: 9216)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !728, file: !712, line: 904, baseType: !268, size: 64, offset: 9280)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !728, file: !712, line: 906, baseType: !844, size: 64, offset: 9344)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !712, line: 906, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !728, file: !712, line: 930, baseType: !33, size: 32, offset: 9408)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !728, file: !712, line: 933, baseType: !33, size: 32, offset: 9440)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !728, file: !712, line: 935, baseType: !849, size: 64, offset: 9472)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !850, line: 103, size: 64, elements: !851)
!850 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !849, file: !850, line: 104, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !850, line: 101, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !728, file: !712, line: 940, baseType: !294, size: 64, offset: 9536)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !728, file: !712, line: 942, baseType: !857, size: 256, offset: 9600)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !858, line: 98, size: 256, elements: !859)
!858 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !857, file: !858, line: 99, baseType: !294, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !857, file: !858, line: 100, baseType: !132, size: 128, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !857, file: !858, line: 101, baseType: !863, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !858, line: 21, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !867}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !725, file: !712, line: 986, baseType: !869, offset: 10240)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, elements: !385)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !711, file: !712, line: 640, baseType: !871, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !760, line: 297, baseType: !872)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !760, line: 297, size: 64, elements: !873)
!873 = !{!874}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !872, file: !760, line: 297, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !765, line: 19, baseType: !444)
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !712, line: 646, baseType: !877, size: 64, offset: 256)
!877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !712, line: 646, size: 64, elements: !878)
!878 = !{!879, !882}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !877, file: !712, line: 647, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !712, line: 542, baseType: !444)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !877, file: !712, line: 648, baseType: !881, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !711, file: !712, line: 666, baseType: !11, size: 32, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !711, file: !712, line: 667, baseType: !885, size: 64, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !712, line: 579, size: 320, elements: !887)
!887 = !{!888}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !886, file: !712, line: 580, baseType: !449, size: 320)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !711, file: !712, line: 670, baseType: !186, size: 8, offset: 448)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !711, file: !712, line: 681, baseType: !891, size: 256, offset: 512)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !712, line: 678, size: 256, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !891, file: !712, line: 679, baseType: !440, size: 192, align: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !891, file: !712, line: 680, baseType: !444, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !711, file: !712, line: 689, baseType: !132, size: 128, offset: 768)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !711, file: !712, line: 691, baseType: !897, size: 64, offset: 896)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !712, line: 691, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !711, file: !712, line: 694, baseType: !900, size: 64, offset: 960)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !902)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !712, line: 694, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !711, file: !712, line: 697, baseType: !444, size: 64, offset: 1024)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !711, file: !712, line: 699, baseType: !268, size: 64, offset: 1088)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !711, file: !712, line: 700, baseType: !173, size: 64, offset: 1152)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !711, file: !712, line: 711, baseType: !294, size: 64, offset: 1216)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !711, file: !712, line: 717, baseType: !908, size: 64, offset: 1280)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !910, line: 54, flags: DIFlagFwdDecl)
!910 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!911 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !711, file: !712, line: 722, baseType: !912, offset: 1344)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !712, line: 570, elements: !745)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !620, file: !117, line: 1928, baseType: !444, size: 64, offset: 768)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !620, file: !117, line: 1929, baseType: !915, size: 64, offset: 832)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!11, !115, !268}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !620, file: !117, line: 1930, baseType: !919, size: 64, offset: 896)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!11, !268, !922}
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !117, line: 1061, baseType: !173)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !620, file: !117, line: 1931, baseType: !915, size: 64, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !620, file: !117, line: 1932, baseType: !925, size: 64, offset: 1024)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!11, !268, !253, !253, !11}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !620, file: !117, line: 1933, baseType: !929, size: 64, offset: 1088)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!11, !11, !268, !11}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !620, file: !117, line: 1934, baseType: !933, size: 64, offset: 1152)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!11, !268, !11, !936}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !117, line: 1063, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !620, file: !117, line: 1935, baseType: !749, size: 64, offset: 1216)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !620, file: !117, line: 1936, baseType: !940, size: 64, offset: 1280)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!11, !11}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !620, file: !117, line: 1937, baseType: !933, size: 64, offset: 1344)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !620, file: !117, line: 1938, baseType: !945, size: 64, offset: 1408)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!634, !948, !268, !640, !637, !66}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !910, line: 59, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !620, file: !117, line: 1939, baseType: !951, size: 64, offset: 1472)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!634, !268, !640, !948, !637, !66}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !620, file: !117, line: 1940, baseType: !955, size: 64, offset: 1536)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !268}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !620, file: !117, line: 1941, baseType: !959, size: 64, offset: 1600)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!11, !268, !11, !962, !963}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !620, file: !117, line: 1942, baseType: !965, size: 64, offset: 1664)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!264, !268, !11, !253, !253}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !620, file: !117, line: 1944, baseType: !969, size: 64, offset: 1728)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !972, !268}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !974, line: 474, flags: DIFlagFwdDecl)
!974 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!975 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !620, file: !117, line: 1948, baseType: !976, size: 64, offset: 1792)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!634, !268, !253, !268, !253, !637, !66}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !620, file: !117, line: 1950, baseType: !980, size: 64, offset: 1856)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!253, !268, !253, !268, !253, !253, !66}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !620, file: !117, line: 1953, baseType: !925, size: 64, offset: 1920)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !620, file: !117, line: 1954, baseType: !985, size: 64, offset: 1984)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!11, !988, !66}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !117, line: 1911, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !620, file: !117, line: 1955, baseType: !991, size: 64, offset: 2048)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!11, !988, !678, !66}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !269, file: !117, line: 1018, baseType: !108, size: 64, offset: 1472)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !269, file: !117, line: 1020, baseType: !173, size: 64, offset: 1536)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !269, file: !117, line: 1023, baseType: !173, size: 64, offset: 1600)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !269, file: !117, line: 1027, baseType: !998, size: 64, offset: 1664)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !269, file: !117, line: 1029, baseType: !1000, size: 64, offset: 1728)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !117, line: 472, size: 1536, align: 64, elements: !1002)
!1002 = !{!1003, !1004, !1012, !1013, !1014, !1015, !1023, !1024, !1025, !1247, !1248, !1249, !1252, !1253, !1254}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1001, file: !117, line: 473, baseType: !115, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1001, file: !117, line: 474, baseType: !1005, size: 128, offset: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1006, line: 296, size: 128, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1007 = !{!1008, !1009, !1011}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1005, file: !1006, line: 297, baseType: !13, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1005, file: !1006, line: 299, baseType: !1010, size: 32, offset: 32)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !34, line: 154, baseType: !66)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1005, file: !1006, line: 300, baseType: !173, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1001, file: !117, line: 475, baseType: !449, size: 320, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1001, file: !117, line: 476, baseType: !1010, size: 32, offset: 512)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1001, file: !117, line: 477, baseType: !33, size: 32, offset: 544)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1001, file: !117, line: 482, baseType: !1016, size: 128, offset: 576)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !441, line: 26, size: 128, elements: !1017)
!1017 = !{!1018, !1022}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1016, file: !441, line: 27, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !441, line: 12, size: 64, elements: !1020)
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1019, file: !441, line: 13, baseType: !446, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1016, file: !441, line: 28, baseType: !446, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1001, file: !117, line: 483, baseType: !444, size: 64, offset: 704)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1001, file: !117, line: 484, baseType: !444, size: 64, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1001, file: !117, line: 485, baseType: !1026, size: 64, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !117, line: 404, size: 1280, elements: !1029)
!1029 = !{!1030, !1096, !1166, !1170, !1174, !1180, !1185, !1189, !1194, !1198, !1202, !1206, !1207, !1218, !1222, !1226, !1231, !1235, !1242, !1243}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1028, file: !117, line: 405, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!11, !1034, !1094}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !712, line: 74, size: 512, align: 128, elements: !1036)
!1036 = !{!1037, !1038, !1088, !1093}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1035, file: !712, line: 75, baseType: !444, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !712, line: 83, baseType: !1039, size: 320, offset: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !712, line: 83, size: 320, elements: !1040)
!1040 = !{!1041, !1062, !1076, !1080, !1087}
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !712, line: 84, baseType: !1042, size: 320)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !712, line: 84, size: 320, elements: !1043)
!1043 = !{!1044, !1055, !1056, !1061}
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !712, line: 90, baseType: !1045, size: 128)
!1045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !712, line: 90, size: 128, elements: !1046)
!1046 = !{!1047, !1048, !1053, !1054}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1045, file: !712, line: 91, baseType: !132, size: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !712, line: 94, baseType: !1049, size: 128)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1045, file: !712, line: 94, size: 128, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1049, file: !712, line: 96, baseType: !173, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1049, file: !712, line: 98, baseType: !66, size: 32, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1045, file: !712, line: 102, baseType: !132, size: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1045, file: !712, line: 103, baseType: !132, size: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1042, file: !712, line: 106, baseType: !1000, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !712, line: 107, baseType: !1057, size: 64, offset: 192)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !712, line: 107, size: 64, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1057, file: !712, line: 108, baseType: !444, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1057, file: !712, line: 109, baseType: !444, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1042, file: !712, line: 117, baseType: !444, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !712, line: 119, baseType: !1063, size: 320)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !712, line: 119, size: 320, elements: !1064)
!1064 = !{!1065, !1066, !1069, !1070, !1071}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1063, file: !712, line: 124, baseType: !444, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1063, file: !712, line: 125, baseType: !1067, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !712, line: 125, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1063, file: !712, line: 126, baseType: !444, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1063, file: !712, line: 127, baseType: !444, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1063, file: !712, line: 128, baseType: !1072, size: 64, offset: 256)
!1072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1063, file: !712, line: 128, size: 64, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1072, file: !712, line: 133, baseType: !444, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1072, file: !712, line: 138, baseType: !294, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !712, line: 141, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !712, line: 141, size: 64, elements: !1078)
!1078 = !{!1079}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1077, file: !712, line: 142, baseType: !444, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !712, line: 144, baseType: !1081, size: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !712, line: 144, size: 128, elements: !1082)
!1082 = !{!1083, !1086}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1081, file: !712, line: 146, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !712, line: 146, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1081, file: !712, line: 147, baseType: !173, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1039, file: !712, line: 161, baseType: !281, size: 128, align: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !712, line: 164, baseType: !1089, size: 32, offset: 384)
!1089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !712, line: 164, size: 32, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1089, file: !712, line: 169, baseType: !33, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1089, file: !712, line: 177, baseType: !66, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1035, file: !712, line: 181, baseType: !33, size: 32, offset: 416)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !117, line: 309, flags: DIFlagFwdDecl)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1028, file: !117, line: 406, baseType: !1097, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!11, !268, !1100}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !712, line: 293, size: 1536, elements: !1102)
!1102 = !{!1103, !1133, !1147}
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !712, line: 295, baseType: !1104, size: 512)
!1104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !712, line: 295, size: 512, elements: !1105)
!1105 = !{!1106, !1132}
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1104, file: !712, line: 296, baseType: !1107, size: 448)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1104, file: !712, line: 296, size: 448, elements: !1108)
!1108 = !{!1109, !1110, !1119, !1120, !1121, !1130, !1131}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1107, file: !712, line: 298, baseType: !444, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !712, line: 299, baseType: !1111, size: 128, offset: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1107, file: !712, line: 299, size: 128, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1111, file: !712, line: 300, baseType: !132, size: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !712, line: 302, baseType: !1115, size: 128)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1111, file: !712, line: 302, size: 128, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1115, file: !712, line: 303, baseType: !173, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1115, file: !712, line: 305, baseType: !66, size: 32, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1107, file: !712, line: 310, baseType: !1000, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1107, file: !712, line: 311, baseType: !444, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !712, line: 312, baseType: !1122, size: 64, offset: 320)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1107, file: !712, line: 312, size: 64, elements: !1123)
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1122, file: !712, line: 313, baseType: !173, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1122, file: !712, line: 314, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !712, line: 257, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !712, line: 255, size: 64, elements: !1128)
!1128 = !{!1129}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1127, file: !712, line: 256, baseType: !444, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1107, file: !712, line: 316, baseType: !33, size: 32, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1107, file: !712, line: 317, baseType: !33, size: 32, offset: 416)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1104, file: !712, line: 323, baseType: !1035, size: 512, align: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !712, line: 325, baseType: !1134, size: 512, offset: 512)
!1134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !712, line: 325, size: 512, elements: !1135)
!1135 = !{!1136, !1146}
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1134, file: !712, line: 326, baseType: !1137, size: 320)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1134, file: !712, line: 326, size: 320, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1144, !1145}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1137, file: !712, line: 327, baseType: !444, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1137, file: !712, line: 328, baseType: !444, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1137, file: !712, line: 329, baseType: !444, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1137, file: !712, line: 331, baseType: !33, size: 32, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1137, file: !712, line: 332, baseType: !33, size: 32, offset: 224)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1137, file: !712, line: 333, baseType: !33, size: 32, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1137, file: !712, line: 335, baseType: !66, size: 32, offset: 288)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1134, file: !712, line: 339, baseType: !1035, size: 512, align: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !712, line: 341, baseType: !1148, size: 512, offset: 1024)
!1148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !712, line: 341, size: 512, elements: !1149)
!1149 = !{!1150, !1159, !1165}
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !1148, file: !712, line: 342, baseType: !1151, size: 384)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1148, file: !712, line: 342, size: 384, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1151, file: !712, line: 343, baseType: !444, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1151, file: !712, line: 344, baseType: !444, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1151, file: !712, line: 346, baseType: !173, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1151, file: !712, line: 347, baseType: !173, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1151, file: !712, line: 348, baseType: !173, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1151, file: !712, line: 349, baseType: !173, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1148, file: !712, line: 352, baseType: !1160, size: 256)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1148, file: !712, line: 352, size: 256, elements: !1161)
!1161 = !{!1162, !1163, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1160, file: !712, line: 353, baseType: !444, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1160, file: !712, line: 354, baseType: !444, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1160, file: !712, line: 356, baseType: !132, size: 128, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1148, file: !712, line: 359, baseType: !1035, size: 512, align: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1028, file: !117, line: 409, baseType: !1167, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!11, !1000, !1094}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1028, file: !117, line: 412, baseType: !1171, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!186, !1000, !1100}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1028, file: !117, line: 414, baseType: !1175, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !1178}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !117, line: 310, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1028, file: !117, line: 416, baseType: !1181, size: 64, offset: 320)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!11, !268, !1000, !253, !66, !1184, !963}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1028, file: !117, line: 419, baseType: !1186, size: 64, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!11, !268, !1000, !253, !66, !66, !1034, !173}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1028, file: !117, line: 424, baseType: !1190, size: 64, offset: 448)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1193, !1000, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !34, line: 131, baseType: !108)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1028, file: !117, line: 425, baseType: !1195, size: 64, offset: 512)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !1100, !637, !637}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1028, file: !117, line: 426, baseType: !1199, size: 64, offset: 576)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!186, !1100, !1010}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1028, file: !117, line: 427, baseType: !1203, size: 64, offset: 640)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !1100}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1028, file: !117, line: 428, baseType: !646, size: 64, offset: 704)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1028, file: !117, line: 433, baseType: !1208, size: 64, offset: 768)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!11, !1000, !1100, !1100, !1211}
!1211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1212, line: 15, baseType: !66, size: 32, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1213 = !{!1214, !1215, !1216, !1217}
!1214 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1215 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1216 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1217 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1028, file: !117, line: 435, baseType: !1219, size: 64, offset: 832)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!11, !1100}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1028, file: !117, line: 436, baseType: !1223, size: 64, offset: 896)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!186, !1100, !637, !637}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1028, file: !117, line: 438, baseType: !1227, size: 64, offset: 960)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !1100, !1230, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1028, file: !117, line: 439, baseType: !1232, size: 64, offset: 1024)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!11, !1000, !1034}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1028, file: !117, line: 442, baseType: !1236, size: 64, offset: 1088)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!11, !1239, !268, !1241}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !117, line: 66, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1028, file: !117, line: 444, baseType: !955, size: 64, offset: 1152)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1028, file: !117, line: 445, baseType: !1244, size: 64, offset: 1216)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!11, !649, !671}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !117, line: 486, baseType: !444, size: 64, offset: 896)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1001, file: !117, line: 487, baseType: !449, size: 320, offset: 960)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1001, file: !117, line: 488, baseType: !1250, size: 32, offset: 1280)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1251, line: 8, baseType: !104)
!1251 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1001, file: !117, line: 489, baseType: !13, size: 32, offset: 1312)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1001, file: !117, line: 490, baseType: !132, size: 128, offset: 1344)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1001, file: !117, line: 491, baseType: !173, size: 64, offset: 1472)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !269, file: !117, line: 1030, baseType: !1250, size: 32, offset: 1792)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !269, file: !117, line: 1031, baseType: !1250, size: 32, offset: 1824)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !152, file: !117, line: 1988, baseType: !1258, size: 64, offset: 896)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!11, !179, !1261, !1263, !104, !66}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1265, line: 22, size: 1280, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1264, file: !1265, line: 23, baseType: !104, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1264, file: !1265, line: 24, baseType: !120, size: 16, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1264, file: !1265, line: 25, baseType: !66, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1264, file: !1265, line: 26, baseType: !471, size: 32, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1264, file: !1265, line: 27, baseType: !108, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1264, file: !1265, line: 28, baseType: !108, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1264, file: !1265, line: 41, baseType: !108, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1264, file: !1265, line: 42, baseType: !218, size: 32, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1264, file: !1265, line: 43, baseType: !218, size: 32, offset: 352)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1264, file: !1265, line: 44, baseType: !123, size: 32, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1264, file: !1265, line: 45, baseType: !138, size: 32, offset: 416)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1264, file: !1265, line: 46, baseType: !253, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1264, file: !1265, line: 47, baseType: !257, size: 128, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1264, file: !1265, line: 48, baseType: !257, size: 128, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1264, file: !1265, line: 49, baseType: !257, size: 128, offset: 768)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1264, file: !1265, line: 50, baseType: !257, size: 128, offset: 896)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1264, file: !1265, line: 51, baseType: !108, size: 64, offset: 1024)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1264, file: !1265, line: 52, baseType: !108, size: 64, offset: 1088)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1264, file: !1265, line: 53, baseType: !104, size: 32, offset: 1152)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1264, file: !1265, line: 54, baseType: !104, size: 32, offset: 1184)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1264, file: !1265, line: 55, baseType: !108, size: 64, offset: 1216)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !152, file: !117, line: 1990, baseType: !1289, size: 64, offset: 960)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!634, !79, !192, !637}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !152, file: !117, line: 1991, baseType: !1293, size: 64, offset: 1024)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!11, !115, !1296, !108, !108}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !117, line: 55, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !152, file: !117, line: 1993, baseType: !1299, size: 64, offset: 1088)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!11, !115, !11}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !152, file: !117, line: 1994, baseType: !1303, size: 64, offset: 1152)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!11, !115, !79, !268, !66, !120}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !152, file: !117, line: 1997, baseType: !1307, size: 64, offset: 1216)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!11, !179, !115, !268, !120}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !152, file: !117, line: 1999, baseType: !1311, size: 64, offset: 1280)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!146, !179, !79, !11}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !152, file: !117, line: 2001, baseType: !1315, size: 64, offset: 1344)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!11, !179, !79, !146, !11}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !152, file: !117, line: 2003, baseType: !1319, size: 64, offset: 1408)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!11, !179, !79, !1322}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !117, line: 76, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !152, file: !117, line: 2005, baseType: !1325, size: 64, offset: 1472)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!11, !79, !1322}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !152, file: !117, line: 2006, baseType: !1329, size: 64, offset: 1536)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1332, !115}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !117, line: 3192, size: 192, elements: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1333, file: !117, line: 3193, baseType: !1005, size: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1333, file: !117, line: 3194, baseType: !104, size: 32, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !116, file: !117, line: 655, baseType: !1338, size: 64, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !117, line: 1190, size: 10752, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1384, !1527, !1567, !1650, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1667, !1671, !1672, !1675, !1678, !1681, !1684, !1685, !1686, !1727, !2971, !2972, !2973, !2974, !2975, !2976, !2979, !2981, !2988, !2989, !2990, !2991, !3050, !3065, !3066, !3067, !3068, !3069, !3072, !3073, !3074, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1339, file: !117, line: 1191, baseType: !132, size: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1339, file: !117, line: 1192, baseType: !218, size: 32, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1339, file: !117, line: 1193, baseType: !46, size: 8, offset: 160)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1339, file: !117, line: 1194, baseType: !444, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1339, file: !117, line: 1195, baseType: !253, size: 64, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1339, file: !117, line: 1196, baseType: !1347, size: 64, offset: 320)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !117, line: 2366, size: 576, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1358, !1362, !1366, !1370, !1371, !1372, !1373, !1376, !1377, !1378, !1380, !1381, !1382, !1383}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1348, file: !117, line: 2367, baseType: !162, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1348, file: !117, line: 2368, baseType: !11, size: 32, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1348, file: !117, line: 2376, baseType: !1353, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!11, !1356}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !76, line: 21, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1348, file: !117, line: 2377, baseType: !1359, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !117, line: 75, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1348, file: !117, line: 2378, baseType: !1363, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!79, !1347, !11, !162, !173}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1348, file: !117, line: 2380, baseType: !1367, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !1338}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1348, file: !117, line: 2381, baseType: !623, size: 64, offset: 384)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1348, file: !117, line: 2382, baseType: !1347, size: 64, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1348, file: !117, line: 2383, baseType: !357, size: 64, offset: 512)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1348, file: !117, line: 2385, baseType: !1374, offset: 576)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1375, line: 206, elements: !745)
!1375 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1348, file: !117, line: 2386, baseType: !1374, offset: 576)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1348, file: !117, line: 2387, baseType: !1374, offset: 576)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1348, file: !117, line: 2388, baseType: !1379, offset: 576)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, elements: !339)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1348, file: !117, line: 2390, baseType: !1374, offset: 576)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1348, file: !117, line: 2391, baseType: !1374, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1348, file: !117, line: 2392, baseType: !1374, offset: 576)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1348, file: !117, line: 2393, baseType: !1374, offset: 576)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1339, file: !117, line: 1197, baseType: !1385, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !117, line: 2057, size: 1664, elements: !1388)
!1388 = !{!1389, !1393, !1397, !1398, !1402, !1406, !1410, !1411, !1412, !1416, !1424, !1428, !1429, !1430, !1436, !1441, !1442, !1446, !1447, !1448, !1449, !1453, !1457, !1510, !1525, !1526}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1387, file: !117, line: 2058, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!115, !1338}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1387, file: !117, line: 2059, baseType: !1394, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !115}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1387, file: !117, line: 2060, baseType: !1394, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1387, file: !117, line: 2062, baseType: !1399, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !115, !11}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1387, file: !117, line: 2063, baseType: !1403, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!11, !115, !1094}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1387, file: !117, line: 2064, baseType: !1407, size: 64, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!11, !115}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1387, file: !117, line: 2065, baseType: !1394, size: 64, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1387, file: !117, line: 2066, baseType: !1367, size: 64, offset: 448)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1387, file: !117, line: 2067, baseType: !1413, size: 64, offset: 512)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!11, !1338, !11}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1387, file: !117, line: 2068, baseType: !1417, size: 64, offset: 576)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!11, !1338, !1420}
!1420 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !117, line: 2052, baseType: !66, size: 32, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!1423 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1387, file: !117, line: 2069, baseType: !1425, size: 64, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!11, !1338}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1387, file: !117, line: 2070, baseType: !1417, size: 64, offset: 704)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1387, file: !117, line: 2071, baseType: !1425, size: 64, offset: 768)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1387, file: !117, line: 2072, baseType: !1431, size: 64, offset: 832)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!11, !79, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !117, line: 62, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1387, file: !117, line: 2073, baseType: !1437, size: 64, offset: 896)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!11, !1338, !1440, !192}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1387, file: !117, line: 2074, baseType: !1367, size: 64, offset: 960)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1387, file: !117, line: 2076, baseType: !1443, size: 64, offset: 1024)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!11, !972, !79}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1387, file: !117, line: 2077, baseType: !1443, size: 64, offset: 1088)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1387, file: !117, line: 2078, baseType: !1443, size: 64, offset: 1152)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1387, file: !117, line: 2079, baseType: !1443, size: 64, offset: 1216)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1387, file: !117, line: 2081, baseType: !1450, size: 64, offset: 1280)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!634, !1338, !11, !192, !637, !253}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1387, file: !117, line: 2082, baseType: !1454, size: 64, offset: 1344)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!634, !1338, !11, !162, !637, !253}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1387, file: !117, line: 2083, baseType: !1458, size: 64, offset: 1408)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!1461, !115}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !1464, line: 296, size: 1664, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1495, !1496, !1497}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1463, file: !1464, line: 297, baseType: !361, size: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1463, file: !1464, line: 298, baseType: !132, size: 128, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1463, file: !1464, line: 299, baseType: !132, size: 128, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1463, file: !1464, line: 300, baseType: !132, size: 128, offset: 384)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1463, file: !1464, line: 301, baseType: !302, size: 256, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1463, file: !1464, line: 302, baseType: !13, size: 32, offset: 768)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1463, file: !1464, line: 303, baseType: !33, size: 32, offset: 800)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1463, file: !1464, line: 304, baseType: !1338, size: 64, offset: 832)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1463, file: !1464, line: 305, baseType: !1475, size: 64, offset: 896)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !1464, line: 68, size: 64, elements: !1476)
!1476 = !{!1477, !1489}
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1475, file: !1464, line: 69, baseType: !1478, size: 32)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1475, file: !1464, line: 69, size: 32, elements: !1479)
!1479 = !{!1480, !1481, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1478, file: !1464, line: 70, baseType: !123, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1478, file: !1464, line: 71, baseType: !138, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1478, file: !1464, line: 72, baseType: !1483, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1484, line: 24, baseType: !1485)
!1484 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1484, line: 22, size: 32, elements: !1486)
!1486 = !{!1487}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1485, file: !1484, line: 23, baseType: !1488, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1484, line: 20, baseType: !129)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1475, file: !1464, line: 74, baseType: !1490, size: 32, offset: 32)
!1490 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !1464, line: 54, baseType: !66, size: 32, elements: !1491)
!1491 = !{!1492, !1493, !1494}
!1492 = !DIEnumerator(name: "USRQUOTA", value: 0)
!1493 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!1494 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1463, file: !1464, line: 306, baseType: !253, size: 64, offset: 960)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1463, file: !1464, line: 307, baseType: !444, size: 64, offset: 1024)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1463, file: !1464, line: 308, baseType: !1498, size: 576, offset: 1088)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !1464, line: 205, size: 576, elements: !1499)
!1499 = !{!1500, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1498, file: !1464, line: 206, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !1464, line: 66, baseType: !255)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1498, file: !1464, line: 207, baseType: !1501, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1498, file: !1464, line: 208, baseType: !1501, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1498, file: !1464, line: 209, baseType: !1501, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1498, file: !1464, line: 210, baseType: !1501, size: 64, offset: 256)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1498, file: !1464, line: 211, baseType: !1501, size: 64, offset: 320)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1498, file: !1464, line: 212, baseType: !1501, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1498, file: !1464, line: 213, baseType: !261, size: 64, offset: 448)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1498, file: !1464, line: 214, baseType: !261, size: 64, offset: 512)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1387, file: !117, line: 2085, baseType: !1511, size: 64, offset: 1472)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!264, !1338, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1516, line: 15, size: 256, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1517 = !{!1518, !1519, !1520, !1521, !1522}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1515, file: !1516, line: 16, baseType: !1010, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1515, file: !1516, line: 19, baseType: !11, size: 32, offset: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1515, file: !1516, line: 26, baseType: !444, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1515, file: !1516, line: 33, baseType: !444, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1515, file: !1516, line: 36, baseType: !1523, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !712, line: 33, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1387, file: !117, line: 2087, baseType: !1511, size: 64, offset: 1536)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1387, file: !117, line: 2089, baseType: !1367, size: 64, offset: 1600)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1339, file: !117, line: 1198, baseType: !1528, size: 64, offset: 448)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1530)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !1464, line: 324, size: 704, elements: !1531)
!1531 = !{!1532, !1536, !1540, !1544, !1545, !1546, !1547, !1548, !1553, !1558, !1562}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1530, file: !1464, line: 325, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!11, !1462}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1530, file: !1464, line: 326, baseType: !1537, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1462, !1338, !11}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1530, file: !1464, line: 327, baseType: !1541, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !1462}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1530, file: !1464, line: 328, baseType: !1533, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1530, file: !1464, line: 329, baseType: !1533, size: 64, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1530, file: !1464, line: 330, baseType: !1533, size: 64, offset: 320)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1530, file: !1464, line: 331, baseType: !1413, size: 64, offset: 384)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1530, file: !1464, line: 334, baseType: !1549, size: 64, offset: 448)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!1552, !115}
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1530, file: !1464, line: 335, baseType: !1554, size: 64, offset: 512)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!11, !115, !1557}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1530, file: !1464, line: 337, baseType: !1559, size: 64, offset: 576)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!11, !115, !1552}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1530, file: !1464, line: 339, baseType: !1563, size: 64, offset: 640)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!11, !1338, !1566}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1339, file: !117, line: 1199, baseType: !1568, size: 64, offset: 512)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !1464, line: 430, size: 704, elements: !1571)
!1571 = !{!1572, !1576, !1577, !1581, !1582, !1583, !1598, !1621, !1625, !1626, !1649}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1570, file: !1464, line: 431, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!11, !1338, !11, !11, !1261}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1570, file: !1464, line: 432, baseType: !1413, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1570, file: !1464, line: 433, baseType: !1578, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!11, !1338, !66}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1570, file: !1464, line: 434, baseType: !1578, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1570, file: !1464, line: 435, baseType: !1413, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1570, file: !1464, line: 436, baseType: !1584, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!11, !1338, !11, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !1464, line: 417, size: 256, elements: !1589)
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1588, file: !1464, line: 418, baseType: !11, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1588, file: !1464, line: 419, baseType: !66, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1588, file: !1464, line: 420, baseType: !66, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1588, file: !1464, line: 422, baseType: !66, size: 32, offset: 96)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1588, file: !1464, line: 423, baseType: !66, size: 32, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1588, file: !1464, line: 424, baseType: !66, size: 32, offset: 160)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1588, file: !1464, line: 425, baseType: !66, size: 32, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1588, file: !1464, line: 426, baseType: !66, size: 32, offset: 224)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1570, file: !1464, line: 437, baseType: !1599, size: 64, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!11, !1338, !1475, !1602}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !1464, line: 345, size: 960, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1603, file: !1464, line: 346, baseType: !11, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1603, file: !1464, line: 347, baseType: !108, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1603, file: !1464, line: 348, baseType: !108, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1603, file: !1464, line: 349, baseType: !108, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1603, file: !1464, line: 350, baseType: !108, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1603, file: !1464, line: 351, baseType: !108, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1603, file: !1464, line: 352, baseType: !108, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1603, file: !1464, line: 353, baseType: !300, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1603, file: !1464, line: 355, baseType: !300, size: 64, offset: 512)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1603, file: !1464, line: 356, baseType: !11, size: 32, offset: 576)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1603, file: !1464, line: 357, baseType: !11, size: 32, offset: 608)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1603, file: !1464, line: 358, baseType: !108, size: 64, offset: 640)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1603, file: !1464, line: 359, baseType: !108, size: 64, offset: 704)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1603, file: !1464, line: 360, baseType: !108, size: 64, offset: 768)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1603, file: !1464, line: 361, baseType: !300, size: 64, offset: 832)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1603, file: !1464, line: 362, baseType: !11, size: 32, offset: 896)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1570, file: !1464, line: 438, baseType: !1622, size: 64, offset: 448)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!11, !1338, !1566, !1602}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1570, file: !1464, line: 440, baseType: !1599, size: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1570, file: !1464, line: 441, baseType: !1627, size: 64, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!11, !1338, !1630}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !1464, line: 411, size: 1408, elements: !1632)
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1631, file: !1464, line: 412, baseType: !66, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1631, file: !1464, line: 413, baseType: !1635, size: 1344, offset: 64)
!1635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1636, size: 1344, elements: !339)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !1464, line: 397, size: 448, elements: !1637)
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1648}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1636, file: !1464, line: 398, baseType: !66, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1636, file: !1464, line: 399, baseType: !66, size: 32, offset: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1636, file: !1464, line: 401, baseType: !66, size: 32, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1636, file: !1464, line: 402, baseType: !66, size: 32, offset: 96)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1636, file: !1464, line: 403, baseType: !66, size: 32, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1636, file: !1464, line: 404, baseType: !66, size: 32, offset: 160)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1636, file: !1464, line: 405, baseType: !66, size: 32, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1636, file: !1464, line: 406, baseType: !110, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1636, file: !1464, line: 407, baseType: !1647, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !34, line: 132, baseType: !108)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1636, file: !1464, line: 408, baseType: !1647, size: 64, offset: 384)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1570, file: !1464, line: 442, baseType: !1578, size: 64, offset: 640)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1339, file: !117, line: 1200, baseType: !1651, size: 64, offset: 576)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1653)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !117, line: 54, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1339, file: !117, line: 1201, baseType: !444, size: 64, offset: 640)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1339, file: !117, line: 1202, baseType: !444, size: 64, offset: 704)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1339, file: !117, line: 1203, baseType: !444, size: 64, offset: 768)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1339, file: !117, line: 1204, baseType: !79, size: 64, offset: 832)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1339, file: !117, line: 1205, baseType: !449, size: 320, offset: 896)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1339, file: !117, line: 1206, baseType: !11, size: 32, offset: 1216)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1339, file: !117, line: 1207, baseType: !33, size: 32, offset: 1248)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1339, file: !117, line: 1209, baseType: !173, size: 64, offset: 1280)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1339, file: !117, line: 1211, baseType: !1663, size: 64, offset: 1344)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1666)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !117, line: 1211, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1339, file: !117, line: 1223, baseType: !1668, size: 64, offset: 1408)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !87, line: 34, size: 64, elements: !1669)
!1669 = !{!1670}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1668, file: !87, line: 35, baseType: !90, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1339, file: !117, line: 1224, baseType: !132, size: 128, offset: 1472)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1339, file: !117, line: 1225, baseType: !1673, size: 64, offset: 1600)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !117, line: 1225, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1339, file: !117, line: 1226, baseType: !1676, size: 64, offset: 1664)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !117, line: 1226, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1339, file: !117, line: 1227, baseType: !1679, size: 64, offset: 1728)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !117, line: 50, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1339, file: !117, line: 1228, baseType: !1682, size: 64, offset: 1792)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !117, line: 1228, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1339, file: !117, line: 1229, baseType: !361, size: 128, offset: 1856)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1339, file: !117, line: 1230, baseType: !66, size: 32, offset: 1984)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1339, file: !117, line: 1231, baseType: !1687, size: 2496, offset: 2048)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !1464, line: 521, size: 2496, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1693, !1725}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1687, file: !1464, line: 522, baseType: !66, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1687, file: !1464, line: 523, baseType: !449, size: 320, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1687, file: !1464, line: 524, baseType: !1692, size: 192, offset: 384)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 192, elements: !339)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1687, file: !1464, line: 525, baseType: !1694, size: 1728, offset: 576)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1695, size: 1728, elements: !339)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !1464, line: 222, size: 576, elements: !1696)
!1696 = !{!1697, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1695, file: !1464, line: 223, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !1464, line: 445, size: 256, elements: !1700)
!1700 = !{!1701, !1702, !1715, !1716}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1699, file: !1464, line: 446, baseType: !11, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1699, file: !1464, line: 447, baseType: !1703, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !1464, line: 312, size: 512, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1705, file: !1464, line: 313, baseType: !1413, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1705, file: !1464, line: 314, baseType: !1413, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1705, file: !1464, line: 315, baseType: !1413, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1705, file: !1464, line: 316, baseType: !1413, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1705, file: !1464, line: 317, baseType: !1533, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1705, file: !1464, line: 318, baseType: !1533, size: 64, offset: 320)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1705, file: !1464, line: 319, baseType: !1533, size: 64, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1705, file: !1464, line: 320, baseType: !1563, size: 64, offset: 448)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1699, file: !1464, line: 448, baseType: !623, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1699, file: !1464, line: 449, baseType: !1698, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1695, file: !1464, line: 224, baseType: !11, size: 32, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1695, file: !1464, line: 226, baseType: !132, size: 128, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1695, file: !1464, line: 227, baseType: !444, size: 64, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1695, file: !1464, line: 228, baseType: !66, size: 32, offset: 320)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1695, file: !1464, line: 229, baseType: !66, size: 32, offset: 352)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1695, file: !1464, line: 230, baseType: !1501, size: 64, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1695, file: !1464, line: 231, baseType: !1501, size: 64, offset: 448)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1695, file: !1464, line: 232, baseType: !173, size: 64, offset: 512)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1687, file: !1464, line: 526, baseType: !1726, size: 192, offset: 2304)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1703, size: 192, elements: !339)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1339, file: !117, line: 1233, baseType: !1728, size: 2368, offset: 4544)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !117, line: 1184, size: 2368, elements: !1729)
!1729 = !{!1730, !1731, !1732}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1728, file: !117, line: 1185, baseType: !54, size: 16)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1728, file: !117, line: 1186, baseType: !54, size: 16, offset: 16)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1728, file: !117, line: 1187, baseType: !1733, size: 2304, offset: 64)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1734, size: 2304, elements: !339)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1735, line: 12, size: 768, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1736 = !{!1737, !1745, !1747, !2969, !2970}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1734, file: !1735, line: 13, baseType: !1738, size: 384)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1739, line: 17, size: 384, elements: !1740)
!1739 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1740 = !{!1741, !1742, !1743, !1744}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1738, file: !1739, line: 18, baseType: !11, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1738, file: !1739, line: 19, baseType: !11, size: 32, offset: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1738, file: !1739, line: 20, baseType: !370, size: 192, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1738, file: !1739, line: 22, baseType: !281, size: 128, align: 64, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1734, file: !1735, line: 14, baseType: !1746, size: 64, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1734, file: !1735, line: 15, baseType: !1748, size: 64, offset: 448)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1749, line: 16, size: 64, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1748, file: !1749, line: 17, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !910, line: 746, size: 58368, elements: !1754)
!1754 = !{!1755, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1835, !1846, !1939, !1943, !1946, !1977, !1978, !1979, !1980, !1991, !1993, !1994, !1995, !1996, !1997, !1998, !2009, !2010, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2027, !2028, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2122, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2137, !2138, !2139, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2181, !2187, !2188, !2189, !2190, !2191, !2195, !2198, !2205, !2210, !2211, !2214, !2217, !2220, !2360, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2402, !2403, !2404, !2413, !2421, !2422, !2423, !2424, !2425, !2430, !2431, !2432, !2435, !2436, !2439, !2442, !2445, !2453, !2456, !2457, !2543, !2544, !2545, !2546, !2547, !2553, !2554, !2555, !2556, !2559, !2560, !2563, !2566, !2567, !2570, !2571, !2572, !2575, !2576, !2577, !2578, !2579, !2580, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2612, !2613, !2619, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2631, !2709, !2711, !2712, !2713, !2714, !2715, !2727, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2744, !2745, !2746}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1753, file: !910, line: 752, baseType: !1756, size: 192)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1757, line: 56, size: 192, elements: !1758)
!1757 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1758 = !{!1759, !1760, !1761, !1762}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1756, file: !1757, line: 57, baseType: !444, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1756, file: !1757, line: 58, baseType: !444, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1756, file: !1757, line: 59, baseType: !104, size: 32, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1756, file: !1757, line: 61, baseType: !104, size: 32, offset: 160)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1753, file: !910, line: 754, baseType: !66, size: 32, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1753, file: !910, line: 767, baseType: !173, size: 64, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1753, file: !910, line: 768, baseType: !348, size: 32, offset: 320)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1753, file: !910, line: 770, baseType: !66, size: 32, offset: 352)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1753, file: !910, line: 771, baseType: !66, size: 32, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1753, file: !910, line: 774, baseType: !11, size: 32, offset: 416)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1753, file: !910, line: 775, baseType: !1770, size: 128, offset: 448)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1771, line: 58, size: 128, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1772 = !{!1773, !1774, !1779, !1780}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1770, file: !1771, line: 59, baseType: !275, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !1771, line: 60, baseType: !1775, size: 32, offset: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1770, file: !1771, line: 60, size: 32, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1775, file: !1771, line: 61, baseType: !66, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1775, file: !1771, line: 62, baseType: !33, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1770, file: !1771, line: 65, baseType: !52, size: 16, offset: 96)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1770, file: !1771, line: 65, baseType: !52, size: 16, offset: 112)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1753, file: !910, line: 776, baseType: !66, size: 32, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1753, file: !910, line: 777, baseType: !444, size: 64, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1753, file: !910, line: 778, baseType: !1752, size: 64, offset: 704)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1753, file: !910, line: 787, baseType: !11, size: 32, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1753, file: !910, line: 788, baseType: !11, size: 32, offset: 800)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1753, file: !910, line: 790, baseType: !11, size: 32, offset: 832)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1753, file: !910, line: 792, baseType: !11, size: 32, offset: 864)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1753, file: !910, line: 793, baseType: !11, size: 32, offset: 896)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1753, file: !910, line: 794, baseType: !11, size: 32, offset: 928)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1753, file: !910, line: 795, baseType: !66, size: 32, offset: 960)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1753, file: !910, line: 797, baseType: !1792, size: 2048, offset: 1024)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !910, line: 551, size: 2048, elements: !1793)
!1793 = !{!1794, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1814, !1817, !1818, !1819}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1792, file: !910, line: 553, baseType: !1795, size: 128)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !910, line: 411, size: 128, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1795, file: !910, line: 412, baseType: !444, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1795, file: !910, line: 413, baseType: !104, size: 32, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1792, file: !910, line: 554, baseType: !440, size: 192, align: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1792, file: !910, line: 555, baseType: !108, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1792, file: !910, line: 556, baseType: !108, size: 64, offset: 384)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1792, file: !910, line: 558, baseType: !132, size: 128, offset: 448)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1792, file: !910, line: 559, baseType: !66, size: 32, offset: 576)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1792, file: !910, line: 561, baseType: !108, size: 64, offset: 640)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1792, file: !910, line: 562, baseType: !108, size: 64, offset: 704)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1792, file: !910, line: 563, baseType: !108, size: 64, offset: 768)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1792, file: !910, line: 564, baseType: !108, size: 64, offset: 832)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1792, file: !910, line: 565, baseType: !300, size: 64, offset: 896)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1792, file: !910, line: 566, baseType: !108, size: 64, offset: 960)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1792, file: !910, line: 568, baseType: !108, size: 64, offset: 1024)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1792, file: !910, line: 571, baseType: !11, size: 32, offset: 1088)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1792, file: !910, line: 572, baseType: !1813, size: 64, offset: 1152)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1792, file: !910, line: 574, baseType: !1815, size: 64, offset: 1216)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !910, line: 49, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1792, file: !910, line: 576, baseType: !1815, size: 64, offset: 1280)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1792, file: !910, line: 578, baseType: !444, size: 64, offset: 1344)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1792, file: !910, line: 588, baseType: !1820, size: 512, align: 512, offset: 1536)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !910, line: 497, size: 512, align: 512, elements: !1821)
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1820, file: !910, line: 498, baseType: !108, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1820, file: !910, line: 499, baseType: !108, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1820, file: !910, line: 500, baseType: !108, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1820, file: !910, line: 501, baseType: !104, size: 32, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1820, file: !910, line: 502, baseType: !104, size: 32, offset: 224)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1820, file: !910, line: 503, baseType: !444, size: 64, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1820, file: !910, line: 504, baseType: !444, size: 64, offset: 320)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1820, file: !910, line: 505, baseType: !444, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1820, file: !910, line: 506, baseType: !1831, size: 64, align: 64, offset: 448)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !910, line: 445, size: 64, align: 64, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1831, file: !910, line: 446, baseType: !66, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1831, file: !910, line: 447, baseType: !66, size: 32, offset: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1753, file: !910, line: 798, baseType: !1836, size: 384, offset: 3072)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !910, line: 592, size: 384, elements: !1837)
!1837 = !{!1838, !1839, !1840, !1841, !1842, !1843, !1844}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1836, file: !910, line: 593, baseType: !132, size: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1836, file: !910, line: 594, baseType: !444, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1836, file: !910, line: 595, baseType: !444, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1836, file: !910, line: 596, baseType: !66, size: 32, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1836, file: !910, line: 597, baseType: !54, size: 16, offset: 288)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1836, file: !910, line: 598, baseType: !54, size: 16, offset: 304)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1836, file: !910, line: 600, baseType: !1845, size: 64, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1753, file: !910, line: 799, baseType: !1847, size: 1792, offset: 3456)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !910, line: 610, size: 1792, elements: !1848)
!1848 = !{!1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1936, !1937}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1847, file: !910, line: 611, baseType: !440, size: 192, align: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1847, file: !910, line: 618, baseType: !108, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1847, file: !910, line: 619, baseType: !108, size: 64, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1847, file: !910, line: 620, baseType: !108, size: 64, offset: 320)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1847, file: !910, line: 621, baseType: !108, size: 64, offset: 384)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1847, file: !910, line: 622, baseType: !108, size: 64, offset: 448)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1847, file: !910, line: 629, baseType: !300, size: 64, offset: 512)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1847, file: !910, line: 630, baseType: !108, size: 64, offset: 576)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1847, file: !910, line: 631, baseType: !66, size: 32, offset: 640)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1847, file: !910, line: 653, baseType: !66, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1847, file: !910, line: 654, baseType: !66, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1847, file: !910, line: 655, baseType: !66, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1847, file: !910, line: 656, baseType: !66, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1847, file: !910, line: 662, baseType: !1863, size: 512, offset: 704)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1864, line: 118, size: 512, elements: !1865)
!1864 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!1865 = !{!1866, !1874, !1875, !1884, !1932, !1933, !1934, !1935}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1863, file: !1864, line: 119, baseType: !1867, size: 256)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1868, line: 9, size: 256, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1867, file: !1868, line: 10, baseType: !440, size: 192, align: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1867, file: !1868, line: 11, baseType: !1872, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1873, line: 29, baseType: !300)
!1873 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1863, file: !1864, line: 120, baseType: !1872, size: 64, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1863, file: !1864, line: 121, baseType: !1876, size: 64, offset: 320)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!1879, !1883}
!1879 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1864, line: 65, baseType: !66, size: 32, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!1882 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1863, file: !1864, line: 122, baseType: !1885, size: 64, offset: 384)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1864, line: 159, size: 512, align: 512, elements: !1887)
!1887 = !{!1888, !1913, !1914, !1917, !1922, !1923, !1927, !1931}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1886, file: !1864, line: 160, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1864, line: 215, size: 4608, align: 512, elements: !1891)
!1891 = !{!1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1890, file: !1864, line: 216, baseType: !307, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1890, file: !1864, line: 217, baseType: !66, size: 32, offset: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1890, file: !1864, line: 218, baseType: !66, size: 32, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1890, file: !1864, line: 219, baseType: !66, size: 32, offset: 96)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1890, file: !1864, line: 220, baseType: !66, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1890, file: !1864, line: 221, baseType: !66, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1890, file: !1864, line: 222, baseType: !66, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1890, file: !1864, line: 223, baseType: !66, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1890, file: !1864, line: 224, baseType: !66, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1890, file: !1864, line: 226, baseType: !66, size: 32, offset: 160)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1890, file: !1864, line: 227, baseType: !54, size: 16, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1890, file: !1864, line: 228, baseType: !54, size: 16, offset: 208)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1890, file: !1864, line: 229, baseType: !66, size: 32, offset: 224)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1890, file: !1864, line: 235, baseType: !1872, size: 64, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1890, file: !1864, line: 236, baseType: !1883, size: 64, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1890, file: !1864, line: 237, baseType: !1872, size: 64, offset: 384)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1890, file: !1864, line: 238, baseType: !1883, size: 64, offset: 448)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1890, file: !1864, line: 239, baseType: !1910, size: 4096, align: 512, offset: 512)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1886, size: 4096, align: 512, elements: !1911)
!1911 = !{!1912}
!1912 = !DISubrange(count: 8)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1886, file: !1864, line: 161, baseType: !66, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1886, file: !1864, line: 162, baseType: !1915, size: 32, offset: 96)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !34, line: 32, baseType: !1916)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !130, line: 96, baseType: !11)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1886, file: !1864, line: 163, baseType: !1918, size: 32, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !58, line: 274, baseType: !1919)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !58, line: 274, size: 32, elements: !1920)
!1920 = !{!1921}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1919, file: !58, line: 274, baseType: !62, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1886, file: !1864, line: 164, baseType: !1883, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1886, file: !1864, line: 165, baseType: !1924, size: 128, offset: 256)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1868, line: 14, size: 128, elements: !1925)
!1925 = !{!1926}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1924, file: !1868, line: 15, baseType: !1016, size: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1886, file: !1864, line: 166, baseType: !1928, size: 64, offset: 384)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1872}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1886, file: !1864, line: 167, baseType: !1872, size: 64, offset: 448)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1863, file: !1864, line: 123, baseType: !42, size: 8, offset: 448)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1863, file: !1864, line: 124, baseType: !42, size: 8, offset: 456)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1863, file: !1864, line: 125, baseType: !42, size: 8, offset: 464)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1863, file: !1864, line: 126, baseType: !42, size: 8, offset: 472)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1847, file: !910, line: 671, baseType: !1863, size: 512, offset: 1216)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1847, file: !910, line: 679, baseType: !1938, size: 64, offset: 1728)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1753, file: !910, line: 800, baseType: !1940, size: 64, offset: 5248)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1942)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !910, line: 800, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1753, file: !910, line: 809, baseType: !1944, size: 64, offset: 5312)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !910, line: 70, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1753, file: !910, line: 825, baseType: !1947, size: 2048, align: 512, offset: 5632)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !910, line: 509, size: 2048, align: 512, elements: !1948)
!1948 = !{!1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1947, file: !910, line: 511, baseType: !108, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1947, file: !910, line: 512, baseType: !108, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1947, file: !910, line: 513, baseType: !108, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1947, file: !910, line: 514, baseType: !108, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1947, file: !910, line: 515, baseType: !108, size: 64, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1947, file: !910, line: 516, baseType: !108, size: 64, offset: 320)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1947, file: !910, line: 518, baseType: !108, size: 64, offset: 384)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1947, file: !910, line: 519, baseType: !108, size: 64, offset: 448)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1947, file: !910, line: 520, baseType: !300, size: 64, offset: 512)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1947, file: !910, line: 522, baseType: !108, size: 64, offset: 576)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1947, file: !910, line: 523, baseType: !108, size: 64, offset: 640)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1947, file: !910, line: 524, baseType: !300, size: 64, offset: 704)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1947, file: !910, line: 526, baseType: !300, size: 64, offset: 768)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1947, file: !910, line: 527, baseType: !108, size: 64, offset: 832)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1947, file: !910, line: 529, baseType: !108, size: 64, offset: 896)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1947, file: !910, line: 530, baseType: !108, size: 64, offset: 960)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1947, file: !910, line: 531, baseType: !108, size: 64, offset: 1024)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1947, file: !910, line: 532, baseType: !108, size: 64, offset: 1088)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1947, file: !910, line: 533, baseType: !108, size: 64, offset: 1152)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1947, file: !910, line: 535, baseType: !108, size: 64, offset: 1216)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1947, file: !910, line: 536, baseType: !108, size: 64, offset: 1280)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1947, file: !910, line: 537, baseType: !108, size: 64, offset: 1344)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1947, file: !910, line: 538, baseType: !108, size: 64, offset: 1408)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1947, file: !910, line: 539, baseType: !108, size: 64, offset: 1472)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1947, file: !910, line: 540, baseType: !108, size: 64, offset: 1536)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1947, file: !910, line: 541, baseType: !108, size: 64, offset: 1600)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1947, file: !910, line: 542, baseType: !108, size: 64, offset: 1664)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1947, file: !910, line: 543, baseType: !108, size: 64, offset: 1728)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1753, file: !910, line: 833, baseType: !66, size: 32, offset: 7680)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1753, file: !910, line: 836, baseType: !66, size: 32, offset: 7712)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1753, file: !910, line: 837, baseType: !11, size: 32, offset: 7744)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1753, file: !910, line: 838, baseType: !1981, size: 64, offset: 7808)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1983)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1984, line: 19, baseType: !1985)
!1984 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1984, line: 19, size: 64, elements: !1986)
!1986 = !{!1987}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1985, file: !1984, line: 19, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 64, elements: !1989)
!1989 = !{!1990}
!1990 = !DISubrange(count: 1)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1753, file: !910, line: 839, baseType: !1992, size: 64, offset: 7872)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1753, file: !910, line: 840, baseType: !1983, size: 64, offset: 7936)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1753, file: !910, line: 841, baseType: !173, size: 64, offset: 8000)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1753, file: !910, line: 843, baseType: !54, size: 16, offset: 8064)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1753, file: !910, line: 845, baseType: !54, size: 16, offset: 8080)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1753, file: !910, line: 848, baseType: !11, size: 32, offset: 8096)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1753, file: !910, line: 849, baseType: !1999, size: 32, offset: 8128)
!1999 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !910, line: 718, size: 32, elements: !2000)
!2000 = !{!2001, !2008}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1999, file: !910, line: 724, baseType: !2002, size: 32)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1999, file: !910, line: 719, size: 32, elements: !2003)
!2003 = !{!2004, !2005, !2006, !2007}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2002, file: !910, line: 720, baseType: !42, size: 8)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2002, file: !910, line: 721, baseType: !42, size: 8, offset: 8)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2002, file: !910, line: 722, baseType: !42, size: 8, offset: 16)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2002, file: !910, line: 723, baseType: !42, size: 8, offset: 24)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1999, file: !910, line: 725, baseType: !104, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1753, file: !910, line: 850, baseType: !132, size: 128, offset: 8192)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1753, file: !910, line: 851, baseType: !2011, size: 64, offset: 8320)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !910, line: 60, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1753, file: !910, line: 855, baseType: !444, size: 64, offset: 8384)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1753, file: !910, line: 856, baseType: !42, size: 8, offset: 8448)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1753, file: !910, line: 857, baseType: !42, size: 8, offset: 8456)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1753, file: !910, line: 858, baseType: !11, size: 32, offset: 8480)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1753, file: !910, line: 859, baseType: !132, size: 128, offset: 8512)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1753, file: !910, line: 860, baseType: !11, size: 32, offset: 8640)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1753, file: !910, line: 861, baseType: !132, size: 128, offset: 8704)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1753, file: !910, line: 873, baseType: !2021, size: 256, offset: 8832)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !910, line: 376, size: 256, elements: !2022)
!2022 = !{!2023, !2024, !2025, !2026}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2021, file: !910, line: 381, baseType: !444, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2021, file: !910, line: 384, baseType: !110, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2021, file: !910, line: 389, baseType: !110, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2021, file: !910, line: 392, baseType: !110, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1753, file: !910, line: 875, baseType: !132, size: 128, offset: 9088)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1753, file: !910, line: 877, baseType: !2029, size: 320, offset: 9216)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2030, line: 86, size: 320, elements: !2031)
!2030 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2031 = !{!2032, !2033, !2034}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2029, file: !2030, line: 87, baseType: !11, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2029, file: !2030, line: 88, baseType: !132, size: 128, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2029, file: !2030, line: 89, baseType: !132, size: 128, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1753, file: !910, line: 878, baseType: !440, size: 192, align: 64, offset: 9536)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1753, file: !910, line: 881, baseType: !724, size: 64, offset: 9728)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1753, file: !910, line: 882, baseType: !724, size: 64, offset: 9792)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1753, file: !910, line: 884, baseType: !11, size: 32, offset: 9856)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1753, file: !910, line: 885, baseType: !11, size: 32, offset: 9888)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1753, file: !910, line: 886, baseType: !11, size: 32, offset: 9920)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1753, file: !910, line: 888, baseType: !11, size: 32, offset: 9952)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1753, file: !910, line: 890, baseType: !444, size: 64, offset: 9984)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1753, file: !910, line: 893, baseType: !66, size: 32, offset: 10048)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1753, file: !910, line: 896, baseType: !66, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1753, file: !910, line: 897, baseType: !66, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1753, file: !910, line: 898, baseType: !66, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1753, file: !910, line: 899, baseType: !66, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1753, file: !910, line: 919, baseType: !66, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1753, file: !910, line: 922, baseType: !66, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1753, file: !910, line: 923, baseType: !66, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1753, file: !910, line: 925, baseType: !66, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1753, file: !910, line: 939, baseType: !66, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1753, file: !910, line: 941, baseType: !66, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1753, file: !910, line: 944, baseType: !66, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1753, file: !910, line: 956, baseType: !66, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1753, file: !910, line: 962, baseType: !66, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1753, file: !910, line: 966, baseType: !66, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1753, file: !910, line: 969, baseType: !444, size: 64, offset: 10176)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1753, file: !910, line: 971, baseType: !2060, size: 448, offset: 10240)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !2061, line: 25, size: 448, elements: !2062)
!2061 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!2062 = !{!2063, !2064, !2069}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2060, file: !2061, line: 26, baseType: !444, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2060, file: !2061, line: 27, baseType: !2065, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!264, !2068}
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2061, line: 28, baseType: !2070, size: 320, offset: 128)
!2070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2061, line: 28, size: 320, elements: !2071)
!2071 = !{!2072, !2082, !2112}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2070, file: !2061, line: 37, baseType: !2073, size: 320)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2070, file: !2061, line: 30, size: 320, elements: !2074)
!2074 = !{!2075, !2077, !2078, !2079, !2080, !2081}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2073, file: !2061, line: 31, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2073, file: !2061, line: 32, baseType: !104, size: 32, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2073, file: !2061, line: 33, baseType: !104, size: 32, offset: 96)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2073, file: !2061, line: 34, baseType: !104, size: 32, offset: 128)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2073, file: !2061, line: 35, baseType: !108, size: 64, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2073, file: !2061, line: 36, baseType: !2076, size: 64, offset: 256)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2070, file: !2061, line: 47, baseType: !2083, size: 192)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2070, file: !2061, line: 39, size: 192, elements: !2084)
!2084 = !{!2085, !2086, !2092, !2111}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2083, file: !2061, line: 40, baseType: !1915, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2083, file: !2061, line: 41, baseType: !2087, size: 32, offset: 32)
!2087 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !2061, line: 16, baseType: !66, size: 32, elements: !2088)
!2088 = !{!2089, !2090, !2091}
!2089 = !DIEnumerator(name: "TT_NONE", value: 0)
!2090 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!2091 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!2092 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !2061, line: 42, baseType: !2093, size: 64, offset: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2083, file: !2061, line: 42, size: 64, elements: !2094)
!2094 = !{!2095, !2103}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2093, file: !2061, line: 43, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2098, line: 7, size: 128, elements: !2099)
!2098 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2099 = !{!2100, !2102}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2097, file: !2098, line: 8, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !130, line: 93, baseType: !255)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2097, file: !2098, line: 9, baseType: !255, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2093, file: !2061, line: 44, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2106, line: 7, size: 64, elements: !2107)
!2106 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2107 = !{!2108, !2110}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2105, file: !2106, line: 8, baseType: !2109, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2106, line: 5, baseType: !433)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2105, file: !2106, line: 9, baseType: !433, size: 32, offset: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2083, file: !2061, line: 46, baseType: !108, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2070, file: !2061, line: 55, baseType: !2113, size: 256)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2070, file: !2061, line: 49, size: 256, elements: !2114)
!2114 = !{!2115, !2118, !2119, !2120, !2121}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2113, file: !2061, line: 50, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2061, line: 14, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2113, file: !2061, line: 51, baseType: !11, size: 32, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2113, file: !2061, line: 52, baseType: !11, size: 32, offset: 96)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2113, file: !2061, line: 53, baseType: !444, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2113, file: !2061, line: 54, baseType: !444, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1753, file: !910, line: 973, baseType: !2123, size: 32, offset: 10688)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !34, line: 27, baseType: !2124)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !130, line: 28, baseType: !11)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1753, file: !910, line: 974, baseType: !2123, size: 32, offset: 10720)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1753, file: !910, line: 978, baseType: !444, size: 64, offset: 10752)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1753, file: !910, line: 987, baseType: !1752, size: 64, offset: 10816)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1753, file: !910, line: 990, baseType: !1752, size: 64, offset: 10880)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1753, file: !910, line: 995, baseType: !132, size: 128, offset: 10944)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1753, file: !910, line: 996, baseType: !132, size: 128, offset: 11072)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1753, file: !910, line: 997, baseType: !1752, size: 64, offset: 11200)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1753, file: !910, line: 1005, baseType: !132, size: 128, offset: 11264)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1753, file: !910, line: 1006, baseType: !132, size: 128, offset: 11392)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1753, file: !910, line: 1009, baseType: !343, size: 64, offset: 11520)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1753, file: !910, line: 1010, baseType: !2136, size: 512, offset: 11584)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 512, elements: !366)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1753, file: !910, line: 1011, baseType: !132, size: 128, offset: 12096)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1753, file: !910, line: 1012, baseType: !132, size: 128, offset: 12224)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1753, file: !910, line: 1014, baseType: !2140, size: 64, offset: 12352)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2142, line: 26, size: 256, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2143 = !{!2144, !2145}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2141, file: !2142, line: 27, baseType: !66, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2141, file: !2142, line: 28, baseType: !2146, size: 192, offset: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2147, line: 43, size: 192, elements: !2148)
!2147 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2148 = !{!2149, !2150}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2146, file: !2147, line: 44, baseType: !307, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2146, file: !2147, line: 45, baseType: !132, size: 128, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1753, file: !910, line: 1017, baseType: !1440, size: 64, offset: 12416)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1753, file: !910, line: 1020, baseType: !1440, size: 64, offset: 12480)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1753, file: !910, line: 1023, baseType: !173, size: 64, offset: 12544)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1753, file: !910, line: 1025, baseType: !108, size: 64, offset: 12608)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1753, file: !910, line: 1026, baseType: !108, size: 64, offset: 12672)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1753, file: !910, line: 1031, baseType: !108, size: 64, offset: 12736)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1753, file: !910, line: 1032, baseType: !2158, size: 192, offset: 12800)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !910, line: 324, size: 192, elements: !2159)
!2159 = !{!2160, !2161, !2162}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2158, file: !910, line: 326, baseType: !108, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2158, file: !910, line: 327, baseType: !108, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2158, file: !910, line: 328, baseType: !307, size: 32, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1753, file: !910, line: 1041, baseType: !444, size: 64, offset: 12992)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1753, file: !910, line: 1042, baseType: !444, size: 64, offset: 13056)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1753, file: !910, line: 1045, baseType: !108, size: 64, offset: 13120)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1753, file: !910, line: 1048, baseType: !108, size: 64, offset: 13184)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1753, file: !910, line: 1051, baseType: !444, size: 64, offset: 13248)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1753, file: !910, line: 1052, baseType: !444, size: 64, offset: 13312)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1753, file: !910, line: 1055, baseType: !2170, size: 640, offset: 13376)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2171, line: 132, size: 640, elements: !2172)
!2171 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2172 = !{!2173, !2179, !2180}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2170, file: !2171, line: 133, baseType: !2174, size: 576)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2175, size: 576, elements: !339)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2171, line: 117, size: 192, elements: !2176)
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2175, file: !2171, line: 118, baseType: !108, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2175, file: !2171, line: 119, baseType: !1924, size: 128, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2170, file: !2171, line: 134, baseType: !66, size: 32, offset: 576)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2170, file: !2171, line: 135, baseType: !66, size: 32, offset: 608)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1753, file: !910, line: 1058, baseType: !2182, size: 448, offset: 14016)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2171, line: 144, size: 448, elements: !2183)
!2183 = !{!2184, !2185, !2186}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2182, file: !2171, line: 145, baseType: !281, size: 128, align: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2182, file: !2171, line: 146, baseType: !302, size: 256, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2182, file: !2171, line: 147, baseType: !66, size: 32, offset: 384)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1753, file: !910, line: 1064, baseType: !399, size: 64, offset: 14464)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1753, file: !910, line: 1067, baseType: !399, size: 64, offset: 14528)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1753, file: !910, line: 1070, baseType: !399, size: 64, offset: 14592)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1753, file: !910, line: 1074, baseType: !425, size: 64, offset: 14656)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1753, file: !910, line: 1084, baseType: !2192, size: 128, offset: 14720)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !2193)
!2193 = !{!2194}
!2194 = !DISubrange(count: 16)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1753, file: !910, line: 1086, baseType: !2196, size: 64, offset: 14848)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !910, line: 55, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1753, file: !910, line: 1089, baseType: !2199, size: 64, offset: 14912)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2200, line: 12, size: 64, elements: !2201)
!2200 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2201 = !{!2202}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2199, file: !2200, line: 13, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2200, line: 8, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1753, file: !910, line: 1090, baseType: !2206, size: 128, offset: 14976)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2207, line: 13, size: 128, elements: !2208)
!2207 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2208 = !{!2209}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2206, file: !2207, line: 14, baseType: !132, size: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1753, file: !910, line: 1097, baseType: !6, size: 64, offset: 15104)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1753, file: !910, line: 1100, baseType: !2212, size: 64, offset: 15168)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !910, line: 1100, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1753, file: !910, line: 1103, baseType: !2215, size: 64, offset: 15232)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !910, line: 53, flags: DIFlagFwdDecl)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1753, file: !910, line: 1107, baseType: !2218, size: 64, offset: 15296)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !910, line: 56, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1753, file: !910, line: 1110, baseType: !2221, size: 64, offset: 15360)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2223, line: 93, size: 8768, elements: !2224)
!2223 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2224 = !{!2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2274, !2283, !2284, !2286, !2287, !2288, !2291, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2329, !2330, !2337, !2347, !2350, !2351, !2354, !2355, !2356, !2357, !2358, !2359}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2222, file: !2223, line: 94, baseType: !348, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2222, file: !2223, line: 95, baseType: !33, size: 32, offset: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2222, file: !2223, line: 96, baseType: !11, size: 32, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2222, file: !2223, line: 97, baseType: !11, size: 32, offset: 96)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2222, file: !2223, line: 98, baseType: !132, size: 128, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2222, file: !2223, line: 100, baseType: !370, size: 192, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2222, file: !2223, line: 103, baseType: !1752, size: 64, offset: 448)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2222, file: !2223, line: 106, baseType: !2233, size: 192, offset: 512)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !592, line: 32, size: 192, elements: !2234)
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2233, file: !592, line: 33, baseType: !132, size: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2233, file: !592, line: 34, baseType: !2237, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2238, line: 25, baseType: !2239)
!2238 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2238, line: 23, size: 64, elements: !2240)
!2240 = !{!2241}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2239, file: !2238, line: 24, baseType: !1988, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2222, file: !2223, line: 109, baseType: !357, size: 64, offset: 704)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2222, file: !2223, line: 112, baseType: !11, size: 32, offset: 768)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2222, file: !2223, line: 114, baseType: !11, size: 32, offset: 800)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2222, file: !2223, line: 115, baseType: !1752, size: 64, offset: 832)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2222, file: !2223, line: 118, baseType: !11, size: 32, offset: 896)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2222, file: !2223, line: 119, baseType: !66, size: 32, offset: 928)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2222, file: !2223, line: 121, baseType: !2249, size: 64, offset: 960)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2223, line: 80, size: 448, elements: !2251)
!2251 = !{!2252, !2253, !2259}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2250, file: !2223, line: 81, baseType: !33, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2250, file: !2223, line: 82, baseType: !2254, size: 128, offset: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2223, line: 75, size: 128, elements: !2255)
!2255 = !{!2256, !2257}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2254, file: !2223, line: 76, baseType: !1752, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2254, file: !2223, line: 77, baseType: !2258, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2250, file: !2223, line: 83, baseType: !2141, size: 256, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2222, file: !2223, line: 132, baseType: !66, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2222, file: !2223, line: 133, baseType: !66, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2222, file: !2223, line: 138, baseType: !66, size: 32, offset: 1056)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2222, file: !2223, line: 139, baseType: !132, size: 128, offset: 1088)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2222, file: !2223, line: 142, baseType: !1863, size: 512, offset: 1216)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2222, file: !2223, line: 143, baseType: !1872, size: 64, offset: 1728)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2222, file: !2223, line: 150, baseType: !2267, size: 256, offset: 1792)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2268, size: 256, elements: !2272)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2223, line: 38, size: 128, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2268, file: !2223, line: 39, baseType: !108, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2268, file: !2223, line: 40, baseType: !108, size: 64, offset: 64)
!2272 = !{!2273}
!2273 = !DISubrange(count: 2)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2222, file: !2223, line: 156, baseType: !2275, size: 192, offset: 2048)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2223, line: 66, size: 192, elements: !2276)
!2276 = !{!2277}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2275, file: !2223, line: 67, baseType: !2278, size: 192)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2223, line: 47, size: 192, elements: !2279)
!2279 = !{!2280, !2281, !2282}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2278, file: !2223, line: 48, baseType: !296, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2278, file: !2223, line: 49, baseType: !296, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2278, file: !2223, line: 50, baseType: !296, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2222, file: !2223, line: 160, baseType: !2170, size: 640, offset: 2240)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2222, file: !2223, line: 163, baseType: !2285, size: 256, offset: 2880)
!2285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 256, elements: !366)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2222, file: !2223, line: 169, baseType: !343, size: 64, offset: 3136)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2222, file: !2223, line: 172, baseType: !11, size: 32, offset: 3200)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2222, file: !2223, line: 174, baseType: !2289, size: 64, offset: 3264)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2223, line: 174, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2222, file: !2223, line: 185, baseType: !2292, size: 64, offset: 3328)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !58, line: 860, baseType: !2293)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 853, size: 64, elements: !2294)
!2294 = !{!2295, !2296}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2293, file: !58, line: 858, baseType: !57, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2293, file: !58, line: 859, baseType: !13, size: 32, offset: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2222, file: !2223, line: 186, baseType: !108, size: 64, offset: 3392)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2222, file: !2223, line: 186, baseType: !108, size: 64, offset: 3456)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2222, file: !2223, line: 186, baseType: !108, size: 64, offset: 3520)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2222, file: !2223, line: 186, baseType: !108, size: 64, offset: 3584)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2222, file: !2223, line: 187, baseType: !108, size: 64, offset: 3648)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2222, file: !2223, line: 188, baseType: !108, size: 64, offset: 3712)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2222, file: !2223, line: 189, baseType: !2158, size: 192, offset: 3776)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2222, file: !2223, line: 190, baseType: !444, size: 64, offset: 3968)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2222, file: !2223, line: 190, baseType: !444, size: 64, offset: 4032)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2222, file: !2223, line: 190, baseType: !444, size: 64, offset: 4096)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2222, file: !2223, line: 190, baseType: !444, size: 64, offset: 4160)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2222, file: !2223, line: 191, baseType: !444, size: 64, offset: 4224)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2222, file: !2223, line: 191, baseType: !444, size: 64, offset: 4288)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2222, file: !2223, line: 191, baseType: !444, size: 64, offset: 4352)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2222, file: !2223, line: 191, baseType: !444, size: 64, offset: 4416)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2222, file: !2223, line: 192, baseType: !444, size: 64, offset: 4480)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2222, file: !2223, line: 192, baseType: !444, size: 64, offset: 4544)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2222, file: !2223, line: 192, baseType: !444, size: 64, offset: 4608)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2222, file: !2223, line: 192, baseType: !444, size: 64, offset: 4672)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2222, file: !2223, line: 193, baseType: !444, size: 64, offset: 4736)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2222, file: !2223, line: 193, baseType: !444, size: 64, offset: 4800)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2222, file: !2223, line: 194, baseType: !2319, size: 448, offset: 4864)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2320, line: 12, size: 448, elements: !2321)
!2320 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327, !2328}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2319, file: !2320, line: 15, baseType: !108, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2319, file: !2320, line: 17, baseType: !108, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2319, file: !2320, line: 19, baseType: !108, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2319, file: !2320, line: 21, baseType: !108, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2319, file: !2320, line: 29, baseType: !108, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2319, file: !2320, line: 35, baseType: !108, size: 64, offset: 320)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2319, file: !2320, line: 44, baseType: !108, size: 64, offset: 384)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2222, file: !2223, line: 202, baseType: !110, size: 64, offset: 5312)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2222, file: !2223, line: 213, baseType: !2331, size: 2048, offset: 5376)
!2331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2332, size: 2048, elements: !2193)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2333, line: 43, size: 128, elements: !2334)
!2333 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2334 = !{!2335, !2336}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2332, file: !2333, line: 44, baseType: !639, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2332, file: !2333, line: 45, baseType: !639, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2222, file: !2223, line: 216, baseType: !2338, size: 448, offset: 7424)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2223, line: 30, size: 448, elements: !2339)
!2339 = !{!2340, !2341, !2342, !2343, !2344, !2345, !2346}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2338, file: !2223, line: 31, baseType: !11, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2338, file: !2223, line: 32, baseType: !264, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2338, file: !2223, line: 33, baseType: !444, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2338, file: !2223, line: 34, baseType: !108, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2338, file: !2223, line: 34, baseType: !108, size: 64, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2338, file: !2223, line: 35, baseType: !444, size: 64, offset: 320)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2338, file: !2223, line: 35, baseType: !444, size: 64, offset: 384)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2222, file: !2223, line: 219, baseType: !2348, size: 64, offset: 7872)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2223, line: 219, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2222, file: !2223, line: 222, baseType: !66, size: 32, offset: 7936)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2222, file: !2223, line: 223, baseType: !2352, size: 64, offset: 8000)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2223, line: 223, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2222, file: !2223, line: 230, baseType: !186, size: 8, offset: 8064)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2222, file: !2223, line: 231, baseType: !475, size: 16, offset: 8080)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2222, file: !2223, line: 232, baseType: !475, size: 16, offset: 8096)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2222, file: !2223, line: 234, baseType: !724, size: 64, offset: 8128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2222, file: !2223, line: 237, baseType: !302, size: 256, offset: 8192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2222, file: !2223, line: 243, baseType: !449, size: 320, offset: 8448)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1753, file: !910, line: 1111, baseType: !2361, size: 64, offset: 15424)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2223, line: 20, size: 16640, elements: !2363)
!2363 = !{!2364, !2365, !2366, !2367}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2362, file: !2223, line: 21, baseType: !13, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2362, file: !2223, line: 22, baseType: !348, size: 32, offset: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2362, file: !2223, line: 23, baseType: !370, size: 192, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2362, file: !2223, line: 24, baseType: !2368, size: 16384, offset: 256)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2369, size: 16384, elements: !2389)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !592, line: 51, size: 256, elements: !2370)
!2370 = !{!2371}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2369, file: !592, line: 52, baseType: !2372, size: 256)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !592, line: 37, size: 256, elements: !2373)
!2373 = !{!2374, !2381, !2382, !2388}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2372, file: !592, line: 39, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2376, line: 83, baseType: !2377)
!2376 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2376, line: 82, baseType: !2379)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !11}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2372, file: !592, line: 40, baseType: !444, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2372, file: !592, line: 46, baseType: !2383, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2376, line: 86, baseType: !2384)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2376, line: 85, baseType: !2386)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2372, file: !592, line: 48, baseType: !2237, size: 64, offset: 192)
!2389 = !{!2390}
!2390 = !DISubrange(count: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1753, file: !910, line: 1112, baseType: !2237, size: 64, offset: 15488)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1753, file: !910, line: 1113, baseType: !2237, size: 64, offset: 15552)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1753, file: !910, line: 1115, baseType: !2237, size: 64, offset: 15616)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1753, file: !910, line: 1116, baseType: !2233, size: 192, offset: 15680)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1753, file: !910, line: 1117, baseType: !444, size: 64, offset: 15872)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1753, file: !910, line: 1118, baseType: !637, size: 64, offset: 15936)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1753, file: !910, line: 1119, baseType: !66, size: 32, offset: 16000)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1753, file: !910, line: 1121, baseType: !284, size: 64, offset: 16064)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1753, file: !910, line: 1125, baseType: !2400, size: 64, offset: 16128)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !910, line: 43, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1753, file: !910, line: 1127, baseType: !123, size: 32, offset: 16192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1753, file: !910, line: 1128, baseType: !66, size: 32, offset: 16224)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1753, file: !910, line: 1130, baseType: !2405, size: 128, offset: 16256)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2406, line: 37, size: 128, elements: !2407)
!2406 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2407 = !{!2408, !2409, !2410}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2405, file: !2406, line: 38, baseType: !11, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2405, file: !2406, line: 39, baseType: !33, size: 32, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2405, file: !2406, line: 40, baseType: !2411, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2406, line: 24, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1753, file: !910, line: 1131, baseType: !2414, size: 256, offset: 16384)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2415, line: 12, size: 256, elements: !2416)
!2415 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2416 = !{!2417, !2418, !2419, !2420}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2414, file: !2415, line: 13, baseType: !192, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2414, file: !2415, line: 14, baseType: !444, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2414, file: !2415, line: 15, baseType: !444, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2414, file: !2415, line: 16, baseType: !186, size: 8, offset: 192)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1753, file: !910, line: 1134, baseType: !108, size: 64, offset: 16640)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1753, file: !910, line: 1135, baseType: !108, size: 64, offset: 16704)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1753, file: !910, line: 1138, baseType: !13, size: 32, offset: 16768)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1753, file: !910, line: 1141, baseType: !307, size: 32, offset: 16800)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1753, file: !910, line: 1143, baseType: !2426, size: 64, offset: 16832)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !910, line: 735, size: 64, elements: !2427)
!2427 = !{!2428}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2426, file: !910, line: 736, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1753, file: !910, line: 1147, baseType: !1016, size: 128, offset: 16896)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1753, file: !910, line: 1149, baseType: !1752, size: 64, offset: 17024)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1753, file: !910, line: 1151, baseType: !2433, size: 64, offset: 17088)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !910, line: 1151, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1753, file: !910, line: 1188, baseType: !173, size: 64, offset: 17152)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1753, file: !910, line: 1191, baseType: !2437, size: 64, offset: 17216)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !910, line: 44, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1753, file: !910, line: 1194, baseType: !2440, size: 64, offset: 17280)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !910, line: 45, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1753, file: !910, line: 1197, baseType: !2443, size: 64, offset: 17344)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !910, line: 61, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1753, file: !910, line: 1199, baseType: !2446, size: 64, offset: 17408)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2448, line: 99, size: 128, elements: !2449)
!2448 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2449 = !{!2450, !2451, !2452}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2447, file: !2448, line: 100, baseType: !294, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2447, file: !2448, line: 101, baseType: !33, size: 32, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2447, file: !2448, line: 103, baseType: !54, size: 16, offset: 96)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1753, file: !910, line: 1202, baseType: !2454, size: 64, offset: 17472)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !910, line: 48, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1753, file: !910, line: 1205, baseType: !444, size: 64, offset: 17536)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1753, file: !910, line: 1206, baseType: !2458, size: 64, offset: 17600)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !592, line: 14, baseType: !2460)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !592, line: 12, size: 384, elements: !2461)
!2461 = !{!2462}
!2462 = !DIDerivedType(tag: DW_TAG_member, scope: !2460, file: !592, line: 13, baseType: !2463, size: 384)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2460, file: !592, line: 13, size: 384, elements: !2464)
!2464 = !{!2465, !2466, !2467, !2468}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2463, file: !592, line: 13, baseType: !11, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2463, file: !592, line: 13, baseType: !11, size: 32, offset: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2463, file: !592, line: 13, baseType: !11, size: 32, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2463, file: !592, line: 13, baseType: !2469, size: 256, offset: 128)
!2469 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2470, line: 37, size: 256, elements: !2471)
!2470 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2471 = !{!2472, !2477, !2490, !2496, !2505, !2532, !2537}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2469, file: !2470, line: 42, baseType: !2473, size: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 39, size: 64, elements: !2474)
!2474 = !{!2475, !2476}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2473, file: !2470, line: 40, baseType: !2124, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2473, file: !2470, line: 41, baseType: !129, size: 32, offset: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2469, file: !2470, line: 50, baseType: !2478, size: 192)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 45, size: 192, elements: !2479)
!2479 = !{!2480, !2482, !2483, !2489}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2478, file: !2470, line: 46, baseType: !2481, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !130, line: 95, baseType: !11)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2478, file: !2470, line: 47, baseType: !11, size: 32, offset: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2478, file: !2470, line: 48, baseType: !2484, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2470, line: 11, baseType: !2485)
!2485 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2470, line: 8, size: 64, elements: !2486)
!2486 = !{!2487, !2488}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2485, file: !2470, line: 9, baseType: !11, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2485, file: !2470, line: 10, baseType: !173, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2478, file: !2470, line: 49, baseType: !11, size: 32, offset: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2469, file: !2470, line: 57, baseType: !2491, size: 128)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 53, size: 128, elements: !2492)
!2492 = !{!2493, !2494, !2495}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2491, file: !2470, line: 54, baseType: !2124, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2491, file: !2470, line: 55, baseType: !129, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2491, file: !2470, line: 56, baseType: !2484, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2469, file: !2470, line: 66, baseType: !2497, size: 256)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 60, size: 256, elements: !2498)
!2498 = !{!2499, !2500, !2501, !2502, !2504}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2497, file: !2470, line: 61, baseType: !2124, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2497, file: !2470, line: 62, baseType: !129, size: 32, offset: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2497, file: !2470, line: 63, baseType: !11, size: 32, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2497, file: !2470, line: 64, baseType: !2503, size: 64, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !130, line: 94, baseType: !636)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2497, file: !2470, line: 65, baseType: !2503, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2469, file: !2470, line: 105, baseType: !2506, size: 256)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 69, size: 256, elements: !2507)
!2507 = !{!2508, !2509}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2506, file: !2470, line: 70, baseType: !173, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, scope: !2506, file: !2470, line: 79, baseType: !2510, size: 192, offset: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2506, file: !2470, line: 79, size: 192, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2521, !2526}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2510, file: !2470, line: 81, baseType: !11, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2510, file: !2470, line: 86, baseType: !475, size: 16)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2510, file: !2470, line: 92, baseType: !2515, size: 192)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2510, file: !2470, line: 88, size: 192, elements: !2516)
!2516 = !{!2517, !2519, !2520}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2515, file: !2470, line: 89, baseType: !2518, size: 64)
!2518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 64, elements: !1911)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2515, file: !2470, line: 90, baseType: !173, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2515, file: !2470, line: 91, baseType: !173, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2510, file: !2470, line: 97, baseType: !2522, size: 96)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2510, file: !2470, line: 94, size: 96, elements: !2523)
!2523 = !{!2524, !2525}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2522, file: !2470, line: 95, baseType: !2518, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2522, file: !2470, line: 96, baseType: !105, size: 32, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2510, file: !2470, line: 103, baseType: !2527, size: 128)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2510, file: !2470, line: 99, size: 128, elements: !2528)
!2528 = !{!2529, !2530, !2531}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2527, file: !2470, line: 100, baseType: !444, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2527, file: !2470, line: 101, baseType: !105, size: 32, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2527, file: !2470, line: 102, baseType: !105, size: 32, offset: 96)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2469, file: !2470, line: 111, baseType: !2533, size: 128)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 108, size: 128, elements: !2534)
!2534 = !{!2535, !2536}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2533, file: !2470, line: 109, baseType: !264, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2533, file: !2470, line: 110, baseType: !11, size: 32, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2469, file: !2470, line: 118, baseType: !2538, size: 128)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2470, line: 114, size: 128, elements: !2539)
!2539 = !{!2540, !2541, !2542}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2538, file: !2470, line: 115, baseType: !173, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2538, file: !2470, line: 116, baseType: !11, size: 32, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2538, file: !2470, line: 117, baseType: !66, size: 32, offset: 96)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1753, file: !910, line: 1208, baseType: !2319, size: 448, offset: 17664)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1753, file: !910, line: 1215, baseType: !108, size: 64, offset: 18112)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1753, file: !910, line: 1217, baseType: !108, size: 64, offset: 18176)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1753, file: !910, line: 1219, baseType: !108, size: 64, offset: 18240)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1753, file: !910, line: 1223, baseType: !2548, size: 64, offset: 18304)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2549, line: 99, baseType: !2550)
!2549 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2549, line: 99, size: 64, elements: !2551)
!2551 = !{!2552}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2550, file: !2549, line: 99, baseType: !1988, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1753, file: !910, line: 1225, baseType: !57, size: 32, offset: 18368)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1753, file: !910, line: 1226, baseType: !11, size: 32, offset: 18400)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1753, file: !910, line: 1227, baseType: !11, size: 32, offset: 18432)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1753, file: !910, line: 1231, baseType: !2557, size: 64, offset: 18496)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !910, line: 1231, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1753, file: !910, line: 1233, baseType: !132, size: 128, offset: 18560)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1753, file: !910, line: 1240, baseType: !2561, size: 64, offset: 18688)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !910, line: 62, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1753, file: !910, line: 1242, baseType: !2564, size: 64, offset: 18752)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !910, line: 1242, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1753, file: !910, line: 1244, baseType: !132, size: 128, offset: 18816)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1753, file: !910, line: 1245, baseType: !2568, size: 64, offset: 18944)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !910, line: 51, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1753, file: !910, line: 1246, baseType: !302, size: 256, offset: 19008)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1753, file: !910, line: 1247, baseType: !66, size: 32, offset: 19264)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1753, file: !910, line: 1250, baseType: !2573, size: 64, offset: 19328)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !910, line: 57, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1753, file: !910, line: 1251, baseType: !302, size: 256, offset: 19392)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1753, file: !910, line: 1252, baseType: !132, size: 128, offset: 19648)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1753, file: !910, line: 1259, baseType: !908, size: 64, offset: 19776)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1753, file: !910, line: 1260, baseType: !475, size: 16, offset: 19840)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1753, file: !910, line: 1261, baseType: !475, size: 16, offset: 19856)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1753, file: !910, line: 1314, baseType: !2581, size: 64, offset: 19904)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2583, line: 62, size: 256, align: 256, elements: !2584)
!2583 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2584 = !{!2585, !2586, !2587, !2588, !2589, !2590, !2591}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2582, file: !2583, line: 75, baseType: !105, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2582, file: !2583, line: 90, baseType: !105, size: 32, offset: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2582, file: !2583, line: 112, baseType: !109, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2582, file: !2583, line: 132, baseType: !105, size: 32, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2582, file: !2583, line: 140, baseType: !105, size: 32, offset: 160)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2582, file: !2583, line: 149, baseType: !105, size: 32, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2582, file: !2583, line: 154, baseType: !2592, offset: 224)
!2592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, elements: !385)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1753, file: !910, line: 1315, baseType: !104, size: 32, offset: 19968)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1753, file: !910, line: 1316, baseType: !104, size: 32, offset: 20000)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1753, file: !910, line: 1321, baseType: !444, size: 64, offset: 20032)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1753, file: !910, line: 1325, baseType: !11, size: 32, offset: 20096)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1753, file: !910, line: 1326, baseType: !11, size: 32, offset: 20128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1753, file: !910, line: 1327, baseType: !11, size: 32, offset: 20160)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1753, file: !910, line: 1328, baseType: !11, size: 32, offset: 20192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1753, file: !910, line: 1329, baseType: !281, size: 128, align: 64, offset: 20224)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1753, file: !910, line: 1332, baseType: !2602, size: 128, offset: 20352)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2603, line: 51, size: 128, elements: !2604)
!2603 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2604 = !{!2605, !2610, !2611}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2602, file: !2603, line: 60, baseType: !2606, size: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2607, line: 7, size: 64, elements: !2608)
!2607 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2606, file: !2607, line: 12, baseType: !1985, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2602, file: !2603, line: 63, baseType: !186, size: 8, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2602, file: !2603, line: 70, baseType: !186, size: 8, offset: 72)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1753, file: !910, line: 1335, baseType: !948, size: 64, offset: 20480)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1753, file: !910, line: 1337, baseType: !2614, size: 128, offset: 20544)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2603, line: 39, size: 128, elements: !2615)
!2615 = !{!2616, !2617, !2618}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2614, file: !2603, line: 40, baseType: !1034, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2614, file: !2603, line: 42, baseType: !105, size: 32, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2614, file: !2603, line: 43, baseType: !105, size: 32, offset: 96)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1753, file: !910, line: 1340, baseType: !2620, size: 64, offset: 20672)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !910, line: 69, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1753, file: !910, line: 1351, baseType: !11, size: 32, offset: 20736)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1753, file: !910, line: 1352, baseType: !11, size: 32, offset: 20768)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1753, file: !910, line: 1354, baseType: !444, size: 64, offset: 20800)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1753, file: !910, line: 1364, baseType: !108, size: 64, offset: 20864)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1753, file: !910, line: 1365, baseType: !108, size: 64, offset: 20928)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1753, file: !910, line: 1412, baseType: !444, size: 64, offset: 20992)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1753, file: !910, line: 1453, baseType: !2629, size: 64, offset: 21056)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !910, line: 1453, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1753, file: !910, line: 1457, baseType: !2632, size: 64, offset: 21120)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !850, line: 61, size: 576, elements: !2634)
!2634 = !{!2635, !2642, !2661, !2664, !2665, !2698, !2708}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2633, file: !850, line: 62, baseType: !2636, size: 32)
!2636 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !850, line: 51, baseType: !66, size: 32, elements: !2637)
!2637 = !{!2638, !2639, !2640, !2641}
!2638 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!2639 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!2640 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!2641 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!2642 = !DIDerivedType(tag: DW_TAG_member, scope: !2633, file: !850, line: 64, baseType: !2643, size: 192, offset: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2633, file: !850, line: 64, size: 192, elements: !2644)
!2644 = !{!2645, !2656}
!2645 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !850, line: 65, baseType: !2646, size: 192)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !850, line: 65, size: 192, elements: !2647)
!2647 = !{!2648, !2655}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2646, file: !850, line: 66, baseType: !2649, size: 128)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2650, line: 50, size: 128, elements: !2651)
!2650 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2651 = !{!2652, !2653, !2654}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2649, file: !2650, line: 52, baseType: !444, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2649, file: !2650, line: 54, baseType: !66, size: 32, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2649, file: !2650, line: 55, baseType: !66, size: 32, offset: 96)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2646, file: !850, line: 67, baseType: !444, size: 64, offset: 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !850, line: 70, baseType: !2657, size: 192)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !850, line: 70, size: 192, elements: !2658)
!2658 = !{!2659, !2660}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2657, file: !850, line: 71, baseType: !281, size: 128, align: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2657, file: !850, line: 72, baseType: !444, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2633, file: !850, line: 76, baseType: !2662, size: 64, offset: 256)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !850, line: 76, flags: DIFlagFwdDecl)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2633, file: !850, line: 77, baseType: !444, size: 64, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2633, file: !850, line: 79, baseType: !2666, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2650, line: 25, size: 256, elements: !2668)
!2668 = !{!2669, !2675, !2679}
!2669 = !DIDerivedType(tag: DW_TAG_member, scope: !2667, file: !2650, line: 26, baseType: !2670, size: 128)
!2670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2667, file: !2650, line: 26, size: 128, elements: !2671)
!2671 = !{!2672, !2674}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2670, file: !2650, line: 27, baseType: !2673, size: 128)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 128, elements: !2193)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2670, file: !2650, line: 28, baseType: !2673, size: 128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2667, file: !2650, line: 31, baseType: !2676, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2678)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2650, line: 23, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, scope: !2667, file: !2650, line: 33, baseType: !2680, size: 64, offset: 192)
!2680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2667, file: !2650, line: 33, size: 64, elements: !2681)
!2681 = !{!2682, !2688, !2693}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2680, file: !2650, line: 38, baseType: !2683, size: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2680, file: !2650, line: 34, size: 64, elements: !2684)
!2684 = !{!2685, !2686, !2687}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2683, file: !2650, line: 35, baseType: !433, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2683, file: !2650, line: 36, baseType: !42, size: 8, offset: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2683, file: !2650, line: 37, baseType: !42, size: 8, offset: 40)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2680, file: !2650, line: 42, baseType: !2689, size: 16)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2680, file: !2650, line: 39, size: 16, elements: !2690)
!2690 = !{!2691, !2692}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2689, file: !2650, line: 40, baseType: !42, size: 8)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2689, file: !2650, line: 41, baseType: !42, size: 8, offset: 8)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2680, file: !2650, line: 46, baseType: !2694, size: 16)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2680, file: !2650, line: 43, size: 16, elements: !2695)
!2695 = !{!2696, !2697}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2694, file: !2650, line: 44, baseType: !42, size: 8)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2694, file: !2650, line: 45, baseType: !42, size: 8, offset: 8)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2633, file: !850, line: 81, baseType: !2699, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !850, line: 85, size: 384, elements: !2701)
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2700, file: !850, line: 86, baseType: !2662, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2700, file: !850, line: 87, baseType: !444, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2700, file: !850, line: 88, baseType: !444, size: 64, offset: 128)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2700, file: !850, line: 89, baseType: !444, size: 64, offset: 192)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2700, file: !850, line: 90, baseType: !186, size: 8, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2700, file: !850, line: 92, baseType: !2699, size: 64, offset: 320)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2633, file: !850, line: 82, baseType: !66, size: 32, offset: 512)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1753, file: !910, line: 1463, baseType: !2710, offset: 21184)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !910, line: 739, elements: !745)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1753, file: !910, line: 1470, baseType: !281, size: 128, align: 64, offset: 21184)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1753, file: !910, line: 1471, baseType: !348, size: 32, offset: 21312)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1753, file: !910, line: 1472, baseType: !11, size: 32, offset: 21344)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1753, file: !910, line: 1474, baseType: !1752, size: 64, offset: 21376)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1753, file: !910, line: 1475, baseType: !2716, size: 320, offset: 21440)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2717, line: 11, size: 320, elements: !2718)
!2717 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2718 = !{!2719, !2720, !2721, !2726}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2716, file: !2717, line: 16, baseType: !361, size: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2716, file: !2717, line: 17, baseType: !444, size: 64, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2716, file: !2717, line: 18, baseType: !2722, size: 64, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !2725}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2716, file: !2717, line: 19, baseType: !104, size: 32, offset: 256)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1753, file: !910, line: 1478, baseType: !2728, size: 64, offset: 21760)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !910, line: 1478, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1753, file: !910, line: 1482, baseType: !348, size: 32, offset: 21824)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1753, file: !910, line: 1489, baseType: !173, size: 64, offset: 21888)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1753, file: !910, line: 1504, baseType: !173, size: 64, offset: 21952)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1753, file: !910, line: 1505, baseType: !109, size: 64, offset: 22016)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1753, file: !910, line: 1506, baseType: !108, size: 64, offset: 22080)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1753, file: !910, line: 1507, baseType: !109, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1753, file: !910, line: 1508, baseType: !109, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1753, file: !910, line: 1509, baseType: !109, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1753, file: !910, line: 1510, baseType: !281, size: 128, align: 64, offset: 22208)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1753, file: !910, line: 1511, baseType: !11, size: 32, offset: 22336)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1753, file: !910, line: 1515, baseType: !2741, size: 64, offset: 22400)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !276, line: 56, size: 64, elements: !2742)
!2742 = !{!2743}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2741, file: !276, line: 57, baseType: !279, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1753, file: !910, line: 1518, baseType: !2741, size: 64, offset: 22464)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1753, file: !910, line: 1528, baseType: !281, size: 128, align: 64, offset: 22528)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1753, file: !910, line: 1552, baseType: !2747, size: 35328, offset: 23040)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2748, line: 430, size: 35328, elements: !2749)
!2748 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2749 = !{!2750, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2779, !2780, !2781, !2782, !2783, !2784, !2787, !2788, !2789, !2790}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2747, file: !2748, line: 432, baseType: !2751, size: 192)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2752, size: 192, elements: !339)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2753, line: 16, size: 64, elements: !2754)
!2753 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2754 = !{!2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2752, file: !2753, line: 17, baseType: !52, size: 16)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2752, file: !2753, line: 18, baseType: !52, size: 16, offset: 16)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2752, file: !2753, line: 19, baseType: !52, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2752, file: !2753, line: 19, baseType: !52, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2752, file: !2753, line: 19, baseType: !52, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2752, file: !2753, line: 19, baseType: !52, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2752, file: !2753, line: 19, baseType: !52, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2752, file: !2753, line: 20, baseType: !52, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2752, file: !2753, line: 20, baseType: !52, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2752, file: !2753, line: 20, baseType: !52, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2752, file: !2753, line: 20, baseType: !52, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2752, file: !2753, line: 20, baseType: !52, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2752, file: !2753, line: 20, baseType: !52, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2747, file: !2748, line: 436, baseType: !444, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2747, file: !2748, line: 440, baseType: !54, size: 16, offset: 256)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2747, file: !2748, line: 441, baseType: !54, size: 16, offset: 272)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2747, file: !2748, line: 442, baseType: !54, size: 16, offset: 288)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2747, file: !2748, line: 443, baseType: !54, size: 16, offset: 304)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2747, file: !2748, line: 447, baseType: !444, size: 64, offset: 320)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2747, file: !2748, line: 448, baseType: !444, size: 64, offset: 384)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2747, file: !2748, line: 459, baseType: !2776, size: 256, offset: 448)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2777, size: 256, elements: !366)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2748, line: 428, flags: DIFlagFwdDecl)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2747, file: !2748, line: 461, baseType: !444, size: 64, offset: 704)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2747, file: !2748, line: 463, baseType: !444, size: 64, offset: 768)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2747, file: !2748, line: 465, baseType: !444, size: 64, offset: 832)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2747, file: !2748, line: 466, baseType: !444, size: 64, offset: 896)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2747, file: !2748, line: 467, baseType: !444, size: 64, offset: 960)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2747, file: !2748, line: 473, baseType: !2785, size: 64, offset: 1024)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2748, line: 10, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2747, file: !2748, line: 480, baseType: !444, size: 64, offset: 1088)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2747, file: !2748, line: 482, baseType: !66, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2747, file: !2748, line: 491, baseType: !104, size: 32, offset: 1184)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2747, file: !2748, line: 501, baseType: !2791, size: 33792, offset: 1536)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2792, line: 448, size: 33792, elements: !2793)
!2792 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2793 = !{!2794, !2795, !2796, !2960, !2961, !2967, !2968}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2791, file: !2792, line: 461, baseType: !66, size: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2791, file: !2792, line: 468, baseType: !444, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2791, file: !2792, line: 476, baseType: !2797, size: 64, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2792, line: 356, size: 33280, align: 512, elements: !2799)
!2799 = !{!2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2798, file: !2792, line: 358, baseType: !66, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2798, file: !2792, line: 361, baseType: !66, size: 32, offset: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2798, file: !2792, line: 364, baseType: !108, size: 64, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2798, file: !2792, line: 367, baseType: !108, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2798, file: !2792, line: 370, baseType: !108, size: 64, offset: 192)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2798, file: !2792, line: 373, baseType: !66, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2798, file: !2792, line: 376, baseType: !66, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2798, file: !2792, line: 391, baseType: !66, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2798, file: !2792, line: 394, baseType: !66, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2798, file: !2792, line: 397, baseType: !2810, size: 32768, offset: 512)
!2810 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2792, line: 348, size: 32768, elements: !2811)
!2811 = !{!2812, !2827, !2866, !2943, !2956}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2810, file: !2792, line: 349, baseType: !2813, size: 896)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2792, line: 12, size: 896, elements: !2814)
!2814 = !{!2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2826}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2813, file: !2792, line: 13, baseType: !104, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2813, file: !2792, line: 14, baseType: !104, size: 32, offset: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2813, file: !2792, line: 15, baseType: !104, size: 32, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2813, file: !2792, line: 16, baseType: !104, size: 32, offset: 96)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2813, file: !2792, line: 17, baseType: !104, size: 32, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2813, file: !2792, line: 18, baseType: !104, size: 32, offset: 160)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2813, file: !2792, line: 19, baseType: !104, size: 32, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2813, file: !2792, line: 22, baseType: !2823, size: 640, offset: 224)
!2823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 640, elements: !2824)
!2824 = !{!2825}
!2825 = !DISubrange(count: 20)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2813, file: !2792, line: 25, baseType: !104, size: 32, offset: 864)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2810, file: !2792, line: 350, baseType: !2828, size: 4096, align: 128)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2792, line: 34, size: 4096, align: 128, elements: !2829)
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2849, !2850, !2851, !2855, !2857, !2861}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2828, file: !2792, line: 35, baseType: !52, size: 16)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2828, file: !2792, line: 36, baseType: !52, size: 16, offset: 16)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2828, file: !2792, line: 37, baseType: !52, size: 16, offset: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2828, file: !2792, line: 38, baseType: !52, size: 16, offset: 48)
!2834 = !DIDerivedType(tag: DW_TAG_member, scope: !2828, file: !2792, line: 39, baseType: !2835, size: 128, offset: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2828, file: !2792, line: 39, size: 128, elements: !2836)
!2836 = !{!2837, !2842}
!2837 = !DIDerivedType(tag: DW_TAG_member, scope: !2835, file: !2792, line: 40, baseType: !2838, size: 128)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2835, file: !2792, line: 40, size: 128, elements: !2839)
!2839 = !{!2840, !2841}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2838, file: !2792, line: 41, baseType: !108, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2838, file: !2792, line: 42, baseType: !108, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, scope: !2835, file: !2792, line: 44, baseType: !2843, size: 128)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2835, file: !2792, line: 44, size: 128, elements: !2844)
!2844 = !{!2845, !2846, !2847, !2848}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2843, file: !2792, line: 45, baseType: !104, size: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2843, file: !2792, line: 46, baseType: !104, size: 32, offset: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2843, file: !2792, line: 47, baseType: !104, size: 32, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2843, file: !2792, line: 48, baseType: !104, size: 32, offset: 96)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2828, file: !2792, line: 51, baseType: !104, size: 32, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2828, file: !2792, line: 52, baseType: !104, size: 32, offset: 224)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2828, file: !2792, line: 55, baseType: !2852, size: 1024, offset: 256)
!2852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1024, elements: !2853)
!2853 = !{!2854}
!2854 = !DISubrange(count: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2828, file: !2792, line: 58, baseType: !2856, size: 2048, offset: 1280)
!2856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2048, elements: !2389)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2828, file: !2792, line: 60, baseType: !2858, size: 384, offset: 3328)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 384, elements: !2859)
!2859 = !{!2860}
!2860 = !DISubrange(count: 12)
!2861 = !DIDerivedType(tag: DW_TAG_member, scope: !2828, file: !2792, line: 62, baseType: !2862, size: 384, offset: 3712)
!2862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2828, file: !2792, line: 62, size: 384, elements: !2863)
!2863 = !{!2864, !2865}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2862, file: !2792, line: 63, baseType: !2858, size: 384)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2862, file: !2792, line: 64, baseType: !2858, size: 384)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2810, file: !2792, line: 351, baseType: !2867, size: 1088)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2792, line: 79, size: 1088, elements: !2868)
!2868 = !{!2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2942}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2867, file: !2792, line: 80, baseType: !104, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2867, file: !2792, line: 81, baseType: !104, size: 32, offset: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2867, file: !2792, line: 82, baseType: !104, size: 32, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2867, file: !2792, line: 83, baseType: !104, size: 32, offset: 96)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2867, file: !2792, line: 84, baseType: !104, size: 32, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2867, file: !2792, line: 85, baseType: !104, size: 32, offset: 160)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2867, file: !2792, line: 86, baseType: !104, size: 32, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2867, file: !2792, line: 88, baseType: !2823, size: 640, offset: 224)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2867, file: !2792, line: 89, baseType: !42, size: 8, offset: 864)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2867, file: !2792, line: 90, baseType: !42, size: 8, offset: 872)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2867, file: !2792, line: 91, baseType: !42, size: 8, offset: 880)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2867, file: !2792, line: 92, baseType: !42, size: 8, offset: 888)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2867, file: !2792, line: 93, baseType: !42, size: 8, offset: 896)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2867, file: !2792, line: 94, baseType: !42, size: 8, offset: 904)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2867, file: !2792, line: 95, baseType: !2884, size: 64, offset: 960)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2886, line: 11, size: 128, elements: !2887)
!2886 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2887 = !{!2888, !2889}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2885, file: !2886, line: 12, baseType: !264, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2885, file: !2886, line: 13, baseType: !2890, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2892, line: 103, size: 1344, elements: !2893)
!2892 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2893 = !{!2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2922, !2923, !2924}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2891, file: !2892, line: 109, baseType: !444, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2891, file: !2892, line: 110, baseType: !444, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2891, file: !2892, line: 111, baseType: !444, size: 64, offset: 128)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2891, file: !2892, line: 112, baseType: !444, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2891, file: !2892, line: 113, baseType: !444, size: 64, offset: 256)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2891, file: !2892, line: 114, baseType: !444, size: 64, offset: 320)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2891, file: !2892, line: 117, baseType: !444, size: 64, offset: 384)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2891, file: !2892, line: 118, baseType: !444, size: 64, offset: 448)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2891, file: !2892, line: 119, baseType: !444, size: 64, offset: 512)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2891, file: !2892, line: 120, baseType: !444, size: 64, offset: 576)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2891, file: !2892, line: 121, baseType: !444, size: 64, offset: 640)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2891, file: !2892, line: 122, baseType: !444, size: 64, offset: 704)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2891, file: !2892, line: 123, baseType: !444, size: 64, offset: 768)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2891, file: !2892, line: 124, baseType: !444, size: 64, offset: 832)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2891, file: !2892, line: 125, baseType: !444, size: 64, offset: 896)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2891, file: !2892, line: 139, baseType: !444, size: 64, offset: 960)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2891, file: !2892, line: 142, baseType: !444, size: 64, offset: 1024)
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2891, file: !2892, line: 144, baseType: !2912, size: 64, offset: 1088)
!2912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2891, file: !2892, line: 144, size: 64, elements: !2913)
!2913 = !{!2914, !2915, !2916}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2912, file: !2892, line: 146, baseType: !52, size: 16)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2912, file: !2892, line: 148, baseType: !108, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2912, file: !2892, line: 150, baseType: !2917, size: 64)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2892, line: 59, size: 64, elements: !2918)
!2918 = !{!2919, !2920, !2921}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2917, file: !2892, line: 61, baseType: !108, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2917, file: !2892, line: 63, baseType: !108, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2917, file: !2892, line: 65, baseType: !108, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2891, file: !2892, line: 153, baseType: !444, size: 64, offset: 1152)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2891, file: !2892, line: 154, baseType: !444, size: 64, offset: 1216)
!2924 = !DIDerivedType(tag: DW_TAG_member, scope: !2891, file: !2892, line: 156, baseType: !2925, size: 64, offset: 1280)
!2925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2891, file: !2892, line: 156, size: 64, elements: !2926)
!2926 = !{!2927, !2928, !2929}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2925, file: !2892, line: 158, baseType: !52, size: 16)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2925, file: !2892, line: 160, baseType: !108, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2925, file: !2892, line: 162, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2892, line: 69, size: 64, elements: !2931)
!2931 = !{!2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2930, file: !2892, line: 71, baseType: !108, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2930, file: !2892, line: 73, baseType: !108, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2930, file: !2892, line: 75, baseType: !108, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2930, file: !2892, line: 77, baseType: !108, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2930, file: !2892, line: 80, baseType: !108, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2930, file: !2892, line: 83, baseType: !108, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2930, file: !2892, line: 86, baseType: !108, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2930, file: !2892, line: 88, baseType: !108, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2930, file: !2892, line: 93, baseType: !108, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2930, file: !2892, line: 100, baseType: !108, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2867, file: !2792, line: 96, baseType: !104, size: 32, offset: 1024)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2810, file: !2792, line: 352, baseType: !2944, size: 4608, align: 512)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2792, line: 333, size: 4608, align: 512, elements: !2945)
!2945 = !{!2946, !2947, !2954}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2944, file: !2792, line: 334, baseType: !2828, size: 4096, align: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2944, file: !2792, line: 335, baseType: !2948, size: 512, offset: 4096)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2792, line: 312, size: 512, elements: !2949)
!2949 = !{!2950, !2951, !2952}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2948, file: !2792, line: 313, baseType: !108, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2948, file: !2792, line: 314, baseType: !108, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2948, file: !2792, line: 315, baseType: !2953, size: 384, offset: 128)
!2953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 384, elements: !493)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2944, file: !2792, line: 336, baseType: !2955, offset: 4608)
!2955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, elements: !385)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2810, file: !2792, line: 353, baseType: !2957, size: 32768)
!2957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32768, elements: !2958)
!2958 = !{!2959}
!2959 = !DISubrange(count: 4096)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2791, file: !2792, line: 484, baseType: !2797, size: 64, offset: 192)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2791, file: !2792, line: 491, baseType: !2962, size: 128, offset: 256)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2792, line: 404, size: 128, elements: !2963)
!2963 = !{!2964, !2965, !2966}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2962, file: !2792, line: 424, baseType: !108, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2962, file: !2792, line: 432, baseType: !66, size: 32, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2962, file: !2792, line: 440, baseType: !66, size: 32, offset: 96)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2791, file: !2792, line: 498, baseType: !2962, size: 128, offset: 384)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2791, file: !2792, line: 508, baseType: !2798, size: 33280, align: 512, offset: 512)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1734, file: !1735, line: 16, baseType: !370, size: 192, offset: 512)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1734, file: !1735, line: 17, baseType: !33, size: 32, offset: 704)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1339, file: !117, line: 1240, baseType: !173, size: 64, offset: 6912)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1339, file: !117, line: 1243, baseType: !104, size: 32, offset: 6976)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1339, file: !117, line: 1245, baseType: !261, size: 64, offset: 7040)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1339, file: !117, line: 1246, baseType: !261, size: 64, offset: 7104)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1339, file: !117, line: 1248, baseType: !105, size: 32, offset: 7168)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1339, file: !117, line: 1249, baseType: !2977, size: 64, offset: 7232)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !117, line: 634, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1339, file: !117, line: 1252, baseType: !2980, size: 256, offset: 7296)
!2980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !2853)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1339, file: !117, line: 1253, baseType: !2982, size: 128, offset: 7552)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2983, line: 21, baseType: !2984)
!2983 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2983, line: 19, size: 128, elements: !2985)
!2985 = !{!2986}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2984, file: !2983, line: 20, baseType: !2987, size: 128)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 128, elements: !2193)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1339, file: !117, line: 1255, baseType: !66, size: 32, offset: 7680)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1339, file: !117, line: 1261, baseType: !302, size: 256, offset: 7744)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1339, file: !117, line: 1267, baseType: !162, size: 64, offset: 8000)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1339, file: !117, line: 1269, baseType: !2992, size: 64, offset: 8064)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2994)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !81, line: 128, size: 1024, align: 512, elements: !2995)
!2995 = !{!2996, !3000, !3001, !3008, !3014, !3018, !3022, !3026, !3027, !3031, !3035, !3040, !3044}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2994, file: !81, line: 129, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!11, !79, !66}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2994, file: !81, line: 130, baseType: !2997, size: 64, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2994, file: !81, line: 131, baseType: !3002, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!11, !3005, !3007}
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2994, file: !81, line: 132, baseType: !3009, size: 64, offset: 192)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!11, !3005, !66, !162, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2994, file: !81, line: 134, baseType: !3015, size: 64, offset: 256)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!11, !3005}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2994, file: !81, line: 135, baseType: !3019, size: 64, offset: 320)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!11, !79}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2994, file: !81, line: 136, baseType: !3023, size: 64, offset: 384)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{null, !79}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2994, file: !81, line: 137, baseType: !3023, size: 64, offset: 448)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2994, file: !81, line: 138, baseType: !3028, size: 64, offset: 512)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !79, !115}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2994, file: !81, line: 139, baseType: !3032, size: 64, offset: 576)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!192, !79, !192, !11}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2994, file: !81, line: 140, baseType: !3036, size: 64, offset: 640)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!74, !3039}
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2994, file: !81, line: 141, baseType: !3041, size: 64, offset: 704)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!11, !1261, !186}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2994, file: !81, line: 142, baseType: !3045, size: 64, offset: 768)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!79, !79, !3048}
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1339, file: !117, line: 1271, baseType: !3051, size: 448, offset: 8128)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1516, line: 63, size: 448, elements: !3052)
!3052 = !{!3053, !3058, !3059, !3060, !3061, !3062, !3063}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3051, file: !1516, line: 64, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!444, !3057, !1514}
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3051, file: !1516, line: 66, baseType: !3054, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3051, file: !1516, line: 69, baseType: !264, size: 64, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3051, file: !1516, line: 70, baseType: !11, size: 32, offset: 192)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3051, file: !1516, line: 71, baseType: !66, size: 32, offset: 224)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3051, file: !1516, line: 74, baseType: !132, size: 128, offset: 256)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3051, file: !1516, line: 85, baseType: !3064, size: 64, offset: 384)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1339, file: !117, line: 1274, baseType: !294, size: 64, offset: 8576)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1339, file: !117, line: 1280, baseType: !294, size: 64, offset: 8640)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1339, file: !117, line: 1283, baseType: !11, size: 32, offset: 8704)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1339, file: !117, line: 1286, baseType: !1250, size: 32, offset: 8736)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1339, file: !117, line: 1289, baseType: !3070, size: 64, offset: 8768)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !858, line: 18, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1339, file: !117, line: 1290, baseType: !357, size: 64, offset: 8832)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1339, file: !117, line: 1297, baseType: !587, size: 64, offset: 8896)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1339, file: !117, line: 1304, baseType: !3075, size: 64, offset: 8960)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3076, line: 49, size: 64, elements: !3077)
!3076 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3077 = !{!3078}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3075, file: !3076, line: 50, baseType: !3079, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3076, line: 41, size: 512, align: 512, elements: !3081)
!3081 = !{!3082, !3083, !3088}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3080, file: !3076, line: 43, baseType: !13, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3080, file: !3076, line: 45, baseType: !3084, size: 192, offset: 64)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3076, line: 29, size: 192, elements: !3085)
!3085 = !{!3086, !3087}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3084, file: !3076, line: 30, baseType: !132, size: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3084, file: !3076, line: 32, baseType: !264, size: 64, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3080, file: !3076, line: 46, baseType: !264, size: 64, offset: 256)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1339, file: !117, line: 1305, baseType: !3075, size: 64, offset: 9024)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1339, file: !117, line: 1306, baseType: !281, size: 128, align: 64, offset: 9088)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1339, file: !117, line: 1307, baseType: !857, size: 256, offset: 9216)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1339, file: !117, line: 1309, baseType: !302, size: 256, offset: 9472)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1339, file: !117, line: 1314, baseType: !11, size: 32, offset: 9728)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1339, file: !117, line: 1317, baseType: !13, size: 32, align: 512, offset: 10240)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1339, file: !117, line: 1318, baseType: !132, size: 128, offset: 10304)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1339, file: !117, line: 1320, baseType: !13, size: 32, offset: 10432)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1339, file: !117, line: 1321, baseType: !132, size: 128, offset: 10496)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !116, file: !117, line: 656, baseType: !1000, size: 64, offset: 512)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !116, file: !117, line: 659, baseType: !173, size: 64, offset: 576)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !116, file: !117, line: 663, baseType: !444, size: 64, offset: 640)
!3101 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !117, line: 671, baseType: !3102, size: 32, offset: 704)
!3102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !117, line: 671, size: 32, elements: !3103)
!3103 = !{!3104, !3106}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3102, file: !117, line: 672, baseType: !3105, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3102, file: !117, line: 673, baseType: !66, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !116, file: !117, line: 675, baseType: !218, size: 32, offset: 736)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !116, file: !117, line: 676, baseType: !253, size: 64, offset: 768)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !116, file: !117, line: 677, baseType: !257, size: 128, offset: 832)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !116, file: !117, line: 678, baseType: !257, size: 128, offset: 960)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !116, file: !117, line: 679, baseType: !257, size: 128, offset: 1088)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !116, file: !117, line: 680, baseType: !13, size: 32, offset: 1216)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !116, file: !117, line: 681, baseType: !54, size: 16, offset: 1248)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !116, file: !117, line: 682, baseType: !42, size: 8, offset: 1264)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !116, file: !117, line: 683, baseType: !42, size: 8, offset: 1272)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !116, file: !117, line: 684, baseType: !1647, size: 64, offset: 1280)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !116, file: !117, line: 691, baseType: !444, size: 64, offset: 1344)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !116, file: !117, line: 692, baseType: !449, size: 320, offset: 1408)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !116, file: !117, line: 694, baseType: !444, size: 64, offset: 1728)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !116, file: !117, line: 695, baseType: !444, size: 64, offset: 1792)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !116, file: !117, line: 697, baseType: !361, size: 128, offset: 1856)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !116, file: !117, line: 698, baseType: !132, size: 128, offset: 1984)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !116, file: !117, line: 707, baseType: !132, size: 128, offset: 2112)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !116, file: !117, line: 708, baseType: !132, size: 128, offset: 2240)
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !117, line: 709, baseType: !3126, size: 128, offset: 2368)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !117, line: 709, size: 128, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3126, file: !117, line: 710, baseType: !357, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3126, file: !117, line: 711, baseType: !281, size: 128, align: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !116, file: !117, line: 713, baseType: !296, size: 64, offset: 2496)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !116, file: !117, line: 714, baseType: !296, size: 64, offset: 2560)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !116, file: !117, line: 715, baseType: !33, size: 32, offset: 2624)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !116, file: !117, line: 716, baseType: !33, size: 32, offset: 2656)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !116, file: !117, line: 717, baseType: !33, size: 32, offset: 2688)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !116, file: !117, line: 719, baseType: !33, size: 32, offset: 2720)
!3136 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !117, line: 721, baseType: !3137, size: 64, offset: 2752)
!3137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !117, line: 721, size: 64, elements: !3138)
!3138 = !{!3139, !3140}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3137, file: !117, line: 722, baseType: !618, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3137, file: !117, line: 723, baseType: !1394, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !116, file: !117, line: 725, baseType: !3142, size: 64, offset: 2816)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !117, line: 725, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !116, file: !117, line: 726, baseType: !1001, size: 1536, align: 64, offset: 2880)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !116, file: !117, line: 727, baseType: !132, size: 128, offset: 4416)
!3146 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !117, line: 728, baseType: !3147, size: 64, offset: 4544)
!3147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !117, line: 728, size: 64, elements: !3148)
!3148 = !{!3149, !3150, !3153, !3154}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3147, file: !117, line: 729, baseType: !948, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3147, file: !117, line: 730, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !117, line: 730, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3147, file: !117, line: 731, baseType: !192, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3147, file: !117, line: 732, baseType: !66, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !116, file: !117, line: 735, baseType: !105, size: 32, offset: 4608)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !116, file: !117, line: 738, baseType: !105, size: 32, offset: 4640)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !116, file: !117, line: 739, baseType: !2977, size: 64, offset: 4672)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !116, file: !117, line: 750, baseType: !173, size: 64, offset: 4736)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !80, file: !81, line: 91, baseType: !3160, size: 256, offset: 448)
!3160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !2853)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !80, file: !81, line: 94, baseType: !3162, size: 64, offset: 704)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3163, line: 25, size: 64, elements: !3164)
!3163 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3164 = !{!3165}
!3165 = !DIDerivedType(tag: DW_TAG_member, scope: !3162, file: !3163, line: 26, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3162, file: !3163, line: 26, size: 64, elements: !3167)
!3167 = !{!3168, !3169}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3166, file: !3163, line: 28, baseType: !109, size: 64, align: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, scope: !3166, file: !3163, line: 30, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3166, file: !3163, line: 30, size: 64, elements: !3171)
!3171 = !{!3172, !3173}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3170, file: !3163, line: 31, baseType: !13, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3170, file: !3163, line: 32, baseType: !11, size: 32, offset: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !80, file: !81, line: 95, baseType: !2992, size: 64, offset: 768)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !80, file: !81, line: 96, baseType: !1338, size: 64, offset: 832)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !80, file: !81, line: 97, baseType: !444, size: 64, offset: 896)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !80, file: !81, line: 98, baseType: !173, size: 64, offset: 960)
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !80, file: !81, line: 100, baseType: !3179, size: 128, offset: 1024)
!3179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !80, file: !81, line: 100, size: 128, elements: !3180)
!3180 = !{!3181, !3182}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3179, file: !81, line: 101, baseType: !132, size: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3179, file: !81, line: 102, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !80, file: !81, line: 104, baseType: !132, size: 128, offset: 1152)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !80, file: !81, line: 105, baseType: !132, size: 128, offset: 1280)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !80, file: !81, line: 113, baseType: !3187, size: 128, offset: 1408)
!3187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !80, file: !81, line: 109, size: 128, elements: !3188)
!3188 = !{!3189, !3190, !3191}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3187, file: !81, line: 110, baseType: !361, size: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3187, file: !81, line: 111, baseType: !86, size: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3187, file: !81, line: 112, baseType: !281, size: 128, align: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !75, file: !76, line: 72, baseType: !1338, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !75, file: !76, line: 73, baseType: !11, size: 32, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !75, file: !76, line: 74, baseType: !179, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !70, file: !71, line: 10, baseType: !79, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !7, file: !8, line: 15, baseType: !70, size: 128, offset: 320)
!3197 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.fs_struct.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/fs_struct\22 -D KBUILD_BASENAME=\22fs_struct\22 -D KBUILD_MODNAME=\22fs_struct\22 -D __KBUILD_MODNAME=kmod_fs_struct -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/fs_struct.ll fs/fs_struct.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !3198, retainedTypes: !3199, globals: !3204, splitDebugInlining: false, nameTableKind: None)
!3198 = !{!388, !1211, !1420, !1490, !1879, !2087, !2636}
!3199 = !{!173, !3200, !1752, !1010, !11, !104, !444, !3203}
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3202)
!3202 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !135)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!3204 = !{!0, !3205, !3212, !3238, !3240, !3242}
!3205 = !DIGlobalVariableExpression(var: !3206, expr: !DIExpression())
!3206 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule252", scope: !3207, file: !3, line: 43, type: !173, isLocal: true, isDefinition: true)
!3207 = distinct !DISubprogram(name: "set_fs_pwd", scope: !3, file: !3, line: 34, type: !4, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3208)
!3208 = !{!3209, !3210, !3211}
!3209 = !DILocalVariable(name: "fs", arg: 1, scope: !3207, file: !3, line: 34, type: !6)
!3210 = !DILocalVariable(name: "path", arg: 2, scope: !3207, file: !3, line: 34, type: !1261)
!3211 = !DILocalVariable(name: "old_pwd", scope: !3207, file: !3, line: 36, type: !70)
!3212 = !DIGlobalVariableExpression(var: !3213, expr: !DIExpression())
!3213 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule256", scope: !3214, file: !3, line: 74, type: !173, isLocal: true, isDefinition: true)
!3214 = distinct !DISubprogram(name: "chroot_fs_refs", scope: !3, file: !3, line: 58, type: !3215, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !1261, !1261}
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223, !3224, !3228, !3231, !3236}
!3218 = !DILocalVariable(name: "old_root", arg: 1, scope: !3214, file: !3, line: 58, type: !1261)
!3219 = !DILocalVariable(name: "new_root", arg: 2, scope: !3214, file: !3, line: 58, type: !1261)
!3220 = !DILocalVariable(name: "g", scope: !3214, file: !3, line: 60, type: !1752)
!3221 = !DILocalVariable(name: "p", scope: !3214, file: !3, line: 60, type: !1752)
!3222 = !DILocalVariable(name: "fs", scope: !3214, file: !3, line: 61, type: !6)
!3223 = !DILocalVariable(name: "count", scope: !3214, file: !3, line: 62, type: !11)
!3224 = !DILocalVariable(name: "__mptr", scope: !3225, file: !3, line: 65, type: !173)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 65, column: 2)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 65, column: 2)
!3227 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 65, column: 2)
!3228 = !DILocalVariable(name: "__mptr", scope: !3229, file: !3, line: 65, type: !173)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 65, column: 2)
!3230 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 65, column: 2)
!3231 = !DILocalVariable(name: "hits", scope: !3232, file: !3, line: 69, type: !11)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 68, column: 11)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 68, column: 7)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 65, column: 32)
!3235 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 65, column: 2)
!3236 = !DILocalVariable(name: "__mptr", scope: !3237, file: !3, line: 65, type: !173)
!3237 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 65, column: 2)
!3238 = !DIGlobalVariableExpression(var: !3239, expr: !DIExpression())
!3239 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_unshare_fs_struct257", scope: !3197, file: !3, line: 154, type: !173, isLocal: true, isDefinition: true)
!3240 = !DIGlobalVariableExpression(var: !3241, expr: !DIExpression())
!3241 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_current_umask258", scope: !3197, file: !3, line: 160, type: !173, isLocal: true, isDefinition: true)
!3242 = !DIGlobalVariableExpression(var: !3243, expr: !DIExpression())
!3243 = distinct !DIGlobalVariable(name: "init_fs", scope: !3197, file: !3, line: 163, type: !7, isLocal: false, isDefinition: true)
!3244 = !{!3245, !3246, !3247}
!3245 = !DILocalVariable(name: "fs", arg: 1, scope: !2, file: !3, line: 15, type: !6)
!3246 = !DILocalVariable(name: "path", arg: 2, scope: !2, file: !3, line: 15, type: !1261)
!3247 = !DILocalVariable(name: "old_root", scope: !2, file: !3, line: 17, type: !70)
!3248 = !{!"rsp"}
!3249 = !{i32 7, !"Dwarf Version", i32 5}
!3250 = !{i32 2, !"Debug Info Version", i32 3}
!3251 = !{i32 1, !"wchar_size", i32 2}
!3252 = !{i32 8, !"cf-protection-branch", i32 1}
!3253 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3254 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3255 = !{i32 1, !"Code Model", i32 2}
!3256 = !{i32 1, !"override-stack-alignment", i32 8}
!3257 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3258 = !DILocation(line: 15, column: 36, scope: !2)
!3259 = !DILocation(line: 15, column: 59, scope: !2)
!3260 = !DILocation(line: 17, column: 2, scope: !2)
!3261 = !DILocation(line: 17, column: 14, scope: !2)
!3262 = !DILocation(line: 19, column: 11, scope: !2)
!3263 = !DILocation(line: 19, column: 2, scope: !2)
!3264 = !DILocation(line: 20, column: 13, scope: !2)
!3265 = !DILocation(line: 20, column: 17, scope: !2)
!3266 = !DILocation(line: 20, column: 2, scope: !2)
!3267 = !DILocation(line: 21, column: 2, scope: !2)
!3268 = !DILocation(line: 21, column: 2, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !2, file: !3, line: 21, column: 2)
!3270 = !DILocation(line: 21, column: 2, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 21, column: 2)
!3272 = !DILocation(line: 21, column: 2, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 21, column: 2)
!3274 = !{i64 2153372502}
!3275 = !DILocation(line: 22, column: 13, scope: !2)
!3276 = !DILocation(line: 22, column: 17, scope: !2)
!3277 = !DILocation(line: 23, column: 2, scope: !2)
!3278 = !DILocation(line: 23, column: 6, scope: !2)
!3279 = !DILocation(line: 23, column: 14, scope: !2)
!3280 = !DILocation(line: 23, column: 13, scope: !2)
!3281 = !DILocation(line: 24, column: 2, scope: !2)
!3282 = !DILocation(line: 24, column: 2, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !2, file: !3, line: 24, column: 2)
!3284 = !DILocation(line: 24, column: 2, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 24, column: 2)
!3286 = !DILocation(line: 24, column: 2, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 24, column: 2)
!3288 = !{i64 2153375716}
!3289 = !DILocation(line: 24, column: 2, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 24, column: 2)
!3291 = !DILocation(line: 24, column: 2, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 24, column: 2)
!3293 = !{i64 2153375898}
!3294 = !DILocation(line: 25, column: 15, scope: !2)
!3295 = !DILocation(line: 25, column: 19, scope: !2)
!3296 = !DILocation(line: 25, column: 2, scope: !2)
!3297 = !DILocation(line: 26, column: 15, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !2, file: !3, line: 26, column: 6)
!3299 = !DILocation(line: 26, column: 6, scope: !3298)
!3300 = !DILocation(line: 26, column: 6, scope: !2)
!3301 = !DILocation(line: 27, column: 3, scope: !3298)
!3302 = !DILocation(line: 28, column: 1, scope: !2)
!3303 = !DISubprogram(name: "path_get", scope: !71, file: !71, line: 13, type: !3304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !1261}
!3306 = distinct !DISubprogram(name: "spin_lock", scope: !3307, file: !3307, line: 349, type: !3308, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3311)
!3307 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!3308 = !DISubroutineType(types: !3309)
!3309 = !{null, !3310}
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!3311 = !{!3312}
!3312 = !DILocalVariable(name: "lock", arg: 1, scope: !3306, file: !3307, line: 349, type: !3310)
!3313 = !DILocation(line: 349, column: 51, scope: !3306)
!3314 = !DILocation(line: 351, column: 2, scope: !3306)
!3315 = !DILocation(line: 352, column: 1, scope: !3306)
!3316 = distinct !DISubprogram(name: "__seqprop_spinlock_assert", scope: !58, file: !58, line: 275, type: !3317, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3321)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{null, !3319}
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!3321 = !{!3322}
!3322 = !DILocalVariable(name: "s", arg: 1, scope: !3316, file: !58, line: 275, type: !3319)
!3323 = !DILocation(line: 275, column: 1, scope: !3316)
!3324 = distinct !DISubprogram(name: "__seqprop_spinlock_preemptible", scope: !58, file: !58, line: 275, type: !3325, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3327)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!186, !3319}
!3327 = !{!3328}
!3328 = !DILocalVariable(name: "s", arg: 1, scope: !3324, file: !58, line: 275, type: !3319)
!3329 = !DILocation(line: 275, column: 1, scope: !3324)
!3330 = !DILocation(line: 275, column: 1, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3324, file: !58, line: 275, column: 1)
!3332 = distinct !DISubprogram(name: "__preempt_count_add", scope: !3333, file: !3333, line: 78, type: !2379, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3334)
!3333 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!3334 = !{!3335, !3336, !3339}
!3335 = !DILocalVariable(name: "val", arg: 1, scope: !3332, file: !3333, line: 78, type: !11)
!3336 = !DILocalVariable(name: "pao_ID__", scope: !3337, file: !3333, line: 80, type: !3338)
!3337 = distinct !DILexicalBlock(scope: !3332, file: !3333, line: 80, column: 2)
!3338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!3339 = !DILocalVariable(name: "pto_val__", scope: !3340, file: !3333, line: 80, type: !104)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !3333, line: 80, column: 2)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !3333, line: 80, column: 2)
!3342 = distinct !DILexicalBlock(scope: !3337, file: !3333, line: 80, column: 2)
!3343 = !DILocation(line: 78, column: 53, scope: !3332)
!3344 = !DILocation(line: 80, column: 2, scope: !3332)
!3345 = !DILocation(line: 80, column: 2, scope: !3337)
!3346 = !DILocation(line: 80, column: 2, scope: !3342)
!3347 = !DILocation(line: 80, column: 2, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3342, file: !3333, line: 80, column: 2)
!3349 = !{i64 2149520841}
!3350 = !DILocation(line: 80, column: 2, scope: !3341)
!3351 = !DILocation(line: 80, column: 2, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3341, file: !3333, line: 80, column: 2)
!3353 = !{i64 2149521136}
!3354 = !DILocation(line: 80, column: 2, scope: !3340)
!3355 = !{i64 2149521841}
!3356 = !DILocation(line: 81, column: 1, scope: !3332)
!3357 = distinct !DISubprogram(name: "do_write_seqcount_begin", scope: !58, file: !58, line: 539, type: !3358, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3361)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{null, !3360}
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!3361 = !{!3362}
!3362 = !DILocalVariable(name: "s", arg: 1, scope: !3357, file: !58, line: 539, type: !3360)
!3363 = !DILocation(line: 539, column: 56, scope: !3357)
!3364 = !DILocation(line: 541, column: 33, scope: !3357)
!3365 = !DILocation(line: 541, column: 2, scope: !3357)
!3366 = !DILocation(line: 542, column: 1, scope: !3357)
!3367 = distinct !DISubprogram(name: "__seqprop_spinlock_ptr", scope: !58, file: !58, line: 275, type: !3368, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3371)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!3360, !3370}
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!3371 = !{!3372}
!3372 = !DILocalVariable(name: "s", arg: 1, scope: !3367, file: !58, line: 275, type: !3370)
!3373 = !DILocation(line: 275, column: 1, scope: !3367)
!3374 = distinct !DISubprogram(name: "do_write_seqcount_end", scope: !58, file: !58, line: 559, type: !3358, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3375)
!3375 = !{!3376}
!3376 = !DILocalVariable(name: "s", arg: 1, scope: !3374, file: !58, line: 559, type: !3360)
!3377 = !DILocation(line: 559, column: 54, scope: !3374)
!3378 = !DILocation(line: 561, column: 2, scope: !3374)
!3379 = !DILocation(line: 561, column: 2, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3374, file: !58, line: 561, column: 2)
!3381 = !DILocation(line: 562, column: 28, scope: !3374)
!3382 = !DILocation(line: 562, column: 2, scope: !3374)
!3383 = !DILocation(line: 563, column: 1, scope: !3374)
!3384 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !3333, file: !3333, line: 93, type: !3385, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!186}
!3387 = !{!3388}
!3388 = !DILocalVariable(name: "c", scope: !3389, file: !3333, line: 95, type: !186)
!3389 = distinct !DILexicalBlock(scope: !3384, file: !3333, line: 95, column: 9)
!3390 = !DILocation(line: 95, column: 9, scope: !3389)
!3391 = !{i64 2149525197, i64 2149525290}
!3392 = !{i8 0, i8 2}
!3393 = !DILocation(line: 95, column: 9, scope: !3384)
!3394 = !DILocation(line: 95, column: 2, scope: !3384)
!3395 = distinct !DISubprogram(name: "spin_unlock", scope: !3307, file: !3307, line: 389, type: !3308, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3396)
!3396 = !{!3397}
!3397 = !DILocalVariable(name: "lock", arg: 1, scope: !3395, file: !3307, line: 389, type: !3310)
!3398 = !DILocation(line: 389, column: 53, scope: !3395)
!3399 = !DILocation(line: 391, column: 2, scope: !3395)
!3400 = !DILocation(line: 392, column: 1, scope: !3395)
!3401 = !DISubprogram(name: "path_put", scope: !71, file: !71, line: 14, type: !3304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3402 = !DILocation(line: 34, column: 35, scope: !3207)
!3403 = !DILocation(line: 34, column: 58, scope: !3207)
!3404 = !DILocation(line: 36, column: 2, scope: !3207)
!3405 = !DILocation(line: 36, column: 14, scope: !3207)
!3406 = !DILocation(line: 38, column: 11, scope: !3207)
!3407 = !DILocation(line: 38, column: 2, scope: !3207)
!3408 = !DILocation(line: 39, column: 13, scope: !3207)
!3409 = !DILocation(line: 39, column: 17, scope: !3207)
!3410 = !DILocation(line: 39, column: 2, scope: !3207)
!3411 = !DILocation(line: 40, column: 2, scope: !3207)
!3412 = !DILocation(line: 40, column: 2, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 40, column: 2)
!3414 = !DILocation(line: 40, column: 2, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 40, column: 2)
!3416 = !DILocation(line: 40, column: 2, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 40, column: 2)
!3418 = !{i64 2153379860}
!3419 = !DILocation(line: 41, column: 12, scope: !3207)
!3420 = !DILocation(line: 41, column: 16, scope: !3207)
!3421 = !DILocation(line: 42, column: 2, scope: !3207)
!3422 = !DILocation(line: 42, column: 6, scope: !3207)
!3423 = !DILocation(line: 42, column: 13, scope: !3207)
!3424 = !DILocation(line: 42, column: 12, scope: !3207)
!3425 = !DILocation(line: 43, column: 2, scope: !3207)
!3426 = !DILocation(line: 43, column: 2, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 43, column: 2)
!3428 = !DILocation(line: 43, column: 2, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 43, column: 2)
!3430 = !DILocation(line: 43, column: 2, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 43, column: 2)
!3432 = !{i64 2153387135}
!3433 = !DILocation(line: 43, column: 2, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 43, column: 2)
!3435 = !DILocation(line: 43, column: 2, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 43, column: 2)
!3437 = !{i64 2153387317}
!3438 = !DILocation(line: 44, column: 15, scope: !3207)
!3439 = !DILocation(line: 44, column: 19, scope: !3207)
!3440 = !DILocation(line: 44, column: 2, scope: !3207)
!3441 = !DILocation(line: 46, column: 14, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 46, column: 6)
!3443 = !DILocation(line: 46, column: 6, scope: !3442)
!3444 = !DILocation(line: 46, column: 6, scope: !3207)
!3445 = !DILocation(line: 47, column: 3, scope: !3442)
!3446 = !DILocation(line: 48, column: 1, scope: !3207)
!3447 = !DILocation(line: 58, column: 40, scope: !3214)
!3448 = !DILocation(line: 58, column: 69, scope: !3214)
!3449 = !DILocation(line: 60, column: 2, scope: !3214)
!3450 = !DILocation(line: 60, column: 22, scope: !3214)
!3451 = !DILocation(line: 60, column: 26, scope: !3214)
!3452 = !DILocation(line: 61, column: 2, scope: !3214)
!3453 = !DILocation(line: 61, column: 20, scope: !3214)
!3454 = !DILocation(line: 62, column: 2, scope: !3214)
!3455 = !DILocation(line: 62, column: 6, scope: !3214)
!3456 = !DILocation(line: 64, column: 2, scope: !3214)
!3457 = !DILocation(line: 65, column: 2, scope: !3227)
!3458 = !DILocation(line: 65, column: 2, scope: !3225)
!3459 = !DILocation(line: 65, column: 2, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 65, column: 2)
!3461 = !DILocation(line: 65, column: 2, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 65, column: 2)
!3463 = !DILocation(line: 65, column: 2, scope: !3226)
!3464 = !DILocation(line: 65, column: 2, scope: !3229)
!3465 = !DILocation(line: 65, column: 2, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 65, column: 2)
!3467 = !DILocation(line: 65, column: 2, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 65, column: 2)
!3469 = !DILocation(line: 65, column: 2, scope: !3230)
!3470 = !DILocation(line: 65, column: 2, scope: !3235)
!3471 = !DILocation(line: 66, column: 13, scope: !3234)
!3472 = !DILocation(line: 66, column: 3, scope: !3234)
!3473 = !DILocation(line: 67, column: 8, scope: !3234)
!3474 = !DILocation(line: 67, column: 11, scope: !3234)
!3475 = !DILocation(line: 67, column: 6, scope: !3234)
!3476 = !DILocation(line: 68, column: 7, scope: !3233)
!3477 = !DILocation(line: 68, column: 7, scope: !3234)
!3478 = !DILocation(line: 69, column: 4, scope: !3232)
!3479 = !DILocation(line: 69, column: 8, scope: !3232)
!3480 = !DILocation(line: 70, column: 15, scope: !3232)
!3481 = !DILocation(line: 70, column: 19, scope: !3232)
!3482 = !DILocation(line: 70, column: 4, scope: !3232)
!3483 = !DILocation(line: 71, column: 4, scope: !3232)
!3484 = !DILocation(line: 71, column: 4, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 71, column: 4)
!3486 = !DILocation(line: 71, column: 4, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 71, column: 4)
!3488 = !DILocation(line: 71, column: 4, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 71, column: 4)
!3490 = !{i64 2153449028}
!3491 = !DILocation(line: 72, column: 26, scope: !3232)
!3492 = !DILocation(line: 72, column: 30, scope: !3232)
!3493 = !DILocation(line: 72, column: 36, scope: !3232)
!3494 = !DILocation(line: 72, column: 46, scope: !3232)
!3495 = !DILocation(line: 72, column: 12, scope: !3232)
!3496 = !DILocation(line: 72, column: 9, scope: !3232)
!3497 = !DILocation(line: 73, column: 26, scope: !3232)
!3498 = !DILocation(line: 73, column: 30, scope: !3232)
!3499 = !DILocation(line: 73, column: 35, scope: !3232)
!3500 = !DILocation(line: 73, column: 45, scope: !3232)
!3501 = !DILocation(line: 73, column: 12, scope: !3232)
!3502 = !DILocation(line: 73, column: 9, scope: !3232)
!3503 = !DILocation(line: 74, column: 4, scope: !3232)
!3504 = !DILocation(line: 74, column: 4, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 74, column: 4)
!3506 = !DILocation(line: 74, column: 4, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 74, column: 4)
!3508 = !DILocation(line: 74, column: 4, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 74, column: 4)
!3510 = !{i64 2153456303}
!3511 = !DILocation(line: 74, column: 4, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 74, column: 4)
!3513 = !DILocation(line: 74, column: 4, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 74, column: 4)
!3515 = !{i64 2153456485}
!3516 = !DILocation(line: 75, column: 4, scope: !3232)
!3517 = !DILocation(line: 75, column: 15, scope: !3232)
!3518 = !DILocation(line: 76, column: 10, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 75, column: 19)
!3520 = !DILocation(line: 77, column: 14, scope: !3519)
!3521 = !DILocation(line: 77, column: 5, scope: !3519)
!3522 = distinct !{!3522, !3516, !3523, !3524, !3525}
!3523 = !DILocation(line: 78, column: 4, scope: !3232)
!3524 = !{!"llvm.loop.mustprogress"}
!3525 = !{!"llvm.loop.unroll.disable"}
!3526 = !DILocation(line: 79, column: 17, scope: !3232)
!3527 = !DILocation(line: 79, column: 21, scope: !3232)
!3528 = !DILocation(line: 79, column: 4, scope: !3232)
!3529 = !DILocation(line: 80, column: 3, scope: !3233)
!3530 = !DILocation(line: 80, column: 3, scope: !3232)
!3531 = !DILocation(line: 81, column: 15, scope: !3234)
!3532 = !DILocation(line: 81, column: 3, scope: !3234)
!3533 = !DILocation(line: 82, column: 2, scope: !3234)
!3534 = !DILocation(line: 65, column: 2, scope: !3237)
!3535 = !DILocation(line: 65, column: 2, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 65, column: 2)
!3537 = !DILocation(line: 65, column: 2, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 65, column: 2)
!3539 = distinct !{!3539, !3469, !3540, !3524, !3525}
!3540 = !DILocation(line: 82, column: 2, scope: !3230)
!3541 = distinct !{!3541, !3457, !3542, !3524, !3525}
!3542 = !DILocation(line: 82, column: 2, scope: !3227)
!3543 = !DILocation(line: 83, column: 2, scope: !3214)
!3544 = !DILocation(line: 84, column: 2, scope: !3214)
!3545 = !DILocation(line: 84, column: 14, scope: !3214)
!3546 = !DILocation(line: 85, column: 12, scope: !3214)
!3547 = !DILocation(line: 85, column: 3, scope: !3214)
!3548 = distinct !{!3548, !3544, !3549, !3524, !3525}
!3549 = !DILocation(line: 85, column: 20, scope: !3214)
!3550 = !DILocation(line: 86, column: 1, scope: !3214)
!3551 = !DISubprogram(name: "_raw_read_lock", scope: !3552, file: !3552, line: 18, type: !3553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3552 = !DIFile(filename: "./include/linux/rwlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "752e3ce6205f1debb08c34677b6a0cdd")
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !3555}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!3556 = distinct !DISubprogram(name: "task_lock", scope: !3557, file: !3557, line: 220, type: !3558, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3560)
!3557 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!3558 = !DISubroutineType(types: !3559)
!3559 = !{null, !1752}
!3560 = !{!3561}
!3561 = !DILocalVariable(name: "p", arg: 1, scope: !3556, file: !3557, line: 220, type: !1752)
!3562 = !DILocation(line: 220, column: 50, scope: !3556)
!3563 = !DILocation(line: 222, column: 13, scope: !3556)
!3564 = !DILocation(line: 222, column: 16, scope: !3556)
!3565 = !DILocation(line: 222, column: 2, scope: !3556)
!3566 = !DILocation(line: 223, column: 1, scope: !3556)
!3567 = distinct !DISubprogram(name: "replace_path", scope: !3, file: !3, line: 50, type: !3568, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3570)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!11, !3039, !1261, !1261}
!3570 = !{!3571, !3572, !3573}
!3571 = !DILocalVariable(name: "p", arg: 1, scope: !3567, file: !3, line: 50, type: !3039)
!3572 = !DILocalVariable(name: "old", arg: 2, scope: !3567, file: !3, line: 50, type: !1261)
!3573 = !DILocalVariable(name: "new", arg: 3, scope: !3567, file: !3, line: 50, type: !1261)
!3574 = !DILocation(line: 50, column: 45, scope: !3567)
!3575 = !DILocation(line: 50, column: 67, scope: !3567)
!3576 = !DILocation(line: 50, column: 91, scope: !3567)
!3577 = !DILocation(line: 52, column: 6, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 52, column: 6)
!3579 = !DILocation(line: 52, column: 6, scope: !3567)
!3580 = !DILocation(line: 53, column: 3, scope: !3578)
!3581 = !DILocation(line: 54, column: 3, scope: !3567)
!3582 = !DILocation(line: 54, column: 8, scope: !3567)
!3583 = !DILocation(line: 54, column: 7, scope: !3567)
!3584 = !DILocation(line: 55, column: 2, scope: !3567)
!3585 = !DILocation(line: 56, column: 1, scope: !3567)
!3586 = distinct !DISubprogram(name: "task_unlock", scope: !3557, file: !3557, line: 225, type: !3558, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3587)
!3587 = !{!3588}
!3588 = !DILocalVariable(name: "p", arg: 1, scope: !3586, file: !3557, line: 225, type: !1752)
!3589 = !DILocation(line: 225, column: 52, scope: !3586)
!3590 = !DILocation(line: 227, column: 15, scope: !3586)
!3591 = !DILocation(line: 227, column: 18, scope: !3586)
!3592 = !DILocation(line: 227, column: 2, scope: !3586)
!3593 = !DILocation(line: 228, column: 1, scope: !3586)
!3594 = !DISubprogram(name: "_raw_read_unlock", scope: !3552, file: !3552, line: 31, type: !3553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3595 = distinct !DISubprogram(name: "free_fs_struct", scope: !3, file: !3, line: 88, type: !3596, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{null, !6}
!3598 = !{!3599}
!3599 = !DILocalVariable(name: "fs", arg: 1, scope: !3595, file: !3, line: 88, type: !6)
!3600 = !DILocation(line: 88, column: 39, scope: !3595)
!3601 = !DILocation(line: 90, column: 12, scope: !3595)
!3602 = !DILocation(line: 90, column: 16, scope: !3595)
!3603 = !DILocation(line: 90, column: 2, scope: !3595)
!3604 = !DILocation(line: 91, column: 12, scope: !3595)
!3605 = !DILocation(line: 91, column: 16, scope: !3595)
!3606 = !DILocation(line: 91, column: 2, scope: !3595)
!3607 = !DILocation(line: 92, column: 18, scope: !3595)
!3608 = !DILocation(line: 92, column: 29, scope: !3595)
!3609 = !DILocation(line: 92, column: 2, scope: !3595)
!3610 = !DILocation(line: 93, column: 1, scope: !3595)
!3611 = !DISubprogram(name: "kmem_cache_free", scope: !3612, file: !3612, line: 503, type: !3613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3612 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3613 = !DISubroutineType(types: !3614)
!3614 = !{null, !3615, !173}
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !974, line: 325, flags: DIFlagFwdDecl)
!3617 = distinct !DISubprogram(name: "exit_fs", scope: !3, file: !3, line: 95, type: !3558, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3618)
!3618 = !{!3619, !3620, !3621}
!3619 = !DILocalVariable(name: "tsk", arg: 1, scope: !3617, file: !3, line: 95, type: !1752)
!3620 = !DILocalVariable(name: "fs", scope: !3617, file: !3, line: 97, type: !6)
!3621 = !DILocalVariable(name: "kill", scope: !3622, file: !3, line: 100, type: !11)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 99, column: 10)
!3623 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 99, column: 6)
!3624 = !DILocation(line: 95, column: 34, scope: !3617)
!3625 = !DILocation(line: 97, column: 2, scope: !3617)
!3626 = !DILocation(line: 97, column: 20, scope: !3617)
!3627 = !DILocation(line: 97, column: 25, scope: !3617)
!3628 = !DILocation(line: 97, column: 30, scope: !3617)
!3629 = !DILocation(line: 99, column: 6, scope: !3623)
!3630 = !DILocation(line: 99, column: 6, scope: !3617)
!3631 = !DILocation(line: 100, column: 3, scope: !3622)
!3632 = !DILocation(line: 100, column: 7, scope: !3622)
!3633 = !DILocation(line: 101, column: 13, scope: !3622)
!3634 = !DILocation(line: 101, column: 3, scope: !3622)
!3635 = !DILocation(line: 102, column: 14, scope: !3622)
!3636 = !DILocation(line: 102, column: 18, scope: !3622)
!3637 = !DILocation(line: 102, column: 3, scope: !3622)
!3638 = !DILocation(line: 103, column: 3, scope: !3622)
!3639 = !DILocation(line: 103, column: 8, scope: !3622)
!3640 = !DILocation(line: 103, column: 11, scope: !3622)
!3641 = !DILocation(line: 104, column: 13, scope: !3622)
!3642 = !DILocation(line: 104, column: 17, scope: !3622)
!3643 = !DILocation(line: 104, column: 11, scope: !3622)
!3644 = !DILocation(line: 104, column: 10, scope: !3622)
!3645 = !DILocation(line: 104, column: 8, scope: !3622)
!3646 = !DILocation(line: 105, column: 16, scope: !3622)
!3647 = !DILocation(line: 105, column: 20, scope: !3622)
!3648 = !DILocation(line: 105, column: 3, scope: !3622)
!3649 = !DILocation(line: 106, column: 15, scope: !3622)
!3650 = !DILocation(line: 106, column: 3, scope: !3622)
!3651 = !DILocation(line: 107, column: 7, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 107, column: 7)
!3653 = !DILocation(line: 107, column: 7, scope: !3622)
!3654 = !DILocation(line: 108, column: 19, scope: !3652)
!3655 = !DILocation(line: 108, column: 4, scope: !3652)
!3656 = !DILocation(line: 109, column: 2, scope: !3623)
!3657 = !DILocation(line: 109, column: 2, scope: !3622)
!3658 = !DILocation(line: 110, column: 1, scope: !3617)
!3659 = distinct !DISubprogram(name: "copy_fs_struct", scope: !3, file: !3, line: 112, type: !3660, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3662)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!6, !6}
!3662 = !{!3663, !3664, !3665}
!3663 = !DILocalVariable(name: "old", arg: 1, scope: !3659, file: !3, line: 112, type: !6)
!3664 = !DILocalVariable(name: "fs", scope: !3659, file: !3, line: 114, type: !6)
!3665 = !DILocalVariable(name: "____s", scope: !3666, file: !3, line: 120, type: !3370)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 120, column: 3)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 116, column: 10)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 116, column: 6)
!3669 = !DILexicalBlockFile(scope: !3659, file: !3, discriminator: 0)
!3670 = !DILocation(line: 112, column: 52, scope: !3659)
!3671 = !DILocation(line: 114, column: 2, scope: !3659)
!3672 = !DILocation(line: 114, column: 20, scope: !3659)
!3673 = !DILocation(line: 114, column: 42, scope: !3659)
!3674 = !DILocation(line: 114, column: 25, scope: !3659)
!3675 = !DILocation(line: 116, column: 6, scope: !3668)
!3676 = !DILocation(line: 116, column: 6, scope: !3669)
!3677 = !DILocation(line: 117, column: 3, scope: !3667)
!3678 = !DILocation(line: 117, column: 7, scope: !3667)
!3679 = !DILocation(line: 117, column: 13, scope: !3667)
!3680 = !DILocation(line: 118, column: 3, scope: !3667)
!3681 = !DILocation(line: 118, column: 7, scope: !3667)
!3682 = !DILocation(line: 118, column: 15, scope: !3667)
!3683 = !DILocation(line: 119, column: 3, scope: !3667)
!3684 = !DILocation(line: 119, column: 3, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 119, column: 3)
!3686 = !DILocation(line: 120, column: 3, scope: !3667)
!3687 = !DILocation(line: 120, column: 3, scope: !3666)
!3688 = !DILocation(line: 121, column: 15, scope: !3667)
!3689 = !DILocation(line: 121, column: 20, scope: !3667)
!3690 = !DILocation(line: 121, column: 3, scope: !3667)
!3691 = !DILocation(line: 121, column: 7, scope: !3667)
!3692 = !DILocation(line: 121, column: 13, scope: !3667)
!3693 = !DILocation(line: 123, column: 14, scope: !3667)
!3694 = !DILocation(line: 123, column: 19, scope: !3667)
!3695 = !DILocation(line: 123, column: 3, scope: !3667)
!3696 = !DILocation(line: 124, column: 3, scope: !3667)
!3697 = !DILocation(line: 124, column: 7, scope: !3667)
!3698 = !DILocation(line: 124, column: 14, scope: !3667)
!3699 = !DILocation(line: 124, column: 19, scope: !3667)
!3700 = !DILocation(line: 125, column: 13, scope: !3667)
!3701 = !DILocation(line: 125, column: 17, scope: !3667)
!3702 = !DILocation(line: 125, column: 3, scope: !3667)
!3703 = !DILocation(line: 126, column: 3, scope: !3667)
!3704 = !DILocation(line: 126, column: 7, scope: !3667)
!3705 = !DILocation(line: 126, column: 13, scope: !3667)
!3706 = !DILocation(line: 126, column: 18, scope: !3667)
!3707 = !DILocation(line: 127, column: 13, scope: !3667)
!3708 = !DILocation(line: 127, column: 17, scope: !3667)
!3709 = !DILocation(line: 127, column: 3, scope: !3667)
!3710 = !DILocation(line: 128, column: 16, scope: !3667)
!3711 = !DILocation(line: 128, column: 21, scope: !3667)
!3712 = !DILocation(line: 128, column: 3, scope: !3667)
!3713 = !DILocation(line: 129, column: 2, scope: !3667)
!3714 = !DILocation(line: 130, column: 9, scope: !3669)
!3715 = !DILocation(line: 131, column: 1, scope: !3669)
!3716 = !DILocation(line: 130, column: 2, scope: !3669)
!3717 = !DISubprogram(name: "kmem_cache_alloc", scope: !3612, file: !3612, line: 500, type: !3718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!173, !3615, !1010}
!3720 = distinct !DISubprogram(name: "spinlock_check", scope: !3307, file: !3307, line: 324, type: !3721, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3724)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!3723, !3310}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!3724 = !{!3725}
!3725 = !DILocalVariable(name: "lock", arg: 1, scope: !3720, file: !3307, line: 324, type: !3310)
!3726 = !DILocation(line: 324, column: 67, scope: !3720)
!3727 = !DILocation(line: 326, column: 10, scope: !3720)
!3728 = !DILocation(line: 326, column: 16, scope: !3720)
!3729 = !DILocation(line: 326, column: 2, scope: !3720)
!3730 = distinct !DISubprogram(name: "__seqcount_init", scope: !58, file: !58, line: 71, type: !3731, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3734)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{null, !3360, !162, !3733}
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!3734 = !{!3735, !3736, !3737}
!3735 = !DILocalVariable(name: "s", arg: 1, scope: !3730, file: !58, line: 71, type: !3360)
!3736 = !DILocalVariable(name: "name", arg: 2, scope: !3730, file: !58, line: 71, type: !162)
!3737 = !DILocalVariable(name: "key", arg: 3, scope: !3730, file: !58, line: 72, type: !3733)
!3738 = !DILocation(line: 71, column: 48, scope: !3730)
!3739 = !DILocation(line: 71, column: 63, scope: !3730)
!3740 = !DILocation(line: 72, column: 31, scope: !3730)
!3741 = !DILocation(line: 77, column: 2, scope: !3730)
!3742 = !DILocation(line: 77, column: 2, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3730, file: !58, line: 77, column: 2)
!3744 = !DILocation(line: 78, column: 2, scope: !3730)
!3745 = !DILocation(line: 78, column: 5, scope: !3730)
!3746 = !DILocation(line: 78, column: 14, scope: !3730)
!3747 = !DILocation(line: 79, column: 1, scope: !3730)
!3748 = distinct !DISubprogram(name: "unshare_fs_struct", scope: !3, file: !3, line: 133, type: !3749, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!11}
!3751 = !{!3752, !3753, !3754}
!3752 = !DILocalVariable(name: "fs", scope: !3748, file: !3, line: 135, type: !6)
!3753 = !DILocalVariable(name: "new_fs", scope: !3748, file: !3, line: 136, type: !6)
!3754 = !DILocalVariable(name: "kill", scope: !3748, file: !3, line: 137, type: !11)
!3755 = !DILocation(line: 135, column: 2, scope: !3748)
!3756 = !DILocation(line: 135, column: 20, scope: !3748)
!3757 = !DILocation(line: 135, column: 25, scope: !3748)
!3758 = !DILocation(line: 135, column: 34, scope: !3748)
!3759 = !DILocation(line: 136, column: 2, scope: !3748)
!3760 = !DILocation(line: 136, column: 20, scope: !3748)
!3761 = !DILocation(line: 136, column: 44, scope: !3748)
!3762 = !DILocation(line: 136, column: 29, scope: !3748)
!3763 = !DILocation(line: 137, column: 2, scope: !3748)
!3764 = !DILocation(line: 137, column: 6, scope: !3748)
!3765 = !DILocation(line: 139, column: 7, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 139, column: 6)
!3767 = !DILocation(line: 139, column: 6, scope: !3748)
!3768 = !DILocation(line: 140, column: 3, scope: !3766)
!3769 = !DILocation(line: 142, column: 12, scope: !3748)
!3770 = !DILocation(line: 142, column: 2, scope: !3748)
!3771 = !DILocation(line: 143, column: 13, scope: !3748)
!3772 = !DILocation(line: 143, column: 17, scope: !3748)
!3773 = !DILocation(line: 143, column: 2, scope: !3748)
!3774 = !DILocation(line: 144, column: 12, scope: !3748)
!3775 = !DILocation(line: 144, column: 16, scope: !3748)
!3776 = !DILocation(line: 144, column: 10, scope: !3748)
!3777 = !DILocation(line: 144, column: 9, scope: !3748)
!3778 = !DILocation(line: 144, column: 7, scope: !3748)
!3779 = !DILocation(line: 145, column: 16, scope: !3748)
!3780 = !DILocation(line: 145, column: 2, scope: !3748)
!3781 = !DILocation(line: 145, column: 11, scope: !3748)
!3782 = !DILocation(line: 145, column: 14, scope: !3748)
!3783 = !DILocation(line: 146, column: 15, scope: !3748)
!3784 = !DILocation(line: 146, column: 19, scope: !3748)
!3785 = !DILocation(line: 146, column: 2, scope: !3748)
!3786 = !DILocation(line: 147, column: 14, scope: !3748)
!3787 = !DILocation(line: 147, column: 2, scope: !3748)
!3788 = !DILocation(line: 149, column: 6, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 149, column: 6)
!3790 = !DILocation(line: 149, column: 6, scope: !3748)
!3791 = !DILocation(line: 150, column: 18, scope: !3789)
!3792 = !DILocation(line: 150, column: 3, scope: !3789)
!3793 = !DILocation(line: 152, column: 2, scope: !3748)
!3794 = !DILocation(line: 153, column: 1, scope: !3748)
!3795 = distinct !DISubprogram(name: "get_current", scope: !3796, file: !3796, line: 39, type: !3797, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3799)
!3796 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!1752}
!3799 = !{!3800, !3802, !3806}
!3800 = !DILocalVariable(name: "pscr_ret__", scope: !3801, file: !3796, line: 41, type: !1752)
!3801 = distinct !DILexicalBlock(scope: !3795, file: !3796, line: 41, column: 9)
!3802 = !DILocalVariable(name: "__vpp_verify", scope: !3803, file: !3796, line: 41, type: !3804)
!3803 = distinct !DILexicalBlock(scope: !3801, file: !3796, line: 41, column: 9)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3806 = !DILocalVariable(name: "pfo_val__", scope: !3807, file: !3796, line: 41, type: !108)
!3807 = distinct !DILexicalBlock(scope: !3801, file: !3796, line: 41, column: 9)
!3808 = !DILocation(line: 41, column: 9, scope: !3801)
!3809 = !DILocation(line: 41, column: 9, scope: !3803)
!3810 = !DILocation(line: 41, column: 9, scope: !3807)
!3811 = !{i64 2148955552}
!3812 = !DILocation(line: 41, column: 9, scope: !3795)
!3813 = !DILocation(line: 41, column: 2, scope: !3795)
!3814 = distinct !DISubprogram(name: "current_umask", scope: !3, file: !3, line: 156, type: !3749, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3197)
!3815 = !DILocation(line: 158, column: 9, scope: !3814)
!3816 = !DILocation(line: 158, column: 18, scope: !3814)
!3817 = !DILocation(line: 158, column: 22, scope: !3814)
!3818 = !DILocation(line: 158, column: 2, scope: !3814)
!3819 = !DISubprogram(name: "_raw_spin_lock", scope: !3820, file: !3820, line: 22, type: !3821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3820 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!3821 = !DISubroutineType(types: !3822)
!3822 = !{null, !3723}
!3823 = distinct !DISubprogram(name: "do_write_seqcount_begin_nested", scope: !58, file: !58, line: 513, type: !3824, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3826)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{null, !3360, !11}
!3826 = !{!3827, !3828}
!3827 = !DILocalVariable(name: "s", arg: 1, scope: !3823, file: !58, line: 513, type: !3360)
!3828 = !DILocalVariable(name: "subclass", arg: 2, scope: !3823, file: !58, line: 513, type: !11)
!3829 = !DILocation(line: 513, column: 63, scope: !3823)
!3830 = !DILocation(line: 513, column: 70, scope: !3823)
!3831 = !DILocation(line: 515, column: 2, scope: !3823)
!3832 = !DILocation(line: 515, column: 2, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3823, file: !58, line: 515, column: 2)
!3834 = !DILocation(line: 516, column: 30, scope: !3823)
!3835 = !DILocation(line: 516, column: 2, scope: !3823)
!3836 = !DILocation(line: 517, column: 1, scope: !3823)
!3837 = distinct !DISubprogram(name: "do_raw_write_seqcount_begin", scope: !58, file: !58, line: 466, type: !3358, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3838)
!3838 = !{!3839}
!3839 = !DILocalVariable(name: "s", arg: 1, scope: !3837, file: !58, line: 466, type: !3360)
!3840 = !DILocation(line: 466, column: 60, scope: !3837)
!3841 = !DILocation(line: 468, column: 2, scope: !3837)
!3842 = !DILocation(line: 469, column: 2, scope: !3837)
!3843 = !DILocation(line: 469, column: 5, scope: !3837)
!3844 = !DILocation(line: 469, column: 13, scope: !3837)
!3845 = !DILocation(line: 470, column: 2, scope: !3837)
!3846 = !DILocation(line: 470, column: 2, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3837, file: !58, line: 470, column: 2)
!3848 = !DILocation(line: 470, column: 2, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3847, file: !58, line: 470, column: 2)
!3850 = !{i64 2150560629}
!3851 = !DILocation(line: 471, column: 1, scope: !3837)
!3852 = distinct !DISubprogram(name: "kcsan_nestable_atomic_begin", scope: !3853, file: !3853, line: 199, type: !2386, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197)
!3853 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3854 = !DILocation(line: 199, column: 56, scope: !3852)
!3855 = distinct !DISubprogram(name: "do_raw_write_seqcount_end", scope: !58, file: !58, line: 487, type: !3358, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197, retainedNodes: !3856)
!3856 = !{!3857}
!3857 = !DILocalVariable(name: "s", arg: 1, scope: !3855, file: !58, line: 487, type: !3360)
!3858 = !DILocation(line: 487, column: 58, scope: !3855)
!3859 = !DILocation(line: 489, column: 2, scope: !3855)
!3860 = !DILocation(line: 489, column: 2, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3855, file: !58, line: 489, column: 2)
!3862 = !DILocation(line: 489, column: 2, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3861, file: !58, line: 489, column: 2)
!3864 = !{i64 2150560902}
!3865 = !DILocation(line: 490, column: 2, scope: !3855)
!3866 = !DILocation(line: 490, column: 5, scope: !3855)
!3867 = !DILocation(line: 490, column: 13, scope: !3855)
!3868 = !DILocation(line: 491, column: 2, scope: !3855)
!3869 = !DILocation(line: 492, column: 1, scope: !3855)
!3870 = distinct !DISubprogram(name: "kcsan_nestable_atomic_end", scope: !3853, file: !3853, line: 200, type: !2386, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3197)
!3871 = !DILocation(line: 200, column: 54, scope: !3870)
!3872 = !DISubprogram(name: "_raw_spin_unlock", scope: !3820, file: !3820, line: 39, type: !3821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
