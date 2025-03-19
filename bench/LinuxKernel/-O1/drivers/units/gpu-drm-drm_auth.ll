; ModuleID = 'drivers/gpu/drm/drm_auth.c'
source_filename = "drivers/gpu/drm/drm_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_is_current_master: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_is_current_master ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_master_get: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_master_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_file_get_master: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_file_get_master ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_master_put: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_master_put ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_master_internal_acquire: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_master_internal_acquire ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_master_internal_release: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_master_internal_release ; .previous"

%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i64, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.13, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.13 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr }
%struct.drm_auth = type { i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr }
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
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
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
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.pacct_struct = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }

@__UNIQUE_ID___addressable_drm_is_current_master305 = internal global ptr @drm_is_current_master, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !5351
@.str.1 = private unnamed_addr constant [36 x i8] c"Attempt to set lessee %d as master\0A\00", align 1, !dbg !5354
@.str.2 = private unnamed_addr constant [37 x i8] c"Attempt to drop lessee %d as master\0A\00", align 1, !dbg !5359
@__UNIQUE_ID___addressable_drm_master_get308 = internal global ptr @drm_master_get, section ".discard.addressable", align 8, !dbg !5364
@__UNIQUE_ID___addressable_drm_file_get_master309 = internal global ptr @drm_file_get_master, section ".discard.addressable", align 8, !dbg !5366
@__UNIQUE_ID___addressable_drm_master_put310 = internal global ptr @drm_master_put, section ".discard.addressable", align 8, !dbg !5368
@__UNIQUE_ID___addressable_drm_master_internal_acquire311 = internal global ptr @drm_master_internal_acquire, section ".discard.addressable", align 8, !dbg !5370
@__UNIQUE_ID___addressable_drm_master_internal_release312 = internal global ptr @drm_master_internal_release, section ".discard.addressable", align 8, !dbg !5372
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5374
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.4 = private unnamed_addr constant [27 x i8] c"drivers/gpu/drm/drm_auth.c\00", align 1, !dbg !5379
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_drm_is_current_master305, ptr @__UNIQUE_ID___addressable_drm_master_get308, ptr @__UNIQUE_ID___addressable_drm_file_get_master309, ptr @__UNIQUE_ID___addressable_drm_master_put310, ptr @__UNIQUE_ID___addressable_drm_master_internal_acquire311, ptr @__UNIQUE_ID___addressable_drm_master_internal_release312], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @drm_is_current_master(ptr noundef %fpriv) #0 align 16 !dbg !5393 {
entry:
  %fpriv.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %fpriv, ptr %fpriv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpriv.addr, metadata !5397, metadata !DIExpression()), !dbg !5399
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #14, !dbg !5400
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5398, metadata !DIExpression()), !dbg !5401
  %0 = load ptr, ptr %fpriv.addr, align 8, !dbg !5402
  %master_lookup_lock = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 10, !dbg !5403
  call void @spin_lock(ptr noundef %master_lookup_lock) #15, !dbg !5404
  %1 = load ptr, ptr %fpriv.addr, align 8, !dbg !5405
  %call = call zeroext i1 @drm_is_current_master_locked(ptr noundef %1) #15, !dbg !5406
  %frombool = zext i1 %call to i8, !dbg !5407
  store i8 %frombool, ptr %ret, align 1, !dbg !5407
  %2 = load ptr, ptr %fpriv.addr, align 8, !dbg !5408
  %master_lookup_lock1 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 10, !dbg !5409
  call void @spin_unlock(ptr noundef %master_lookup_lock1) #15, !dbg !5410
  %3 = load i8, ptr %ret, align 1, !dbg !5411, !range !5412, !noundef !720
  %tobool = trunc i8 %3 to i1, !dbg !5411
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #14, !dbg !5413
  ret i1 %tobool, !dbg !5414
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !5415 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5420, metadata !DIExpression()), !dbg !5421
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5422
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5422
  call void @_raw_spin_lock(ptr noundef %1) #15, !dbg !5422
  ret void, !dbg !5423
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_is_current_master_locked(ptr noundef %fpriv) #0 align 16 !dbg !5424 {
entry:
  %fpriv.addr = alloca ptr, align 8
  store ptr %fpriv, ptr %fpriv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpriv.addr, metadata !5426, metadata !DIExpression()), !dbg !5427
  br label %do.body, !dbg !5428

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5429

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %fpriv.addr, align 8, !dbg !5431
  %is_master = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 7, !dbg !5432
  %1 = load i8, ptr %is_master, align 1, !dbg !5432, !range !5412, !noundef !720
  %tobool = trunc i8 %1 to i1, !dbg !5432
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5433

land.rhs:                                         ; preds = %do.end
  %2 = load ptr, ptr %fpriv.addr, align 8, !dbg !5434
  %master = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 9, !dbg !5435
  %3 = load ptr, ptr %master, align 8, !dbg !5435
  %call = call ptr @drm_lease_owner(ptr noundef %3) #15, !dbg !5436
  %4 = load ptr, ptr %fpriv.addr, align 8, !dbg !5437
  %minor = getelementptr inbounds %struct.drm_file, ptr %4, i32 0, i32 15, !dbg !5438
  %5 = load ptr, ptr %minor, align 8, !dbg !5438
  %dev = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3, !dbg !5439
  %6 = load ptr, ptr %dev, align 8, !dbg !5439
  %master1 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 10, !dbg !5440
  %7 = load ptr, ptr %master1, align 8, !dbg !5440
  %cmp = icmp eq ptr %call, %7, !dbg !5441
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %8 = phi i1 [ false, %do.end ], [ %cmp, %land.rhs ], !dbg !5442
  ret i1 %8, !dbg !5443
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !5444 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5448
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5448
  call void @_raw_spin_unlock(ptr noundef %1) #15, !dbg !5448
  ret void, !dbg !5449
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_getmagic(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) #0 align 16 !dbg !5450 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %file_priv.addr = alloca ptr, align 8
  %auth = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5452, metadata !DIExpression()), !dbg !5461
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5453, metadata !DIExpression()), !dbg !5462
  store ptr %file_priv, ptr %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_priv.addr, metadata !5454, metadata !DIExpression()), !dbg !5463
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth) #14, !dbg !5464
  call void @llvm.dbg.declare(metadata ptr %auth, metadata !5455, metadata !DIExpression()), !dbg !5465
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5466
  store ptr %0, ptr %auth, align 8, !dbg !5465
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !5467
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5460, metadata !DIExpression()), !dbg !5468
  store i32 0, ptr %ret, align 4, !dbg !5468
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5469
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 16, !dbg !5470
  call void @mutex_lock(ptr noundef %master_mutex) #15, !dbg !5471
  %2 = load ptr, ptr %file_priv.addr, align 8, !dbg !5472
  %magic = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 13, !dbg !5474
  %3 = load i32, ptr %magic, align 8, !dbg !5474
  %tobool = icmp ne i32 %3, 0, !dbg !5472
  br i1 %tobool, label %if.end3, label %if.then, !dbg !5475

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %file_priv.addr, align 8, !dbg !5476
  %master = getelementptr inbounds %struct.drm_file, ptr %4, i32 0, i32 9, !dbg !5478
  %5 = load ptr, ptr %master, align 8, !dbg !5478
  %magic_map = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 4, !dbg !5479
  %6 = load ptr, ptr %file_priv.addr, align 8, !dbg !5480
  %call = call i32 @idr_alloc(ptr noundef %magic_map, ptr noundef %6, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #15, !dbg !5481
  store i32 %call, ptr %ret, align 4, !dbg !5482
  %7 = load i32, ptr %ret, align 4, !dbg !5483
  %cmp = icmp sge i32 %7, 0, !dbg !5485
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5486

if.then1:                                         ; preds = %if.then
  %8 = load i32, ptr %ret, align 4, !dbg !5487
  %9 = load ptr, ptr %file_priv.addr, align 8, !dbg !5488
  %magic2 = getelementptr inbounds %struct.drm_file, ptr %9, i32 0, i32 13, !dbg !5489
  store i32 %8, ptr %magic2, align 8, !dbg !5490
  br label %if.end, !dbg !5488

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end3, !dbg !5491

if.end3:                                          ; preds = %if.end, %entry
  %10 = load ptr, ptr %file_priv.addr, align 8, !dbg !5492
  %magic4 = getelementptr inbounds %struct.drm_file, ptr %10, i32 0, i32 13, !dbg !5493
  %11 = load i32, ptr %magic4, align 8, !dbg !5493
  %12 = load ptr, ptr %auth, align 8, !dbg !5494
  %magic5 = getelementptr inbounds %struct.drm_auth, ptr %12, i32 0, i32 0, !dbg !5495
  store i32 %11, ptr %magic5, align 4, !dbg !5496
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5497
  %master_mutex6 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 16, !dbg !5498
  call void @mutex_unlock(ptr noundef %master_mutex6) #15, !dbg !5499
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5500
  %tobool7 = icmp ne ptr %14, null, !dbg !5500
  br i1 %tobool7, label %cond.true, label %cond.false, !dbg !5500

cond.true:                                        ; preds = %if.end3
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5500
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2, !dbg !5500
  %16 = load ptr, ptr %dev8, align 8, !dbg !5500
  br label %cond.end, !dbg !5500

cond.false:                                       ; preds = %if.end3
  br label %cond.end, !dbg !5500

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %16, %cond.true ], [ null, %cond.false ], !dbg !5500
  %17 = load ptr, ptr %auth, align 8, !dbg !5500
  %magic9 = getelementptr inbounds %struct.drm_auth, ptr %17, i32 0, i32 0, !dbg !5500
  %18 = load i32, ptr %magic9, align 4, !dbg !5500
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 0, ptr noundef @.str, i32 noundef %18) #15, !dbg !5500
  %19 = load i32, ptr %ret, align 4, !dbg !5501
  %cmp10 = icmp slt i32 %19, 0, !dbg !5502
  br i1 %cmp10, label %cond.true11, label %cond.false12, !dbg !5501

cond.true11:                                      ; preds = %cond.end
  %20 = load i32, ptr %ret, align 4, !dbg !5503
  br label %cond.end13, !dbg !5501

cond.false12:                                     ; preds = %cond.end
  br label %cond.end13, !dbg !5501

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond14 = phi i32 [ %20, %cond.true11 ], [ 0, %cond.false12 ], !dbg !5501
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !5504
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth) #14, !dbg !5504
  ret i32 %cond14, !dbg !5505
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5506 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5510 dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5514 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5515 dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_authmagic(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) #0 align 16 !dbg !5551 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %file_priv.addr = alloca ptr, align 8
  %auth = alloca ptr, align 8
  %file = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5553, metadata !DIExpression()), !dbg !5558
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5554, metadata !DIExpression()), !dbg !5559
  store ptr %file_priv, ptr %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_priv.addr, metadata !5555, metadata !DIExpression()), !dbg !5560
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth) #14, !dbg !5561
  call void @llvm.dbg.declare(metadata ptr %auth, metadata !5556, metadata !DIExpression()), !dbg !5562
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5563
  store ptr %0, ptr %auth, align 8, !dbg !5562
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #14, !dbg !5564
  call void @llvm.dbg.declare(metadata ptr %file, metadata !5557, metadata !DIExpression()), !dbg !5565
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5566
  %tobool = icmp ne ptr %1, null, !dbg !5566
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5566

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5566
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2, !dbg !5566
  %3 = load ptr, ptr %dev1, align 8, !dbg !5566
  br label %cond.end, !dbg !5566

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5566

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ], !dbg !5566
  %4 = load ptr, ptr %auth, align 8, !dbg !5566
  %magic = getelementptr inbounds %struct.drm_auth, ptr %4, i32 0, i32 0, !dbg !5566
  %5 = load i32, ptr %magic, align 4, !dbg !5566
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 0, ptr noundef @.str, i32 noundef %5) #15, !dbg !5566
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5567
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 16, !dbg !5568
  call void @mutex_lock(ptr noundef %master_mutex) #15, !dbg !5569
  %7 = load ptr, ptr %file_priv.addr, align 8, !dbg !5570
  %master = getelementptr inbounds %struct.drm_file, ptr %7, i32 0, i32 9, !dbg !5571
  %8 = load ptr, ptr %master, align 8, !dbg !5571
  %magic_map = getelementptr inbounds %struct.drm_master, ptr %8, i32 0, i32 4, !dbg !5572
  %9 = load ptr, ptr %auth, align 8, !dbg !5573
  %magic2 = getelementptr inbounds %struct.drm_auth, ptr %9, i32 0, i32 0, !dbg !5574
  %10 = load i32, ptr %magic2, align 4, !dbg !5574
  %conv = zext i32 %10 to i64, !dbg !5573
  %call = call ptr @idr_find(ptr noundef %magic_map, i64 noundef %conv) #15, !dbg !5575
  store ptr %call, ptr %file, align 8, !dbg !5576
  %11 = load ptr, ptr %file, align 8, !dbg !5577
  %tobool3 = icmp ne ptr %11, null, !dbg !5577
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5579

if.then:                                          ; preds = %cond.end
  %12 = load ptr, ptr %file, align 8, !dbg !5580
  %authenticated = getelementptr inbounds %struct.drm_file, ptr %12, i32 0, i32 0, !dbg !5582
  store i8 1, ptr %authenticated, align 8, !dbg !5583
  %13 = load ptr, ptr %file_priv.addr, align 8, !dbg !5584
  %master4 = getelementptr inbounds %struct.drm_file, ptr %13, i32 0, i32 9, !dbg !5585
  %14 = load ptr, ptr %master4, align 8, !dbg !5585
  %magic_map5 = getelementptr inbounds %struct.drm_master, ptr %14, i32 0, i32 4, !dbg !5586
  %15 = load ptr, ptr %auth, align 8, !dbg !5587
  %magic6 = getelementptr inbounds %struct.drm_auth, ptr %15, i32 0, i32 0, !dbg !5588
  %16 = load i32, ptr %magic6, align 4, !dbg !5588
  %conv7 = zext i32 %16 to i64, !dbg !5587
  %call8 = call ptr @idr_replace(ptr noundef %magic_map5, ptr noundef null, i64 noundef %conv7) #15, !dbg !5589
  br label %if.end, !dbg !5590

if.end:                                           ; preds = %if.then, %cond.end
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5591
  %master_mutex9 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 16, !dbg !5592
  call void @mutex_unlock(ptr noundef %master_mutex9) #15, !dbg !5593
  %18 = load ptr, ptr %file, align 8, !dbg !5594
  %tobool10 = icmp ne ptr %18, null, !dbg !5594
  %19 = zext i1 %tobool10 to i64, !dbg !5594
  %cond11 = select i1 %tobool10, i32 0, i32 -22, !dbg !5594
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #14, !dbg !5595
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth) #14, !dbg !5595
  ret i32 %cond11, !dbg !5596
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5597 dso_local ptr @idr_find(ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5602 dso_local ptr @idr_replace(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_master_create(ptr noundef %dev) #0 align 16 !dbg !5605 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5609, metadata !DIExpression()), !dbg !5611
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #14, !dbg !5612
  call void @llvm.dbg.declare(metadata ptr %master, metadata !5610, metadata !DIExpression()), !dbg !5613
  %call = call noalias ptr @kzalloc(i64 noundef 160, i32 noundef 3264) #16, !dbg !5614
  store ptr %call, ptr %master, align 8, !dbg !5615
  %0 = load ptr, ptr %master, align 8, !dbg !5616
  %tobool = icmp ne ptr %0, null, !dbg !5616
  br i1 %tobool, label %if.end, label %if.then, !dbg !5618

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5619

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %master, align 8, !dbg !5620
  %refcount = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 0, !dbg !5621
  call void @kref_init(ptr noundef %refcount) #15, !dbg !5622
  %2 = load ptr, ptr %master, align 8, !dbg !5623
  call void @drm_master_legacy_init(ptr noundef %2) #15, !dbg !5624
  %3 = load ptr, ptr %master, align 8, !dbg !5625
  %magic_map = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 4, !dbg !5626
  call void @idr_init_base(ptr noundef %magic_map, i32 noundef 1) #15, !dbg !5627
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5628
  %5 = load ptr, ptr %master, align 8, !dbg !5629
  %dev1 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 1, !dbg !5630
  store ptr %4, ptr %dev1, align 8, !dbg !5631
  %6 = load ptr, ptr %master, align 8, !dbg !5632
  %lessees = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 9, !dbg !5633
  call void @INIT_LIST_HEAD(ptr noundef %lessees) #15, !dbg !5634
  %7 = load ptr, ptr %master, align 8, !dbg !5635
  %lessee_list = getelementptr inbounds %struct.drm_master, ptr %7, i32 0, i32 8, !dbg !5636
  call void @INIT_LIST_HEAD(ptr noundef %lessee_list) #15, !dbg !5637
  %8 = load ptr, ptr %master, align 8, !dbg !5638
  %leases = getelementptr inbounds %struct.drm_master, ptr %8, i32 0, i32 10, !dbg !5639
  call void @idr_init(ptr noundef %leases) #15, !dbg !5640
  %9 = load ptr, ptr %master, align 8, !dbg !5641
  %lessee_idr = getelementptr inbounds %struct.drm_master, ptr %9, i32 0, i32 11, !dbg !5642
  call void @idr_init_base(ptr noundef %lessee_idr, i32 noundef 1) #15, !dbg !5643
  %10 = load ptr, ptr %master, align 8, !dbg !5644
  store ptr %10, ptr %retval, align 8, !dbg !5645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5645

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #14, !dbg !5646
  %11 = load ptr, ptr %retval, align 8, !dbg !5646
  ret ptr %11, !dbg !5646
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5647 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5651, metadata !DIExpression()), !dbg !5653
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5652, metadata !DIExpression()), !dbg !5654
  %0 = load i64, ptr %size.addr, align 8, !dbg !5655
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5656
  %or = or i32 %1, 256, !dbg !5657
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !5658
  ret ptr %call, !dbg !5659
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_init(ptr noundef %kref) #6 align 16 !dbg !5660 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !5662, metadata !DIExpression()), !dbg !5663
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !5664
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !5665
  call void @refcount_set(ptr noundef %refcount, i32 noundef 1) #15, !dbg !5666
  ret void, !dbg !5667
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_master_legacy_init(ptr noundef %master) #6 align 16 !dbg !5668 {
entry:
  %master.addr = alloca ptr, align 8
  store ptr %master, ptr %master.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %master.addr, metadata !5673, metadata !DIExpression()), !dbg !5674
  ret void, !dbg !5675
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @idr_init_base(ptr noundef %idr, i32 noundef %base) #6 align 16 !dbg !5676 {
entry:
  %idr.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !5680, metadata !DIExpression()), !dbg !5682
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5681, metadata !DIExpression()), !dbg !5683
  %0 = load ptr, ptr %idr.addr, align 8, !dbg !5684
  %idr_rt = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 0, !dbg !5684
  call void @xa_init_flags(ptr noundef %idr_rt, i32 noundef 67108868) #15, !dbg !5684
  %1 = load i32, ptr %base.addr, align 4, !dbg !5685
  %2 = load ptr, ptr %idr.addr, align 8, !dbg !5686
  %idr_base = getelementptr inbounds %struct.idr, ptr %2, i32 0, i32 1, !dbg !5687
  store i32 %1, ptr %idr_base, align 8, !dbg !5688
  %3 = load ptr, ptr %idr.addr, align 8, !dbg !5689
  %idr_next = getelementptr inbounds %struct.idr, ptr %3, i32 0, i32 2, !dbg !5690
  store i32 0, ptr %idr_next, align 4, !dbg !5691
  ret void, !dbg !5692
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !5693 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5698, metadata !DIExpression()), !dbg !5699
  br label %do.body, !dbg !5700

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5701

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5703

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5701

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5705
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5705
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5705
  store volatile ptr %0, ptr %next, align 8, !dbg !5705
  br label %do.end3, !dbg !5705

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5701

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5707

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5708

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5710

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5708

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5712
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5712
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5712
  store volatile ptr %2, ptr %prev, align 8, !dbg !5712
  br label %do.end9, !dbg !5712

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5708

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5714
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @idr_init(ptr noundef %idr) #6 align 16 !dbg !5715 {
entry:
  %idr.addr = alloca ptr, align 8
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  %0 = load ptr, ptr %idr.addr, align 8, !dbg !5721
  call void @idr_init_base(ptr noundef %0, i32 noundef 0) #15, !dbg !5722
  ret void, !dbg !5723
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_setmaster_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) #0 align 16 !dbg !5724 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %file_priv.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5726, metadata !DIExpression()), !dbg !5731
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5727, metadata !DIExpression()), !dbg !5732
  store ptr %file_priv, ptr %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_priv.addr, metadata !5728, metadata !DIExpression()), !dbg !5733
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !5734
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5729, metadata !DIExpression()), !dbg !5735
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5736
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 16, !dbg !5737
  call void @mutex_lock(ptr noundef %master_mutex) #15, !dbg !5738
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5739
  %2 = load ptr, ptr %file_priv.addr, align 8, !dbg !5740
  %call = call i32 @drm_master_check_perm(ptr noundef %1, ptr noundef %2) #15, !dbg !5741
  store i32 %call, ptr %ret, align 4, !dbg !5742
  %3 = load i32, ptr %ret, align 4, !dbg !5743
  %tobool = icmp ne i32 %3, 0, !dbg !5743
  br i1 %tobool, label %if.then, label %if.end, !dbg !5745

if.then:                                          ; preds = %entry
  br label %out_unlock, !dbg !5746

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %file_priv.addr, align 8, !dbg !5747
  %call1 = call zeroext i1 @drm_is_current_master_locked(ptr noundef %4) #15, !dbg !5749
  br i1 %call1, label %if.then2, label %if.end3, !dbg !5750

if.then2:                                         ; preds = %if.end
  br label %out_unlock, !dbg !5751

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5752
  %master = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 10, !dbg !5754
  %6 = load ptr, ptr %master, align 8, !dbg !5754
  %tobool4 = icmp ne ptr %6, null, !dbg !5752
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5755

if.then5:                                         ; preds = %if.end3
  store i32 -16, ptr %ret, align 4, !dbg !5756
  br label %out_unlock, !dbg !5758

if.end6:                                          ; preds = %if.end3
  %7 = load ptr, ptr %file_priv.addr, align 8, !dbg !5759
  %master7 = getelementptr inbounds %struct.drm_file, ptr %7, i32 0, i32 9, !dbg !5761
  %8 = load ptr, ptr %master7, align 8, !dbg !5761
  %tobool8 = icmp ne ptr %8, null, !dbg !5759
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5762

if.then9:                                         ; preds = %if.end6
  store i32 -22, ptr %ret, align 4, !dbg !5763
  br label %out_unlock, !dbg !5765

if.end10:                                         ; preds = %if.end6
  %9 = load ptr, ptr %file_priv.addr, align 8, !dbg !5766
  %is_master = getelementptr inbounds %struct.drm_file, ptr %9, i32 0, i32 7, !dbg !5768
  %10 = load i8, ptr %is_master, align 1, !dbg !5768, !range !5412, !noundef !720
  %tobool11 = trunc i8 %10 to i1, !dbg !5768
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !5769

if.then12:                                        ; preds = %if.end10
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5770
  %12 = load ptr, ptr %file_priv.addr, align 8, !dbg !5772
  %call13 = call i32 @drm_new_set_master(ptr noundef %11, ptr noundef %12) #15, !dbg !5773
  store i32 %call13, ptr %ret, align 4, !dbg !5774
  br label %out_unlock, !dbg !5775

if.end14:                                         ; preds = %if.end10
  %13 = load ptr, ptr %file_priv.addr, align 8, !dbg !5776
  %master15 = getelementptr inbounds %struct.drm_file, ptr %13, i32 0, i32 9, !dbg !5778
  %14 = load ptr, ptr %master15, align 8, !dbg !5778
  %lessor = getelementptr inbounds %struct.drm_master, ptr %14, i32 0, i32 6, !dbg !5779
  %15 = load ptr, ptr %lessor, align 8, !dbg !5779
  %cmp = icmp ne ptr %15, null, !dbg !5780
  br i1 %cmp, label %if.then16, label %if.end20, !dbg !5781

if.then16:                                        ; preds = %if.end14
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5782
  %tobool17 = icmp ne ptr %16, null, !dbg !5782
  br i1 %tobool17, label %cond.true, label %cond.false, !dbg !5782

cond.true:                                        ; preds = %if.then16
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5782
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 2, !dbg !5782
  %18 = load ptr, ptr %dev18, align 8, !dbg !5782
  br label %cond.end, !dbg !5782

cond.false:                                       ; preds = %if.then16
  br label %cond.end, !dbg !5782

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %18, %cond.true ], [ null, %cond.false ], !dbg !5782
  %19 = load ptr, ptr %file_priv.addr, align 8, !dbg !5782
  %master19 = getelementptr inbounds %struct.drm_file, ptr %19, i32 0, i32 9, !dbg !5782
  %20 = load ptr, ptr %master19, align 8, !dbg !5782
  %lessee_id = getelementptr inbounds %struct.drm_master, ptr %20, i32 0, i32 7, !dbg !5782
  %21 = load i32, ptr %lessee_id, align 8, !dbg !5782
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 7, ptr noundef @.str.1, i32 noundef %21) #15, !dbg !5782
  store i32 -22, ptr %ret, align 4, !dbg !5784
  br label %out_unlock, !dbg !5785

if.end20:                                         ; preds = %if.end14
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5786
  %23 = load ptr, ptr %file_priv.addr, align 8, !dbg !5787
  call void @drm_set_master(ptr noundef %22, ptr noundef %23, i1 noundef zeroext false) #15, !dbg !5788
  br label %out_unlock, !dbg !5788

out_unlock:                                       ; preds = %if.end20, %cond.end, %if.then12, %if.then9, %if.then5, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !5730), !dbg !5789
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !5790
  %master_mutex21 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 16, !dbg !5791
  call void @mutex_unlock(ptr noundef %master_mutex21) #15, !dbg !5792
  %25 = load i32, ptr %ret, align 4, !dbg !5793
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !5794
  ret i32 %25, !dbg !5795
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_master_check_perm(ptr noundef %dev, ptr noundef %file_priv) #0 align 16 !dbg !5796 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %file_priv.addr = alloca ptr, align 8
  %__UNIQUE_ID_rcu306 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5798, metadata !DIExpression()), !dbg !5803
  store ptr %file_priv, ptr %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_priv.addr, metadata !5799, metadata !DIExpression()), !dbg !5804
  %0 = load ptr, ptr %file_priv.addr, align 8, !dbg !5805
  %was_master = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 6, !dbg !5806
  %1 = load i8, ptr %was_master, align 2, !dbg !5806, !range !5412, !noundef !720
  %tobool = trunc i8 %1 to i1, !dbg !5806
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5807

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu306) #14, !dbg !5808
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu306, metadata !5800, metadata !DIExpression()), !dbg !5808
  br label %do.body, !dbg !5809

do.body:                                          ; preds = %land.lhs.true
  br label %do.cond, !dbg !5811

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5811

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %file_priv.addr, align 8, !dbg !5809
  %pid = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 11, !dbg !5809
  %3 = load volatile ptr, ptr %pid, align 8, !dbg !5809
  store ptr %3, ptr %tmp, align 8, !dbg !5811
  %4 = load ptr, ptr %tmp, align 8, !dbg !5809
  store ptr %4, ptr %__UNIQUE_ID_rcu306, align 8, !dbg !5808
  %5 = load ptr, ptr %__UNIQUE_ID_rcu306, align 8, !dbg !5808
  store ptr %5, ptr %tmp1, align 8, !dbg !5808
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu306) #14, !dbg !5813
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5808
  %call = call ptr @get_current() #15, !dbg !5814
  %call2 = call ptr @task_tgid(ptr noundef %call) #15, !dbg !5815
  %cmp = icmp eq ptr %6, %call2, !dbg !5816
  br i1 %cmp, label %if.then, label %if.end, !dbg !5817

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !5818
  br label %return, !dbg !5818

if.end:                                           ; preds = %do.end, %entry
  %call3 = call zeroext i1 @capable(i32 noundef 21) #15, !dbg !5819
  br i1 %call3, label %if.end5, label %if.then4, !dbg !5821

if.then4:                                         ; preds = %if.end
  store i32 -13, ptr %retval, align 4, !dbg !5822
  br label %return, !dbg !5822

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5823
  br label %return, !dbg !5823

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !5824
  ret i32 %7, !dbg !5824
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_new_set_master(ptr noundef %dev, ptr noundef %fpriv) #0 align 16 !dbg !5825 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %fpriv.addr = alloca ptr, align 8
  %old_master = alloca ptr, align 8
  %new_master = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5827, metadata !DIExpression()), !dbg !5836
  store ptr %fpriv, ptr %fpriv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpriv.addr, metadata !5828, metadata !DIExpression()), !dbg !5837
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_master) #14, !dbg !5838
  call void @llvm.dbg.declare(metadata ptr %old_master, metadata !5829, metadata !DIExpression()), !dbg !5839
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_master) #14, !dbg !5840
  call void @llvm.dbg.declare(metadata ptr %new_master, metadata !5830, metadata !DIExpression()), !dbg !5841
  br label %do.body, !dbg !5842

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5843
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 16, !dbg !5843
  br label %do.cond, !dbg !5843

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5843

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5845
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5831, metadata !DIExpression()), !dbg !5845
  %1 = load ptr, ptr %fpriv.addr, align 8, !dbg !5845
  %is_master = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 7, !dbg !5845
  %2 = load i8, ptr %is_master, align 1, !dbg !5845, !range !5412, !noundef !720
  %tobool = trunc i8 %2 to i1, !dbg !5845
  %lnot = xor i1 %tobool, true, !dbg !5845
  %lnot1 = xor i1 %lnot, true, !dbg !5845
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5845
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5845
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5846
  %tobool2 = icmp ne i32 %3, 0, !dbg !5846
  %lnot3 = xor i1 %tobool2, true, !dbg !5846
  %lnot5 = xor i1 %lnot3, true, !dbg !5846
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5846
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5846
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5846
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5846
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5845

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !5846

do.body8:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !5847
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5833, metadata !DIExpression()), !dbg !5847
  store i32 2305, ptr %__flags, align 4, !dbg !5847
  br label %do.body9, !dbg !5847

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !5848

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5848

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5847

do.body12:                                        ; preds = %do.end11
  %4 = load i32, ptr %__flags, align 4, !dbg !5850
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 172, i32 %4, i64 12) #14, !dbg !5850, !srcloc !5852
  br label %do.cond13, !dbg !5850

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5850

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !5847

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !5853

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !5853

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !5846
  br label %do.cond18, !dbg !5847

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !5847

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !5847

if.end:                                           ; preds = %do.end19, %do.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5845
  %tobool20 = icmp ne i32 %5, 0, !dbg !5845
  %lnot21 = xor i1 %tobool20, true, !dbg !5845
  %lnot23 = xor i1 %lnot21, true, !dbg !5845
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !5845
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !5845
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !5845
  store i64 %expval26, ptr %tmp, align 8, !dbg !5846
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5855
  %6 = load i64, ptr %tmp, align 8, !dbg !5845
  %7 = load ptr, ptr %fpriv.addr, align 8, !dbg !5856
  %master = getelementptr inbounds %struct.drm_file, ptr %7, i32 0, i32 9, !dbg !5857
  %8 = load ptr, ptr %master, align 8, !dbg !5857
  store ptr %8, ptr %old_master, align 8, !dbg !5858
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5859
  %call = call ptr @drm_master_create(ptr noundef %9) #15, !dbg !5860
  store ptr %call, ptr %new_master, align 8, !dbg !5861
  %10 = load ptr, ptr %new_master, align 8, !dbg !5862
  %tobool27 = icmp ne ptr %10, null, !dbg !5862
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !5864

if.then28:                                        ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5865

if.end29:                                         ; preds = %if.end
  %11 = load ptr, ptr %fpriv.addr, align 8, !dbg !5866
  %master_lookup_lock = getelementptr inbounds %struct.drm_file, ptr %11, i32 0, i32 10, !dbg !5867
  call void @spin_lock(ptr noundef %master_lookup_lock) #15, !dbg !5868
  %12 = load ptr, ptr %new_master, align 8, !dbg !5869
  %13 = load ptr, ptr %fpriv.addr, align 8, !dbg !5870
  %master30 = getelementptr inbounds %struct.drm_file, ptr %13, i32 0, i32 9, !dbg !5871
  store ptr %12, ptr %master30, align 8, !dbg !5872
  %14 = load ptr, ptr %fpriv.addr, align 8, !dbg !5873
  %master_lookup_lock31 = getelementptr inbounds %struct.drm_file, ptr %14, i32 0, i32 10, !dbg !5874
  call void @spin_unlock(ptr noundef %master_lookup_lock31) #15, !dbg !5875
  %15 = load ptr, ptr %fpriv.addr, align 8, !dbg !5876
  %is_master32 = getelementptr inbounds %struct.drm_file, ptr %15, i32 0, i32 7, !dbg !5877
  store i8 1, ptr %is_master32, align 1, !dbg !5878
  %16 = load ptr, ptr %fpriv.addr, align 8, !dbg !5879
  %authenticated = getelementptr inbounds %struct.drm_file, ptr %16, i32 0, i32 0, !dbg !5880
  store i8 1, ptr %authenticated, align 8, !dbg !5881
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5882
  %18 = load ptr, ptr %fpriv.addr, align 8, !dbg !5883
  call void @drm_set_master(ptr noundef %17, ptr noundef %18, i1 noundef zeroext true) #15, !dbg !5884
  %19 = load ptr, ptr %old_master, align 8, !dbg !5885
  %tobool33 = icmp ne ptr %19, null, !dbg !5885
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5887

if.then34:                                        ; preds = %if.end29
  call void @drm_master_put(ptr noundef %old_master) #15, !dbg !5888
  br label %if.end35, !dbg !5888

if.end35:                                         ; preds = %if.then34, %if.end29
  store i32 0, ptr %retval, align 4, !dbg !5889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5889

cleanup:                                          ; preds = %if.end35, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_master) #14, !dbg !5890
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_master) #14, !dbg !5890
  %20 = load i32, ptr %retval, align 4, !dbg !5890
  ret i32 %20, !dbg !5890
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_set_master(ptr noundef %dev, ptr noundef %fpriv, i1 noundef zeroext %new_master) #0 align 16 !dbg !5891 {
entry:
  %dev.addr = alloca ptr, align 8
  %fpriv.addr = alloca ptr, align 8
  %new_master.addr = alloca i8, align 1
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5893, metadata !DIExpression()), !dbg !5896
  store ptr %fpriv, ptr %fpriv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpriv.addr, metadata !5894, metadata !DIExpression()), !dbg !5897
  %frombool = zext i1 %new_master to i8
  store i8 %frombool, ptr %new_master.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %new_master.addr, metadata !5895, metadata !DIExpression()), !dbg !5898
  %0 = load ptr, ptr %fpriv.addr, align 8, !dbg !5899
  %master = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 9, !dbg !5900
  %1 = load ptr, ptr %master, align 8, !dbg !5900
  %call = call ptr @drm_master_get(ptr noundef %1) #15, !dbg !5901
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5902
  %master1 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 10, !dbg !5903
  store ptr %call, ptr %master1, align 8, !dbg !5904
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5905
  %driver = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 4, !dbg !5907
  %4 = load ptr, ptr %driver, align 8, !dbg !5907
  %master_set = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 6, !dbg !5908
  %5 = load ptr, ptr %master_set, align 8, !dbg !5908
  %tobool = icmp ne ptr %5, null, !dbg !5905
  br i1 %tobool, label %if.then, label %if.end, !dbg !5909

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5910
  %driver2 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 4, !dbg !5911
  %7 = load ptr, ptr %driver2, align 8, !dbg !5911
  %master_set3 = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 6, !dbg !5912
  %8 = load ptr, ptr %master_set3, align 8, !dbg !5912
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5913
  %10 = load ptr, ptr %fpriv.addr, align 8, !dbg !5914
  %11 = load i8, ptr %new_master.addr, align 1, !dbg !5915, !range !5412, !noundef !720
  %tobool4 = trunc i8 %11 to i1, !dbg !5915
  call void %8(ptr noundef %9, ptr noundef %10, i1 noundef zeroext %tobool4) #15, !dbg !5910
  br label %if.end, !dbg !5910

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %fpriv.addr, align 8, !dbg !5916
  %was_master = getelementptr inbounds %struct.drm_file, ptr %12, i32 0, i32 6, !dbg !5917
  store i8 1, ptr %was_master, align 2, !dbg !5918
  ret void, !dbg !5919
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_dropmaster_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) #0 align 16 !dbg !5920 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %file_priv.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5922, metadata !DIExpression()), !dbg !5927
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5923, metadata !DIExpression()), !dbg !5928
  store ptr %file_priv, ptr %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_priv.addr, metadata !5924, metadata !DIExpression()), !dbg !5929
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !5930
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5925, metadata !DIExpression()), !dbg !5931
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5932
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 16, !dbg !5933
  call void @mutex_lock(ptr noundef %master_mutex) #15, !dbg !5934
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5935
  %2 = load ptr, ptr %file_priv.addr, align 8, !dbg !5936
  %call = call i32 @drm_master_check_perm(ptr noundef %1, ptr noundef %2) #15, !dbg !5937
  store i32 %call, ptr %ret, align 4, !dbg !5938
  %3 = load i32, ptr %ret, align 4, !dbg !5939
  %tobool = icmp ne i32 %3, 0, !dbg !5939
  br i1 %tobool, label %if.then, label %if.end, !dbg !5941

if.then:                                          ; preds = %entry
  br label %out_unlock, !dbg !5942

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %file_priv.addr, align 8, !dbg !5943
  %call1 = call zeroext i1 @drm_is_current_master_locked(ptr noundef %4) #15, !dbg !5945
  br i1 %call1, label %if.end3, label %if.then2, !dbg !5946

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %ret, align 4, !dbg !5947
  br label %out_unlock, !dbg !5949

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5950
  %master = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 10, !dbg !5952
  %6 = load ptr, ptr %master, align 8, !dbg !5952
  %tobool4 = icmp ne ptr %6, null, !dbg !5950
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5953

if.then5:                                         ; preds = %if.end3
  store i32 -22, ptr %ret, align 4, !dbg !5954
  br label %out_unlock, !dbg !5956

if.end6:                                          ; preds = %if.end3
  %7 = load ptr, ptr %file_priv.addr, align 8, !dbg !5957
  %master7 = getelementptr inbounds %struct.drm_file, ptr %7, i32 0, i32 9, !dbg !5959
  %8 = load ptr, ptr %master7, align 8, !dbg !5959
  %lessor = getelementptr inbounds %struct.drm_master, ptr %8, i32 0, i32 6, !dbg !5960
  %9 = load ptr, ptr %lessor, align 8, !dbg !5960
  %cmp = icmp ne ptr %9, null, !dbg !5961
  br i1 %cmp, label %if.then8, label %if.end12, !dbg !5962

if.then8:                                         ; preds = %if.end6
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5963
  %tobool9 = icmp ne ptr %10, null, !dbg !5963
  br i1 %tobool9, label %cond.true, label %cond.false, !dbg !5963

cond.true:                                        ; preds = %if.then8
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5963
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2, !dbg !5963
  %12 = load ptr, ptr %dev10, align 8, !dbg !5963
  br label %cond.end, !dbg !5963

cond.false:                                       ; preds = %if.then8
  br label %cond.end, !dbg !5963

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ null, %cond.false ], !dbg !5963
  %13 = load ptr, ptr %file_priv.addr, align 8, !dbg !5963
  %master11 = getelementptr inbounds %struct.drm_file, ptr %13, i32 0, i32 9, !dbg !5963
  %14 = load ptr, ptr %master11, align 8, !dbg !5963
  %lessee_id = getelementptr inbounds %struct.drm_master, ptr %14, i32 0, i32 7, !dbg !5963
  %15 = load i32, ptr %lessee_id, align 8, !dbg !5963
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 7, ptr noundef @.str.2, i32 noundef %15) #15, !dbg !5963
  store i32 -22, ptr %ret, align 4, !dbg !5965
  br label %out_unlock, !dbg !5966

if.end12:                                         ; preds = %if.end6
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5967
  %17 = load ptr, ptr %file_priv.addr, align 8, !dbg !5968
  call void @drm_drop_master(ptr noundef %16, ptr noundef %17) #15, !dbg !5969
  br label %out_unlock, !dbg !5969

out_unlock:                                       ; preds = %if.end12, %cond.end, %if.then5, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !5926), !dbg !5970
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5971
  %master_mutex13 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 16, !dbg !5972
  call void @mutex_unlock(ptr noundef %master_mutex13) #15, !dbg !5973
  %19 = load i32, ptr %ret, align 4, !dbg !5974
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !5975
  ret i32 %19, !dbg !5976
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_drop_master(ptr noundef %dev, ptr noundef %fpriv) #0 align 16 !dbg !5977 {
entry:
  %dev.addr = alloca ptr, align 8
  %fpriv.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5979, metadata !DIExpression()), !dbg !5981
  store ptr %fpriv, ptr %fpriv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpriv.addr, metadata !5980, metadata !DIExpression()), !dbg !5982
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5983
  %driver = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4, !dbg !5985
  %1 = load ptr, ptr %driver, align 8, !dbg !5985
  %master_drop = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 7, !dbg !5986
  %2 = load ptr, ptr %master_drop, align 8, !dbg !5986
  %tobool = icmp ne ptr %2, null, !dbg !5983
  br i1 %tobool, label %if.then, label %if.end, !dbg !5987

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5988
  %driver1 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 4, !dbg !5989
  %4 = load ptr, ptr %driver1, align 8, !dbg !5989
  %master_drop2 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 7, !dbg !5990
  %5 = load ptr, ptr %master_drop2, align 8, !dbg !5990
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5991
  %7 = load ptr, ptr %fpriv.addr, align 8, !dbg !5992
  call void %5(ptr noundef %6, ptr noundef %7) #15, !dbg !5988
  br label %if.end, !dbg !5988

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5993
  %master = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 10, !dbg !5994
  call void @drm_master_put(ptr noundef %master) #15, !dbg !5995
  ret void, !dbg !5996
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_master_open(ptr noundef %file_priv) #0 align 16 !dbg !5997 {
entry:
  %file_priv.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %file_priv, ptr %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_priv.addr, metadata !6001, metadata !DIExpression()), !dbg !6004
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !6005
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6002, metadata !DIExpression()), !dbg !6006
  %0 = load ptr, ptr %file_priv.addr, align 8, !dbg !6007
  %minor = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 15, !dbg !6008
  %1 = load ptr, ptr %minor, align 8, !dbg !6008
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 3, !dbg !6009
  %2 = load ptr, ptr %dev1, align 8, !dbg !6009
  store ptr %2, ptr %dev, align 8, !dbg !6006
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6010
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6003, metadata !DIExpression()), !dbg !6011
  store i32 0, ptr %ret, align 4, !dbg !6011
  %3 = load ptr, ptr %dev, align 8, !dbg !6012
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 16, !dbg !6013
  call void @mutex_lock(ptr noundef %master_mutex) #15, !dbg !6014
  %4 = load ptr, ptr %dev, align 8, !dbg !6015
  %master = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 10, !dbg !6017
  %5 = load ptr, ptr %master, align 8, !dbg !6017
  %tobool = icmp ne ptr %5, null, !dbg !6015
  br i1 %tobool, label %if.else, label %if.then, !dbg !6018

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %dev, align 8, !dbg !6019
  %7 = load ptr, ptr %file_priv.addr, align 8, !dbg !6021
  %call = call i32 @drm_new_set_master(ptr noundef %6, ptr noundef %7) #15, !dbg !6022
  store i32 %call, ptr %ret, align 4, !dbg !6023
  br label %if.end, !dbg !6024

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %file_priv.addr, align 8, !dbg !6025
  %master_lookup_lock = getelementptr inbounds %struct.drm_file, ptr %8, i32 0, i32 10, !dbg !6027
  call void @spin_lock(ptr noundef %master_lookup_lock) #15, !dbg !6028
  %9 = load ptr, ptr %dev, align 8, !dbg !6029
  %master2 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 10, !dbg !6030
  %10 = load ptr, ptr %master2, align 8, !dbg !6030
  %call3 = call ptr @drm_master_get(ptr noundef %10) #15, !dbg !6031
  %11 = load ptr, ptr %file_priv.addr, align 8, !dbg !6032
  %master4 = getelementptr inbounds %struct.drm_file, ptr %11, i32 0, i32 9, !dbg !6033
  store ptr %call3, ptr %master4, align 8, !dbg !6034
  %12 = load ptr, ptr %file_priv.addr, align 8, !dbg !6035
  %master_lookup_lock5 = getelementptr inbounds %struct.drm_file, ptr %12, i32 0, i32 10, !dbg !6036
  call void @spin_unlock(ptr noundef %master_lookup_lock5) #15, !dbg !6037
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load ptr, ptr %dev, align 8, !dbg !6038
  %master_mutex6 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 16, !dbg !6039
  call void @mutex_unlock(ptr noundef %master_mutex6) #15, !dbg !6040
  %14 = load i32, ptr %ret, align 4, !dbg !6041
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !6042
  ret i32 %14, !dbg !6043
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_master_get(ptr noundef %master) #0 align 16 !dbg !6044 {
entry:
  %master.addr = alloca ptr, align 8
  store ptr %master, ptr %master.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %master.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  %0 = load ptr, ptr %master.addr, align 8, !dbg !6050
  %refcount = getelementptr inbounds %struct.drm_master, ptr %0, i32 0, i32 0, !dbg !6051
  call void @kref_get(ptr noundef %refcount) #15, !dbg !6052
  %1 = load ptr, ptr %master.addr, align 8, !dbg !6053
  ret ptr %1, !dbg !6054
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_master_release(ptr noundef %file_priv) #0 align 16 !dbg !6055 {
entry:
  %file_priv.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %master = alloca ptr, align 8
  store ptr %file_priv, ptr %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_priv.addr, metadata !6059, metadata !DIExpression()), !dbg !6063
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !6064
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6060, metadata !DIExpression()), !dbg !6065
  %0 = load ptr, ptr %file_priv.addr, align 8, !dbg !6066
  %minor = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 15, !dbg !6067
  %1 = load ptr, ptr %minor, align 8, !dbg !6067
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 3, !dbg !6068
  %2 = load ptr, ptr %dev1, align 8, !dbg !6068
  store ptr %2, ptr %dev, align 8, !dbg !6065
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #14, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %master, metadata !6061, metadata !DIExpression()), !dbg !6070
  %3 = load ptr, ptr %dev, align 8, !dbg !6071
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 16, !dbg !6072
  call void @mutex_lock(ptr noundef %master_mutex) #15, !dbg !6073
  %4 = load ptr, ptr %file_priv.addr, align 8, !dbg !6074
  %master2 = getelementptr inbounds %struct.drm_file, ptr %4, i32 0, i32 9, !dbg !6075
  %5 = load ptr, ptr %master2, align 8, !dbg !6075
  store ptr %5, ptr %master, align 8, !dbg !6076
  %6 = load ptr, ptr %file_priv.addr, align 8, !dbg !6077
  %magic = getelementptr inbounds %struct.drm_file, ptr %6, i32 0, i32 13, !dbg !6079
  %7 = load i32, ptr %magic, align 8, !dbg !6079
  %tobool = icmp ne i32 %7, 0, !dbg !6077
  br i1 %tobool, label %if.then, label %if.end, !dbg !6080

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %file_priv.addr, align 8, !dbg !6081
  %master3 = getelementptr inbounds %struct.drm_file, ptr %8, i32 0, i32 9, !dbg !6082
  %9 = load ptr, ptr %master3, align 8, !dbg !6082
  %magic_map = getelementptr inbounds %struct.drm_master, ptr %9, i32 0, i32 4, !dbg !6083
  %10 = load ptr, ptr %file_priv.addr, align 8, !dbg !6084
  %magic4 = getelementptr inbounds %struct.drm_file, ptr %10, i32 0, i32 13, !dbg !6085
  %11 = load i32, ptr %magic4, align 8, !dbg !6085
  %conv = zext i32 %11 to i64, !dbg !6084
  %call = call ptr @idr_remove(ptr noundef %magic_map, i64 noundef %conv) #15, !dbg !6086
  br label %if.end, !dbg !6086

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %file_priv.addr, align 8, !dbg !6087
  %call5 = call zeroext i1 @drm_is_current_master_locked(ptr noundef %12) #15, !dbg !6089
  br i1 %call5, label %if.end7, label %if.then6, !dbg !6090

if.then6:                                         ; preds = %if.end
  br label %out, !dbg !6091

if.end7:                                          ; preds = %if.end
  %13 = load ptr, ptr %dev, align 8, !dbg !6092
  %14 = load ptr, ptr %master, align 8, !dbg !6093
  call void @drm_legacy_lock_master_cleanup(ptr noundef %13, ptr noundef %14) #15, !dbg !6094
  %15 = load ptr, ptr %dev, align 8, !dbg !6095
  %master8 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 10, !dbg !6097
  %16 = load ptr, ptr %master8, align 8, !dbg !6097
  %17 = load ptr, ptr %file_priv.addr, align 8, !dbg !6098
  %master9 = getelementptr inbounds %struct.drm_file, ptr %17, i32 0, i32 9, !dbg !6099
  %18 = load ptr, ptr %master9, align 8, !dbg !6099
  %cmp = icmp eq ptr %16, %18, !dbg !6100
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !6101

if.then11:                                        ; preds = %if.end7
  %19 = load ptr, ptr %dev, align 8, !dbg !6102
  %20 = load ptr, ptr %file_priv.addr, align 8, !dbg !6103
  call void @drm_drop_master(ptr noundef %19, ptr noundef %20) #15, !dbg !6104
  br label %if.end12, !dbg !6104

if.end12:                                         ; preds = %if.then11, %if.end7
  br label %out, !dbg !6099

out:                                              ; preds = %if.end12, %if.then6
  call void @llvm.dbg.label(metadata !6062), !dbg !6105
  %21 = load ptr, ptr %dev, align 8, !dbg !6106
  %call13 = call zeroext i1 @drm_core_check_feature(ptr noundef %21, i32 noundef 2) #15, !dbg !6108
  br i1 %call13, label %land.lhs.true, label %if.end18, !dbg !6109

land.lhs.true:                                    ; preds = %out
  %22 = load ptr, ptr %file_priv.addr, align 8, !dbg !6110
  %is_master = getelementptr inbounds %struct.drm_file, ptr %22, i32 0, i32 7, !dbg !6111
  %23 = load i8, ptr %is_master, align 1, !dbg !6111, !range !5412, !noundef !720
  %tobool15 = trunc i8 %23 to i1, !dbg !6111
  br i1 %tobool15, label %if.then17, label %if.end18, !dbg !6112

if.then17:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %master, align 8, !dbg !6113
  call void @drm_lease_revoke(ptr noundef %24) #15, !dbg !6115
  br label %if.end18, !dbg !6116

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %out
  %25 = load ptr, ptr %file_priv.addr, align 8, !dbg !6117
  %master19 = getelementptr inbounds %struct.drm_file, ptr %25, i32 0, i32 9, !dbg !6119
  %26 = load ptr, ptr %master19, align 8, !dbg !6119
  %tobool20 = icmp ne ptr %26, null, !dbg !6117
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !6120

if.then21:                                        ; preds = %if.end18
  %27 = load ptr, ptr %file_priv.addr, align 8, !dbg !6121
  %master22 = getelementptr inbounds %struct.drm_file, ptr %27, i32 0, i32 9, !dbg !6122
  call void @drm_master_put(ptr noundef %master22) #15, !dbg !6123
  br label %if.end23, !dbg !6123

if.end23:                                         ; preds = %if.then21, %if.end18
  %28 = load ptr, ptr %dev, align 8, !dbg !6124
  %master_mutex24 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 16, !dbg !6125
  call void @mutex_unlock(ptr noundef %master_mutex24) #15, !dbg !6126
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #14, !dbg !6127
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !6127
  ret void, !dbg !6127
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6128 dso_local ptr @idr_remove(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_legacy_lock_master_cleanup(ptr noundef %dev, ptr noundef %master) #6 align 16 !dbg !6131 {
entry:
  %dev.addr = alloca ptr, align 8
  %master.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6135, metadata !DIExpression()), !dbg !6137
  store ptr %master, ptr %master.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %master.addr, metadata !6136, metadata !DIExpression()), !dbg !6138
  ret void, !dbg !6139
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_core_check_feature(ptr noundef %dev, i32 noundef %feature) #6 align 16 !dbg !6140 {
entry:
  %dev.addr = alloca ptr, align 8
  %feature.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6146, metadata !DIExpression()), !dbg !6148
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !6147, metadata !DIExpression()), !dbg !6149
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6150
  %1 = load i32, ptr %feature.addr, align 4, !dbg !6151
  %call = call zeroext i1 @drm_core_check_all_features(ptr noundef %0, i32 noundef %1) #15, !dbg !6152
  ret i1 %call, !dbg !6153
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6154 dso_local void @drm_lease_revoke(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_master_put(ptr noundef %master) #0 align 16 !dbg !6156 {
entry:
  %master.addr = alloca ptr, align 8
  store ptr %master, ptr %master.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %master.addr, metadata !6161, metadata !DIExpression()), !dbg !6162
  %0 = load ptr, ptr %master.addr, align 8, !dbg !6163
  %1 = load ptr, ptr %0, align 8, !dbg !6164
  %refcount = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 0, !dbg !6165
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @drm_master_destroy) #15, !dbg !6166
  %2 = load ptr, ptr %master.addr, align 8, !dbg !6167
  store ptr null, ptr %2, align 8, !dbg !6168
  ret void, !dbg !6169
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #6 align 16 !dbg !6170 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6172, metadata !DIExpression()), !dbg !6173
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6174
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6175
  call void @refcount_inc(ptr noundef %refcount) #15, !dbg !6176
  ret void, !dbg !6177
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_file_get_master(ptr noundef %file_priv) #0 align 16 !dbg !6178 {
entry:
  %file_priv.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  store ptr %file_priv, ptr %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_priv.addr, metadata !6182, metadata !DIExpression()), !dbg !6185
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #14, !dbg !6186
  call void @llvm.dbg.declare(metadata ptr %master, metadata !6183, metadata !DIExpression()), !dbg !6187
  store ptr null, ptr %master, align 8, !dbg !6187
  %0 = load ptr, ptr %file_priv.addr, align 8, !dbg !6188
  %master_lookup_lock = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 10, !dbg !6189
  call void @spin_lock(ptr noundef %master_lookup_lock) #15, !dbg !6190
  %1 = load ptr, ptr %file_priv.addr, align 8, !dbg !6191
  %master1 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 9, !dbg !6193
  %2 = load ptr, ptr %master1, align 8, !dbg !6193
  %tobool = icmp ne ptr %2, null, !dbg !6191
  br i1 %tobool, label %if.end, label %if.then, !dbg !6194

if.then:                                          ; preds = %entry
  br label %unlock, !dbg !6195

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %file_priv.addr, align 8, !dbg !6196
  %master2 = getelementptr inbounds %struct.drm_file, ptr %3, i32 0, i32 9, !dbg !6197
  %4 = load ptr, ptr %master2, align 8, !dbg !6197
  %call = call ptr @drm_master_get(ptr noundef %4) #15, !dbg !6198
  store ptr %call, ptr %master, align 8, !dbg !6199
  br label %unlock, !dbg !6200

unlock:                                           ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !6184), !dbg !6201
  %5 = load ptr, ptr %file_priv.addr, align 8, !dbg !6202
  %master_lookup_lock3 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 10, !dbg !6203
  call void @spin_unlock(ptr noundef %master_lookup_lock3) #15, !dbg !6204
  %6 = load ptr, ptr %master, align 8, !dbg !6205
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #14, !dbg !6206
  ret ptr %6, !dbg !6207
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #6 align 16 !dbg !6208 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6212, metadata !DIExpression()), !dbg !6214
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !6213, metadata !DIExpression()), !dbg !6215
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6216
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6218
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #15, !dbg !6219
  br i1 %call, label %if.then, label %if.end, !dbg !6220

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !6221
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !6223
  call void %1(ptr noundef %2) #15, !dbg !6221
  store i32 1, ptr %retval, align 4, !dbg !6224
  br label %return, !dbg !6224

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6225
  br label %return, !dbg !6225

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6226
  ret i32 %3, !dbg !6226
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_master_destroy(ptr noundef %kref) #0 align 16 !dbg !6227 {
entry:
  %kref.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6229, metadata !DIExpression()), !dbg !6234
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #14, !dbg !6235
  call void @llvm.dbg.declare(metadata ptr %master, metadata !6230, metadata !DIExpression()), !dbg !6236
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6237
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6231, metadata !DIExpression()), !dbg !6237
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6237
  store ptr %0, ptr %__mptr, align 8, !dbg !6237
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6237
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6237
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6237
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6238
  %2 = load ptr, ptr %tmp, align 8, !dbg !6237
  store ptr %2, ptr %master, align 8, !dbg !6236
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !6239
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6233, metadata !DIExpression()), !dbg !6240
  %3 = load ptr, ptr %master, align 8, !dbg !6241
  %dev1 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 1, !dbg !6242
  %4 = load ptr, ptr %dev1, align 8, !dbg !6242
  store ptr %4, ptr %dev, align 8, !dbg !6240
  %5 = load ptr, ptr %dev, align 8, !dbg !6243
  %call = call zeroext i1 @drm_core_check_feature(ptr noundef %5, i32 noundef 2) #15, !dbg !6245
  br i1 %call, label %if.then, label %if.end, !dbg !6246

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %master, align 8, !dbg !6247
  call void @drm_lease_destroy(ptr noundef %6) #15, !dbg !6248
  br label %if.end, !dbg !6248

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %dev, align 8, !dbg !6249
  %8 = load ptr, ptr %master, align 8, !dbg !6250
  call void @drm_legacy_master_rmmaps(ptr noundef %7, ptr noundef %8) #15, !dbg !6251
  %9 = load ptr, ptr %master, align 8, !dbg !6252
  %magic_map = getelementptr inbounds %struct.drm_master, ptr %9, i32 0, i32 4, !dbg !6253
  call void @idr_destroy(ptr noundef %magic_map) #15, !dbg !6254
  %10 = load ptr, ptr %master, align 8, !dbg !6255
  %leases = getelementptr inbounds %struct.drm_master, ptr %10, i32 0, i32 10, !dbg !6256
  call void @idr_destroy(ptr noundef %leases) #15, !dbg !6257
  %11 = load ptr, ptr %master, align 8, !dbg !6258
  %lessee_idr = getelementptr inbounds %struct.drm_master, ptr %11, i32 0, i32 11, !dbg !6259
  call void @idr_destroy(ptr noundef %lessee_idr) #15, !dbg !6260
  %12 = load ptr, ptr %master, align 8, !dbg !6261
  %unique = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 2, !dbg !6262
  %13 = load ptr, ptr %unique, align 8, !dbg !6262
  call void @kfree(ptr noundef %13) #15, !dbg !6263
  %14 = load ptr, ptr %master, align 8, !dbg !6264
  call void @kfree(ptr noundef %14) #15, !dbg !6265
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !6266
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #14, !dbg !6266
  ret void, !dbg !6266
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @drm_master_internal_acquire(ptr noundef %dev) #0 align 16 !dbg !6267 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6271, metadata !DIExpression()), !dbg !6272
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6273
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 16, !dbg !6274
  call void @mutex_lock(ptr noundef %master_mutex) #15, !dbg !6275
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6276
  %master = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 10, !dbg !6278
  %2 = load ptr, ptr %master, align 8, !dbg !6278
  %tobool = icmp ne ptr %2, null, !dbg !6276
  br i1 %tobool, label %if.then, label %if.end, !dbg !6279

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6280
  %master_mutex1 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 16, !dbg !6282
  call void @mutex_unlock(ptr noundef %master_mutex1) #15, !dbg !6283
  store i1 false, ptr %retval, align 1, !dbg !6284
  br label %return, !dbg !6284

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !6285
  br label %return, !dbg !6285

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, ptr %retval, align 1, !dbg !6286
  ret i1 %4, !dbg !6286
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_master_internal_release(ptr noundef %dev) #0 align 16 !dbg !6287 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6289, metadata !DIExpression()), !dbg !6290
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6291
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 16, !dbg !6292
  call void @mutex_unlock(ptr noundef %master_mutex) #15, !dbg !6293
  ret void, !dbg !6294
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6295 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6300 dso_local ptr @drm_lease_owner(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6301 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6302 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6304, metadata !DIExpression()), !dbg !6309
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6305, metadata !DIExpression()), !dbg !6310
  %0 = load i64, ptr %size.addr, align 8, !dbg !6311
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6312
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6313

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6314
  %tobool = icmp ne i64 %2, 0, !dbg !6314
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6315

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !6316
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6306, metadata !DIExpression()), !dbg !6317
  %3 = load i64, ptr %size.addr, align 8, !dbg !6318
  %cmp = icmp ugt i64 %3, 8192, !dbg !6320
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6321

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6322
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6323
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !6324
  store ptr %call, ptr %retval, align 8, !dbg !6325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6325

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6326
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !6326
  store i32 %call2, ptr %index, align 4, !dbg !6327
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6328
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6329
  %9 = ptrtoint ptr %8 to i64, !dbg !6329
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !6330
  %idxprom = zext i32 %call3 to i64, !dbg !6331
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6331
  %10 = load i32, ptr %index, align 4, !dbg !6332
  %idxprom4 = zext i32 %10 to i64, !dbg !6331
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6331
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6331
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6333
  %13 = load i64, ptr %size.addr, align 8, !dbg !6334
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !6335
  store ptr %call6, ptr %retval, align 8, !dbg !6336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6336

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !6337
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6338
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6339
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !6340
  store ptr %call8, ptr %retval, align 8, !dbg !6341
  br label %return, !dbg !6341

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6342
  ret ptr %16, !dbg !6342
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6343 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !6344 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6348, metadata !DIExpression()), !dbg !6350
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6349, metadata !DIExpression()), !dbg !6351
  %0 = load i64, ptr %size.addr, align 8, !dbg !6352
  %tobool = icmp ne i64 %0, 0, !dbg !6352
  br i1 %tobool, label %if.end, label %if.then, !dbg !6354

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6355
  br label %return, !dbg !6355

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6356
  %cmp = icmp ule i64 %1, 8, !dbg !6358
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6359

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6360
  br label %return, !dbg !6360

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6361
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6363
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6364

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6365
  %cmp4 = icmp ule i64 %3, 96, !dbg !6366
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6367

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6368
  br label %return, !dbg !6368

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6369
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6371
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6372

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6373
  %cmp9 = icmp ule i64 %5, 192, !dbg !6374
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6375

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6376
  br label %return, !dbg !6376

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6377
  %cmp12 = icmp ule i64 %6, 8, !dbg !6379
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6380

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6381
  br label %return, !dbg !6381

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6382
  %cmp15 = icmp ule i64 %7, 16, !dbg !6384
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6385

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6386
  br label %return, !dbg !6386

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6387
  %cmp18 = icmp ule i64 %8, 32, !dbg !6389
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6390

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6391
  br label %return, !dbg !6391

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6392
  %cmp21 = icmp ule i64 %9, 64, !dbg !6394
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6395

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6396
  br label %return, !dbg !6396

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6397
  %cmp24 = icmp ule i64 %10, 128, !dbg !6399
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6400

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6401
  br label %return, !dbg !6401

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6402
  %cmp27 = icmp ule i64 %11, 256, !dbg !6404
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6405

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6406
  br label %return, !dbg !6406

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6407
  %cmp30 = icmp ule i64 %12, 512, !dbg !6409
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6410

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6411
  br label %return, !dbg !6411

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6412
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6414
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6415

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6416
  br label %return, !dbg !6416

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6417
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6419
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6420

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6421
  br label %return, !dbg !6421

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6422
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6424
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6425

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6426
  br label %return, !dbg !6426

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6427
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6429
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6430

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6431
  br label %return, !dbg !6431

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6432
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6434
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6435

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6436
  br label %return, !dbg !6436

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6437
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6439
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6440

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6441
  br label %return, !dbg !6441

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6442
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6444
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6445

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6446
  br label %return, !dbg !6446

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6447
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6449
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6450

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6451
  br label %return, !dbg !6451

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6452
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6454
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6455

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6456
  br label %return, !dbg !6456

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6457
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6459
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6460

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6461
  br label %return, !dbg !6461

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6462
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6464
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6465

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6466
  br label %return, !dbg !6466

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6467
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6469
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6470

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6471
  br label %return, !dbg !6471

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6472, !range !5412, !noundef !720
  %tobool69 = trunc i8 %25 to i1, !dbg !6472
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6474

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6475

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #18, !dbg !6476, !srcloc !6479
  unreachable, !dbg !6476

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6480

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6481

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6482

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6484

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6482

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #14, !dbg !6486, !srcloc !6488
  br label %do.end75, !dbg !6486

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6482

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6489
  br label %return, !dbg !6489

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6490
  ret i32 %26, !dbg !6490
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6491 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !6494 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6498, metadata !DIExpression()), !dbg !6500
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6499, metadata !DIExpression()), !dbg !6501
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6502
  %and = and i32 %0, 17, !dbg !6502
  %cmp = icmp eq i32 %and, 0, !dbg !6502
  %lnot = xor i1 %cmp, true, !dbg !6502
  %lnot1 = xor i1 %lnot, true, !dbg !6502
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6502
  %conv = sext i32 %lnot.ext to i64, !dbg !6502
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6502
  %tobool = icmp ne i64 %expval, 0, !dbg !6502
  br i1 %tobool, label %if.then, label %if.end, !dbg !6504

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6505
  br label %return, !dbg !6505

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6506
  %and2 = and i32 %1, 1, !dbg !6508
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6508
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6509

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6510
  br label %return, !dbg !6510

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6511
  br label %return, !dbg !6511

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6513
  ret i32 %2, !dbg !6513
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6514 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6515 dso_local void @__compiletime_assert_117() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #6 align 16 !dbg !6516 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6521, metadata !DIExpression()), !dbg !6523
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6522, metadata !DIExpression()), !dbg !6524
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6525
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !6526
  %1 = load i32, ptr %n.addr, align 4, !dbg !6527
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #15, !dbg !6528
  ret void, !dbg !6529
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !6530 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6536, metadata !DIExpression()), !dbg !6538
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6537, metadata !DIExpression()), !dbg !6539
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6540
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #15, !dbg !6541
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6542
  %2 = load i32, ptr %i.addr, align 4, !dbg !6543
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #15, !dbg !6544
  ret void, !dbg !6545
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6546 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6554, metadata !DIExpression()), !dbg !6556
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6555, metadata !DIExpression()), !dbg !6557
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6558
  %1 = load i64, ptr %size.addr, align 8, !dbg !6559
  %conv = trunc i64 %1 to i32, !dbg !6559
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !6560
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6561
  %3 = load i64, ptr %size.addr, align 8, !dbg !6561
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #15, !dbg !6561
  ret void, !dbg !6562
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !6563 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6566, metadata !DIExpression()), !dbg !6568
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6567, metadata !DIExpression()), !dbg !6569
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6570
  %1 = load i32, ptr %i.addr, align 4, !dbg !6571
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #15, !dbg !6572
  ret void, !dbg !6573
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !6574 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6579, metadata !DIExpression()), !dbg !6581
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6580, metadata !DIExpression()), !dbg !6582
  ret i1 true, !dbg !6583
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !6584 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6589, metadata !DIExpression()), !dbg !6592
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6590, metadata !DIExpression()), !dbg !6593
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6591, metadata !DIExpression()), !dbg !6594
  ret void, !dbg !6595
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !6596 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6599, metadata !DIExpression()), !dbg !6601
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6600, metadata !DIExpression()), !dbg !6602
  br label %do.body, !dbg !6603

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6604
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6604
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6604
  store volatile i32 %0, ptr %counter, align 4, !dbg !6604
  br label %do.end, !dbg !6604

do.end:                                           ; preds = %do.body
  ret void, !dbg !6606
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xa_init_flags(ptr noundef %xa, i32 noundef %flags) #6 align 16 !dbg !6607 {
entry:
  %xa.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %xa, ptr %xa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xa.addr, metadata !6612, metadata !DIExpression()), !dbg !6614
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6613, metadata !DIExpression()), !dbg !6615
  br label %do.body, !dbg !6616

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %xa.addr, align 8, !dbg !6617
  %xa_lock = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 0, !dbg !6617
  %call = call ptr @spinlock_check(ptr noundef %xa_lock) #15, !dbg !6617
  %1 = load ptr, ptr %xa.addr, align 8, !dbg !6617
  %xa_lock1 = getelementptr inbounds %struct.xarray, ptr %1, i32 0, i32 0, !dbg !6617
  %2 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !6617
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %2, i32 0, i32 0, !dbg !6617
  %3 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !6617
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !6617
  store i32 0, ptr %counter, align 4, !dbg !6617
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %xa_lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !6617
  br label %do.end, !dbg !6617

do.end:                                           ; preds = %do.body
  %4 = load i32, ptr %flags.addr, align 4, !dbg !6619
  %5 = load ptr, ptr %xa.addr, align 8, !dbg !6620
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %5, i32 0, i32 1, !dbg !6621
  store i32 %4, ptr %xa_flags, align 4, !dbg !6622
  %6 = load ptr, ptr %xa.addr, align 8, !dbg !6623
  %xa_head = getelementptr inbounds %struct.xarray, ptr %6, i32 0, i32 2, !dbg !6624
  store ptr null, ptr %xa_head, align 8, !dbg !6625
  ret void, !dbg !6626
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #3 align 16 !dbg !6627 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6631, metadata !DIExpression()), !dbg !6632
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6633
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6634
  ret ptr %1, !dbg !6635
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_tgid(ptr noundef %task) #6 align 16 !dbg !6636 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6640, metadata !DIExpression()), !dbg !6641
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6642
  %signal = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 104, !dbg !6643
  %1 = load ptr, ptr %signal, align 64, !dbg !6643
  %pids = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 23, !dbg !6644
  %arrayidx = getelementptr [4 x ptr], ptr %pids, i64 0, i64 1, !dbg !6642
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !6642
  ret ptr %2, !dbg !6645
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !6646 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6657
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6651, metadata !DIExpression()), !dbg !6657
  br label %do.body, !dbg !6657

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6658
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6653, metadata !DIExpression()), !dbg !6658
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6658
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6658
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6657
  br label %do.cond, !dbg !6658

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6658

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !6659
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6655, metadata !DIExpression()), !dbg !6659
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #19, !dbg !6659, !srcloc !6660
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6659
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6659
  %3 = inttoptr i64 %2 to ptr, !dbg !6659
  store ptr %3, ptr %tmp, align 8, !dbg !6659
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !6657
  %4 = load ptr, ptr %tmp, align 8, !dbg !6659
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6657
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6657
  store ptr %5, ptr %tmp1, align 8, !dbg !6657
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6661
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6657
  ret ptr %6, !dbg !6662
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6663 dso_local zeroext i1 @capable(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_core_check_all_features(ptr noundef %dev, i32 noundef %features) #6 align 16 !dbg !6666 {
entry:
  %dev.addr = alloca ptr, align 8
  %features.addr = alloca i32, align 4
  %supported = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6670, metadata !DIExpression()), !dbg !6673
  store i32 %features, ptr %features.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %features.addr, metadata !6671, metadata !DIExpression()), !dbg !6674
  call void @llvm.lifetime.start.p0(i64 4, ptr %supported) #14, !dbg !6675
  call void @llvm.dbg.declare(metadata ptr %supported, metadata !6672, metadata !DIExpression()), !dbg !6676
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6677
  %driver = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4, !dbg !6678
  %1 = load ptr, ptr %driver, align 8, !dbg !6678
  %driver_features = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 23, !dbg !6679
  %2 = load i32, ptr %driver_features, align 8, !dbg !6679
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6680
  %driver_features1 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 11, !dbg !6681
  %4 = load i32, ptr %driver_features1, align 8, !dbg !6681
  %and = and i32 %2, %4, !dbg !6682
  store i32 %and, ptr %supported, align 4, !dbg !6676
  %5 = load i32, ptr %features.addr, align 4, !dbg !6683
  %tobool = icmp ne i32 %5, 0, !dbg !6683
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6684

land.rhs:                                         ; preds = %entry
  %6 = load i32, ptr %supported, align 4, !dbg !6685
  %7 = load i32, ptr %features.addr, align 4, !dbg !6686
  %and2 = and i32 %6, %7, !dbg !6687
  %8 = load i32, ptr %features.addr, align 4, !dbg !6688
  %cmp = icmp eq i32 %and2, %8, !dbg !6689
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !6690
  call void @llvm.lifetime.end.p0(i64 4, ptr %supported) #14, !dbg !6691
  ret i1 %9, !dbg !6692
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #6 align 16 !dbg !6693 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6697, metadata !DIExpression()), !dbg !6698
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6699
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #15, !dbg !6700
  ret void, !dbg !6701
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !6702 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6706, metadata !DIExpression()), !dbg !6708
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6707, metadata !DIExpression()), !dbg !6709
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6710
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6711
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15, !dbg !6712
  ret void, !dbg !6713
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !6714 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6718, metadata !DIExpression()), !dbg !6722
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6719, metadata !DIExpression()), !dbg !6723
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6720, metadata !DIExpression()), !dbg !6724
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #14, !dbg !6725
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6721, metadata !DIExpression()), !dbg !6726
  %0 = load i32, ptr %i.addr, align 4, !dbg !6727
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6728
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6729
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #15, !dbg !6730
  store i32 %call, ptr %old, align 4, !dbg !6726
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6731
  %tobool = icmp ne ptr %2, null, !dbg !6731
  br i1 %tobool, label %if.then, label %if.end, !dbg !6733

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6734
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6735
  store i32 %3, ptr %4, align 4, !dbg !6736
  br label %if.end, !dbg !6737

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6738
  %tobool1 = icmp ne i32 %5, 0, !dbg !6738
  %lnot = xor i1 %tobool1, true, !dbg !6738
  %lnot2 = xor i1 %lnot, true, !dbg !6738
  %lnot3 = xor i1 %lnot2, true, !dbg !6738
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6738
  %conv = sext i32 %lnot.ext to i64, !dbg !6738
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6738
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6738
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6740

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6741
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #15, !dbg !6742
  br label %if.end18, !dbg !6742

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6743
  %cmp = icmp slt i32 %7, 0, !dbg !6743
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6743

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !6743
  %9 = load i32, ptr %i.addr, align 4, !dbg !6743
  %add = add i32 %8, %9, !dbg !6743
  %cmp7 = icmp slt i32 %add, 0, !dbg !6743
  br label %lor.end, !dbg !6743

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !6743
  %lnot11 = xor i1 %lnot9, true, !dbg !6743
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6743
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6743
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6743
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6743
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6745

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6746
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #15, !dbg !6747
  br label %if.end17, !dbg !6747

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #14, !dbg !6748
  ret void, !dbg !6748
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6749 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6753, metadata !DIExpression()), !dbg !6755
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6754, metadata !DIExpression()), !dbg !6756
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6757
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !6758
  %1 = load i32, ptr %i.addr, align 4, !dbg !6759
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6760
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #15, !dbg !6761
  ret i32 %call, !dbg !6762
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6763 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6766 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6768, metadata !DIExpression()), !dbg !6770
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6769, metadata !DIExpression()), !dbg !6771
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6772
  %1 = load i64, ptr %size.addr, align 8, !dbg !6773
  %conv = trunc i64 %1 to i32, !dbg !6773
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !6774
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6775
  %3 = load i64, ptr %size.addr, align 8, !dbg !6775
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !6775
  ret void, !dbg !6776
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6777 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6779, metadata !DIExpression()), !dbg !6781
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6780, metadata !DIExpression()), !dbg !6782
  %0 = load i32, ptr %i.addr, align 4, !dbg !6783
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6784
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #15, !dbg !6785
  ret i32 %call, !dbg !6786
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6787 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6789, metadata !DIExpression()), !dbg !6793
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6790, metadata !DIExpression()), !dbg !6794
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !6795
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6791, metadata !DIExpression()), !dbg !6795
  %0 = load i32, ptr %i.addr, align 4, !dbg !6795
  store i32 %0, ptr %__ret, align 4, !dbg !6795
  %1 = load i32, ptr %__ret, align 4, !dbg !6795
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6795
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6795
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #14, !dbg !6795, !srcloc !6796
  store i32 %3, ptr %__ret, align 4, !dbg !6795
  %4 = load i32, ptr %__ret, align 4, !dbg !6795
  store i32 %4, ptr %tmp, align 4, !dbg !6795
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !6797
  %5 = load i32, ptr %tmp, align 4, !dbg !6795
  ret i32 %5, !dbg !6798
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #6 align 16 !dbg !6799 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6803, metadata !DIExpression()), !dbg !6804
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6805
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #15, !dbg !6806
  ret i1 %call, !dbg !6807
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !6808 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6812, metadata !DIExpression()), !dbg !6814
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6813, metadata !DIExpression()), !dbg !6815
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6816
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6817
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15, !dbg !6818
  ret i1 %call, !dbg !6819
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !6820 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6824, metadata !DIExpression()), !dbg !6828
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6825, metadata !DIExpression()), !dbg !6829
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6826, metadata !DIExpression()), !dbg !6830
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #14, !dbg !6831
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6827, metadata !DIExpression()), !dbg !6832
  %0 = load i32, ptr %i.addr, align 4, !dbg !6833
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6834
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6835
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #15, !dbg !6836
  store i32 %call, ptr %old, align 4, !dbg !6832
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6837
  %tobool = icmp ne ptr %2, null, !dbg !6837
  br i1 %tobool, label %if.then, label %if.end, !dbg !6839

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6840
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6841
  store i32 %3, ptr %4, align 4, !dbg !6842
  br label %if.end, !dbg !6843

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6844
  %6 = load i32, ptr %i.addr, align 4, !dbg !6846
  %cmp = icmp eq i32 %5, %6, !dbg !6847
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6848

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6849

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6851

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6853

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6853

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6851

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6855

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6857

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6857

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6855, !srcloc !6859
  br label %do.cond7, !dbg !6855

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6855

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6851

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6851

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6860
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6860

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6861
  %cmp12 = icmp slt i32 %7, 0, !dbg !6861
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6861

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6861
  %9 = load i32, ptr %i.addr, align 4, !dbg !6861
  %sub = sub i32 %8, %9, !dbg !6861
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6861
  br label %lor.end, !dbg !6861

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6861
  %lnot14 = xor i1 %lnot, true, !dbg !6861
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6861
  %conv = sext i32 %lnot.ext to i64, !dbg !6861
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6861
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6861
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6863

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6864
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #15, !dbg !6865
  br label %if.end17, !dbg !6865

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6866
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6866

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #14, !dbg !6867
  %12 = load i1, ptr %retval, align 1, !dbg !6867
  ret i1 %12, !dbg !6867
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6868 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6870, metadata !DIExpression()), !dbg !6872
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6871, metadata !DIExpression()), !dbg !6873
  br label %do.body, !dbg !6874

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6875

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6877
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !6878
  %1 = load i32, ptr %i.addr, align 4, !dbg !6879
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6880
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #15, !dbg !6881
  ret i32 %call, !dbg !6882
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6883 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6885, metadata !DIExpression()), !dbg !6887
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6886, metadata !DIExpression()), !dbg !6888
  %0 = load i32, ptr %i.addr, align 4, !dbg !6889
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6890
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #15, !dbg !6891
  ret i32 %call, !dbg !6892
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6893 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6895, metadata !DIExpression()), !dbg !6899
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6896, metadata !DIExpression()), !dbg !6900
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !6901
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6897, metadata !DIExpression()), !dbg !6901
  %0 = load i32, ptr %i.addr, align 4, !dbg !6901
  %sub = sub i32 0, %0, !dbg !6901
  store i32 %sub, ptr %__ret, align 4, !dbg !6901
  %1 = load i32, ptr %__ret, align 4, !dbg !6901
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6901
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6901
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #14, !dbg !6901, !srcloc !6902
  store i32 %3, ptr %__ret, align 4, !dbg !6901
  %4 = load i32, ptr %__ret, align 4, !dbg !6901
  store i32 %4, ptr %tmp, align 4, !dbg !6901
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !6903
  %5 = load i32, ptr %tmp, align 4, !dbg !6901
  ret i32 %5, !dbg !6904
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6905 dso_local void @drm_lease_destroy(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_legacy_master_rmmaps(ptr noundef %dev, ptr noundef %master) #6 align 16 !dbg !6906 {
entry:
  %dev.addr = alloca ptr, align 8
  %master.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6908, metadata !DIExpression()), !dbg !6910
  store ptr %master, ptr %master.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %master.addr, metadata !6909, metadata !DIExpression()), !dbg !6911
  ret void, !dbg !6912
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6913 dso_local void @idr_destroy(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6914 dso_local void @kfree(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }
attributes #19 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391}
!llvm.ident = !{!5392}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_is_current_master305", scope: !2, file: !3, line: 92, type: !263, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_auth.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_auth\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_auth.ll drivers/gpu/drm/drm_auth.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !262, globals: !5350, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_auth.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "757d2f7b28abb78ed525aaad9a47e738")
!4 = !{!5, !13, !18, !23, !29, !37, !53, !60, !68, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !149, !192, !201, !208, !221, !226, !244, !254}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !19, line: 65, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!22 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !24, line: 16, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "TT_NONE", value: 0)
!27 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!28 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !30, line: 68, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !54, line: 51, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!57 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!58 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!59 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !61, line: 9, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!62 = !{!63, !64, !65, !66, !67}
!63 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!64 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!65 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!66 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!67 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !69, line: 54, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "USRQUOTA", value: 0)
!72 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!73 = !DIEnumerator(name: "PRJQUOTA", value: 2)
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_ioctl_flags", file: !142, line: 80, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/drm/drm_ioctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ed9f6851df8ea62f4629791b091b99c")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "DRM_AUTH", value: 1)
!145 = !DIEnumerator(name: "DRM_MASTER", value: 2)
!146 = !DIEnumerator(name: "DRM_ROOT_ONLY", value: 4)
!147 = !DIEnumerator(name: "DRM_UNLOCKED", value: 16)
!148 = !DIEnumerator(name: "DRM_RENDER_ALLOW", value: 32)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !150, line: 91, baseType: !109, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9464b1418570a46bf1ac7fbe26140ef4")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!152 = !DIEnumerator(name: "MODE_OK", value: 0)
!153 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!154 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!155 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!156 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!157 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!158 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!159 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!160 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!161 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!162 = !DIEnumerator(name: "MODE_MEM", value: 10)
!163 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!164 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!165 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!166 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!167 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!168 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!169 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!170 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!171 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!172 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!173 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!174 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!175 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!176 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!177 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!178 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!179 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!180 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!181 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!182 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!183 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!184 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!185 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!186 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!187 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!188 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!189 = !DIEnumerator(name: "MODE_STALE", value: -3)
!190 = !DIEnumerator(name: "MODE_BAD", value: -2)
!191 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !193, line: 96, baseType: !7, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47f4ac8f6225c51a6d030bad9086771f")
!194 = !{!195, !196, !197, !198, !199, !200}
!195 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0)
!196 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1)
!197 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2)
!198 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3)
!199 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4)
!200 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !202, line: 30, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!203 = !{!204, !205, !206, !207}
!204 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!205 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!206 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!207 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !209, line: 330, baseType: !7, size: 32, elements: !210)
!209 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!211 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!212 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!213 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!214 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!215 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!216 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!217 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!218 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!219 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!220 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !222, line: 10, baseType: !7, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!223 = !{!224, !225}
!224 = !DIEnumerator(name: "false", value: 0)
!225 = !DIEnumerator(name: "true", value: 1)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_driver_feature", file: !227, line: 54, baseType: !7, size: 32, elements: !228)
!227 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f945ad2d8b16ba8834948006e1f4f23")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!229 = !DIEnumerator(name: "DRIVER_GEM", value: 1)
!230 = !DIEnumerator(name: "DRIVER_MODESET", value: 2)
!231 = !DIEnumerator(name: "DRIVER_RENDER", value: 8)
!232 = !DIEnumerator(name: "DRIVER_ATOMIC", value: 16)
!233 = !DIEnumerator(name: "DRIVER_SYNCOBJ", value: 32)
!234 = !DIEnumerator(name: "DRIVER_SYNCOBJ_TIMELINE", value: 64)
!235 = !DIEnumerator(name: "DRIVER_COMPUTE_ACCEL", value: 128)
!236 = !DIEnumerator(name: "DRIVER_GEM_GPUVA", value: 256)
!237 = !DIEnumerator(name: "DRIVER_CURSOR_HOTSPOT", value: 512)
!238 = !DIEnumerator(name: "DRIVER_USE_AGP", value: 33554432)
!239 = !DIEnumerator(name: "DRIVER_LEGACY", value: 67108864)
!240 = !DIEnumerator(name: "DRIVER_PCI_DMA", value: 134217728)
!241 = !DIEnumerator(name: "DRIVER_SG", value: 268435456)
!242 = !DIEnumerator(name: "DRIVER_HAVE_DMA", value: 536870912)
!243 = !DIEnumerator(name: "DRIVER_HAVE_IRQ", value: 1073741824)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !245, line: 364, baseType: !7, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!246 = !{!247, !248, !249, !250, !251, !252, !253}
!247 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!248 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!249 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!250 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!251 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!252 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!253 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !255, line: 119, baseType: !7, size: 32, elements: !256)
!255 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!256 = !{!257, !258, !259, !260, !261}
!257 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!258 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!259 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!260 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!261 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!262 = !{!263, !264, !266, !267, !269, !276, !4308, !4311, !384, !4312}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !265, line: 154, baseType: !7)
!265 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!266 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !265, line: 190, size: 128, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !265, line: 191, baseType: !271, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !272, file: !265, line: 191, baseType: !271, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !61, line: 59, size: 768, elements: !278)
!278 = !{!279, !288, !289, !328, !341, !342, !349, !358}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !277, file: !61, line: 61, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !255, line: 113, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !255, line: 111, size: 32, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !281, file: !255, line: 112, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !265, line: 174, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 172, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !285, file: !265, line: 173, baseType: !109, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !277, file: !61, line: 62, baseType: !7, size: 32, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !277, file: !61, line: 63, baseType: !290, size: 32, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !291, line: 29, baseType: !292)
!291 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !291, line: 17, size: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !291, line: 18, baseType: !295, size: 32)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !291, line: 18, size: 32, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !295, file: !291, line: 19, baseType: !298, size: 32)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !299, line: 14, size: 32, elements: !300)
!299 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !298, file: !299, line: 15, baseType: !302, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !303, line: 44, baseType: !304)
!303 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !303, line: 14, size: 32, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !303, line: 15, baseType: !307, size: 32)
!307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !303, line: 15, size: 32, elements: !308)
!308 = !{!309, !310, !320}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !307, file: !303, line: 16, baseType: !284, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !303, line: 24, baseType: !311, size: 16)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !303, line: 24, size: 16, elements: !312)
!312 = !{!313, !319}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !311, file: !303, line: 25, baseType: !314, size: 8)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !315, line: 17, baseType: !316)
!315 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !317, line: 21, baseType: !318)
!317 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!318 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !311, file: !303, line: 26, baseType: !314, size: 8, offset: 8)
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !303, line: 28, baseType: !321, size: 32)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !303, line: 28, size: 32, elements: !322)
!322 = !{!323, !327}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !321, file: !303, line: 29, baseType: !324, size: 16)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !315, line: 19, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !317, line: 24, baseType: !326)
!326 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !321, file: !303, line: 30, baseType: !324, size: 16, offset: 16)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !277, file: !61, line: 65, baseType: !329, size: 256, offset: 128)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 256, elements: !339)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !265, line: 194, size: 64, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !330, file: !265, line: 195, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !265, line: 198, size: 128, elements: !335)
!335 = !{!336, !337}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !265, line: 199, baseType: !333, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !334, file: !265, line: 199, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!339 = !{!340}
!340 = !DISubrange(count: 4)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !277, file: !61, line: 66, baseType: !330, size: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !277, file: !61, line: 68, baseType: !343, size: 192, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !344, line: 41, baseType: !345)
!344 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !344, line: 37, size: 192, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !345, file: !344, line: 38, baseType: !290, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !345, file: !344, line: 39, baseType: !272, size: 128, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !277, file: !61, line: 69, baseType: !350, size: 128, align: 64, offset: 640)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !265, line: 232, size: 128, align: 64, elements: !351)
!351 = !{!352, !354}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !265, line: 233, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !350, file: !265, line: 234, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !353}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !277, file: !61, line: 70, baseType: !359, offset: 768)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, elements: !1010)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !61, line: 54, size: 128, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !360, file: !61, line: 55, baseType: !109, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !360, file: !61, line: 56, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !366, line: 26, size: 1152, elements: !367)
!366 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!367 = !{!368, !381, !382, !383, !4284, !4288, !4289, !4290, !4293, !4294, !4295, !4296, !4307}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !365, file: !366, line: 27, baseType: !369, size: 192)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !370, line: 19, size: 192, elements: !371)
!370 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!371 = !{!372, !379, !380}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !369, file: !370, line: 20, baseType: !373, size: 128)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !374, line: 296, size: 128, elements: !375)
!374 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!375 = !{!376, !377, !378}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !373, file: !374, line: 297, baseType: !290, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !373, file: !374, line: 299, baseType: !264, size: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !373, file: !374, line: 300, baseType: !263, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !369, file: !370, line: 21, baseType: !7, size: 32, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !369, file: !370, line: 22, baseType: !7, size: 32, offset: 160)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !365, file: !366, line: 28, baseType: !350, size: 128, align: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !365, file: !366, line: 29, baseType: !7, size: 32, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !365, file: !366, line: 30, baseType: !384, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !386, line: 746, size: 58368, elements: !387)
!386 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!387 = !{!388, !398, !399, !400, !401, !402, !403, !404, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !488, !499, !601, !605, !608, !639, !640, !641, !642, !653, !655, !656, !657, !658, !659, !660, !671, !672, !675, !676, !677, !678, !679, !680, !681, !682, !689, !690, !697, !698, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3438, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3486, !3492, !3493, !3494, !3495, !3496, !3498, !3501, !3508, !3513, !3516, !3519, !3522, !3548, !3686, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3724, !3725, !3726, !3735, !3743, !3744, !3745, !3746, !3747, !3752, !3753, !3754, !3757, !3758, !3761, !3764, !3767, !3775, !3778, !3779, !3865, !3866, !3867, !3868, !3869, !3875, !3876, !3877, !3878, !3881, !3882, !3885, !3888, !3889, !3892, !3893, !3894, !3897, !3898, !3899, !3900, !3901, !3902, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3934, !3935, !3941, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3953, !4025, !4027, !4028, !4029, !4030, !4031, !4032, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4061, !4062, !4063}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !385, file: !386, line: 752, baseType: !389, size: 192)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !390, line: 56, size: 192, elements: !391)
!390 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!391 = !{!392, !393, !394, !397}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !390, line: 57, baseType: !266, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !389, file: !390, line: 58, baseType: !266, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !389, file: !390, line: 59, baseType: !395, size: 32, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !315, line: 21, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !317, line: 27, baseType: !7)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !389, file: !390, line: 61, baseType: !395, size: 32, offset: 160)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !385, file: !386, line: 754, baseType: !7, size: 32, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !385, file: !386, line: 767, baseType: !263, size: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !385, file: !386, line: 768, baseType: !280, size: 32, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !386, line: 770, baseType: !7, size: 32, offset: 352)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !385, file: !386, line: 771, baseType: !7, size: 32, offset: 384)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !385, file: !386, line: 774, baseType: !109, size: 32, offset: 416)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !385, file: !386, line: 775, baseType: !405, size: 128, offset: 448)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !406, line: 58, size: 128, elements: !407)
!406 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!407 = !{!408, !414, !419, !420}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !405, file: !406, line: 59, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !410, line: 60, size: 64, elements: !411)
!410 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !409, file: !410, line: 61, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !406, line: 60, baseType: !415, size: 32, offset: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !406, line: 60, size: 32, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !415, file: !406, line: 61, baseType: !7, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !415, file: !406, line: 62, baseType: !284, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !405, file: !406, line: 65, baseType: !324, size: 16, offset: 96)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !405, file: !406, line: 65, baseType: !324, size: 16, offset: 112)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !385, file: !386, line: 776, baseType: !7, size: 32, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !385, file: !386, line: 777, baseType: !266, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !385, file: !386, line: 778, baseType: !384, size: 64, offset: 704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !385, file: !386, line: 787, baseType: !109, size: 32, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !385, file: !386, line: 788, baseType: !109, size: 32, offset: 800)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !385, file: !386, line: 790, baseType: !109, size: 32, offset: 832)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !385, file: !386, line: 792, baseType: !109, size: 32, offset: 864)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !385, file: !386, line: 793, baseType: !109, size: 32, offset: 896)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !385, file: !386, line: 794, baseType: !109, size: 32, offset: 928)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !385, file: !386, line: 795, baseType: !7, size: 32, offset: 960)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !385, file: !386, line: 797, baseType: !432, size: 2048, offset: 1024)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !386, line: 551, size: 2048, elements: !433)
!433 = !{!434, !439, !447, !451, !452, !453, !454, !455, !456, !457, !458, !462, !463, !464, !465, !467, !470, !471, !472}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !432, file: !386, line: 553, baseType: !435, size: 128)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !386, line: 411, size: 128, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !435, file: !386, line: 412, baseType: !266, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !435, file: !386, line: 413, baseType: !395, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !432, file: !386, line: 554, baseType: !440, size: 192, align: 64, offset: 128)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !441, line: 5, size: 192, align: 64, elements: !442)
!441 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!442 = !{!443, !444, !446}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !440, file: !441, line: 6, baseType: !266, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !440, file: !441, line: 7, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !440, file: !441, line: 8, baseType: !445, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !432, file: !386, line: 555, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !315, line: 23, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !317, line: 31, baseType: !450)
!450 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !432, file: !386, line: 556, baseType: !448, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !432, file: !386, line: 558, baseType: !272, size: 128, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !432, file: !386, line: 559, baseType: !7, size: 32, offset: 576)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !432, file: !386, line: 561, baseType: !448, size: 64, offset: 640)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !432, file: !386, line: 562, baseType: !448, size: 64, offset: 704)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !432, file: !386, line: 563, baseType: !448, size: 64, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !432, file: !386, line: 564, baseType: !448, size: 64, offset: 832)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !432, file: !386, line: 565, baseType: !459, size: 64, offset: 896)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !315, line: 22, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !317, line: 30, baseType: !461)
!461 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !432, file: !386, line: 566, baseType: !448, size: 64, offset: 960)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !432, file: !386, line: 568, baseType: !448, size: 64, offset: 1024)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !432, file: !386, line: 571, baseType: !109, size: 32, offset: 1088)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !432, file: !386, line: 572, baseType: !466, size: 64, offset: 1152)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !432, file: !386, line: 574, baseType: !468, size: 64, offset: 1216)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !386, line: 49, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !432, file: !386, line: 576, baseType: !468, size: 64, offset: 1280)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !432, file: !386, line: 578, baseType: !266, size: 64, offset: 1344)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !432, file: !386, line: 588, baseType: !473, size: 512, align: 512, offset: 1536)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !386, line: 497, size: 512, align: 512, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !473, file: !386, line: 498, baseType: !448, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !473, file: !386, line: 499, baseType: !448, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !473, file: !386, line: 500, baseType: !448, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !473, file: !386, line: 501, baseType: !395, size: 32, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !473, file: !386, line: 502, baseType: !395, size: 32, offset: 224)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !473, file: !386, line: 503, baseType: !266, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !473, file: !386, line: 504, baseType: !266, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !473, file: !386, line: 505, baseType: !266, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !473, file: !386, line: 506, baseType: !484, size: 64, align: 64, offset: 448)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !386, line: 445, size: 64, align: 64, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !484, file: !386, line: 446, baseType: !7, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !484, file: !386, line: 447, baseType: !7, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !385, file: !386, line: 798, baseType: !489, size: 384, offset: 3072)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !386, line: 592, size: 384, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !489, file: !386, line: 593, baseType: !272, size: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !489, file: !386, line: 594, baseType: !266, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !489, file: !386, line: 595, baseType: !266, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !489, file: !386, line: 596, baseType: !7, size: 32, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !489, file: !386, line: 597, baseType: !326, size: 16, offset: 288)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !489, file: !386, line: 598, baseType: !326, size: 16, offset: 304)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !489, file: !386, line: 600, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !385, file: !386, line: 799, baseType: !500, size: 1792, offset: 3456)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !386, line: 610, size: 1792, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !598, !599}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !500, file: !386, line: 611, baseType: !440, size: 192, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !500, file: !386, line: 618, baseType: !448, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !500, file: !386, line: 619, baseType: !448, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !500, file: !386, line: 620, baseType: !448, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !500, file: !386, line: 621, baseType: !448, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !500, file: !386, line: 622, baseType: !448, size: 64, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !500, file: !386, line: 629, baseType: !459, size: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !500, file: !386, line: 630, baseType: !448, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !386, line: 631, baseType: !7, size: 32, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !500, file: !386, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !500, file: !386, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !500, file: !386, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !500, file: !386, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !500, file: !386, line: 662, baseType: !516, size: 512, offset: 704)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !19, line: 118, size: 512, elements: !517)
!517 = !{!518, !526, !527, !532, !594, !595, !596, !597}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !516, file: !19, line: 119, baseType: !519, size: 256)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !520, line: 9, size: 256, elements: !521)
!520 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !519, file: !520, line: 10, baseType: !440, size: 192, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !519, file: !520, line: 11, baseType: !524, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !525, line: 29, baseType: !459)
!525 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !516, file: !19, line: 120, baseType: !524, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !516, file: !19, line: 121, baseType: !528, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!18, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !516, file: !19, line: 122, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !19, line: 159, size: 512, align: 512, elements: !535)
!535 = !{!536, !562, !563, !567, !577, !578, !589, !593}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !534, file: !19, line: 160, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !19, line: 215, size: 4608, align: 512, elements: !539)
!539 = !{!540, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !538, file: !19, line: 216, baseType: !541, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !299, line: 23, baseType: !298)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !538, file: !19, line: 217, baseType: !7, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !538, file: !19, line: 218, baseType: !7, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !538, file: !19, line: 219, baseType: !7, size: 32, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !538, file: !19, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !538, file: !19, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !538, file: !19, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !538, file: !19, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !538, file: !19, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !538, file: !19, line: 226, baseType: !7, size: 32, offset: 160)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !538, file: !19, line: 227, baseType: !326, size: 16, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !538, file: !19, line: 228, baseType: !326, size: 16, offset: 208)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !538, file: !19, line: 229, baseType: !7, size: 32, offset: 224)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !538, file: !19, line: 235, baseType: !524, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !538, file: !19, line: 236, baseType: !531, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !538, file: !19, line: 237, baseType: !524, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !538, file: !19, line: 238, baseType: !531, size: 64, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !538, file: !19, line: 239, baseType: !559, size: 4096, align: 512, offset: 512)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 4096, align: 512, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 8)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !534, file: !19, line: 161, baseType: !7, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !534, file: !19, line: 162, baseType: !564, size: 32, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !265, line: 32, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !566, line: 96, baseType: !109)
!566 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!567 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !534, file: !19, line: 163, baseType: !568, size: 32, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !569, line: 274, baseType: !570)
!569 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !569, line: 274, size: 32, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !570, file: !569, line: 274, baseType: !573, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !569, line: 69, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !569, line: 64, size: 32, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !574, file: !569, line: 65, baseType: !7, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !534, file: !19, line: 164, baseType: !531, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !534, file: !19, line: 165, baseType: !579, size: 128, offset: 256)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !520, line: 14, size: 128, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !579, file: !520, line: 15, baseType: !582, size: 128)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !441, line: 26, size: 128, elements: !583)
!583 = !{!584, !588}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !582, file: !441, line: 27, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !441, line: 12, size: 64, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !585, file: !441, line: 13, baseType: !445, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !582, file: !441, line: 28, baseType: !445, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !534, file: !19, line: 166, baseType: !590, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!524}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !534, file: !19, line: 167, baseType: !524, size: 64, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !516, file: !19, line: 123, baseType: !314, size: 8, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !516, file: !19, line: 124, baseType: !314, size: 8, offset: 456)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !516, file: !19, line: 125, baseType: !314, size: 8, offset: 464)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !516, file: !19, line: 126, baseType: !314, size: 8, offset: 472)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !500, file: !386, line: 671, baseType: !516, size: 512, offset: 1216)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !500, file: !386, line: 679, baseType: !600, size: 64, offset: 1728)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !385, file: !386, line: 800, baseType: !602, size: 64, offset: 5248)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !386, line: 800, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !385, file: !386, line: 809, baseType: !606, size: 64, offset: 5312)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !386, line: 70, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !385, file: !386, line: 825, baseType: !609, size: 2048, align: 512, offset: 5632)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !386, line: 509, size: 2048, align: 512, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !609, file: !386, line: 511, baseType: !448, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !609, file: !386, line: 512, baseType: !448, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !609, file: !386, line: 513, baseType: !448, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !609, file: !386, line: 514, baseType: !448, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !609, file: !386, line: 515, baseType: !448, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !609, file: !386, line: 516, baseType: !448, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !609, file: !386, line: 518, baseType: !448, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !609, file: !386, line: 519, baseType: !448, size: 64, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !609, file: !386, line: 520, baseType: !459, size: 64, offset: 512)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !609, file: !386, line: 522, baseType: !448, size: 64, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !609, file: !386, line: 523, baseType: !448, size: 64, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !609, file: !386, line: 524, baseType: !459, size: 64, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !609, file: !386, line: 526, baseType: !459, size: 64, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !609, file: !386, line: 527, baseType: !448, size: 64, offset: 832)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !609, file: !386, line: 529, baseType: !448, size: 64, offset: 896)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !609, file: !386, line: 530, baseType: !448, size: 64, offset: 960)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !609, file: !386, line: 531, baseType: !448, size: 64, offset: 1024)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !609, file: !386, line: 532, baseType: !448, size: 64, offset: 1088)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !609, file: !386, line: 533, baseType: !448, size: 64, offset: 1152)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !609, file: !386, line: 535, baseType: !448, size: 64, offset: 1216)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !609, file: !386, line: 536, baseType: !448, size: 64, offset: 1280)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !609, file: !386, line: 537, baseType: !448, size: 64, offset: 1344)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !609, file: !386, line: 538, baseType: !448, size: 64, offset: 1408)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !609, file: !386, line: 539, baseType: !448, size: 64, offset: 1472)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !609, file: !386, line: 540, baseType: !448, size: 64, offset: 1536)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !609, file: !386, line: 541, baseType: !448, size: 64, offset: 1600)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !609, file: !386, line: 542, baseType: !448, size: 64, offset: 1664)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !609, file: !386, line: 543, baseType: !448, size: 64, offset: 1728)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !385, file: !386, line: 833, baseType: !7, size: 32, offset: 7680)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !385, file: !386, line: 836, baseType: !7, size: 32, offset: 7712)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !385, file: !386, line: 837, baseType: !109, size: 32, offset: 7744)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !385, file: !386, line: 838, baseType: !643, size: 64, offset: 7808)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !646, line: 19, baseType: !647)
!646 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !646, line: 19, size: 64, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !647, file: !646, line: 19, baseType: !650, size: 64)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 1)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !385, file: !386, line: 839, baseType: !654, size: 64, offset: 7872)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !385, file: !386, line: 840, baseType: !645, size: 64, offset: 7936)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !385, file: !386, line: 841, baseType: !263, size: 64, offset: 8000)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !385, file: !386, line: 843, baseType: !326, size: 16, offset: 8064)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !385, file: !386, line: 845, baseType: !326, size: 16, offset: 8080)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !385, file: !386, line: 848, baseType: !109, size: 32, offset: 8096)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !385, file: !386, line: 849, baseType: !661, size: 32, offset: 8128)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !386, line: 718, size: 32, elements: !662)
!662 = !{!663, !670}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !661, file: !386, line: 724, baseType: !664, size: 32)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !661, file: !386, line: 719, size: 32, elements: !665)
!665 = !{!666, !667, !668, !669}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !664, file: !386, line: 720, baseType: !314, size: 8)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !664, file: !386, line: 721, baseType: !314, size: 8, offset: 8)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !664, file: !386, line: 722, baseType: !314, size: 8, offset: 16)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !664, file: !386, line: 723, baseType: !314, size: 8, offset: 24)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !661, file: !386, line: 725, baseType: !395, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !385, file: !386, line: 850, baseType: !272, size: 128, offset: 8192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !385, file: !386, line: 851, baseType: !673, size: 64, offset: 8320)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !386, line: 60, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !385, file: !386, line: 855, baseType: !266, size: 64, offset: 8384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !385, file: !386, line: 856, baseType: !314, size: 8, offset: 8448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !385, file: !386, line: 857, baseType: !314, size: 8, offset: 8456)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !385, file: !386, line: 858, baseType: !109, size: 32, offset: 8480)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !385, file: !386, line: 859, baseType: !272, size: 128, offset: 8512)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !385, file: !386, line: 860, baseType: !109, size: 32, offset: 8640)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !385, file: !386, line: 861, baseType: !272, size: 128, offset: 8704)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !385, file: !386, line: 873, baseType: !683, size: 256, offset: 8832)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !386, line: 376, size: 256, elements: !684)
!684 = !{!685, !686, !687, !688}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !683, file: !386, line: 381, baseType: !266, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !683, file: !386, line: 384, baseType: !450, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !683, file: !386, line: 389, baseType: !450, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !683, file: !386, line: 392, baseType: !450, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !385, file: !386, line: 875, baseType: !272, size: 128, offset: 9088)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !385, file: !386, line: 877, baseType: !691, size: 320, offset: 9216)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !692, line: 86, size: 320, elements: !693)
!692 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!693 = !{!694, !695, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !691, file: !692, line: 87, baseType: !109, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !691, file: !692, line: 88, baseType: !272, size: 128, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !691, file: !692, line: 89, baseType: !272, size: 128, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !385, file: !386, line: 878, baseType: !440, size: 192, align: 64, offset: 9536)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !385, file: !386, line: 881, baseType: !699, size: 64, offset: 9728)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !701)
!701 = !{!702, !3352}
!702 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !38, line: 734, baseType: !703, size: 10240)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !700, file: !38, line: 734, size: 10240, elements: !704)
!704 = !{!705, !709, !723, !3231, !3232, !3233, !3234, !3235, !3236, !3243, !3244, !3245, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3284, !3286, !3289, !3332, !3333, !3334, !3337, !3338, !3339, !3342, !3343, !3344, !3350, !3351}
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !38, line: 739, baseType: !706, size: 512, align: 512)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !38, line: 739, size: 512, align: 512, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !706, file: !38, line: 747, baseType: !284, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !703, file: !38, line: 750, baseType: !710, size: 128, offset: 512)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !711, line: 218, size: 128, elements: !712)
!711 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!712 = !{!713, !721, !722}
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !711, line: 219, baseType: !714, size: 32)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !711, line: 219, size: 32, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !714, file: !711, line: 220, baseType: !290, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !714, file: !711, line: 221, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !711, line: 197, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !711, line: 197, elements: !720)
!720 = !{}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !710, file: !711, line: 223, baseType: !7, size: 32, offset: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !710, file: !711, line: 224, baseType: !263, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !703, file: !38, line: 752, baseType: !724, size: 64, offset: 640)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!266, !727, !266, !266, !266, !266}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !729)
!729 = !{!730, !736, !737, !739, !746, !758, !761, !762, !800, !1017, !1026, !3221, !3222, !3223, !3224, !3225, !3226, !3228, !3229, !3230}
!730 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !14, line: 995, baseType: !731, size: 128)
!731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !728, file: !14, line: 995, size: 128, elements: !732)
!732 = !{!733, !734, !735}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !731, file: !14, line: 996, baseType: !409, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !731, file: !14, line: 997, baseType: !350, size: 128, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !731, file: !14, line: 998, baseType: !7, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !728, file: !14, line: 1005, baseType: !290, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !728, file: !14, line: 1006, baseType: !738, size: 32, offset: 160)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !265, line: 156, baseType: !7)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !728, file: !14, line: 1007, baseType: !740, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !741, line: 13, baseType: !742)
!741 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !265, line: 181, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 179, size: 64, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !743, file: !265, line: 180, baseType: !459, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !728, file: !14, line: 1008, baseType: !747, size: 256, offset: 256)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !748, line: 66, size: 256, elements: !749)
!748 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!749 = !{!750, !751, !752, !757}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !747, file: !748, line: 67, baseType: !740, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !747, file: !748, line: 68, baseType: !541, size: 32, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !747, file: !748, line: 70, baseType: !753, size: 32, offset: 96)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !754, line: 15, size: 32, elements: !755)
!754 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !753, file: !754, line: 20, baseType: !284, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !747, file: !748, line: 72, baseType: !272, size: 128, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !728, file: !14, line: 1009, baseType: !759, size: 64, offset: 512)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !265, line: 52, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !566, line: 88, baseType: !461)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !728, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !728, file: !14, line: 1011, baseType: !763, size: 256, offset: 640)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !764)
!764 = !{!765, !788, !789, !790, !798, !799}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !763, file: !14, line: 949, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !767, line: 34, baseType: !768)
!767 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !767, line: 25, size: 64, elements: !769)
!769 = !{!770}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !768, file: !767, line: 26, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !772, line: 27, baseType: !773)
!772 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !772, line: 13, size: 64, elements: !774)
!774 = !{!775, !787}
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !773, file: !772, line: 14, baseType: !776, size: 32)
!776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !773, file: !772, line: 14, size: 32, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !776, file: !772, line: 15, baseType: !284, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !772, line: 16, baseType: !780, size: 32)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !776, file: !772, line: 16, size: 32, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !780, file: !772, line: 18, baseType: !314, size: 8)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !780, file: !772, line: 19, baseType: !784, size: 24, offset: 8)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 24, elements: !785)
!785 = !{!786}
!786 = !DISubrange(count: 3)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !773, file: !772, line: 26, baseType: !302, size: 32, offset: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !763, file: !14, line: 950, baseType: !276, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !763, file: !14, line: 951, baseType: !60, size: 32, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !763, file: !14, line: 952, baseType: !791, size: 32, offset: 160)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !792, line: 23, baseType: !793)
!792 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 21, size: 32, elements: !794)
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !793, file: !792, line: 22, baseType: !796, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !265, line: 37, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !566, line: 49, baseType: !7)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !763, file: !14, line: 952, baseType: !791, size: 32, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !763, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !728, file: !14, line: 1012, baseType: !801, size: 64, offset: 896)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !804, line: 110, size: 1472, elements: !805)
!804 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!805 = !{!806, !807, !808, !815, !816, !817, !818, !819, !820, !821, !822, !828, !829, !830, !831, !832, !833, !960, !961, !962, !963, !964, !995, !998, !1002, !1012}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !803, file: !804, line: 111, baseType: !740, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !803, file: !804, line: 112, baseType: !791, size: 32, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !803, file: !804, line: 113, baseType: !809, size: 32, offset: 96)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !792, line: 28, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 26, size: 32, elements: !811)
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !810, file: !792, line: 27, baseType: !813, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !265, line: 38, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !566, line: 50, baseType: !7)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !803, file: !804, line: 114, baseType: !791, size: 32, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !803, file: !804, line: 115, baseType: !809, size: 32, offset: 160)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !803, file: !804, line: 116, baseType: !791, size: 32, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !803, file: !804, line: 117, baseType: !809, size: 32, offset: 224)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !803, file: !804, line: 118, baseType: !791, size: 32, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !803, file: !804, line: 119, baseType: !809, size: 32, offset: 288)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !803, file: !804, line: 120, baseType: !7, size: 32, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !803, file: !804, line: 121, baseType: !823, size: 64, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !824, line: 24, baseType: !825)
!824 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !824, line: 24, size: 64, elements: !826)
!826 = !{!827}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !825, file: !824, line: 24, baseType: !448, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !803, file: !804, line: 122, baseType: !823, size: 64, offset: 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !803, file: !804, line: 123, baseType: !823, size: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !803, file: !804, line: 124, baseType: !823, size: 64, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !803, file: !804, line: 125, baseType: !823, size: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !803, file: !804, line: 127, baseType: !318, size: 8, offset: 704)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !803, file: !804, line: 129, baseType: !834, size: 64, offset: 768)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !836, line: 195, size: 1728, elements: !837)
!836 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!837 = !{!838, !839, !844, !849, !858, !861, !862, !869, !870, !871, !872, !875, !876, !877, !879, !880, !924, !945}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !835, file: !836, line: 196, baseType: !280, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !835, file: !836, line: 197, baseType: !840, size: 32, offset: 32)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !836, line: 28, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !265, line: 104, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !315, line: 20, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !317, line: 26, baseType: !109)
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !836, line: 198, baseType: !845, size: 192, offset: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !836, line: 198, size: 192, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !845, file: !836, line: 199, baseType: !272, size: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !845, file: !836, line: 200, baseType: !440, size: 192, align: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !835, file: !836, line: 205, baseType: !850, size: 320, offset: 256)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !851, line: 48, size: 320, elements: !852)
!851 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!852 = !{!853, !854, !855, !856, !857}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !850, file: !851, line: 49, baseType: !740, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !850, file: !851, line: 55, baseType: !740, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !850, file: !851, line: 57, baseType: !753, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !850, file: !851, line: 59, baseType: !541, size: 32, offset: 160)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !850, file: !851, line: 60, baseType: !272, size: 128, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !835, file: !836, line: 206, baseType: !859, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !836, line: 206, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !835, file: !836, line: 207, baseType: !263, size: 64, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !836, line: 208, baseType: !863, size: 64, offset: 704)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !836, line: 208, size: 64, elements: !864)
!864 = !{!865, !868}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !863, file: !836, line: 209, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !867, line: 8, baseType: !460)
!867 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!868 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !863, file: !836, line: 210, baseType: !866, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !835, file: !836, line: 212, baseType: !866, size: 64, offset: 768)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !835, file: !836, line: 213, baseType: !791, size: 32, offset: 832)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !835, file: !836, line: 214, baseType: !809, size: 32, offset: 864)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !835, file: !836, line: 215, baseType: !873, size: 32, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !836, line: 31, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !265, line: 110, baseType: !395)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !835, file: !836, line: 216, baseType: !326, size: 16, offset: 928)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !835, file: !836, line: 217, baseType: !326, size: 16, offset: 944)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !835, file: !836, line: 221, baseType: !878, size: 16, offset: 960)
!878 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !835, file: !836, line: 228, baseType: !266, size: 64, offset: 1024)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !836, line: 245, baseType: !881, size: 320, offset: 1088)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !836, line: 245, size: 320, elements: !882)
!882 = !{!883, !915}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !881, file: !836, line: 246, baseType: !884, size: 320)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !836, line: 114, size: 320, elements: !885)
!885 = !{!886, !887, !900, !903, !912}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !884, file: !836, line: 116, baseType: !266, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !836, line: 117, baseType: !888, size: 64, offset: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !836, line: 117, size: 64, elements: !889)
!889 = !{!890, !899}
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !836, line: 118, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !836, line: 118, size: 64, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !891, file: !836, line: 120, baseType: !324, size: 16)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !891, file: !836, line: 121, baseType: !895, size: 48, offset: 16)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 48, elements: !897)
!896 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!897 = !{!898}
!898 = !DISubrange(count: 6)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !888, file: !836, line: 127, baseType: !266, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !884, file: !836, line: 129, baseType: !901, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !836, line: 102, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !884, file: !836, line: 130, baseType: !904, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !836, line: 108, size: 192, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !905, file: !836, line: 109, baseType: !350, size: 128, align: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !905, file: !836, line: 110, baseType: !280, size: 32, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !905, file: !836, line: 111, baseType: !910, size: 8, offset: 160)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !265, line: 35, baseType: !911)
!911 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !884, file: !836, line: 131, baseType: !913, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !836, line: 247, baseType: !916, size: 320)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !836, line: 247, size: 320, elements: !917)
!917 = !{!918, !919, !920, !921, !922}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !916, file: !836, line: 248, baseType: !266, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !916, file: !836, line: 249, baseType: !266, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !916, file: !836, line: 250, baseType: !901, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !916, file: !836, line: 251, baseType: !904, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !916, file: !836, line: 252, baseType: !923, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !836, line: 260, baseType: !925, size: 256, offset: 1408)
!925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !836, line: 260, size: 256, elements: !926)
!926 = !{!927, !933}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !925, file: !836, line: 261, baseType: !928, size: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !836, line: 134, size: 256, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !928, file: !836, line: 135, baseType: !263, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !928, file: !836, line: 136, baseType: !932, size: 256)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 256, elements: !339)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !836, line: 262, baseType: !934, size: 256)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !836, line: 262, size: 256, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !934, file: !836, line: 264, baseType: !272, size: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !934, file: !836, line: 265, baseType: !938, size: 128, offset: 128)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !939, line: 22, size: 128, elements: !940)
!939 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!940 = !{!941, !944}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !938, file: !939, line: 23, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !939, line: 23, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !938, file: !939, line: 24, baseType: !266, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !835, file: !836, line: 280, baseType: !946, size: 64, offset: 1664)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !836, line: 176, size: 192, elements: !948)
!948 = !{!949, !958, !959}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !947, file: !836, line: 177, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !836, line: 171, baseType: !951)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!109, !834, !954, !956, !834}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !902)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !947, file: !836, line: 178, baseType: !834, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !947, file: !836, line: 179, baseType: !901, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !803, file: !804, line: 130, baseType: !834, size: 64, offset: 832)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !803, file: !804, line: 131, baseType: !834, size: 64, offset: 896)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !803, file: !804, line: 132, baseType: !834, size: 64, offset: 960)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !803, file: !804, line: 135, baseType: !263, size: 64, offset: 1024)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !803, file: !804, line: 137, baseType: !965, size: 64, offset: 1088)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !967, line: 14, size: 1088, elements: !968)
!967 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!968 = !{!969, !970, !979, !980, !981, !982, !983, !984}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !966, file: !967, line: 15, baseType: !280, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !966, file: !967, line: 17, baseType: !971, size: 320, offset: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !972, line: 22, size: 320, elements: !973)
!972 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!973 = !{!974, !975, !976, !977}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !971, file: !972, line: 23, baseType: !541, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !971, file: !972, line: 24, baseType: !459, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !971, file: !972, line: 26, baseType: !272, size: 128, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !971, file: !972, line: 28, baseType: !978, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !966, file: !967, line: 19, baseType: !266, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !966, file: !967, line: 20, baseType: !740, size: 64, offset: 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !966, file: !967, line: 23, baseType: !334, size: 128, offset: 512)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !966, file: !967, line: 24, baseType: !791, size: 32, offset: 640)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !966, file: !967, line: 29, baseType: !740, size: 64, offset: 704)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !966, file: !967, line: 36, baseType: !985, size: 320, offset: 768)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !986, line: 15, size: 320, elements: !987)
!986 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!987 = !{!988, !989, !990, !991, !992, !993, !994}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !985, file: !986, line: 16, baseType: !541, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !985, file: !986, line: 18, baseType: !109, size: 32, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !985, file: !986, line: 19, baseType: !109, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !985, file: !986, line: 20, baseType: !109, size: 32, offset: 96)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !985, file: !986, line: 21, baseType: !109, size: 32, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !985, file: !986, line: 22, baseType: !266, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !985, file: !986, line: 23, baseType: !266, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !803, file: !804, line: 138, baseType: !996, size: 64, offset: 1152)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !803, file: !804, line: 139, baseType: !999, size: 64, offset: 1216)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1001, line: 16, flags: DIFlagFwdDecl)
!1001 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !803, file: !804, line: 140, baseType: !1003, size: 64, offset: 1280)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !804, line: 25, size: 64, elements: !1005)
!1005 = !{!1006, !1007, !1008}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1004, file: !804, line: 26, baseType: !284, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1004, file: !804, line: 27, baseType: !109, size: 32, offset: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1004, file: !804, line: 28, baseType: !1009, offset: 64)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, elements: !1010)
!1010 = !{!1011}
!1011 = !DISubrange(count: -1)
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !804, line: 142, baseType: !1013, size: 128, offset: 1344)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !803, file: !804, line: 142, size: 128, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1013, file: !804, line: 143, baseType: !109, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1013, file: !804, line: 144, baseType: !350, size: 128, align: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !728, file: !14, line: 1013, baseType: !1018, size: 256, offset: 960)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023, !1024, !1025}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1018, file: !14, line: 971, baseType: !266, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1018, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1018, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1018, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1018, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1018, file: !14, line: 976, baseType: !759, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !728, file: !14, line: 1014, baseType: !1027, size: 128, offset: 1216)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1028, line: 8, size: 128, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1029 = !{!1030, !3220}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1027, file: !1028, line: 9, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1033, line: 70, size: 256, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1034 = !{!1035, !3217, !3218, !3219}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1032, file: !1033, line: 71, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1038, line: 82, size: 1536, elements: !1039)
!1038 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1039 = !{!1040, !1041, !1046, !1054, !1055, !1070, !3185, !3187, !3200, !3201, !3202, !3203, !3204, !3209, !3210, !3211}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1037, file: !1038, line: 84, baseType: !7, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1037, file: !1038, line: 85, baseType: !1042, size: 32, offset: 32)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !569, line: 275, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !569, line: 275, size: 32, elements: !1044)
!1044 = !{!1045}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1043, file: !569, line: 275, baseType: !573, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1037, file: !1038, line: 86, baseType: !1047, size: 128, offset: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1048, line: 38, size: 128, elements: !1049)
!1048 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1049 = !{!1050, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1047, file: !1048, line: 39, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1047, file: !1048, line: 39, baseType: !1053, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1037, file: !1038, line: 87, baseType: !1036, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1037, file: !1038, line: 88, baseType: !1056, size: 128, offset: 256)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1038, line: 49, size: 128, elements: !1057)
!1057 = !{!1058, !1067}
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !1038, line: 50, baseType: !1059, size: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1056, file: !1038, line: 50, size: 64, elements: !1060)
!1060 = !{!1061, !1066}
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !1038, line: 51, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1059, file: !1038, line: 51, size: 64, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1062, file: !1038, line: 52, baseType: !395, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1062, file: !1038, line: 52, baseType: !395, size: 32, offset: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1059, file: !1038, line: 54, baseType: !448, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1056, file: !1038, line: 56, baseType: !1068, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1037, file: !1038, line: 89, baseType: !1071, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !1073)
!1073 = !{!1074, !1076, !1077, !1078, !1079, !1080, !1081, !1084, !1085, !1276, !2999, !3000, !3001, !3002, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3167, !3170, !3171, !3172, !3181, !3182, !3183, !3184}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1072, file: !14, line: 642, baseType: !1075, size: 16)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !265, line: 24, baseType: !326)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1072, file: !14, line: 643, baseType: !326, size: 16, offset: 16)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1072, file: !14, line: 644, baseType: !791, size: 32, offset: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1072, file: !14, line: 645, baseType: !272, size: 128, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1072, file: !14, line: 646, baseType: !809, size: 32, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1072, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1072, file: !14, line: 650, baseType: !1082, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1072, file: !14, line: 651, baseType: !1082, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1072, file: !14, line: 654, baseType: !1086, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !1089)
!1089 = !{!1090, !1094, !1107, !1113, !1117, !1121, !1125, !1129, !1133, !1137, !1141, !1142, !1148, !1152, !1190, !1221, !1231, !1237, !1241, !1245, !1249, !1253, !1257, !1263, !1267}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1088, file: !14, line: 1967, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!1036, !1071, !1036, !7}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1088, file: !14, line: 1968, baseType: !1095, size: 64, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!913, !1036, !1071, !1098}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1100, line: 10, size: 128, elements: !1101)
!1100 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1101 = !{!1102, !1106}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1099, file: !1100, line: 11, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !263}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1099, file: !1100, line: 12, baseType: !263, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1088, file: !14, line: 1969, baseType: !1108, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!109, !1111, !1071, !109}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !824, line: 42, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1088, file: !14, line: 1970, baseType: !1114, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!1082, !1071, !109, !910}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1088, file: !14, line: 1972, baseType: !1118, size: 64, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!109, !1036, !923, !109}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1088, file: !14, line: 1974, baseType: !1122, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!109, !1111, !1071, !1036, !1075, !910}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1088, file: !14, line: 1976, baseType: !1126, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!109, !1036, !1071, !1036}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1088, file: !14, line: 1977, baseType: !1130, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!109, !1071, !1036}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1088, file: !14, line: 1978, baseType: !1134, size: 64, offset: 512)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!109, !1111, !1071, !1036, !913}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1088, file: !14, line: 1980, baseType: !1138, size: 64, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!109, !1111, !1071, !1036, !1075}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1088, file: !14, line: 1982, baseType: !1130, size: 64, offset: 640)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1088, file: !14, line: 1983, baseType: !1143, size: 64, offset: 704)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!109, !1111, !1071, !1036, !1075, !1146}
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !265, line: 21, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !265, line: 18, baseType: !395)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1088, file: !14, line: 1985, baseType: !1149, size: 64, offset: 768)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!109, !1111, !1071, !1036, !1071, !1036, !7}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1088, file: !14, line: 1987, baseType: !1153, size: 64, offset: 832)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!109, !1111, !1036, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !1158)
!1158 = !{!1159, !1160, !1161, !1171, !1180, !1181, !1187, !1188, !1189}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1157, file: !14, line: 227, baseType: !7, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1157, file: !14, line: 228, baseType: !1075, size: 16, offset: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !14, line: 241, baseType: !1162, size: 32, offset: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1157, file: !14, line: 241, size: 32, elements: !1163)
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1162, file: !14, line: 242, baseType: !791, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1162, file: !14, line: 243, baseType: !1166, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1167, line: 16, baseType: !1168)
!1167 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1167, line: 14, size: 32, elements: !1169)
!1169 = !{!1170}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1168, file: !1167, line: 15, baseType: !796, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !14, line: 245, baseType: !1172, size: 32, offset: 96)
!1172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1157, file: !14, line: 245, size: 32, elements: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1172, file: !14, line: 246, baseType: !809, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1172, file: !14, line: 247, baseType: !1176, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1167, line: 20, baseType: !1177)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1167, line: 18, size: 32, elements: !1178)
!1178 = !{!1179}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1177, file: !1167, line: 19, baseType: !813, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1157, file: !14, line: 249, baseType: !759, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1157, file: !14, line: 250, baseType: !1182, size: 128, offset: 192)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !867, line: 13, size: 128, elements: !1183)
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1182, file: !867, line: 14, baseType: !866, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1182, file: !867, line: 15, baseType: !1186, size: 64, offset: 64)
!1186 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1157, file: !14, line: 251, baseType: !1182, size: 128, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1157, file: !14, line: 252, baseType: !1182, size: 128, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1157, file: !14, line: 259, baseType: !727, size: 64, offset: 576)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1088, file: !14, line: 1988, baseType: !1191, size: 64, offset: 896)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!109, !1111, !1194, !1196, !395, !7}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1027)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1198, line: 22, size: 1280, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1197, file: !1198, line: 23, baseType: !395, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1197, file: !1198, line: 24, baseType: !1075, size: 16, offset: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1197, file: !1198, line: 25, baseType: !7, size: 32, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1197, file: !1198, line: 26, baseType: !874, size: 32, offset: 96)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1197, file: !1198, line: 27, baseType: !448, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1197, file: !1198, line: 28, baseType: !448, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1197, file: !1198, line: 41, baseType: !448, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1197, file: !1198, line: 42, baseType: !1146, size: 32, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1197, file: !1198, line: 43, baseType: !1146, size: 32, offset: 352)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1197, file: !1198, line: 44, baseType: !791, size: 32, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1197, file: !1198, line: 45, baseType: !809, size: 32, offset: 416)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1197, file: !1198, line: 46, baseType: !759, size: 64, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1197, file: !1198, line: 47, baseType: !1182, size: 128, offset: 512)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1197, file: !1198, line: 48, baseType: !1182, size: 128, offset: 640)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1197, file: !1198, line: 49, baseType: !1182, size: 128, offset: 768)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1197, file: !1198, line: 50, baseType: !1182, size: 128, offset: 896)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1197, file: !1198, line: 51, baseType: !448, size: 64, offset: 1024)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1197, file: !1198, line: 52, baseType: !448, size: 64, offset: 1088)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1197, file: !1198, line: 53, baseType: !395, size: 32, offset: 1152)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1197, file: !1198, line: 54, baseType: !395, size: 32, offset: 1184)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1197, file: !1198, line: 55, baseType: !448, size: 64, offset: 1216)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1088, file: !14, line: 1990, baseType: !1222, size: 64, offset: 960)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1225, !1036, !923, !1228}
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !265, line: 66, baseType: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !566, line: 73, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !566, line: 15, baseType: !1186)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !265, line: 61, baseType: !1229)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !566, line: 72, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !566, line: 16, baseType: !266)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1088, file: !14, line: 1991, baseType: !1232, size: 64, offset: 1024)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!109, !1071, !1235, !448, !448}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1088, file: !14, line: 1993, baseType: !1238, size: 64, offset: 1088)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!109, !1071, !109}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1088, file: !14, line: 1994, baseType: !1242, size: 64, offset: 1152)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!109, !1071, !1036, !727, !7, !1075}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1088, file: !14, line: 1997, baseType: !1246, size: 64, offset: 1216)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!109, !1111, !1071, !727, !1075}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1088, file: !14, line: 1999, baseType: !1250, size: 64, offset: 1280)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!1082, !1111, !1036, !109}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1088, file: !14, line: 2001, baseType: !1254, size: 64, offset: 1344)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!109, !1111, !1036, !1082, !109}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1088, file: !14, line: 2003, baseType: !1258, size: 64, offset: 1408)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!109, !1111, !1036, !1261}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1088, file: !14, line: 2005, baseType: !1264, size: 64, offset: 1472)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!109, !1036, !1261}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1088, file: !14, line: 2006, baseType: !1268, size: 64, offset: 1536)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!1271, !1071}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1272, file: !14, line: 3193, baseType: !373, size: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1272, file: !14, line: 3194, baseType: !395, size: 32, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1072, file: !14, line: 655, baseType: !1277, size: 64, offset: 448)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !2512, !2644, !2684, !2767, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2784, !2788, !2789, !2792, !2795, !2798, !2801, !2802, !2803, !2844, !2870, !2871, !2872, !2873, !2874, !2875, !2878, !2882, !2891, !2892, !2893, !2894, !2953, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1278, file: !14, line: 1191, baseType: !272, size: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1278, file: !14, line: 1192, baseType: !1146, size: 32, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1278, file: !14, line: 1193, baseType: !318, size: 8, offset: 160)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1278, file: !14, line: 1194, baseType: !266, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1278, file: !14, line: 1195, baseType: !759, size: 64, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1278, file: !14, line: 1196, baseType: !1286, size: 64, offset: 320)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1297, !1301, !1305, !1309, !2500, !2501, !2502, !2504, !2505, !2506, !2508, !2509, !2510, !2511}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1287, file: !14, line: 2367, baseType: !913, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1287, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1287, file: !14, line: 2376, baseType: !1292, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!109, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1033, line: 21, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1287, file: !14, line: 2377, baseType: !1298, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1287, file: !14, line: 2378, baseType: !1302, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1036, !1286, !109, !913, !263}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1287, file: !14, line: 2380, baseType: !1306, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !1277}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1287, file: !14, line: 2381, baseType: !1310, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1319, !2143, !2169, !2170, !2171, !2172, !2176, !2179, !2180, !2181, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2249, !2253, !2273, !2293, !2294, !2295, !2296, !2305, !2328, !2329, !2332, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2346, !2347, !2458, !2466, !2467, !2468, !2470, !2474, !2475, !2479, !2480, !2481, !2482, !2484, !2485, !2486, !2493, !2494, !2495, !2499}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1311, file: !6, line: 403, baseType: !5, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1311, file: !6, line: 406, baseType: !272, size: 128, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1311, file: !6, line: 409, baseType: !1316, size: 448, offset: 192)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 448, elements: !1317)
!1317 = !{!1318}
!1318 = !DISubrange(count: 56)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1311, file: !6, line: 417, baseType: !1320, size: 768, offset: 640)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1321)
!1321 = !{!1322, !2136, !2137, !2138, !2141}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1320, file: !6, line: 46, baseType: !1323, size: 512)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1324, line: 64, size: 512, elements: !1325)
!1324 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1325 = !{!1326, !1327, !1328, !1330, !1374, !1982, !2126, !2131, !2132, !2133, !2134, !2135}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1323, file: !1324, line: 65, baseType: !913, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1323, file: !1324, line: 66, baseType: !272, size: 128, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1323, file: !1324, line: 67, baseType: !1329, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1323, file: !1324, line: 68, baseType: !1331, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1324, line: 168, size: 768, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1332, file: !1324, line: 169, baseType: !272, size: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1332, file: !1324, line: 170, baseType: !290, size: 32, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1332, file: !1324, line: 171, baseType: !1323, size: 512, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1332, file: !1324, line: 172, baseType: !1338, size: 64, offset: 704)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1324, line: 133, size: 192, elements: !1341)
!1341 = !{!1342, !1349, !1354}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1340, file: !1324, line: 134, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!109, !1347}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1323)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1340, file: !1324, line: 135, baseType: !1350, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!913, !1347}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1340, file: !1324, line: 136, baseType: !1355, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!109, !1347, !1359}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1324, line: 125, size: 20736, elements: !1361)
!1361 = !{!1362, !1364, !1368, !1369, !1373}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1360, file: !1324, line: 126, baseType: !1363, size: 192)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 192, elements: !785)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1360, file: !1324, line: 127, baseType: !1365, size: 4096, offset: 192)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 4096, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1360, file: !1324, line: 128, baseType: !109, size: 32, offset: 4288)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1360, file: !1324, line: 129, baseType: !1370, size: 16384, offset: 4320)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 16384, elements: !1371)
!1371 = !{!1372}
!1372 = !DISubrange(count: 2048)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1360, file: !1324, line: 130, baseType: !109, size: 32, offset: 20704)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1323, file: !1324, line: 69, baseType: !1375, size: 64, offset: 320)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1324, line: 116, size: 384, elements: !1378)
!1378 = !{!1379, !1383, !1402, !1942, !1972, !1976}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1377, file: !1324, line: 117, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !1329}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1377, file: !1324, line: 118, baseType: !1384, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1386)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1387, line: 254, size: 128, elements: !1388)
!1387 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1388 = !{!1389, !1398}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1386, file: !1387, line: 255, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!1225, !1329, !1393, !923}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1387, line: 30, size: 128, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1394, file: !1387, line: 31, baseType: !913, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1394, file: !1387, line: 32, baseType: !1075, size: 16, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1386, file: !1387, line: 256, baseType: !1399, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1225, !1329, !1393, !913, !1228}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1377, file: !1324, line: 119, baseType: !1403, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1406)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1387, line: 84, size: 320, elements: !1407)
!1407 = !{!1408, !1409, !1413, !1938, !1940}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1406, file: !1387, line: 85, baseType: !913, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1406, file: !1387, line: 86, baseType: !1410, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!1075, !1329, !1393, !109}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1406, file: !1387, line: 88, baseType: !1414, size: 64, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!1075, !1329, !1417, !109}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1387, line: 175, size: 512, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1423, !1929, !1933, !1934}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1418, file: !1387, line: 176, baseType: !1394, size: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1418, file: !1387, line: 177, baseType: !1228, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1418, file: !1387, line: 178, baseType: !263, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1418, file: !1387, line: 179, baseType: !1424, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!1427}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1921, !1922, !1923, !1926, !1927, !1928}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1428, file: !14, line: 473, baseType: !1071, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1428, file: !14, line: 474, baseType: !373, size: 128, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1428, file: !14, line: 475, baseType: !850, size: 320, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1428, file: !14, line: 476, baseType: !264, size: 32, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1428, file: !14, line: 477, baseType: !284, size: 32, offset: 544)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1428, file: !14, line: 482, baseType: !582, size: 128, offset: 576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1428, file: !14, line: 483, baseType: !266, size: 64, offset: 704)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1428, file: !14, line: 484, baseType: !266, size: 64, offset: 768)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1428, file: !14, line: 485, baseType: !1439, size: 64, offset: 832)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !1442)
!1442 = !{!1443, !1746, !1816, !1820, !1824, !1830, !1836, !1840, !1845, !1849, !1853, !1857, !1885, !1889, !1893, !1897, !1902, !1906, !1913, !1917}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1441, file: !14, line: 405, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!109, !1447, !1744}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !1449)
!1449 = !{!1450, !1451, !1738, !1743}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1448, file: !38, line: 75, baseType: !266, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !38, line: 83, baseType: !1452, size: 320, offset: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !38, line: 83, size: 320, elements: !1453)
!1453 = !{!1454, !1475, !1489, !1493, !1737}
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !38, line: 84, baseType: !1455, size: 320)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !38, line: 84, size: 320, elements: !1456)
!1456 = !{!1457, !1468, !1469, !1474}
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !38, line: 90, baseType: !1458, size: 128)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !38, line: 90, size: 128, elements: !1459)
!1459 = !{!1460, !1461, !1466, !1467}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1458, file: !38, line: 91, baseType: !272, size: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !38, line: 94, baseType: !1462, size: 128)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !38, line: 94, size: 128, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1462, file: !38, line: 96, baseType: !263, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1462, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1458, file: !38, line: 102, baseType: !272, size: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1458, file: !38, line: 103, baseType: !272, size: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1455, file: !38, line: 106, baseType: !1427, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !38, line: 107, baseType: !1470, size: 64, offset: 192)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !38, line: 107, size: 64, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1470, file: !38, line: 108, baseType: !266, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1470, file: !38, line: 109, baseType: !266, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1455, file: !38, line: 117, baseType: !266, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !38, line: 119, baseType: !1476, size: 320)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !38, line: 119, size: 320, elements: !1477)
!1477 = !{!1478, !1479, !1482, !1483, !1484}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1476, file: !38, line: 124, baseType: !266, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1476, file: !38, line: 125, baseType: !1480, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1476, file: !38, line: 126, baseType: !266, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1476, file: !38, line: 127, baseType: !266, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !38, line: 128, baseType: !1485, size: 64, offset: 256)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !38, line: 128, size: 64, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1485, file: !38, line: 133, baseType: !266, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1485, file: !38, line: 138, baseType: !740, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !38, line: 141, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !38, line: 141, size: 64, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1490, file: !38, line: 142, baseType: !266, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !38, line: 144, baseType: !1494, size: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !38, line: 144, size: 128, elements: !1495)
!1495 = !{!1496, !1736}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1494, file: !38, line: 146, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !30, line: 126, size: 1216, elements: !1499)
!1499 = !{!1500, !1510, !1531, !1542, !1543, !1544, !1545, !1718, !1719, !1720}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1498, file: !30, line: 127, baseType: !1501, size: 384)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !30, line: 21, size: 384, elements: !1502)
!1502 = !{!1503, !1504, !1506, !1507, !1508, !1509}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1501, file: !30, line: 22, baseType: !266, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1501, file: !30, line: 23, baseType: !1505, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1501, file: !30, line: 24, baseType: !1505, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1501, file: !30, line: 25, baseType: !266, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1501, file: !30, line: 26, baseType: !266, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1501, file: !30, line: 27, baseType: !266, size: 64, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1498, file: !30, line: 128, baseType: !1511, size: 128, offset: 384)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1512, line: 105, size: 128, elements: !1513)
!1512 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1511, file: !1512, line: 110, baseType: !266, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1511, file: !1512, line: 118, baseType: !1516, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1512, line: 95, size: 448, elements: !1518)
!1518 = !{!1519, !1520, !1526, !1527, !1528, !1529, !1530}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1517, file: !1512, line: 96, baseType: !740, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1517, file: !1512, line: 97, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1512, line: 60, baseType: !1523)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !1525}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1517, file: !1512, line: 98, baseType: !1521, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1517, file: !1512, line: 99, baseType: !910, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1517, file: !1512, line: 100, baseType: !910, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1517, file: !1512, line: 101, baseType: !350, size: 128, align: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1517, file: !1512, line: 102, baseType: !1525, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1498, file: !30, line: 129, baseType: !1532, size: 256, offset: 512)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1533, line: 26, size: 256, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1532, file: !1533, line: 27, baseType: !7, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1532, file: !1533, line: 28, baseType: !1537, size: 192, offset: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1538, line: 43, size: 192, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1537, file: !1538, line: 44, baseType: !541, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1537, file: !1538, line: 45, baseType: !272, size: 128, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1498, file: !30, line: 130, baseType: !29, size: 32, offset: 768)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1498, file: !30, line: 131, baseType: !7, size: 32, offset: 800)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1498, file: !30, line: 132, baseType: !266, size: 64, offset: 832)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1498, file: !30, line: 133, baseType: !1546, size: 64, offset: 896)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1548)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !30, line: 77, size: 192, elements: !1549)
!1549 = !{!1550, !1554, !1714}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1548, file: !30, line: 83, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !1447}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1548, file: !30, line: 89, baseType: !1555, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1561, line: 512, size: 896, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1562 = !{!1563, !1681, !1682, !1689, !1696, !1706, !1707, !1708, !1710, !1712}
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !1561, line: 513, baseType: !1564, size: 320)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1560, file: !1561, line: 513, size: 320, elements: !1565)
!1565 = !{!1566, !1677, !1678, !1679, !1680}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1564, file: !1561, line: 514, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !1569)
!1569 = !{!1570, !1579, !1580, !1588, !1595, !1596, !1601, !1602, !1607, !1608, !1611, !1670, !1671, !1672, !1673, !1674, !1675}
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !38, line: 628, baseType: !1571, size: 128)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1568, file: !38, line: 628, size: 128, elements: !1572)
!1572 = !{!1573, !1578}
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !38, line: 629, baseType: !1574, size: 128)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !38, line: 629, size: 128, elements: !1575)
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1574, file: !38, line: 631, baseType: !266, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1574, file: !38, line: 632, baseType: !266, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1571, file: !38, line: 635, baseType: !350, size: 128, align: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1568, file: !38, line: 639, baseType: !699, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1568, file: !38, line: 640, baseType: !1581, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1582, line: 297, baseType: !1583)
!1582 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1582, line: 297, size: 64, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1583, file: !1582, line: 297, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1587, line: 19, baseType: !266)
!1587 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !38, line: 646, baseType: !1589, size: 64, offset: 256)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1568, file: !38, line: 646, size: 64, elements: !1590)
!1590 = !{!1591, !1594}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1589, file: !38, line: 647, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !266)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1589, file: !38, line: 648, baseType: !1593, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1568, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1568, file: !38, line: 667, baseType: !1597, size: 64, offset: 384)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !1599)
!1599 = !{!1600}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1598, file: !38, line: 580, baseType: !850, size: 320)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1568, file: !38, line: 670, baseType: !910, size: 8, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1568, file: !38, line: 681, baseType: !1603, size: 256, offset: 512)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1568, file: !38, line: 678, size: 256, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1603, file: !38, line: 679, baseType: !440, size: 192, align: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1603, file: !38, line: 680, baseType: !266, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1568, file: !38, line: 689, baseType: !272, size: 128, offset: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1568, file: !38, line: 691, baseType: !1609, size: 64, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1568, file: !38, line: 694, baseType: !1612, size: 64, offset: 960)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1561, line: 563, size: 1024, elements: !1615)
!1615 = !{!1616, !1620, !1621, !1625, !1629, !1633, !1634, !1638, !1642, !1646, !1647, !1648, !1652, !1656, !1662, !1666}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1614, file: !1561, line: 564, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !1567}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1614, file: !1561, line: 569, baseType: !1617, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1614, file: !1561, line: 571, baseType: !1622, size: 64, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!109, !1567, !266}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1614, file: !1561, line: 572, baseType: !1626, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!109, !1567}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1614, file: !1561, line: 578, baseType: !1630, size: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!109, !1567, !266, !266, !266}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1614, file: !1561, line: 580, baseType: !1555, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1614, file: !1561, line: 581, baseType: !1635, size: 64, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!1558, !1559, !7}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1614, file: !1561, line: 582, baseType: !1639, size: 64, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!1558, !1559, !266, !266}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1614, file: !1561, line: 584, baseType: !1643, size: 64, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!266, !1567}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1614, file: !1561, line: 588, baseType: !1555, size: 64, offset: 576)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1614, file: !1561, line: 591, baseType: !1555, size: 64, offset: 640)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1614, file: !1561, line: 597, baseType: !1649, size: 64, offset: 704)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!109, !1567, !266, !263, !109, !109}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1614, file: !1561, line: 603, baseType: !1653, size: 64, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!913, !1567}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1614, file: !1561, line: 613, baseType: !1657, size: 64, offset: 832)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!109, !1567, !1660}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1614, file: !1561, line: 625, baseType: !1663, size: 64, offset: 896)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!1660, !1567, !266}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1614, file: !1561, line: 633, baseType: !1667, size: 64, offset: 960)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!1447, !1567, !266}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1568, file: !38, line: 697, baseType: !266, size: 64, offset: 1024)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1568, file: !38, line: 699, baseType: !727, size: 64, offset: 1088)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1568, file: !38, line: 700, baseType: !263, size: 64, offset: 1152)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1568, file: !38, line: 711, baseType: !740, size: 64, offset: 1216)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1568, file: !38, line: 717, baseType: !1660, size: 64, offset: 1280)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1568, file: !38, line: 722, baseType: !1676, offset: 1344)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !720)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1564, file: !1561, line: 515, baseType: !264, size: 32, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1564, file: !1561, line: 516, baseType: !266, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1564, file: !1561, line: 517, baseType: !266, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1564, file: !1561, line: 518, baseType: !266, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1560, file: !1561, line: 520, baseType: !37, size: 32, offset: 320)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1560, file: !1561, line: 522, baseType: !1683, size: 64, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1587, line: 22, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1587, line: 22, size: 64, elements: !1686)
!1686 = !{!1687}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1685, file: !1587, line: 22, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1587, line: 15, baseType: !266)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1560, file: !1561, line: 524, baseType: !1690, size: 64, offset: 448)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1582, line: 372, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1582, line: 372, size: 64, elements: !1693)
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1692, file: !1582, line: 372, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1587, line: 16, baseType: !266)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !1561, line: 527, baseType: !1697, size: 64, offset: 512)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !1561, line: 527, size: 64, elements: !1698)
!1698 = !{!1699, !1705}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1697, file: !1561, line: 528, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1587, line: 21, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1587, line: 21, size: 64, elements: !1702)
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1701, file: !1587, line: 21, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1587, line: 14, baseType: !266)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1697, file: !1561, line: 529, baseType: !1684, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1560, file: !1561, line: 534, baseType: !1447, size: 64, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1560, file: !1561, line: 535, baseType: !1447, size: 64, offset: 640)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1560, file: !1561, line: 541, baseType: !1709, size: 64, offset: 704)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1560, file: !1561, line: 545, baseType: !1711, size: 64, offset: 768)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1560, file: !1561, line: 549, baseType: !1713, size: 64, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1582, line: 520, baseType: !1447)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1548, file: !30, line: 100, baseType: !1715, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!109, !1497, !266, !266, !109}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1498, file: !30, line: 134, baseType: !263, size: 64, offset: 960)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1498, file: !30, line: 135, baseType: !109, size: 32, offset: 1024)
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !30, line: 136, baseType: !1721, size: 128, offset: 1088)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !30, line: 136, size: 128, elements: !1722)
!1722 = !{!1723, !1729}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1721, file: !30, line: 137, baseType: !1724, size: 128)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1725, line: 6, size: 128, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1724, file: !1725, line: 7, baseType: !448, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1724, file: !1725, line: 8, baseType: !448, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !30, line: 138, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !30, line: 138, elements: !1731)
!1731 = !{!1732, !1734}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1730, file: !30, line: 138, baseType: !1733)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1730, file: !30, line: 138, elements: !720)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1730, file: !30, line: 138, baseType: !1735)
!1735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1724, elements: !1010)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1494, file: !38, line: 147, baseType: !263, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1452, file: !38, line: 161, baseType: !350, size: 128, align: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !38, line: 164, baseType: !1739, size: 32, offset: 384)
!1739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !38, line: 164, size: 32, elements: !1740)
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1739, file: !38, line: 169, baseType: !284, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1739, file: !38, line: 177, baseType: !7, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1448, file: !38, line: 181, baseType: !284, size: 32, offset: 416)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1441, file: !14, line: 406, baseType: !1747, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!109, !727, !1750}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !1752)
!1752 = !{!1753, !1783, !1797}
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !38, line: 295, baseType: !1754, size: 512)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !38, line: 295, size: 512, elements: !1755)
!1755 = !{!1756, !1782}
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !38, line: 296, baseType: !1757, size: 448)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1754, file: !38, line: 296, size: 448, elements: !1758)
!1758 = !{!1759, !1760, !1769, !1770, !1771, !1780, !1781}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1757, file: !38, line: 298, baseType: !266, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1757, file: !38, line: 299, baseType: !1761, size: 128, offset: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1757, file: !38, line: 299, size: 128, elements: !1762)
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1761, file: !38, line: 300, baseType: !272, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !38, line: 302, baseType: !1765, size: 128)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1761, file: !38, line: 302, size: 128, elements: !1766)
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1765, file: !38, line: 303, baseType: !263, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1765, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1757, file: !38, line: 310, baseType: !1427, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1757, file: !38, line: 311, baseType: !266, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, scope: !1757, file: !38, line: 312, baseType: !1772, size: 64, offset: 320)
!1772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1757, file: !38, line: 312, size: 64, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1772, file: !38, line: 313, baseType: !263, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1772, file: !38, line: 314, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !1777)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1777, file: !38, line: 256, baseType: !266, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1757, file: !38, line: 316, baseType: !284, size: 32, offset: 384)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1757, file: !38, line: 317, baseType: !284, size: 32, offset: 416)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1754, file: !38, line: 323, baseType: !1448, size: 512, align: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !38, line: 325, baseType: !1784, size: 512, offset: 512)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !38, line: 325, size: 512, elements: !1785)
!1785 = !{!1786, !1796}
!1786 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !38, line: 326, baseType: !1787, size: 320)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1784, file: !38, line: 326, size: 320, elements: !1788)
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1787, file: !38, line: 327, baseType: !266, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1787, file: !38, line: 328, baseType: !266, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1787, file: !38, line: 329, baseType: !266, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1787, file: !38, line: 331, baseType: !284, size: 32, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1787, file: !38, line: 332, baseType: !284, size: 32, offset: 224)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1787, file: !38, line: 333, baseType: !284, size: 32, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1787, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1784, file: !38, line: 339, baseType: !1448, size: 512, align: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !38, line: 341, baseType: !1798, size: 512, offset: 1024)
!1798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !38, line: 341, size: 512, elements: !1799)
!1799 = !{!1800, !1809, !1815}
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !38, line: 342, baseType: !1801, size: 384)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1798, file: !38, line: 342, size: 384, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1801, file: !38, line: 343, baseType: !266, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1801, file: !38, line: 344, baseType: !266, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1801, file: !38, line: 346, baseType: !263, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1801, file: !38, line: 347, baseType: !263, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1801, file: !38, line: 348, baseType: !263, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1801, file: !38, line: 349, baseType: !263, size: 64, offset: 320)
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !38, line: 352, baseType: !1810, size: 256)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1798, file: !38, line: 352, size: 256, elements: !1811)
!1811 = !{!1812, !1813, !1814}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1810, file: !38, line: 353, baseType: !266, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1810, file: !38, line: 354, baseType: !266, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1810, file: !38, line: 356, baseType: !272, size: 128, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1798, file: !38, line: 359, baseType: !1448, size: 512, align: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1441, file: !14, line: 409, baseType: !1817, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!109, !1427, !1744}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1441, file: !14, line: 412, baseType: !1821, size: 64, offset: 192)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!910, !1427, !1750}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1441, file: !14, line: 414, baseType: !1825, size: 64, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{null, !1828}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1441, file: !14, line: 416, baseType: !1831, size: 64, offset: 320)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!109, !727, !1427, !759, !7, !1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1441, file: !14, line: 419, baseType: !1837, size: 64, offset: 384)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!109, !727, !1427, !759, !7, !7, !1447, !263}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1441, file: !14, line: 424, baseType: !1841, size: 64, offset: 448)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!1844, !1427, !1844}
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !265, line: 131, baseType: !448)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1441, file: !14, line: 425, baseType: !1846, size: 64, offset: 512)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !1750, !1228, !1228}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1441, file: !14, line: 426, baseType: !1850, size: 64, offset: 576)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!910, !1750, !264}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1441, file: !14, line: 427, baseType: !1854, size: 64, offset: 640)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !1750}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1441, file: !14, line: 428, baseType: !1858, size: 64, offset: 704)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!1225, !1861, !1883}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1870, !1871, !1872, !1873}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1862, file: !14, line: 374, baseType: !727, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1862, file: !14, line: 375, baseType: !759, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1862, file: !14, line: 376, baseType: !1867, size: 64, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !1861, !1186}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1862, file: !14, line: 377, baseType: !263, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1862, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1862, file: !14, line: 379, baseType: !324, size: 16, offset: 288)
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1862, file: !14, line: 380, baseType: !1874, size: 64, offset: 320)
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1862, file: !14, line: 380, size: 64, elements: !1875)
!1875 = !{!1876, !1879}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1874, file: !14, line: 386, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1874, file: !14, line: 395, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!1225, !263}
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1441, file: !14, line: 433, baseType: !1886, size: 64, offset: 768)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!109, !1427, !1750, !1750, !74}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1441, file: !14, line: 435, baseType: !1890, size: 64, offset: 832)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!109, !1750}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1441, file: !14, line: 436, baseType: !1894, size: 64, offset: 896)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!910, !1750, !1228, !1228}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1441, file: !14, line: 438, baseType: !1898, size: 64, offset: 960)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !1750, !1901, !1901}
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1441, file: !14, line: 439, baseType: !1903, size: 64, offset: 1024)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!109, !1427, !1447}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1441, file: !14, line: 442, baseType: !1907, size: 64, offset: 1088)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!109, !1910, !727, !1912}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1441, file: !14, line: 444, baseType: !1914, size: 64, offset: 1152)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{null, !727}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1441, file: !14, line: 445, baseType: !1918, size: 64, offset: 1216)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!109, !1861, !1883}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1428, file: !14, line: 486, baseType: !266, size: 64, offset: 896)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1428, file: !14, line: 487, baseType: !850, size: 320, offset: 960)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1428, file: !14, line: 488, baseType: !1924, size: 32, offset: 1280)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1925, line: 8, baseType: !395)
!1925 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1428, file: !14, line: 489, baseType: !290, size: 32, offset: 1312)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1428, file: !14, line: 490, baseType: !272, size: 128, offset: 1344)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1428, file: !14, line: 491, baseType: !263, size: 64, offset: 1472)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1418, file: !1387, line: 180, baseType: !1930, size: 64, offset: 320)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!1225, !727, !1329, !1417, !923, !759, !1228}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1418, file: !1387, line: 182, baseType: !1930, size: 64, offset: 384)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1418, file: !1387, line: 184, baseType: !1935, size: 64, offset: 448)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!109, !727, !1329, !1417, !1567}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1406, file: !1387, line: 90, baseType: !1939, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1406, file: !1387, line: 91, baseType: !1941, size: 64, offset: 256)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1377, file: !1324, line: 120, baseType: !1943, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!1946, !1347}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1948)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !1949)
!1949 = !{!1950, !1951, !1955, !1959, !1967, !1971}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1948, file: !82, line: 40, baseType: !81, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1948, file: !82, line: 41, baseType: !1952, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!910}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1948, file: !82, line: 42, baseType: !1956, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!263}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1948, file: !82, line: 43, baseType: !1960, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!1963, !1965}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1948, file: !82, line: 44, baseType: !1968, size: 64, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!1963}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1948, file: !82, line: 45, baseType: !1103, size: 64, offset: 320)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1377, file: !1324, line: 121, baseType: !1973, size: 64, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!1963, !1347}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1377, file: !1324, line: 122, baseType: !1977, size: 64, offset: 320)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !1347, !1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1323, file: !1324, line: 70, baseType: !1983, size: 64, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1985, line: 190, size: 1152, elements: !1986)
!1985 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !2118, !2119, !2120, !2121, !2122, !2125}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1984, file: !1985, line: 191, baseType: !284, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1984, file: !1985, line: 192, baseType: !284, size: 32, offset: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1984, file: !1985, line: 202, baseType: !1983, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1984, file: !1985, line: 203, baseType: !913, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1984, file: !1985, line: 205, baseType: !440, size: 192, align: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1984, file: !1985, line: 207, baseType: !1963, size: 64, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1984, file: !1985, line: 208, baseType: !7, size: 32, offset: 448)
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1984, file: !1985, line: 209, baseType: !1995, size: 256, offset: 512)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1984, file: !1985, line: 209, size: 256, elements: !1996)
!1996 = !{!1997, !2006, !2010}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1995, file: !1985, line: 210, baseType: !1998, size: 256)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1985, line: 153, size: 256, elements: !1999)
!1999 = !{!2000, !2001, !2002, !2005}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1998, file: !1985, line: 154, baseType: !266, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1998, file: !1985, line: 156, baseType: !585, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1998, file: !1985, line: 162, baseType: !2003, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1985, line: 162, flags: DIFlagFwdDecl)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1998, file: !1985, line: 167, baseType: !266, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1995, file: !1985, line: 211, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1985, line: 170, size: 64, elements: !2008)
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2007, file: !1985, line: 171, baseType: !1983, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1995, file: !1985, line: 212, baseType: !2011, size: 256)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1985, line: 174, size: 256, elements: !2012)
!2012 = !{!2013, !2113, !2116, !2117}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2011, file: !1985, line: 175, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2016)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1985, line: 271, size: 768, elements: !2017)
!2017 = !{!2018, !2077, !2081, !2082, !2083, !2084, !2085, !2089, !2090, !2091, !2092, !2109}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2016, file: !1985, line: 276, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!109, !2022}
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1985, line: 251, size: 1216, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2023, file: !1985, line: 253, baseType: !1983, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2023, file: !1985, line: 254, baseType: !727, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2023, file: !1985, line: 255, baseType: !2028, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2030, line: 17, size: 960, elements: !2031)
!2030 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2031 = !{!2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2062, !2063, !2066}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2029, file: !2030, line: 18, baseType: !923, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2029, file: !2030, line: 19, baseType: !1228, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2029, file: !2030, line: 20, baseType: !1228, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2029, file: !2030, line: 21, baseType: !1228, size: 64, offset: 192)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2029, file: !2030, line: 22, baseType: !1228, size: 64, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2029, file: !2030, line: 23, baseType: !759, size: 64, offset: 320)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2029, file: !2030, line: 24, baseType: !759, size: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2029, file: !2030, line: 25, baseType: !747, size: 256, offset: 448)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2029, file: !2030, line: 26, baseType: !2041, size: 64, offset: 704)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2043)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2030, line: 32, size: 256, elements: !2044)
!2044 = !{!2045, !2050, !2054, !2058}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2043, file: !2030, line: 33, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!263, !2028, !2049}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2043, file: !2030, line: 34, baseType: !2051, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !2028, !263}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2043, file: !2030, line: 35, baseType: !2055, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!263, !2028, !263, !2049}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2043, file: !2030, line: 36, baseType: !2059, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!109, !2028, !263}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2029, file: !2030, line: 27, baseType: !109, size: 32, offset: 768)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2029, file: !2030, line: 28, baseType: !2064, size: 64, offset: 832)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2029, file: !2030, line: 29, baseType: !263, size: 64, offset: 896)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2023, file: !1985, line: 256, baseType: !263, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2023, file: !1985, line: 259, baseType: !747, size: 256, offset: 256)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2023, file: !1985, line: 260, baseType: !747, size: 256, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2023, file: !1985, line: 261, baseType: !109, size: 32, offset: 768)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2023, file: !1985, line: 262, baseType: !272, size: 128, offset: 832)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2023, file: !1985, line: 263, baseType: !923, size: 64, offset: 960)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2023, file: !1985, line: 265, baseType: !1228, size: 64, offset: 1024)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2023, file: !1985, line: 266, baseType: !910, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2023, file: !1985, line: 267, baseType: !910, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2023, file: !1985, line: 268, baseType: !1612, size: 64, offset: 1152)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2016, file: !1985, line: 277, baseType: !2078, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !2022}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2016, file: !1985, line: 290, baseType: !2059, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2016, file: !1985, line: 292, baseType: !2046, size: 64, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2016, file: !1985, line: 293, baseType: !2055, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2016, file: !1985, line: 294, baseType: !2051, size: 64, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2016, file: !1985, line: 296, baseType: !2086, size: 64, offset: 384)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!1225, !2022, !923, !1228, !759}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2016, file: !1985, line: 306, baseType: !1228, size: 64, offset: 448)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2016, file: !1985, line: 313, baseType: !910, size: 8, offset: 512)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2016, file: !1985, line: 314, baseType: !2086, size: 64, offset: 576)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2016, file: !1985, line: 317, baseType: !2093, size: 64, offset: 640)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!2096, !2022, !2098}
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2097, line: 59, baseType: !7)
!2097 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2100, line: 37, size: 128, elements: !2101)
!2100 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2101 = !{!2102, !2108}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2099, file: !2100, line: 38, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2100, line: 31, baseType: !2104)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{null, !727, !2107, !2098}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2099, file: !2100, line: 39, baseType: !2096, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2016, file: !1985, line: 320, baseType: !2110, size: 64, offset: 704)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!109, !2022, !1567}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2011, file: !1985, line: 176, baseType: !2114, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1985, line: 35, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2011, file: !1985, line: 177, baseType: !759, size: 64, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2011, file: !1985, line: 178, baseType: !1983, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1984, file: !1985, line: 215, baseType: !263, size: 64, offset: 768)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1984, file: !1985, line: 221, baseType: !448, size: 64, offset: 832)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1984, file: !1985, line: 223, baseType: !326, size: 16, offset: 896)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1984, file: !1985, line: 224, baseType: !1075, size: 16, offset: 912)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1984, file: !1985, line: 225, baseType: !2123, size: 64, offset: 960)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1985, line: 36, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1984, file: !1985, line: 227, baseType: !350, size: 128, align: 64, offset: 1024)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1323, file: !1324, line: 71, baseType: !2127, size: 32, offset: 448)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2128, line: 19, size: 32, elements: !2129)
!2128 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2129 = !{!2130}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2127, file: !2128, line: 20, baseType: !280, size: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1323, file: !1324, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1323, file: !1324, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1323, file: !1324, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1323, file: !1324, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1323, file: !1324, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1320, file: !6, line: 47, baseType: !1310, size: 64, offset: 512)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1320, file: !6, line: 48, baseType: !1329, size: 64, offset: 576)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1320, file: !6, line: 49, baseType: !2139, size: 64, offset: 640)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1320, file: !6, line: 50, baseType: !2142, size: 64, offset: 704)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1311, file: !6, line: 418, baseType: !2144, size: 64, offset: 1408)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2146)
!2146 = !{!2147, !2148, !2153, !2157, !2161, !2165}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2145, file: !6, line: 54, baseType: !1394, size: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2145, file: !6, line: 55, baseType: !2149, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!1225, !2144, !2152, !923}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2145, file: !6, line: 57, baseType: !2154, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!1225, !2144, !2152, !913, !1228}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2145, file: !6, line: 59, baseType: !2158, size: 64, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{null, !1310, !913}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2145, file: !6, line: 60, baseType: !2162, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!109, !1310}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2145, file: !6, line: 61, baseType: !2166, size: 64, offset: 384)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{null, !1310}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1311, file: !6, line: 419, baseType: !913, size: 64, offset: 1472)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1311, file: !6, line: 420, baseType: !913, size: 64, offset: 1536)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1311, file: !6, line: 421, baseType: !1329, size: 64, offset: 1600)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1311, file: !6, line: 424, baseType: !2173, size: 64, offset: 1664)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2175)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1311, file: !6, line: 425, baseType: !2177, size: 64, offset: 1728)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1311, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1311, file: !6, line: 435, baseType: !747, size: 256, offset: 1856)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1311, file: !6, line: 437, baseType: !2182, size: 64, offset: 2112)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2184, line: 69, size: 320, elements: !2185)
!2184 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2185 = !{!2186, !2187, !2188, !2205, !2207, !2211, !2212}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2183, file: !2184, line: 70, baseType: !913, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2183, file: !2184, line: 71, baseType: !1310, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2183, file: !2184, line: 72, baseType: !2189, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2191)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2184, line: 47, size: 256, elements: !2192)
!2192 = !{!2193, !2194, !2200, !2204}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2191, file: !2184, line: 49, baseType: !7, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2191, file: !2184, line: 51, baseType: !2195, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!109, !913, !2198}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2183)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2191, file: !2184, line: 53, baseType: !2201, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!109, !923, !2198}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2191, file: !2184, line: 55, baseType: !1103, size: 64, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2183, file: !2184, line: 73, baseType: !2206, size: 16, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2183, file: !2184, line: 74, baseType: !2208, size: 8, offset: 208)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !315, line: 16, baseType: !2209)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !317, line: 20, baseType: !2210)
!2210 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2183, file: !2184, line: 75, baseType: !314, size: 8, offset: 216)
!2212 = !DIDerivedType(tag: DW_TAG_member, scope: !2183, file: !2184, line: 76, baseType: !2213, size: 64, offset: 256)
!2213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2183, file: !2184, line: 76, size: 64, elements: !2214)
!2214 = !{!2215, !2216, !2223}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2213, file: !2184, line: 77, baseType: !263, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2213, file: !2184, line: 78, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2219)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2184, line: 86, size: 128, elements: !2220)
!2220 = !{!2221, !2222}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2219, file: !2184, line: 87, baseType: !7, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2219, file: !2184, line: 88, baseType: !923, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2213, file: !2184, line: 79, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2226)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2184, line: 92, size: 256, elements: !2227)
!2227 = !{!2228, !2229, !2230, !2232, !2233}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2226, file: !2184, line: 94, baseType: !7, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2226, file: !2184, line: 95, baseType: !7, size: 32, offset: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2226, file: !2184, line: 96, baseType: !2231, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2226, file: !2184, line: 97, baseType: !2189, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2226, file: !2184, line: 98, baseType: !263, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1311, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1311, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1311, file: !6, line: 442, baseType: !2173, size: 64, offset: 2240)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1311, file: !6, line: 443, baseType: !2177, size: 64, offset: 2304)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1311, file: !6, line: 444, baseType: !910, size: 8, offset: 2368)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1311, file: !6, line: 451, baseType: !910, size: 8, offset: 2376)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1311, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1311, file: !6, line: 455, baseType: !2242, size: 64, offset: 2432)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2244, line: 23, size: 96, elements: !2245)
!2244 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2245 = !{!2246, !2247, !2248}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2243, file: !2244, line: 24, baseType: !109, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2243, file: !2244, line: 24, baseType: !109, size: 32, offset: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2243, file: !2244, line: 24, baseType: !109, size: 32, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1311, file: !6, line: 458, baseType: !2250, size: 64, offset: 2496)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!109}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1311, file: !6, line: 460, baseType: !2254, size: 4032, align: 512, offset: 2560)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2255, size: 4032, elements: !2271)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2256)
!2256 = !{!2257, !2258, !2259}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2255, file: !6, line: 363, baseType: !263, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2255, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2255, file: !6, line: 367, baseType: !2260, size: 448, offset: 128)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2261)
!2261 = !{!2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2260, file: !6, line: 320, baseType: !1310, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2260, file: !6, line: 321, baseType: !2264, size: 384, offset: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2265, line: 40, size: 384, elements: !2266)
!2265 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2266 = !{!2267}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2264, file: !2265, line: 41, baseType: !2268, size: 384, align: 64)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 384, align: 64, elements: !2269)
!2269 = !{!2270}
!2270 = !DISubrange(count: 2)
!2271 = !{!2272}
!2272 = !DISubrange(count: 7)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1311, file: !6, line: 463, baseType: !2274, size: 192, offset: 6592)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2275, line: 8, size: 192, elements: !2276)
!2275 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2276 = !{!2277, !2278, !2280}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2274, file: !2275, line: 10, baseType: !7, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2274, file: !2275, line: 11, baseType: !2279, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2274, file: !2275, line: 12, baseType: !2281, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2283, line: 59, size: 48, elements: !2284)
!2283 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2284 = !{!2285, !2288, !2289, !2290, !2291, !2292}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2282, file: !2283, line: 60, baseType: !2286, size: 16)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !315, line: 18, baseType: !2287)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !317, line: 23, baseType: !878)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2282, file: !2283, line: 61, baseType: !2286, size: 16, offset: 16)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2282, file: !2283, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2282, file: !2283, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2282, file: !2283, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2282, file: !2283, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1311, file: !6, line: 465, baseType: !266, size: 64, offset: 6784)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1311, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1311, file: !6, line: 470, baseType: !272, size: 128, offset: 6912)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1311, file: !6, line: 471, baseType: !2297, size: 64, offset: 7040)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2299, line: 33, size: 96, elements: !2300)
!2299 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2300 = !{!2301, !2302, !2303, !2304}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2298, file: !2299, line: 37, baseType: !109, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2298, file: !2299, line: 43, baseType: !109, size: 32, offset: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2298, file: !2299, line: 45, baseType: !326, size: 16, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2298, file: !2299, line: 47, baseType: !326, size: 16, offset: 80)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1311, file: !6, line: 476, baseType: !2306, size: 64, offset: 7104)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2308)
!2308 = !{!2309, !2325, !2326, !2327}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2307, file: !6, line: 379, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2312, line: 204, baseType: !2313)
!2312 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2312, line: 197, size: 192, elements: !2314)
!2314 = !{!2315, !2317, !2318, !2319, !2321, !2323}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2313, file: !2312, line: 198, baseType: !2316, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2312, line: 21, baseType: !396)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2313, file: !2312, line: 199, baseType: !318, size: 8, offset: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2313, file: !2312, line: 200, baseType: !318, size: 8, offset: 40)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2313, file: !2312, line: 201, baseType: !2320, size: 16, offset: 48)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2312, line: 17, baseType: !325)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2313, file: !2312, line: 202, baseType: !2322, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2312, line: 16, baseType: !449)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2313, file: !2312, line: 203, baseType: !2324, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2312, line: 22, baseType: !449)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2307, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2307, file: !6, line: 381, baseType: !923, size: 64, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2307, file: !6, line: 382, baseType: !923, size: 64, offset: 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1311, file: !6, line: 477, baseType: !2307, size: 256, offset: 7168)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1311, file: !6, line: 480, baseType: !2330, size: 64, offset: 7424)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1311, file: !6, line: 483, baseType: !2333, size: 64, offset: 7488)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1311, file: !6, line: 488, baseType: !923, size: 64, offset: 7552)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1311, file: !6, line: 492, baseType: !263, size: 64, offset: 7616)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1311, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1311, file: !6, line: 495, baseType: !263, size: 64, offset: 7744)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1311, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1311, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1311, file: !6, line: 500, baseType: !2342, size: 64, offset: 7872)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2344, line: 45, baseType: !2345)
!2344 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1311, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1311, file: !6, line: 504, baseType: !2348, size: 64, offset: 8000)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2351, line: 96, size: 192, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2352 = !{!2353, !2354, !2419, !2422}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2350, file: !2351, line: 97, baseType: !7, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2350, file: !2351, line: 98, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2351, line: 24, size: 3072, elements: !2357)
!2357 = !{!2358, !2360, !2361, !2362, !2363, !2377, !2378, !2379, !2380, !2392, !2404, !2405, !2416, !2417, !2418}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2356, file: !2351, line: 26, baseType: !2359, size: 128)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 128, elements: !2269)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2356, file: !2351, line: 27, baseType: !2359, size: 128, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2356, file: !2351, line: 28, baseType: !109, size: 32, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2356, file: !2351, line: 31, baseType: !290, size: 32, align: 512, offset: 512)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2356, file: !2351, line: 32, baseType: !2364, size: 960, offset: 576)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2365, line: 206, size: 960, elements: !2366)
!2365 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2366 = !{!2367, !2368, !2371, !2373, !2374, !2376}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2364, file: !2365, line: 207, baseType: !353, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2364, file: !2365, line: 208, baseType: !2369, size: 256, offset: 64)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2370, size: 256, elements: !339)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2364, file: !2365, line: 209, baseType: !2372, size: 256, offset: 320)
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 256, elements: !339)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2364, file: !2365, line: 213, baseType: !1186, size: 64, offset: 576)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2364, file: !2365, line: 215, baseType: !2375, size: 256, offset: 640)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 256, elements: !339)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2364, file: !2365, line: 216, baseType: !314, size: 8, offset: 896)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2356, file: !2351, line: 33, baseType: !266, size: 64, offset: 1536)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2356, file: !2351, line: 34, baseType: !266, size: 64, offset: 1600)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2356, file: !2351, line: 35, baseType: !910, size: 8, offset: 1664)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2356, file: !2351, line: 36, baseType: !2381, size: 320, offset: 1728)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2382, line: 11, size: 320, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2383 = !{!2384, !2385, !2386, !2391}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2381, file: !2382, line: 16, baseType: !334, size: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2381, file: !2382, line: 17, baseType: !266, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2381, file: !2382, line: 18, baseType: !2387, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{null, !2390}
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2381, file: !2382, line: 19, baseType: !395, size: 32, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2356, file: !2351, line: 37, baseType: !2393, size: 256, offset: 2048)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2394, line: 98, size: 256, elements: !2395)
!2394 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2395 = !{!2396, !2397, !2398}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2393, file: !2394, line: 99, baseType: !740, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2393, file: !2394, line: 100, baseType: !272, size: 128, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2393, file: !2394, line: 101, baseType: !2399, size: 64, offset: 192)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2394, line: 21, baseType: !2400)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !2403}
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2356, file: !2351, line: 38, baseType: !350, size: 128, align: 64, offset: 2304)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2356, file: !2351, line: 39, baseType: !2406, size: 64, offset: 2432)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2351, line: 49, size: 768, elements: !2408)
!2408 = !{!2409, !2410, !2411, !2412, !2413, !2414, !2415}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2407, file: !2351, line: 50, baseType: !290, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2407, file: !2351, line: 51, baseType: !2372, size: 256, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2407, file: !2351, line: 53, baseType: !2372, size: 256, offset: 320)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2407, file: !2351, line: 54, baseType: !266, size: 64, offset: 576)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2407, file: !2351, line: 55, baseType: !2406, size: 64, offset: 640)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2407, file: !2351, line: 56, baseType: !109, size: 32, offset: 704)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2407, file: !2351, line: 57, baseType: !109, size: 32, offset: 736)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2356, file: !2351, line: 40, baseType: !266, size: 64, offset: 2496)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2356, file: !2351, line: 42, baseType: !109, size: 32, offset: 2560)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2356, file: !2351, line: 43, baseType: !2349, size: 64, offset: 2624)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2350, file: !2351, line: 99, baseType: !2420, offset: 128)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2421, line: 211, elements: !720)
!2421 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2350, file: !2351, line: 100, baseType: !2423, size: 64, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2351, line: 63, size: 3008, elements: !2425)
!2425 = !{!2426, !2427, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2457}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2424, file: !2351, line: 64, baseType: !2406, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2424, file: !2351, line: 65, baseType: !2428, size: 192, offset: 64)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2406, size: 192, elements: !785)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2424, file: !2351, line: 67, baseType: !109, size: 32, offset: 256)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2424, file: !2351, line: 68, baseType: !747, size: 256, offset: 320)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2424, file: !2351, line: 69, baseType: !290, size: 32, offset: 576)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2424, file: !2351, line: 70, baseType: !747, size: 256, offset: 640)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2424, file: !2351, line: 71, baseType: !266, size: 64, offset: 896)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2424, file: !2351, line: 72, baseType: !266, size: 64, offset: 960)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2424, file: !2351, line: 73, baseType: !266, size: 64, offset: 1024)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2424, file: !2351, line: 74, baseType: !266, size: 64, offset: 1088)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2424, file: !2351, line: 75, baseType: !266, size: 64, offset: 1152)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2424, file: !2351, line: 76, baseType: !266, size: 64, offset: 1216)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2424, file: !2351, line: 77, baseType: !266, size: 64, offset: 1280)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2424, file: !2351, line: 78, baseType: !266, size: 64, offset: 1344)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2424, file: !2351, line: 79, baseType: !910, size: 8, offset: 1408)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2424, file: !2351, line: 80, baseType: !266, size: 64, offset: 1472)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2424, file: !2351, line: 81, baseType: !747, size: 256, offset: 1536)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2424, file: !2351, line: 82, baseType: !1532, size: 256, offset: 1792)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2424, file: !2351, line: 84, baseType: !284, size: 32, offset: 2048)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2424, file: !2351, line: 87, baseType: !266, size: 64, offset: 2112)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2424, file: !2351, line: 88, baseType: !266, size: 64, offset: 2176)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2424, file: !2351, line: 89, baseType: !2449, size: 704, offset: 2240)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2394, line: 111, size: 704, elements: !2450)
!2450 = !{!2451, !2452, !2453, !2456}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2449, file: !2394, line: 112, baseType: !2393, size: 256)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2449, file: !2394, line: 113, baseType: !2381, size: 320, offset: 256)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2449, file: !2394, line: 116, baseType: !2454, size: 64, offset: 576)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2394, line: 18, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2449, file: !2394, line: 117, baseType: !109, size: 32, offset: 640)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2424, file: !2351, line: 90, baseType: !2349, size: 64, offset: 2944)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1311, file: !6, line: 515, baseType: !2459, size: 64, offset: 8064)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2461, line: 117, size: 128, elements: !2462)
!2461 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2462 = !{!2463, !2464, !2465}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2460, file: !2461, line: 118, baseType: !842, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2460, file: !2461, line: 119, baseType: !842, size: 32, offset: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2460, file: !2461, line: 120, baseType: !1186, size: 64, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1311, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1311, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1311, file: !6, line: 520, baseType: !2469, size: 64, offset: 8192)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1311, file: !6, line: 523, baseType: !2471, size: 64, offset: 8256)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1311, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1311, file: !6, line: 525, baseType: !2476, size: 64, offset: 8384)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1311, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1311, file: !6, line: 533, baseType: !263, size: 64, offset: 8512)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1311, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1311, file: !6, line: 535, baseType: !2483, size: 64, offset: 8640)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1311, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1311, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1311, file: !6, line: 540, baseType: !2487, size: 64, offset: 8768)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2489, line: 32, size: 64, elements: !2490)
!2489 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2490 = !{!2491, !2492}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2488, file: !2489, line: 33, baseType: !842, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2488, file: !2489, line: 34, baseType: !842, size: 32, offset: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1311, file: !6, line: 563, baseType: !272, size: 128, offset: 8832)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1311, file: !6, line: 565, baseType: !272, size: 128, offset: 8960)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1311, file: !6, line: 568, baseType: !2496, size: 64, offset: 9088)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1311, file: !6, line: 570, baseType: !284, size: 32, offset: 9152)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1287, file: !14, line: 2382, baseType: !1286, size: 64, offset: 448)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1287, file: !14, line: 2383, baseType: !330, size: 64, offset: 512)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1287, file: !14, line: 2385, baseType: !2503, offset: 576)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2421, line: 206, elements: !720)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1287, file: !14, line: 2386, baseType: !2503, offset: 576)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1287, file: !14, line: 2387, baseType: !2503, offset: 576)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1287, file: !14, line: 2388, baseType: !2507, offset: 576)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2503, elements: !785)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1287, file: !14, line: 2390, baseType: !2503, offset: 576)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1287, file: !14, line: 2391, baseType: !2503, offset: 576)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1287, file: !14, line: 2392, baseType: !2503, offset: 576)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1287, file: !14, line: 2393, baseType: !2503, offset: 576)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1278, file: !14, line: 1197, baseType: !2513, size: 64, offset: 384)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2515)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !2516)
!2516 = !{!2517, !2521, !2525, !2526, !2530, !2534, !2538, !2539, !2540, !2544, !2548, !2552, !2553, !2554, !2560, !2564, !2565, !2569, !2570, !2571, !2572, !2576, !2580, !2627, !2642, !2643}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2515, file: !14, line: 2058, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!1071, !1277}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2515, file: !14, line: 2059, baseType: !2522, size: 64, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !1071}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2515, file: !14, line: 2060, baseType: !2522, size: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2515, file: !14, line: 2062, baseType: !2527, size: 64, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !1071, !109}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2515, file: !14, line: 2063, baseType: !2531, size: 64, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!109, !1071, !1744}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2515, file: !14, line: 2064, baseType: !2535, size: 64, offset: 320)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!109, !1071}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2515, file: !14, line: 2065, baseType: !2522, size: 64, offset: 384)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2515, file: !14, line: 2066, baseType: !1306, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2515, file: !14, line: 2067, baseType: !2541, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!109, !1277, !109}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2515, file: !14, line: 2068, baseType: !2545, size: 64, offset: 576)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!109, !1277, !13}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2515, file: !14, line: 2069, baseType: !2549, size: 64, offset: 640)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!109, !1277}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2515, file: !14, line: 2070, baseType: !2545, size: 64, offset: 704)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2515, file: !14, line: 2071, baseType: !2549, size: 64, offset: 768)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2515, file: !14, line: 2072, baseType: !2555, size: 64, offset: 832)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!109, !1036, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2515, file: !14, line: 2073, baseType: !2561, size: 64, offset: 896)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!109, !1277, !2279, !923}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2515, file: !14, line: 2074, baseType: !1306, size: 64, offset: 960)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2515, file: !14, line: 2076, baseType: !2566, size: 64, offset: 1024)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!109, !2028, !1036}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2515, file: !14, line: 2077, baseType: !2566, size: 64, offset: 1088)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2515, file: !14, line: 2078, baseType: !2566, size: 64, offset: 1152)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2515, file: !14, line: 2079, baseType: !2566, size: 64, offset: 1216)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2515, file: !14, line: 2081, baseType: !2573, size: 64, offset: 1280)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!1225, !1277, !109, !923, !1228, !759}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2515, file: !14, line: 2082, baseType: !2577, size: 64, offset: 1344)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!1225, !1277, !109, !913, !1228, !759}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2515, file: !14, line: 2083, baseType: !2581, size: 64, offset: 1408)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!2584, !1071}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !2587)
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2612, !2613, !2614}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2586, file: !69, line: 297, baseType: !334, size: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2586, file: !69, line: 298, baseType: !272, size: 128, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2586, file: !69, line: 299, baseType: !272, size: 128, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2586, file: !69, line: 300, baseType: !272, size: 128, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2586, file: !69, line: 301, baseType: !747, size: 256, offset: 512)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2586, file: !69, line: 302, baseType: !290, size: 32, offset: 768)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2586, file: !69, line: 303, baseType: !284, size: 32, offset: 800)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2586, file: !69, line: 304, baseType: !1277, size: 64, offset: 832)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2586, file: !69, line: 305, baseType: !2597, size: 64, offset: 896)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !2598)
!2598 = !{!2599, !2611}
!2599 = !DIDerivedType(tag: DW_TAG_member, scope: !2597, file: !69, line: 69, baseType: !2600, size: 32)
!2600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2597, file: !69, line: 69, size: 32, elements: !2601)
!2601 = !{!2602, !2603, !2604}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2600, file: !69, line: 70, baseType: !791, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2600, file: !69, line: 71, baseType: !809, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2600, file: !69, line: 72, baseType: !2605, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2606, line: 24, baseType: !2607)
!2606 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2606, line: 22, size: 32, elements: !2608)
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2607, file: !2606, line: 23, baseType: !2610, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2606, line: 20, baseType: !797)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2597, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2586, file: !69, line: 306, baseType: !759, size: 64, offset: 960)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2586, file: !69, line: 307, baseType: !266, size: 64, offset: 1024)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2586, file: !69, line: 308, baseType: !2615, size: 576, offset: 1088)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !2616)
!2616 = !{!2617, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2615, file: !69, line: 206, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !461)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2615, file: !69, line: 207, baseType: !2618, size: 64, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2615, file: !69, line: 208, baseType: !2618, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2615, file: !69, line: 209, baseType: !2618, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2615, file: !69, line: 210, baseType: !2618, size: 64, offset: 256)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2615, file: !69, line: 211, baseType: !2618, size: 64, offset: 320)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2615, file: !69, line: 212, baseType: !2618, size: 64, offset: 384)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2615, file: !69, line: 213, baseType: !866, size: 64, offset: 448)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2615, file: !69, line: 214, baseType: !866, size: 64, offset: 512)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2515, file: !14, line: 2085, baseType: !2628, size: 64, offset: 1472)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!1186, !1277, !2631}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2633, line: 15, size: 256, elements: !2634)
!2633 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2634 = !{!2635, !2636, !2637, !2638, !2639}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2632, file: !2633, line: 16, baseType: !264, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2632, file: !2633, line: 19, baseType: !109, size: 32, offset: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2632, file: !2633, line: 26, baseType: !266, size: 64, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2632, file: !2633, line: 33, baseType: !266, size: 64, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2632, file: !2633, line: 36, baseType: !2640, size: 64, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2515, file: !14, line: 2087, baseType: !2628, size: 64, offset: 1536)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2515, file: !14, line: 2089, baseType: !1306, size: 64, offset: 1600)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1278, file: !14, line: 1198, baseType: !2645, size: 64, offset: 448)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !2648)
!2648 = !{!2649, !2653, !2657, !2661, !2662, !2663, !2664, !2665, !2670, !2675, !2679}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2647, file: !69, line: 325, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!109, !2585}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2647, file: !69, line: 326, baseType: !2654, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!2585, !1277, !109}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2647, file: !69, line: 327, baseType: !2658, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{null, !2585}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2647, file: !69, line: 328, baseType: !2650, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2647, file: !69, line: 329, baseType: !2650, size: 64, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2647, file: !69, line: 330, baseType: !2650, size: 64, offset: 320)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2647, file: !69, line: 331, baseType: !2541, size: 64, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2647, file: !69, line: 334, baseType: !2666, size: 64, offset: 448)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!2669, !1071}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2647, file: !69, line: 335, baseType: !2671, size: 64, offset: 512)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!109, !1071, !2674}
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2647, file: !69, line: 337, baseType: !2676, size: 64, offset: 576)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!109, !1071, !2669}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2647, file: !69, line: 339, baseType: !2680, size: 64, offset: 640)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!109, !1277, !2683}
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1278, file: !14, line: 1199, baseType: !2685, size: 64, offset: 512)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2687)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !2688)
!2688 = !{!2689, !2693, !2694, !2698, !2699, !2700, !2715, !2738, !2742, !2743, !2766}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2687, file: !69, line: 431, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!109, !1277, !109, !109, !1194}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2687, file: !69, line: 432, baseType: !2541, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2687, file: !69, line: 433, baseType: !2695, size: 64, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!109, !1277, !7}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2687, file: !69, line: 434, baseType: !2695, size: 64, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2687, file: !69, line: 435, baseType: !2541, size: 64, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2687, file: !69, line: 436, baseType: !2701, size: 64, offset: 320)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!109, !1277, !109, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !2706)
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2705, file: !69, line: 418, baseType: !109, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2705, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2705, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2705, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2705, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2705, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2705, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2705, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2687, file: !69, line: 437, baseType: !2716, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!109, !1277, !2597, !2719}
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !2721)
!2721 = !{!2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2720, file: !69, line: 346, baseType: !109, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2720, file: !69, line: 347, baseType: !448, size: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2720, file: !69, line: 348, baseType: !448, size: 64, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2720, file: !69, line: 349, baseType: !448, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2720, file: !69, line: 350, baseType: !448, size: 64, offset: 256)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2720, file: !69, line: 351, baseType: !448, size: 64, offset: 320)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2720, file: !69, line: 352, baseType: !448, size: 64, offset: 384)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2720, file: !69, line: 353, baseType: !459, size: 64, offset: 448)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2720, file: !69, line: 355, baseType: !459, size: 64, offset: 512)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2720, file: !69, line: 356, baseType: !109, size: 32, offset: 576)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2720, file: !69, line: 357, baseType: !109, size: 32, offset: 608)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2720, file: !69, line: 358, baseType: !448, size: 64, offset: 640)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2720, file: !69, line: 359, baseType: !448, size: 64, offset: 704)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2720, file: !69, line: 360, baseType: !448, size: 64, offset: 768)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2720, file: !69, line: 361, baseType: !459, size: 64, offset: 832)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2720, file: !69, line: 362, baseType: !109, size: 32, offset: 896)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2687, file: !69, line: 438, baseType: !2739, size: 64, offset: 448)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!109, !1277, !2683, !2719}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2687, file: !69, line: 440, baseType: !2716, size: 64, offset: 512)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2687, file: !69, line: 441, baseType: !2744, size: 64, offset: 576)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!109, !1277, !2747}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !2749)
!2749 = !{!2750, !2751}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2748, file: !69, line: 412, baseType: !7, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2748, file: !69, line: 413, baseType: !2752, size: 1344, offset: 64)
!2752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2753, size: 1344, elements: !785)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !2754)
!2754 = !{!2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2765}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2753, file: !69, line: 398, baseType: !7, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2753, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2753, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2753, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2753, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2753, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2753, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2753, file: !69, line: 406, baseType: !450, size: 64, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2753, file: !69, line: 407, baseType: !2764, size: 64, offset: 320)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !265, line: 132, baseType: !448)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2753, file: !69, line: 408, baseType: !2764, size: 64, offset: 384)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2687, file: !69, line: 442, baseType: !2695, size: 64, offset: 640)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1278, file: !14, line: 1200, baseType: !2768, size: 64, offset: 576)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2770)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1278, file: !14, line: 1201, baseType: !266, size: 64, offset: 640)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1278, file: !14, line: 1202, baseType: !266, size: 64, offset: 704)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1278, file: !14, line: 1203, baseType: !266, size: 64, offset: 768)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1278, file: !14, line: 1204, baseType: !1036, size: 64, offset: 832)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1278, file: !14, line: 1205, baseType: !850, size: 320, offset: 896)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1278, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1278, file: !14, line: 1207, baseType: !284, size: 32, offset: 1248)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1278, file: !14, line: 1209, baseType: !263, size: 64, offset: 1280)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1278, file: !14, line: 1211, baseType: !2780, size: 64, offset: 1344)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2783)
!2783 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1278, file: !14, line: 1223, baseType: !2785, size: 64, offset: 1408)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1048, line: 34, size: 64, elements: !2786)
!2786 = !{!2787}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2785, file: !1048, line: 35, baseType: !1051, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1278, file: !14, line: 1224, baseType: !272, size: 128, offset: 1472)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1278, file: !14, line: 1225, baseType: !2790, size: 64, offset: 1600)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1278, file: !14, line: 1226, baseType: !2793, size: 64, offset: 1664)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1278, file: !14, line: 1227, baseType: !2796, size: 64, offset: 1728)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1278, file: !14, line: 1228, baseType: !2799, size: 64, offset: 1792)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1278, file: !14, line: 1229, baseType: !334, size: 128, offset: 1856)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1278, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1278, file: !14, line: 1231, baseType: !2804, size: 2496, offset: 2048)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !2805)
!2805 = !{!2806, !2807, !2808, !2810, !2842}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2804, file: !69, line: 522, baseType: !7, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2804, file: !69, line: 523, baseType: !850, size: 320, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2804, file: !69, line: 524, baseType: !2809, size: 192, offset: 384)
!2809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 192, elements: !785)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2804, file: !69, line: 525, baseType: !2811, size: 1728, offset: 576)
!2811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2812, size: 1728, elements: !785)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !2813)
!2813 = !{!2814, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2812, file: !69, line: 223, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !2817)
!2817 = !{!2818, !2819, !2832, !2833}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2816, file: !69, line: 446, baseType: !109, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2816, file: !69, line: 447, baseType: !2820, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2822)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !2823)
!2823 = !{!2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2822, file: !69, line: 313, baseType: !2541, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2822, file: !69, line: 314, baseType: !2541, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2822, file: !69, line: 315, baseType: !2541, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2822, file: !69, line: 316, baseType: !2541, size: 64, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2822, file: !69, line: 317, baseType: !2650, size: 64, offset: 256)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2822, file: !69, line: 318, baseType: !2650, size: 64, offset: 320)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2822, file: !69, line: 319, baseType: !2650, size: 64, offset: 384)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2822, file: !69, line: 320, baseType: !2680, size: 64, offset: 448)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2816, file: !69, line: 448, baseType: !1310, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2816, file: !69, line: 449, baseType: !2815, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2812, file: !69, line: 224, baseType: !109, size: 32, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2812, file: !69, line: 226, baseType: !272, size: 128, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2812, file: !69, line: 227, baseType: !266, size: 64, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2812, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2812, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2812, file: !69, line: 230, baseType: !2618, size: 64, offset: 384)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2812, file: !69, line: 231, baseType: !2618, size: 64, offset: 448)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2812, file: !69, line: 232, baseType: !263, size: 64, offset: 512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2804, file: !69, line: 526, baseType: !2843, size: 192, offset: 2304)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2820, size: 192, elements: !785)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1278, file: !14, line: 1233, baseType: !2845, size: 2368, offset: 4544)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2846)
!2846 = !{!2847, !2848, !2849}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2845, file: !14, line: 1185, baseType: !326, size: 16)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2845, file: !14, line: 1186, baseType: !326, size: 16, offset: 16)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2845, file: !14, line: 1187, baseType: !2850, size: 2304, offset: 64)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2851, size: 2304, elements: !785)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2852, line: 12, size: 768, elements: !2853)
!2852 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2853 = !{!2854, !2862, !2863, !2868, !2869}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2851, file: !2852, line: 13, baseType: !2855, size: 384)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2856, line: 17, size: 384, elements: !2857)
!2856 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2857 = !{!2858, !2859, !2860, !2861}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2855, file: !2856, line: 18, baseType: !109, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2855, file: !2856, line: 19, baseType: !109, size: 32, offset: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2855, file: !2856, line: 20, baseType: !343, size: 192, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2855, file: !2856, line: 22, baseType: !350, size: 128, align: 64, offset: 256)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2851, file: !2852, line: 14, baseType: !2231, size: 64, offset: 384)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2851, file: !2852, line: 15, baseType: !2864, size: 64, offset: 448)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2865, line: 16, size: 64, elements: !2866)
!2865 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2866 = !{!2867}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2864, file: !2865, line: 17, baseType: !384, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2851, file: !2852, line: 16, baseType: !343, size: 192, offset: 512)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2851, file: !2852, line: 17, baseType: !284, size: 32, offset: 704)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1278, file: !14, line: 1240, baseType: !263, size: 64, offset: 6912)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1278, file: !14, line: 1243, baseType: !395, size: 32, offset: 6976)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1278, file: !14, line: 1245, baseType: !866, size: 64, offset: 7040)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1278, file: !14, line: 1246, baseType: !866, size: 64, offset: 7104)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1278, file: !14, line: 1248, baseType: !396, size: 32, offset: 7168)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1278, file: !14, line: 1249, baseType: !2876, size: 64, offset: 7232)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1278, file: !14, line: 1252, baseType: !2879, size: 256, offset: 7296)
!2879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 256, elements: !2880)
!2880 = !{!2881}
!2881 = !DISubrange(count: 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1278, file: !14, line: 1253, baseType: !2883, size: 128, offset: 7552)
!2883 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2884, line: 21, baseType: !2885)
!2884 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2884, line: 19, size: 128, elements: !2886)
!2886 = !{!2887}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2885, file: !2884, line: 20, baseType: !2888, size: 128)
!2888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 128, elements: !2889)
!2889 = !{!2890}
!2890 = !DISubrange(count: 16)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1278, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1278, file: !14, line: 1261, baseType: !747, size: 256, offset: 7744)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1278, file: !14, line: 1267, baseType: !913, size: 64, offset: 8000)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1278, file: !14, line: 1269, baseType: !2895, size: 64, offset: 8064)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2897)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1038, line: 128, size: 1024, align: 512, elements: !2898)
!2898 = !{!2899, !2903, !2904, !2911, !2917, !2921, !2925, !2929, !2930, !2934, !2938, !2943, !2947}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2897, file: !1038, line: 129, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!109, !1036, !7}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2897, file: !1038, line: 130, baseType: !2900, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2897, file: !1038, line: 131, baseType: !2905, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!109, !2908, !2910}
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1037)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2897, file: !1038, line: 132, baseType: !2912, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!109, !2908, !7, !913, !2915}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2897, file: !1038, line: 134, baseType: !2918, size: 64, offset: 256)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!109, !2908}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2897, file: !1038, line: 135, baseType: !2922, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!109, !1036}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2897, file: !1038, line: 136, baseType: !2926, size: 64, offset: 384)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !1036}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2897, file: !1038, line: 137, baseType: !2926, size: 64, offset: 448)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2897, file: !1038, line: 138, baseType: !2931, size: 64, offset: 512)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{null, !1036, !1071}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2897, file: !1038, line: 139, baseType: !2935, size: 64, offset: 576)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!923, !1036, !923, !109}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2897, file: !1038, line: 140, baseType: !2939, size: 64, offset: 640)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!1031, !2942}
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2897, file: !1038, line: 141, baseType: !2944, size: 64, offset: 704)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!109, !1194, !910}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2897, file: !1038, line: 142, baseType: !2948, size: 64, offset: 768)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!1036, !1036, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1072)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1278, file: !14, line: 1271, baseType: !2954, size: 448, offset: 8128)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2633, line: 63, size: 448, elements: !2955)
!2955 = !{!2956, !2961, !2962, !2963, !2964, !2965, !2966}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2954, file: !2633, line: 64, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!266, !2960, !2631}
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2954, file: !2633, line: 66, baseType: !2957, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2954, file: !2633, line: 69, baseType: !1186, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2954, file: !2633, line: 70, baseType: !109, size: 32, offset: 192)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2954, file: !2633, line: 71, baseType: !7, size: 32, offset: 224)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2954, file: !2633, line: 74, baseType: !272, size: 128, offset: 256)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2954, file: !2633, line: 85, baseType: !2967, size: 64, offset: 384)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1278, file: !14, line: 1274, baseType: !740, size: 64, offset: 8576)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1278, file: !14, line: 1280, baseType: !740, size: 64, offset: 8640)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1278, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1278, file: !14, line: 1286, baseType: !1924, size: 32, offset: 8736)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1278, file: !14, line: 1289, baseType: !2454, size: 64, offset: 8768)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1278, file: !14, line: 1290, baseType: !330, size: 64, offset: 8832)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1278, file: !14, line: 1297, baseType: !996, size: 64, offset: 8896)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1278, file: !14, line: 1304, baseType: !2976, size: 64, offset: 8960)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2977, line: 49, size: 64, elements: !2978)
!2977 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2978 = !{!2979}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2976, file: !2977, line: 50, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2977, line: 41, size: 512, align: 512, elements: !2982)
!2982 = !{!2983, !2984, !2989}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2981, file: !2977, line: 43, baseType: !290, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2981, file: !2977, line: 45, baseType: !2985, size: 192, offset: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2977, line: 29, size: 192, elements: !2986)
!2986 = !{!2987, !2988}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2985, file: !2977, line: 30, baseType: !272, size: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2985, file: !2977, line: 32, baseType: !1186, size: 64, offset: 128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2981, file: !2977, line: 46, baseType: !1186, size: 64, offset: 256)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1278, file: !14, line: 1305, baseType: !2976, size: 64, offset: 9024)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1278, file: !14, line: 1306, baseType: !350, size: 128, align: 64, offset: 9088)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1278, file: !14, line: 1307, baseType: !2393, size: 256, offset: 9216)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1278, file: !14, line: 1309, baseType: !747, size: 256, offset: 9472)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1278, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1278, file: !14, line: 1317, baseType: !290, size: 32, align: 512, offset: 10240)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1278, file: !14, line: 1318, baseType: !272, size: 128, offset: 10304)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1278, file: !14, line: 1320, baseType: !290, size: 32, offset: 10432)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1278, file: !14, line: 1321, baseType: !272, size: 128, offset: 10496)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1072, file: !14, line: 656, baseType: !1427, size: 64, offset: 512)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1072, file: !14, line: 659, baseType: !263, size: 64, offset: 576)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1072, file: !14, line: 663, baseType: !266, size: 64, offset: 640)
!3002 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !14, line: 671, baseType: !3003, size: 32, offset: 704)
!3003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1072, file: !14, line: 671, size: 32, elements: !3004)
!3004 = !{!3005, !3007}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3003, file: !14, line: 672, baseType: !3006, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3003, file: !14, line: 673, baseType: !7, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1072, file: !14, line: 675, baseType: !1146, size: 32, offset: 736)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1072, file: !14, line: 676, baseType: !759, size: 64, offset: 768)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1072, file: !14, line: 677, baseType: !1182, size: 128, offset: 832)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1072, file: !14, line: 678, baseType: !1182, size: 128, offset: 960)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1072, file: !14, line: 679, baseType: !1182, size: 128, offset: 1088)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1072, file: !14, line: 680, baseType: !290, size: 32, offset: 1216)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1072, file: !14, line: 681, baseType: !326, size: 16, offset: 1248)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1072, file: !14, line: 682, baseType: !314, size: 8, offset: 1264)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1072, file: !14, line: 683, baseType: !314, size: 8, offset: 1272)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1072, file: !14, line: 684, baseType: !2764, size: 64, offset: 1280)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1072, file: !14, line: 691, baseType: !266, size: 64, offset: 1344)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1072, file: !14, line: 692, baseType: !850, size: 320, offset: 1408)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1072, file: !14, line: 694, baseType: !266, size: 64, offset: 1728)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1072, file: !14, line: 695, baseType: !266, size: 64, offset: 1792)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1072, file: !14, line: 697, baseType: !334, size: 128, offset: 1856)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1072, file: !14, line: 698, baseType: !272, size: 128, offset: 1984)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1072, file: !14, line: 707, baseType: !272, size: 128, offset: 2112)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1072, file: !14, line: 708, baseType: !272, size: 128, offset: 2240)
!3026 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !14, line: 709, baseType: !3027, size: 128, offset: 2368)
!3027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1072, file: !14, line: 709, size: 128, elements: !3028)
!3028 = !{!3029, !3030}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3027, file: !14, line: 710, baseType: !330, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3027, file: !14, line: 711, baseType: !350, size: 128, align: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1072, file: !14, line: 713, baseType: !742, size: 64, offset: 2496)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1072, file: !14, line: 714, baseType: !742, size: 64, offset: 2560)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1072, file: !14, line: 715, baseType: !284, size: 32, offset: 2624)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1072, file: !14, line: 716, baseType: !284, size: 32, offset: 2656)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1072, file: !14, line: 717, baseType: !284, size: 32, offset: 2688)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1072, file: !14, line: 719, baseType: !284, size: 32, offset: 2720)
!3037 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !14, line: 721, baseType: !3038, size: 64, offset: 2752)
!3038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1072, file: !14, line: 721, size: 64, elements: !3039)
!3039 = !{!3040, !3166}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3038, file: !14, line: 722, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3043)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3044)
!3044 = !{!3045, !3046, !3050, !3054, !3058, !3059, !3060, !3066, !3079, !3083, !3087, !3088, !3092, !3093, !3097, !3102, !3103, !3107, !3111, !3117, !3118, !3122, !3123, !3129, !3133, !3134, !3139, !3143, !3147, !3151, !3155, !3156, !3162}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3043, file: !14, line: 1915, baseType: !1310, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3043, file: !14, line: 1916, baseType: !3047, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!759, !727, !759, !109}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3043, file: !14, line: 1917, baseType: !3051, size: 64, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!1225, !727, !923, !1228, !2049}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3043, file: !14, line: 1918, baseType: !3055, size: 64, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!1225, !727, !913, !1228, !2049}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3043, file: !14, line: 1919, baseType: !1858, size: 64, offset: 256)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3043, file: !14, line: 1920, baseType: !1858, size: 64, offset: 320)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3043, file: !14, line: 1921, baseType: !3061, size: 64, offset: 384)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!109, !1861, !3064, !7}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3043, file: !14, line: 1923, baseType: !3067, size: 64, offset: 448)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!109, !727, !3070}
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3072)
!3072 = !{!3073, !3078}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3071, file: !14, line: 1859, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3075)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!910, !3070, !913, !109, !759, !448, !7}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3071, file: !14, line: 1860, baseType: !759, size: 64, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3043, file: !14, line: 1924, baseType: !3080, size: 64, offset: 512)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!2096, !727, !2098}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3043, file: !14, line: 1925, baseType: !3084, size: 64, offset: 576)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!1186, !727, !7, !266}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3043, file: !14, line: 1926, baseType: !3084, size: 64, offset: 640)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3043, file: !14, line: 1927, baseType: !3089, size: 64, offset: 704)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!109, !727, !1567}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3043, file: !14, line: 1928, baseType: !266, size: 64, offset: 768)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3043, file: !14, line: 1929, baseType: !3094, size: 64, offset: 832)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!109, !1071, !727}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3043, file: !14, line: 1930, baseType: !3098, size: 64, offset: 896)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!109, !727, !3101}
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !263)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3043, file: !14, line: 1931, baseType: !3094, size: 64, offset: 960)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3043, file: !14, line: 1932, baseType: !3104, size: 64, offset: 1024)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!109, !727, !759, !759, !109}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3043, file: !14, line: 1933, baseType: !3108, size: 64, offset: 1088)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!109, !109, !727, !109}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3043, file: !14, line: 1934, baseType: !3112, size: 64, offset: 1152)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!109, !727, !109, !3115}
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3043, file: !14, line: 1935, baseType: !724, size: 64, offset: 1216)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3043, file: !14, line: 1936, baseType: !3119, size: 64, offset: 1280)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!109, !109}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3043, file: !14, line: 1937, baseType: !3112, size: 64, offset: 1344)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3043, file: !14, line: 1938, baseType: !3124, size: 64, offset: 1408)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!1225, !3127, !727, !2049, !1228, !7}
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !386, line: 59, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3043, file: !14, line: 1939, baseType: !3130, size: 64, offset: 1472)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!1225, !727, !2049, !3127, !1228, !7}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3043, file: !14, line: 1940, baseType: !1914, size: 64, offset: 1536)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3043, file: !14, line: 1941, baseType: !3135, size: 64, offset: 1600)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!109, !727, !109, !3138, !1835}
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3043, file: !14, line: 1942, baseType: !3140, size: 64, offset: 1664)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!1186, !727, !109, !759, !759}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3043, file: !14, line: 1944, baseType: !3144, size: 64, offset: 1728)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !2028, !727}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3043, file: !14, line: 1948, baseType: !3148, size: 64, offset: 1792)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!1225, !727, !759, !727, !759, !1228, !7}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3043, file: !14, line: 1950, baseType: !3152, size: 64, offset: 1856)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!759, !727, !759, !727, !759, !759, !7}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3043, file: !14, line: 1953, baseType: !3104, size: 64, offset: 1920)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3043, file: !14, line: 1954, baseType: !3157, size: 64, offset: 1984)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!109, !3160, !7}
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3043, file: !14, line: 1955, baseType: !3163, size: 64, offset: 2048)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!109, !3160, !3064, !7}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3038, file: !14, line: 723, baseType: !2522, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1072, file: !14, line: 725, baseType: !3168, size: 64, offset: 2816)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1072, file: !14, line: 726, baseType: !1428, size: 1536, align: 64, offset: 2880)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1072, file: !14, line: 727, baseType: !272, size: 128, offset: 4416)
!3172 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !14, line: 728, baseType: !3173, size: 64, offset: 4544)
!3173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1072, file: !14, line: 728, size: 64, elements: !3174)
!3174 = !{!3175, !3176, !3179, !3180}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3173, file: !14, line: 729, baseType: !3127, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3173, file: !14, line: 730, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3173, file: !14, line: 731, baseType: !923, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3173, file: !14, line: 732, baseType: !7, size: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1072, file: !14, line: 735, baseType: !396, size: 32, offset: 4608)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1072, file: !14, line: 738, baseType: !396, size: 32, offset: 4640)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1072, file: !14, line: 739, baseType: !2876, size: 64, offset: 4672)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1072, file: !14, line: 750, baseType: !263, size: 64, offset: 4736)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1037, file: !1038, line: 91, baseType: !3186, size: 256, offset: 448)
!3186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 256, elements: !2880)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1037, file: !1038, line: 94, baseType: !3188, size: 64, offset: 704)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3189, line: 25, size: 64, elements: !3190)
!3189 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3190 = !{!3191}
!3191 = !DIDerivedType(tag: DW_TAG_member, scope: !3188, file: !3189, line: 26, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3188, file: !3189, line: 26, size: 64, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3192, file: !3189, line: 28, baseType: !449, size: 64, align: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, scope: !3192, file: !3189, line: 30, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3192, file: !3189, line: 30, size: 64, elements: !3197)
!3197 = !{!3198, !3199}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3196, file: !3189, line: 31, baseType: !290, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3196, file: !3189, line: 32, baseType: !109, size: 32, offset: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1037, file: !1038, line: 95, baseType: !2895, size: 64, offset: 768)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1037, file: !1038, line: 96, baseType: !1277, size: 64, offset: 832)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1037, file: !1038, line: 97, baseType: !266, size: 64, offset: 896)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1037, file: !1038, line: 98, baseType: !263, size: 64, offset: 960)
!3204 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !1038, line: 100, baseType: !3205, size: 128, offset: 1024)
!3205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !1038, line: 100, size: 128, elements: !3206)
!3206 = !{!3207, !3208}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3205, file: !1038, line: 101, baseType: !272, size: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3205, file: !1038, line: 102, baseType: !2107, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1037, file: !1038, line: 104, baseType: !272, size: 128, offset: 1152)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1037, file: !1038, line: 105, baseType: !272, size: 128, offset: 1280)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1037, file: !1038, line: 113, baseType: !3212, size: 128, offset: 1408)
!3212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !1038, line: 109, size: 128, elements: !3213)
!3213 = !{!3214, !3215, !3216}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3212, file: !1038, line: 110, baseType: !334, size: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3212, file: !1038, line: 111, baseType: !1047, size: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3212, file: !1038, line: 112, baseType: !350, size: 128, align: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1032, file: !1033, line: 72, baseType: !1277, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1032, file: !1033, line: 73, baseType: !109, size: 32, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1032, file: !1033, line: 74, baseType: !1111, size: 64, offset: 192)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1027, file: !1028, line: 10, baseType: !1036, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !728, file: !14, line: 1015, baseType: !1071, size: 64, offset: 1344)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !728, file: !14, line: 1016, baseType: !3041, size: 64, offset: 1408)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !728, file: !14, line: 1018, baseType: !448, size: 64, offset: 1472)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !728, file: !14, line: 1020, baseType: !263, size: 64, offset: 1536)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !728, file: !14, line: 1023, baseType: !263, size: 64, offset: 1600)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !728, file: !14, line: 1027, baseType: !3227, size: 64, offset: 1664)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !728, file: !14, line: 1029, baseType: !1427, size: 64, offset: 1728)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !728, file: !14, line: 1030, baseType: !1924, size: 32, offset: 1792)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !728, file: !14, line: 1031, baseType: !1924, size: 32, offset: 1824)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !703, file: !38, line: 756, baseType: !266, size: 64, offset: 704)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !703, file: !38, line: 757, baseType: !266, size: 64, offset: 768)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !703, file: !38, line: 760, baseType: !266, size: 64, offset: 832)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !703, file: !38, line: 761, baseType: !266, size: 64, offset: 896)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !703, file: !38, line: 763, baseType: !266, size: 64, offset: 960)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !703, file: !38, line: 764, baseType: !3237, size: 64, offset: 1024)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1582, line: 299, baseType: !3239)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1582, line: 299, size: 64, elements: !3240)
!3240 = !{!3241}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3239, file: !1582, line: 299, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1587, line: 18, baseType: !266)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !703, file: !38, line: 773, baseType: !284, size: 32, offset: 1088)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !703, file: !38, line: 785, baseType: !284, size: 32, offset: 1120)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !703, file: !38, line: 795, baseType: !3246, size: 64, offset: 1152)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !3248)
!3248 = !{!3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3247, file: !38, line: 727, baseType: !448, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3247, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !703, file: !38, line: 801, baseType: !266, size: 64, offset: 1216)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !703, file: !38, line: 804, baseType: !740, size: 64, offset: 1280)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !703, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !703, file: !38, line: 808, baseType: !290, size: 32, offset: 1376)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !703, file: !38, line: 823, baseType: !850, size: 320, offset: 1408)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !703, file: !38, line: 825, baseType: !272, size: 128, offset: 1728)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !703, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !703, file: !38, line: 849, baseType: !266, size: 64, offset: 1920)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !703, file: !38, line: 850, baseType: !266, size: 64, offset: 1984)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !703, file: !38, line: 852, baseType: !266, size: 64, offset: 2048)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !703, file: !38, line: 853, baseType: !266, size: 64, offset: 2112)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !703, file: !38, line: 854, baseType: !742, size: 64, offset: 2176)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !703, file: !38, line: 855, baseType: !266, size: 64, offset: 2240)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !703, file: !38, line: 856, baseType: !266, size: 64, offset: 2304)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !703, file: !38, line: 857, baseType: !266, size: 64, offset: 2368)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !703, file: !38, line: 858, baseType: !266, size: 64, offset: 2432)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !703, file: !38, line: 865, baseType: !573, size: 32, offset: 2496)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !703, file: !38, line: 867, baseType: !290, size: 32, offset: 2528)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !703, file: !38, line: 869, baseType: !266, size: 64, offset: 2560)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !703, file: !38, line: 869, baseType: !266, size: 64, offset: 2624)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !703, file: !38, line: 869, baseType: !266, size: 64, offset: 2688)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !703, file: !38, line: 869, baseType: !266, size: 64, offset: 2752)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !703, file: !38, line: 870, baseType: !266, size: 64, offset: 2816)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !703, file: !38, line: 870, baseType: !266, size: 64, offset: 2880)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !703, file: !38, line: 870, baseType: !266, size: 64, offset: 2944)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !703, file: !38, line: 871, baseType: !266, size: 64, offset: 3008)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !703, file: !38, line: 871, baseType: !266, size: 64, offset: 3072)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !703, file: !38, line: 871, baseType: !266, size: 64, offset: 3136)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !703, file: !38, line: 871, baseType: !266, size: 64, offset: 3200)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !703, file: !38, line: 873, baseType: !3281, size: 3328, offset: 3264)
!3281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 3328, elements: !3282)
!3282 = !{!3283}
!3283 = !DISubrange(count: 52)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !703, file: !38, line: 875, baseType: !3285, size: 1280, offset: 6592)
!3285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 1280, elements: !339)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !703, file: !38, line: 877, baseType: !3287, size: 64, offset: 7872)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !703, file: !38, line: 880, baseType: !3290, size: 1088, offset: 7936)
!3290 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3291, line: 72, baseType: !3292)
!3291 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3291, line: 23, size: 1088, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3297, !3298, !3301, !3302, !3303, !3304, !3329, !3330, !3331}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3292, file: !3291, line: 28, baseType: !448, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3292, file: !3291, line: 38, baseType: !742, size: 64, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3292, file: !3291, line: 40, baseType: !266, size: 64, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3292, file: !3291, line: 43, baseType: !850, size: 320, offset: 192)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3292, file: !3291, line: 44, baseType: !3299, size: 64, offset: 512)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3291, line: 44, flags: DIFlagFwdDecl)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3292, file: !3291, line: 48, baseType: !266, size: 64, offset: 576)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3292, file: !3291, line: 59, baseType: !747, size: 256, offset: 640)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3292, file: !3291, line: 60, baseType: !263, size: 64, offset: 896)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3292, file: !3291, line: 61, baseType: !3305, size: 64, offset: 960)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3307)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3308, line: 13, size: 1216, elements: !3309)
!3308 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3309 = !{!3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3307, file: !3308, line: 14, baseType: !263, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3307, file: !3308, line: 15, baseType: !266, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3307, file: !3308, line: 17, baseType: !266, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3307, file: !3308, line: 17, baseType: !266, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3307, file: !3308, line: 18, baseType: !266, size: 64, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3307, file: !3308, line: 18, baseType: !266, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3307, file: !3308, line: 19, baseType: !1963, size: 64, offset: 384)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3307, file: !3308, line: 21, baseType: !1186, size: 64, offset: 448)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3307, file: !3308, line: 23, baseType: !1186, size: 64, offset: 512)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3307, file: !3308, line: 24, baseType: !1186, size: 64, offset: 576)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3307, file: !3308, line: 25, baseType: !1186, size: 64, offset: 640)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3307, file: !3308, line: 26, baseType: !1186, size: 64, offset: 704)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3307, file: !3308, line: 27, baseType: !1186, size: 64, offset: 768)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3307, file: !3308, line: 28, baseType: !1186, size: 64, offset: 832)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3307, file: !3308, line: 29, baseType: !1186, size: 64, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3307, file: !3308, line: 30, baseType: !1186, size: 64, offset: 960)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3307, file: !3308, line: 31, baseType: !1186, size: 64, offset: 1024)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3307, file: !3308, line: 32, baseType: !1186, size: 64, offset: 1088)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3307, file: !3308, line: 33, baseType: !1186, size: 64, offset: 1152)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3292, file: !3291, line: 63, baseType: !284, size: 32, offset: 1024)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3292, file: !3291, line: 69, baseType: !324, size: 16, offset: 1056)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3292, file: !3291, line: 70, baseType: !2286, size: 16, offset: 1072)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !38, line: 882, baseType: !266, size: 64, offset: 9024)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !703, file: !38, line: 885, baseType: !290, size: 32, offset: 9088)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !703, file: !38, line: 886, baseType: !3335, size: 64, offset: 9152)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !703, file: !38, line: 901, baseType: !996, size: 64, offset: 9216)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !703, file: !38, line: 904, baseType: !727, size: 64, offset: 9280)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !703, file: !38, line: 906, baseType: !3340, size: 64, offset: 9344)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !703, file: !38, line: 930, baseType: !284, size: 32, offset: 9408)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !703, file: !38, line: 933, baseType: !284, size: 32, offset: 9440)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !703, file: !38, line: 935, baseType: !3345, size: 64, offset: 9472)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !54, line: 103, size: 64, elements: !3346)
!3346 = !{!3347}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3345, file: !54, line: 104, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !54, line: 101, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !703, file: !38, line: 940, baseType: !740, size: 64, offset: 9536)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !703, file: !38, line: 942, baseType: !2393, size: 256, offset: 9600)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !700, file: !38, line: 986, baseType: !3353, offset: 10240)
!3353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, elements: !1010)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !385, file: !386, line: 882, baseType: !699, size: 64, offset: 9792)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !385, file: !386, line: 884, baseType: !109, size: 32, offset: 9856)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !385, file: !386, line: 885, baseType: !109, size: 32, offset: 9888)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !385, file: !386, line: 886, baseType: !109, size: 32, offset: 9920)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !385, file: !386, line: 888, baseType: !109, size: 32, offset: 9952)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !385, file: !386, line: 890, baseType: !266, size: 64, offset: 9984)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !385, file: !386, line: 893, baseType: !7, size: 32, offset: 10048)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !385, file: !386, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !385, file: !386, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !385, file: !386, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !385, file: !386, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !385, file: !386, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !385, file: !386, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !385, file: !386, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !385, file: !386, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !385, file: !386, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !385, file: !386, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !385, file: !386, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !385, file: !386, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !385, file: !386, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !385, file: !386, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !385, file: !386, line: 969, baseType: !266, size: 64, offset: 10176)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !385, file: !386, line: 971, baseType: !3377, size: 448, offset: 10240)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !24, line: 25, size: 448, elements: !3378)
!3378 = !{!3379, !3380, !3385}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3377, file: !24, line: 26, baseType: !266, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3377, file: !24, line: 27, baseType: !3381, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!1186, !3384}
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, scope: !3377, file: !24, line: 28, baseType: !3386, size: 320, offset: 128)
!3386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3377, file: !24, line: 28, size: 320, elements: !3387)
!3387 = !{!3388, !3398, !3423}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3386, file: !24, line: 37, baseType: !3389, size: 320)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3386, file: !24, line: 30, size: 320, elements: !3390)
!3390 = !{!3391, !3393, !3394, !3395, !3396, !3397}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3389, file: !24, line: 31, baseType: !3392, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3389, file: !24, line: 32, baseType: !395, size: 32, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3389, file: !24, line: 33, baseType: !395, size: 32, offset: 96)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3389, file: !24, line: 34, baseType: !395, size: 32, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3389, file: !24, line: 35, baseType: !448, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3389, file: !24, line: 36, baseType: !3392, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3386, file: !24, line: 47, baseType: !3399, size: 192)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3386, file: !24, line: 39, size: 192, elements: !3400)
!3400 = !{!3401, !3402, !3403, !3422}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3399, file: !24, line: 40, baseType: !564, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3399, file: !24, line: 41, baseType: !23, size: 32, offset: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, scope: !3399, file: !24, line: 42, baseType: !3404, size: 64, offset: 64)
!3404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3399, file: !24, line: 42, size: 64, elements: !3405)
!3405 = !{!3406, !3414}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3404, file: !24, line: 43, baseType: !3407, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3409, line: 7, size: 128, elements: !3410)
!3409 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3410 = !{!3411, !3413}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3408, file: !3409, line: 8, baseType: !3412, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !566, line: 93, baseType: !461)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3408, file: !3409, line: 9, baseType: !461, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3404, file: !24, line: 44, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3417, line: 7, size: 64, elements: !3418)
!3417 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3418 = !{!3419, !3421}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3416, file: !3417, line: 8, baseType: !3420, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3417, line: 5, baseType: !842)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3416, file: !3417, line: 9, baseType: !842, size: 32, offset: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3399, file: !24, line: 46, baseType: !448, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3386, file: !24, line: 55, baseType: !3424, size: 256)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3386, file: !24, line: 49, size: 256, elements: !3425)
!3425 = !{!3426, !3434, !3435, !3436, !3437}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3424, file: !24, line: 50, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3429, line: 36, size: 64, elements: !3430)
!3429 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3430 = !{!3431, !3432, !3433}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3428, file: !3429, line: 37, baseType: !109, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3428, file: !3429, line: 38, baseType: !878, size: 16, offset: 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3428, file: !3429, line: 39, baseType: !878, size: 16, offset: 48)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3424, file: !24, line: 51, baseType: !109, size: 32, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3424, file: !24, line: 52, baseType: !109, size: 32, offset: 96)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3424, file: !24, line: 53, baseType: !266, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3424, file: !24, line: 54, baseType: !266, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !385, file: !386, line: 973, baseType: !3439, size: 32, offset: 10688)
!3439 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !265, line: 27, baseType: !3440)
!3440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !566, line: 28, baseType: !109)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !385, file: !386, line: 974, baseType: !3439, size: 32, offset: 10720)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !385, file: !386, line: 978, baseType: !266, size: 64, offset: 10752)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !385, file: !386, line: 987, baseType: !384, size: 64, offset: 10816)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !385, file: !386, line: 990, baseType: !384, size: 64, offset: 10880)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !385, file: !386, line: 995, baseType: !272, size: 128, offset: 10944)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !385, file: !386, line: 996, baseType: !272, size: 128, offset: 11072)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !385, file: !386, line: 997, baseType: !384, size: 64, offset: 11200)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !385, file: !386, line: 1005, baseType: !272, size: 128, offset: 11264)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !385, file: !386, line: 1006, baseType: !272, size: 128, offset: 11392)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !385, file: !386, line: 1009, baseType: !276, size: 64, offset: 11520)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !385, file: !386, line: 1010, baseType: !3452, size: 512, offset: 11584)
!3452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 512, elements: !339)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !385, file: !386, line: 1011, baseType: !272, size: 128, offset: 12096)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !385, file: !386, line: 1012, baseType: !272, size: 128, offset: 12224)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !385, file: !386, line: 1014, baseType: !2142, size: 64, offset: 12352)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !385, file: !386, line: 1017, baseType: !2279, size: 64, offset: 12416)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !385, file: !386, line: 1020, baseType: !2279, size: 64, offset: 12480)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !385, file: !386, line: 1023, baseType: !263, size: 64, offset: 12544)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !385, file: !386, line: 1025, baseType: !448, size: 64, offset: 12608)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !385, file: !386, line: 1026, baseType: !448, size: 64, offset: 12672)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !385, file: !386, line: 1031, baseType: !448, size: 64, offset: 12736)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !385, file: !386, line: 1032, baseType: !3463, size: 192, offset: 12800)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !386, line: 324, size: 192, elements: !3464)
!3464 = !{!3465, !3466, !3467}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3463, file: !386, line: 326, baseType: !448, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3463, file: !386, line: 327, baseType: !448, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3463, file: !386, line: 328, baseType: !541, size: 32, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !385, file: !386, line: 1041, baseType: !266, size: 64, offset: 12992)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !385, file: !386, line: 1042, baseType: !266, size: 64, offset: 13056)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !385, file: !386, line: 1045, baseType: !448, size: 64, offset: 13120)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !385, file: !386, line: 1048, baseType: !448, size: 64, offset: 13184)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !385, file: !386, line: 1051, baseType: !266, size: 64, offset: 13248)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !385, file: !386, line: 1052, baseType: !266, size: 64, offset: 13312)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !385, file: !386, line: 1055, baseType: !3475, size: 640, offset: 13376)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3476, line: 132, size: 640, elements: !3477)
!3476 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3477 = !{!3478, !3484, !3485}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3475, file: !3476, line: 133, baseType: !3479, size: 576)
!3479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3480, size: 576, elements: !785)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3476, line: 117, size: 192, elements: !3481)
!3481 = !{!3482, !3483}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3480, file: !3476, line: 118, baseType: !448, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3480, file: !3476, line: 119, baseType: !579, size: 128, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3475, file: !3476, line: 134, baseType: !7, size: 32, offset: 576)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3475, file: !3476, line: 135, baseType: !7, size: 32, offset: 608)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !385, file: !386, line: 1058, baseType: !3487, size: 448, offset: 14016)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3476, line: 144, size: 448, elements: !3488)
!3488 = !{!3489, !3490, !3491}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3487, file: !3476, line: 145, baseType: !350, size: 128, align: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3487, file: !3476, line: 146, baseType: !747, size: 256, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3487, file: !3476, line: 147, baseType: !7, size: 32, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !385, file: !386, line: 1064, baseType: !801, size: 64, offset: 14464)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !385, file: !386, line: 1067, baseType: !801, size: 64, offset: 14528)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !385, file: !386, line: 1070, baseType: !801, size: 64, offset: 14592)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !385, file: !386, line: 1074, baseType: !834, size: 64, offset: 14656)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !385, file: !386, line: 1084, baseType: !3497, size: 128, offset: 14720)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 128, elements: !2889)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !385, file: !386, line: 1086, baseType: !3499, size: 64, offset: 14848)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !386, line: 55, flags: DIFlagFwdDecl)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !385, file: !386, line: 1089, baseType: !3502, size: 64, offset: 14912)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3503, line: 12, size: 64, elements: !3504)
!3503 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3504 = !{!3505}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3502, file: !3503, line: 13, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3503, line: 8, flags: DIFlagFwdDecl)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !385, file: !386, line: 1090, baseType: !3509, size: 128, offset: 14976)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3510, line: 13, size: 128, elements: !3511)
!3510 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3511 = !{!3512}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3509, file: !3510, line: 14, baseType: !272, size: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !385, file: !386, line: 1097, baseType: !3514, size: 64, offset: 15104)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !386, line: 50, flags: DIFlagFwdDecl)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !385, file: !386, line: 1100, baseType: !3517, size: 64, offset: 15168)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !386, line: 1100, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !385, file: !386, line: 1103, baseType: !3520, size: 64, offset: 15232)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !386, line: 53, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !385, file: !386, line: 1107, baseType: !3523, size: 64, offset: 15296)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3525, line: 31, size: 576, elements: !3526)
!3525 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3526 = !{!3527, !3528, !3531, !3534, !3537, !3538, !3541, !3544, !3545}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3524, file: !3525, line: 32, baseType: !280, size: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3524, file: !3525, line: 33, baseType: !3529, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3525, line: 9, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3524, file: !3525, line: 34, baseType: !3532, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3525, line: 10, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3524, file: !3525, line: 35, baseType: !3535, size: 64, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3525, line: 8, flags: DIFlagFwdDecl)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3524, file: !3525, line: 36, baseType: !364, size: 64, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3524, file: !3525, line: 37, baseType: !3539, size: 64, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !836, line: 34, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3524, file: !3525, line: 38, baseType: !3542, size: 64, offset: 384)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3525, line: 38, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3524, file: !3525, line: 39, baseType: !3542, size: 64, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3524, file: !3525, line: 40, baseType: !3546, size: 64, offset: 512)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3525, line: 12, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !385, file: !386, line: 1110, baseType: !3549, size: 64, offset: 15360)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3551, line: 93, size: 8768, elements: !3552)
!3551 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3600, !3609, !3610, !3612, !3613, !3614, !3617, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3655, !3656, !3663, !3673, !3676, !3677, !3680, !3681, !3682, !3683, !3684, !3685}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3550, file: !3551, line: 94, baseType: !280, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3550, file: !3551, line: 95, baseType: !284, size: 32, offset: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3550, file: !3551, line: 96, baseType: !109, size: 32, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3550, file: !3551, line: 97, baseType: !109, size: 32, offset: 96)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3550, file: !3551, line: 98, baseType: !272, size: 128, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3550, file: !3551, line: 100, baseType: !343, size: 192, offset: 256)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3550, file: !3551, line: 103, baseType: !384, size: 64, offset: 448)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3550, file: !3551, line: 106, baseType: !3561, size: 192, offset: 512)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1001, line: 32, size: 192, elements: !3562)
!3562 = !{!3563, !3564}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3561, file: !1001, line: 33, baseType: !272, size: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3561, file: !1001, line: 34, baseType: !3565, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3566, line: 25, baseType: !3567)
!3566 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3566, line: 23, size: 64, elements: !3568)
!3568 = !{!3569}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3567, file: !3566, line: 24, baseType: !650, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3550, file: !3551, line: 109, baseType: !330, size: 64, offset: 704)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3550, file: !3551, line: 112, baseType: !109, size: 32, offset: 768)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3550, file: !3551, line: 114, baseType: !109, size: 32, offset: 800)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3550, file: !3551, line: 115, baseType: !384, size: 64, offset: 832)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3550, file: !3551, line: 118, baseType: !109, size: 32, offset: 896)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3550, file: !3551, line: 119, baseType: !7, size: 32, offset: 928)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3550, file: !3551, line: 121, baseType: !3577, size: 64, offset: 960)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3551, line: 80, size: 448, elements: !3579)
!3579 = !{!3580, !3581, !3587}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3578, file: !3551, line: 81, baseType: !284, size: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3578, file: !3551, line: 82, baseType: !3582, size: 128, offset: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3551, line: 75, size: 128, elements: !3583)
!3583 = !{!3584, !3585}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3582, file: !3551, line: 76, baseType: !384, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3582, file: !3551, line: 77, baseType: !3586, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3578, file: !3551, line: 83, baseType: !1532, size: 256, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3550, file: !3551, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3550, file: !3551, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3550, file: !3551, line: 138, baseType: !7, size: 32, offset: 1056)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3550, file: !3551, line: 139, baseType: !272, size: 128, offset: 1088)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3550, file: !3551, line: 142, baseType: !516, size: 512, offset: 1216)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3550, file: !3551, line: 143, baseType: !524, size: 64, offset: 1728)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3550, file: !3551, line: 150, baseType: !3595, size: 256, offset: 1792)
!3595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3596, size: 256, elements: !2269)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3551, line: 38, size: 128, elements: !3597)
!3597 = !{!3598, !3599}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3596, file: !3551, line: 39, baseType: !448, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3596, file: !3551, line: 40, baseType: !448, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3550, file: !3551, line: 156, baseType: !3601, size: 192, offset: 2048)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3551, line: 66, size: 192, elements: !3602)
!3602 = !{!3603}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3601, file: !3551, line: 67, baseType: !3604, size: 192)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3551, line: 47, size: 192, elements: !3605)
!3605 = !{!3606, !3607, !3608}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3604, file: !3551, line: 48, baseType: !742, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3604, file: !3551, line: 49, baseType: !742, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3604, file: !3551, line: 50, baseType: !742, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3550, file: !3551, line: 160, baseType: !3475, size: 640, offset: 2240)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3550, file: !3551, line: 163, baseType: !3611, size: 256, offset: 2880)
!3611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 256, elements: !339)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3550, file: !3551, line: 169, baseType: !276, size: 64, offset: 3136)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3550, file: !3551, line: 172, baseType: !109, size: 32, offset: 3200)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3550, file: !3551, line: 174, baseType: !3615, size: 64, offset: 3264)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3551, line: 174, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3550, file: !3551, line: 185, baseType: !3618, size: 64, offset: 3328)
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !569, line: 860, baseType: !3619)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !569, line: 853, size: 64, elements: !3620)
!3620 = !{!3621, !3622}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3619, file: !569, line: 858, baseType: !1042, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3619, file: !569, line: 859, baseType: !290, size: 32, offset: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3550, file: !3551, line: 186, baseType: !448, size: 64, offset: 3392)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3550, file: !3551, line: 186, baseType: !448, size: 64, offset: 3456)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3550, file: !3551, line: 186, baseType: !448, size: 64, offset: 3520)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3550, file: !3551, line: 186, baseType: !448, size: 64, offset: 3584)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3550, file: !3551, line: 187, baseType: !448, size: 64, offset: 3648)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3550, file: !3551, line: 188, baseType: !448, size: 64, offset: 3712)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3550, file: !3551, line: 189, baseType: !3463, size: 192, offset: 3776)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3550, file: !3551, line: 190, baseType: !266, size: 64, offset: 3968)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3550, file: !3551, line: 190, baseType: !266, size: 64, offset: 4032)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3550, file: !3551, line: 190, baseType: !266, size: 64, offset: 4096)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3550, file: !3551, line: 190, baseType: !266, size: 64, offset: 4160)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3550, file: !3551, line: 191, baseType: !266, size: 64, offset: 4224)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3550, file: !3551, line: 191, baseType: !266, size: 64, offset: 4288)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3550, file: !3551, line: 191, baseType: !266, size: 64, offset: 4352)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3550, file: !3551, line: 191, baseType: !266, size: 64, offset: 4416)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3550, file: !3551, line: 192, baseType: !266, size: 64, offset: 4480)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3550, file: !3551, line: 192, baseType: !266, size: 64, offset: 4544)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3550, file: !3551, line: 192, baseType: !266, size: 64, offset: 4608)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3550, file: !3551, line: 192, baseType: !266, size: 64, offset: 4672)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3550, file: !3551, line: 193, baseType: !266, size: 64, offset: 4736)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3550, file: !3551, line: 193, baseType: !266, size: 64, offset: 4800)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3550, file: !3551, line: 194, baseType: !3645, size: 448, offset: 4864)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3646, line: 12, size: 448, elements: !3647)
!3646 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653, !3654}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3645, file: !3646, line: 15, baseType: !448, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3645, file: !3646, line: 17, baseType: !448, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3645, file: !3646, line: 19, baseType: !448, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3645, file: !3646, line: 21, baseType: !448, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3645, file: !3646, line: 29, baseType: !448, size: 64, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3645, file: !3646, line: 35, baseType: !448, size: 64, offset: 320)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3645, file: !3646, line: 44, baseType: !448, size: 64, offset: 384)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3550, file: !3551, line: 202, baseType: !450, size: 64, offset: 5312)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3550, file: !3551, line: 213, baseType: !3657, size: 2048, offset: 5376)
!3657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3658, size: 2048, elements: !2889)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3659, line: 43, size: 128, elements: !3660)
!3659 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3660 = !{!3661, !3662}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3658, file: !3659, line: 44, baseType: !1230, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3658, file: !3659, line: 45, baseType: !1230, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3550, file: !3551, line: 216, baseType: !3664, size: 448, offset: 7424)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3551, line: 30, size: 448, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3669, !3670, !3671, !3672}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3664, file: !3551, line: 31, baseType: !109, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3664, file: !3551, line: 32, baseType: !1186, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3664, file: !3551, line: 33, baseType: !266, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3664, file: !3551, line: 34, baseType: !448, size: 64, offset: 192)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3664, file: !3551, line: 34, baseType: !448, size: 64, offset: 256)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3664, file: !3551, line: 35, baseType: !266, size: 64, offset: 320)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3664, file: !3551, line: 35, baseType: !266, size: 64, offset: 384)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3550, file: !3551, line: 219, baseType: !3674, size: 64, offset: 7872)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3551, line: 219, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3550, file: !3551, line: 222, baseType: !7, size: 32, offset: 7936)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3550, file: !3551, line: 223, baseType: !3678, size: 64, offset: 8000)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3551, line: 223, flags: DIFlagFwdDecl)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3550, file: !3551, line: 230, baseType: !910, size: 8, offset: 8064)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3550, file: !3551, line: 231, baseType: !878, size: 16, offset: 8080)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3550, file: !3551, line: 232, baseType: !878, size: 16, offset: 8096)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3550, file: !3551, line: 234, baseType: !699, size: 64, offset: 8128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3550, file: !3551, line: 237, baseType: !747, size: 256, offset: 8192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3550, file: !3551, line: 243, baseType: !850, size: 320, offset: 8448)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !385, file: !386, line: 1111, baseType: !3687, size: 64, offset: 15424)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3551, line: 20, size: 16640, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3693}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3688, file: !3551, line: 21, baseType: !290, size: 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3688, file: !3551, line: 22, baseType: !280, size: 32, offset: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3688, file: !3551, line: 23, baseType: !343, size: 192, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3688, file: !3551, line: 24, baseType: !3694, size: 16384, offset: 256)
!3694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3695, size: 16384, elements: !1366)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1001, line: 51, size: 256, elements: !3696)
!3696 = !{!3697}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3695, file: !1001, line: 52, baseType: !3698, size: 256)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1001, line: 37, size: 256, elements: !3699)
!3699 = !{!3700, !3707, !3708, !3712}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3698, file: !1001, line: 39, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3702, line: 83, baseType: !3703)
!3702 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3702, line: 82, baseType: !3705)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{null, !109}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3698, file: !1001, line: 40, baseType: !266, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3698, file: !1001, line: 46, baseType: !3709, size: 64, offset: 128)
!3709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3702, line: 86, baseType: !3710)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3702, line: 85, baseType: !2497)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3698, file: !1001, line: 48, baseType: !3565, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !385, file: !386, line: 1112, baseType: !3565, size: 64, offset: 15488)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !385, file: !386, line: 1113, baseType: !3565, size: 64, offset: 15552)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !385, file: !386, line: 1115, baseType: !3565, size: 64, offset: 15616)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !385, file: !386, line: 1116, baseType: !3561, size: 192, offset: 15680)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !385, file: !386, line: 1117, baseType: !266, size: 64, offset: 15872)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !385, file: !386, line: 1118, baseType: !1228, size: 64, offset: 15936)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !385, file: !386, line: 1119, baseType: !7, size: 32, offset: 16000)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !385, file: !386, line: 1121, baseType: !353, size: 64, offset: 16064)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !385, file: !386, line: 1125, baseType: !3722, size: 64, offset: 16128)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !386, line: 43, flags: DIFlagFwdDecl)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !385, file: !386, line: 1127, baseType: !791, size: 32, offset: 16192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !385, file: !386, line: 1128, baseType: !7, size: 32, offset: 16224)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !385, file: !386, line: 1130, baseType: !3727, size: 128, offset: 16256)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3728, line: 37, size: 128, elements: !3729)
!3728 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3729 = !{!3730, !3731, !3732}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3727, file: !3728, line: 38, baseType: !109, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3727, file: !3728, line: 39, baseType: !284, size: 32, offset: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3727, file: !3728, line: 40, baseType: !3733, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3728, line: 24, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !385, file: !386, line: 1131, baseType: !3736, size: 256, offset: 16384)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3737, line: 12, size: 256, elements: !3738)
!3737 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3738 = !{!3739, !3740, !3741, !3742}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3736, file: !3737, line: 13, baseType: !923, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3736, file: !3737, line: 14, baseType: !266, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3736, file: !3737, line: 15, baseType: !266, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3736, file: !3737, line: 16, baseType: !910, size: 8, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !385, file: !386, line: 1134, baseType: !448, size: 64, offset: 16640)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !385, file: !386, line: 1135, baseType: !448, size: 64, offset: 16704)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !385, file: !386, line: 1138, baseType: !290, size: 32, offset: 16768)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !385, file: !386, line: 1141, baseType: !541, size: 32, offset: 16800)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !385, file: !386, line: 1143, baseType: !3748, size: 64, offset: 16832)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !386, line: 735, size: 64, elements: !3749)
!3749 = !{!3750}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3748, file: !386, line: 736, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !385, file: !386, line: 1147, baseType: !582, size: 128, offset: 16896)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !385, file: !386, line: 1149, baseType: !384, size: 64, offset: 17024)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !385, file: !386, line: 1151, baseType: !3755, size: 64, offset: 17088)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !386, line: 1151, flags: DIFlagFwdDecl)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !385, file: !386, line: 1188, baseType: !263, size: 64, offset: 17152)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !385, file: !386, line: 1191, baseType: !3759, size: 64, offset: 17216)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !386, line: 44, flags: DIFlagFwdDecl)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !385, file: !386, line: 1194, baseType: !3762, size: 64, offset: 17280)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !386, line: 45, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !385, file: !386, line: 1197, baseType: !3765, size: 64, offset: 17344)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !386, line: 61, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !385, file: !386, line: 1199, baseType: !3768, size: 64, offset: 17408)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3770, line: 99, size: 128, elements: !3771)
!3770 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3771 = !{!3772, !3773, !3774}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3769, file: !3770, line: 100, baseType: !740, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3769, file: !3770, line: 101, baseType: !284, size: 32, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3769, file: !3770, line: 103, baseType: !326, size: 16, offset: 96)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !385, file: !386, line: 1202, baseType: !3776, size: 64, offset: 17472)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !386, line: 48, flags: DIFlagFwdDecl)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !385, file: !386, line: 1205, baseType: !266, size: 64, offset: 17536)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !385, file: !386, line: 1206, baseType: !3780, size: 64, offset: 17600)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1001, line: 14, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1001, line: 12, size: 384, elements: !3783)
!3783 = !{!3784}
!3784 = !DIDerivedType(tag: DW_TAG_member, scope: !3782, file: !1001, line: 13, baseType: !3785, size: 384)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3782, file: !1001, line: 13, size: 384, elements: !3786)
!3786 = !{!3787, !3788, !3789, !3790}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3785, file: !1001, line: 13, baseType: !109, size: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3785, file: !1001, line: 13, baseType: !109, size: 32, offset: 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3785, file: !1001, line: 13, baseType: !109, size: 32, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3785, file: !1001, line: 13, baseType: !3791, size: 256, offset: 128)
!3791 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3792, line: 37, size: 256, elements: !3793)
!3792 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3793 = !{!3794, !3799, !3812, !3818, !3827, !3854, !3859}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3791, file: !3792, line: 42, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 39, size: 64, elements: !3796)
!3796 = !{!3797, !3798}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3795, file: !3792, line: 40, baseType: !3440, size: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3795, file: !3792, line: 41, baseType: !797, size: 32, offset: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3791, file: !3792, line: 50, baseType: !3800, size: 192)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 45, size: 192, elements: !3801)
!3801 = !{!3802, !3804, !3805, !3811}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3800, file: !3792, line: 46, baseType: !3803, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !566, line: 95, baseType: !109)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3800, file: !3792, line: 47, baseType: !109, size: 32, offset: 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3800, file: !3792, line: 48, baseType: !3806, size: 64, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3792, line: 11, baseType: !3807)
!3807 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3792, line: 8, size: 64, elements: !3808)
!3808 = !{!3809, !3810}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3807, file: !3792, line: 9, baseType: !109, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3807, file: !3792, line: 10, baseType: !263, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3800, file: !3792, line: 49, baseType: !109, size: 32, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3791, file: !3792, line: 57, baseType: !3813, size: 128)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 53, size: 128, elements: !3814)
!3814 = !{!3815, !3816, !3817}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3813, file: !3792, line: 54, baseType: !3440, size: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3813, file: !3792, line: 55, baseType: !797, size: 32, offset: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3813, file: !3792, line: 56, baseType: !3806, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3791, file: !3792, line: 66, baseType: !3819, size: 256)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 60, size: 256, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3824, !3826}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3819, file: !3792, line: 61, baseType: !3440, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3819, file: !3792, line: 62, baseType: !797, size: 32, offset: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3819, file: !3792, line: 63, baseType: !109, size: 32, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3819, file: !3792, line: 64, baseType: !3825, size: 64, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !566, line: 94, baseType: !1227)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3819, file: !3792, line: 65, baseType: !3825, size: 64, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3791, file: !3792, line: 105, baseType: !3828, size: 256)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 69, size: 256, elements: !3829)
!3829 = !{!3830, !3831}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3828, file: !3792, line: 70, baseType: !263, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, scope: !3828, file: !3792, line: 79, baseType: !3832, size: 192, offset: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3828, file: !3792, line: 79, size: 192, elements: !3833)
!3833 = !{!3834, !3835, !3836, !3843, !3848}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3832, file: !3792, line: 81, baseType: !109, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3832, file: !3792, line: 86, baseType: !878, size: 16)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3832, file: !3792, line: 92, baseType: !3837, size: 192)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3832, file: !3792, line: 88, size: 192, elements: !3838)
!3838 = !{!3839, !3841, !3842}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3837, file: !3792, line: 89, baseType: !3840, size: 64)
!3840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 64, elements: !560)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3837, file: !3792, line: 90, baseType: !263, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3837, file: !3792, line: 91, baseType: !263, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3832, file: !3792, line: 97, baseType: !3844, size: 96)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3832, file: !3792, line: 94, size: 96, elements: !3845)
!3845 = !{!3846, !3847}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3844, file: !3792, line: 95, baseType: !3840, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3844, file: !3792, line: 96, baseType: !396, size: 32, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3832, file: !3792, line: 103, baseType: !3849, size: 128)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3832, file: !3792, line: 99, size: 128, elements: !3850)
!3850 = !{!3851, !3852, !3853}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3849, file: !3792, line: 100, baseType: !266, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3849, file: !3792, line: 101, baseType: !396, size: 32, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3849, file: !3792, line: 102, baseType: !396, size: 32, offset: 96)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3791, file: !3792, line: 111, baseType: !3855, size: 128)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 108, size: 128, elements: !3856)
!3856 = !{!3857, !3858}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3855, file: !3792, line: 109, baseType: !1186, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3855, file: !3792, line: 110, baseType: !109, size: 32, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3791, file: !3792, line: 118, baseType: !3860, size: 128)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 114, size: 128, elements: !3861)
!3861 = !{!3862, !3863, !3864}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3860, file: !3792, line: 115, baseType: !263, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3860, file: !3792, line: 116, baseType: !109, size: 32, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3860, file: !3792, line: 117, baseType: !7, size: 32, offset: 96)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !385, file: !386, line: 1208, baseType: !3645, size: 448, offset: 17664)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !385, file: !386, line: 1215, baseType: !448, size: 64, offset: 18112)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !385, file: !386, line: 1217, baseType: !448, size: 64, offset: 18176)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !385, file: !386, line: 1219, baseType: !448, size: 64, offset: 18240)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !385, file: !386, line: 1223, baseType: !3870, size: 64, offset: 18304)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3871, line: 99, baseType: !3872)
!3871 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3871, line: 99, size: 64, elements: !3873)
!3873 = !{!3874}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3872, file: !3871, line: 99, baseType: !650, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !385, file: !386, line: 1225, baseType: !1042, size: 32, offset: 18368)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !385, file: !386, line: 1226, baseType: !109, size: 32, offset: 18400)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !385, file: !386, line: 1227, baseType: !109, size: 32, offset: 18432)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !385, file: !386, line: 1231, baseType: !3879, size: 64, offset: 18496)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !386, line: 1231, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !385, file: !386, line: 1233, baseType: !272, size: 128, offset: 18560)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !385, file: !386, line: 1240, baseType: !3883, size: 64, offset: 18688)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !386, line: 62, flags: DIFlagFwdDecl)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !385, file: !386, line: 1242, baseType: !3886, size: 64, offset: 18752)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !386, line: 1242, flags: DIFlagFwdDecl)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !385, file: !386, line: 1244, baseType: !272, size: 128, offset: 18816)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !385, file: !386, line: 1245, baseType: !3890, size: 64, offset: 18944)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !386, line: 51, flags: DIFlagFwdDecl)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !385, file: !386, line: 1246, baseType: !747, size: 256, offset: 19008)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !385, file: !386, line: 1247, baseType: !7, size: 32, offset: 19264)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !385, file: !386, line: 1250, baseType: !3895, size: 64, offset: 19328)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !386, line: 57, flags: DIFlagFwdDecl)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !385, file: !386, line: 1251, baseType: !747, size: 256, offset: 19392)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !385, file: !386, line: 1252, baseType: !272, size: 128, offset: 19648)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !385, file: !386, line: 1259, baseType: !1660, size: 64, offset: 19776)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !385, file: !386, line: 1260, baseType: !878, size: 16, offset: 19840)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !385, file: !386, line: 1261, baseType: !878, size: 16, offset: 19856)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !385, file: !386, line: 1314, baseType: !3903, size: 64, offset: 19904)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3905, line: 62, size: 256, align: 256, elements: !3906)
!3905 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3904, file: !3905, line: 75, baseType: !396, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3904, file: !3905, line: 90, baseType: !396, size: 32, offset: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3904, file: !3905, line: 112, baseType: !449, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3904, file: !3905, line: 132, baseType: !396, size: 32, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3904, file: !3905, line: 140, baseType: !396, size: 32, offset: 160)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3904, file: !3905, line: 149, baseType: !396, size: 32, offset: 192)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3904, file: !3905, line: 154, baseType: !3914, offset: 224)
!3914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, elements: !1010)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !385, file: !386, line: 1315, baseType: !395, size: 32, offset: 19968)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !385, file: !386, line: 1316, baseType: !395, size: 32, offset: 20000)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !385, file: !386, line: 1321, baseType: !266, size: 64, offset: 20032)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !385, file: !386, line: 1325, baseType: !109, size: 32, offset: 20096)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !385, file: !386, line: 1326, baseType: !109, size: 32, offset: 20128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !385, file: !386, line: 1327, baseType: !109, size: 32, offset: 20160)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !385, file: !386, line: 1328, baseType: !109, size: 32, offset: 20192)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !385, file: !386, line: 1329, baseType: !350, size: 128, align: 64, offset: 20224)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !385, file: !386, line: 1332, baseType: !3924, size: 128, offset: 20352)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3925, line: 51, size: 128, elements: !3926)
!3925 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3926 = !{!3927, !3932, !3933}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3924, file: !3925, line: 60, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3929, line: 7, size: 64, elements: !3930)
!3929 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3930 = !{!3931}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3928, file: !3929, line: 12, baseType: !647, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3924, file: !3925, line: 63, baseType: !910, size: 8, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3924, file: !3925, line: 70, baseType: !910, size: 8, offset: 72)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !385, file: !386, line: 1335, baseType: !3127, size: 64, offset: 20480)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !385, file: !386, line: 1337, baseType: !3936, size: 128, offset: 20544)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3925, line: 39, size: 128, elements: !3937)
!3937 = !{!3938, !3939, !3940}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3936, file: !3925, line: 40, baseType: !1447, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3936, file: !3925, line: 42, baseType: !396, size: 32, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3936, file: !3925, line: 43, baseType: !396, size: 32, offset: 96)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !385, file: !386, line: 1340, baseType: !3942, size: 64, offset: 20672)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !386, line: 69, flags: DIFlagFwdDecl)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !385, file: !386, line: 1351, baseType: !109, size: 32, offset: 20736)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !385, file: !386, line: 1352, baseType: !109, size: 32, offset: 20768)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !385, file: !386, line: 1354, baseType: !266, size: 64, offset: 20800)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !385, file: !386, line: 1364, baseType: !448, size: 64, offset: 20864)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !385, file: !386, line: 1365, baseType: !448, size: 64, offset: 20928)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !385, file: !386, line: 1412, baseType: !266, size: 64, offset: 20992)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !385, file: !386, line: 1453, baseType: !3951, size: 64, offset: 21056)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !386, line: 1453, flags: DIFlagFwdDecl)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !385, file: !386, line: 1457, baseType: !3954, size: 64, offset: 21120)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !54, line: 61, size: 576, elements: !3956)
!3956 = !{!3957, !3958, !3977, !3980, !3981, !4014, !4024}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3955, file: !54, line: 62, baseType: !53, size: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, scope: !3955, file: !54, line: 64, baseType: !3959, size: 192, offset: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3955, file: !54, line: 64, size: 192, elements: !3960)
!3960 = !{!3961, !3972}
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !54, line: 65, baseType: !3962, size: 192)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3959, file: !54, line: 65, size: 192, elements: !3963)
!3963 = !{!3964, !3971}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3962, file: !54, line: 66, baseType: !3965, size: 128)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3966, line: 50, size: 128, elements: !3967)
!3966 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3967 = !{!3968, !3969, !3970}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3965, file: !3966, line: 52, baseType: !266, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3965, file: !3966, line: 54, baseType: !7, size: 32, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3965, file: !3966, line: 55, baseType: !7, size: 32, offset: 96)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3962, file: !54, line: 67, baseType: !266, size: 64, offset: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !54, line: 70, baseType: !3973, size: 192)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3959, file: !54, line: 70, size: 192, elements: !3974)
!3974 = !{!3975, !3976}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3973, file: !54, line: 71, baseType: !350, size: 128, align: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3973, file: !54, line: 72, baseType: !266, size: 64, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3955, file: !54, line: 76, baseType: !3978, size: 64, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !54, line: 76, flags: DIFlagFwdDecl)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3955, file: !54, line: 77, baseType: !266, size: 64, offset: 320)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3955, file: !54, line: 79, baseType: !3982, size: 64, offset: 384)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3966, line: 25, size: 256, elements: !3984)
!3984 = !{!3985, !3991, !3995}
!3985 = !DIDerivedType(tag: DW_TAG_member, scope: !3983, file: !3966, line: 26, baseType: !3986, size: 128)
!3986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3983, file: !3966, line: 26, size: 128, elements: !3987)
!3987 = !{!3988, !3990}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3986, file: !3966, line: 27, baseType: !3989, size: 128)
!3989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 128, elements: !2889)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3986, file: !3966, line: 28, baseType: !3989, size: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3983, file: !3966, line: 31, baseType: !3992, size: 64, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3994)
!3994 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3966, line: 23, flags: DIFlagFwdDecl)
!3995 = !DIDerivedType(tag: DW_TAG_member, scope: !3983, file: !3966, line: 33, baseType: !3996, size: 64, offset: 192)
!3996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3983, file: !3966, line: 33, size: 64, elements: !3997)
!3997 = !{!3998, !4004, !4009}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3996, file: !3966, line: 38, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3996, file: !3966, line: 34, size: 64, elements: !4000)
!4000 = !{!4001, !4002, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3999, file: !3966, line: 35, baseType: !842, size: 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3999, file: !3966, line: 36, baseType: !314, size: 8, offset: 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3999, file: !3966, line: 37, baseType: !314, size: 8, offset: 40)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3996, file: !3966, line: 42, baseType: !4005, size: 16)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3996, file: !3966, line: 39, size: 16, elements: !4006)
!4006 = !{!4007, !4008}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4005, file: !3966, line: 40, baseType: !314, size: 8)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4005, file: !3966, line: 41, baseType: !314, size: 8, offset: 8)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3996, file: !3966, line: 46, baseType: !4010, size: 16)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3996, file: !3966, line: 43, size: 16, elements: !4011)
!4011 = !{!4012, !4013}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4010, file: !3966, line: 44, baseType: !314, size: 8)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4010, file: !3966, line: 45, baseType: !314, size: 8, offset: 8)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3955, file: !54, line: 81, baseType: !4015, size: 64, offset: 448)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !54, line: 85, size: 384, elements: !4017)
!4017 = !{!4018, !4019, !4020, !4021, !4022, !4023}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4016, file: !54, line: 86, baseType: !3978, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4016, file: !54, line: 87, baseType: !266, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4016, file: !54, line: 88, baseType: !266, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4016, file: !54, line: 89, baseType: !266, size: 64, offset: 192)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4016, file: !54, line: 90, baseType: !910, size: 8, offset: 256)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4016, file: !54, line: 92, baseType: !4015, size: 64, offset: 320)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3955, file: !54, line: 82, baseType: !7, size: 32, offset: 512)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !385, file: !386, line: 1463, baseType: !4026, offset: 21184)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !386, line: 739, elements: !720)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !385, file: !386, line: 1470, baseType: !350, size: 128, align: 64, offset: 21184)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !385, file: !386, line: 1471, baseType: !280, size: 32, offset: 21312)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !385, file: !386, line: 1472, baseType: !109, size: 32, offset: 21344)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !385, file: !386, line: 1474, baseType: !384, size: 64, offset: 21376)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !385, file: !386, line: 1475, baseType: !2381, size: 320, offset: 21440)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !385, file: !386, line: 1478, baseType: !4033, size: 64, offset: 21760)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4035, line: 49, size: 512, elements: !4036)
!4035 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4036 = !{!4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4046}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4034, file: !4035, line: 50, baseType: !4033, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4034, file: !4035, line: 51, baseType: !263, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4034, file: !4035, line: 52, baseType: !266, size: 64, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4034, file: !4035, line: 53, baseType: !266, size: 64, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4034, file: !4035, line: 54, baseType: !1834, size: 64, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4034, file: !4035, line: 56, baseType: !7, size: 32, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4034, file: !4035, line: 58, baseType: !7, size: 32, offset: 352)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4034, file: !4035, line: 59, baseType: !4045, size: 64, offset: 384)
!4045 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !265, line: 159, baseType: !448)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4034, file: !4035, line: 60, baseType: !1963, size: 64, offset: 448)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !385, file: !386, line: 1482, baseType: !280, size: 32, offset: 21824)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !385, file: !386, line: 1489, baseType: !263, size: 64, offset: 21888)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !385, file: !386, line: 1504, baseType: !263, size: 64, offset: 21952)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !385, file: !386, line: 1505, baseType: !449, size: 64, offset: 22016)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !385, file: !386, line: 1506, baseType: !448, size: 64, offset: 22080)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !385, file: !386, line: 1507, baseType: !449, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !385, file: !386, line: 1508, baseType: !449, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !385, file: !386, line: 1509, baseType: !449, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !385, file: !386, line: 1510, baseType: !350, size: 128, align: 64, offset: 22208)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !385, file: !386, line: 1511, baseType: !109, size: 32, offset: 22336)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !385, file: !386, line: 1515, baseType: !4058, size: 64, offset: 22400)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !410, line: 56, size: 64, elements: !4059)
!4059 = !{!4060}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4058, file: !410, line: 57, baseType: !413, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !385, file: !386, line: 1518, baseType: !4058, size: 64, offset: 22464)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !385, file: !386, line: 1528, baseType: !350, size: 128, align: 64, offset: 22528)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !385, file: !386, line: 1552, baseType: !4064, size: 35328, offset: 23040)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4065, line: 430, size: 35328, elements: !4066)
!4065 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4066 = !{!4067, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4096, !4097, !4098, !4099, !4100, !4101, !4104, !4105, !4106, !4107}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4064, file: !4065, line: 432, baseType: !4068, size: 192)
!4068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4069, size: 192, elements: !785)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4070, line: 16, size: 64, elements: !4071)
!4070 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4071 = !{!4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4069, file: !4070, line: 17, baseType: !324, size: 16)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4069, file: !4070, line: 18, baseType: !324, size: 16, offset: 16)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4069, file: !4070, line: 19, baseType: !324, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4069, file: !4070, line: 19, baseType: !324, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4069, file: !4070, line: 19, baseType: !324, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4069, file: !4070, line: 19, baseType: !324, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4069, file: !4070, line: 19, baseType: !324, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4069, file: !4070, line: 20, baseType: !324, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4069, file: !4070, line: 20, baseType: !324, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4069, file: !4070, line: 20, baseType: !324, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4069, file: !4070, line: 20, baseType: !324, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4069, file: !4070, line: 20, baseType: !324, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4069, file: !4070, line: 20, baseType: !324, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4064, file: !4065, line: 436, baseType: !266, size: 64, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4064, file: !4065, line: 440, baseType: !326, size: 16, offset: 256)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4064, file: !4065, line: 441, baseType: !326, size: 16, offset: 272)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4064, file: !4065, line: 442, baseType: !326, size: 16, offset: 288)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4064, file: !4065, line: 443, baseType: !326, size: 16, offset: 304)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4064, file: !4065, line: 447, baseType: !266, size: 64, offset: 320)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4064, file: !4065, line: 448, baseType: !266, size: 64, offset: 384)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4064, file: !4065, line: 459, baseType: !4093, size: 256, offset: 448)
!4093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4094, size: 256, elements: !339)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4065, line: 428, flags: DIFlagFwdDecl)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4064, file: !4065, line: 461, baseType: !266, size: 64, offset: 704)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4064, file: !4065, line: 463, baseType: !266, size: 64, offset: 768)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4064, file: !4065, line: 465, baseType: !266, size: 64, offset: 832)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4064, file: !4065, line: 466, baseType: !266, size: 64, offset: 896)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4064, file: !4065, line: 467, baseType: !266, size: 64, offset: 960)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4064, file: !4065, line: 473, baseType: !4102, size: 64, offset: 1024)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4065, line: 10, flags: DIFlagFwdDecl)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4064, file: !4065, line: 480, baseType: !266, size: 64, offset: 1088)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4064, file: !4065, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4064, file: !4065, line: 491, baseType: !395, size: 32, offset: 1184)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4064, file: !4065, line: 501, baseType: !4108, size: 33792, offset: 1536)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4109, line: 448, size: 33792, elements: !4110)
!4109 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4110 = !{!4111, !4112, !4113, !4275, !4276, !4282, !4283}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4108, file: !4109, line: 461, baseType: !7, size: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4108, file: !4109, line: 468, baseType: !266, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4108, file: !4109, line: 476, baseType: !4114, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4109, line: 356, size: 33280, align: 512, elements: !4116)
!4116 = !{!4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4115, file: !4109, line: 358, baseType: !7, size: 32)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4115, file: !4109, line: 361, baseType: !7, size: 32, offset: 32)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4115, file: !4109, line: 364, baseType: !448, size: 64, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4115, file: !4109, line: 367, baseType: !448, size: 64, offset: 128)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4115, file: !4109, line: 370, baseType: !448, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4115, file: !4109, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4115, file: !4109, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4115, file: !4109, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4115, file: !4109, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4115, file: !4109, line: 397, baseType: !4127, size: 32768, offset: 512)
!4127 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4109, line: 348, size: 32768, elements: !4128)
!4128 = !{!4129, !4144, !4181, !4258, !4271}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4127, file: !4109, line: 349, baseType: !4130, size: 896)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4109, line: 12, size: 896, elements: !4131)
!4131 = !{!4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4143}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4130, file: !4109, line: 13, baseType: !395, size: 32)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4130, file: !4109, line: 14, baseType: !395, size: 32, offset: 32)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4130, file: !4109, line: 15, baseType: !395, size: 32, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4130, file: !4109, line: 16, baseType: !395, size: 32, offset: 96)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4130, file: !4109, line: 17, baseType: !395, size: 32, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4130, file: !4109, line: 18, baseType: !395, size: 32, offset: 160)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4130, file: !4109, line: 19, baseType: !395, size: 32, offset: 192)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4130, file: !4109, line: 22, baseType: !4140, size: 640, offset: 224)
!4140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 640, elements: !4141)
!4141 = !{!4142}
!4142 = !DISubrange(count: 20)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4130, file: !4109, line: 25, baseType: !395, size: 32, offset: 864)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4127, file: !4109, line: 350, baseType: !4145, size: 4096, align: 128)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4109, line: 34, size: 4096, align: 128, elements: !4146)
!4146 = !{!4147, !4148, !4149, !4150, !4151, !4166, !4167, !4168, !4170, !4172, !4176}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4145, file: !4109, line: 35, baseType: !324, size: 16)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4145, file: !4109, line: 36, baseType: !324, size: 16, offset: 16)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4145, file: !4109, line: 37, baseType: !324, size: 16, offset: 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4145, file: !4109, line: 38, baseType: !324, size: 16, offset: 48)
!4151 = !DIDerivedType(tag: DW_TAG_member, scope: !4145, file: !4109, line: 39, baseType: !4152, size: 128, offset: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4145, file: !4109, line: 39, size: 128, elements: !4153)
!4153 = !{!4154, !4159}
!4154 = !DIDerivedType(tag: DW_TAG_member, scope: !4152, file: !4109, line: 40, baseType: !4155, size: 128)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4152, file: !4109, line: 40, size: 128, elements: !4156)
!4156 = !{!4157, !4158}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4155, file: !4109, line: 41, baseType: !448, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4155, file: !4109, line: 42, baseType: !448, size: 64, offset: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, scope: !4152, file: !4109, line: 44, baseType: !4160, size: 128)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4152, file: !4109, line: 44, size: 128, elements: !4161)
!4161 = !{!4162, !4163, !4164, !4165}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4160, file: !4109, line: 45, baseType: !395, size: 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4160, file: !4109, line: 46, baseType: !395, size: 32, offset: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4160, file: !4109, line: 47, baseType: !395, size: 32, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4160, file: !4109, line: 48, baseType: !395, size: 32, offset: 96)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4145, file: !4109, line: 51, baseType: !395, size: 32, offset: 192)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4145, file: !4109, line: 52, baseType: !395, size: 32, offset: 224)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4145, file: !4109, line: 55, baseType: !4169, size: 1024, offset: 256)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 1024, elements: !2880)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4145, file: !4109, line: 58, baseType: !4171, size: 2048, offset: 1280)
!4171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 2048, elements: !1366)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4145, file: !4109, line: 60, baseType: !4173, size: 384, offset: 3328)
!4173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 384, elements: !4174)
!4174 = !{!4175}
!4175 = !DISubrange(count: 12)
!4176 = !DIDerivedType(tag: DW_TAG_member, scope: !4145, file: !4109, line: 62, baseType: !4177, size: 384, offset: 3712)
!4177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4145, file: !4109, line: 62, size: 384, elements: !4178)
!4178 = !{!4179, !4180}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4177, file: !4109, line: 63, baseType: !4173, size: 384)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4177, file: !4109, line: 64, baseType: !4173, size: 384)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4127, file: !4109, line: 351, baseType: !4182, size: 1088)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4109, line: 79, size: 1088, elements: !4183)
!4183 = !{!4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4257}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4182, file: !4109, line: 80, baseType: !395, size: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4182, file: !4109, line: 81, baseType: !395, size: 32, offset: 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4182, file: !4109, line: 82, baseType: !395, size: 32, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4182, file: !4109, line: 83, baseType: !395, size: 32, offset: 96)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4182, file: !4109, line: 84, baseType: !395, size: 32, offset: 128)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4182, file: !4109, line: 85, baseType: !395, size: 32, offset: 160)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4182, file: !4109, line: 86, baseType: !395, size: 32, offset: 192)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4182, file: !4109, line: 88, baseType: !4140, size: 640, offset: 224)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4182, file: !4109, line: 89, baseType: !314, size: 8, offset: 864)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4182, file: !4109, line: 90, baseType: !314, size: 8, offset: 872)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4182, file: !4109, line: 91, baseType: !314, size: 8, offset: 880)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4182, file: !4109, line: 92, baseType: !314, size: 8, offset: 888)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4182, file: !4109, line: 93, baseType: !314, size: 8, offset: 896)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4182, file: !4109, line: 94, baseType: !314, size: 8, offset: 904)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4182, file: !4109, line: 95, baseType: !4199, size: 64, offset: 960)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4201, line: 11, size: 128, elements: !4202)
!4201 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4202 = !{!4203, !4204}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4200, file: !4201, line: 12, baseType: !1186, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4200, file: !4201, line: 13, baseType: !4205, size: 64, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4207, line: 103, size: 1344, elements: !4208)
!4207 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4208 = !{!4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4237, !4238, !4239}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4206, file: !4207, line: 109, baseType: !266, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4206, file: !4207, line: 110, baseType: !266, size: 64, offset: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4206, file: !4207, line: 111, baseType: !266, size: 64, offset: 128)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4206, file: !4207, line: 112, baseType: !266, size: 64, offset: 192)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4206, file: !4207, line: 113, baseType: !266, size: 64, offset: 256)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4206, file: !4207, line: 114, baseType: !266, size: 64, offset: 320)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4206, file: !4207, line: 117, baseType: !266, size: 64, offset: 384)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4206, file: !4207, line: 118, baseType: !266, size: 64, offset: 448)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4206, file: !4207, line: 119, baseType: !266, size: 64, offset: 512)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4206, file: !4207, line: 120, baseType: !266, size: 64, offset: 576)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4206, file: !4207, line: 121, baseType: !266, size: 64, offset: 640)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4206, file: !4207, line: 122, baseType: !266, size: 64, offset: 704)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4206, file: !4207, line: 123, baseType: !266, size: 64, offset: 768)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4206, file: !4207, line: 124, baseType: !266, size: 64, offset: 832)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4206, file: !4207, line: 125, baseType: !266, size: 64, offset: 896)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4206, file: !4207, line: 139, baseType: !266, size: 64, offset: 960)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4206, file: !4207, line: 142, baseType: !266, size: 64, offset: 1024)
!4226 = !DIDerivedType(tag: DW_TAG_member, scope: !4206, file: !4207, line: 144, baseType: !4227, size: 64, offset: 1088)
!4227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4206, file: !4207, line: 144, size: 64, elements: !4228)
!4228 = !{!4229, !4230, !4231}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4227, file: !4207, line: 146, baseType: !324, size: 16)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4227, file: !4207, line: 148, baseType: !448, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4227, file: !4207, line: 150, baseType: !4232, size: 64)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4207, line: 59, size: 64, elements: !4233)
!4233 = !{!4234, !4235, !4236}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4232, file: !4207, line: 61, baseType: !448, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4232, file: !4207, line: 63, baseType: !448, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4232, file: !4207, line: 65, baseType: !448, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4206, file: !4207, line: 153, baseType: !266, size: 64, offset: 1152)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4206, file: !4207, line: 154, baseType: !266, size: 64, offset: 1216)
!4239 = !DIDerivedType(tag: DW_TAG_member, scope: !4206, file: !4207, line: 156, baseType: !4240, size: 64, offset: 1280)
!4240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4206, file: !4207, line: 156, size: 64, elements: !4241)
!4241 = !{!4242, !4243, !4244}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4240, file: !4207, line: 158, baseType: !324, size: 16)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4240, file: !4207, line: 160, baseType: !448, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4240, file: !4207, line: 162, baseType: !4245, size: 64)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4207, line: 69, size: 64, elements: !4246)
!4246 = !{!4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4245, file: !4207, line: 71, baseType: !448, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4245, file: !4207, line: 73, baseType: !448, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4245, file: !4207, line: 75, baseType: !448, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4245, file: !4207, line: 77, baseType: !448, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4245, file: !4207, line: 80, baseType: !448, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4245, file: !4207, line: 83, baseType: !448, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4245, file: !4207, line: 86, baseType: !448, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4245, file: !4207, line: 88, baseType: !448, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4245, file: !4207, line: 93, baseType: !448, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4245, file: !4207, line: 100, baseType: !448, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4182, file: !4109, line: 96, baseType: !395, size: 32, offset: 1024)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4127, file: !4109, line: 352, baseType: !4259, size: 4608, align: 512)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4109, line: 333, size: 4608, align: 512, elements: !4260)
!4260 = !{!4261, !4262, !4269}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4259, file: !4109, line: 334, baseType: !4145, size: 4096, align: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4259, file: !4109, line: 335, baseType: !4263, size: 512, offset: 4096)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4109, line: 312, size: 512, elements: !4264)
!4264 = !{!4265, !4266, !4267}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4263, file: !4109, line: 313, baseType: !448, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4263, file: !4109, line: 314, baseType: !448, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4263, file: !4109, line: 315, baseType: !4268, size: 384, offset: 128)
!4268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 384, elements: !897)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4259, file: !4109, line: 336, baseType: !4270, offset: 4608)
!4270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, elements: !1010)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4127, file: !4109, line: 353, baseType: !4272, size: 32768)
!4272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 32768, elements: !4273)
!4273 = !{!4274}
!4274 = !DISubrange(count: 4096)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4108, file: !4109, line: 484, baseType: !4114, size: 64, offset: 192)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4108, file: !4109, line: 491, baseType: !4277, size: 128, offset: 256)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4109, line: 404, size: 128, elements: !4278)
!4278 = !{!4279, !4280, !4281}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4277, file: !4109, line: 424, baseType: !448, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4277, file: !4109, line: 432, baseType: !7, size: 32, offset: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4277, file: !4109, line: 440, baseType: !7, size: 32, offset: 96)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4108, file: !4109, line: 498, baseType: !4277, size: 128, offset: 384)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4108, file: !4109, line: 508, baseType: !4115, size: 33280, align: 512, offset: 512)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !365, file: !366, line: 31, baseType: !4285, size: 64, offset: 448)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4287, line: 11, flags: DIFlagFwdDecl)
!4287 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !365, file: !366, line: 32, baseType: !7, size: 32, offset: 512)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !365, file: !366, line: 33, baseType: !364, size: 64, offset: 576)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !365, file: !366, line: 35, baseType: !4291, size: 64, offset: 640)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !366, line: 17, flags: DIFlagFwdDecl)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !365, file: !366, line: 37, baseType: !996, size: 64, offset: 704)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !365, file: !366, line: 38, baseType: !999, size: 64, offset: 768)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !365, file: !366, line: 39, baseType: !109, size: 32, offset: 832)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !365, file: !366, line: 40, baseType: !4297, size: 192, offset: 896)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !4298, line: 9, size: 192, elements: !4299)
!4298 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!4299 = !{!4300, !4301, !4305, !4306}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !4297, file: !4298, line: 10, baseType: !740, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4297, file: !4298, line: 11, baseType: !4302, size: 64, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4304)
!4304 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !4298, line: 7, flags: DIFlagFwdDecl)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !4297, file: !4298, line: 12, baseType: !7, size: 32, offset: 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4297, file: !4298, line: 13, baseType: !280, size: 32, offset: 160)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !365, file: !366, line: 42, baseType: !109, size: 32, offset: 1088)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4310)
!4310 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !276)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4314, line: 65, size: 1280, elements: !4315)
!4314 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4315 = !{!4316, !4317, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4313, file: !4314, line: 66, baseType: !2127, size: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4313, file: !4314, line: 67, baseType: !4318, size: 64, offset: 64)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !202, line: 50, size: 12736, elements: !4320)
!4320 = !{!4321, !4322, !4323, !4774, !4780, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5326, !5327, !5328, !5331, !5334, !5335, !5338, !5339}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !4319, file: !202, line: 52, baseType: !109, size: 32)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4319, file: !202, line: 55, baseType: !2127, size: 32, offset: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4319, file: !202, line: 58, baseType: !4324, size: 64, offset: 64)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4326)
!4326 = !{!4327, !4328, !4329, !4332, !4333, !4386, !4456, !4457, !4458, !4459, !4460, !4467, !4559, !4572, !4582, !4586, !4588, !4589, !4590, !4594, !4601, !4602, !4605, !4608, !4612, !4716, !4717, !4718, !4719, !4720, !4721, !4751, !4752, !4753, !4756, !4759, !4768, !4769, !4770, !4771, !4772, !4773}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4325, file: !94, line: 706, baseType: !1323, size: 512)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4325, file: !94, line: 707, baseType: !4324, size: 64, offset: 512)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4325, file: !94, line: 709, baseType: !4330, size: 64, offset: 576)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4325, file: !94, line: 711, baseType: !913, size: 64, offset: 640)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4325, file: !94, line: 712, baseType: !4334, size: 64, offset: 704)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4336)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4337)
!4337 = !{!4338, !4339, !4340, !4346, !4351, !4355}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4336, file: !94, line: 90, baseType: !913, size: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4336, file: !94, line: 91, baseType: !1403, size: 64, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4336, file: !94, line: 92, baseType: !4341, size: 64, offset: 128)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!109, !4344, !1359}
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4325)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4336, file: !94, line: 93, baseType: !4347, size: 64, offset: 192)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!923, !4344, !4350, !1980, !1981}
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4336, file: !94, line: 95, baseType: !4352, size: 64, offset: 256)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{null, !4324}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4336, file: !94, line: 97, baseType: !4356, size: 64, offset: 320)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4358)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4359)
!4359 = !{!4360, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4358, file: !101, line: 287, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!109, !4324}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4358, file: !101, line: 288, baseType: !4352, size: 64, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4358, file: !101, line: 289, baseType: !4361, size: 64, offset: 128)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4358, file: !101, line: 290, baseType: !4361, size: 64, offset: 192)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4358, file: !101, line: 291, baseType: !4361, size: 64, offset: 256)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4358, file: !101, line: 292, baseType: !4361, size: 64, offset: 320)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4358, file: !101, line: 293, baseType: !4361, size: 64, offset: 384)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4358, file: !101, line: 294, baseType: !4361, size: 64, offset: 448)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4358, file: !101, line: 295, baseType: !4361, size: 64, offset: 512)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4358, file: !101, line: 296, baseType: !4361, size: 64, offset: 576)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4358, file: !101, line: 297, baseType: !4361, size: 64, offset: 640)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4358, file: !101, line: 298, baseType: !4361, size: 64, offset: 704)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4358, file: !101, line: 299, baseType: !4361, size: 64, offset: 768)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4358, file: !101, line: 300, baseType: !4361, size: 64, offset: 832)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4358, file: !101, line: 301, baseType: !4361, size: 64, offset: 896)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4358, file: !101, line: 302, baseType: !4361, size: 64, offset: 960)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4358, file: !101, line: 303, baseType: !4361, size: 64, offset: 1024)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4358, file: !101, line: 304, baseType: !4361, size: 64, offset: 1088)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4358, file: !101, line: 305, baseType: !4361, size: 64, offset: 1152)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4358, file: !101, line: 306, baseType: !4361, size: 64, offset: 1216)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4358, file: !101, line: 307, baseType: !4361, size: 64, offset: 1280)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4358, file: !101, line: 308, baseType: !4361, size: 64, offset: 1344)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4358, file: !101, line: 309, baseType: !4361, size: 64, offset: 1408)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4325, file: !94, line: 714, baseType: !4387, size: 64, offset: 768)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4389)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4390, line: 80, size: 1344, elements: !4391)
!4390 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4391 = !{!4392, !4393, !4394, !4395, !4396, !4397, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4455}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4389, file: !4390, line: 81, baseType: !913, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4389, file: !4390, line: 82, baseType: !913, size: 64, offset: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4389, file: !4390, line: 83, baseType: !1403, size: 64, offset: 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4389, file: !4390, line: 84, baseType: !1403, size: 64, offset: 192)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4389, file: !4390, line: 85, baseType: !1403, size: 64, offset: 256)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4389, file: !4390, line: 87, baseType: !4398, size: 64, offset: 320)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!109, !4324, !4401}
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4403)
!4403 = !{!4404, !4405, !4406, !4407, !4408, !4409, !4410, !4414, !4418, !4419, !4420, !4421, !4422, !4430, !4431, !4432, !4433, !4434, !4435}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4402, file: !88, line: 97, baseType: !913, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4402, file: !88, line: 98, baseType: !4387, size: 64, offset: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4402, file: !88, line: 100, baseType: !1310, size: 64, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4402, file: !88, line: 101, baseType: !913, size: 64, offset: 192)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4402, file: !88, line: 103, baseType: !910, size: 8, offset: 256)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4402, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4402, file: !88, line: 106, baseType: !4411, size: 64, offset: 320)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4413)
!4413 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4402, file: !88, line: 107, baseType: !4415, size: 64, offset: 384)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4417)
!4417 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4402, file: !88, line: 109, baseType: !4361, size: 64, offset: 448)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4402, file: !88, line: 110, baseType: !4352, size: 64, offset: 512)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4402, file: !88, line: 111, baseType: !4361, size: 64, offset: 576)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4402, file: !88, line: 112, baseType: !4352, size: 64, offset: 640)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4402, file: !88, line: 113, baseType: !4423, size: 64, offset: 704)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!109, !4324, !4426}
!4426 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4427)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4428)
!4428 = !{!4429}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4427, file: !101, line: 59, baseType: !109, size: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4402, file: !88, line: 114, baseType: !4361, size: 64, offset: 768)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4402, file: !88, line: 115, baseType: !1403, size: 64, offset: 832)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4402, file: !88, line: 116, baseType: !1403, size: 64, offset: 896)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4402, file: !88, line: 118, baseType: !4356, size: 64, offset: 960)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4402, file: !88, line: 119, baseType: !4352, size: 64, offset: 1024)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4402, file: !88, line: 121, baseType: !4436, size: 64, offset: 1088)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4389, file: !4390, line: 88, baseType: !4341, size: 64, offset: 384)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4389, file: !4390, line: 89, baseType: !4361, size: 64, offset: 448)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4389, file: !4390, line: 90, baseType: !4352, size: 64, offset: 512)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4389, file: !4390, line: 91, baseType: !4352, size: 64, offset: 576)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4389, file: !4390, line: 92, baseType: !4352, size: 64, offset: 640)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4389, file: !4390, line: 94, baseType: !4361, size: 64, offset: 704)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4389, file: !4390, line: 95, baseType: !4361, size: 64, offset: 768)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4389, file: !4390, line: 97, baseType: !4423, size: 64, offset: 832)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4389, file: !4390, line: 98, baseType: !4361, size: 64, offset: 896)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4389, file: !4390, line: 100, baseType: !4361, size: 64, offset: 960)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4389, file: !4390, line: 102, baseType: !4361, size: 64, offset: 1024)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4389, file: !4390, line: 103, baseType: !4352, size: 64, offset: 1088)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4389, file: !4390, line: 105, baseType: !4356, size: 64, offset: 1152)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4389, file: !4390, line: 107, baseType: !4452, size: 64, offset: 1216)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4454)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4390, line: 107, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4389, file: !4390, line: 109, baseType: !910, size: 8, offset: 1280)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4325, file: !94, line: 715, baseType: !4401, size: 64, offset: 832)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4325, file: !94, line: 717, baseType: !263, size: 64, offset: 896)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4325, file: !94, line: 719, baseType: !263, size: 64, offset: 960)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4325, file: !94, line: 721, baseType: !747, size: 256, offset: 1024)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4325, file: !94, line: 725, baseType: !4461, size: 448, offset: 1280)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4462)
!4462 = !{!4463, !4464, !4465, !4466}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4461, file: !94, line: 518, baseType: !272, size: 128)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4461, file: !94, line: 519, baseType: !272, size: 128, offset: 128)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4461, file: !94, line: 520, baseType: !272, size: 128, offset: 256)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4461, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4325, file: !94, line: 726, baseType: !4468, size: 2496, offset: 1728)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4469)
!4469 = !{!4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4552, !4556}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4468, file: !101, line: 664, baseType: !4426, size: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4468, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4468, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4468, file: !101, line: 667, baseType: !910, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4468, file: !101, line: 668, baseType: !910, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4468, file: !101, line: 669, baseType: !910, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4468, file: !101, line: 670, baseType: !910, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4468, file: !101, line: 671, baseType: !910, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4468, file: !101, line: 672, baseType: !910, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4468, file: !101, line: 673, baseType: !910, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4468, file: !101, line: 674, baseType: !910, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4468, file: !101, line: 675, baseType: !395, size: 32, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4468, file: !101, line: 676, baseType: !290, size: 32, offset: 96)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4468, file: !101, line: 678, baseType: !272, size: 128, offset: 128)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4468, file: !101, line: 679, baseType: !1532, size: 256, offset: 256)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4468, file: !101, line: 680, baseType: !4486, size: 64, offset: 512)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4488, line: 43, size: 1536, elements: !4489)
!4488 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4489 = !{!4490, !4491, !4492, !4493, !4494, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4487, file: !4488, line: 44, baseType: !913, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4487, file: !4488, line: 45, baseType: !109, size: 32, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4487, file: !4488, line: 46, baseType: !272, size: 128, offset: 128)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4487, file: !4488, line: 47, baseType: !290, size: 32, offset: 256)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4487, file: !4488, line: 48, baseType: !4495, size: 64, offset: 320)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4487, file: !4488, line: 49, baseType: !2381, size: 320, offset: 384)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4487, file: !4488, line: 50, baseType: !266, size: 64, offset: 704)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4487, file: !4488, line: 51, baseType: !524, size: 64, offset: 768)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4487, file: !4488, line: 52, baseType: !524, size: 64, offset: 832)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4487, file: !4488, line: 53, baseType: !524, size: 64, offset: 896)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4487, file: !4488, line: 54, baseType: !524, size: 64, offset: 960)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4487, file: !4488, line: 55, baseType: !524, size: 64, offset: 1024)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4487, file: !4488, line: 56, baseType: !266, size: 64, offset: 1088)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4487, file: !4488, line: 57, baseType: !266, size: 64, offset: 1152)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4487, file: !4488, line: 58, baseType: !266, size: 64, offset: 1216)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4487, file: !4488, line: 59, baseType: !266, size: 64, offset: 1280)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4487, file: !4488, line: 60, baseType: !266, size: 64, offset: 1344)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4487, file: !4488, line: 61, baseType: !4324, size: 64, offset: 1408)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4487, file: !4488, line: 62, baseType: !910, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4487, file: !4488, line: 63, baseType: !910, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4468, file: !101, line: 681, baseType: !910, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4468, file: !101, line: 682, baseType: !910, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4468, file: !101, line: 683, baseType: !910, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4468, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4468, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4468, file: !101, line: 690, baseType: !516, size: 512, offset: 640)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4468, file: !101, line: 691, baseType: !448, size: 64, offset: 1152)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4468, file: !101, line: 692, baseType: !2393, size: 256, offset: 1216)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4468, file: !101, line: 693, baseType: !343, size: 192, offset: 1472)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4468, file: !101, line: 694, baseType: !4495, size: 64, offset: 1664)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4468, file: !101, line: 695, baseType: !284, size: 32, offset: 1728)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4468, file: !101, line: 696, baseType: !284, size: 32, offset: 1760)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4468, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4468, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4468, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4468, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4468, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4468, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4468, file: !101, line: 703, baseType: !910, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4468, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4468, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4468, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4468, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4468, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4468, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4468, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4468, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4468, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4468, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4468, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4468, file: !101, line: 715, baseType: !448, size: 64, offset: 2048)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4468, file: !101, line: 716, baseType: !448, size: 64, offset: 2112)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4468, file: !101, line: 717, baseType: !448, size: 64, offset: 2176)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4468, file: !101, line: 718, baseType: !448, size: 64, offset: 2240)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4468, file: !101, line: 720, baseType: !4547, size: 64, offset: 2304)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4549)
!4549 = !{!4550, !4551}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4548, file: !101, line: 633, baseType: !290, size: 32)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4548, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4468, file: !101, line: 721, baseType: !4553, size: 64, offset: 2368)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{null, !4324, !842}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4468, file: !101, line: 722, baseType: !4557, size: 64, offset: 2432)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4325, file: !94, line: 727, baseType: !4560, size: 64, offset: 4224)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4562)
!4562 = !{!4563, !4564, !4565, !4569, !4570, !4571}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4561, file: !101, line: 743, baseType: !4358, size: 1472)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4561, file: !101, line: 744, baseType: !4361, size: 64, offset: 1472)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4561, file: !101, line: 745, baseType: !4566, size: 64, offset: 1536)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{null, !4324, !910}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4561, file: !101, line: 746, baseType: !4361, size: 64, offset: 1600)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4561, file: !101, line: 747, baseType: !4352, size: 64, offset: 1664)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4561, file: !101, line: 748, baseType: !4352, size: 64, offset: 1728)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4325, file: !94, line: 736, baseType: !4573, size: 128, offset: 4288)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4574)
!4574 = !{!4575, !4579}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4573, file: !94, line: 531, baseType: !4576, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4578, line: 13, flags: DIFlagFwdDecl)
!4578 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4573, file: !94, line: 532, baseType: !4580, size: 64, offset: 64)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4325, file: !94, line: 738, baseType: !4583, size: 64, offset: 4416)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4585)
!4585 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4325, file: !94, line: 740, baseType: !4587, size: 64, offset: 4480)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4325, file: !94, line: 741, baseType: !448, size: 64, offset: 4544)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4325, file: !94, line: 746, baseType: !448, size: 64, offset: 4608)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4325, file: !94, line: 747, baseType: !4591, size: 64, offset: 4672)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4593)
!4593 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4325, file: !94, line: 749, baseType: !4595, size: 64, offset: 4736)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4597)
!4597 = !{!4598, !4599, !4600}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4596, file: !94, line: 433, baseType: !7, size: 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4596, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4596, file: !94, line: 435, baseType: !266, size: 64, offset: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4325, file: !94, line: 751, baseType: !272, size: 128, offset: 4800)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4325, file: !94, line: 762, baseType: !4603, size: 64, offset: 4928)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4325, file: !94, line: 770, baseType: !4606, offset: 4992)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4607, line: 5, elements: !720)
!4607 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4325, file: !94, line: 772, baseType: !4609, size: 64, offset: 4992)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4611, line: 18, flags: DIFlagFwdDecl)
!4611 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4325, file: !94, line: 773, baseType: !4613, size: 64, offset: 5056)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4615, line: 41, size: 512, elements: !4616)
!4615 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4616 = !{!4617, !4618, !4712, !4713, !4714, !4715}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4614, file: !4615, line: 42, baseType: !4613, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4614, file: !4615, line: 43, baseType: !4619, size: 64, offset: 64)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4621)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4615, line: 125, size: 1408, elements: !4622)
!4622 = !{!4623, !4627, !4631, !4637, !4641, !4642, !4647, !4651, !4655, !4659, !4663, !4664, !4668, !4672, !4676, !4687, !4688, !4689, !4690, !4700, !4704, !4708}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4621, file: !4615, line: 126, baseType: !4624, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!4613, !4613}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4621, file: !4615, line: 127, baseType: !4628, size: 64, offset: 64)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{null, !4613}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4621, file: !4615, line: 128, baseType: !4632, size: 64, offset: 128)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!910, !4635}
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4614)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4621, file: !4615, line: 129, baseType: !4638, size: 64, offset: 192)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!1963, !4635, !4344}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4621, file: !4615, line: 131, baseType: !4632, size: 64, offset: 256)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4621, file: !4615, line: 133, baseType: !4643, size: 64, offset: 320)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!4646, !4635}
!4646 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4615, line: 132, flags: DIFlagFwdDecl)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4621, file: !4615, line: 134, baseType: !4648, size: 64, offset: 384)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!910, !4635, !913}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4621, file: !4615, line: 136, baseType: !4652, size: 64, offset: 448)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!109, !4635, !913, !7, !263, !1228}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4621, file: !4615, line: 141, baseType: !4656, size: 64, offset: 512)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!109, !4635, !913, !2469, !1228}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4621, file: !4615, line: 144, baseType: !4660, size: 64, offset: 576)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!913, !4635}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4621, file: !4615, line: 145, baseType: !4660, size: 64, offset: 640)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4621, file: !4615, line: 146, baseType: !4665, size: 64, offset: 704)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!4613, !4635}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4621, file: !4615, line: 148, baseType: !4669, size: 64, offset: 768)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!4613, !4635, !4613}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4621, file: !4615, line: 151, baseType: !4673, size: 64, offset: 832)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!4613, !4635, !913}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4621, file: !4615, line: 153, baseType: !4677, size: 64, offset: 896)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!109, !4635, !913, !913, !7, !7, !4680}
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4615, line: 94, size: 640, elements: !4682)
!4682 = !{!4683, !4684, !4685}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4681, file: !4615, line: 95, baseType: !4613, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4681, file: !4615, line: 96, baseType: !7, size: 32, offset: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4681, file: !4615, line: 97, baseType: !4686, size: 512, offset: 128)
!4686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 512, elements: !560)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4621, file: !4615, line: 158, baseType: !4669, size: 64, offset: 960)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4621, file: !4615, line: 161, baseType: !4665, size: 64, offset: 1024)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4621, file: !4615, line: 163, baseType: !4624, size: 64, offset: 1088)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4621, file: !4615, line: 164, baseType: !4691, size: 64, offset: 1152)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!109, !4635, !4694}
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4615, line: 73, size: 128, elements: !4696)
!4696 = !{!4697, !4698, !4699}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4695, file: !4615, line: 74, baseType: !7, size: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4695, file: !4615, line: 75, baseType: !7, size: 32, offset: 32)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4695, file: !4615, line: 76, baseType: !4635, size: 64, offset: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4621, file: !4615, line: 166, baseType: !4701, size: 64, offset: 1216)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!263, !4613, !109}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4621, file: !4615, line: 167, baseType: !4705, size: 64, offset: 1280)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!109, !4635, !7}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4621, file: !4615, line: 168, baseType: !4709, size: 64, offset: 1344)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!109, !4613}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4614, file: !4615, line: 44, baseType: !4324, size: 64, offset: 128)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4614, file: !4615, line: 45, baseType: !272, size: 128, offset: 192)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4614, file: !4615, line: 46, baseType: !272, size: 128, offset: 320)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4614, file: !4615, line: 47, baseType: !314, size: 8, offset: 448)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4325, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4325, file: !94, line: 778, baseType: !1146, size: 32, offset: 5152)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4325, file: !94, line: 779, baseType: !395, size: 32, offset: 5184)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4325, file: !94, line: 781, baseType: !290, size: 32, offset: 5216)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4325, file: !94, line: 782, baseType: !272, size: 128, offset: 5248)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4325, file: !94, line: 784, baseType: !4722, size: 64, offset: 5376)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4724)
!4724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4725, line: 52, size: 768, elements: !4726)
!4725 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4726 = !{!4727, !4728, !4729, !4730, !4731, !4735, !4739, !4740, !4741, !4742, !4746, !4750}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4724, file: !4725, line: 53, baseType: !913, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4724, file: !4725, line: 55, baseType: !1403, size: 64, offset: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4724, file: !4725, line: 56, baseType: !1403, size: 64, offset: 128)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4724, file: !4725, line: 58, baseType: !4341, size: 64, offset: 192)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4724, file: !4725, line: 59, baseType: !4732, size: 64, offset: 256)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!923, !4344, !4350}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4724, file: !4725, line: 61, baseType: !4736, size: 64, offset: 320)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{null, !4722}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4724, file: !4725, line: 62, baseType: !4352, size: 64, offset: 384)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4724, file: !4725, line: 64, baseType: !4361, size: 64, offset: 448)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4724, file: !4725, line: 66, baseType: !1946, size: 64, offset: 512)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4724, file: !4725, line: 67, baseType: !4743, size: 64, offset: 576)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!1963, !4344}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4724, file: !4725, line: 69, baseType: !4747, size: 64, offset: 640)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{null, !4344, !1980, !1981}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4724, file: !4725, line: 71, baseType: !4356, size: 64, offset: 704)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4325, file: !94, line: 785, baseType: !1403, size: 64, offset: 5440)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4325, file: !94, line: 787, baseType: !4352, size: 64, offset: 5504)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4325, file: !94, line: 788, baseType: !4754, size: 64, offset: 5568)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4325, file: !94, line: 789, baseType: !4757, size: 64, offset: 5632)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4325, file: !94, line: 791, baseType: !4760, size: 64, offset: 5696)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4762)
!4762 = !{!4763, !4764, !4765, !4766, !4767}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4761, file: !94, line: 598, baseType: !116, size: 32)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4761, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4761, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4761, file: !94, line: 601, baseType: !910, size: 8, offset: 96)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4761, file: !94, line: 602, baseType: !910, size: 8, offset: 104)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4325, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4325, file: !94, line: 795, baseType: !910, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4325, file: !94, line: 796, baseType: !910, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4325, file: !94, line: 797, baseType: !910, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4325, file: !94, line: 798, baseType: !910, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4325, file: !94, line: 799, baseType: !910, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4319, file: !202, line: 73, baseType: !4775, size: 256, offset: 128)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4319, file: !202, line: 66, size: 256, elements: !4776)
!4776 = !{!4777, !4778, !4779}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4775, file: !202, line: 68, baseType: !272, size: 128)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4775, file: !202, line: 70, baseType: !263, size: 64, offset: 128)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4775, file: !202, line: 72, baseType: !290, size: 32, offset: 192)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4319, file: !202, line: 76, baseType: !4781, size: 64, offset: 384)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4783)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !227, line: 178, size: 1664, elements: !4784)
!4784 = !{!4785, !4789, !4846, !4850, !4854, !4855, !4856, !4860, !4861, !4865, !4871, !4875, !4880, !4886, !4909, !4924, !4930, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4984, !4985}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !4783, file: !227, line: 195, baseType: !4786, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!109, !4318, !266}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4783, file: !227, line: 215, baseType: !4790, size: 64, offset: 64)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!109, !4318, !4793}
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4795, line: 166, size: 2944, elements: !4796)
!4795 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f20734895d003ad7da48316ffd72e54c")
!4796 = !{!4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4813, !4814, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4794, file: !4795, line: 176, baseType: !910, size: 8)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !4794, file: !4795, line: 183, baseType: !910, size: 8, offset: 8)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !4794, file: !4795, line: 191, baseType: !910, size: 8, offset: 16)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !4794, file: !4795, line: 194, baseType: !910, size: 8, offset: 24)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !4794, file: !4795, line: 202, baseType: !910, size: 8, offset: 32)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !4794, file: !4795, line: 209, baseType: !910, size: 8, offset: 40)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !4794, file: !4795, line: 220, baseType: !910, size: 8, offset: 48)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !4794, file: !4795, line: 231, baseType: !910, size: 8, offset: 56)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "supports_virtualized_cursor_plane", scope: !4794, file: !4795, line: 243, baseType: !910, size: 8, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4794, file: !4795, line: 268, baseType: !4312, size: 64, offset: 128)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "master_lookup_lock", scope: !4794, file: !4795, line: 271, baseType: !290, size: 32, offset: 192)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4794, file: !4795, line: 281, baseType: !276, size: 64, offset: 256)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "client_id", scope: !4794, file: !4795, line: 284, baseType: !448, size: 64, offset: 320)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4794, file: !4795, line: 287, baseType: !4811, size: 32, offset: 384)
!4811 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !4812, line: 85, baseType: !7)
!4812 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9daee414dd46c3bd0bb57211914f5e3a")
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !4794, file: !4795, line: 295, baseType: !272, size: 128, offset: 448)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4794, file: !4795, line: 298, baseType: !4815, size: 64, offset: 576)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !4795, line: 77, size: 640, elements: !4817)
!4817 = !{!4818, !4819, !4820, !4821, !4822, !4823, !4824}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4816, file: !4795, line: 79, baseType: !109, size: 32)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4816, file: !4795, line: 80, baseType: !109, size: 32, offset: 32)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4816, file: !4795, line: 81, baseType: !4324, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4816, file: !4795, line: 82, baseType: !4318, size: 64, offset: 128)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4816, file: !4795, line: 84, baseType: !1036, size: 64, offset: 192)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4816, file: !4795, line: 86, baseType: !272, size: 128, offset: 256)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !4816, file: !4795, line: 87, baseType: !747, size: 256, offset: 384)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4794, file: !4795, line: 306, baseType: !369, size: 192, offset: 640)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !4794, file: !4795, line: 309, baseType: !290, size: 32, offset: 832)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !4794, file: !4795, line: 312, baseType: !369, size: 192, offset: 896)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !4794, file: !4795, line: 314, baseType: !290, size: 32, offset: 1088)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4794, file: !4795, line: 317, baseType: !727, size: 64, offset: 1152)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4794, file: !4795, line: 325, baseType: !263, size: 64, offset: 1216)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !4794, file: !4795, line: 336, baseType: !272, size: 128, offset: 1280)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !4794, file: !4795, line: 339, baseType: !747, size: 256, offset: 1408)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !4794, file: !4795, line: 349, baseType: !272, size: 128, offset: 1664)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !4794, file: !4795, line: 352, baseType: !343, size: 192, offset: 1792)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !4794, file: !4795, line: 363, baseType: !272, size: 128, offset: 1984)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !4794, file: !4795, line: 373, baseType: !272, size: 128, offset: 2112)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !4794, file: !4795, line: 382, baseType: !109, size: 32, offset: 2240)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !4794, file: !4795, line: 385, baseType: !747, size: 256, offset: 2304)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !4794, file: !4795, line: 392, baseType: !4840, size: 384, offset: 2560)
!4840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !4841, line: 45, size: 384, elements: !4842)
!4841 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95f128be875629bb4216af76254b38de")
!4842 = !{!4843, !4844, !4845}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4840, file: !4841, line: 47, baseType: !747, size: 256)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !4840, file: !4841, line: 48, baseType: !585, size: 64, offset: 256)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4840, file: !4841, line: 49, baseType: !585, size: 64, offset: 320)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "postclose", scope: !4783, file: !227, line: 229, baseType: !4847, size: 64, offset: 128)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{null, !4318, !4793}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "lastclose", scope: !4783, file: !227, line: 257, baseType: !4851, size: 64, offset: 192)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{null, !4318}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !4783, file: !227, line: 274, baseType: !4851, size: 64, offset: 256)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4783, file: !227, line: 286, baseType: !4851, size: 64, offset: 320)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "master_set", scope: !4783, file: !227, line: 293, baseType: !4857, size: 64, offset: 384)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{null, !4318, !4793, !910}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "master_drop", scope: !4783, file: !227, line: 300, baseType: !4847, size: 64, offset: 448)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !4783, file: !227, line: 307, baseType: !4862, size: 64, offset: 512)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{null, !4815}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "gem_create_object", scope: !4783, file: !227, line: 316, baseType: !4866, size: 64, offset: 576)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!4869, !4318, !1228}
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !227, line: 38, flags: DIFlagFwdDecl)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "prime_handle_to_fd", scope: !4783, file: !227, line: 324, baseType: !4872, size: 64, offset: 640)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!109, !4318, !4793, !874, !874, !2279}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "prime_fd_to_handle", scope: !4783, file: !227, line: 331, baseType: !4876, size: 64, offset: 704)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!109, !4318, !4793, !109, !4879}
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import", scope: !4783, file: !227, line: 341, baseType: !4881, size: 64, offset: 768)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!4869, !4318, !4884}
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !227, line: 41, flags: DIFlagFwdDecl)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import_sg_table", scope: !4783, file: !227, line: 349, baseType: !4887, size: 64, offset: 832)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!4869, !4318, !4890, !4892}
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !227, line: 42, flags: DIFlagFwdDecl)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4894, line: 39, size: 128, elements: !4895)
!4894 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!4895 = !{!4896, !4907, !4908}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4893, file: !4894, line: 40, baseType: !4897, size: 64)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4894, line: 11, size: 256, elements: !4899)
!4899 = !{!4900, !4901, !4902, !4903, !4905, !4906}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4898, file: !4894, line: 12, baseType: !266, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4898, file: !4894, line: 13, baseType: !7, size: 32, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4898, file: !4894, line: 14, baseType: !7, size: 32, offset: 96)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4898, file: !4894, line: 15, baseType: !4904, size: 64, offset: 128)
!4904 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !265, line: 149, baseType: !448)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4898, file: !4894, line: 17, baseType: !7, size: 32, offset: 192)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4898, file: !4894, line: 20, baseType: !7, size: 32, offset: 224)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4893, file: !4894, line: 41, baseType: !7, size: 32, offset: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4893, file: !4894, line: 42, baseType: !7, size: 32, offset: 96)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_create", scope: !4783, file: !227, line: 375, baseType: !4910, size: 64, offset: 896)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!109, !4793, !4318, !4913}
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_create_dumb", file: !4915, line: 1036, size: 256, elements: !4916)
!4915 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!4916 = !{!4917, !4918, !4919, !4920, !4921, !4922, !4923}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4914, file: !4915, line: 1037, baseType: !396, size: 32)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4914, file: !4915, line: 1038, baseType: !396, size: 32, offset: 32)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !4914, file: !4915, line: 1039, baseType: !396, size: 32, offset: 64)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4914, file: !4915, line: 1040, baseType: !396, size: 32, offset: 96)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4914, file: !4915, line: 1042, baseType: !396, size: 32, offset: 128)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !4914, file: !4915, line: 1043, baseType: !396, size: 32, offset: 160)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4914, file: !4915, line: 1044, baseType: !449, size: 64, offset: 192)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_map_offset", scope: !4783, file: !227, line: 393, baseType: !4925, size: 64, offset: 960)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!109, !4793, !4318, !874, !4928}
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !265, line: 113, baseType: !448)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4783, file: !227, line: 402, baseType: !4931, size: 64, offset: 1024)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{null, !4934, !4793}
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !209, line: 76, size: 256, elements: !4936)
!4936 = !{!4937, !4958, !4962, !4963}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !4935, file: !209, line: 78, baseType: !4938, size: 64)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{null, !4934, !4941}
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4943, line: 79, size: 128, elements: !4944)
!4943 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4944 = !{!4945, !4946}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4942, file: !4943, line: 80, baseType: !913, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4942, file: !4943, line: 81, baseType: !4947, size: 64, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4949, line: 5, baseType: !4950)
!4949 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!4950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !4951)
!4951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4952, size: 192, elements: !651)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4953)
!4953 = !{!4954, !4955, !4956, !4957}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4952, file: !3, baseType: !7, size: 32)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4952, file: !3, baseType: !7, size: 32, offset: 32)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4952, file: !3, baseType: !263, size: 64, offset: 64)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4952, file: !3, baseType: !263, size: 64, offset: 128)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !4935, file: !209, line: 79, baseType: !4959, size: 64, offset: 64)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{null, !4934, !913}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4935, file: !209, line: 80, baseType: !263, size: 64, offset: 128)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !4935, file: !209, line: 81, baseType: !913, size: 64, offset: 192)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4783, file: !227, line: 405, baseType: !109, size: 32, offset: 1088)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4783, file: !227, line: 407, baseType: !109, size: 32, offset: 1120)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "patchlevel", scope: !4783, file: !227, line: 409, baseType: !109, size: 32, offset: 1152)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4783, file: !227, line: 411, baseType: !923, size: 64, offset: 1216)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4783, file: !227, line: 413, baseType: !923, size: 64, offset: 1280)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4783, file: !227, line: 415, baseType: !923, size: 64, offset: 1344)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4783, file: !227, line: 423, baseType: !395, size: 32, offset: 1408)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "ioctls", scope: !4783, file: !227, line: 433, baseType: !4972, size: 64, offset: 1472)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4974)
!4974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_ioctl_desc", file: !142, line: 145, size: 192, elements: !4975)
!4975 = !{!4976, !4977, !4978, !4983}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4974, file: !142, line: 146, baseType: !7, size: 32)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4974, file: !142, line: 147, baseType: !141, size: 32, offset: 32)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4974, file: !142, line: 148, baseType: !4979, size: 64, offset: 64)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_ioctl_t", file: !142, line: 54, baseType: !4981)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!109, !4318, !263, !4793}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4974, file: !142, line: 149, baseType: !913, size: 64, offset: 128)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioctls", scope: !4783, file: !227, line: 435, baseType: !109, size: 32, offset: 1536)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4783, file: !227, line: 444, baseType: !3041, size: 64, offset: 1600)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !4319, file: !202, line: 88, baseType: !263, size: 64, offset: 448)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4319, file: !202, line: 98, baseType: !4815, size: 64, offset: 512)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !4319, file: !202, line: 107, baseType: !4815, size: 64, offset: 576)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !4319, file: !202, line: 110, baseType: !4815, size: 64, offset: 640)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4319, file: !202, line: 117, baseType: !910, size: 8, offset: 704)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4319, file: !202, line: 125, baseType: !4312, size: 64, offset: 768)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4319, file: !202, line: 135, baseType: !395, size: 32, offset: 832)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !4319, file: !202, line: 143, baseType: !910, size: 8, offset: 864)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !4319, file: !202, line: 146, baseType: !1071, size: 64, offset: 896)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4319, file: !202, line: 149, baseType: !923, size: 64, offset: 960)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !4319, file: !202, line: 159, baseType: !747, size: 256, offset: 1024)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !4319, file: !202, line: 166, baseType: !747, size: 256, offset: 1280)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !4319, file: !202, line: 174, baseType: !284, size: 32, offset: 1536)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !4319, file: !202, line: 177, baseType: !747, size: 256, offset: 1600)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4319, file: !202, line: 183, baseType: !272, size: 128, offset: 1856)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !4319, file: !202, line: 191, baseType: !272, size: 128, offset: 1984)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !4319, file: !202, line: 198, baseType: !747, size: 256, offset: 2112)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !4319, file: !202, line: 205, baseType: !272, size: 128, offset: 2368)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !4319, file: !202, line: 220, baseType: !910, size: 8, offset: 2496)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !4319, file: !202, line: 230, baseType: !5006, size: 64, offset: 2560)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !5008, line: 91, size: 2432, elements: !5009)
!5008 = !DIFile(filename: "./include/drm/drm_vblank.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03c3f5f08fd7c156883238a0e593b6d6")
!5009 = !{!5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5060, !5061, !5083, !5084}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5007, file: !5008, line: 95, baseType: !4318, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5007, file: !5008, line: 99, baseType: !343, size: 192, offset: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "disable_timer", scope: !5007, file: !5008, line: 106, baseType: !2381, size: 320, offset: 256)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "seqlock", scope: !5007, file: !5008, line: 111, baseType: !3618, size: 64, offset: 576)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5007, file: !5008, line: 127, baseType: !742, size: 64, offset: 640)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5007, file: !5008, line: 131, baseType: !524, size: 64, offset: 704)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5007, file: !5008, line: 138, baseType: !284, size: 32, offset: 768)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5007, file: !5008, line: 142, baseType: !395, size: 32, offset: 800)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !5007, file: !5008, line: 162, baseType: !395, size: 32, offset: 832)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "inmodeset", scope: !5007, file: !5008, line: 171, baseType: !7, size: 32, offset: 864)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !5007, file: !5008, line: 176, baseType: !7, size: 32, offset: 896)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "framedur_ns", scope: !5007, file: !5008, line: 182, baseType: !109, size: 32, offset: 928)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "linedur_ns", scope: !5007, file: !5008, line: 188, baseType: !109, size: 32, offset: 960)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !5007, file: !5008, line: 199, baseType: !5024, size: 960, offset: 1024)
!5024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !150, line: 252, size: 960, elements: !5025)
!5025 = !{!5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !5024, file: !150, line: 258, baseType: !109, size: 32)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !5024, file: !150, line: 259, baseType: !324, size: 16, offset: 32)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !5024, file: !150, line: 260, baseType: !324, size: 16, offset: 48)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !5024, file: !150, line: 261, baseType: !324, size: 16, offset: 64)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !5024, file: !150, line: 262, baseType: !324, size: 16, offset: 80)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !5024, file: !150, line: 263, baseType: !324, size: 16, offset: 96)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !5024, file: !150, line: 264, baseType: !324, size: 16, offset: 112)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !5024, file: !150, line: 265, baseType: !324, size: 16, offset: 128)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !5024, file: !150, line: 266, baseType: !324, size: 16, offset: 144)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !5024, file: !150, line: 267, baseType: !324, size: 16, offset: 160)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !5024, file: !150, line: 268, baseType: !324, size: 16, offset: 176)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5024, file: !150, line: 303, baseType: !395, size: 32, offset: 192)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !5024, file: !150, line: 320, baseType: !109, size: 32, offset: 224)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !5024, file: !150, line: 321, baseType: !324, size: 16, offset: 256)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !5024, file: !150, line: 322, baseType: !324, size: 16, offset: 272)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !5024, file: !150, line: 323, baseType: !324, size: 16, offset: 288)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !5024, file: !150, line: 324, baseType: !324, size: 16, offset: 304)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !5024, file: !150, line: 325, baseType: !324, size: 16, offset: 320)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !5024, file: !150, line: 326, baseType: !324, size: 16, offset: 336)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !5024, file: !150, line: 327, baseType: !324, size: 16, offset: 352)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !5024, file: !150, line: 328, baseType: !324, size: 16, offset: 368)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !5024, file: !150, line: 329, baseType: !324, size: 16, offset: 384)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !5024, file: !150, line: 330, baseType: !324, size: 16, offset: 400)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !5024, file: !150, line: 331, baseType: !324, size: 16, offset: 416)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !5024, file: !150, line: 332, baseType: !324, size: 16, offset: 432)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !5024, file: !150, line: 333, baseType: !324, size: 16, offset: 448)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5024, file: !150, line: 341, baseType: !324, size: 16, offset: 464)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5024, file: !150, line: 349, baseType: !324, size: 16, offset: 480)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5024, file: !150, line: 378, baseType: !314, size: 8, offset: 496)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !5024, file: !150, line: 389, baseType: !910, size: 8, offset: 504)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5024, file: !150, line: 396, baseType: !272, size: 128, offset: 512)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5024, file: !150, line: 403, baseType: !2879, size: 256, offset: 640)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5024, file: !150, line: 411, baseType: !149, size: 32, offset: 896)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5024, file: !150, line: 418, baseType: !192, size: 32, offset: 928)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5007, file: !5008, line: 207, baseType: !910, size: 8, offset: 1984)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !5007, file: !5008, line: 212, baseType: !5062, size: 64, offset: 2048)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !5064, line: 123, size: 448, elements: !5065)
!5064 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!5065 = !{!5066, !5067, !5068, !5069, !5070, !5071}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5063, file: !5064, line: 124, baseType: !7, size: 32)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5063, file: !5064, line: 125, baseType: !541, size: 32, offset: 32)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !5063, file: !5064, line: 126, baseType: !272, size: 128, offset: 64)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !5063, file: !5064, line: 127, baseType: !272, size: 128, offset: 192)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5063, file: !5064, line: 128, baseType: !384, size: 64, offset: 320)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !5063, file: !5064, line: 129, baseType: !5072, size: 64, offset: 384)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !5064, line: 132, size: 320, elements: !5074)
!5074 = !{!5075, !5076, !5081, !5082}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5073, file: !5064, line: 133, baseType: !272, size: 128)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5073, file: !5064, line: 134, baseType: !5077, size: 64, offset: 128)
!5077 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !5064, line: 116, baseType: !5078)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{null, !5072}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !5073, file: !5064, line: 135, baseType: !5062, size: 64, offset: 192)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !5073, file: !5064, line: 137, baseType: !109, size: 32, offset: 256)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !5007, file: !5008, line: 218, baseType: !272, size: 128, offset: 2112)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "work_wait_queue", scope: !5007, file: !5008, line: 225, baseType: !343, size: 192, offset: 2240)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !4319, file: !202, line: 237, baseType: !290, size: 32, offset: 2624)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !4319, file: !202, line: 242, baseType: !290, size: 32, offset: 2656)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !4319, file: !202, line: 265, baseType: !395, size: 32, offset: 2688)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !4319, file: !202, line: 268, baseType: !272, size: 128, offset: 2752)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4319, file: !202, line: 276, baseType: !290, size: 32, offset: 2880)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !4319, file: !202, line: 279, baseType: !7, size: 32, offset: 2912)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !4319, file: !202, line: 282, baseType: !5092, size: 8704, offset: 2944)
!5092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !5093, line: 375, size: 8704, elements: !5094)
!5093 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!5094 = !{!5095, !5096, !5115, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5092, file: !5093, line: 386, baseType: !747, size: 256)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !5092, file: !5093, line: 396, baseType: !5097, size: 448, offset: 256)
!5097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !5098, line: 85, size: 448, elements: !5099)
!5098 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!5099 = !{!5100, !5114}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5097, file: !5098, line: 89, baseType: !5101, size: 320)
!5101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !5102, line: 47, size: 320, elements: !5103)
!5102 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!5103 = !{!5104, !5105}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5101, file: !5102, line: 48, baseType: !747, size: 256)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5101, file: !5102, line: 49, baseType: !5106, size: 64, offset: 256)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !5102, line: 55, size: 192, elements: !5108)
!5108 = !{!5109, !5110, !5111, !5112, !5113}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5107, file: !5102, line: 56, baseType: !384, size: 64)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !5107, file: !5102, line: 57, baseType: !266, size: 64, offset: 64)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !5107, file: !5102, line: 58, baseType: !7, size: 32, offset: 128)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !5107, file: !5102, line: 59, baseType: !326, size: 16, offset: 160)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !5107, file: !5102, line: 60, baseType: !326, size: 16, offset: 176)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5097, file: !5098, line: 95, baseType: !272, size: 128, offset: 320)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !5092, file: !5093, line: 406, baseType: !5116, size: 64, offset: 704)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !5098, line: 46, size: 512, elements: !5118)
!5118 = !{!5119, !5120, !5122, !5125, !5126, !5127}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !5117, file: !5098, line: 48, baseType: !5107, size: 192)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !5117, file: !5098, line: 55, baseType: !5121, size: 64, offset: 192)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !5117, file: !5098, line: 61, baseType: !5123, size: 32, offset: 256)
!5123 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !5124, line: 27, baseType: !395)
!5124 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !5117, file: !5098, line: 66, baseType: !272, size: 128, offset: 320)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !5117, file: !5098, line: 71, baseType: !910, size: 8, offset: 448)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !5117, file: !5098, line: 74, baseType: !910, size: 8, offset: 456)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !5092, file: !5093, line: 414, baseType: !747, size: 256, offset: 768)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !5092, file: !5093, line: 422, baseType: !369, size: 192, offset: 1024)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !5092, file: !5093, line: 430, baseType: !369, size: 192, offset: 1216)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !5092, file: !5093, line: 433, baseType: !747, size: 256, offset: 1408)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !5092, file: !5093, line: 435, baseType: !109, size: 32, offset: 1664)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !5092, file: !5093, line: 437, baseType: !272, size: 128, offset: 1728)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !5092, file: !5093, line: 443, baseType: !290, size: 32, offset: 1856)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !5092, file: !5093, line: 448, baseType: !109, size: 32, offset: 1888)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !5092, file: !5093, line: 452, baseType: !5137, size: 128, offset: 1920)
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !370, line: 246, size: 128, elements: !5138)
!5138 = !{!5139}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5137, file: !370, line: 247, baseType: !373, size: 128)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !5092, file: !5093, line: 460, baseType: !272, size: 128, offset: 2048)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !5092, file: !5093, line: 470, baseType: !4058, size: 64, offset: 2176)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !5092, file: !5093, line: 474, baseType: !2393, size: 256, offset: 2240)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !5092, file: !5093, line: 482, baseType: !109, size: 32, offset: 2496)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !5092, file: !5093, line: 490, baseType: !272, size: 128, offset: 2560)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !5092, file: !5093, line: 499, baseType: !109, size: 32, offset: 2688)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !5092, file: !5093, line: 506, baseType: !272, size: 128, offset: 2752)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !5092, file: !5093, line: 514, baseType: !109, size: 32, offset: 2880)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !5092, file: !5093, line: 521, baseType: !272, size: 128, offset: 2944)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !5092, file: !5093, line: 530, baseType: !272, size: 128, offset: 3072)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !5092, file: !5093, line: 539, baseType: !272, size: 128, offset: 3200)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !5092, file: !5093, line: 541, baseType: !109, size: 32, offset: 3328)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !5092, file: !5093, line: 541, baseType: !109, size: 32, offset: 3360)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !5092, file: !5093, line: 542, baseType: !109, size: 32, offset: 3392)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !5092, file: !5093, line: 542, baseType: !109, size: 32, offset: 3424)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5092, file: !5093, line: 543, baseType: !5156, size: 64, offset: 3456)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5158)
!5158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !5093, line: 47, size: 576, elements: !5159)
!5159 = !{!5160, !5181, !5188, !5189, !5195, !5201, !5205, !5209, !5213}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !5158, file: !5093, line: 83, baseType: !5161, size: 64)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{!5164, !4318, !4793, !5166}
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !5093, line: 83, flags: DIFlagFwdDecl)
!5166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5167, size: 64)
!5167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5168)
!5168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !4915, line: 703, size: 832, elements: !5169)
!5169 = !{!5170, !5171, !5172, !5173, !5174, !5175, !5177, !5178, !5179}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !5168, file: !4915, line: 705, baseType: !396, size: 32)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5168, file: !4915, line: 707, baseType: !396, size: 32, offset: 32)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5168, file: !4915, line: 709, baseType: !396, size: 32, offset: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5168, file: !4915, line: 714, baseType: !396, size: 32, offset: 96)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5168, file: !4915, line: 719, baseType: !396, size: 32, offset: 128)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5168, file: !4915, line: 725, baseType: !5176, size: 128, offset: 160)
!5176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 128, elements: !339)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5168, file: !4915, line: 727, baseType: !5176, size: 128, offset: 288)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5168, file: !4915, line: 729, baseType: !5176, size: 128, offset: 416)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5168, file: !4915, line: 735, baseType: !5180, size: 256, offset: 576)
!5180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 256, elements: !339)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !5158, file: !5093, line: 98, baseType: !5182, size: 64, offset: 64)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!5185, !5166}
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5187)
!5187 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !5093, line: 38, flags: DIFlagFwdDecl)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !5158, file: !5093, line: 114, baseType: !4851, size: 64, offset: 128)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5158, file: !5093, line: 124, baseType: !5190, size: 64, offset: 192)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!149, !4318, !5193}
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5024)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5158, file: !5093, line: 201, baseType: !5196, size: 64, offset: 256)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DISubroutineType(types: !5198)
!5198 = !{!109, !4318, !5199}
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !5093, line: 36, flags: DIFlagFwdDecl)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5158, file: !5093, line: 283, baseType: !5202, size: 64, offset: 320)
!5202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5203, size: 64)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!109, !4318, !5199, !910}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !5158, file: !5093, line: 302, baseType: !5206, size: 64, offset: 384)
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5207, size: 64)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!5199, !4318}
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !5158, file: !5093, line: 323, baseType: !5210, size: 64, offset: 448)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{null, !5199}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !5158, file: !5093, line: 338, baseType: !5210, size: 64, offset: 512)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !5092, file: !5093, line: 546, baseType: !910, size: 8, offset: 3520)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !5092, file: !5093, line: 547, baseType: !910, size: 8, offset: 3528)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !5092, file: !5093, line: 548, baseType: !910, size: 8, offset: 3536)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !5092, file: !5093, line: 549, baseType: !2449, size: 704, offset: 3584)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !5092, file: !5093, line: 557, baseType: !747, size: 256, offset: 4288)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !5092, file: !5093, line: 565, baseType: !272, size: 128, offset: 4544)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !5092, file: !5093, line: 573, baseType: !5221, size: 64, offset: 4672)
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !5223, line: 80, size: 960, elements: !5224)
!5223 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!5224 = !{!5225, !5226, !5249, !5250, !5251, !5252, !5253, !5254}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5222, file: !5223, line: 84, baseType: !272, size: 128)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5222, file: !5223, line: 89, baseType: !5227, size: 256, offset: 128)
!5227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !5228, line: 55, size: 256, elements: !5229)
!5228 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!5229 = !{!5230, !5231, !5232, !5243, !5244}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5227, file: !5228, line: 56, baseType: !874, size: 32)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5227, file: !5228, line: 57, baseType: !874, size: 32, offset: 32)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5227, file: !5228, line: 58, baseType: !5233, size: 64, offset: 64)
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !5228, line: 67, size: 3136, elements: !5235)
!5235 = !{!5236, !5237, !5241}
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5234, file: !5228, line: 73, baseType: !109, size: 32)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5234, file: !5228, line: 82, baseType: !5238, size: 1536, offset: 64)
!5238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5221, size: 1536, elements: !5239)
!5239 = !{!5240}
!5240 = !DISubrange(count: 24)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5234, file: !5228, line: 106, baseType: !5242, size: 1536, offset: 1600)
!5242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4929, size: 1536, elements: !5239)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5227, file: !5228, line: 59, baseType: !2127, size: 32, offset: 128)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !5227, file: !5228, line: 60, baseType: !5245, size: 64, offset: 192)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{null, !5248}
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5222, file: !5223, line: 166, baseType: !874, size: 32, offset: 384)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5222, file: !5223, line: 171, baseType: !2879, size: 256, offset: 416)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !5222, file: !5223, line: 176, baseType: !874, size: 32, offset: 672)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5222, file: !5223, line: 184, baseType: !4928, size: 64, offset: 704)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5222, file: !5223, line: 189, baseType: !4318, size: 64, offset: 768)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !5222, file: !5223, line: 197, baseType: !272, size: 128, offset: 832)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !5092, file: !5093, line: 578, baseType: !5221, size: 64, offset: 4736)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !5092, file: !5093, line: 583, baseType: !5221, size: 64, offset: 4800)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !5092, file: !5093, line: 589, baseType: !5221, size: 64, offset: 4864)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !5092, file: !5093, line: 594, baseType: !5221, size: 64, offset: 4928)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !5092, file: !5093, line: 599, baseType: !5221, size: 64, offset: 4992)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !5092, file: !5093, line: 604, baseType: !5221, size: 64, offset: 5056)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !5092, file: !5093, line: 609, baseType: !5221, size: 64, offset: 5120)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !5092, file: !5093, line: 614, baseType: !5221, size: 64, offset: 5184)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !5092, file: !5093, line: 619, baseType: !5221, size: 64, offset: 5248)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !5092, file: !5093, line: 624, baseType: !5221, size: 64, offset: 5312)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !5092, file: !5093, line: 629, baseType: !5221, size: 64, offset: 5376)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !5092, file: !5093, line: 634, baseType: !5221, size: 64, offset: 5440)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !5092, file: !5093, line: 639, baseType: !5221, size: 64, offset: 5504)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !5092, file: !5093, line: 644, baseType: !5221, size: 64, offset: 5568)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !5092, file: !5093, line: 649, baseType: !5221, size: 64, offset: 5632)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !5092, file: !5093, line: 655, baseType: !5221, size: 64, offset: 5696)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !5092, file: !5093, line: 660, baseType: !5221, size: 64, offset: 5760)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !5092, file: !5093, line: 669, baseType: !5221, size: 64, offset: 5824)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !5092, file: !5093, line: 675, baseType: !5221, size: 64, offset: 5888)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !5092, file: !5093, line: 681, baseType: !5221, size: 64, offset: 5952)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !5092, file: !5093, line: 686, baseType: !5221, size: 64, offset: 6016)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !5092, file: !5093, line: 692, baseType: !5221, size: 64, offset: 6080)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !5092, file: !5093, line: 697, baseType: !5221, size: 64, offset: 6144)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !5092, file: !5093, line: 703, baseType: !5221, size: 64, offset: 6208)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !5092, file: !5093, line: 709, baseType: !5221, size: 64, offset: 6272)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !5092, file: !5093, line: 714, baseType: !5221, size: 64, offset: 6336)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !5092, file: !5093, line: 722, baseType: !5221, size: 64, offset: 6400)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !5092, file: !5093, line: 728, baseType: !5221, size: 64, offset: 6464)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !5092, file: !5093, line: 734, baseType: !5221, size: 64, offset: 6528)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !5092, file: !5093, line: 739, baseType: !5221, size: 64, offset: 6592)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !5092, file: !5093, line: 744, baseType: !5221, size: 64, offset: 6656)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !5092, file: !5093, line: 749, baseType: !5221, size: 64, offset: 6720)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !5092, file: !5093, line: 754, baseType: !5221, size: 64, offset: 6784)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !5092, file: !5093, line: 759, baseType: !5221, size: 64, offset: 6848)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !5092, file: !5093, line: 764, baseType: !5221, size: 64, offset: 6912)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !5092, file: !5093, line: 769, baseType: !5221, size: 64, offset: 6976)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !5092, file: !5093, line: 774, baseType: !5221, size: 64, offset: 7040)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !5092, file: !5093, line: 778, baseType: !5221, size: 64, offset: 7104)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5092, file: !5093, line: 784, baseType: !5221, size: 64, offset: 7168)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !5092, file: !5093, line: 789, baseType: !5221, size: 64, offset: 7232)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !5092, file: !5093, line: 794, baseType: !5221, size: 64, offset: 7296)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !5092, file: !5093, line: 799, baseType: !5221, size: 64, offset: 7360)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !5092, file: !5093, line: 804, baseType: !5221, size: 64, offset: 7424)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !5092, file: !5093, line: 810, baseType: !5221, size: 64, offset: 7488)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !5092, file: !5093, line: 816, baseType: !5221, size: 64, offset: 7552)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !5092, file: !5093, line: 821, baseType: !5221, size: 64, offset: 7616)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !5092, file: !5093, line: 827, baseType: !5221, size: 64, offset: 7680)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !5092, file: !5093, line: 832, baseType: !5221, size: 64, offset: 7744)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !5092, file: !5093, line: 839, baseType: !5221, size: 64, offset: 7808)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !5092, file: !5093, line: 846, baseType: !5221, size: 64, offset: 7872)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !5092, file: !5093, line: 853, baseType: !5221, size: 64, offset: 7936)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !5092, file: !5093, line: 861, baseType: !5221, size: 64, offset: 8000)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !5092, file: !5093, line: 869, baseType: !5221, size: 64, offset: 8064)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !5092, file: !5093, line: 876, baseType: !5221, size: 64, offset: 8128)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !5092, file: !5093, line: 882, baseType: !5221, size: 64, offset: 8192)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !5092, file: !5093, line: 888, baseType: !5221, size: 64, offset: 8256)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !5092, file: !5093, line: 891, baseType: !874, size: 32, offset: 8320)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !5092, file: !5093, line: 891, baseType: !874, size: 32, offset: 8352)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !5092, file: !5093, line: 899, baseType: !910, size: 8, offset: 8384)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !5092, file: !5093, line: 913, baseType: !910, size: 8, offset: 8392)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !5092, file: !5093, line: 919, baseType: !910, size: 8, offset: 8400)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !5092, file: !5093, line: 929, baseType: !910, size: 8, offset: 8408)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !5092, file: !5093, line: 937, baseType: !910, size: 8, offset: 8416)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !5092, file: !5093, line: 943, baseType: !5221, size: 64, offset: 8448)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !5092, file: !5093, line: 946, baseType: !874, size: 32, offset: 8512)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !5092, file: !5093, line: 946, baseType: !874, size: 32, offset: 8544)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !5092, file: !5093, line: 955, baseType: !5199, size: 64, offset: 8576)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5092, file: !5093, line: 957, baseType: !5323, size: 64, offset: 8640)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5325)
!5325 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !5093, line: 957, flags: DIFlagFwdDecl)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !4319, file: !202, line: 285, baseType: !747, size: 256, offset: 11648)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !4319, file: !202, line: 288, baseType: !369, size: 192, offset: 11904)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !4319, file: !202, line: 291, baseType: !5329, size: 64, offset: 12096)
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5330, size: 64)
!5330 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !202, line: 16, flags: DIFlagFwdDecl)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !4319, file: !202, line: 294, baseType: !5332, size: 64, offset: 12160)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!5333 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !202, line: 17, flags: DIFlagFwdDecl)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !4319, file: !202, line: 304, baseType: !201, size: 32, offset: 12224)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !4319, file: !202, line: 312, baseType: !5336, size: 64, offset: 12288)
!5336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5337, size: 64)
!5337 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !202, line: 18, flags: DIFlagFwdDecl)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !4319, file: !202, line: 319, baseType: !747, size: 256, offset: 12352)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4319, file: !202, line: 327, baseType: !272, size: 128, offset: 12608)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4313, file: !4314, line: 72, baseType: !923, size: 64, offset: 128)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4313, file: !4314, line: 77, baseType: !109, size: 32, offset: 192)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4313, file: !4314, line: 82, baseType: !369, size: 192, offset: 256)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4313, file: !4314, line: 83, baseType: !263, size: 64, offset: 448)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4313, file: !4314, line: 99, baseType: !4312, size: 64, offset: 512)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4313, file: !4314, line: 107, baseType: !109, size: 32, offset: 576)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4313, file: !4314, line: 116, baseType: !272, size: 128, offset: 640)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4313, file: !4314, line: 128, baseType: !272, size: 128, offset: 768)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4313, file: !4314, line: 139, baseType: !369, size: 192, offset: 896)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4313, file: !4314, line: 147, baseType: !369, size: 192, offset: 1088)
!5350 = !{!0, !5351, !5354, !5359, !5364, !5366, !5368, !5370, !5372, !5374, !5379}
!5351 = !DIGlobalVariableExpression(var: !5352, expr: !DIExpression())
!5352 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !5353, isLocal: true, isDefinition: true)
!5353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 32, elements: !339)
!5354 = !DIGlobalVariableExpression(var: !5355, expr: !DIExpression())
!5355 = distinct !DIGlobalVariable(scope: null, file: !3, line: 278, type: !5356, isLocal: true, isDefinition: true)
!5356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 288, elements: !5357)
!5357 = !{!5358}
!5358 = !DISubrange(count: 36)
!5359 = !DIGlobalVariableExpression(var: !5360, expr: !DIExpression())
!5360 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !5361, isLocal: true, isDefinition: true)
!5361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 296, elements: !5362)
!5362 = !{!5363}
!5363 = !DISubrange(count: 37)
!5364 = !DIGlobalVariableExpression(var: !5365, expr: !DIExpression())
!5365 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_master_get308", scope: !2, file: !3, line: 397, type: !263, isLocal: true, isDefinition: true)
!5366 = !DIGlobalVariableExpression(var: !5367, expr: !DIExpression())
!5367 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_file_get_master309", scope: !2, file: !3, line: 422, type: !263, isLocal: true, isDefinition: true)
!5368 = !DIGlobalVariableExpression(var: !5369, expr: !DIExpression())
!5369 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_master_put310", scope: !2, file: !3, line: 453, type: !263, isLocal: true, isDefinition: true)
!5370 = !DIGlobalVariableExpression(var: !5371, expr: !DIExpression())
!5371 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_master_internal_acquire311", scope: !2, file: !3, line: 466, type: !263, isLocal: true, isDefinition: true)
!5372 = !DIGlobalVariableExpression(var: !5373, expr: !DIExpression())
!5373 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_master_internal_release312", scope: !2, file: !3, line: 473, type: !263, isLocal: true, isDefinition: true)
!5374 = !DIGlobalVariableExpression(var: !5375, expr: !DIExpression())
!5375 = distinct !DIGlobalVariable(scope: null, file: !245, line: 480, type: !5376, isLocal: true, isDefinition: true)
!5376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 168, elements: !5377)
!5377 = !{!5378}
!5378 = !DISubrange(count: 21)
!5379 = !DIGlobalVariableExpression(var: !5380, expr: !DIExpression())
!5380 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !5381, isLocal: true, isDefinition: true)
!5381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 216, elements: !5382)
!5382 = !{!5383}
!5383 = !DISubrange(count: 27)
!5384 = !{i32 7, !"Dwarf Version", i32 5}
!5385 = !{i32 2, !"Debug Info Version", i32 3}
!5386 = !{i32 1, !"wchar_size", i32 2}
!5387 = !{i32 8, !"cf-protection-branch", i32 1}
!5388 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5389 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5390 = !{i32 1, !"Code Model", i32 2}
!5391 = !{i32 1, !"override-stack-alignment", i32 8}
!5392 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5393 = distinct !DISubprogram(name: "drm_is_current_master", scope: !3, file: !3, line: 82, type: !5394, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5396)
!5394 = !DISubroutineType(types: !5395)
!5395 = !{!910, !4793}
!5396 = !{!5397, !5398}
!5397 = !DILocalVariable(name: "fpriv", arg: 1, scope: !5393, file: !3, line: 82, type: !4793)
!5398 = !DILocalVariable(name: "ret", scope: !5393, file: !3, line: 84, type: !910)
!5399 = !DILocation(line: 82, column: 45, scope: !5393)
!5400 = !DILocation(line: 84, column: 2, scope: !5393)
!5401 = !DILocation(line: 84, column: 7, scope: !5393)
!5402 = !DILocation(line: 86, column: 13, scope: !5393)
!5403 = !DILocation(line: 86, column: 20, scope: !5393)
!5404 = !DILocation(line: 86, column: 2, scope: !5393)
!5405 = !DILocation(line: 87, column: 37, scope: !5393)
!5406 = !DILocation(line: 87, column: 8, scope: !5393)
!5407 = !DILocation(line: 87, column: 6, scope: !5393)
!5408 = !DILocation(line: 88, column: 15, scope: !5393)
!5409 = !DILocation(line: 88, column: 22, scope: !5393)
!5410 = !DILocation(line: 88, column: 2, scope: !5393)
!5411 = !DILocation(line: 90, column: 9, scope: !5393)
!5412 = !{i8 0, i8 2}
!5413 = !DILocation(line: 91, column: 1, scope: !5393)
!5414 = !DILocation(line: 90, column: 2, scope: !5393)
!5415 = distinct !DISubprogram(name: "spin_lock", scope: !5416, file: !5416, line: 349, type: !5417, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5419)
!5416 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5417 = !DISubroutineType(types: !5418)
!5418 = !{null, !1711}
!5419 = !{!5420}
!5420 = !DILocalVariable(name: "lock", arg: 1, scope: !5415, file: !5416, line: 349, type: !1711)
!5421 = !DILocation(line: 349, column: 51, scope: !5415)
!5422 = !DILocation(line: 351, column: 2, scope: !5415)
!5423 = !DILocation(line: 352, column: 1, scope: !5415)
!5424 = distinct !DISubprogram(name: "drm_is_current_master_locked", scope: !3, file: !3, line: 64, type: !5394, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5425)
!5425 = !{!5426}
!5426 = !DILocalVariable(name: "fpriv", arg: 1, scope: !5424, file: !3, line: 64, type: !4793)
!5427 = !DILocation(line: 64, column: 59, scope: !5424)
!5428 = !DILocation(line: 66, column: 2, scope: !5424)
!5429 = !DILocation(line: 66, column: 2, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 66, column: 2)
!5431 = !DILocation(line: 69, column: 9, scope: !5424)
!5432 = !DILocation(line: 69, column: 16, scope: !5424)
!5433 = !DILocation(line: 69, column: 26, scope: !5424)
!5434 = !DILocation(line: 69, column: 45, scope: !5424)
!5435 = !DILocation(line: 69, column: 52, scope: !5424)
!5436 = !DILocation(line: 69, column: 29, scope: !5424)
!5437 = !DILocation(line: 69, column: 63, scope: !5424)
!5438 = !DILocation(line: 69, column: 70, scope: !5424)
!5439 = !DILocation(line: 69, column: 77, scope: !5424)
!5440 = !DILocation(line: 69, column: 82, scope: !5424)
!5441 = !DILocation(line: 69, column: 60, scope: !5424)
!5442 = !DILocation(line: 0, scope: !5424)
!5443 = !DILocation(line: 69, column: 2, scope: !5424)
!5444 = distinct !DISubprogram(name: "spin_unlock", scope: !5416, file: !5416, line: 389, type: !5417, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5445)
!5445 = !{!5446}
!5446 = !DILocalVariable(name: "lock", arg: 1, scope: !5444, file: !5416, line: 389, type: !1711)
!5447 = !DILocation(line: 389, column: 53, scope: !5444)
!5448 = !DILocation(line: 391, column: 2, scope: !5444)
!5449 = !DILocation(line: 392, column: 1, scope: !5444)
!5450 = distinct !DISubprogram(name: "drm_getmagic", scope: !3, file: !3, line: 94, type: !4981, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5451)
!5451 = !{!5452, !5453, !5454, !5455, !5460}
!5452 = !DILocalVariable(name: "dev", arg: 1, scope: !5450, file: !3, line: 94, type: !4318)
!5453 = !DILocalVariable(name: "data", arg: 2, scope: !5450, file: !3, line: 94, type: !263)
!5454 = !DILocalVariable(name: "file_priv", arg: 3, scope: !5450, file: !3, line: 94, type: !4793)
!5455 = !DILocalVariable(name: "auth", scope: !5450, file: !3, line: 96, type: !5456)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_auth", file: !4812, line: 461, size: 32, elements: !5458)
!5458 = !{!5459}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5457, file: !4812, line: 462, baseType: !4811, size: 32)
!5460 = !DILocalVariable(name: "ret", scope: !5450, file: !3, line: 97, type: !109)
!5461 = !DILocation(line: 94, column: 37, scope: !5450)
!5462 = !DILocation(line: 94, column: 48, scope: !5450)
!5463 = !DILocation(line: 94, column: 71, scope: !5450)
!5464 = !DILocation(line: 96, column: 2, scope: !5450)
!5465 = !DILocation(line: 96, column: 19, scope: !5450)
!5466 = !DILocation(line: 96, column: 26, scope: !5450)
!5467 = !DILocation(line: 97, column: 2, scope: !5450)
!5468 = !DILocation(line: 97, column: 6, scope: !5450)
!5469 = !DILocation(line: 99, column: 14, scope: !5450)
!5470 = !DILocation(line: 99, column: 19, scope: !5450)
!5471 = !DILocation(line: 99, column: 2, scope: !5450)
!5472 = !DILocation(line: 100, column: 7, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 100, column: 6)
!5474 = !DILocation(line: 100, column: 18, scope: !5473)
!5475 = !DILocation(line: 100, column: 6, scope: !5450)
!5476 = !DILocation(line: 101, column: 20, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 100, column: 25)
!5478 = !DILocation(line: 101, column: 31, scope: !5477)
!5479 = !DILocation(line: 101, column: 39, scope: !5477)
!5480 = !DILocation(line: 101, column: 50, scope: !5477)
!5481 = !DILocation(line: 101, column: 9, scope: !5477)
!5482 = !DILocation(line: 101, column: 7, scope: !5477)
!5483 = !DILocation(line: 103, column: 7, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 103, column: 7)
!5485 = !DILocation(line: 103, column: 11, scope: !5484)
!5486 = !DILocation(line: 103, column: 7, scope: !5477)
!5487 = !DILocation(line: 104, column: 23, scope: !5484)
!5488 = !DILocation(line: 104, column: 4, scope: !5484)
!5489 = !DILocation(line: 104, column: 15, scope: !5484)
!5490 = !DILocation(line: 104, column: 21, scope: !5484)
!5491 = !DILocation(line: 105, column: 2, scope: !5477)
!5492 = !DILocation(line: 106, column: 16, scope: !5450)
!5493 = !DILocation(line: 106, column: 27, scope: !5450)
!5494 = !DILocation(line: 106, column: 2, scope: !5450)
!5495 = !DILocation(line: 106, column: 8, scope: !5450)
!5496 = !DILocation(line: 106, column: 14, scope: !5450)
!5497 = !DILocation(line: 107, column: 16, scope: !5450)
!5498 = !DILocation(line: 107, column: 21, scope: !5450)
!5499 = !DILocation(line: 107, column: 2, scope: !5450)
!5500 = !DILocation(line: 109, column: 2, scope: !5450)
!5501 = !DILocation(line: 111, column: 9, scope: !5450)
!5502 = !DILocation(line: 111, column: 13, scope: !5450)
!5503 = !DILocation(line: 111, column: 19, scope: !5450)
!5504 = !DILocation(line: 112, column: 1, scope: !5450)
!5505 = !DILocation(line: 111, column: 2, scope: !5450)
!5506 = !DISubprogram(name: "mutex_lock", scope: !748, file: !748, line: 227, type: !5507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{null, !5509}
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!5510 = !DISubprogram(name: "idr_alloc", scope: !370, file: !370, line: 114, type: !5511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{!109, !5513, !263, !109, !109, !264}
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!5514 = !DISubprogram(name: "mutex_unlock", scope: !748, file: !748, line: 246, type: !5507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5515 = !DISubprogram(name: "__drm_dev_dbg", scope: !209, file: !209, line: 411, type: !5516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{null, !5518, !4344, !208, !913, null}
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !5520, line: 16, size: 448, align: 64, elements: !5521)
!5520 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!5521 = !{!5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529}
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !5519, file: !5520, line: 21, baseType: !913, size: 64)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !5519, file: !5520, line: 22, baseType: !913, size: 64, offset: 64)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !5519, file: !5520, line: 23, baseType: !913, size: 64, offset: 128)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5519, file: !5520, line: 24, baseType: !913, size: 64, offset: 192)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !5519, file: !5520, line: 25, baseType: !7, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !5519, file: !5520, line: 27, baseType: !7, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5519, file: !5520, line: 52, baseType: !7, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5519, file: !5520, line: 57, baseType: !5530, size: 128, offset: 320)
!5530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5519, file: !5520, line: 54, size: 128, elements: !5531)
!5531 = !{!5532, !5547}
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !5530, file: !5520, line: 55, baseType: !5533, size: 128)
!5533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !2461, line: 359, size: 128, elements: !5534)
!5534 = !{!5535}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5533, file: !2461, line: 360, baseType: !5536, size: 128)
!5536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2461, line: 85, size: 128, elements: !5537)
!5537 = !{!5538, !5539}
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5536, file: !2461, line: 86, baseType: !284, size: 32)
!5539 = !DIDerivedType(tag: DW_TAG_member, scope: !5536, file: !2461, line: 101, baseType: !5540, size: 64, offset: 64)
!5540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5536, file: !2461, line: 101, size: 64, elements: !5541)
!5541 = !{!5542, !5543, !5544}
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5540, file: !2461, line: 102, baseType: !266, size: 64)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5540, file: !2461, line: 103, baseType: !2459, size: 64)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5540, file: !2461, line: 104, baseType: !5545, size: 64)
!5545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5546, size: 64)
!5546 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2461, line: 104, flags: DIFlagFwdDecl)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !5530, file: !5520, line: 56, baseType: !5548, size: 128)
!5548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !2461, line: 363, size: 128, elements: !5549)
!5549 = !{!5550}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5548, file: !2461, line: 364, baseType: !5536, size: 128)
!5551 = distinct !DISubprogram(name: "drm_authmagic", scope: !3, file: !3, line: 114, type: !4981, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5552)
!5552 = !{!5553, !5554, !5555, !5556, !5557}
!5553 = !DILocalVariable(name: "dev", arg: 1, scope: !5551, file: !3, line: 114, type: !4318)
!5554 = !DILocalVariable(name: "data", arg: 2, scope: !5551, file: !3, line: 114, type: !263)
!5555 = !DILocalVariable(name: "file_priv", arg: 3, scope: !5551, file: !3, line: 115, type: !4793)
!5556 = !DILocalVariable(name: "auth", scope: !5551, file: !3, line: 117, type: !5456)
!5557 = !DILocalVariable(name: "file", scope: !5551, file: !3, line: 118, type: !4793)
!5558 = !DILocation(line: 114, column: 38, scope: !5551)
!5559 = !DILocation(line: 114, column: 49, scope: !5551)
!5560 = !DILocation(line: 115, column: 22, scope: !5551)
!5561 = !DILocation(line: 117, column: 2, scope: !5551)
!5562 = !DILocation(line: 117, column: 19, scope: !5551)
!5563 = !DILocation(line: 117, column: 26, scope: !5551)
!5564 = !DILocation(line: 118, column: 2, scope: !5551)
!5565 = !DILocation(line: 118, column: 19, scope: !5551)
!5566 = !DILocation(line: 120, column: 2, scope: !5551)
!5567 = !DILocation(line: 122, column: 14, scope: !5551)
!5568 = !DILocation(line: 122, column: 19, scope: !5551)
!5569 = !DILocation(line: 122, column: 2, scope: !5551)
!5570 = !DILocation(line: 123, column: 19, scope: !5551)
!5571 = !DILocation(line: 123, column: 30, scope: !5551)
!5572 = !DILocation(line: 123, column: 38, scope: !5551)
!5573 = !DILocation(line: 123, column: 49, scope: !5551)
!5574 = !DILocation(line: 123, column: 55, scope: !5551)
!5575 = !DILocation(line: 123, column: 9, scope: !5551)
!5576 = !DILocation(line: 123, column: 7, scope: !5551)
!5577 = !DILocation(line: 124, column: 6, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 124, column: 6)
!5579 = !DILocation(line: 124, column: 6, scope: !5551)
!5580 = !DILocation(line: 125, column: 3, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 124, column: 12)
!5582 = !DILocation(line: 125, column: 9, scope: !5581)
!5583 = !DILocation(line: 125, column: 23, scope: !5581)
!5584 = !DILocation(line: 126, column: 16, scope: !5581)
!5585 = !DILocation(line: 126, column: 27, scope: !5581)
!5586 = !DILocation(line: 126, column: 35, scope: !5581)
!5587 = !DILocation(line: 126, column: 52, scope: !5581)
!5588 = !DILocation(line: 126, column: 58, scope: !5581)
!5589 = !DILocation(line: 126, column: 3, scope: !5581)
!5590 = !DILocation(line: 127, column: 2, scope: !5581)
!5591 = !DILocation(line: 128, column: 16, scope: !5551)
!5592 = !DILocation(line: 128, column: 21, scope: !5551)
!5593 = !DILocation(line: 128, column: 2, scope: !5551)
!5594 = !DILocation(line: 130, column: 9, scope: !5551)
!5595 = !DILocation(line: 131, column: 1, scope: !5551)
!5596 = !DILocation(line: 130, column: 2, scope: !5551)
!5597 = !DISubprogram(name: "idr_find", scope: !370, file: !370, line: 119, type: !5598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!263, !5600, !266}
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!5602 = !DISubprogram(name: "idr_replace", scope: !370, file: !370, line: 124, type: !5603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!263, !5513, !263, !266}
!5605 = distinct !DISubprogram(name: "drm_master_create", scope: !3, file: !3, line: 133, type: !5606, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5608)
!5606 = !DISubroutineType(types: !5607)
!5607 = !{!4312, !4318}
!5608 = !{!5609, !5610}
!5609 = !DILocalVariable(name: "dev", arg: 1, scope: !5605, file: !3, line: 133, type: !4318)
!5610 = !DILocalVariable(name: "master", scope: !5605, file: !3, line: 135, type: !4312)
!5611 = !DILocation(line: 133, column: 57, scope: !5605)
!5612 = !DILocation(line: 135, column: 2, scope: !5605)
!5613 = !DILocation(line: 135, column: 21, scope: !5605)
!5614 = !DILocation(line: 137, column: 11, scope: !5605)
!5615 = !DILocation(line: 137, column: 9, scope: !5605)
!5616 = !DILocation(line: 138, column: 7, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 138, column: 6)
!5618 = !DILocation(line: 138, column: 6, scope: !5605)
!5619 = !DILocation(line: 139, column: 3, scope: !5617)
!5620 = !DILocation(line: 141, column: 13, scope: !5605)
!5621 = !DILocation(line: 141, column: 21, scope: !5605)
!5622 = !DILocation(line: 141, column: 2, scope: !5605)
!5623 = !DILocation(line: 142, column: 25, scope: !5605)
!5624 = !DILocation(line: 142, column: 2, scope: !5605)
!5625 = !DILocation(line: 143, column: 17, scope: !5605)
!5626 = !DILocation(line: 143, column: 25, scope: !5605)
!5627 = !DILocation(line: 143, column: 2, scope: !5605)
!5628 = !DILocation(line: 144, column: 16, scope: !5605)
!5629 = !DILocation(line: 144, column: 2, scope: !5605)
!5630 = !DILocation(line: 144, column: 10, scope: !5605)
!5631 = !DILocation(line: 144, column: 14, scope: !5605)
!5632 = !DILocation(line: 147, column: 18, scope: !5605)
!5633 = !DILocation(line: 147, column: 26, scope: !5605)
!5634 = !DILocation(line: 147, column: 2, scope: !5605)
!5635 = !DILocation(line: 148, column: 18, scope: !5605)
!5636 = !DILocation(line: 148, column: 26, scope: !5605)
!5637 = !DILocation(line: 148, column: 2, scope: !5605)
!5638 = !DILocation(line: 149, column: 12, scope: !5605)
!5639 = !DILocation(line: 149, column: 20, scope: !5605)
!5640 = !DILocation(line: 149, column: 2, scope: !5605)
!5641 = !DILocation(line: 150, column: 17, scope: !5605)
!5642 = !DILocation(line: 150, column: 25, scope: !5605)
!5643 = !DILocation(line: 150, column: 2, scope: !5605)
!5644 = !DILocation(line: 152, column: 9, scope: !5605)
!5645 = !DILocation(line: 152, column: 2, scope: !5605)
!5646 = !DILocation(line: 153, column: 1, scope: !5605)
!5647 = distinct !DISubprogram(name: "kzalloc", scope: !245, file: !245, line: 719, type: !5648, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5650)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{!263, !1228, !264}
!5650 = !{!5651, !5652}
!5651 = !DILocalVariable(name: "size", arg: 1, scope: !5647, file: !245, line: 719, type: !1228)
!5652 = !DILocalVariable(name: "flags", arg: 2, scope: !5647, file: !245, line: 719, type: !264)
!5653 = !DILocation(line: 719, column: 52, scope: !5647)
!5654 = !DILocation(line: 719, column: 64, scope: !5647)
!5655 = !DILocation(line: 721, column: 17, scope: !5647)
!5656 = !DILocation(line: 721, column: 23, scope: !5647)
!5657 = !DILocation(line: 721, column: 29, scope: !5647)
!5658 = !DILocation(line: 721, column: 9, scope: !5647)
!5659 = !DILocation(line: 721, column: 2, scope: !5647)
!5660 = distinct !DISubprogram(name: "kref_init", scope: !2128, file: !2128, line: 29, type: !5246, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5661)
!5661 = !{!5662}
!5662 = !DILocalVariable(name: "kref", arg: 1, scope: !5660, file: !2128, line: 29, type: !5248)
!5663 = !DILocation(line: 29, column: 43, scope: !5660)
!5664 = !DILocation(line: 31, column: 16, scope: !5660)
!5665 = !DILocation(line: 31, column: 22, scope: !5660)
!5666 = !DILocation(line: 31, column: 2, scope: !5660)
!5667 = !DILocation(line: 32, column: 1, scope: !5660)
!5668 = distinct !DISubprogram(name: "drm_master_legacy_init", scope: !5669, file: !5669, line: 273, type: !5670, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5672)
!5669 = !DIFile(filename: "drivers/gpu/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "89022f5ca7f4b5332244e8bda2ac90b5")
!5670 = !DISubroutineType(types: !5671)
!5671 = !{null, !4312}
!5672 = !{!5673}
!5673 = !DILocalVariable(name: "master", arg: 1, scope: !5668, file: !5669, line: 273, type: !4312)
!5674 = !DILocation(line: 273, column: 62, scope: !5668)
!5675 = !DILocation(line: 273, column: 71, scope: !5668)
!5676 = distinct !DISubprogram(name: "idr_init_base", scope: !370, file: !370, line: 135, type: !5677, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5679)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{null, !5513, !109}
!5679 = !{!5680, !5681}
!5680 = !DILocalVariable(name: "idr", arg: 1, scope: !5676, file: !370, line: 135, type: !5513)
!5681 = !DILocalVariable(name: "base", arg: 2, scope: !5676, file: !370, line: 135, type: !109)
!5682 = !DILocation(line: 135, column: 46, scope: !5676)
!5683 = !DILocation(line: 135, column: 55, scope: !5676)
!5684 = !DILocation(line: 137, column: 2, scope: !5676)
!5685 = !DILocation(line: 138, column: 18, scope: !5676)
!5686 = !DILocation(line: 138, column: 2, scope: !5676)
!5687 = !DILocation(line: 138, column: 7, scope: !5676)
!5688 = !DILocation(line: 138, column: 16, scope: !5676)
!5689 = !DILocation(line: 139, column: 2, scope: !5676)
!5690 = !DILocation(line: 139, column: 7, scope: !5676)
!5691 = !DILocation(line: 139, column: 16, scope: !5676)
!5692 = !DILocation(line: 140, column: 1, scope: !5676)
!5693 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5694, file: !5694, line: 35, type: !5695, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5697)
!5694 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5695 = !DISubroutineType(types: !5696)
!5696 = !{null, !271}
!5697 = !{!5698}
!5698 = !DILocalVariable(name: "list", arg: 1, scope: !5693, file: !5694, line: 35, type: !271)
!5699 = !DILocation(line: 35, column: 53, scope: !5693)
!5700 = !DILocation(line: 37, column: 2, scope: !5693)
!5701 = !DILocation(line: 37, column: 2, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5693, file: !5694, line: 37, column: 2)
!5703 = !DILocation(line: 37, column: 2, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5702, file: !5694, line: 37, column: 2)
!5705 = !DILocation(line: 37, column: 2, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5702, file: !5694, line: 37, column: 2)
!5707 = !DILocation(line: 38, column: 2, scope: !5693)
!5708 = !DILocation(line: 38, column: 2, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5693, file: !5694, line: 38, column: 2)
!5710 = !DILocation(line: 38, column: 2, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5709, file: !5694, line: 38, column: 2)
!5712 = !DILocation(line: 38, column: 2, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5709, file: !5694, line: 38, column: 2)
!5714 = !DILocation(line: 39, column: 1, scope: !5693)
!5715 = distinct !DISubprogram(name: "idr_init", scope: !370, file: !370, line: 149, type: !5716, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5718)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{null, !5513}
!5718 = !{!5719}
!5719 = !DILocalVariable(name: "idr", arg: 1, scope: !5715, file: !370, line: 149, type: !5513)
!5720 = !DILocation(line: 149, column: 41, scope: !5715)
!5721 = !DILocation(line: 151, column: 16, scope: !5715)
!5722 = !DILocation(line: 151, column: 2, scope: !5715)
!5723 = !DILocation(line: 152, column: 1, scope: !5715)
!5724 = distinct !DISubprogram(name: "drm_setmaster_ioctl", scope: !3, file: !3, line: 248, type: !4981, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5725)
!5725 = !{!5726, !5727, !5728, !5729, !5730}
!5726 = !DILocalVariable(name: "dev", arg: 1, scope: !5724, file: !3, line: 248, type: !4318)
!5727 = !DILocalVariable(name: "data", arg: 2, scope: !5724, file: !3, line: 248, type: !263)
!5728 = !DILocalVariable(name: "file_priv", arg: 3, scope: !5724, file: !3, line: 249, type: !4793)
!5729 = !DILocalVariable(name: "ret", scope: !5724, file: !3, line: 251, type: !109)
!5730 = !DILabel(scope: !5724, name: "out_unlock", file: !3, line: 286)
!5731 = !DILocation(line: 248, column: 44, scope: !5724)
!5732 = !DILocation(line: 248, column: 55, scope: !5724)
!5733 = !DILocation(line: 249, column: 21, scope: !5724)
!5734 = !DILocation(line: 251, column: 2, scope: !5724)
!5735 = !DILocation(line: 251, column: 6, scope: !5724)
!5736 = !DILocation(line: 253, column: 14, scope: !5724)
!5737 = !DILocation(line: 253, column: 19, scope: !5724)
!5738 = !DILocation(line: 253, column: 2, scope: !5724)
!5739 = !DILocation(line: 255, column: 30, scope: !5724)
!5740 = !DILocation(line: 255, column: 35, scope: !5724)
!5741 = !DILocation(line: 255, column: 8, scope: !5724)
!5742 = !DILocation(line: 255, column: 6, scope: !5724)
!5743 = !DILocation(line: 256, column: 6, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 256, column: 6)
!5745 = !DILocation(line: 256, column: 6, scope: !5724)
!5746 = !DILocation(line: 257, column: 3, scope: !5744)
!5747 = !DILocation(line: 259, column: 35, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 259, column: 6)
!5749 = !DILocation(line: 259, column: 6, scope: !5748)
!5750 = !DILocation(line: 259, column: 6, scope: !5724)
!5751 = !DILocation(line: 260, column: 3, scope: !5748)
!5752 = !DILocation(line: 262, column: 6, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 262, column: 6)
!5754 = !DILocation(line: 262, column: 11, scope: !5753)
!5755 = !DILocation(line: 262, column: 6, scope: !5724)
!5756 = !DILocation(line: 263, column: 7, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5753, file: !3, line: 262, column: 19)
!5758 = !DILocation(line: 264, column: 3, scope: !5757)
!5759 = !DILocation(line: 267, column: 7, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 267, column: 6)
!5761 = !DILocation(line: 267, column: 18, scope: !5760)
!5762 = !DILocation(line: 267, column: 6, scope: !5724)
!5763 = !DILocation(line: 268, column: 7, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 267, column: 26)
!5765 = !DILocation(line: 269, column: 3, scope: !5764)
!5766 = !DILocation(line: 272, column: 7, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 272, column: 6)
!5768 = !DILocation(line: 272, column: 18, scope: !5767)
!5769 = !DILocation(line: 272, column: 6, scope: !5724)
!5770 = !DILocation(line: 273, column: 28, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 272, column: 29)
!5772 = !DILocation(line: 273, column: 33, scope: !5771)
!5773 = !DILocation(line: 273, column: 9, scope: !5771)
!5774 = !DILocation(line: 273, column: 7, scope: !5771)
!5775 = !DILocation(line: 274, column: 3, scope: !5771)
!5776 = !DILocation(line: 277, column: 6, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 277, column: 6)
!5778 = !DILocation(line: 277, column: 17, scope: !5777)
!5779 = !DILocation(line: 277, column: 25, scope: !5777)
!5780 = !DILocation(line: 277, column: 32, scope: !5777)
!5781 = !DILocation(line: 277, column: 6, scope: !5724)
!5782 = !DILocation(line: 278, column: 3, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 277, column: 41)
!5784 = !DILocation(line: 281, column: 7, scope: !5783)
!5785 = !DILocation(line: 282, column: 3, scope: !5783)
!5786 = !DILocation(line: 285, column: 17, scope: !5724)
!5787 = !DILocation(line: 285, column: 22, scope: !5724)
!5788 = !DILocation(line: 285, column: 2, scope: !5724)
!5789 = !DILocation(line: 286, column: 1, scope: !5724)
!5790 = !DILocation(line: 287, column: 16, scope: !5724)
!5791 = !DILocation(line: 287, column: 21, scope: !5724)
!5792 = !DILocation(line: 287, column: 2, scope: !5724)
!5793 = !DILocation(line: 288, column: 9, scope: !5724)
!5794 = !DILocation(line: 289, column: 1, scope: !5724)
!5795 = !DILocation(line: 288, column: 2, scope: !5724)
!5796 = distinct !DISubprogram(name: "drm_master_check_perm", scope: !3, file: !3, line: 236, type: !4791, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5797)
!5797 = !{!5798, !5799, !5800}
!5798 = !DILocalVariable(name: "dev", arg: 1, scope: !5796, file: !3, line: 236, type: !4318)
!5799 = !DILocalVariable(name: "file_priv", arg: 2, scope: !5796, file: !3, line: 236, type: !4793)
!5800 = !DILocalVariable(name: "__UNIQUE_ID_rcu306", scope: !5801, file: !3, line: 239, type: !276)
!5801 = distinct !DILexicalBlock(scope: !5802, file: !3, line: 239, column: 6)
!5802 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 238, column: 6)
!5803 = !DILocation(line: 236, column: 42, scope: !5796)
!5804 = !DILocation(line: 236, column: 64, scope: !5796)
!5805 = !DILocation(line: 238, column: 6, scope: !5802)
!5806 = !DILocation(line: 238, column: 17, scope: !5802)
!5807 = !DILocation(line: 238, column: 28, scope: !5802)
!5808 = !DILocation(line: 239, column: 6, scope: !5801)
!5809 = !DILocation(line: 239, column: 6, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 239, column: 6)
!5811 = !DILocation(line: 239, column: 6, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 239, column: 6)
!5813 = !DILocation(line: 239, column: 6, scope: !5802)
!5814 = !DILocation(line: 239, column: 54, scope: !5802)
!5815 = !DILocation(line: 239, column: 44, scope: !5802)
!5816 = !DILocation(line: 239, column: 41, scope: !5802)
!5817 = !DILocation(line: 238, column: 6, scope: !5796)
!5818 = !DILocation(line: 240, column: 3, scope: !5802)
!5819 = !DILocation(line: 242, column: 7, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 242, column: 6)
!5821 = !DILocation(line: 242, column: 6, scope: !5796)
!5822 = !DILocation(line: 243, column: 3, scope: !5820)
!5823 = !DILocation(line: 245, column: 2, scope: !5796)
!5824 = !DILocation(line: 246, column: 1, scope: !5796)
!5825 = distinct !DISubprogram(name: "drm_new_set_master", scope: !3, file: !3, line: 165, type: !4791, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5826)
!5826 = !{!5827, !5828, !5829, !5830, !5831, !5833}
!5827 = !DILocalVariable(name: "dev", arg: 1, scope: !5825, file: !3, line: 165, type: !4318)
!5828 = !DILocalVariable(name: "fpriv", arg: 2, scope: !5825, file: !3, line: 165, type: !4793)
!5829 = !DILocalVariable(name: "old_master", scope: !5825, file: !3, line: 167, type: !4312)
!5830 = !DILocalVariable(name: "new_master", scope: !5825, file: !3, line: 168, type: !4312)
!5831 = !DILocalVariable(name: "__ret_warn_on", scope: !5832, file: !3, line: 172, type: !109)
!5832 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 172, column: 2)
!5833 = !DILocalVariable(name: "__flags", scope: !5834, file: !3, line: 172, type: !109)
!5834 = distinct !DILexicalBlock(scope: !5835, file: !3, line: 172, column: 2)
!5835 = distinct !DILexicalBlock(scope: !5832, file: !3, line: 172, column: 2)
!5836 = !DILocation(line: 165, column: 50, scope: !5825)
!5837 = !DILocation(line: 165, column: 72, scope: !5825)
!5838 = !DILocation(line: 167, column: 2, scope: !5825)
!5839 = !DILocation(line: 167, column: 21, scope: !5825)
!5840 = !DILocation(line: 168, column: 2, scope: !5825)
!5841 = !DILocation(line: 168, column: 21, scope: !5825)
!5842 = !DILocation(line: 170, column: 2, scope: !5825)
!5843 = !DILocation(line: 170, column: 2, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 170, column: 2)
!5845 = !DILocation(line: 172, column: 2, scope: !5832)
!5846 = !DILocation(line: 172, column: 2, scope: !5835)
!5847 = !DILocation(line: 172, column: 2, scope: !5834)
!5848 = !DILocation(line: 172, column: 2, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5834, file: !3, line: 172, column: 2)
!5850 = !DILocation(line: 172, column: 2, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5834, file: !3, line: 172, column: 2)
!5852 = !{i64 2155457579, i64 2155457608, i64 2155457654, i64 2155457712, i64 2155457766, i64 2155457820, i64 2155457875, i64 2155457906, i64 2155458214, i64 2155458220, i64 2155458267, i64 2155458290, i64 2155458316}
!5853 = !DILocation(line: 172, column: 2, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5834, file: !3, line: 172, column: 2)
!5855 = !DILocation(line: 172, column: 2, scope: !5825)
!5856 = !DILocation(line: 173, column: 15, scope: !5825)
!5857 = !DILocation(line: 173, column: 22, scope: !5825)
!5858 = !DILocation(line: 173, column: 13, scope: !5825)
!5859 = !DILocation(line: 174, column: 33, scope: !5825)
!5860 = !DILocation(line: 174, column: 15, scope: !5825)
!5861 = !DILocation(line: 174, column: 13, scope: !5825)
!5862 = !DILocation(line: 175, column: 7, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 175, column: 6)
!5864 = !DILocation(line: 175, column: 6, scope: !5825)
!5865 = !DILocation(line: 176, column: 3, scope: !5863)
!5866 = !DILocation(line: 177, column: 13, scope: !5825)
!5867 = !DILocation(line: 177, column: 20, scope: !5825)
!5868 = !DILocation(line: 177, column: 2, scope: !5825)
!5869 = !DILocation(line: 178, column: 18, scope: !5825)
!5870 = !DILocation(line: 178, column: 2, scope: !5825)
!5871 = !DILocation(line: 178, column: 9, scope: !5825)
!5872 = !DILocation(line: 178, column: 16, scope: !5825)
!5873 = !DILocation(line: 179, column: 15, scope: !5825)
!5874 = !DILocation(line: 179, column: 22, scope: !5825)
!5875 = !DILocation(line: 179, column: 2, scope: !5825)
!5876 = !DILocation(line: 181, column: 2, scope: !5825)
!5877 = !DILocation(line: 181, column: 9, scope: !5825)
!5878 = !DILocation(line: 181, column: 19, scope: !5825)
!5879 = !DILocation(line: 182, column: 2, scope: !5825)
!5880 = !DILocation(line: 182, column: 9, scope: !5825)
!5881 = !DILocation(line: 182, column: 23, scope: !5825)
!5882 = !DILocation(line: 184, column: 17, scope: !5825)
!5883 = !DILocation(line: 184, column: 22, scope: !5825)
!5884 = !DILocation(line: 184, column: 2, scope: !5825)
!5885 = !DILocation(line: 186, column: 6, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 186, column: 6)
!5887 = !DILocation(line: 186, column: 6, scope: !5825)
!5888 = !DILocation(line: 187, column: 3, scope: !5886)
!5889 = !DILocation(line: 189, column: 2, scope: !5825)
!5890 = !DILocation(line: 190, column: 1, scope: !5825)
!5891 = distinct !DISubprogram(name: "drm_set_master", scope: !3, file: !3, line: 155, type: !4858, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5892)
!5892 = !{!5893, !5894, !5895}
!5893 = !DILocalVariable(name: "dev", arg: 1, scope: !5891, file: !3, line: 155, type: !4318)
!5894 = !DILocalVariable(name: "fpriv", arg: 2, scope: !5891, file: !3, line: 155, type: !4793)
!5895 = !DILocalVariable(name: "new_master", arg: 3, scope: !5891, file: !3, line: 156, type: !910)
!5896 = !DILocation(line: 155, column: 47, scope: !5891)
!5897 = !DILocation(line: 155, column: 69, scope: !5891)
!5898 = !DILocation(line: 156, column: 12, scope: !5891)
!5899 = !DILocation(line: 158, column: 31, scope: !5891)
!5900 = !DILocation(line: 158, column: 38, scope: !5891)
!5901 = !DILocation(line: 158, column: 16, scope: !5891)
!5902 = !DILocation(line: 158, column: 2, scope: !5891)
!5903 = !DILocation(line: 158, column: 7, scope: !5891)
!5904 = !DILocation(line: 158, column: 14, scope: !5891)
!5905 = !DILocation(line: 159, column: 6, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5891, file: !3, line: 159, column: 6)
!5907 = !DILocation(line: 159, column: 11, scope: !5906)
!5908 = !DILocation(line: 159, column: 19, scope: !5906)
!5909 = !DILocation(line: 159, column: 6, scope: !5891)
!5910 = !DILocation(line: 160, column: 3, scope: !5906)
!5911 = !DILocation(line: 160, column: 8, scope: !5906)
!5912 = !DILocation(line: 160, column: 16, scope: !5906)
!5913 = !DILocation(line: 160, column: 27, scope: !5906)
!5914 = !DILocation(line: 160, column: 32, scope: !5906)
!5915 = !DILocation(line: 160, column: 39, scope: !5906)
!5916 = !DILocation(line: 162, column: 2, scope: !5891)
!5917 = !DILocation(line: 162, column: 9, scope: !5891)
!5918 = !DILocation(line: 162, column: 20, scope: !5891)
!5919 = !DILocation(line: 163, column: 1, scope: !5891)
!5920 = distinct !DISubprogram(name: "drm_dropmaster_ioctl", scope: !3, file: !3, line: 299, type: !4981, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5921)
!5921 = !{!5922, !5923, !5924, !5925, !5926}
!5922 = !DILocalVariable(name: "dev", arg: 1, scope: !5920, file: !3, line: 299, type: !4318)
!5923 = !DILocalVariable(name: "data", arg: 2, scope: !5920, file: !3, line: 299, type: !263)
!5924 = !DILocalVariable(name: "file_priv", arg: 3, scope: !5920, file: !3, line: 300, type: !4793)
!5925 = !DILocalVariable(name: "ret", scope: !5920, file: !3, line: 302, type: !109)
!5926 = !DILabel(scope: !5920, name: "out_unlock", file: !3, line: 329)
!5927 = !DILocation(line: 299, column: 45, scope: !5920)
!5928 = !DILocation(line: 299, column: 56, scope: !5920)
!5929 = !DILocation(line: 300, column: 22, scope: !5920)
!5930 = !DILocation(line: 302, column: 2, scope: !5920)
!5931 = !DILocation(line: 302, column: 6, scope: !5920)
!5932 = !DILocation(line: 304, column: 14, scope: !5920)
!5933 = !DILocation(line: 304, column: 19, scope: !5920)
!5934 = !DILocation(line: 304, column: 2, scope: !5920)
!5935 = !DILocation(line: 306, column: 30, scope: !5920)
!5936 = !DILocation(line: 306, column: 35, scope: !5920)
!5937 = !DILocation(line: 306, column: 8, scope: !5920)
!5938 = !DILocation(line: 306, column: 6, scope: !5920)
!5939 = !DILocation(line: 307, column: 6, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 307, column: 6)
!5941 = !DILocation(line: 307, column: 6, scope: !5920)
!5942 = !DILocation(line: 308, column: 3, scope: !5940)
!5943 = !DILocation(line: 310, column: 36, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 310, column: 6)
!5945 = !DILocation(line: 310, column: 7, scope: !5944)
!5946 = !DILocation(line: 310, column: 6, scope: !5920)
!5947 = !DILocation(line: 311, column: 7, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 310, column: 48)
!5949 = !DILocation(line: 312, column: 3, scope: !5948)
!5950 = !DILocation(line: 315, column: 7, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 315, column: 6)
!5952 = !DILocation(line: 315, column: 12, scope: !5951)
!5953 = !DILocation(line: 315, column: 6, scope: !5920)
!5954 = !DILocation(line: 316, column: 7, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5951, file: !3, line: 315, column: 20)
!5956 = !DILocation(line: 317, column: 3, scope: !5955)
!5957 = !DILocation(line: 320, column: 6, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 320, column: 6)
!5959 = !DILocation(line: 320, column: 17, scope: !5958)
!5960 = !DILocation(line: 320, column: 25, scope: !5958)
!5961 = !DILocation(line: 320, column: 32, scope: !5958)
!5962 = !DILocation(line: 320, column: 6, scope: !5920)
!5963 = !DILocation(line: 321, column: 3, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 320, column: 41)
!5965 = !DILocation(line: 324, column: 7, scope: !5964)
!5966 = !DILocation(line: 325, column: 3, scope: !5964)
!5967 = !DILocation(line: 328, column: 18, scope: !5920)
!5968 = !DILocation(line: 328, column: 23, scope: !5920)
!5969 = !DILocation(line: 328, column: 2, scope: !5920)
!5970 = !DILocation(line: 329, column: 1, scope: !5920)
!5971 = !DILocation(line: 330, column: 16, scope: !5920)
!5972 = !DILocation(line: 330, column: 21, scope: !5920)
!5973 = !DILocation(line: 330, column: 2, scope: !5920)
!5974 = !DILocation(line: 331, column: 9, scope: !5920)
!5975 = !DILocation(line: 332, column: 1, scope: !5920)
!5976 = !DILocation(line: 331, column: 2, scope: !5920)
!5977 = distinct !DISubprogram(name: "drm_drop_master", scope: !3, file: !3, line: 291, type: !4848, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5978)
!5978 = !{!5979, !5980}
!5979 = !DILocalVariable(name: "dev", arg: 1, scope: !5977, file: !3, line: 291, type: !4318)
!5980 = !DILocalVariable(name: "fpriv", arg: 2, scope: !5977, file: !3, line: 292, type: !4793)
!5981 = !DILocation(line: 291, column: 48, scope: !5977)
!5982 = !DILocation(line: 292, column: 25, scope: !5977)
!5983 = !DILocation(line: 294, column: 6, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 294, column: 6)
!5985 = !DILocation(line: 294, column: 11, scope: !5984)
!5986 = !DILocation(line: 294, column: 19, scope: !5984)
!5987 = !DILocation(line: 294, column: 6, scope: !5977)
!5988 = !DILocation(line: 295, column: 3, scope: !5984)
!5989 = !DILocation(line: 295, column: 8, scope: !5984)
!5990 = !DILocation(line: 295, column: 16, scope: !5984)
!5991 = !DILocation(line: 295, column: 28, scope: !5984)
!5992 = !DILocation(line: 295, column: 33, scope: !5984)
!5993 = !DILocation(line: 296, column: 18, scope: !5977)
!5994 = !DILocation(line: 296, column: 23, scope: !5977)
!5995 = !DILocation(line: 296, column: 2, scope: !5977)
!5996 = !DILocation(line: 297, column: 1, scope: !5977)
!5997 = distinct !DISubprogram(name: "drm_master_open", scope: !3, file: !3, line: 334, type: !5998, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6000)
!5998 = !DISubroutineType(types: !5999)
!5999 = !{!109, !4793}
!6000 = !{!6001, !6002, !6003}
!6001 = !DILocalVariable(name: "file_priv", arg: 1, scope: !5997, file: !3, line: 334, type: !4793)
!6002 = !DILocalVariable(name: "dev", scope: !5997, file: !3, line: 336, type: !4318)
!6003 = !DILocalVariable(name: "ret", scope: !5997, file: !3, line: 337, type: !109)
!6004 = !DILocation(line: 334, column: 38, scope: !5997)
!6005 = !DILocation(line: 336, column: 2, scope: !5997)
!6006 = !DILocation(line: 336, column: 21, scope: !5997)
!6007 = !DILocation(line: 336, column: 27, scope: !5997)
!6008 = !DILocation(line: 336, column: 38, scope: !5997)
!6009 = !DILocation(line: 336, column: 45, scope: !5997)
!6010 = !DILocation(line: 337, column: 2, scope: !5997)
!6011 = !DILocation(line: 337, column: 6, scope: !5997)
!6012 = !DILocation(line: 342, column: 14, scope: !5997)
!6013 = !DILocation(line: 342, column: 19, scope: !5997)
!6014 = !DILocation(line: 342, column: 2, scope: !5997)
!6015 = !DILocation(line: 343, column: 7, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 343, column: 6)
!6017 = !DILocation(line: 343, column: 12, scope: !6016)
!6018 = !DILocation(line: 343, column: 6, scope: !5997)
!6019 = !DILocation(line: 344, column: 28, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 343, column: 20)
!6021 = !DILocation(line: 344, column: 33, scope: !6020)
!6022 = !DILocation(line: 344, column: 9, scope: !6020)
!6023 = !DILocation(line: 344, column: 7, scope: !6020)
!6024 = !DILocation(line: 345, column: 2, scope: !6020)
!6025 = !DILocation(line: 346, column: 14, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 345, column: 9)
!6027 = !DILocation(line: 346, column: 25, scope: !6026)
!6028 = !DILocation(line: 346, column: 3, scope: !6026)
!6029 = !DILocation(line: 347, column: 38, scope: !6026)
!6030 = !DILocation(line: 347, column: 43, scope: !6026)
!6031 = !DILocation(line: 347, column: 23, scope: !6026)
!6032 = !DILocation(line: 347, column: 3, scope: !6026)
!6033 = !DILocation(line: 347, column: 14, scope: !6026)
!6034 = !DILocation(line: 347, column: 21, scope: !6026)
!6035 = !DILocation(line: 348, column: 16, scope: !6026)
!6036 = !DILocation(line: 348, column: 27, scope: !6026)
!6037 = !DILocation(line: 348, column: 3, scope: !6026)
!6038 = !DILocation(line: 350, column: 16, scope: !5997)
!6039 = !DILocation(line: 350, column: 21, scope: !5997)
!6040 = !DILocation(line: 350, column: 2, scope: !5997)
!6041 = !DILocation(line: 352, column: 9, scope: !5997)
!6042 = !DILocation(line: 353, column: 1, scope: !5997)
!6043 = !DILocation(line: 352, column: 2, scope: !5997)
!6044 = distinct !DISubprogram(name: "drm_master_get", scope: !3, file: !3, line: 392, type: !6045, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6047)
!6045 = !DISubroutineType(types: !6046)
!6046 = !{!4312, !4312}
!6047 = !{!6048}
!6048 = !DILocalVariable(name: "master", arg: 1, scope: !6044, file: !3, line: 392, type: !4312)
!6049 = !DILocation(line: 392, column: 54, scope: !6044)
!6050 = !DILocation(line: 394, column: 12, scope: !6044)
!6051 = !DILocation(line: 394, column: 20, scope: !6044)
!6052 = !DILocation(line: 394, column: 2, scope: !6044)
!6053 = !DILocation(line: 395, column: 9, scope: !6044)
!6054 = !DILocation(line: 395, column: 2, scope: !6044)
!6055 = distinct !DISubprogram(name: "drm_master_release", scope: !3, file: !3, line: 355, type: !6056, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6058)
!6056 = !DISubroutineType(types: !6057)
!6057 = !{null, !4793}
!6058 = !{!6059, !6060, !6061, !6062}
!6059 = !DILocalVariable(name: "file_priv", arg: 1, scope: !6055, file: !3, line: 355, type: !4793)
!6060 = !DILocalVariable(name: "dev", scope: !6055, file: !3, line: 357, type: !4318)
!6061 = !DILocalVariable(name: "master", scope: !6055, file: !3, line: 358, type: !4312)
!6062 = !DILabel(scope: !6055, name: "out", file: !3, line: 372)
!6063 = !DILocation(line: 355, column: 42, scope: !6055)
!6064 = !DILocation(line: 357, column: 2, scope: !6055)
!6065 = !DILocation(line: 357, column: 21, scope: !6055)
!6066 = !DILocation(line: 357, column: 27, scope: !6055)
!6067 = !DILocation(line: 357, column: 38, scope: !6055)
!6068 = !DILocation(line: 357, column: 45, scope: !6055)
!6069 = !DILocation(line: 358, column: 2, scope: !6055)
!6070 = !DILocation(line: 358, column: 21, scope: !6055)
!6071 = !DILocation(line: 360, column: 14, scope: !6055)
!6072 = !DILocation(line: 360, column: 19, scope: !6055)
!6073 = !DILocation(line: 360, column: 2, scope: !6055)
!6074 = !DILocation(line: 361, column: 11, scope: !6055)
!6075 = !DILocation(line: 361, column: 22, scope: !6055)
!6076 = !DILocation(line: 361, column: 9, scope: !6055)
!6077 = !DILocation(line: 362, column: 6, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6055, file: !3, line: 362, column: 6)
!6079 = !DILocation(line: 362, column: 17, scope: !6078)
!6080 = !DILocation(line: 362, column: 6, scope: !6055)
!6081 = !DILocation(line: 363, column: 15, scope: !6078)
!6082 = !DILocation(line: 363, column: 26, scope: !6078)
!6083 = !DILocation(line: 363, column: 34, scope: !6078)
!6084 = !DILocation(line: 363, column: 45, scope: !6078)
!6085 = !DILocation(line: 363, column: 56, scope: !6078)
!6086 = !DILocation(line: 363, column: 3, scope: !6078)
!6087 = !DILocation(line: 365, column: 36, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6055, file: !3, line: 365, column: 6)
!6089 = !DILocation(line: 365, column: 7, scope: !6088)
!6090 = !DILocation(line: 365, column: 6, scope: !6055)
!6091 = !DILocation(line: 366, column: 3, scope: !6088)
!6092 = !DILocation(line: 368, column: 33, scope: !6055)
!6093 = !DILocation(line: 368, column: 38, scope: !6055)
!6094 = !DILocation(line: 368, column: 2, scope: !6055)
!6095 = !DILocation(line: 370, column: 6, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6055, file: !3, line: 370, column: 6)
!6097 = !DILocation(line: 370, column: 11, scope: !6096)
!6098 = !DILocation(line: 370, column: 21, scope: !6096)
!6099 = !DILocation(line: 370, column: 32, scope: !6096)
!6100 = !DILocation(line: 370, column: 18, scope: !6096)
!6101 = !DILocation(line: 370, column: 6, scope: !6055)
!6102 = !DILocation(line: 371, column: 19, scope: !6096)
!6103 = !DILocation(line: 371, column: 24, scope: !6096)
!6104 = !DILocation(line: 371, column: 3, scope: !6096)
!6105 = !DILocation(line: 372, column: 1, scope: !6055)
!6106 = !DILocation(line: 373, column: 29, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6055, file: !3, line: 373, column: 6)
!6108 = !DILocation(line: 373, column: 6, scope: !6107)
!6109 = !DILocation(line: 373, column: 50, scope: !6107)
!6110 = !DILocation(line: 373, column: 53, scope: !6107)
!6111 = !DILocation(line: 373, column: 64, scope: !6107)
!6112 = !DILocation(line: 373, column: 6, scope: !6055)
!6113 = !DILocation(line: 377, column: 20, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 373, column: 75)
!6115 = !DILocation(line: 377, column: 3, scope: !6114)
!6116 = !DILocation(line: 378, column: 2, scope: !6114)
!6117 = !DILocation(line: 381, column: 6, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6055, file: !3, line: 381, column: 6)
!6119 = !DILocation(line: 381, column: 17, scope: !6118)
!6120 = !DILocation(line: 381, column: 6, scope: !6055)
!6121 = !DILocation(line: 382, column: 19, scope: !6118)
!6122 = !DILocation(line: 382, column: 30, scope: !6118)
!6123 = !DILocation(line: 382, column: 3, scope: !6118)
!6124 = !DILocation(line: 383, column: 16, scope: !6055)
!6125 = !DILocation(line: 383, column: 21, scope: !6055)
!6126 = !DILocation(line: 383, column: 2, scope: !6055)
!6127 = !DILocation(line: 384, column: 1, scope: !6055)
!6128 = !DISubprogram(name: "idr_remove", scope: !370, file: !370, line: 118, type: !6129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6129 = !DISubroutineType(types: !6130)
!6130 = !{!263, !5513, !266}
!6131 = distinct !DISubprogram(name: "drm_legacy_lock_master_cleanup", scope: !5669, file: !5669, line: 267, type: !6132, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6134)
!6132 = !DISubroutineType(types: !6133)
!6133 = !{null, !4318, !4312}
!6134 = !{!6135, !6136}
!6135 = !DILocalVariable(name: "dev", arg: 1, scope: !6131, file: !5669, line: 267, type: !4318)
!6136 = !DILocalVariable(name: "master", arg: 2, scope: !6131, file: !5669, line: 267, type: !4312)
!6137 = !DILocation(line: 267, column: 70, scope: !6131)
!6138 = !DILocation(line: 267, column: 94, scope: !6131)
!6139 = !DILocation(line: 267, column: 103, scope: !6131)
!6140 = distinct !DISubprogram(name: "drm_core_check_feature", scope: !227, file: !227, line: 566, type: !6141, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6145)
!6141 = !DISubroutineType(types: !6142)
!6142 = !{!910, !6143, !226}
!6143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6144, size: 64)
!6144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4319)
!6145 = !{!6146, !6147}
!6146 = !DILocalVariable(name: "dev", arg: 1, scope: !6140, file: !227, line: 566, type: !6143)
!6147 = !DILocalVariable(name: "feature", arg: 2, scope: !6140, file: !227, line: 567, type: !226)
!6148 = !DILocation(line: 566, column: 68, scope: !6140)
!6149 = !DILocation(line: 567, column: 32, scope: !6140)
!6150 = !DILocation(line: 569, column: 37, scope: !6140)
!6151 = !DILocation(line: 569, column: 42, scope: !6140)
!6152 = !DILocation(line: 569, column: 9, scope: !6140)
!6153 = !DILocation(line: 569, column: 2, scope: !6140)
!6154 = !DISubprogram(name: "drm_lease_revoke", scope: !6155, file: !6155, line: 21, type: !5670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6155 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f6d675704e04807ddd52843c3d74a46")
!6156 = distinct !DISubprogram(name: "drm_master_put", scope: !3, file: !3, line: 448, type: !6157, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6160)
!6157 = !DISubroutineType(types: !6158)
!6158 = !{null, !6159}
!6159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!6160 = !{!6161}
!6161 = !DILocalVariable(name: "master", arg: 1, scope: !6156, file: !3, line: 448, type: !6159)
!6162 = !DILocation(line: 448, column: 41, scope: !6156)
!6163 = !DILocation(line: 450, column: 14, scope: !6156)
!6164 = !DILocation(line: 450, column: 13, scope: !6156)
!6165 = !DILocation(line: 450, column: 23, scope: !6156)
!6166 = !DILocation(line: 450, column: 2, scope: !6156)
!6167 = !DILocation(line: 451, column: 3, scope: !6156)
!6168 = !DILocation(line: 451, column: 10, scope: !6156)
!6169 = !DILocation(line: 452, column: 1, scope: !6156)
!6170 = distinct !DISubprogram(name: "kref_get", scope: !2128, file: !2128, line: 43, type: !5246, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6171)
!6171 = !{!6172}
!6172 = !DILocalVariable(name: "kref", arg: 1, scope: !6170, file: !2128, line: 43, type: !5248)
!6173 = !DILocation(line: 43, column: 42, scope: !6170)
!6174 = !DILocation(line: 45, column: 16, scope: !6170)
!6175 = !DILocation(line: 45, column: 22, scope: !6170)
!6176 = !DILocation(line: 45, column: 2, scope: !6170)
!6177 = !DILocation(line: 46, column: 1, scope: !6170)
!6178 = distinct !DISubprogram(name: "drm_file_get_master", scope: !3, file: !3, line: 409, type: !6179, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6181)
!6179 = !DISubroutineType(types: !6180)
!6180 = !{!4312, !4793}
!6181 = !{!6182, !6183, !6184}
!6182 = !DILocalVariable(name: "file_priv", arg: 1, scope: !6178, file: !3, line: 409, type: !4793)
!6183 = !DILocalVariable(name: "master", scope: !6178, file: !3, line: 411, type: !4312)
!6184 = !DILabel(scope: !6178, name: "unlock", file: !3, line: 418)
!6185 = !DILocation(line: 409, column: 57, scope: !6178)
!6186 = !DILocation(line: 411, column: 2, scope: !6178)
!6187 = !DILocation(line: 411, column: 21, scope: !6178)
!6188 = !DILocation(line: 413, column: 13, scope: !6178)
!6189 = !DILocation(line: 413, column: 24, scope: !6178)
!6190 = !DILocation(line: 413, column: 2, scope: !6178)
!6191 = !DILocation(line: 414, column: 7, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 414, column: 6)
!6193 = !DILocation(line: 414, column: 18, scope: !6192)
!6194 = !DILocation(line: 414, column: 6, scope: !6178)
!6195 = !DILocation(line: 415, column: 3, scope: !6192)
!6196 = !DILocation(line: 416, column: 26, scope: !6178)
!6197 = !DILocation(line: 416, column: 37, scope: !6178)
!6198 = !DILocation(line: 416, column: 11, scope: !6178)
!6199 = !DILocation(line: 416, column: 9, scope: !6178)
!6200 = !DILocation(line: 416, column: 2, scope: !6178)
!6201 = !DILocation(line: 418, column: 1, scope: !6178)
!6202 = !DILocation(line: 419, column: 15, scope: !6178)
!6203 = !DILocation(line: 419, column: 26, scope: !6178)
!6204 = !DILocation(line: 419, column: 2, scope: !6178)
!6205 = !DILocation(line: 420, column: 9, scope: !6178)
!6206 = !DILocation(line: 421, column: 1, scope: !6178)
!6207 = !DILocation(line: 420, column: 2, scope: !6178)
!6208 = distinct !DISubprogram(name: "kref_put", scope: !2128, file: !2128, line: 62, type: !6209, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6211)
!6209 = !DISubroutineType(types: !6210)
!6210 = !{!109, !5248, !5245}
!6211 = !{!6212, !6213}
!6212 = !DILocalVariable(name: "kref", arg: 1, scope: !6208, file: !2128, line: 62, type: !5248)
!6213 = !DILocalVariable(name: "release", arg: 2, scope: !6208, file: !2128, line: 62, type: !5245)
!6214 = !DILocation(line: 62, column: 41, scope: !6208)
!6215 = !DILocation(line: 62, column: 54, scope: !6208)
!6216 = !DILocation(line: 64, column: 29, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6208, file: !2128, line: 64, column: 6)
!6218 = !DILocation(line: 64, column: 35, scope: !6217)
!6219 = !DILocation(line: 64, column: 6, scope: !6217)
!6220 = !DILocation(line: 64, column: 6, scope: !6208)
!6221 = !DILocation(line: 65, column: 3, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6217, file: !2128, line: 64, column: 46)
!6223 = !DILocation(line: 65, column: 11, scope: !6222)
!6224 = !DILocation(line: 66, column: 3, scope: !6222)
!6225 = !DILocation(line: 68, column: 2, scope: !6208)
!6226 = !DILocation(line: 69, column: 1, scope: !6208)
!6227 = distinct !DISubprogram(name: "drm_master_destroy", scope: !3, file: !3, line: 424, type: !5246, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6228)
!6228 = !{!6229, !6230, !6231, !6233}
!6229 = !DILocalVariable(name: "kref", arg: 1, scope: !6227, file: !3, line: 424, type: !5248)
!6230 = !DILocalVariable(name: "master", scope: !6227, file: !3, line: 426, type: !4312)
!6231 = !DILocalVariable(name: "__mptr", scope: !6232, file: !3, line: 426, type: !263)
!6232 = distinct !DILexicalBlock(scope: !6227, file: !3, line: 426, column: 30)
!6233 = !DILocalVariable(name: "dev", scope: !6227, file: !3, line: 427, type: !4318)
!6234 = !DILocation(line: 424, column: 45, scope: !6227)
!6235 = !DILocation(line: 426, column: 2, scope: !6227)
!6236 = !DILocation(line: 426, column: 21, scope: !6227)
!6237 = !DILocation(line: 426, column: 30, scope: !6232)
!6238 = !DILocation(line: 426, column: 30, scope: !6227)
!6239 = !DILocation(line: 427, column: 2, scope: !6227)
!6240 = !DILocation(line: 427, column: 21, scope: !6227)
!6241 = !DILocation(line: 427, column: 27, scope: !6227)
!6242 = !DILocation(line: 427, column: 35, scope: !6227)
!6243 = !DILocation(line: 429, column: 29, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6227, file: !3, line: 429, column: 6)
!6245 = !DILocation(line: 429, column: 6, scope: !6244)
!6246 = !DILocation(line: 429, column: 6, scope: !6227)
!6247 = !DILocation(line: 430, column: 21, scope: !6244)
!6248 = !DILocation(line: 430, column: 3, scope: !6244)
!6249 = !DILocation(line: 432, column: 27, scope: !6227)
!6250 = !DILocation(line: 432, column: 32, scope: !6227)
!6251 = !DILocation(line: 432, column: 2, scope: !6227)
!6252 = !DILocation(line: 434, column: 15, scope: !6227)
!6253 = !DILocation(line: 434, column: 23, scope: !6227)
!6254 = !DILocation(line: 434, column: 2, scope: !6227)
!6255 = !DILocation(line: 435, column: 15, scope: !6227)
!6256 = !DILocation(line: 435, column: 23, scope: !6227)
!6257 = !DILocation(line: 435, column: 2, scope: !6227)
!6258 = !DILocation(line: 436, column: 15, scope: !6227)
!6259 = !DILocation(line: 436, column: 23, scope: !6227)
!6260 = !DILocation(line: 436, column: 2, scope: !6227)
!6261 = !DILocation(line: 438, column: 8, scope: !6227)
!6262 = !DILocation(line: 438, column: 16, scope: !6227)
!6263 = !DILocation(line: 438, column: 2, scope: !6227)
!6264 = !DILocation(line: 439, column: 8, scope: !6227)
!6265 = !DILocation(line: 439, column: 2, scope: !6227)
!6266 = !DILocation(line: 440, column: 1, scope: !6227)
!6267 = distinct !DISubprogram(name: "drm_master_internal_acquire", scope: !3, file: !3, line: 456, type: !6268, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6270)
!6268 = !DISubroutineType(types: !6269)
!6269 = !{!910, !4318}
!6270 = !{!6271}
!6271 = !DILocalVariable(name: "dev", arg: 1, scope: !6267, file: !3, line: 456, type: !4318)
!6272 = !DILocation(line: 456, column: 53, scope: !6267)
!6273 = !DILocation(line: 458, column: 14, scope: !6267)
!6274 = !DILocation(line: 458, column: 19, scope: !6267)
!6275 = !DILocation(line: 458, column: 2, scope: !6267)
!6276 = !DILocation(line: 459, column: 6, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 459, column: 6)
!6278 = !DILocation(line: 459, column: 11, scope: !6277)
!6279 = !DILocation(line: 459, column: 6, scope: !6267)
!6280 = !DILocation(line: 460, column: 17, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6277, file: !3, line: 459, column: 19)
!6282 = !DILocation(line: 460, column: 22, scope: !6281)
!6283 = !DILocation(line: 460, column: 3, scope: !6281)
!6284 = !DILocation(line: 461, column: 3, scope: !6281)
!6285 = !DILocation(line: 464, column: 2, scope: !6267)
!6286 = !DILocation(line: 465, column: 1, scope: !6267)
!6287 = distinct !DISubprogram(name: "drm_master_internal_release", scope: !3, file: !3, line: 469, type: !4852, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6288)
!6288 = !{!6289}
!6289 = !DILocalVariable(name: "dev", arg: 1, scope: !6287, file: !3, line: 469, type: !4318)
!6290 = !DILocation(line: 469, column: 53, scope: !6287)
!6291 = !DILocation(line: 471, column: 16, scope: !6287)
!6292 = !DILocation(line: 471, column: 21, scope: !6287)
!6293 = !DILocation(line: 471, column: 2, scope: !6287)
!6294 = !DILocation(line: 472, column: 1, scope: !6287)
!6295 = !DISubprogram(name: "_raw_spin_lock", scope: !6296, file: !6296, line: 22, type: !6297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6296 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6297 = !DISubroutineType(types: !6298)
!6298 = !{null, !6299}
!6299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!6300 = !DISubprogram(name: "drm_lease_owner", scope: !6155, file: !6155, line: 13, type: !6045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6301 = !DISubprogram(name: "_raw_spin_unlock", scope: !6296, file: !6296, line: 39, type: !6297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6302 = distinct !DISubprogram(name: "kmalloc", scope: !245, file: !245, line: 591, type: !5648, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6303)
!6303 = !{!6304, !6305, !6306}
!6304 = !DILocalVariable(name: "size", arg: 1, scope: !6302, file: !245, line: 591, type: !1228)
!6305 = !DILocalVariable(name: "flags", arg: 2, scope: !6302, file: !245, line: 591, type: !264)
!6306 = !DILocalVariable(name: "index", scope: !6307, file: !245, line: 594, type: !7)
!6307 = distinct !DILexicalBlock(scope: !6308, file: !245, line: 593, column: 42)
!6308 = distinct !DILexicalBlock(scope: !6302, file: !245, line: 593, column: 6)
!6309 = !DILocation(line: 591, column: 61, scope: !6302)
!6310 = !DILocation(line: 591, column: 73, scope: !6302)
!6311 = !DILocation(line: 593, column: 27, scope: !6308)
!6312 = !DILocation(line: 593, column: 6, scope: !6308)
!6313 = !DILocation(line: 593, column: 33, scope: !6308)
!6314 = !DILocation(line: 593, column: 36, scope: !6308)
!6315 = !DILocation(line: 593, column: 6, scope: !6302)
!6316 = !DILocation(line: 594, column: 3, scope: !6307)
!6317 = !DILocation(line: 594, column: 16, scope: !6307)
!6318 = !DILocation(line: 596, column: 7, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6307, file: !245, line: 596, column: 7)
!6320 = !DILocation(line: 596, column: 12, scope: !6319)
!6321 = !DILocation(line: 596, column: 7, scope: !6307)
!6322 = !DILocation(line: 597, column: 25, scope: !6319)
!6323 = !DILocation(line: 597, column: 31, scope: !6319)
!6324 = !DILocation(line: 597, column: 11, scope: !6319)
!6325 = !DILocation(line: 597, column: 4, scope: !6319)
!6326 = !DILocation(line: 599, column: 11, scope: !6307)
!6327 = !DILocation(line: 599, column: 9, scope: !6307)
!6328 = !DILocation(line: 601, column: 33, scope: !6307)
!6329 = !DILocation(line: 601, column: 40, scope: !6307)
!6330 = !DILocation(line: 601, column: 20, scope: !6307)
!6331 = !DILocation(line: 601, column: 5, scope: !6307)
!6332 = !DILocation(line: 601, column: 51, scope: !6307)
!6333 = !DILocation(line: 602, column: 5, scope: !6307)
!6334 = !DILocation(line: 602, column: 12, scope: !6307)
!6335 = !DILocation(line: 600, column: 10, scope: !6307)
!6336 = !DILocation(line: 600, column: 3, scope: !6307)
!6337 = !DILocation(line: 603, column: 2, scope: !6308)
!6338 = !DILocation(line: 604, column: 19, scope: !6302)
!6339 = !DILocation(line: 604, column: 25, scope: !6302)
!6340 = !DILocation(line: 604, column: 9, scope: !6302)
!6341 = !DILocation(line: 604, column: 2, scope: !6302)
!6342 = !DILocation(line: 605, column: 1, scope: !6302)
!6343 = !DISubprogram(name: "kmalloc_large", scope: !245, file: !245, line: 531, type: !5648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6344 = distinct !DISubprogram(name: "__kmalloc_index", scope: !245, file: !245, line: 444, type: !6345, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6347)
!6345 = !DISubroutineType(types: !6346)
!6346 = !{!7, !1228, !910}
!6347 = !{!6348, !6349}
!6348 = !DILocalVariable(name: "size", arg: 1, scope: !6344, file: !245, line: 444, type: !1228)
!6349 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6344, file: !245, line: 445, type: !910)
!6350 = !DILocation(line: 444, column: 60, scope: !6344)
!6351 = !DILocation(line: 445, column: 16, scope: !6344)
!6352 = !DILocation(line: 447, column: 7, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 447, column: 6)
!6354 = !DILocation(line: 447, column: 6, scope: !6344)
!6355 = !DILocation(line: 448, column: 3, scope: !6353)
!6356 = !DILocation(line: 450, column: 6, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 450, column: 6)
!6358 = !DILocation(line: 450, column: 11, scope: !6357)
!6359 = !DILocation(line: 450, column: 6, scope: !6344)
!6360 = !DILocation(line: 451, column: 3, scope: !6357)
!6361 = !DILocation(line: 453, column: 32, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 453, column: 6)
!6363 = !DILocation(line: 453, column: 37, scope: !6362)
!6364 = !DILocation(line: 453, column: 42, scope: !6362)
!6365 = !DILocation(line: 453, column: 45, scope: !6362)
!6366 = !DILocation(line: 453, column: 50, scope: !6362)
!6367 = !DILocation(line: 453, column: 6, scope: !6344)
!6368 = !DILocation(line: 454, column: 3, scope: !6362)
!6369 = !DILocation(line: 455, column: 32, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 455, column: 6)
!6371 = !DILocation(line: 455, column: 37, scope: !6370)
!6372 = !DILocation(line: 455, column: 43, scope: !6370)
!6373 = !DILocation(line: 455, column: 46, scope: !6370)
!6374 = !DILocation(line: 455, column: 51, scope: !6370)
!6375 = !DILocation(line: 455, column: 6, scope: !6344)
!6376 = !DILocation(line: 456, column: 3, scope: !6370)
!6377 = !DILocation(line: 457, column: 6, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 457, column: 6)
!6379 = !DILocation(line: 457, column: 11, scope: !6378)
!6380 = !DILocation(line: 457, column: 6, scope: !6344)
!6381 = !DILocation(line: 457, column: 26, scope: !6378)
!6382 = !DILocation(line: 458, column: 6, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 458, column: 6)
!6384 = !DILocation(line: 458, column: 11, scope: !6383)
!6385 = !DILocation(line: 458, column: 6, scope: !6344)
!6386 = !DILocation(line: 458, column: 26, scope: !6383)
!6387 = !DILocation(line: 459, column: 6, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 459, column: 6)
!6389 = !DILocation(line: 459, column: 11, scope: !6388)
!6390 = !DILocation(line: 459, column: 6, scope: !6344)
!6391 = !DILocation(line: 459, column: 26, scope: !6388)
!6392 = !DILocation(line: 460, column: 6, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 460, column: 6)
!6394 = !DILocation(line: 460, column: 11, scope: !6393)
!6395 = !DILocation(line: 460, column: 6, scope: !6344)
!6396 = !DILocation(line: 460, column: 26, scope: !6393)
!6397 = !DILocation(line: 461, column: 6, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 461, column: 6)
!6399 = !DILocation(line: 461, column: 11, scope: !6398)
!6400 = !DILocation(line: 461, column: 6, scope: !6344)
!6401 = !DILocation(line: 461, column: 26, scope: !6398)
!6402 = !DILocation(line: 462, column: 6, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 462, column: 6)
!6404 = !DILocation(line: 462, column: 11, scope: !6403)
!6405 = !DILocation(line: 462, column: 6, scope: !6344)
!6406 = !DILocation(line: 462, column: 26, scope: !6403)
!6407 = !DILocation(line: 463, column: 6, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 463, column: 6)
!6409 = !DILocation(line: 463, column: 11, scope: !6408)
!6410 = !DILocation(line: 463, column: 6, scope: !6344)
!6411 = !DILocation(line: 463, column: 26, scope: !6408)
!6412 = !DILocation(line: 464, column: 6, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 464, column: 6)
!6414 = !DILocation(line: 464, column: 11, scope: !6413)
!6415 = !DILocation(line: 464, column: 6, scope: !6344)
!6416 = !DILocation(line: 464, column: 26, scope: !6413)
!6417 = !DILocation(line: 465, column: 6, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 465, column: 6)
!6419 = !DILocation(line: 465, column: 11, scope: !6418)
!6420 = !DILocation(line: 465, column: 6, scope: !6344)
!6421 = !DILocation(line: 465, column: 26, scope: !6418)
!6422 = !DILocation(line: 466, column: 6, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 466, column: 6)
!6424 = !DILocation(line: 466, column: 11, scope: !6423)
!6425 = !DILocation(line: 466, column: 6, scope: !6344)
!6426 = !DILocation(line: 466, column: 26, scope: !6423)
!6427 = !DILocation(line: 467, column: 6, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 467, column: 6)
!6429 = !DILocation(line: 467, column: 11, scope: !6428)
!6430 = !DILocation(line: 467, column: 6, scope: !6344)
!6431 = !DILocation(line: 467, column: 26, scope: !6428)
!6432 = !DILocation(line: 468, column: 6, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 468, column: 6)
!6434 = !DILocation(line: 468, column: 11, scope: !6433)
!6435 = !DILocation(line: 468, column: 6, scope: !6344)
!6436 = !DILocation(line: 468, column: 26, scope: !6433)
!6437 = !DILocation(line: 469, column: 6, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 469, column: 6)
!6439 = !DILocation(line: 469, column: 11, scope: !6438)
!6440 = !DILocation(line: 469, column: 6, scope: !6344)
!6441 = !DILocation(line: 469, column: 26, scope: !6438)
!6442 = !DILocation(line: 470, column: 6, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 470, column: 6)
!6444 = !DILocation(line: 470, column: 11, scope: !6443)
!6445 = !DILocation(line: 470, column: 6, scope: !6344)
!6446 = !DILocation(line: 470, column: 26, scope: !6443)
!6447 = !DILocation(line: 471, column: 6, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 471, column: 6)
!6449 = !DILocation(line: 471, column: 11, scope: !6448)
!6450 = !DILocation(line: 471, column: 6, scope: !6344)
!6451 = !DILocation(line: 471, column: 26, scope: !6448)
!6452 = !DILocation(line: 472, column: 6, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 472, column: 6)
!6454 = !DILocation(line: 472, column: 11, scope: !6453)
!6455 = !DILocation(line: 472, column: 6, scope: !6344)
!6456 = !DILocation(line: 472, column: 26, scope: !6453)
!6457 = !DILocation(line: 473, column: 6, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 473, column: 6)
!6459 = !DILocation(line: 473, column: 11, scope: !6458)
!6460 = !DILocation(line: 473, column: 6, scope: !6344)
!6461 = !DILocation(line: 473, column: 26, scope: !6458)
!6462 = !DILocation(line: 474, column: 6, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 474, column: 6)
!6464 = !DILocation(line: 474, column: 11, scope: !6463)
!6465 = !DILocation(line: 474, column: 6, scope: !6344)
!6466 = !DILocation(line: 474, column: 27, scope: !6463)
!6467 = !DILocation(line: 475, column: 6, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 475, column: 6)
!6469 = !DILocation(line: 475, column: 11, scope: !6468)
!6470 = !DILocation(line: 475, column: 6, scope: !6344)
!6471 = !DILocation(line: 475, column: 32, scope: !6468)
!6472 = !DILocation(line: 477, column: 50, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6344, file: !245, line: 477, column: 6)
!6474 = !DILocation(line: 477, column: 6, scope: !6344)
!6475 = !DILocation(line: 478, column: 3, scope: !6473)
!6476 = !DILocation(line: 478, column: 3, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6478, file: !245, line: 478, column: 3)
!6478 = distinct !DILexicalBlock(scope: !6473, file: !245, line: 478, column: 3)
!6479 = !{i32 -2143549961}
!6480 = !DILocation(line: 478, column: 3, scope: !6478)
!6481 = !DILocation(line: 480, column: 3, scope: !6473)
!6482 = !DILocation(line: 480, column: 3, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6473, file: !245, line: 480, column: 3)
!6484 = !DILocation(line: 480, column: 3, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6483, file: !245, line: 480, column: 3)
!6486 = !DILocation(line: 480, column: 3, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6483, file: !245, line: 480, column: 3)
!6488 = !{i64 2151417538, i64 2151417567, i64 2151417613, i64 2151417671, i64 2151417725, i64 2151417779, i64 2151417834, i64 2151417865}
!6489 = !DILocation(line: 483, column: 2, scope: !6344)
!6490 = !DILocation(line: 484, column: 1, scope: !6344)
!6491 = !DISubprogram(name: "kmalloc_trace", scope: !245, file: !245, line: 525, type: !6492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6492 = !DISubroutineType(types: !6493)
!6493 = !{!263, !4285, !264, !1228}
!6494 = distinct !DISubprogram(name: "kmalloc_type", scope: !245, file: !245, line: 401, type: !6495, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6497)
!6495 = !DISubroutineType(types: !6496)
!6496 = !{!244, !264, !266}
!6497 = !{!6498, !6499}
!6498 = !DILocalVariable(name: "flags", arg: 1, scope: !6494, file: !245, line: 401, type: !264)
!6499 = !DILocalVariable(name: "caller", arg: 2, scope: !6494, file: !245, line: 401, type: !266)
!6500 = !DILocation(line: 401, column: 67, scope: !6494)
!6501 = !DILocation(line: 401, column: 88, scope: !6494)
!6502 = !DILocation(line: 407, column: 6, scope: !6503)
!6503 = distinct !DILexicalBlock(scope: !6494, file: !245, line: 407, column: 6)
!6504 = !DILocation(line: 407, column: 6, scope: !6494)
!6505 = !DILocation(line: 413, column: 3, scope: !6503)
!6506 = !DILocation(line: 423, column: 38, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !6494, file: !245, line: 423, column: 6)
!6508 = !DILocation(line: 423, column: 44, scope: !6507)
!6509 = !DILocation(line: 423, column: 6, scope: !6494)
!6510 = !DILocation(line: 424, column: 3, scope: !6507)
!6511 = !DILocation(line: 426, column: 3, scope: !6512)
!6512 = distinct !DILexicalBlock(scope: !6494, file: !245, line: 425, column: 6)
!6513 = !DILocation(line: 429, column: 1, scope: !6494)
!6514 = !DISubprogram(name: "__kmalloc", scope: !245, file: !245, line: 488, type: !5648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6515 = !DISubprogram(name: "__compiletime_assert_117", scope: !245, file: !245, line: 478, type: !2497, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6516 = distinct !DISubprogram(name: "refcount_set", scope: !255, file: !255, line: 134, type: !6517, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6520)
!6517 = !DISubroutineType(types: !6518)
!6518 = !{null, !6519, !109}
!6519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!6520 = !{!6521, !6522}
!6521 = !DILocalVariable(name: "r", arg: 1, scope: !6516, file: !255, line: 134, type: !6519)
!6522 = !DILocalVariable(name: "n", arg: 2, scope: !6516, file: !255, line: 134, type: !109)
!6523 = !DILocation(line: 134, column: 45, scope: !6516)
!6524 = !DILocation(line: 134, column: 52, scope: !6516)
!6525 = !DILocation(line: 136, column: 14, scope: !6516)
!6526 = !DILocation(line: 136, column: 17, scope: !6516)
!6527 = !DILocation(line: 136, column: 23, scope: !6516)
!6528 = !DILocation(line: 136, column: 2, scope: !6516)
!6529 = !DILocation(line: 137, column: 1, scope: !6516)
!6530 = distinct !DISubprogram(name: "atomic_set", scope: !6531, file: !6531, line: 65, type: !6532, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6535)
!6531 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6532 = !DISubroutineType(types: !6533)
!6533 = !{null, !6534, !109}
!6534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!6535 = !{!6536, !6537}
!6536 = !DILocalVariable(name: "v", arg: 1, scope: !6530, file: !6531, line: 65, type: !6534)
!6537 = !DILocalVariable(name: "i", arg: 2, scope: !6530, file: !6531, line: 65, type: !109)
!6538 = !DILocation(line: 65, column: 22, scope: !6530)
!6539 = !DILocation(line: 65, column: 29, scope: !6530)
!6540 = !DILocation(line: 67, column: 26, scope: !6530)
!6541 = !DILocation(line: 67, column: 2, scope: !6530)
!6542 = !DILocation(line: 68, column: 17, scope: !6530)
!6543 = !DILocation(line: 68, column: 20, scope: !6530)
!6544 = !DILocation(line: 68, column: 2, scope: !6530)
!6545 = !DILocation(line: 69, column: 1, scope: !6530)
!6546 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6547, file: !6547, line: 80, type: !6548, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6553)
!6547 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6548 = !DISubroutineType(types: !6549)
!6549 = !{null, !6550, !1228}
!6550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6551, size: 64)
!6551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6552)
!6552 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6553 = !{!6554, !6555}
!6554 = !DILocalVariable(name: "v", arg: 1, scope: !6546, file: !6547, line: 80, type: !6550)
!6555 = !DILocalVariable(name: "size", arg: 2, scope: !6546, file: !6547, line: 80, type: !1228)
!6556 = !DILocation(line: 80, column: 74, scope: !6546)
!6557 = !DILocation(line: 80, column: 84, scope: !6546)
!6558 = !DILocation(line: 82, column: 20, scope: !6546)
!6559 = !DILocation(line: 82, column: 23, scope: !6546)
!6560 = !DILocation(line: 82, column: 2, scope: !6546)
!6561 = !DILocation(line: 83, column: 2, scope: !6546)
!6562 = !DILocation(line: 84, column: 1, scope: !6546)
!6563 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6564, file: !6564, line: 488, type: !6532, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6565)
!6564 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6565 = !{!6566, !6567}
!6566 = !DILocalVariable(name: "v", arg: 1, scope: !6563, file: !6564, line: 488, type: !6534)
!6567 = !DILocalVariable(name: "i", arg: 2, scope: !6563, file: !6564, line: 488, type: !109)
!6568 = !DILocation(line: 488, column: 26, scope: !6563)
!6569 = !DILocation(line: 488, column: 33, scope: !6563)
!6570 = !DILocation(line: 490, column: 18, scope: !6563)
!6571 = !DILocation(line: 490, column: 21, scope: !6563)
!6572 = !DILocation(line: 490, column: 2, scope: !6563)
!6573 = !DILocation(line: 491, column: 1, scope: !6563)
!6574 = distinct !DISubprogram(name: "kasan_check_write", scope: !6575, file: !6575, line: 44, type: !6576, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6578)
!6575 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6576 = !DISubroutineType(types: !6577)
!6577 = !{!910, !6550, !7}
!6578 = !{!6579, !6580}
!6579 = !DILocalVariable(name: "p", arg: 1, scope: !6574, file: !6575, line: 44, type: !6550)
!6580 = !DILocalVariable(name: "size", arg: 2, scope: !6574, file: !6575, line: 44, type: !7)
!6581 = !DILocation(line: 44, column: 59, scope: !6574)
!6582 = !DILocation(line: 44, column: 75, scope: !6574)
!6583 = !DILocation(line: 46, column: 2, scope: !6574)
!6584 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6585, file: !6585, line: 229, type: !6586, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6588)
!6585 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6586 = !DISubroutineType(types: !6587)
!6587 = !{null, !6550, !1228, !109}
!6588 = !{!6589, !6590, !6591}
!6589 = !DILocalVariable(name: "ptr", arg: 1, scope: !6584, file: !6585, line: 229, type: !6550)
!6590 = !DILocalVariable(name: "size", arg: 2, scope: !6584, file: !6585, line: 229, type: !1228)
!6591 = !DILocalVariable(name: "type", arg: 3, scope: !6584, file: !6585, line: 230, type: !109)
!6592 = !DILocation(line: 229, column: 60, scope: !6584)
!6593 = !DILocation(line: 229, column: 72, scope: !6584)
!6594 = !DILocation(line: 230, column: 15, scope: !6584)
!6595 = !DILocation(line: 230, column: 23, scope: !6584)
!6596 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6597, file: !6597, line: 26, type: !6532, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6598)
!6597 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6598 = !{!6599, !6600}
!6599 = !DILocalVariable(name: "v", arg: 1, scope: !6596, file: !6597, line: 26, type: !6534)
!6600 = !DILocalVariable(name: "i", arg: 2, scope: !6596, file: !6597, line: 26, type: !109)
!6601 = !DILocation(line: 26, column: 55, scope: !6596)
!6602 = !DILocation(line: 26, column: 62, scope: !6596)
!6603 = !DILocation(line: 28, column: 2, scope: !6596)
!6604 = !DILocation(line: 28, column: 2, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6596, file: !6597, line: 28, column: 2)
!6606 = !DILocation(line: 29, column: 1, scope: !6596)
!6607 = distinct !DISubprogram(name: "xa_init_flags", scope: !374, file: !374, line: 378, type: !6608, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6611)
!6608 = !DISubroutineType(types: !6609)
!6609 = !{null, !6610, !264}
!6610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!6611 = !{!6612, !6613}
!6612 = !DILocalVariable(name: "xa", arg: 1, scope: !6607, file: !374, line: 378, type: !6610)
!6613 = !DILocalVariable(name: "flags", arg: 2, scope: !6607, file: !374, line: 378, type: !264)
!6614 = !DILocation(line: 378, column: 49, scope: !6607)
!6615 = !DILocation(line: 378, column: 59, scope: !6607)
!6616 = !DILocation(line: 380, column: 2, scope: !6607)
!6617 = !DILocation(line: 380, column: 2, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6607, file: !374, line: 380, column: 2)
!6619 = !DILocation(line: 381, column: 17, scope: !6607)
!6620 = !DILocation(line: 381, column: 2, scope: !6607)
!6621 = !DILocation(line: 381, column: 6, scope: !6607)
!6622 = !DILocation(line: 381, column: 15, scope: !6607)
!6623 = !DILocation(line: 382, column: 2, scope: !6607)
!6624 = !DILocation(line: 382, column: 6, scope: !6607)
!6625 = !DILocation(line: 382, column: 14, scope: !6607)
!6626 = !DILocation(line: 383, column: 1, scope: !6607)
!6627 = distinct !DISubprogram(name: "spinlock_check", scope: !5416, file: !5416, line: 324, type: !6628, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6630)
!6628 = !DISubroutineType(types: !6629)
!6629 = !{!6299, !1711}
!6630 = !{!6631}
!6631 = !DILocalVariable(name: "lock", arg: 1, scope: !6627, file: !5416, line: 324, type: !1711)
!6632 = !DILocation(line: 324, column: 67, scope: !6627)
!6633 = !DILocation(line: 326, column: 10, scope: !6627)
!6634 = !DILocation(line: 326, column: 16, scope: !6627)
!6635 = !DILocation(line: 326, column: 2, scope: !6627)
!6636 = distinct !DISubprogram(name: "task_tgid", scope: !3551, file: !3551, line: 682, type: !6637, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6639)
!6637 = !DISubroutineType(types: !6638)
!6638 = !{!276, !384}
!6639 = !{!6640}
!6640 = !DILocalVariable(name: "task", arg: 1, scope: !6636, file: !3551, line: 682, type: !384)
!6641 = !DILocation(line: 682, column: 57, scope: !6636)
!6642 = !DILocation(line: 684, column: 9, scope: !6636)
!6643 = !DILocation(line: 684, column: 15, scope: !6636)
!6644 = !DILocation(line: 684, column: 23, scope: !6636)
!6645 = !DILocation(line: 684, column: 2, scope: !6636)
!6646 = distinct !DISubprogram(name: "get_current", scope: !6647, file: !6647, line: 39, type: !6648, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6650)
!6647 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6648 = !DISubroutineType(types: !6649)
!6649 = !{!384}
!6650 = !{!6651, !6653, !6655}
!6651 = !DILocalVariable(name: "pscr_ret__", scope: !6652, file: !6647, line: 41, type: !384)
!6652 = distinct !DILexicalBlock(scope: !6646, file: !6647, line: 41, column: 9)
!6653 = !DILocalVariable(name: "__vpp_verify", scope: !6654, file: !6647, line: 41, type: !1963)
!6654 = distinct !DILexicalBlock(scope: !6652, file: !6647, line: 41, column: 9)
!6655 = !DILocalVariable(name: "pfo_val__", scope: !6656, file: !6647, line: 41, type: !448)
!6656 = distinct !DILexicalBlock(scope: !6652, file: !6647, line: 41, column: 9)
!6657 = !DILocation(line: 41, column: 9, scope: !6652)
!6658 = !DILocation(line: 41, column: 9, scope: !6654)
!6659 = !DILocation(line: 41, column: 9, scope: !6656)
!6660 = !{i64 2148392716}
!6661 = !DILocation(line: 41, column: 9, scope: !6646)
!6662 = !DILocation(line: 41, column: 2, scope: !6646)
!6663 = !DISubprogram(name: "capable", scope: !824, file: !824, line: 148, type: !6664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6664 = !DISubroutineType(types: !6665)
!6665 = !{!910, !109}
!6666 = distinct !DISubprogram(name: "drm_core_check_all_features", scope: !227, file: !227, line: 548, type: !6667, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6669)
!6667 = !DISubroutineType(types: !6668)
!6668 = !{!910, !6143, !395}
!6669 = !{!6670, !6671, !6672}
!6670 = !DILocalVariable(name: "dev", arg: 1, scope: !6666, file: !227, line: 548, type: !6143)
!6671 = !DILocalVariable(name: "features", arg: 2, scope: !6666, file: !227, line: 549, type: !395)
!6672 = !DILocalVariable(name: "supported", scope: !6666, file: !227, line: 551, type: !395)
!6673 = !DILocation(line: 548, column: 73, scope: !6666)
!6674 = !DILocation(line: 549, column: 17, scope: !6666)
!6675 = !DILocation(line: 551, column: 2, scope: !6666)
!6676 = !DILocation(line: 551, column: 6, scope: !6666)
!6677 = !DILocation(line: 551, column: 18, scope: !6666)
!6678 = !DILocation(line: 551, column: 23, scope: !6666)
!6679 = !DILocation(line: 551, column: 31, scope: !6666)
!6680 = !DILocation(line: 551, column: 49, scope: !6666)
!6681 = !DILocation(line: 551, column: 54, scope: !6666)
!6682 = !DILocation(line: 551, column: 47, scope: !6666)
!6683 = !DILocation(line: 553, column: 9, scope: !6666)
!6684 = !DILocation(line: 553, column: 18, scope: !6666)
!6685 = !DILocation(line: 553, column: 22, scope: !6666)
!6686 = !DILocation(line: 553, column: 34, scope: !6666)
!6687 = !DILocation(line: 553, column: 32, scope: !6666)
!6688 = !DILocation(line: 553, column: 47, scope: !6666)
!6689 = !DILocation(line: 553, column: 44, scope: !6666)
!6690 = !DILocation(line: 0, scope: !6666)
!6691 = !DILocation(line: 554, column: 1, scope: !6666)
!6692 = !DILocation(line: 553, column: 2, scope: !6666)
!6693 = distinct !DISubprogram(name: "refcount_inc", scope: !255, file: !255, line: 265, type: !6694, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6696)
!6694 = !DISubroutineType(types: !6695)
!6695 = !{null, !6519}
!6696 = !{!6697}
!6697 = !DILocalVariable(name: "r", arg: 1, scope: !6693, file: !255, line: 265, type: !6519)
!6698 = !DILocation(line: 265, column: 45, scope: !6693)
!6699 = !DILocation(line: 267, column: 17, scope: !6693)
!6700 = !DILocation(line: 267, column: 2, scope: !6693)
!6701 = !DILocation(line: 268, column: 1, scope: !6693)
!6702 = distinct !DISubprogram(name: "__refcount_inc", scope: !255, file: !255, line: 248, type: !6703, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6705)
!6703 = !DISubroutineType(types: !6704)
!6704 = !{null, !6519, !2279}
!6705 = !{!6706, !6707}
!6706 = !DILocalVariable(name: "r", arg: 1, scope: !6702, file: !255, line: 248, type: !6519)
!6707 = !DILocalVariable(name: "oldp", arg: 2, scope: !6702, file: !255, line: 248, type: !2279)
!6708 = !DILocation(line: 248, column: 47, scope: !6702)
!6709 = !DILocation(line: 248, column: 55, scope: !6702)
!6710 = !DILocation(line: 250, column: 20, scope: !6702)
!6711 = !DILocation(line: 250, column: 23, scope: !6702)
!6712 = !DILocation(line: 250, column: 2, scope: !6702)
!6713 = !DILocation(line: 251, column: 1, scope: !6702)
!6714 = distinct !DISubprogram(name: "__refcount_add", scope: !255, file: !255, line: 191, type: !6715, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6717)
!6715 = !DISubroutineType(types: !6716)
!6716 = !{null, !109, !6519, !2279}
!6717 = !{!6718, !6719, !6720, !6721}
!6718 = !DILocalVariable(name: "i", arg: 1, scope: !6714, file: !255, line: 191, type: !109)
!6719 = !DILocalVariable(name: "r", arg: 2, scope: !6714, file: !255, line: 191, type: !6519)
!6720 = !DILocalVariable(name: "oldp", arg: 3, scope: !6714, file: !255, line: 191, type: !2279)
!6721 = !DILocalVariable(name: "old", scope: !6714, file: !255, line: 193, type: !109)
!6722 = !DILocation(line: 191, column: 39, scope: !6714)
!6723 = !DILocation(line: 191, column: 54, scope: !6714)
!6724 = !DILocation(line: 191, column: 62, scope: !6714)
!6725 = !DILocation(line: 193, column: 2, scope: !6714)
!6726 = !DILocation(line: 193, column: 6, scope: !6714)
!6727 = !DILocation(line: 193, column: 37, scope: !6714)
!6728 = !DILocation(line: 193, column: 41, scope: !6714)
!6729 = !DILocation(line: 193, column: 44, scope: !6714)
!6730 = !DILocation(line: 193, column: 12, scope: !6714)
!6731 = !DILocation(line: 195, column: 6, scope: !6732)
!6732 = distinct !DILexicalBlock(scope: !6714, file: !255, line: 195, column: 6)
!6733 = !DILocation(line: 195, column: 6, scope: !6714)
!6734 = !DILocation(line: 196, column: 11, scope: !6732)
!6735 = !DILocation(line: 196, column: 4, scope: !6732)
!6736 = !DILocation(line: 196, column: 9, scope: !6732)
!6737 = !DILocation(line: 196, column: 3, scope: !6732)
!6738 = !DILocation(line: 198, column: 6, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6714, file: !255, line: 198, column: 6)
!6740 = !DILocation(line: 198, column: 6, scope: !6714)
!6741 = !DILocation(line: 199, column: 26, scope: !6739)
!6742 = !DILocation(line: 199, column: 3, scope: !6739)
!6743 = !DILocation(line: 200, column: 11, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6739, file: !255, line: 200, column: 11)
!6745 = !DILocation(line: 200, column: 11, scope: !6739)
!6746 = !DILocation(line: 201, column: 26, scope: !6744)
!6747 = !DILocation(line: 201, column: 3, scope: !6744)
!6748 = !DILocation(line: 202, column: 1, scope: !6714)
!6749 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !6531, file: !6531, line: 250, type: !6750, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6752)
!6750 = !DISubroutineType(types: !6751)
!6751 = !{!109, !109, !6534}
!6752 = !{!6753, !6754}
!6753 = !DILocalVariable(name: "i", arg: 1, scope: !6749, file: !6531, line: 250, type: !109)
!6754 = !DILocalVariable(name: "v", arg: 2, scope: !6749, file: !6531, line: 250, type: !6534)
!6755 = !DILocation(line: 250, column: 30, scope: !6749)
!6756 = !DILocation(line: 250, column: 43, scope: !6749)
!6757 = !DILocation(line: 252, column: 31, scope: !6749)
!6758 = !DILocation(line: 252, column: 2, scope: !6749)
!6759 = !DILocation(line: 253, column: 38, scope: !6749)
!6760 = !DILocation(line: 253, column: 41, scope: !6749)
!6761 = !DILocation(line: 253, column: 9, scope: !6749)
!6762 = !DILocation(line: 253, column: 2, scope: !6749)
!6763 = !DISubprogram(name: "refcount_warn_saturate", scope: !255, file: !255, line: 127, type: !6764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6764 = !DISubroutineType(types: !6765)
!6765 = !{null, !6519, !254}
!6766 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6547, file: !6547, line: 94, type: !6548, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6767)
!6767 = !{!6768, !6769}
!6768 = !DILocalVariable(name: "v", arg: 1, scope: !6766, file: !6547, line: 94, type: !6550)
!6769 = !DILocalVariable(name: "size", arg: 2, scope: !6766, file: !6547, line: 94, type: !1228)
!6770 = !DILocation(line: 94, column: 79, scope: !6766)
!6771 = !DILocation(line: 94, column: 89, scope: !6766)
!6772 = !DILocation(line: 96, column: 20, scope: !6766)
!6773 = !DILocation(line: 96, column: 23, scope: !6766)
!6774 = !DILocation(line: 96, column: 2, scope: !6766)
!6775 = !DILocation(line: 97, column: 2, scope: !6766)
!6776 = !DILocation(line: 98, column: 1, scope: !6766)
!6777 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !6564, file: !6564, line: 731, type: !6750, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6778)
!6778 = !{!6779, !6780}
!6779 = !DILocalVariable(name: "i", arg: 1, scope: !6777, file: !6564, line: 731, type: !109)
!6780 = !DILocalVariable(name: "v", arg: 2, scope: !6777, file: !6564, line: 731, type: !6534)
!6781 = !DILocation(line: 731, column: 34, scope: !6777)
!6782 = !DILocation(line: 731, column: 47, scope: !6777)
!6783 = !DILocation(line: 736, column: 31, scope: !6777)
!6784 = !DILocation(line: 736, column: 34, scope: !6777)
!6785 = !DILocation(line: 736, column: 9, scope: !6777)
!6786 = !DILocation(line: 736, column: 2, scope: !6777)
!6787 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !6597, file: !6597, line: 95, type: !6750, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6788)
!6788 = !{!6789, !6790, !6791}
!6789 = !DILocalVariable(name: "i", arg: 1, scope: !6787, file: !6597, line: 95, type: !109)
!6790 = !DILocalVariable(name: "v", arg: 2, scope: !6787, file: !6597, line: 95, type: !6534)
!6791 = !DILocalVariable(name: "__ret", scope: !6792, file: !6597, line: 97, type: !109)
!6792 = distinct !DILexicalBlock(scope: !6787, file: !6597, line: 97, column: 9)
!6793 = !DILocation(line: 95, column: 54, scope: !6787)
!6794 = !DILocation(line: 95, column: 67, scope: !6787)
!6795 = !DILocation(line: 97, column: 9, scope: !6792)
!6796 = !{i64 2148941658, i64 2148941697, i64 2148941718, i64 2148941755, i64 2148941778, i64 2148941787}
!6797 = !DILocation(line: 97, column: 9, scope: !6787)
!6798 = !DILocation(line: 97, column: 2, scope: !6787)
!6799 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !255, file: !255, line: 331, type: !6800, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6802)
!6800 = !DISubroutineType(types: !6801)
!6801 = !{!910, !6519}
!6802 = !{!6803}
!6803 = !DILocalVariable(name: "r", arg: 1, scope: !6799, file: !255, line: 331, type: !6519)
!6804 = !DILocation(line: 331, column: 67, scope: !6799)
!6805 = !DILocation(line: 333, column: 33, scope: !6799)
!6806 = !DILocation(line: 333, column: 9, scope: !6799)
!6807 = !DILocation(line: 333, column: 2, scope: !6799)
!6808 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !255, file: !255, line: 313, type: !6809, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6811)
!6809 = !DISubroutineType(types: !6810)
!6810 = !{!910, !6519, !2279}
!6811 = !{!6812, !6813}
!6812 = !DILocalVariable(name: "r", arg: 1, scope: !6808, file: !255, line: 313, type: !6519)
!6813 = !DILocalVariable(name: "oldp", arg: 2, scope: !6808, file: !255, line: 313, type: !2279)
!6814 = !DILocation(line: 313, column: 69, scope: !6808)
!6815 = !DILocation(line: 313, column: 77, scope: !6808)
!6816 = !DILocation(line: 315, column: 36, scope: !6808)
!6817 = !DILocation(line: 315, column: 39, scope: !6808)
!6818 = !DILocation(line: 315, column: 9, scope: !6808)
!6819 = !DILocation(line: 315, column: 2, scope: !6808)
!6820 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !255, file: !255, line: 270, type: !6821, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6823)
!6821 = !DISubroutineType(types: !6822)
!6822 = !{!910, !109, !6519, !2279}
!6823 = !{!6824, !6825, !6826, !6827}
!6824 = !DILocalVariable(name: "i", arg: 1, scope: !6820, file: !255, line: 270, type: !109)
!6825 = !DILocalVariable(name: "r", arg: 2, scope: !6820, file: !255, line: 270, type: !6519)
!6826 = !DILocalVariable(name: "oldp", arg: 3, scope: !6820, file: !255, line: 270, type: !2279)
!6827 = !DILocalVariable(name: "old", scope: !6820, file: !255, line: 272, type: !109)
!6828 = !DILocation(line: 270, column: 61, scope: !6820)
!6829 = !DILocation(line: 270, column: 76, scope: !6820)
!6830 = !DILocation(line: 270, column: 84, scope: !6820)
!6831 = !DILocation(line: 272, column: 2, scope: !6820)
!6832 = !DILocation(line: 272, column: 6, scope: !6820)
!6833 = !DILocation(line: 272, column: 37, scope: !6820)
!6834 = !DILocation(line: 272, column: 41, scope: !6820)
!6835 = !DILocation(line: 272, column: 44, scope: !6820)
!6836 = !DILocation(line: 272, column: 12, scope: !6820)
!6837 = !DILocation(line: 274, column: 6, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6820, file: !255, line: 274, column: 6)
!6839 = !DILocation(line: 274, column: 6, scope: !6820)
!6840 = !DILocation(line: 275, column: 11, scope: !6838)
!6841 = !DILocation(line: 275, column: 4, scope: !6838)
!6842 = !DILocation(line: 275, column: 9, scope: !6838)
!6843 = !DILocation(line: 275, column: 3, scope: !6838)
!6844 = !DILocation(line: 277, column: 6, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6820, file: !255, line: 277, column: 6)
!6846 = !DILocation(line: 277, column: 13, scope: !6845)
!6847 = !DILocation(line: 277, column: 10, scope: !6845)
!6848 = !DILocation(line: 277, column: 6, scope: !6820)
!6849 = !DILocation(line: 278, column: 3, scope: !6850)
!6850 = distinct !DILexicalBlock(scope: !6845, file: !255, line: 277, column: 16)
!6851 = !DILocation(line: 278, column: 3, scope: !6852)
!6852 = distinct !DILexicalBlock(scope: !6850, file: !255, line: 278, column: 3)
!6853 = !DILocation(line: 278, column: 3, scope: !6854)
!6854 = distinct !DILexicalBlock(scope: !6852, file: !255, line: 278, column: 3)
!6855 = !DILocation(line: 278, column: 3, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !6852, file: !255, line: 278, column: 3)
!6857 = !DILocation(line: 278, column: 3, scope: !6858)
!6858 = distinct !DILexicalBlock(scope: !6856, file: !255, line: 278, column: 3)
!6859 = !{i64 2150234356}
!6860 = !DILocation(line: 279, column: 3, scope: !6850)
!6861 = !DILocation(line: 282, column: 6, scope: !6862)
!6862 = distinct !DILexicalBlock(scope: !6820, file: !255, line: 282, column: 6)
!6863 = !DILocation(line: 282, column: 6, scope: !6820)
!6864 = !DILocation(line: 283, column: 26, scope: !6862)
!6865 = !DILocation(line: 283, column: 3, scope: !6862)
!6866 = !DILocation(line: 285, column: 2, scope: !6820)
!6867 = !DILocation(line: 286, column: 1, scope: !6820)
!6868 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6531, file: !6531, line: 397, type: !6750, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6869)
!6869 = !{!6870, !6871}
!6870 = !DILocalVariable(name: "i", arg: 1, scope: !6868, file: !6531, line: 397, type: !109)
!6871 = !DILocalVariable(name: "v", arg: 2, scope: !6868, file: !6531, line: 397, type: !6534)
!6872 = !DILocation(line: 397, column: 30, scope: !6868)
!6873 = !DILocation(line: 397, column: 43, scope: !6868)
!6874 = !DILocation(line: 399, column: 2, scope: !6868)
!6875 = !DILocation(line: 399, column: 2, scope: !6876)
!6876 = distinct !DILexicalBlock(scope: !6868, file: !6531, line: 399, column: 2)
!6877 = !DILocation(line: 400, column: 31, scope: !6868)
!6878 = !DILocation(line: 400, column: 2, scope: !6868)
!6879 = !DILocation(line: 401, column: 38, scope: !6868)
!6880 = !DILocation(line: 401, column: 41, scope: !6868)
!6881 = !DILocation(line: 401, column: 9, scope: !6868)
!6882 = !DILocation(line: 401, column: 2, scope: !6868)
!6883 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !6564, file: !6564, line: 928, type: !6750, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6884)
!6884 = !{!6885, !6886}
!6885 = !DILocalVariable(name: "i", arg: 1, scope: !6883, file: !6564, line: 928, type: !109)
!6886 = !DILocalVariable(name: "v", arg: 2, scope: !6883, file: !6564, line: 928, type: !6534)
!6887 = !DILocation(line: 928, column: 34, scope: !6883)
!6888 = !DILocation(line: 928, column: 47, scope: !6883)
!6889 = !DILocation(line: 936, column: 31, scope: !6883)
!6890 = !DILocation(line: 936, column: 34, scope: !6883)
!6891 = !DILocation(line: 936, column: 9, scope: !6883)
!6892 = !DILocation(line: 936, column: 2, scope: !6883)
!6893 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6597, file: !6597, line: 101, type: !6750, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6894)
!6894 = !{!6895, !6896, !6897}
!6895 = !DILocalVariable(name: "i", arg: 1, scope: !6893, file: !6597, line: 101, type: !109)
!6896 = !DILocalVariable(name: "v", arg: 2, scope: !6893, file: !6597, line: 101, type: !6534)
!6897 = !DILocalVariable(name: "__ret", scope: !6898, file: !6597, line: 103, type: !109)
!6898 = distinct !DILexicalBlock(scope: !6893, file: !6597, line: 103, column: 9)
!6899 = !DILocation(line: 101, column: 54, scope: !6893)
!6900 = !DILocation(line: 101, column: 67, scope: !6893)
!6901 = !DILocation(line: 103, column: 9, scope: !6898)
!6902 = !{i64 2148943843, i64 2148943882, i64 2148943903, i64 2148943940, i64 2148943963, i64 2148943972}
!6903 = !DILocation(line: 103, column: 9, scope: !6893)
!6904 = !DILocation(line: 103, column: 2, scope: !6893)
!6905 = !DISubprogram(name: "drm_lease_destroy", scope: !6155, file: !6155, line: 15, type: !5670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6906 = distinct !DISubprogram(name: "drm_legacy_master_rmmaps", scope: !5669, file: !5669, line: 163, type: !6132, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6907)
!6907 = !{!6908, !6909}
!6908 = !DILocalVariable(name: "dev", arg: 1, scope: !6906, file: !5669, line: 163, type: !4318)
!6909 = !DILocalVariable(name: "master", arg: 2, scope: !6906, file: !5669, line: 164, type: !4312)
!6910 = !DILocation(line: 163, column: 64, scope: !6906)
!6911 = !DILocation(line: 164, column: 29, scope: !6906)
!6912 = !DILocation(line: 164, column: 38, scope: !6906)
!6913 = !DISubprogram(name: "idr_destroy", scope: !370, file: !370, line: 125, type: !5716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6914 = !DISubprogram(name: "kfree", scope: !245, file: !245, line: 227, type: !6915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6915 = !DISubroutineType(types: !6916)
!6916 = !{null, !1963}
