; ModuleID = 'drivers/gpu/drm/drm_ioc32.c'
source_filename = "drivers/gpu/drm/drm_ioc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_compat_ioctl: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_compat_ioctl ; .previous"

%struct.anon.16 = type { ptr, ptr }
%struct.pcpu_hot = type { %union.anon.20 }
%union.anon.20 = type { %struct.anon.21, [16 x i8] }
%struct.anon.21 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.file = type { %union.anon.13, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i64, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.17, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.17 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.drm_version_32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_version = type { i32, i32, i32, i64, ptr, i64, ptr, i64, ptr }
%struct.drm_unique32 = type { i32, i32 }
%struct.drm_unique = type { i64, ptr }
%struct.drm_client32 = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_client = type { i32, i32, i64, i64, i64, i64 }
%union.drm_wait_vblank32 = type { %struct.drm_wait_vblank_reply32 }
%struct.drm_wait_vblank_reply32 = type { i32, i32, i32, i32 }
%union.drm_wait_vblank = type { %struct.drm_wait_vblank_reply }
%struct.drm_wait_vblank_reply = type { i32, i32, i64, i64 }
%struct.drm_wait_vblank_request32 = type { i32, i32, i32 }
%struct.drm_wait_vblank_request = type { i32, i32, i64 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_mode_fb_cmd232 = type <{ i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }>

@drm_compat_ioctls = internal global [185 x %struct.anon.16] [%struct.anon.16 { ptr @compat_drm_version, ptr @.str.2 }, %struct.anon.16 { ptr @compat_drm_getunique, ptr @.str.3 }, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 { ptr @compat_drm_getclient, ptr @.str.4 }, %struct.anon.16 { ptr @compat_drm_getstats, ptr @.str.5 }, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 { ptr @compat_drm_setunique, ptr @.str.6 }, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 { ptr @compat_drm_wait_vblank, ptr @.str.7 }, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 { ptr @compat_drm_update_draw, ptr @.str.8 }, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 zeroinitializer, %struct.anon.16 { ptr @compat_drm_mode_addfb2, ptr @.str.9 }], align 16, !dbg !0
@.str = private unnamed_addr constant [43 x i8] c"comm=\22%s\22, pid=%d, dev=0x%lx, auth=%d, %s\0A\00", align 1, !dbg !4361
@.str.1 = private unnamed_addr constant [10 x i8] c"ret = %d\0A\00", align 1, !dbg !4366
@__UNIQUE_ID___addressable_drm_compat_ioctl305 = internal global ptr @drm_compat_ioctl, section ".discard.addressable", align 8, !dbg !4371
@.str.2 = private unnamed_addr constant [18 x i8] c"DRM_IOCTL_VERSION\00", align 1, !dbg !4373
@.str.3 = private unnamed_addr constant [21 x i8] c"DRM_IOCTL_GET_UNIQUE\00", align 1, !dbg !4378
@.str.4 = private unnamed_addr constant [21 x i8] c"DRM_IOCTL_GET_CLIENT\00", align 1, !dbg !4383
@.str.5 = private unnamed_addr constant [20 x i8] c"DRM_IOCTL_GET_STATS\00", align 1, !dbg !4385
@.str.6 = private unnamed_addr constant [21 x i8] c"DRM_IOCTL_SET_UNIQUE\00", align 1, !dbg !4388
@.str.7 = private unnamed_addr constant [22 x i8] c"DRM_IOCTL_WAIT_VBLANK\00", align 1, !dbg !4390
@.str.8 = private unnamed_addr constant [22 x i8] c"DRM_IOCTL_UPDATE_DRAW\00", align 1, !dbg !4395
@.str.9 = private unnamed_addr constant [22 x i8] c"DRM_IOCTL_MODE_ADDFB2\00", align 1, !dbg !4397
@.str.10 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4399
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_drm_compat_ioctl305], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @drm_compat_ioctl(ptr noundef %filp, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !4426 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %nr = alloca i32, align 4
  %file_priv = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %fn = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !4428, metadata !DIExpression()), !dbg !5332
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !4429, metadata !DIExpression()), !dbg !5333
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4430, metadata !DIExpression()), !dbg !5334
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #14, !dbg !5335
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !4431, metadata !DIExpression()), !dbg !5336
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !5337
  %shr = lshr i32 %0, 0, !dbg !5337
  %and = and i32 %shr, 255, !dbg !5337
  store i32 %and, ptr %nr, align 4, !dbg !5336
  call void @llvm.lifetime.start.p0(i64 8, ptr %file_priv) #14, !dbg !5338
  call void @llvm.dbg.declare(metadata ptr %file_priv, metadata !4432, metadata !DIExpression()), !dbg !5339
  %1 = load ptr, ptr %filp.addr, align 8, !dbg !5340
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15, !dbg !5341
  %2 = load ptr, ptr %private_data, align 8, !dbg !5341
  store ptr %2, ptr %file_priv, align 8, !dbg !5339
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !5342
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5329, metadata !DIExpression()), !dbg !5343
  %3 = load ptr, ptr %file_priv, align 8, !dbg !5344
  %minor = getelementptr inbounds %struct.drm_file, ptr %3, i32 0, i32 15, !dbg !5345
  %4 = load ptr, ptr %minor, align 8, !dbg !5345
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %4, i32 0, i32 3, !dbg !5346
  %5 = load ptr, ptr %dev1, align 8, !dbg !5346
  store ptr %5, ptr %dev, align 8, !dbg !5343
  call void @llvm.lifetime.start.p0(i64 8, ptr %fn) #14, !dbg !5347
  call void @llvm.dbg.declare(metadata ptr %fn, metadata !5330, metadata !DIExpression()), !dbg !5348
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !5349
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5331, metadata !DIExpression()), !dbg !5350
  %6 = load i32, ptr %nr, align 4, !dbg !5351
  %conv = zext i32 %6 to i64, !dbg !5351
  %cmp = icmp uge i64 %conv, 185, !dbg !5353
  br i1 %cmp, label %if.then, label %if.end, !dbg !5354

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %filp.addr, align 8, !dbg !5355
  %8 = load i32, ptr %cmd.addr, align 4, !dbg !5356
  %9 = load i64, ptr %arg.addr, align 8, !dbg !5357
  %call = call i64 @drm_ioctl(ptr noundef %7, i32 noundef %8, i64 noundef %9) #15, !dbg !5358
  store i64 %call, ptr %retval, align 8, !dbg !5359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5359

if.end:                                           ; preds = %entry
  %10 = load i32, ptr %nr, align 4, !dbg !5360
  %idxprom = zext i32 %10 to i64, !dbg !5361
  %arrayidx = getelementptr [185 x %struct.anon.16], ptr @drm_compat_ioctls, i64 0, i64 %idxprom, !dbg !5361
  %fn3 = getelementptr inbounds %struct.anon.16, ptr %arrayidx, i32 0, i32 0, !dbg !5362
  %11 = load ptr, ptr %fn3, align 16, !dbg !5362
  store ptr %11, ptr %fn, align 8, !dbg !5363
  %12 = load ptr, ptr %fn, align 8, !dbg !5364
  %tobool = icmp ne ptr %12, null, !dbg !5364
  br i1 %tobool, label %if.end6, label %if.then4, !dbg !5366

if.then4:                                         ; preds = %if.end
  %13 = load ptr, ptr %filp.addr, align 8, !dbg !5367
  %14 = load i32, ptr %cmd.addr, align 4, !dbg !5368
  %15 = load i64, ptr %arg.addr, align 8, !dbg !5369
  %call5 = call i64 @drm_ioctl(ptr noundef %13, i32 noundef %14, i64 noundef %15) #15, !dbg !5370
  store i64 %call5, ptr %retval, align 8, !dbg !5371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5371

if.end6:                                          ; preds = %if.end
  %16 = load ptr, ptr %dev, align 8, !dbg !5372
  %tobool7 = icmp ne ptr %16, null, !dbg !5372
  br i1 %tobool7, label %cond.true, label %cond.false, !dbg !5372

cond.true:                                        ; preds = %if.end6
  %17 = load ptr, ptr %dev, align 8, !dbg !5372
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 2, !dbg !5372
  %18 = load ptr, ptr %dev8, align 8, !dbg !5372
  br label %cond.end, !dbg !5372

cond.false:                                       ; preds = %if.end6
  br label %cond.end, !dbg !5372

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %18, %cond.true ], [ null, %cond.false ], !dbg !5372
  %call9 = call ptr @get_current() #15, !dbg !5372
  %comm = getelementptr inbounds %struct.task_struct, ptr %call9, i32 0, i32 96, !dbg !5372
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !5372
  %call10 = call ptr @get_current() #15, !dbg !5372
  %call11 = call i32 @task_pid_nr(ptr noundef %call10) #15, !dbg !5372
  %19 = load ptr, ptr %file_priv, align 8, !dbg !5372
  %minor12 = getelementptr inbounds %struct.drm_file, ptr %19, i32 0, i32 15, !dbg !5372
  %20 = load ptr, ptr %minor12, align 8, !dbg !5372
  %kdev = getelementptr inbounds %struct.drm_minor, ptr %20, i32 0, i32 2, !dbg !5372
  %21 = load ptr, ptr %kdev, align 8, !dbg !5372
  %devt = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 26, !dbg !5372
  %22 = load i32, ptr %devt, align 4, !dbg !5372
  %call13 = call zeroext i16 @old_encode_dev(i32 noundef %22) #15, !dbg !5372
  %conv14 = zext i16 %call13 to i64, !dbg !5372
  %23 = load ptr, ptr %file_priv, align 8, !dbg !5372
  %authenticated = getelementptr inbounds %struct.drm_file, ptr %23, i32 0, i32 0, !dbg !5372
  %24 = load i8, ptr %authenticated, align 8, !dbg !5372, !range !5373, !noundef !648
  %tobool15 = trunc i8 %24 to i1, !dbg !5372
  %conv16 = zext i1 %tobool15 to i32, !dbg !5372
  %25 = load i32, ptr %nr, align 4, !dbg !5372
  %idxprom17 = zext i32 %25 to i64, !dbg !5372
  %arrayidx18 = getelementptr [185 x %struct.anon.16], ptr @drm_compat_ioctls, i64 0, i64 %idxprom17, !dbg !5372
  %name = getelementptr inbounds %struct.anon.16, ptr %arrayidx18, i32 0, i32 1, !dbg !5372
  %26 = load ptr, ptr %name, align 8, !dbg !5372
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 0, ptr noundef @.str, ptr noundef %arraydecay, i32 noundef %call11, i64 noundef %conv14, i32 noundef %conv16, ptr noundef %26) #15, !dbg !5372
  %27 = load ptr, ptr %fn, align 8, !dbg !5374
  %28 = load ptr, ptr %filp.addr, align 8, !dbg !5375
  %29 = load i32, ptr %cmd.addr, align 4, !dbg !5376
  %30 = load i64, ptr %arg.addr, align 8, !dbg !5377
  %call19 = call i32 %27(ptr noundef %28, i32 noundef %29, i64 noundef %30) #15, !dbg !5378
  store i32 %call19, ptr %ret, align 4, !dbg !5379
  %31 = load i32, ptr %ret, align 4, !dbg !5380
  %tobool20 = icmp ne i32 %31, 0, !dbg !5380
  br i1 %tobool20, label %if.then21, label %if.end28, !dbg !5382

if.then21:                                        ; preds = %cond.end
  %32 = load ptr, ptr %dev, align 8, !dbg !5383
  %tobool22 = icmp ne ptr %32, null, !dbg !5383
  br i1 %tobool22, label %cond.true23, label %cond.false25, !dbg !5383

cond.true23:                                      ; preds = %if.then21
  %33 = load ptr, ptr %dev, align 8, !dbg !5383
  %dev24 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 2, !dbg !5383
  %34 = load ptr, ptr %dev24, align 8, !dbg !5383
  br label %cond.end26, !dbg !5383

cond.false25:                                     ; preds = %if.then21
  br label %cond.end26, !dbg !5383

cond.end26:                                       ; preds = %cond.false25, %cond.true23
  %cond27 = phi ptr [ %34, %cond.true23 ], [ null, %cond.false25 ], !dbg !5383
  %35 = load i32, ptr %ret, align 4, !dbg !5383
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond27, i32 noundef 0, ptr noundef @.str.1, i32 noundef %35) #15, !dbg !5383
  br label %if.end28, !dbg !5383

if.end28:                                         ; preds = %cond.end26, %cond.end
  %36 = load i32, ptr %ret, align 4, !dbg !5384
  %conv29 = sext i32 %36 to i64, !dbg !5384
  store i64 %conv29, ptr %retval, align 8, !dbg !5385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5385

cleanup:                                          ; preds = %if.end28, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !5386
  call void @llvm.lifetime.end.p0(i64 8, ptr %fn) #14, !dbg !5386
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !5386
  call void @llvm.lifetime.end.p0(i64 8, ptr %file_priv) #14, !dbg !5386
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #14, !dbg !5386
  %37 = load i64, ptr %retval, align 8, !dbg !5386
  ret i64 %37, !dbg !5386
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5387 dso_local i64 @drm_ioctl(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5388 dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !5424 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !5435
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5429, metadata !DIExpression()), !dbg !5435
  br label %do.body, !dbg !5435

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5436
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5431, metadata !DIExpression()), !dbg !5436
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5436
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5436
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5435
  br label %do.cond, !dbg !5436

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5436

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !5437
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5433, metadata !DIExpression()), !dbg !5437
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !5437, !srcloc !5438
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5437
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5437
  %3 = inttoptr i64 %2 to ptr, !dbg !5437
  store ptr %3, ptr %tmp, align 8, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !5435
  %4 = load ptr, ptr %tmp, align 8, !dbg !5437
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5435
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5435
  store ptr %5, ptr %tmp1, align 8, !dbg !5435
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !5439
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5435
  ret ptr %6, !dbg !5440
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_pid_nr(ptr noundef %tsk) #5 align 16 !dbg !5441 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5445, metadata !DIExpression()), !dbg !5446
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5447
  %pid = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62, !dbg !5448
  %1 = load i32, ptr %pid, align 8, !dbg !5448
  ret i32 %1, !dbg !5449
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @old_encode_dev(i32 noundef %dev) #4 align 16 !dbg !5450 {
entry:
  %dev.addr = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5455, metadata !DIExpression()), !dbg !5456
  %0 = load i32, ptr %dev.addr, align 4, !dbg !5457
  %shr = lshr i32 %0, 20, !dbg !5457
  %shl = shl i32 %shr, 8, !dbg !5458
  %1 = load i32, ptr %dev.addr, align 4, !dbg !5459
  %and = and i32 %1, 1048575, !dbg !5459
  %or = or i32 %shl, %and, !dbg !5460
  %conv = trunc i32 %or to i16, !dbg !5461
  ret i16 %conv, !dbg !5462
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compat_drm_version(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5463 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %v32 = alloca %struct.drm_version_32, align 4
  %v = alloca %struct.drm_version, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.drm_version, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5465, metadata !DIExpression()), !dbg !5494
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5466, metadata !DIExpression()), !dbg !5495
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5467, metadata !DIExpression()), !dbg !5496
  call void @llvm.lifetime.start.p0(i64 36, ptr %v32) #14, !dbg !5497
  call void @llvm.dbg.declare(metadata ptr %v32, metadata !5468, metadata !DIExpression()), !dbg !5498
  call void @llvm.lifetime.start.p0(i64 64, ptr %v) #14, !dbg !5499
  call void @llvm.dbg.declare(metadata ptr %v, metadata !5481, metadata !DIExpression()), !dbg !5500
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5501
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5493, metadata !DIExpression()), !dbg !5502
  %0 = load i64, ptr %arg.addr, align 8, !dbg !5503
  %1 = inttoptr i64 %0 to ptr, !dbg !5505
  %call = call i64 @copy_from_user(ptr noundef %v32, ptr noundef %1, i64 noundef 36) #15, !dbg !5506
  %tobool = icmp ne i64 %call, 0, !dbg !5506
  br i1 %tobool, label %if.then, label %if.end, !dbg !5507

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !5508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5508

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %v, i8 0, i64 64, i1 false), !dbg !5509
  %version_major = getelementptr inbounds %struct.drm_version, ptr %.compoundliteral, i32 0, i32 0, !dbg !5510
  store i32 0, ptr %version_major, align 8, !dbg !5510
  %version_minor = getelementptr inbounds %struct.drm_version, ptr %.compoundliteral, i32 0, i32 1, !dbg !5510
  store i32 0, ptr %version_minor, align 4, !dbg !5510
  %version_patchlevel = getelementptr inbounds %struct.drm_version, ptr %.compoundliteral, i32 0, i32 2, !dbg !5510
  store i32 0, ptr %version_patchlevel, align 8, !dbg !5510
  %name_len = getelementptr inbounds %struct.drm_version, ptr %.compoundliteral, i32 0, i32 3, !dbg !5510
  %name_len1 = getelementptr inbounds %struct.drm_version_32, ptr %v32, i32 0, i32 3, !dbg !5511
  %2 = load i32, ptr %name_len1, align 4, !dbg !5511
  %conv = zext i32 %2 to i64, !dbg !5512
  store i64 %conv, ptr %name_len, align 8, !dbg !5510
  %name = getelementptr inbounds %struct.drm_version, ptr %.compoundliteral, i32 0, i32 4, !dbg !5510
  %name2 = getelementptr inbounds %struct.drm_version_32, ptr %v32, i32 0, i32 4, !dbg !5513
  %3 = load i32, ptr %name2, align 4, !dbg !5513
  %call3 = call ptr @compat_ptr(i32 noundef %3) #15, !dbg !5514
  store ptr %call3, ptr %name, align 8, !dbg !5510
  %date_len = getelementptr inbounds %struct.drm_version, ptr %.compoundliteral, i32 0, i32 5, !dbg !5510
  %date_len4 = getelementptr inbounds %struct.drm_version_32, ptr %v32, i32 0, i32 5, !dbg !5515
  %4 = load i32, ptr %date_len4, align 4, !dbg !5515
  %conv5 = zext i32 %4 to i64, !dbg !5516
  store i64 %conv5, ptr %date_len, align 8, !dbg !5510
  %date = getelementptr inbounds %struct.drm_version, ptr %.compoundliteral, i32 0, i32 6, !dbg !5510
  %date6 = getelementptr inbounds %struct.drm_version_32, ptr %v32, i32 0, i32 6, !dbg !5517
  %5 = load i32, ptr %date6, align 4, !dbg !5517
  %call7 = call ptr @compat_ptr(i32 noundef %5) #15, !dbg !5518
  store ptr %call7, ptr %date, align 8, !dbg !5510
  %desc_len = getelementptr inbounds %struct.drm_version, ptr %.compoundliteral, i32 0, i32 7, !dbg !5510
  %desc_len8 = getelementptr inbounds %struct.drm_version_32, ptr %v32, i32 0, i32 7, !dbg !5519
  %6 = load i32, ptr %desc_len8, align 4, !dbg !5519
  %conv9 = zext i32 %6 to i64, !dbg !5520
  store i64 %conv9, ptr %desc_len, align 8, !dbg !5510
  %desc = getelementptr inbounds %struct.drm_version, ptr %.compoundliteral, i32 0, i32 8, !dbg !5510
  %desc10 = getelementptr inbounds %struct.drm_version_32, ptr %v32, i32 0, i32 8, !dbg !5521
  %7 = load i32, ptr %desc10, align 4, !dbg !5521
  %call11 = call ptr @compat_ptr(i32 noundef %7) #15, !dbg !5522
  store ptr %call11, ptr %desc, align 8, !dbg !5510
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v, ptr align 8 %.compoundliteral, i64 64, i1 false), !dbg !5523
  %8 = load ptr, ptr %file.addr, align 8, !dbg !5524
  %call12 = call i64 @drm_ioctl_kernel(ptr noundef %8, ptr noundef @drm_version, ptr noundef %v, i32 noundef 32) #15, !dbg !5525
  %conv13 = trunc i64 %call12 to i32, !dbg !5525
  store i32 %conv13, ptr %err, align 4, !dbg !5526
  %9 = load i32, ptr %err, align 4, !dbg !5527
  %tobool14 = icmp ne i32 %9, 0, !dbg !5527
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5529

if.then15:                                        ; preds = %if.end
  %10 = load i32, ptr %err, align 4, !dbg !5530
  store i32 %10, ptr %retval, align 4, !dbg !5531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5531

if.end16:                                         ; preds = %if.end
  %version_major17 = getelementptr inbounds %struct.drm_version, ptr %v, i32 0, i32 0, !dbg !5532
  %11 = load i32, ptr %version_major17, align 8, !dbg !5532
  %version_major18 = getelementptr inbounds %struct.drm_version_32, ptr %v32, i32 0, i32 0, !dbg !5533
  store i32 %11, ptr %version_major18, align 4, !dbg !5534
  %version_minor19 = getelementptr inbounds %struct.drm_version, ptr %v, i32 0, i32 1, !dbg !5535
  %12 = load i32, ptr %version_minor19, align 4, !dbg !5535
  %version_minor20 = getelementptr inbounds %struct.drm_version_32, ptr %v32, i32 0, i32 1, !dbg !5536
  store i32 %12, ptr %version_minor20, align 4, !dbg !5537
  %version_patchlevel21 = getelementptr inbounds %struct.drm_version, ptr %v, i32 0, i32 2, !dbg !5538
  %13 = load i32, ptr %version_patchlevel21, align 8, !dbg !5538
  %version_patchlevel22 = getelementptr inbounds %struct.drm_version_32, ptr %v32, i32 0, i32 2, !dbg !5539
  store i32 %13, ptr %version_patchlevel22, align 4, !dbg !5540
  %name_len23 = getelementptr inbounds %struct.drm_version, ptr %v, i32 0, i32 3, !dbg !5541
  %14 = load i64, ptr %name_len23, align 8, !dbg !5541
  %conv24 = trunc i64 %14 to i32, !dbg !5542
  %name_len25 = getelementptr inbounds %struct.drm_version_32, ptr %v32, i32 0, i32 3, !dbg !5543
  store i32 %conv24, ptr %name_len25, align 4, !dbg !5544
  %date_len26 = getelementptr inbounds %struct.drm_version, ptr %v, i32 0, i32 5, !dbg !5545
  %15 = load i64, ptr %date_len26, align 8, !dbg !5545
  %conv27 = trunc i64 %15 to i32, !dbg !5546
  %date_len28 = getelementptr inbounds %struct.drm_version_32, ptr %v32, i32 0, i32 5, !dbg !5547
  store i32 %conv27, ptr %date_len28, align 4, !dbg !5548
  %desc_len29 = getelementptr inbounds %struct.drm_version, ptr %v, i32 0, i32 7, !dbg !5549
  %16 = load i64, ptr %desc_len29, align 8, !dbg !5549
  %conv30 = trunc i64 %16 to i32, !dbg !5550
  %desc_len31 = getelementptr inbounds %struct.drm_version_32, ptr %v32, i32 0, i32 7, !dbg !5551
  store i32 %conv30, ptr %desc_len31, align 4, !dbg !5552
  %17 = load i64, ptr %arg.addr, align 8, !dbg !5553
  %18 = inttoptr i64 %17 to ptr, !dbg !5555
  %call32 = call i64 @copy_to_user(ptr noundef %18, ptr noundef %v32, i64 noundef 36) #15, !dbg !5556
  %tobool33 = icmp ne i64 %call32, 0, !dbg !5556
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5557

if.then34:                                        ; preds = %if.end16
  store i32 -14, ptr %retval, align 4, !dbg !5558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5558

if.end35:                                         ; preds = %if.end16
  store i32 0, ptr %retval, align 4, !dbg !5559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5559

cleanup:                                          ; preds = %if.end35, %if.then34, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5560
  call void @llvm.lifetime.end.p0(i64 64, ptr %v) #14, !dbg !5560
  call void @llvm.lifetime.end.p0(i64 36, ptr %v32) #14, !dbg !5560
  %19 = load i32, ptr %retval, align 4, !dbg !5560
  ret i32 %19, !dbg !5560
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compat_drm_getunique(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5561 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %uq32 = alloca %struct.drm_unique32, align 4
  %uq = alloca %struct.drm_unique, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.drm_unique, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5563, metadata !DIExpression()), !dbg !5578
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5564, metadata !DIExpression()), !dbg !5579
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5565, metadata !DIExpression()), !dbg !5580
  call void @llvm.lifetime.start.p0(i64 8, ptr %uq32) #14, !dbg !5581
  call void @llvm.dbg.declare(metadata ptr %uq32, metadata !5566, metadata !DIExpression()), !dbg !5582
  call void @llvm.lifetime.start.p0(i64 16, ptr %uq) #14, !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %uq, metadata !5572, metadata !DIExpression()), !dbg !5584
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5585
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5577, metadata !DIExpression()), !dbg !5586
  %0 = load i64, ptr %arg.addr, align 8, !dbg !5587
  %1 = inttoptr i64 %0 to ptr, !dbg !5589
  %call = call i64 @copy_from_user(ptr noundef %uq32, ptr noundef %1, i64 noundef 8) #15, !dbg !5590
  %tobool = icmp ne i64 %call, 0, !dbg !5590
  br i1 %tobool, label %if.then, label %if.end, !dbg !5591

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !5592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5592

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %uq, i8 0, i64 16, i1 false), !dbg !5593
  %unique_len = getelementptr inbounds %struct.drm_unique, ptr %.compoundliteral, i32 0, i32 0, !dbg !5594
  %unique_len1 = getelementptr inbounds %struct.drm_unique32, ptr %uq32, i32 0, i32 0, !dbg !5595
  %2 = load i32, ptr %unique_len1, align 4, !dbg !5595
  %conv = zext i32 %2 to i64, !dbg !5596
  store i64 %conv, ptr %unique_len, align 8, !dbg !5594
  %unique = getelementptr inbounds %struct.drm_unique, ptr %.compoundliteral, i32 0, i32 1, !dbg !5594
  %unique2 = getelementptr inbounds %struct.drm_unique32, ptr %uq32, i32 0, i32 1, !dbg !5597
  %3 = load i32, ptr %unique2, align 4, !dbg !5597
  %call3 = call ptr @compat_ptr(i32 noundef %3) #15, !dbg !5598
  store ptr %call3, ptr %unique, align 8, !dbg !5594
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %uq, ptr align 8 %.compoundliteral, i64 16, i1 false), !dbg !5599
  %4 = load ptr, ptr %file.addr, align 8, !dbg !5600
  %call4 = call i64 @drm_ioctl_kernel(ptr noundef %4, ptr noundef @drm_getunique, ptr noundef %uq, i32 noundef 0) #15, !dbg !5601
  %conv5 = trunc i64 %call4 to i32, !dbg !5601
  store i32 %conv5, ptr %err, align 4, !dbg !5602
  %5 = load i32, ptr %err, align 4, !dbg !5603
  %tobool6 = icmp ne i32 %5, 0, !dbg !5603
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5605

if.then7:                                         ; preds = %if.end
  %6 = load i32, ptr %err, align 4, !dbg !5606
  store i32 %6, ptr %retval, align 4, !dbg !5607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5607

if.end8:                                          ; preds = %if.end
  %unique_len9 = getelementptr inbounds %struct.drm_unique, ptr %uq, i32 0, i32 0, !dbg !5608
  %7 = load i64, ptr %unique_len9, align 8, !dbg !5608
  %conv10 = trunc i64 %7 to i32, !dbg !5609
  %unique_len11 = getelementptr inbounds %struct.drm_unique32, ptr %uq32, i32 0, i32 0, !dbg !5610
  store i32 %conv10, ptr %unique_len11, align 4, !dbg !5611
  %8 = load i64, ptr %arg.addr, align 8, !dbg !5612
  %9 = inttoptr i64 %8 to ptr, !dbg !5614
  %call12 = call i64 @copy_to_user(ptr noundef %9, ptr noundef %uq32, i64 noundef 8) #15, !dbg !5615
  %tobool13 = icmp ne i64 %call12, 0, !dbg !5615
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5616

if.then14:                                        ; preds = %if.end8
  store i32 -14, ptr %retval, align 4, !dbg !5617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5617

if.end15:                                         ; preds = %if.end8
  store i32 0, ptr %retval, align 4, !dbg !5618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5618

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5619
  call void @llvm.lifetime.end.p0(i64 16, ptr %uq) #14, !dbg !5619
  call void @llvm.lifetime.end.p0(i64 8, ptr %uq32) #14, !dbg !5619
  %10 = load i32, ptr %retval, align 4, !dbg !5619
  ret i32 %10, !dbg !5619
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compat_drm_getclient(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5620 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %c32 = alloca %struct.drm_client32, align 4
  %argp = alloca ptr, align 8
  %client = alloca %struct.drm_client, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5622, metadata !DIExpression()), !dbg !5647
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5623, metadata !DIExpression()), !dbg !5648
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5624, metadata !DIExpression()), !dbg !5649
  call void @llvm.lifetime.start.p0(i64 24, ptr %c32) #14, !dbg !5650
  call void @llvm.dbg.declare(metadata ptr %c32, metadata !5625, metadata !DIExpression()), !dbg !5651
  call void @llvm.lifetime.start.p0(i64 8, ptr %argp) #14, !dbg !5652
  call void @llvm.dbg.declare(metadata ptr %argp, metadata !5635, metadata !DIExpression()), !dbg !5653
  %0 = load i64, ptr %arg.addr, align 8, !dbg !5654
  %1 = inttoptr i64 %0 to ptr, !dbg !5655
  store ptr %1, ptr %argp, align 8, !dbg !5653
  call void @llvm.lifetime.start.p0(i64 40, ptr %client) #14, !dbg !5656
  call void @llvm.dbg.declare(metadata ptr %client, metadata !5637, metadata !DIExpression()), !dbg !5657
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5658
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5646, metadata !DIExpression()), !dbg !5659
  %2 = load ptr, ptr %argp, align 8, !dbg !5660
  %call = call i64 @copy_from_user(ptr noundef %c32, ptr noundef %2, i64 noundef 24) #15, !dbg !5662
  %tobool = icmp ne i64 %call, 0, !dbg !5662
  br i1 %tobool, label %if.then, label %if.end, !dbg !5663

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !5664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5664

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %client, i8 0, i64 40, i1 false), !dbg !5665
  %idx = getelementptr inbounds %struct.drm_client32, ptr %c32, i32 0, i32 0, !dbg !5666
  %3 = load i32, ptr %idx, align 4, !dbg !5666
  %idx1 = getelementptr inbounds %struct.drm_client, ptr %client, i32 0, i32 0, !dbg !5667
  store i32 %3, ptr %idx1, align 8, !dbg !5668
  %4 = load ptr, ptr %file.addr, align 8, !dbg !5669
  %call2 = call i64 @drm_ioctl_kernel(ptr noundef %4, ptr noundef @drm_getclient, ptr noundef %client, i32 noundef 0) #15, !dbg !5670
  %conv = trunc i64 %call2 to i32, !dbg !5670
  store i32 %conv, ptr %err, align 4, !dbg !5671
  %5 = load i32, ptr %err, align 4, !dbg !5672
  %tobool3 = icmp ne i32 %5, 0, !dbg !5672
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5674

if.then4:                                         ; preds = %if.end
  %6 = load i32, ptr %err, align 4, !dbg !5675
  store i32 %6, ptr %retval, align 4, !dbg !5676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5676

if.end5:                                          ; preds = %if.end
  %idx6 = getelementptr inbounds %struct.drm_client, ptr %client, i32 0, i32 0, !dbg !5677
  %7 = load i32, ptr %idx6, align 8, !dbg !5677
  %idx7 = getelementptr inbounds %struct.drm_client32, ptr %c32, i32 0, i32 0, !dbg !5678
  store i32 %7, ptr %idx7, align 4, !dbg !5679
  %auth = getelementptr inbounds %struct.drm_client, ptr %client, i32 0, i32 1, !dbg !5680
  %8 = load i32, ptr %auth, align 4, !dbg !5680
  %auth8 = getelementptr inbounds %struct.drm_client32, ptr %c32, i32 0, i32 1, !dbg !5681
  store i32 %8, ptr %auth8, align 4, !dbg !5682
  %pid = getelementptr inbounds %struct.drm_client, ptr %client, i32 0, i32 2, !dbg !5683
  %9 = load i64, ptr %pid, align 8, !dbg !5683
  %conv9 = trunc i64 %9 to i32, !dbg !5684
  %pid10 = getelementptr inbounds %struct.drm_client32, ptr %c32, i32 0, i32 2, !dbg !5685
  store i32 %conv9, ptr %pid10, align 4, !dbg !5686
  %uid = getelementptr inbounds %struct.drm_client, ptr %client, i32 0, i32 3, !dbg !5687
  %10 = load i64, ptr %uid, align 8, !dbg !5687
  %conv11 = trunc i64 %10 to i32, !dbg !5688
  %uid12 = getelementptr inbounds %struct.drm_client32, ptr %c32, i32 0, i32 3, !dbg !5689
  store i32 %conv11, ptr %uid12, align 4, !dbg !5690
  %magic = getelementptr inbounds %struct.drm_client, ptr %client, i32 0, i32 4, !dbg !5691
  %11 = load i64, ptr %magic, align 8, !dbg !5691
  %conv13 = trunc i64 %11 to i32, !dbg !5692
  %magic14 = getelementptr inbounds %struct.drm_client32, ptr %c32, i32 0, i32 4, !dbg !5693
  store i32 %conv13, ptr %magic14, align 4, !dbg !5694
  %iocs = getelementptr inbounds %struct.drm_client, ptr %client, i32 0, i32 5, !dbg !5695
  %12 = load i64, ptr %iocs, align 8, !dbg !5695
  %conv15 = trunc i64 %12 to i32, !dbg !5696
  %iocs16 = getelementptr inbounds %struct.drm_client32, ptr %c32, i32 0, i32 5, !dbg !5697
  store i32 %conv15, ptr %iocs16, align 4, !dbg !5698
  %13 = load ptr, ptr %argp, align 8, !dbg !5699
  %call17 = call i64 @copy_to_user(ptr noundef %13, ptr noundef %c32, i64 noundef 24) #15, !dbg !5701
  %tobool18 = icmp ne i64 %call17, 0, !dbg !5701
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5702

if.then19:                                        ; preds = %if.end5
  store i32 -14, ptr %retval, align 4, !dbg !5703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5703

if.end20:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !5704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5704

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5705
  call void @llvm.lifetime.end.p0(i64 40, ptr %client) #14, !dbg !5705
  call void @llvm.lifetime.end.p0(i64 8, ptr %argp) #14, !dbg !5705
  call void @llvm.lifetime.end.p0(i64 24, ptr %c32) #14, !dbg !5705
  %14 = load i32, ptr %retval, align 4, !dbg !5705
  ret i32 %14, !dbg !5705
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compat_drm_getstats(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5706 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %argp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5708, metadata !DIExpression()), !dbg !5725
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5709, metadata !DIExpression()), !dbg !5726
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5710, metadata !DIExpression()), !dbg !5727
  call void @llvm.lifetime.start.p0(i64 8, ptr %argp) #14, !dbg !5728
  call void @llvm.dbg.declare(metadata ptr %argp, metadata !5711, metadata !DIExpression()), !dbg !5729
  %0 = load i64, ptr %arg.addr, align 8, !dbg !5730
  %1 = inttoptr i64 %0 to ptr, !dbg !5731
  store ptr %1, ptr %argp, align 8, !dbg !5729
  %2 = load ptr, ptr %argp, align 8, !dbg !5732
  %call = call i64 @clear_user(ptr noundef %2, i64 noundef 124) #15, !dbg !5734
  %tobool = icmp ne i64 %call, 0, !dbg !5734
  br i1 %tobool, label %if.then, label %if.end, !dbg !5735

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !5736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5736

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5737

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %argp) #14, !dbg !5738
  %3 = load i32, ptr %retval, align 4, !dbg !5738
  ret i32 %3, !dbg !5738
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compat_drm_setunique(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5739 {
entry:
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5741, metadata !DIExpression()), !dbg !5744
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5742, metadata !DIExpression()), !dbg !5745
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5743, metadata !DIExpression()), !dbg !5746
  ret i32 -22, !dbg !5747
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compat_drm_wait_vblank(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5748 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %argp = alloca ptr, align 8
  %req32 = alloca %union.drm_wait_vblank32, align 4
  %req = alloca %union.drm_wait_vblank, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5750, metadata !DIExpression()), !dbg !5789
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5751, metadata !DIExpression()), !dbg !5790
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5752, metadata !DIExpression()), !dbg !5791
  call void @llvm.lifetime.start.p0(i64 8, ptr %argp) #14, !dbg !5792
  call void @llvm.dbg.declare(metadata ptr %argp, metadata !5753, metadata !DIExpression()), !dbg !5793
  %0 = load i64, ptr %arg.addr, align 8, !dbg !5794
  %1 = inttoptr i64 %0 to ptr, !dbg !5795
  store ptr %1, ptr %argp, align 8, !dbg !5793
  call void @llvm.lifetime.start.p0(i64 16, ptr %req32) #14, !dbg !5796
  call void @llvm.dbg.declare(metadata ptr %req32, metadata !5771, metadata !DIExpression()), !dbg !5797
  call void @llvm.lifetime.start.p0(i64 24, ptr %req) #14, !dbg !5798
  call void @llvm.dbg.declare(metadata ptr %req, metadata !5772, metadata !DIExpression()), !dbg !5799
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5800
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5788, metadata !DIExpression()), !dbg !5801
  %2 = load ptr, ptr %argp, align 8, !dbg !5802
  %call = call i64 @copy_from_user(ptr noundef %req32, ptr noundef %2, i64 noundef 16) #15, !dbg !5804
  %tobool = icmp ne i64 %call, 0, !dbg !5804
  br i1 %tobool, label %if.then, label %if.end, !dbg !5805

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !5806
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5806

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %req, i8 0, i64 24, i1 false), !dbg !5807
  %type = getelementptr inbounds %struct.drm_wait_vblank_request32, ptr %req32, i32 0, i32 0, !dbg !5808
  %3 = load i32, ptr %type, align 4, !dbg !5808
  %type1 = getelementptr inbounds %struct.drm_wait_vblank_request, ptr %req, i32 0, i32 0, !dbg !5809
  store i32 %3, ptr %type1, align 8, !dbg !5810
  %sequence = getelementptr inbounds %struct.drm_wait_vblank_request32, ptr %req32, i32 0, i32 1, !dbg !5811
  %4 = load i32, ptr %sequence, align 4, !dbg !5811
  %sequence2 = getelementptr inbounds %struct.drm_wait_vblank_request, ptr %req, i32 0, i32 1, !dbg !5812
  store i32 %4, ptr %sequence2, align 4, !dbg !5813
  %signal = getelementptr inbounds %struct.drm_wait_vblank_request32, ptr %req32, i32 0, i32 2, !dbg !5814
  %5 = load i32, ptr %signal, align 4, !dbg !5814
  %conv = zext i32 %5 to i64, !dbg !5815
  %signal3 = getelementptr inbounds %struct.drm_wait_vblank_request, ptr %req, i32 0, i32 2, !dbg !5816
  store i64 %conv, ptr %signal3, align 8, !dbg !5817
  %6 = load ptr, ptr %file.addr, align 8, !dbg !5818
  %call4 = call i64 @drm_ioctl_kernel(ptr noundef %6, ptr noundef @drm_wait_vblank_ioctl, ptr noundef %req, i32 noundef 16) #15, !dbg !5819
  %conv5 = trunc i64 %call4 to i32, !dbg !5819
  store i32 %conv5, ptr %err, align 4, !dbg !5820
  %type6 = getelementptr inbounds %struct.drm_wait_vblank_reply, ptr %req, i32 0, i32 0, !dbg !5821
  %7 = load i32, ptr %type6, align 8, !dbg !5821
  %type7 = getelementptr inbounds %struct.drm_wait_vblank_reply32, ptr %req32, i32 0, i32 0, !dbg !5822
  store i32 %7, ptr %type7, align 4, !dbg !5823
  %sequence8 = getelementptr inbounds %struct.drm_wait_vblank_reply, ptr %req, i32 0, i32 1, !dbg !5824
  %8 = load i32, ptr %sequence8, align 4, !dbg !5824
  %sequence9 = getelementptr inbounds %struct.drm_wait_vblank_reply32, ptr %req32, i32 0, i32 1, !dbg !5825
  store i32 %8, ptr %sequence9, align 4, !dbg !5826
  %tval_sec = getelementptr inbounds %struct.drm_wait_vblank_reply, ptr %req, i32 0, i32 2, !dbg !5827
  %9 = load i64, ptr %tval_sec, align 8, !dbg !5827
  %conv10 = trunc i64 %9 to i32, !dbg !5828
  %tval_sec11 = getelementptr inbounds %struct.drm_wait_vblank_reply32, ptr %req32, i32 0, i32 2, !dbg !5829
  store i32 %conv10, ptr %tval_sec11, align 4, !dbg !5830
  %tval_usec = getelementptr inbounds %struct.drm_wait_vblank_reply, ptr %req, i32 0, i32 3, !dbg !5831
  %10 = load i64, ptr %tval_usec, align 8, !dbg !5831
  %conv12 = trunc i64 %10 to i32, !dbg !5832
  %tval_usec13 = getelementptr inbounds %struct.drm_wait_vblank_reply32, ptr %req32, i32 0, i32 3, !dbg !5833
  store i32 %conv12, ptr %tval_usec13, align 4, !dbg !5834
  %11 = load ptr, ptr %argp, align 8, !dbg !5835
  %call14 = call i64 @copy_to_user(ptr noundef %11, ptr noundef %req32, i64 noundef 16) #15, !dbg !5837
  %tobool15 = icmp ne i64 %call14, 0, !dbg !5837
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5838

if.then16:                                        ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !5839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5839

if.end17:                                         ; preds = %if.end
  %12 = load i32, ptr %err, align 4, !dbg !5840
  store i32 %12, ptr %retval, align 4, !dbg !5841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5841

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5842
  call void @llvm.lifetime.end.p0(i64 24, ptr %req) #14, !dbg !5842
  call void @llvm.lifetime.end.p0(i64 16, ptr %req32) #14, !dbg !5842
  call void @llvm.lifetime.end.p0(i64 8, ptr %argp) #14, !dbg !5842
  %13 = load i32, ptr %retval, align 4, !dbg !5842
  ret i32 %13, !dbg !5842
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compat_drm_update_draw(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5843 {
entry:
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5845, metadata !DIExpression()), !dbg !5848
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5846, metadata !DIExpression()), !dbg !5849
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5847, metadata !DIExpression()), !dbg !5850
  ret i32 0, !dbg !5851
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compat_drm_mode_addfb2(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5852 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %argp = alloca ptr, align 8
  %req64 = alloca %struct.drm_mode_fb_cmd2, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp12 = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5854, metadata !DIExpression()), !dbg !5882
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5855, metadata !DIExpression()), !dbg !5883
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5856, metadata !DIExpression()), !dbg !5884
  call void @llvm.lifetime.start.p0(i64 8, ptr %argp) #14, !dbg !5885
  call void @llvm.dbg.declare(metadata ptr %argp, metadata !5857, metadata !DIExpression()), !dbg !5886
  %0 = load i64, ptr %arg.addr, align 8, !dbg !5887
  %1 = inttoptr i64 %0 to ptr, !dbg !5888
  store ptr %1, ptr %argp, align 8, !dbg !5886
  call void @llvm.lifetime.start.p0(i64 104, ptr %req64) #14, !dbg !5889
  call void @llvm.dbg.declare(metadata ptr %req64, metadata !5872, metadata !DIExpression()), !dbg !5890
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5891
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5873, metadata !DIExpression()), !dbg !5892
  call void @llvm.memset.p0.i64(ptr align 8 %req64, i8 0, i64 104, i1 false), !dbg !5893
  %2 = load ptr, ptr %argp, align 8, !dbg !5894
  %call = call i64 @copy_from_user(ptr noundef %req64, ptr noundef %2, i64 noundef 68) #15, !dbg !5896
  %tobool = icmp ne i64 %call, 0, !dbg !5896
  br i1 %tobool, label %if.then, label %if.end, !dbg !5897

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !5898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5898

if.end:                                           ; preds = %entry
  %modifier = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %req64, i32 0, i32 8, !dbg !5899
  %3 = load ptr, ptr %argp, align 8, !dbg !5901
  %modifier1 = getelementptr inbounds %struct.drm_mode_fb_cmd232, ptr %3, i32 0, i32 8, !dbg !5902
  %call2 = call i64 @copy_from_user(ptr noundef %modifier, ptr noundef %modifier1, i64 noundef 32) #15, !dbg !5903
  %tobool3 = icmp ne i64 %call2, 0, !dbg !5903
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5904

if.then4:                                         ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !5905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5905

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %file.addr, align 8, !dbg !5906
  %call6 = call i64 @drm_ioctl_kernel(ptr noundef %4, ptr noundef @drm_mode_addfb2, ptr noundef %req64, i32 noundef 0) #15, !dbg !5907
  %conv = trunc i64 %call6 to i32, !dbg !5907
  store i32 %conv, ptr %err, align 4, !dbg !5908
  %5 = load i32, ptr %err, align 4, !dbg !5909
  %tobool7 = icmp ne i32 %5, 0, !dbg !5909
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5911

if.then8:                                         ; preds = %if.end5
  %6 = load i32, ptr %err, align 4, !dbg !5912
  store i32 %6, ptr %retval, align 4, !dbg !5913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5913

if.end9:                                          ; preds = %if.end5
  call void @might_fault() #15, !dbg !5914
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #14, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5874, metadata !DIExpression()), !dbg !5915
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #14, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5878, metadata !DIExpression()), !dbg !5915
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #14, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5879, metadata !DIExpression()), !dbg !5915
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #14, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5880, metadata !DIExpression()), !dbg !5915
  %fb_id = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %req64, i32 0, i32 0, !dbg !5915
  %7 = load i32, ptr %fb_id, align 8, !dbg !5915
  store i32 %7, ptr %__x, align 4, !dbg !5915
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5881, metadata !DIExpression()), !dbg !5915
  %8 = load ptr, ptr %argp, align 8, !dbg !5915
  %fb_id10 = getelementptr inbounds %struct.drm_mode_fb_cmd232, ptr %8, i32 0, i32 0, !dbg !5915
  store ptr %fb_id10, ptr %__ptr, align 8, !dbg !5915
  %9 = load ptr, ptr %__ptr, align 8, !dbg !5915
  store ptr %9, ptr %__ptr_pu, align 8, !dbg !5915
  %10 = load i32, ptr %__x, align 4, !dbg !5915
  store i32 %10, ptr %__val_pu, align 4, !dbg !5915
  %11 = call i64 @llvm.read_register.i64(metadata !4416), !dbg !5915
  %12 = load ptr, ptr %__ptr_pu, align 8, !dbg !5915
  %13 = load i32, ptr %__val_pu, align 4, !dbg !5915
  %14 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %12, i32 %13, i64 4, i64 %11) #14, !dbg !5915, !srcloc !5916
  %asmresult = extractvalue { ptr, i64 } %14, 0, !dbg !5915
  %asmresult11 = extractvalue { ptr, i64 } %14, 1, !dbg !5915
  %15 = ptrtoint ptr %asmresult to i64, !dbg !5915
  %16 = trunc i64 %15 to i32, !dbg !5915
  store i32 %16, ptr %__ret_pu, align 4, !dbg !5915
  call void @llvm.write_register.i64(metadata !4416, i64 %asmresult11), !dbg !5915
  %17 = load ptr, ptr %__ptr, align 8, !dbg !5917
  call void @kmsan_copy_to_user(ptr noundef %17, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #15, !dbg !5917
  %18 = load i32, ptr %__ret_pu, align 4, !dbg !5915
  %conv13 = sext i32 %18 to i64, !dbg !5915
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5915
  store i64 %expval, ptr %tmp12, align 8, !dbg !5915
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #14, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #14, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #14, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #14, !dbg !5914
  %19 = load i64, ptr %tmp12, align 8, !dbg !5915
  store i64 %19, ptr %tmp, align 8, !dbg !5914
  %20 = load i64, ptr %tmp, align 8, !dbg !5914
  %tobool14 = icmp ne i64 %20, 0, !dbg !5919
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5920

if.then15:                                        ; preds = %if.end9
  store i32 -14, ptr %retval, align 4, !dbg !5921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5921

if.end16:                                         ; preds = %if.end9
  store i32 0, ptr %retval, align 4, !dbg !5922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5922

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5923
  call void @llvm.lifetime.end.p0(i64 104, ptr %req64) #14, !dbg !5923
  call void @llvm.lifetime.end.p0(i64 8, ptr %argp) #14, !dbg !5923
  %21 = load i32, ptr %retval, align 4, !dbg !5923
  ret i32 %21, !dbg !5923
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !5924 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5929, metadata !DIExpression()), !dbg !5932
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5930, metadata !DIExpression()), !dbg !5933
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5931, metadata !DIExpression()), !dbg !5934
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5935
  %1 = load i64, ptr %n.addr, align 8, !dbg !5937
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #15, !dbg !5938
  br i1 %call, label %if.then, label %if.end, !dbg !5939

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5940
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5941
  %4 = load i64, ptr %n.addr, align 8, !dbg !5942
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !5943
  store i64 %call1, ptr %n.addr, align 8, !dbg !5944
  br label %if.end, !dbg !5945

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5946
  ret i64 %5, !dbg !5947
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @compat_ptr(i32 noundef %uptr) #5 align 16 !dbg !5948 {
entry:
  %uptr.addr = alloca i32, align 4
  store i32 %uptr, ptr %uptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !5952, metadata !DIExpression()), !dbg !5953
  %0 = load i32, ptr %uptr.addr, align 4, !dbg !5954
  %conv = zext i32 %0 to i64, !dbg !5955
  %1 = inttoptr i64 %conv to ptr, !dbg !5956
  ret ptr %1, !dbg !5957
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5958 dso_local i64 @drm_ioctl_kernel(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_version(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !5965 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5967, metadata !DIExpression()), !dbg !5970
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5968, metadata !DIExpression()), !dbg !5971
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5969, metadata !DIExpression()), !dbg !5972
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5973
  %1 = load i64, ptr %n.addr, align 8, !dbg !5975
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #15, !dbg !5976
  br i1 %call, label %if.then, label %if.end, !dbg !5977

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5978
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5979
  %4 = load i64, ptr %n.addr, align 8, !dbg !5980
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !5981
  store i64 %call1, ptr %n.addr, align 8, !dbg !5982
  br label %if.end, !dbg !5983

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5984
  ret i64 %5, !dbg !5985
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #4 align 16 !dbg !5986 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5990, metadata !DIExpression()), !dbg !6000
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5991, metadata !DIExpression()), !dbg !6001
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !5992, metadata !DIExpression()), !dbg !6002
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #14, !dbg !6003
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5993, metadata !DIExpression()), !dbg !6004
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6005
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6006
  %conv = trunc i64 %1 to i32, !dbg !6006
  store i32 %conv, ptr %sz, align 4, !dbg !6004
  %2 = load i32, ptr %sz, align 4, !dbg !6007
  %cmp = icmp sge i32 %2, 0, !dbg !6007
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6007

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6007
  %conv2 = sext i32 %3 to i64, !dbg !6007
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6007
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6007
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6009
  %lnot = xor i1 %5, true, !dbg !6007
  %lnot5 = xor i1 %lnot, true, !dbg !6007
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6007
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6007
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6007
  %tobool = icmp ne i64 %expval, 0, !dbg !6007
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6010

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6011
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6014
  br i1 %7, label %if.else, label %if.then7, !dbg !6015

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6016
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6017
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #15, !dbg !6018
  br label %if.end11, !dbg !6018

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6019, !range !5373, !noundef !648
  %tobool8 = trunc i8 %10 to i1, !dbg !6019
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6021

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #15, !dbg !6022, !srcloc !6023
  br label %if.end, !dbg !6022

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #15, !dbg !6024, !srcloc !6025
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6026
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6026

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6027
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5994, metadata !DIExpression()), !dbg !6027
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6027
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6027
  %lnot15 = xor i1 %cmp13, true, !dbg !6027
  %lnot17 = xor i1 %lnot15, true, !dbg !6027
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6027
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6027
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6028
  %tobool19 = icmp ne i32 %12, 0, !dbg !6028
  %lnot20 = xor i1 %tobool19, true, !dbg !6028
  %lnot22 = xor i1 %lnot20, true, !dbg !6028
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6028
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6028
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6028
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6028
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6027

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6028

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6029
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5997, metadata !DIExpression()), !dbg !6029
  store i32 2307, ptr %__flags, align 4, !dbg !6029
  br label %do.body28, !dbg !6029

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6030

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6030

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6029

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6032
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 249, i32 %13, i64 12) #14, !dbg !6032, !srcloc !6034
  br label %do.cond30, !dbg !6032

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6032

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6029

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6035

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6035

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6028
  br label %do.cond35, !dbg !6029

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6029

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6029

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6027
  %tobool38 = icmp ne i32 %14, 0, !dbg !6027
  %lnot39 = xor i1 %tobool38, true, !dbg !6027
  %lnot41 = xor i1 %lnot39, true, !dbg !6027
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6027
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6027
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6027
  store i64 %expval44, ptr %tmp, align 8, !dbg !6028
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6037
  %15 = load i64, ptr %tmp, align 8, !dbg !6027
  %tobool45 = icmp ne i64 %15, 0, !dbg !6037
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6038

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6039

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6040
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6041
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6042, !range !5373, !noundef !648
  %tobool48 = trunc i8 %18 to i1, !dbg !6042
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #15, !dbg !6043
  store i1 true, ptr %retval, align 1, !dbg !6044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6044

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #14, !dbg !6045
  %19 = load i1, ptr %retval, align 1, !dbg !6045
  ret i1 %19, !dbg !6045
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6046 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !6047 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6051, metadata !DIExpression()), !dbg !6053
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6052, metadata !DIExpression()), !dbg !6054
  %0 = load i32, ptr %size.addr, align 4, !dbg !6055
  %1 = load i64, ptr %count.addr, align 8, !dbg !6057
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #15, !dbg !6058
  ret void, !dbg !6059
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6060 dso_local void @__bad_copy_from() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6061 dso_local void @__bad_copy_to() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !6062 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6066, metadata !DIExpression()), !dbg !6069
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6067, metadata !DIExpression()), !dbg !6070
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6068, metadata !DIExpression()), !dbg !6071
  ret void, !dbg !6072
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6073 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6074 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_getunique(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_getclient(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @clear_user(ptr noundef %to, i64 noundef %n) #4 align 16 !dbg !6075 {
entry:
  %retval = alloca i64, align 8
  %to.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6080, metadata !DIExpression()), !dbg !6082
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6081, metadata !DIExpression()), !dbg !6083
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6084
  %1 = load i64, ptr %n.addr, align 8, !dbg !6086
  %call = call zeroext i1 @__access_ok(ptr noundef %0, i64 noundef %1) #15, !dbg !6087
  br i1 %call, label %if.then, label %if.end, !dbg !6088

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6089
  %3 = load i64, ptr %n.addr, align 8, !dbg !6090
  %call1 = call i64 @__clear_user(ptr noundef %2, i64 noundef %3) #15, !dbg !6091
  store i64 %call1, ptr %retval, align 8, !dbg !6092
  br label %return, !dbg !6092

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %n.addr, align 8, !dbg !6093
  store i64 %4, ptr %retval, align 8, !dbg !6094
  br label %return, !dbg !6094

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !6095
  ret i64 %5, !dbg !6095
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #5 align 16 !dbg !6096 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6100, metadata !DIExpression()), !dbg !6105
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6101, metadata !DIExpression()), !dbg !6106
  %0 = load i64, ptr %size.addr, align 8, !dbg !6107
  %cmp = icmp ule i64 %0, 4096, !dbg !6108
  %conv = zext i1 %cmp to i32, !dbg !6108
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6109
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !6110

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6111
  %cmp1 = icmp ule i64 %2, 4096, !dbg !6112
  br i1 %cmp1, label %if.then, label %if.else, !dbg !6113

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !6114
  %4 = ptrtoint ptr %3 to i64, !dbg !6114
  %cmp3 = icmp sge i64 %4, 0, !dbg !6114
  store i1 %cmp3, ptr %retval, align 1, !dbg !6116
  br label %return, !dbg !6116

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #14, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !6102, metadata !DIExpression()), !dbg !6118
  %5 = load i64, ptr %size.addr, align 8, !dbg !6119
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !6120
  %7 = ptrtoint ptr %6 to i64, !dbg !6121
  %add = add i64 %5, %7, !dbg !6122
  store i64 %add, ptr %sum, align 8, !dbg !6118
  %8 = load i64, ptr %sum, align 8, !dbg !6123
  %cmp5 = icmp sge i64 %8, 0, !dbg !6123
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !6124

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !6125
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !6126
  %11 = ptrtoint ptr %10 to i64, !dbg !6127
  %cmp7 = icmp uge i64 %9, %11, !dbg !6128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !6129
  store i1 %12, ptr %retval, align 1, !dbg !6130
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #14, !dbg !6131
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !6132
  ret i1 %13, !dbg !6132
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__clear_user(ptr noundef %addr, i64 noundef %size) #4 align 16 !dbg !6133 {
entry:
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6135, metadata !DIExpression()), !dbg !6137
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6136, metadata !DIExpression()), !dbg !6138
  call void @might_fault() #15, !dbg !6139
  call void @stac() #15, !dbg !6140
  %0 = load i64, ptr %size.addr, align 8, !dbg !6141
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6141
  %2 = call i64 @llvm.read_register.i64(metadata !4416), !dbg !6141
  %3 = call { i64, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldnstr\0A661:\0A\09rep stosb\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (((1 << 0) << 16) $| ((12*32+11)))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call rep_stos_alternative\0A6651:\0A.popsection\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={rsp},{ax},0,1,{rsp},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 %0, ptr %1, i64 %2) #14, !dbg !6141, !srcloc !6142
  %asmresult = extractvalue { i64, ptr, i64 } %3, 0, !dbg !6141
  %asmresult1 = extractvalue { i64, ptr, i64 } %3, 1, !dbg !6141
  %asmresult2 = extractvalue { i64, ptr, i64 } %3, 2, !dbg !6141
  store i64 %asmresult, ptr %size.addr, align 8, !dbg !6141
  store ptr %asmresult1, ptr %addr.addr, align 8, !dbg !6141
  call void @llvm.write_register.i64(metadata !4416, i64 %asmresult2), !dbg !6141
  call void @clac() #15, !dbg !6143
  %4 = load i64, ptr %size.addr, align 8, !dbg !6144
  ret i64 %4, !dbg !6145
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #5 align 16 !dbg !6146 {
entry:
  ret void, !dbg !6148
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #4 align 16 !dbg !6149 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6151, !srcloc !6152
  ret void, !dbg !6153
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #4 align 16 !dbg !6154 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6155, !srcloc !6156
  ret void, !dbg !6157
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_wait_vblank_ioctl(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_mode_addfb2(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #5 align 16 !dbg !6158 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6163, metadata !DIExpression()), !dbg !6167
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6164, metadata !DIExpression()), !dbg !6168
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6165, metadata !DIExpression()), !dbg !6169
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6166, metadata !DIExpression()), !dbg !6170
  ret void, !dbg !6171
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #13 = { nocallback nounwind }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4416}
!llvm.module.flags = !{!4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424}
!llvm.ident = !{!4425}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "drm_compat_ioctls", scope: !2, file: !3, line: 913, type: !4405, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_ioc32.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_ioc32\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_ioc32.ll drivers/gpu/drm/drm_ioc32.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !254, globals: !4360, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_ioc32.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc1c2d33cf0bb503edc796246ee788fe")
!4 = !{!5, !11, !17, !24, !40, !46, !51, !57, !64, !72, !79, !87, !93, !100, !108, !116, !125, !130, !135, !141, !184, !193, !200, !213, !221, !226, !244}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !12, line: 16, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "TT_NONE", value: 0)
!15 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!16 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !18, line: 312, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!21 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!22 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!23 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !25, line: 1325, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!27 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!28 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!29 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!30 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!31 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!32 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!33 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!34 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!35 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!36 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!37 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!38 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!39 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !41, line: 26, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!44 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!45 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !47, line: 2052, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!50 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !52, line: 54, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "USRQUOTA", value: 0)
!55 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!56 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !58, line: 15, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!59 = !{!60, !61, !62, !63}
!60 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!61 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!62 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!63 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !65, line: 68, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!68 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!69 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!70 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!71 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !73, line: 51, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!76 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!77 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!78 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !80, line: 9, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!83 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!84 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!85 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!86 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !142, line: 91, baseType: !109, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9464b1418570a46bf1ac7fbe26140ef4")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!144 = !DIEnumerator(name: "MODE_OK", value: 0)
!145 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!146 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!147 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!148 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!149 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!150 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!151 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!152 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!153 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!154 = !DIEnumerator(name: "MODE_MEM", value: 10)
!155 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!156 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!157 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!158 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!159 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!160 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!161 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!162 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!163 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!164 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!165 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!166 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!167 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!168 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!169 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!170 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!171 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!172 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!173 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!174 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!175 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!176 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!177 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!178 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!179 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!180 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!181 = !DIEnumerator(name: "MODE_STALE", value: -3)
!182 = !DIEnumerator(name: "MODE_BAD", value: -2)
!183 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !185, line: 96, baseType: !7, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47f4ac8f6225c51a6d030bad9086771f")
!186 = !{!187, !188, !189, !190, !191, !192}
!187 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0)
!188 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1)
!189 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2)
!190 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3)
!191 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4)
!192 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !194, line: 30, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!195 = !{!196, !197, !198, !199}
!196 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!197 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!198 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!199 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !201, line: 330, baseType: !7, size: 32, elements: !202)
!201 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !212}
!203 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!204 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!205 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!206 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!207 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!208 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!209 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!210 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!211 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!212 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_ioctl_flags", file: !214, line: 80, baseType: !7, size: 32, elements: !215)
!214 = !DIFile(filename: "./include/drm/drm_ioctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ed9f6851df8ea62f4629791b091b99c")
!215 = !{!216, !217, !218, !219, !220}
!216 = !DIEnumerator(name: "DRM_AUTH", value: 1)
!217 = !DIEnumerator(name: "DRM_MASTER", value: 2)
!218 = !DIEnumerator(name: "DRM_ROOT_ONLY", value: 4)
!219 = !DIEnumerator(name: "DRM_UNLOCKED", value: 16)
!220 = !DIEnumerator(name: "DRM_RENDER_ALLOW", value: 32)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !222, line: 10, baseType: !7, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!223 = !{!224, !225}
!224 = !DIEnumerator(name: "false", value: 0)
!225 = !DIEnumerator(name: "true", value: 1)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_stat_type", file: !227, line: 245, baseType: !7, size: 32, elements: !228)
!227 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9daee414dd46c3bd0bb57211914f5e3a")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!229 = !DIEnumerator(name: "_DRM_STAT_LOCK", value: 0)
!230 = !DIEnumerator(name: "_DRM_STAT_OPENS", value: 1)
!231 = !DIEnumerator(name: "_DRM_STAT_CLOSES", value: 2)
!232 = !DIEnumerator(name: "_DRM_STAT_IOCTLS", value: 3)
!233 = !DIEnumerator(name: "_DRM_STAT_LOCKS", value: 4)
!234 = !DIEnumerator(name: "_DRM_STAT_UNLOCKS", value: 5)
!235 = !DIEnumerator(name: "_DRM_STAT_VALUE", value: 6)
!236 = !DIEnumerator(name: "_DRM_STAT_BYTE", value: 7)
!237 = !DIEnumerator(name: "_DRM_STAT_COUNT", value: 8)
!238 = !DIEnumerator(name: "_DRM_STAT_IRQ", value: 9)
!239 = !DIEnumerator(name: "_DRM_STAT_PRIMARY", value: 10)
!240 = !DIEnumerator(name: "_DRM_STAT_SECONDARY", value: 11)
!241 = !DIEnumerator(name: "_DRM_STAT_DMA", value: 12)
!242 = !DIEnumerator(name: "_DRM_STAT_SPECIAL", value: 13)
!243 = !DIEnumerator(name: "_DRM_STAT_MISSED", value: 14)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_vblank_seq_type", file: !227, line: 477, baseType: !7, size: 32, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253}
!246 = !DIEnumerator(name: "_DRM_VBLANK_ABSOLUTE", value: 0)
!247 = !DIEnumerator(name: "_DRM_VBLANK_RELATIVE", value: 1)
!248 = !DIEnumerator(name: "_DRM_VBLANK_HIGH_CRTC_MASK", value: 62)
!249 = !DIEnumerator(name: "_DRM_VBLANK_EVENT", value: 67108864)
!250 = !DIEnumerator(name: "_DRM_VBLANK_FLIP", value: 134217728)
!251 = !DIEnumerator(name: "_DRM_VBLANK_NEXTONMISS", value: 268435456)
!252 = !DIEnumerator(name: "_DRM_VBLANK_SECONDARY", value: 536870912)
!253 = !DIEnumerator(name: "_DRM_VBLANK_SIGNAL", value: 1073741824)
!254 = !{!109, !255, !256, !257, !258, !259, !7}
!255 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!257 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !261, line: 746, size: 58368, elements: !262)
!261 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!262 = !{!263, !275, !276, !277, !288, !289, !290, !291, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !383, !394, !521, !525, !528, !559, !560, !561, !562, !573, !575, !576, !577, !578, !579, !580, !591, !592, !595, !596, !597, !598, !599, !600, !601, !602, !609, !610, !617, !618, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3503, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3551, !3557, !3558, !3559, !3560, !3561, !3563, !3566, !3573, !3578, !3581, !3584, !3587, !3613, !3751, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3789, !3790, !3791, !3800, !3808, !3809, !3810, !3811, !3812, !3817, !3818, !3819, !3822, !3823, !3826, !3829, !3832, !3840, !3843, !3844, !3930, !3931, !3932, !3933, !3934, !3940, !3941, !3942, !3943, !3946, !3947, !3950, !3964, !3965, !3968, !3969, !3970, !3973, !3974, !3975, !3976, !3977, !3978, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4010, !4011, !4017, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4029, !4101, !4103, !4104, !4105, !4106, !4107, !4108, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4137, !4138, !4139}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !260, file: !261, line: 752, baseType: !264, size: 192)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !265, line: 56, size: 192, elements: !266)
!265 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!266 = !{!267, !268, !269, !274}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !264, file: !265, line: 57, baseType: !257, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !264, file: !265, line: 58, baseType: !257, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !264, file: !265, line: 59, baseType: !270, size: 32, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !271, line: 21, baseType: !272)
!271 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !273, line: 27, baseType: !7)
!273 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!274 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !264, file: !265, line: 61, baseType: !270, size: 32, offset: 160)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !260, file: !261, line: 754, baseType: !7, size: 32, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !260, file: !261, line: 767, baseType: !256, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !260, file: !261, line: 768, baseType: !278, size: 32, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !279, line: 113, baseType: !280)
!279 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !279, line: 111, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !280, file: !279, line: 112, baseType: !283, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !284, line: 174, baseType: !285)
!284 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 172, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !285, file: !284, line: 173, baseType: !109, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !260, file: !261, line: 770, baseType: !7, size: 32, offset: 352)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !260, file: !261, line: 771, baseType: !7, size: 32, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !260, file: !261, line: 774, baseType: !109, size: 32, offset: 416)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !260, file: !261, line: 775, baseType: !292, size: 128, offset: 448)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !293, line: 58, size: 128, elements: !294)
!293 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!294 = !{!295, !301, !306, !310}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !292, file: !293, line: 59, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !297, line: 60, size: 64, elements: !298)
!297 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !297, line: 61, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !293, line: 60, baseType: !302, size: 32, offset: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !293, line: 60, size: 32, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !302, file: !293, line: 61, baseType: !7, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !302, file: !293, line: 62, baseType: !283, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !292, file: !293, line: 65, baseType: !307, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !271, line: 19, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !273, line: 24, baseType: !309)
!309 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !292, file: !293, line: 65, baseType: !307, size: 16, offset: 112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !260, file: !261, line: 776, baseType: !7, size: 32, offset: 576)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !260, file: !261, line: 777, baseType: !257, size: 64, offset: 640)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !260, file: !261, line: 778, baseType: !259, size: 64, offset: 704)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !260, file: !261, line: 787, baseType: !109, size: 32, offset: 768)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !260, file: !261, line: 788, baseType: !109, size: 32, offset: 800)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !260, file: !261, line: 790, baseType: !109, size: 32, offset: 832)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !260, file: !261, line: 792, baseType: !109, size: 32, offset: 864)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !260, file: !261, line: 793, baseType: !109, size: 32, offset: 896)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !260, file: !261, line: 794, baseType: !109, size: 32, offset: 928)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !260, file: !261, line: 795, baseType: !7, size: 32, offset: 960)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !260, file: !261, line: 797, baseType: !322, size: 2048, offset: 1024)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !261, line: 551, size: 2048, elements: !323)
!323 = !{!324, !329, !337, !341, !342, !348, !349, !350, !351, !352, !353, !357, !358, !359, !360, !362, !365, !366, !367}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !322, file: !261, line: 553, baseType: !325, size: 128)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !261, line: 411, size: 128, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !325, file: !261, line: 412, baseType: !257, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !325, file: !261, line: 413, baseType: !270, size: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !322, file: !261, line: 554, baseType: !330, size: 192, align: 64, offset: 128)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !331, line: 5, size: 192, align: 64, elements: !332)
!331 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!332 = !{!333, !334, !336}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !330, file: !331, line: 6, baseType: !257, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !330, file: !331, line: 7, baseType: !335, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !330, file: !331, line: 8, baseType: !335, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !322, file: !261, line: 555, baseType: !338, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !271, line: 23, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !273, line: 31, baseType: !340)
!340 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !322, file: !261, line: 556, baseType: !338, size: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !322, file: !261, line: 558, baseType: !343, size: 128, offset: 448)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !284, line: 190, size: 128, elements: !344)
!344 = !{!345, !347}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !284, line: 191, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !343, file: !284, line: 191, baseType: !346, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !322, file: !261, line: 559, baseType: !7, size: 32, offset: 576)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !322, file: !261, line: 561, baseType: !338, size: 64, offset: 640)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !322, file: !261, line: 562, baseType: !338, size: 64, offset: 704)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !322, file: !261, line: 563, baseType: !338, size: 64, offset: 768)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !322, file: !261, line: 564, baseType: !338, size: 64, offset: 832)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !322, file: !261, line: 565, baseType: !354, size: 64, offset: 896)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !271, line: 22, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !273, line: 30, baseType: !356)
!356 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !322, file: !261, line: 566, baseType: !338, size: 64, offset: 960)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !322, file: !261, line: 568, baseType: !338, size: 64, offset: 1024)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !322, file: !261, line: 571, baseType: !109, size: 32, offset: 1088)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !322, file: !261, line: 572, baseType: !361, size: 64, offset: 1152)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !322, file: !261, line: 574, baseType: !363, size: 64, offset: 1216)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !261, line: 49, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !322, file: !261, line: 576, baseType: !363, size: 64, offset: 1280)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !322, file: !261, line: 578, baseType: !257, size: 64, offset: 1344)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !322, file: !261, line: 588, baseType: !368, size: 512, align: 512, offset: 1536)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !261, line: 497, size: 512, align: 512, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !368, file: !261, line: 498, baseType: !338, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !368, file: !261, line: 499, baseType: !338, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !368, file: !261, line: 500, baseType: !338, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !368, file: !261, line: 501, baseType: !270, size: 32, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !368, file: !261, line: 502, baseType: !270, size: 32, offset: 224)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !368, file: !261, line: 503, baseType: !257, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !368, file: !261, line: 504, baseType: !257, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !368, file: !261, line: 505, baseType: !257, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !368, file: !261, line: 506, baseType: !379, size: 64, align: 64, offset: 448)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !261, line: 445, size: 64, align: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !379, file: !261, line: 446, baseType: !7, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !379, file: !261, line: 447, baseType: !7, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !260, file: !261, line: 798, baseType: !384, size: 384, offset: 3072)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !261, line: 592, size: 384, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !384, file: !261, line: 593, baseType: !343, size: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !384, file: !261, line: 594, baseType: !257, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !384, file: !261, line: 595, baseType: !257, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !384, file: !261, line: 596, baseType: !7, size: 32, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !384, file: !261, line: 597, baseType: !309, size: 16, offset: 288)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !384, file: !261, line: 598, baseType: !309, size: 16, offset: 304)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !384, file: !261, line: 600, baseType: !393, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !260, file: !261, line: 799, baseType: !395, size: 1792, offset: 3456)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !261, line: 610, size: 1792, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !518, !519}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !395, file: !261, line: 611, baseType: !330, size: 192, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !395, file: !261, line: 618, baseType: !338, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !395, file: !261, line: 619, baseType: !338, size: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !395, file: !261, line: 620, baseType: !338, size: 64, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !395, file: !261, line: 621, baseType: !338, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !395, file: !261, line: 622, baseType: !338, size: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !395, file: !261, line: 629, baseType: !354, size: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !395, file: !261, line: 630, baseType: !338, size: 64, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !261, line: 631, baseType: !7, size: 32, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !395, file: !261, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !395, file: !261, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !395, file: !261, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !395, file: !261, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !395, file: !261, line: 662, baseType: !411, size: 512, offset: 704)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !412)
!412 = !{!413, !421, !422, !427, !514, !515, !516, !517}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !411, file: !6, line: 119, baseType: !414, size: 256)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !415, line: 9, size: 256, elements: !416)
!415 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !414, file: !415, line: 10, baseType: !330, size: 192, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !414, file: !415, line: 11, baseType: !419, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !420, line: 29, baseType: !354)
!420 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !411, file: !6, line: 120, baseType: !419, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !411, file: !6, line: 121, baseType: !423, size: 64, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!5, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !411, file: !6, line: 122, baseType: !428, size: 64, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !430)
!430 = !{!431, !482, !483, !487, !497, !498, !509, !513}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !429, file: !6, line: 160, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !434)
!434 = !{!435, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !433, file: !6, line: 216, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !437, line: 23, baseType: !438)
!437 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !437, line: 14, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !438, file: !437, line: 15, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !442, line: 44, baseType: !443)
!442 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !442, line: 14, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !442, line: 15, baseType: !446, size: 32)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !442, line: 15, size: 32, elements: !447)
!447 = !{!448, !449, !457}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !446, file: !442, line: 16, baseType: !283, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !442, line: 24, baseType: !450, size: 16)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !446, file: !442, line: 24, size: 16, elements: !451)
!451 = !{!452, !456}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !450, file: !442, line: 25, baseType: !453, size: 8)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !271, line: 17, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !273, line: 21, baseType: !455)
!455 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !450, file: !442, line: 26, baseType: !453, size: 8, offset: 8)
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !442, line: 28, baseType: !458, size: 32)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !446, file: !442, line: 28, size: 32, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !458, file: !442, line: 29, baseType: !307, size: 16)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !458, file: !442, line: 30, baseType: !307, size: 16, offset: 16)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !433, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !433, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !433, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !433, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !433, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !433, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !433, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !433, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !433, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !433, file: !6, line: 227, baseType: !309, size: 16, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !433, file: !6, line: 228, baseType: !309, size: 16, offset: 208)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !433, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !433, file: !6, line: 235, baseType: !419, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !433, file: !6, line: 236, baseType: !426, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !433, file: !6, line: 237, baseType: !419, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !433, file: !6, line: 238, baseType: !426, size: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !433, file: !6, line: 239, baseType: !479, size: 4096, align: 512, offset: 512)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 4096, align: 512, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 8)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !429, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !429, file: !6, line: 162, baseType: !484, size: 32, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !284, line: 32, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !486, line: 96, baseType: !109)
!486 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!487 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !429, file: !6, line: 163, baseType: !488, size: 32, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !489, line: 274, baseType: !490)
!489 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !489, line: 274, size: 32, elements: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !490, file: !489, line: 274, baseType: !493, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !489, line: 69, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !489, line: 64, size: 32, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !494, file: !489, line: 65, baseType: !7, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !429, file: !6, line: 164, baseType: !426, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !429, file: !6, line: 165, baseType: !499, size: 128, offset: 256)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !415, line: 14, size: 128, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !499, file: !415, line: 15, baseType: !502, size: 128)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !331, line: 26, size: 128, elements: !503)
!503 = !{!504, !508}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !502, file: !331, line: 27, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !331, line: 12, size: 64, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !505, file: !331, line: 13, baseType: !335, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !502, file: !331, line: 28, baseType: !335, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !429, file: !6, line: 166, baseType: !510, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!419}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !429, file: !6, line: 167, baseType: !419, size: 64, offset: 448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !411, file: !6, line: 123, baseType: !453, size: 8, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !411, file: !6, line: 124, baseType: !453, size: 8, offset: 456)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !411, file: !6, line: 125, baseType: !453, size: 8, offset: 464)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !411, file: !6, line: 126, baseType: !453, size: 8, offset: 472)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !395, file: !261, line: 671, baseType: !411, size: 512, offset: 1216)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !395, file: !261, line: 679, baseType: !520, size: 64, offset: 1728)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !260, file: !261, line: 800, baseType: !522, size: 64, offset: 5248)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !261, line: 800, flags: DIFlagFwdDecl)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !260, file: !261, line: 809, baseType: !526, size: 64, offset: 5312)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !261, line: 70, flags: DIFlagFwdDecl)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !260, file: !261, line: 825, baseType: !529, size: 2048, align: 512, offset: 5632)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !261, line: 509, size: 2048, align: 512, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !529, file: !261, line: 511, baseType: !338, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !529, file: !261, line: 512, baseType: !338, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !529, file: !261, line: 513, baseType: !338, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !529, file: !261, line: 514, baseType: !338, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !529, file: !261, line: 515, baseType: !338, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !529, file: !261, line: 516, baseType: !338, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !529, file: !261, line: 518, baseType: !338, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !529, file: !261, line: 519, baseType: !338, size: 64, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !529, file: !261, line: 520, baseType: !354, size: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !529, file: !261, line: 522, baseType: !338, size: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !529, file: !261, line: 523, baseType: !338, size: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !529, file: !261, line: 524, baseType: !354, size: 64, offset: 704)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !529, file: !261, line: 526, baseType: !354, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !529, file: !261, line: 527, baseType: !338, size: 64, offset: 832)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !529, file: !261, line: 529, baseType: !338, size: 64, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !529, file: !261, line: 530, baseType: !338, size: 64, offset: 960)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !529, file: !261, line: 531, baseType: !338, size: 64, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !529, file: !261, line: 532, baseType: !338, size: 64, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !529, file: !261, line: 533, baseType: !338, size: 64, offset: 1152)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !529, file: !261, line: 535, baseType: !338, size: 64, offset: 1216)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !529, file: !261, line: 536, baseType: !338, size: 64, offset: 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !529, file: !261, line: 537, baseType: !338, size: 64, offset: 1344)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !529, file: !261, line: 538, baseType: !338, size: 64, offset: 1408)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !529, file: !261, line: 539, baseType: !338, size: 64, offset: 1472)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !529, file: !261, line: 540, baseType: !338, size: 64, offset: 1536)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !529, file: !261, line: 541, baseType: !338, size: 64, offset: 1600)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !529, file: !261, line: 542, baseType: !338, size: 64, offset: 1664)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !529, file: !261, line: 543, baseType: !338, size: 64, offset: 1728)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !260, file: !261, line: 833, baseType: !7, size: 32, offset: 7680)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !260, file: !261, line: 836, baseType: !7, size: 32, offset: 7712)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !260, file: !261, line: 837, baseType: !109, size: 32, offset: 7744)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !260, file: !261, line: 838, baseType: !563, size: 64, offset: 7808)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !566, line: 19, baseType: !567)
!566 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !566, line: 19, size: 64, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !567, file: !566, line: 19, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 64, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 1)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !260, file: !261, line: 839, baseType: !574, size: 64, offset: 7872)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !260, file: !261, line: 840, baseType: !565, size: 64, offset: 7936)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !260, file: !261, line: 841, baseType: !256, size: 64, offset: 8000)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !260, file: !261, line: 843, baseType: !309, size: 16, offset: 8064)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !260, file: !261, line: 845, baseType: !309, size: 16, offset: 8080)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !260, file: !261, line: 848, baseType: !109, size: 32, offset: 8096)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !260, file: !261, line: 849, baseType: !581, size: 32, offset: 8128)
!581 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !261, line: 718, size: 32, elements: !582)
!582 = !{!583, !590}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !581, file: !261, line: 724, baseType: !584, size: 32)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !581, file: !261, line: 719, size: 32, elements: !585)
!585 = !{!586, !587, !588, !589}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !584, file: !261, line: 720, baseType: !453, size: 8)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !584, file: !261, line: 721, baseType: !453, size: 8, offset: 8)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !584, file: !261, line: 722, baseType: !453, size: 8, offset: 16)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !584, file: !261, line: 723, baseType: !453, size: 8, offset: 24)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !581, file: !261, line: 725, baseType: !270, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !260, file: !261, line: 850, baseType: !343, size: 128, offset: 8192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !260, file: !261, line: 851, baseType: !593, size: 64, offset: 8320)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !261, line: 60, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !260, file: !261, line: 855, baseType: !257, size: 64, offset: 8384)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !260, file: !261, line: 856, baseType: !453, size: 8, offset: 8448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !260, file: !261, line: 857, baseType: !453, size: 8, offset: 8456)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !260, file: !261, line: 858, baseType: !109, size: 32, offset: 8480)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !260, file: !261, line: 859, baseType: !343, size: 128, offset: 8512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !260, file: !261, line: 860, baseType: !109, size: 32, offset: 8640)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !260, file: !261, line: 861, baseType: !343, size: 128, offset: 8704)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !260, file: !261, line: 873, baseType: !603, size: 256, offset: 8832)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !261, line: 376, size: 256, elements: !604)
!604 = !{!605, !606, !607, !608}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !603, file: !261, line: 381, baseType: !257, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !603, file: !261, line: 384, baseType: !340, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !603, file: !261, line: 389, baseType: !340, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !603, file: !261, line: 392, baseType: !340, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !260, file: !261, line: 875, baseType: !343, size: 128, offset: 9088)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !260, file: !261, line: 877, baseType: !611, size: 320, offset: 9216)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !612, line: 86, size: 320, elements: !613)
!612 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!613 = !{!614, !615, !616}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !611, file: !612, line: 87, baseType: !109, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !611, file: !612, line: 88, baseType: !343, size: 128, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !611, file: !612, line: 89, baseType: !343, size: 128, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !260, file: !261, line: 878, baseType: !330, size: 192, align: 64, offset: 9536)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !260, file: !261, line: 881, baseType: !619, size: 64, offset: 9728)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !25, line: 733, size: 10240, elements: !621)
!621 = !{!622, !3417}
!622 = !DIDerivedType(tag: DW_TAG_member, scope: !620, file: !25, line: 734, baseType: !623, size: 10240)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !620, file: !25, line: 734, size: 10240, elements: !624)
!624 = !{!625, !629, !651, !3296, !3297, !3298, !3299, !3300, !3301, !3308, !3309, !3310, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3349, !3351, !3354, !3397, !3398, !3399, !3402, !3403, !3404, !3407, !3408, !3409, !3415, !3416}
!625 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !25, line: 739, baseType: !626, size: 512, align: 512)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !623, file: !25, line: 739, size: 512, align: 512, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !626, file: !25, line: 747, baseType: !283, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !623, file: !25, line: 750, baseType: !630, size: 128, offset: 512)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !631, line: 218, size: 128, elements: !632)
!631 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!632 = !{!633, !649, !650}
!633 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !631, line: 219, baseType: !634, size: 32)
!634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !630, file: !631, line: 219, size: 32, elements: !635)
!635 = !{!636, !645}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !634, file: !631, line: 220, baseType: !637, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !638, line: 29, baseType: !639)
!638 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !638, line: 17, size: 32, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !638, line: 18, baseType: !642, size: 32)
!642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !638, line: 18, size: 32, elements: !643)
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !642, file: !638, line: 19, baseType: !438, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !634, file: !631, line: 221, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !631, line: 197, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !631, line: 197, elements: !648)
!648 = !{}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !630, file: !631, line: 223, baseType: !7, size: 32, offset: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !630, file: !631, line: 224, baseType: !256, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !623, file: !25, line: 752, baseType: !652, size: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!257, !655, !257, !257, !257, !257}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !47, line: 994, size: 1856, align: 64, elements: !657)
!657 = !{!658, !672, !673, !675, !682, !694, !697, !698, !822, !1032, !1041, !3286, !3287, !3288, !3289, !3290, !3291, !3293, !3294, !3295}
!658 = !DIDerivedType(tag: DW_TAG_member, scope: !656, file: !47, line: 995, baseType: !659, size: 128)
!659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !656, file: !47, line: 995, size: 128, elements: !660)
!660 = !{!661, !662, !671}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !659, file: !47, line: 996, baseType: !296, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !659, file: !47, line: 997, baseType: !663, size: 128, align: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !284, line: 232, size: 128, align: 64, elements: !664)
!664 = !{!665, !667}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !663, file: !284, line: 233, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !663, file: !284, line: 234, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !666}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !659, file: !47, line: 998, baseType: !7, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !656, file: !47, line: 1005, baseType: !637, size: 32, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !656, file: !47, line: 1006, baseType: !674, size: 32, offset: 160)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !284, line: 156, baseType: !7)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !656, file: !47, line: 1007, baseType: !676, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !677, line: 13, baseType: !678)
!677 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !284, line: 181, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 179, size: 64, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !679, file: !284, line: 180, baseType: !354, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !656, file: !47, line: 1008, baseType: !683, size: 256, offset: 256)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !684, line: 66, size: 256, elements: !685)
!684 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!685 = !{!686, !687, !688, !693}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !683, file: !684, line: 67, baseType: !676, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !683, file: !684, line: 68, baseType: !436, size: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !683, file: !684, line: 70, baseType: !689, size: 32, offset: 96)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !690, line: 15, size: 32, elements: !691)
!690 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !689, file: !690, line: 20, baseType: !283, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !683, file: !684, line: 72, baseType: !343, size: 128, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !656, file: !47, line: 1009, baseType: !695, size: 64, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !284, line: 52, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !486, line: 88, baseType: !356)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !656, file: !47, line: 1010, baseType: !7, size: 32, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !656, file: !47, line: 1011, baseType: !699, size: 256, offset: 640)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !47, line: 948, size: 256, elements: !700)
!700 = !{!701, !724, !812, !813, !820, !821}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !699, file: !47, line: 949, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !703, line: 34, baseType: !704)
!703 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !703, line: 25, size: 64, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !704, file: !703, line: 26, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !708, line: 27, baseType: !709)
!708 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !708, line: 13, size: 64, elements: !710)
!710 = !{!711, !723}
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !708, line: 14, baseType: !712, size: 32)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !709, file: !708, line: 14, size: 32, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !712, file: !708, line: 15, baseType: !283, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, scope: !712, file: !708, line: 16, baseType: !716, size: 32)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !712, file: !708, line: 16, size: 32, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !716, file: !708, line: 18, baseType: !453, size: 8)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !716, file: !708, line: 19, baseType: !720, size: 24, offset: 8)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 24, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 3)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !709, file: !708, line: 26, baseType: !441, size: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !699, file: !47, line: 950, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !80, line: 59, size: 768, elements: !727)
!727 = !{!728, !729, !730, !731, !744, !745, !752, !753}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !726, file: !80, line: 61, baseType: !278, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !726, file: !80, line: 62, baseType: !7, size: 32, offset: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !726, file: !80, line: 63, baseType: !637, size: 32, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !726, file: !80, line: 65, baseType: !732, size: 256, offset: 128)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 256, elements: !742)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !284, line: 194, size: 64, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !733, file: !284, line: 195, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !284, line: 198, size: 128, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !737, file: !284, line: 199, baseType: !736, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !737, file: !284, line: 199, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!742 = !{!743}
!743 = !DISubrange(count: 4)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !726, file: !80, line: 66, baseType: !733, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !726, file: !80, line: 68, baseType: !746, size: 192, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !747, line: 41, baseType: !748)
!747 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !747, line: 37, size: 192, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !748, file: !747, line: 38, baseType: !637, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !748, file: !747, line: 39, baseType: !343, size: 128, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !726, file: !80, line: 69, baseType: !663, size: 128, align: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !726, file: !80, line: 70, baseType: !754, offset: 768)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, elements: !810)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !80, line: 54, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !755, file: !80, line: 55, baseType: !109, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !755, file: !80, line: 56, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !761, line: 26, size: 1152, elements: !762)
!761 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!762 = !{!763, !777, !778, !779, !780, !784, !785, !786, !789, !793, !797, !798, !809}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !760, file: !761, line: 27, baseType: !764, size: 192)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !765, line: 19, size: 192, elements: !766)
!765 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!766 = !{!767, !775, !776}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !764, file: !765, line: 20, baseType: !768, size: 128)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !769, line: 296, size: 128, elements: !770)
!769 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!770 = !{!771, !772, !774}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !768, file: !769, line: 297, baseType: !637, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !768, file: !769, line: 299, baseType: !773, size: 32, offset: 32)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !284, line: 154, baseType: !7)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !768, file: !769, line: 300, baseType: !256, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !764, file: !765, line: 21, baseType: !7, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !764, file: !765, line: 22, baseType: !7, size: 32, offset: 160)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !760, file: !761, line: 28, baseType: !663, size: 128, align: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !760, file: !761, line: 29, baseType: !7, size: 32, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !760, file: !761, line: 30, baseType: !259, size: 64, offset: 384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !760, file: !761, line: 31, baseType: !781, size: 64, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !783, line: 325, flags: DIFlagFwdDecl)
!783 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!784 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !760, file: !761, line: 32, baseType: !7, size: 32, offset: 512)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !760, file: !761, line: 33, baseType: !759, size: 64, offset: 576)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !760, file: !761, line: 35, baseType: !787, size: 64, offset: 640)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !761, line: 17, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !760, file: !761, line: 37, baseType: !790, size: 64, offset: 704)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !792, line: 18, flags: DIFlagFwdDecl)
!792 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !760, file: !761, line: 38, baseType: !794, size: 64, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !796, line: 16, flags: DIFlagFwdDecl)
!796 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!797 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !760, file: !761, line: 39, baseType: !109, size: 32, offset: 832)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !760, file: !761, line: 40, baseType: !799, size: 192, offset: 896)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !800, line: 9, size: 192, elements: !801)
!800 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!801 = !{!802, !803, !807, !808}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !799, file: !800, line: 10, baseType: !676, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !799, file: !800, line: 11, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !800, line: 7, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !799, file: !800, line: 12, baseType: !7, size: 32, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !799, file: !800, line: 13, baseType: !278, size: 32, offset: 160)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !760, file: !761, line: 42, baseType: !109, size: 32, offset: 1088)
!810 = !{!811}
!811 = !DISubrange(count: -1)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !699, file: !47, line: 951, baseType: !79, size: 32, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !699, file: !47, line: 952, baseType: !814, size: 32, offset: 160)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !792, line: 23, baseType: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 21, size: 32, elements: !816)
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !815, file: !792, line: 22, baseType: !818, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !284, line: 37, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !486, line: 49, baseType: !7)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !699, file: !47, line: 952, baseType: !814, size: 32, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !699, file: !47, line: 953, baseType: !109, size: 32, offset: 224)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !656, file: !47, line: 1012, baseType: !823, size: 64, offset: 896)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !826, line: 110, size: 1472, elements: !827)
!826 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!827 = !{!828, !829, !830, !837, !838, !839, !840, !841, !842, !843, !844, !850, !851, !852, !853, !854, !855, !982, !983, !984, !985, !986, !1017, !1018, !1019, !1027}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !825, file: !826, line: 111, baseType: !676, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !825, file: !826, line: 112, baseType: !814, size: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !825, file: !826, line: 113, baseType: !831, size: 32, offset: 96)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !792, line: 28, baseType: !832)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 26, size: 32, elements: !833)
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !832, file: !792, line: 27, baseType: !835, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !284, line: 38, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !486, line: 50, baseType: !7)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !825, file: !826, line: 114, baseType: !814, size: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !825, file: !826, line: 115, baseType: !831, size: 32, offset: 160)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !825, file: !826, line: 116, baseType: !814, size: 32, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !825, file: !826, line: 117, baseType: !831, size: 32, offset: 224)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !825, file: !826, line: 118, baseType: !814, size: 32, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !825, file: !826, line: 119, baseType: !831, size: 32, offset: 288)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !825, file: !826, line: 120, baseType: !7, size: 32, offset: 320)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !825, file: !826, line: 121, baseType: !845, size: 64, offset: 384)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !846, line: 24, baseType: !847)
!846 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !846, line: 24, size: 64, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !847, file: !846, line: 24, baseType: !338, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !825, file: !826, line: 122, baseType: !845, size: 64, offset: 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !825, file: !826, line: 123, baseType: !845, size: 64, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !825, file: !826, line: 124, baseType: !845, size: 64, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !825, file: !826, line: 125, baseType: !845, size: 64, offset: 640)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !825, file: !826, line: 127, baseType: !455, size: 8, offset: 704)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !825, file: !826, line: 129, baseType: !856, size: 64, offset: 768)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !858, line: 195, size: 1728, elements: !859)
!858 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!859 = !{!860, !861, !866, !871, !880, !883, !884, !891, !892, !893, !894, !897, !898, !899, !901, !902, !946, !967}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !857, file: !858, line: 196, baseType: !278, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !857, file: !858, line: 197, baseType: !862, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !858, line: 28, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !284, line: 104, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !271, line: 20, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !273, line: 26, baseType: !109)
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !858, line: 198, baseType: !867, size: 192, offset: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 198, size: 192, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !867, file: !858, line: 199, baseType: !343, size: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !867, file: !858, line: 200, baseType: !330, size: 192, align: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !857, file: !858, line: 205, baseType: !872, size: 320, offset: 256)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !873, line: 48, size: 320, elements: !874)
!873 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!874 = !{!875, !876, !877, !878, !879}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !872, file: !873, line: 49, baseType: !676, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !872, file: !873, line: 55, baseType: !676, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !872, file: !873, line: 57, baseType: !689, size: 32, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !872, file: !873, line: 59, baseType: !436, size: 32, offset: 160)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !872, file: !873, line: 60, baseType: !343, size: 128, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !857, file: !858, line: 206, baseType: !881, size: 64, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !858, line: 206, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !857, file: !858, line: 207, baseType: !256, size: 64, offset: 640)
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !858, line: 208, baseType: !885, size: 64, offset: 704)
!885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 208, size: 64, elements: !886)
!886 = !{!887, !890}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !885, file: !858, line: 209, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !889, line: 8, baseType: !355)
!889 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!890 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !885, file: !858, line: 210, baseType: !888, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !857, file: !858, line: 212, baseType: !888, size: 64, offset: 768)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !857, file: !858, line: 213, baseType: !814, size: 32, offset: 832)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !857, file: !858, line: 214, baseType: !831, size: 32, offset: 864)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !857, file: !858, line: 215, baseType: !895, size: 32, offset: 896)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !858, line: 31, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !284, line: 110, baseType: !270)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !857, file: !858, line: 216, baseType: !309, size: 16, offset: 928)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !857, file: !858, line: 217, baseType: !309, size: 16, offset: 944)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !857, file: !858, line: 221, baseType: !900, size: 16, offset: 960)
!900 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !857, file: !858, line: 228, baseType: !257, size: 64, offset: 1024)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !858, line: 245, baseType: !903, size: 320, offset: 1088)
!903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 245, size: 320, elements: !904)
!904 = !{!905, !937}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !903, file: !858, line: 246, baseType: !906, size: 320)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !858, line: 114, size: 320, elements: !907)
!907 = !{!908, !909, !922, !925, !934}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !906, file: !858, line: 116, baseType: !257, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !858, line: 117, baseType: !910, size: 64, offset: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !858, line: 117, size: 64, elements: !911)
!911 = !{!912, !921}
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !858, line: 118, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !858, line: 118, size: 64, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !913, file: !858, line: 120, baseType: !307, size: 16)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !913, file: !858, line: 121, baseType: !917, size: 48, offset: 16)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 48, elements: !919)
!918 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!919 = !{!920}
!920 = !DISubrange(count: 6)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !910, file: !858, line: 127, baseType: !257, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !906, file: !858, line: 129, baseType: !923, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !858, line: 102, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !906, file: !858, line: 130, baseType: !926, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !858, line: 108, size: 192, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !927, file: !858, line: 109, baseType: !663, size: 128, align: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !927, file: !858, line: 110, baseType: !278, size: 32, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !927, file: !858, line: 111, baseType: !932, size: 8, offset: 160)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !284, line: 35, baseType: !933)
!933 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !906, file: !858, line: 131, baseType: !935, size: 64, offset: 256)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !858, line: 247, baseType: !938, size: 320)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !903, file: !858, line: 247, size: 320, elements: !939)
!939 = !{!940, !941, !942, !943, !944}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !938, file: !858, line: 248, baseType: !257, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !938, file: !858, line: 249, baseType: !257, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !938, file: !858, line: 250, baseType: !923, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !938, file: !858, line: 251, baseType: !926, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !938, file: !858, line: 252, baseType: !945, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !858, line: 260, baseType: !947, size: 256, offset: 1408)
!947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 260, size: 256, elements: !948)
!948 = !{!949, !955}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !947, file: !858, line: 261, baseType: !950, size: 256)
!950 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !858, line: 134, size: 256, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !950, file: !858, line: 135, baseType: !256, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !950, file: !858, line: 136, baseType: !954, size: 256)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 256, elements: !742)
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !858, line: 262, baseType: !956, size: 256)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !947, file: !858, line: 262, size: 256, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !956, file: !858, line: 264, baseType: !343, size: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !956, file: !858, line: 265, baseType: !960, size: 128, offset: 128)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !961, line: 22, size: 128, elements: !962)
!961 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!962 = !{!963, !966}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !960, file: !961, line: 23, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !961, line: 23, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !960, file: !961, line: 24, baseType: !257, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !857, file: !858, line: 280, baseType: !968, size: 64, offset: 1664)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !858, line: 176, size: 192, elements: !970)
!970 = !{!971, !980, !981}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !969, file: !858, line: 177, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !858, line: 171, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!109, !856, !976, !978, !856}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !924)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !950)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !969, file: !858, line: 178, baseType: !856, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !969, file: !858, line: 179, baseType: !923, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !825, file: !826, line: 130, baseType: !856, size: 64, offset: 832)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !825, file: !826, line: 131, baseType: !856, size: 64, offset: 896)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !825, file: !826, line: 132, baseType: !856, size: 64, offset: 960)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !825, file: !826, line: 135, baseType: !256, size: 64, offset: 1024)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !825, file: !826, line: 137, baseType: !987, size: 64, offset: 1088)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !989, line: 14, size: 1088, elements: !990)
!989 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!990 = !{!991, !992, !1001, !1002, !1003, !1004, !1005, !1006}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !988, file: !989, line: 15, baseType: !278, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !988, file: !989, line: 17, baseType: !993, size: 320, offset: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !994, line: 22, size: 320, elements: !995)
!994 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!995 = !{!996, !997, !998, !999}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !993, file: !994, line: 23, baseType: !436, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !993, file: !994, line: 24, baseType: !354, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !993, file: !994, line: 26, baseType: !343, size: 128, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !993, file: !994, line: 28, baseType: !1000, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !988, file: !989, line: 19, baseType: !257, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !988, file: !989, line: 20, baseType: !676, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !988, file: !989, line: 23, baseType: !737, size: 128, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !988, file: !989, line: 24, baseType: !814, size: 32, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !988, file: !989, line: 29, baseType: !676, size: 64, offset: 704)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !988, file: !989, line: 36, baseType: !1007, size: 320, offset: 768)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1008, line: 15, size: 320, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1009 = !{!1010, !1011, !1012, !1013, !1014, !1015, !1016}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1007, file: !1008, line: 16, baseType: !436, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1007, file: !1008, line: 18, baseType: !109, size: 32, offset: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1007, file: !1008, line: 19, baseType: !109, size: 32, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1007, file: !1008, line: 20, baseType: !109, size: 32, offset: 96)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1007, file: !1008, line: 21, baseType: !109, size: 32, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1007, file: !1008, line: 22, baseType: !257, size: 64, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1007, file: !1008, line: 23, baseType: !257, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !825, file: !826, line: 138, baseType: !790, size: 64, offset: 1152)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !825, file: !826, line: 139, baseType: !794, size: 64, offset: 1216)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !825, file: !826, line: 140, baseType: !1020, size: 64, offset: 1280)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !826, line: 25, size: 64, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1021, file: !826, line: 26, baseType: !283, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1021, file: !826, line: 27, baseType: !109, size: 32, offset: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1021, file: !826, line: 28, baseType: !1026, offset: 64)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, elements: !810)
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !826, line: 142, baseType: !1028, size: 128, offset: 1344)
!1028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !826, line: 142, size: 128, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1028, file: !826, line: 143, baseType: !109, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1028, file: !826, line: 144, baseType: !663, size: 128, align: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !656, file: !47, line: 1013, baseType: !1033, size: 256, offset: 960)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !47, line: 970, size: 256, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1033, file: !47, line: 971, baseType: !257, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1033, file: !47, line: 972, baseType: !7, size: 32, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1033, file: !47, line: 973, baseType: !7, size: 32, offset: 96)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1033, file: !47, line: 974, baseType: !7, size: 32, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1033, file: !47, line: 975, baseType: !7, size: 32, offset: 160)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1033, file: !47, line: 976, baseType: !695, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !656, file: !47, line: 1014, baseType: !1042, size: 128, offset: 1216)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1043, line: 8, size: 128, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1044 = !{!1045, !3285}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1042, file: !1043, line: 9, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1048, line: 70, size: 256, elements: !1049)
!1048 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1049 = !{!1050, !3282, !3283, !3284}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1047, file: !1048, line: 71, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1053, line: 82, size: 1536, elements: !1054)
!1053 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1054 = !{!1055, !1056, !1061, !1069, !1070, !1085, !3250, !3252, !3265, !3266, !3267, !3268, !3269, !3274, !3275, !3276}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1052, file: !1053, line: 84, baseType: !7, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1052, file: !1053, line: 85, baseType: !1057, size: 32, offset: 32)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !489, line: 275, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !489, line: 275, size: 32, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1058, file: !489, line: 275, baseType: !493, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1052, file: !1053, line: 86, baseType: !1062, size: 128, offset: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1063, line: 38, size: 128, elements: !1064)
!1063 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1064 = !{!1065, !1067}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1062, file: !1063, line: 39, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1062, file: !1063, line: 39, baseType: !1068, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1052, file: !1053, line: 87, baseType: !1051, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1052, file: !1053, line: 88, baseType: !1071, size: 128, offset: 256)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1053, line: 49, size: 128, elements: !1072)
!1072 = !{!1073, !1082}
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !1053, line: 50, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !1053, line: 50, size: 64, elements: !1075)
!1075 = !{!1076, !1081}
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !1053, line: 51, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !1053, line: 51, size: 64, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1077, file: !1053, line: 52, baseType: !270, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1077, file: !1053, line: 52, baseType: !270, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1074, file: !1053, line: 54, baseType: !338, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1071, file: !1053, line: 56, baseType: !1083, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1052, file: !1053, line: 89, baseType: !1086, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !47, line: 641, size: 4800, elements: !1088)
!1088 = !{!1089, !1091, !1092, !1093, !1094, !1095, !1096, !1099, !1100, !1290, !3064, !3065, !3066, !3067, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3232, !3235, !3236, !3237, !3246, !3247, !3248, !3249}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1087, file: !47, line: 642, baseType: !1090, size: 16)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !284, line: 24, baseType: !309)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1087, file: !47, line: 643, baseType: !309, size: 16, offset: 16)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1087, file: !47, line: 644, baseType: !814, size: 32, offset: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1087, file: !47, line: 645, baseType: !343, size: 128, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1087, file: !47, line: 646, baseType: !831, size: 32, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1087, file: !47, line: 647, baseType: !7, size: 32, offset: 224)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1087, file: !47, line: 650, baseType: !1097, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !47, line: 607, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1087, file: !47, line: 651, baseType: !1097, size: 64, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1087, file: !47, line: 654, baseType: !1101, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !47, line: 1966, size: 2048, align: 512, elements: !1104)
!1104 = !{!1105, !1109, !1122, !1128, !1132, !1136, !1140, !1144, !1148, !1152, !1156, !1157, !1163, !1167, !1204, !1235, !1245, !1251, !1255, !1259, !1263, !1267, !1271, !1277, !1281}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1103, file: !47, line: 1967, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!1051, !1086, !1051, !7}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1103, file: !47, line: 1968, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!935, !1051, !1086, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1115, line: 10, size: 128, elements: !1116)
!1115 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1116 = !{!1117, !1121}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1114, file: !1115, line: 11, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !256}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1114, file: !1115, line: 12, baseType: !256, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1103, file: !47, line: 1969, baseType: !1123, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!109, !1126, !1086, !109}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !846, line: 42, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1103, file: !47, line: 1970, baseType: !1129, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!1097, !1086, !109, !932}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1103, file: !47, line: 1972, baseType: !1133, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!109, !1051, !945, !109}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1103, file: !47, line: 1974, baseType: !1137, size: 64, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!109, !1126, !1086, !1051, !1090, !932}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1103, file: !47, line: 1976, baseType: !1141, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!109, !1051, !1086, !1051}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1103, file: !47, line: 1977, baseType: !1145, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!109, !1086, !1051}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1103, file: !47, line: 1978, baseType: !1149, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!109, !1126, !1086, !1051, !935}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1103, file: !47, line: 1980, baseType: !1153, size: 64, offset: 576)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!109, !1126, !1086, !1051, !1090}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1103, file: !47, line: 1982, baseType: !1145, size: 64, offset: 640)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1103, file: !47, line: 1983, baseType: !1158, size: 64, offset: 704)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!109, !1126, !1086, !1051, !1090, !1161}
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !284, line: 21, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !284, line: 18, baseType: !270)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1103, file: !47, line: 1985, baseType: !1164, size: 64, offset: 768)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!109, !1126, !1086, !1051, !1086, !1051, !7}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1103, file: !47, line: 1987, baseType: !1168, size: 64, offset: 832)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!109, !1126, !1051, !1171}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !47, line: 226, size: 640, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1186, !1195, !1196, !1201, !1202, !1203}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1172, file: !47, line: 227, baseType: !7, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1172, file: !47, line: 228, baseType: !1090, size: 16, offset: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !47, line: 241, baseType: !1177, size: 32, offset: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1172, file: !47, line: 241, size: 32, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1177, file: !47, line: 242, baseType: !814, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1177, file: !47, line: 243, baseType: !1181, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1182, line: 16, baseType: !1183)
!1182 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1182, line: 14, size: 32, elements: !1184)
!1184 = !{!1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1183, file: !1182, line: 15, baseType: !818, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !47, line: 245, baseType: !1187, size: 32, offset: 96)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1172, file: !47, line: 245, size: 32, elements: !1188)
!1188 = !{!1189, !1190}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1187, file: !47, line: 246, baseType: !831, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1187, file: !47, line: 247, baseType: !1191, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1182, line: 20, baseType: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1182, line: 18, size: 32, elements: !1193)
!1193 = !{!1194}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1192, file: !1182, line: 19, baseType: !835, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1172, file: !47, line: 249, baseType: !695, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1172, file: !47, line: 250, baseType: !1197, size: 128, offset: 192)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !889, line: 13, size: 128, elements: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1197, file: !889, line: 14, baseType: !888, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1197, file: !889, line: 15, baseType: !255, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1172, file: !47, line: 251, baseType: !1197, size: 128, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1172, file: !47, line: 252, baseType: !1197, size: 128, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1172, file: !47, line: 259, baseType: !655, size: 64, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1103, file: !47, line: 1988, baseType: !1205, size: 64, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!109, !1126, !1208, !1210, !270, !7}
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1042)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1212, line: 22, size: 1280, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1211, file: !1212, line: 23, baseType: !270, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1211, file: !1212, line: 24, baseType: !1090, size: 16, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1211, file: !1212, line: 25, baseType: !7, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1211, file: !1212, line: 26, baseType: !896, size: 32, offset: 96)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1211, file: !1212, line: 27, baseType: !338, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1211, file: !1212, line: 28, baseType: !338, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1211, file: !1212, line: 41, baseType: !338, size: 64, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1211, file: !1212, line: 42, baseType: !1161, size: 32, offset: 320)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1211, file: !1212, line: 43, baseType: !1161, size: 32, offset: 352)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1211, file: !1212, line: 44, baseType: !814, size: 32, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1211, file: !1212, line: 45, baseType: !831, size: 32, offset: 416)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1211, file: !1212, line: 46, baseType: !695, size: 64, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1211, file: !1212, line: 47, baseType: !1197, size: 128, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1211, file: !1212, line: 48, baseType: !1197, size: 128, offset: 640)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1211, file: !1212, line: 49, baseType: !1197, size: 128, offset: 768)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1211, file: !1212, line: 50, baseType: !1197, size: 128, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1211, file: !1212, line: 51, baseType: !338, size: 64, offset: 1024)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1211, file: !1212, line: 52, baseType: !338, size: 64, offset: 1088)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1211, file: !1212, line: 53, baseType: !270, size: 32, offset: 1152)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1211, file: !1212, line: 54, baseType: !270, size: 32, offset: 1184)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1211, file: !1212, line: 55, baseType: !338, size: 64, offset: 1216)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1103, file: !47, line: 1990, baseType: !1236, size: 64, offset: 960)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!1239, !1051, !945, !1242}
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !284, line: 66, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !486, line: 73, baseType: !1241)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !486, line: 15, baseType: !255)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !284, line: 61, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !486, line: 72, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !486, line: 16, baseType: !257)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1103, file: !47, line: 1991, baseType: !1246, size: 64, offset: 1024)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!109, !1086, !1249, !338, !338}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !47, line: 55, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1103, file: !47, line: 1993, baseType: !1252, size: 64, offset: 1088)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!109, !1086, !109}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1103, file: !47, line: 1994, baseType: !1256, size: 64, offset: 1152)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!109, !1086, !1051, !655, !7, !1090}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1103, file: !47, line: 1997, baseType: !1260, size: 64, offset: 1216)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!109, !1126, !1086, !655, !1090}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1103, file: !47, line: 1999, baseType: !1264, size: 64, offset: 1280)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!1097, !1126, !1051, !109}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1103, file: !47, line: 2001, baseType: !1268, size: 64, offset: 1344)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!109, !1126, !1051, !1097, !109}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1103, file: !47, line: 2003, baseType: !1272, size: 64, offset: 1408)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!109, !1126, !1051, !1275}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !47, line: 76, flags: DIFlagFwdDecl)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1103, file: !47, line: 2005, baseType: !1278, size: 64, offset: 1472)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!109, !1051, !1275}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1103, file: !47, line: 2006, baseType: !1282, size: 64, offset: 1536)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!1285, !1086}
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !47, line: 3192, size: 192, elements: !1287)
!1287 = !{!1288, !1289}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1286, file: !47, line: 3193, baseType: !768, size: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1286, file: !47, line: 3194, baseType: !270, size: 32, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1087, file: !47, line: 655, baseType: !1291, size: 64, offset: 448)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !47, line: 1190, size: 10752, elements: !1293)
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1299, !2577, !2709, !2749, !2832, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2849, !2853, !2854, !2857, !2860, !2863, !2866, !2867, !2868, !2909, !2935, !2936, !2937, !2938, !2939, !2940, !2943, !2947, !2956, !2957, !2958, !2959, !3018, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1292, file: !47, line: 1191, baseType: !343, size: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1292, file: !47, line: 1192, baseType: !1161, size: 32, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1292, file: !47, line: 1193, baseType: !455, size: 8, offset: 160)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1292, file: !47, line: 1194, baseType: !257, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1292, file: !47, line: 1195, baseType: !695, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1292, file: !47, line: 1196, baseType: !1300, size: 64, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !47, line: 2366, size: 576, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1311, !1315, !1319, !1323, !2565, !2566, !2567, !2569, !2570, !2571, !2573, !2574, !2575, !2576}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1301, file: !47, line: 2367, baseType: !935, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1301, file: !47, line: 2368, baseType: !109, size: 32, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1301, file: !47, line: 2376, baseType: !1306, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!109, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1048, line: 21, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1301, file: !47, line: 2377, baseType: !1312, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1314)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !47, line: 75, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1301, file: !47, line: 2378, baseType: !1316, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!1051, !1300, !109, !935, !256}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1301, file: !47, line: 2380, baseType: !1320, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !1291}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1301, file: !47, line: 2381, baseType: !1324, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !18, line: 402, size: 9216, align: 512, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1333, !2208, !2234, !2235, !2236, !2237, !2241, !2244, !2245, !2246, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2314, !2318, !2338, !2358, !2359, !2360, !2361, !2370, !2393, !2394, !2397, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2411, !2412, !2523, !2531, !2532, !2533, !2535, !2539, !2540, !2544, !2545, !2546, !2547, !2549, !2550, !2551, !2558, !2559, !2560, !2564}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1325, file: !18, line: 403, baseType: !17, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1325, file: !18, line: 406, baseType: !343, size: 128, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1325, file: !18, line: 409, baseType: !1330, size: 448, offset: 192)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 448, elements: !1331)
!1331 = !{!1332}
!1332 = !DISubrange(count: 56)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1325, file: !18, line: 417, baseType: !1334, size: 768, offset: 640)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !18, line: 45, size: 768, elements: !1335)
!1335 = !{!1336, !2201, !2202, !2203, !2206}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1334, file: !18, line: 46, baseType: !1337, size: 512)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1338, line: 64, size: 512, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1339 = !{!1340, !1341, !1342, !1344, !1388, !2047, !2191, !2196, !2197, !2198, !2199, !2200}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1337, file: !1338, line: 65, baseType: !935, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1337, file: !1338, line: 66, baseType: !343, size: 128, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1337, file: !1338, line: 67, baseType: !1343, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1337, file: !1338, line: 68, baseType: !1345, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1338, line: 168, size: 768, elements: !1347)
!1347 = !{!1348, !1349, !1350, !1351}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1346, file: !1338, line: 169, baseType: !343, size: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1346, file: !1338, line: 170, baseType: !637, size: 32, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1346, file: !1338, line: 171, baseType: !1337, size: 512, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1346, file: !1338, line: 172, baseType: !1352, size: 64, offset: 704)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1338, line: 133, size: 192, elements: !1355)
!1355 = !{!1356, !1363, !1368}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1354, file: !1338, line: 134, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!109, !1361}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1354, file: !1338, line: 135, baseType: !1364, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!935, !1361}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1354, file: !1338, line: 136, baseType: !1369, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1370)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!109, !1361, !1373}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1338, line: 125, size: 20736, elements: !1375)
!1375 = !{!1376, !1378, !1382, !1383, !1387}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1374, file: !1338, line: 126, baseType: !1377, size: 192)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !945, size: 192, elements: !721)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1374, file: !1338, line: 127, baseType: !1379, size: 4096, offset: 192)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !945, size: 4096, elements: !1380)
!1380 = !{!1381}
!1381 = !DISubrange(count: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1374, file: !1338, line: 128, baseType: !109, size: 32, offset: 4288)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1374, file: !1338, line: 129, baseType: !1384, size: 16384, offset: 4320)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 16384, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 2048)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1374, file: !1338, line: 130, baseType: !109, size: 32, offset: 20704)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1337, file: !1338, line: 69, baseType: !1389, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1391)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1338, line: 116, size: 384, elements: !1392)
!1392 = !{!1393, !1397, !1416, !2006, !2037, !2041}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1391, file: !1338, line: 117, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !1343}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1391, file: !1338, line: 118, baseType: !1398, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1401, line: 254, size: 128, elements: !1402)
!1401 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1402 = !{!1403, !1412}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1400, file: !1401, line: 255, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!1239, !1343, !1407, !945}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1401, line: 30, size: 128, elements: !1409)
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1408, file: !1401, line: 31, baseType: !935, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1408, file: !1401, line: 32, baseType: !1090, size: 16, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1400, file: !1401, line: 256, baseType: !1413, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1239, !1343, !1407, !935, !1242}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1391, file: !1338, line: 119, baseType: !1417, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1401, line: 84, size: 320, elements: !1421)
!1421 = !{!1422, !1423, !1427, !2002, !2004}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1420, file: !1401, line: 85, baseType: !935, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1420, file: !1401, line: 86, baseType: !1424, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!1090, !1343, !1407, !109}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1420, file: !1401, line: 88, baseType: !1428, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!1090, !1343, !1431, !109}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1401, line: 175, size: 512, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1437, !1993, !1997, !1998}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1432, file: !1401, line: 176, baseType: !1408, size: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1432, file: !1401, line: 177, baseType: !1242, size: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1432, file: !1401, line: 178, baseType: !256, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1432, file: !1401, line: 179, baseType: !1438, size: 64, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !47, line: 472, size: 1536, align: 64, elements: !1443)
!1443 = !{!1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1985, !1986, !1987, !1990, !1991, !1992}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1442, file: !47, line: 473, baseType: !1086, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1442, file: !47, line: 474, baseType: !768, size: 128, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1442, file: !47, line: 475, baseType: !872, size: 320, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1442, file: !47, line: 476, baseType: !773, size: 32, offset: 512)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1442, file: !47, line: 477, baseType: !283, size: 32, offset: 544)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1442, file: !47, line: 482, baseType: !502, size: 128, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1442, file: !47, line: 483, baseType: !257, size: 64, offset: 704)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1442, file: !47, line: 484, baseType: !257, size: 64, offset: 768)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1442, file: !47, line: 485, baseType: !1453, size: 64, offset: 832)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !47, line: 404, size: 1280, elements: !1456)
!1456 = !{!1457, !1760, !1830, !1834, !1838, !1844, !1850, !1854, !1859, !1863, !1867, !1871, !1949, !1953, !1957, !1961, !1966, !1970, !1977, !1981}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1455, file: !47, line: 405, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!109, !1461, !1758}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !25, line: 74, size: 512, align: 128, elements: !1463)
!1463 = !{!1464, !1465, !1752, !1757}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1462, file: !25, line: 75, baseType: !257, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !25, line: 83, baseType: !1466, size: 320, offset: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !25, line: 83, size: 320, elements: !1467)
!1467 = !{!1468, !1489, !1503, !1507, !1751}
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1466, file: !25, line: 84, baseType: !1469, size: 320)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1466, file: !25, line: 84, size: 320, elements: !1470)
!1470 = !{!1471, !1482, !1483, !1488}
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !25, line: 90, baseType: !1472, size: 128)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !25, line: 90, size: 128, elements: !1473)
!1473 = !{!1474, !1475, !1480, !1481}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1472, file: !25, line: 91, baseType: !343, size: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !25, line: 94, baseType: !1476, size: 128)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1472, file: !25, line: 94, size: 128, elements: !1477)
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1476, file: !25, line: 96, baseType: !256, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1476, file: !25, line: 98, baseType: !7, size: 32, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1472, file: !25, line: 102, baseType: !343, size: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1472, file: !25, line: 103, baseType: !343, size: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1469, file: !25, line: 106, baseType: !1441, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !25, line: 107, baseType: !1484, size: 64, offset: 192)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !25, line: 107, size: 64, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1484, file: !25, line: 108, baseType: !257, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1484, file: !25, line: 109, baseType: !257, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1469, file: !25, line: 117, baseType: !257, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1466, file: !25, line: 119, baseType: !1490, size: 320)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1466, file: !25, line: 119, size: 320, elements: !1491)
!1491 = !{!1492, !1493, !1496, !1497, !1498}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1490, file: !25, line: 124, baseType: !257, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1490, file: !25, line: 125, baseType: !1494, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !25, line: 125, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1490, file: !25, line: 126, baseType: !257, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1490, file: !25, line: 127, baseType: !257, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !25, line: 128, baseType: !1499, size: 64, offset: 256)
!1499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1490, file: !25, line: 128, size: 64, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1499, file: !25, line: 133, baseType: !257, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1499, file: !25, line: 138, baseType: !676, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1466, file: !25, line: 141, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1466, file: !25, line: 141, size: 64, elements: !1505)
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1504, file: !25, line: 142, baseType: !257, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1466, file: !25, line: 144, baseType: !1508, size: 128)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1466, file: !25, line: 144, size: 128, elements: !1509)
!1509 = !{!1510, !1750}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1508, file: !25, line: 146, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !65, line: 126, size: 1216, elements: !1513)
!1513 = !{!1514, !1524, !1545, !1556, !1557, !1558, !1559, !1732, !1733, !1734}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1512, file: !65, line: 127, baseType: !1515, size: 384)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !65, line: 21, size: 384, elements: !1516)
!1516 = !{!1517, !1518, !1520, !1521, !1522, !1523}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1515, file: !65, line: 22, baseType: !257, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1515, file: !65, line: 23, baseType: !1519, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1515, file: !65, line: 24, baseType: !1519, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1515, file: !65, line: 25, baseType: !257, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1515, file: !65, line: 26, baseType: !257, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1515, file: !65, line: 27, baseType: !257, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1512, file: !65, line: 128, baseType: !1525, size: 128, offset: 384)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1526, line: 105, size: 128, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1525, file: !1526, line: 110, baseType: !257, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1525, file: !1526, line: 118, baseType: !1530, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1526, line: 95, size: 448, elements: !1532)
!1532 = !{!1533, !1534, !1540, !1541, !1542, !1543, !1544}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1531, file: !1526, line: 96, baseType: !676, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1531, file: !1526, line: 97, baseType: !1535, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1526, line: 60, baseType: !1537)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !1539}
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1531, file: !1526, line: 98, baseType: !1535, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1531, file: !1526, line: 99, baseType: !932, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1531, file: !1526, line: 100, baseType: !932, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1531, file: !1526, line: 101, baseType: !663, size: 128, align: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1531, file: !1526, line: 102, baseType: !1539, size: 64, offset: 384)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1512, file: !65, line: 129, baseType: !1546, size: 256, offset: 512)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1547, line: 26, size: 256, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1546, file: !1547, line: 27, baseType: !7, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1546, file: !1547, line: 28, baseType: !1551, size: 192, offset: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1552, line: 43, size: 192, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1551, file: !1552, line: 44, baseType: !436, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1551, file: !1552, line: 45, baseType: !343, size: 128, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1512, file: !65, line: 130, baseType: !64, size: 32, offset: 768)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1512, file: !65, line: 131, baseType: !7, size: 32, offset: 800)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1512, file: !65, line: 132, baseType: !257, size: 64, offset: 832)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1512, file: !65, line: 133, baseType: !1560, size: 64, offset: 896)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1562)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !65, line: 77, size: 192, elements: !1563)
!1563 = !{!1564, !1568, !1728}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1562, file: !65, line: 83, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !1461}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1562, file: !65, line: 89, baseType: !1569, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !25, line: 1184, baseType: !7)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1575, line: 512, size: 896, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1576 = !{!1577, !1695, !1696, !1703, !1710, !1720, !1721, !1722, !1724, !1726}
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1575, line: 513, baseType: !1578, size: 320)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1574, file: !1575, line: 513, size: 320, elements: !1579)
!1579 = !{!1580, !1691, !1692, !1693, !1694}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1578, file: !1575, line: 514, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !25, line: 625, size: 1344, elements: !1583)
!1583 = !{!1584, !1593, !1594, !1602, !1609, !1610, !1615, !1616, !1621, !1622, !1625, !1684, !1685, !1686, !1687, !1688, !1689}
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !25, line: 628, baseType: !1585, size: 128)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1582, file: !25, line: 628, size: 128, elements: !1586)
!1586 = !{!1587, !1592}
!1587 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !25, line: 629, baseType: !1588, size: 128)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1585, file: !25, line: 629, size: 128, elements: !1589)
!1589 = !{!1590, !1591}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1588, file: !25, line: 631, baseType: !257, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1588, file: !25, line: 632, baseType: !257, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1585, file: !25, line: 635, baseType: !663, size: 128, align: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1582, file: !25, line: 639, baseType: !619, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1582, file: !25, line: 640, baseType: !1595, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1596, line: 297, baseType: !1597)
!1596 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1596, line: 297, size: 64, elements: !1598)
!1598 = !{!1599}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1597, file: !1596, line: 297, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1601, line: 19, baseType: !257)
!1601 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !25, line: 646, baseType: !1603, size: 64, offset: 256)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1582, file: !25, line: 646, size: 64, elements: !1604)
!1604 = !{!1605, !1608}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1603, file: !25, line: 647, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1607)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !25, line: 542, baseType: !257)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1603, file: !25, line: 648, baseType: !1607, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1582, file: !25, line: 666, baseType: !109, size: 32, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1582, file: !25, line: 667, baseType: !1611, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !25, line: 579, size: 320, elements: !1613)
!1613 = !{!1614}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1612, file: !25, line: 580, baseType: !872, size: 320)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1582, file: !25, line: 670, baseType: !932, size: 8, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1582, file: !25, line: 681, baseType: !1617, size: 256, offset: 512)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !25, line: 678, size: 256, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1617, file: !25, line: 679, baseType: !330, size: 192, align: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1617, file: !25, line: 680, baseType: !257, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1582, file: !25, line: 689, baseType: !343, size: 128, offset: 768)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1582, file: !25, line: 691, baseType: !1623, size: 64, offset: 896)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !25, line: 691, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1582, file: !25, line: 694, baseType: !1626, size: 64, offset: 960)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1575, line: 563, size: 1024, elements: !1629)
!1629 = !{!1630, !1634, !1635, !1639, !1643, !1647, !1648, !1652, !1656, !1660, !1661, !1662, !1666, !1670, !1676, !1680}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1628, file: !1575, line: 564, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{null, !1581}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1628, file: !1575, line: 569, baseType: !1631, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1628, file: !1575, line: 571, baseType: !1636, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!109, !1581, !257}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1628, file: !1575, line: 572, baseType: !1640, size: 64, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!109, !1581}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1628, file: !1575, line: 578, baseType: !1644, size: 64, offset: 256)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!109, !1581, !257, !257, !257}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1628, file: !1575, line: 580, baseType: !1569, size: 64, offset: 320)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1628, file: !1575, line: 581, baseType: !1649, size: 64, offset: 384)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1572, !1573, !7}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1628, file: !1575, line: 582, baseType: !1653, size: 64, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!1572, !1573, !257, !257}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1628, file: !1575, line: 584, baseType: !1657, size: 64, offset: 512)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!257, !1581}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1628, file: !1575, line: 588, baseType: !1569, size: 64, offset: 576)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1628, file: !1575, line: 591, baseType: !1569, size: 64, offset: 640)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1628, file: !1575, line: 597, baseType: !1663, size: 64, offset: 704)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!109, !1581, !257, !256, !109, !109}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1628, file: !1575, line: 603, baseType: !1667, size: 64, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!935, !1581}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1628, file: !1575, line: 613, baseType: !1671, size: 64, offset: 832)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!109, !1581, !1674}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !25, line: 717, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1628, file: !1575, line: 625, baseType: !1677, size: 64, offset: 896)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!1674, !1581, !257}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1628, file: !1575, line: 633, baseType: !1681, size: 64, offset: 960)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!1461, !1581, !257}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1582, file: !25, line: 697, baseType: !257, size: 64, offset: 1024)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1582, file: !25, line: 699, baseType: !655, size: 64, offset: 1088)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1582, file: !25, line: 700, baseType: !256, size: 64, offset: 1152)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1582, file: !25, line: 711, baseType: !676, size: 64, offset: 1216)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1582, file: !25, line: 717, baseType: !1674, size: 64, offset: 1280)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1582, file: !25, line: 722, baseType: !1690, offset: 1344)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !25, line: 570, elements: !648)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1578, file: !1575, line: 515, baseType: !773, size: 32, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1578, file: !1575, line: 516, baseType: !257, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1578, file: !1575, line: 517, baseType: !257, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1578, file: !1575, line: 518, baseType: !257, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1574, file: !1575, line: 520, baseType: !24, size: 32, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1574, file: !1575, line: 522, baseType: !1697, size: 64, offset: 384)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1601, line: 22, baseType: !1699)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1601, line: 22, size: 64, elements: !1700)
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1699, file: !1601, line: 22, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1601, line: 15, baseType: !257)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1574, file: !1575, line: 524, baseType: !1704, size: 64, offset: 448)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1596, line: 372, baseType: !1706)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1596, line: 372, size: 64, elements: !1707)
!1707 = !{!1708}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1706, file: !1596, line: 372, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1601, line: 16, baseType: !257)
!1710 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1575, line: 527, baseType: !1711, size: 64, offset: 512)
!1711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !1575, line: 527, size: 64, elements: !1712)
!1712 = !{!1713, !1719}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1711, file: !1575, line: 528, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1601, line: 21, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1601, line: 21, size: 64, elements: !1716)
!1716 = !{!1717}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1715, file: !1601, line: 21, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1601, line: 14, baseType: !257)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1711, file: !1575, line: 529, baseType: !1698, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1574, file: !1575, line: 534, baseType: !1461, size: 64, offset: 576)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1574, file: !1575, line: 535, baseType: !1461, size: 64, offset: 640)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1574, file: !1575, line: 541, baseType: !1723, size: 64, offset: 704)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1574, file: !1575, line: 545, baseType: !1725, size: 64, offset: 768)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1574, file: !1575, line: 549, baseType: !1727, size: 64, offset: 832)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1596, line: 520, baseType: !1461)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1562, file: !65, line: 100, baseType: !1729, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!109, !1511, !257, !257, !109}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1512, file: !65, line: 134, baseType: !256, size: 64, offset: 960)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1512, file: !65, line: 135, baseType: !109, size: 32, offset: 1024)
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !65, line: 136, baseType: !1735, size: 128, offset: 1088)
!1735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1512, file: !65, line: 136, size: 128, elements: !1736)
!1736 = !{!1737, !1743}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1735, file: !65, line: 137, baseType: !1738, size: 128)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1739, line: 6, size: 128, elements: !1740)
!1739 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1738, file: !1739, line: 7, baseType: !338, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1738, file: !1739, line: 8, baseType: !338, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !65, line: 138, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1735, file: !65, line: 138, elements: !1745)
!1745 = !{!1746, !1748}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1744, file: !65, line: 138, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1744, file: !65, line: 138, elements: !648)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1744, file: !65, line: 138, baseType: !1749)
!1749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1738, elements: !810)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1508, file: !25, line: 147, baseType: !256, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1466, file: !25, line: 161, baseType: !663, size: 128, align: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !25, line: 164, baseType: !1753, size: 32, offset: 384)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !25, line: 164, size: 32, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1753, file: !25, line: 169, baseType: !283, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1753, file: !25, line: 177, baseType: !7, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1462, file: !25, line: 181, baseType: !283, size: 32, offset: 416)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !47, line: 309, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1455, file: !47, line: 406, baseType: !1761, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!109, !655, !1764}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !25, line: 293, size: 1536, elements: !1766)
!1766 = !{!1767, !1797, !1811}
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !25, line: 295, baseType: !1768, size: 512)
!1768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !25, line: 295, size: 512, elements: !1769)
!1769 = !{!1770, !1796}
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !25, line: 296, baseType: !1771, size: 448)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1768, file: !25, line: 296, size: 448, elements: !1772)
!1772 = !{!1773, !1774, !1783, !1784, !1785, !1794, !1795}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1771, file: !25, line: 298, baseType: !257, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !25, line: 299, baseType: !1775, size: 128, offset: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1771, file: !25, line: 299, size: 128, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1775, file: !25, line: 300, baseType: !343, size: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !25, line: 302, baseType: !1779, size: 128)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1775, file: !25, line: 302, size: 128, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1779, file: !25, line: 303, baseType: !256, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1779, file: !25, line: 305, baseType: !7, size: 32, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1771, file: !25, line: 310, baseType: !1441, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1771, file: !25, line: 311, baseType: !257, size: 64, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !25, line: 312, baseType: !1786, size: 64, offset: 320)
!1786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1771, file: !25, line: 312, size: 64, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1786, file: !25, line: 313, baseType: !256, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1786, file: !25, line: 314, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !25, line: 257, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 255, size: 64, elements: !1792)
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1791, file: !25, line: 256, baseType: !257, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1771, file: !25, line: 316, baseType: !283, size: 32, offset: 384)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1771, file: !25, line: 317, baseType: !283, size: 32, offset: 416)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1768, file: !25, line: 323, baseType: !1462, size: 512, align: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !25, line: 325, baseType: !1798, size: 512, offset: 512)
!1798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !25, line: 325, size: 512, elements: !1799)
!1799 = !{!1800, !1810}
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !25, line: 326, baseType: !1801, size: 320)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1798, file: !25, line: 326, size: 320, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1801, file: !25, line: 327, baseType: !257, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1801, file: !25, line: 328, baseType: !257, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1801, file: !25, line: 329, baseType: !257, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1801, file: !25, line: 331, baseType: !283, size: 32, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1801, file: !25, line: 332, baseType: !283, size: 32, offset: 224)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1801, file: !25, line: 333, baseType: !283, size: 32, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1801, file: !25, line: 335, baseType: !7, size: 32, offset: 288)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1798, file: !25, line: 339, baseType: !1462, size: 512, align: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !25, line: 341, baseType: !1812, size: 512, offset: 1024)
!1812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !25, line: 341, size: 512, elements: !1813)
!1813 = !{!1814, !1823, !1829}
!1814 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !25, line: 342, baseType: !1815, size: 384)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1812, file: !25, line: 342, size: 384, elements: !1816)
!1816 = !{!1817, !1818, !1819, !1820, !1821, !1822}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1815, file: !25, line: 343, baseType: !257, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1815, file: !25, line: 344, baseType: !257, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1815, file: !25, line: 346, baseType: !256, size: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1815, file: !25, line: 347, baseType: !256, size: 64, offset: 192)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1815, file: !25, line: 348, baseType: !256, size: 64, offset: 256)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1815, file: !25, line: 349, baseType: !256, size: 64, offset: 320)
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !25, line: 352, baseType: !1824, size: 256)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1812, file: !25, line: 352, size: 256, elements: !1825)
!1825 = !{!1826, !1827, !1828}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1824, file: !25, line: 353, baseType: !257, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1824, file: !25, line: 354, baseType: !257, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1824, file: !25, line: 356, baseType: !343, size: 128, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1812, file: !25, line: 359, baseType: !1462, size: 512, align: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1455, file: !47, line: 409, baseType: !1831, size: 64, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!109, !1441, !1758}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1455, file: !47, line: 412, baseType: !1835, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!932, !1441, !1764}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1455, file: !47, line: 414, baseType: !1839, size: 64, offset: 256)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !47, line: 310, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1455, file: !47, line: 416, baseType: !1845, size: 64, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!109, !655, !1441, !695, !7, !1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1455, file: !47, line: 419, baseType: !1851, size: 64, offset: 384)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!109, !655, !1441, !695, !7, !7, !1461, !256}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1455, file: !47, line: 424, baseType: !1855, size: 64, offset: 448)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!1858, !1441, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !284, line: 131, baseType: !338)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1455, file: !47, line: 425, baseType: !1860, size: 64, offset: 512)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !1764, !1242, !1242}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1455, file: !47, line: 426, baseType: !1864, size: 64, offset: 576)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!932, !1764, !773}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1455, file: !47, line: 427, baseType: !1868, size: 64, offset: 640)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !1764}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1455, file: !47, line: 428, baseType: !1872, size: 64, offset: 704)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!1239, !1875, !1897}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !47, line: 373, size: 384, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1884, !1885, !1886, !1887}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1876, file: !47, line: 374, baseType: !655, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1876, file: !47, line: 375, baseType: !695, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1876, file: !47, line: 376, baseType: !1881, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !1875, !255}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1876, file: !47, line: 377, baseType: !256, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1876, file: !47, line: 378, baseType: !109, size: 32, offset: 256)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1876, file: !47, line: 379, baseType: !307, size: 16, offset: 288)
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1876, file: !47, line: 380, baseType: !1888, size: 64, offset: 320)
!1888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1876, file: !47, line: 380, size: 64, elements: !1889)
!1889 = !{!1890, !1893}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1888, file: !47, line: 386, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !47, line: 386, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1888, file: !47, line: 395, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1239, !256}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1899, line: 41, size: 320, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1900 = !{!1901, !1902, !1903, !1904, !1905, !1906, !1911, !1944}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1898, file: !1899, line: 42, baseType: !453, size: 8)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1898, file: !1899, line: 43, baseType: !932, size: 8, offset: 8)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1898, file: !1899, line: 44, baseType: !932, size: 8, offset: 16)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1898, file: !1899, line: 45, baseType: !932, size: 8, offset: 24)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1898, file: !1899, line: 46, baseType: !932, size: 8, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1898, file: !1899, line: 47, baseType: !1907, size: 64, offset: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !1899, line: 47, size: 64, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1907, file: !1899, line: 48, baseType: !1242, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1907, file: !1899, line: 49, baseType: !109, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, scope: !1898, file: !1899, line: 61, baseType: !1912, size: 128, offset: 128)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !1899, line: 61, size: 128, elements: !1913)
!1913 = !{!1914, !1920}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1912, file: !1899, line: 67, baseType: !1915, size: 128)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1916, line: 17, size: 128, elements: !1917)
!1916 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1915, file: !1916, line: 19, baseType: !256, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1915, file: !1916, line: 20, baseType: !1243, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1912, file: !1899, line: 68, baseType: !1921, size: 128)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !1899, line: 68, size: 128, elements: !1922)
!1922 = !{!1923, !1943}
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !1899, line: 69, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1921, file: !1899, line: 69, size: 64, elements: !1925)
!1925 = !{!1926, !1929, !1936, !1940, !1942}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1924, file: !1899, line: 71, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1915)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1924, file: !1899, line: 72, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1899, line: 17, size: 128, elements: !1933)
!1933 = !{!1934, !1935}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1932, file: !1899, line: 18, baseType: !256, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1932, file: !1899, line: 19, baseType: !1242, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1924, file: !1899, line: 73, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1899, line: 73, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1924, file: !1899, line: 74, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1924, file: !1899, line: 75, baseType: !256, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1921, file: !1899, line: 77, baseType: !1242, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1898, file: !1899, line: 80, baseType: !1945, size: 64, offset: 256)
!1945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !1899, line: 80, size: 64, elements: !1946)
!1946 = !{!1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1945, file: !1899, line: 81, baseType: !257, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1945, file: !1899, line: 82, baseType: !695, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1455, file: !47, line: 433, baseType: !1950, size: 64, offset: 768)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!109, !1441, !1764, !1764, !57}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1455, file: !47, line: 435, baseType: !1954, size: 64, offset: 832)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!109, !1764}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1455, file: !47, line: 436, baseType: !1958, size: 64, offset: 896)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!932, !1764, !1242, !1242}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1455, file: !47, line: 438, baseType: !1962, size: 64, offset: 960)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{null, !1764, !1965, !1965}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1455, file: !47, line: 439, baseType: !1967, size: 64, offset: 1024)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!109, !1441, !1461}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1455, file: !47, line: 442, baseType: !1971, size: 64, offset: 1088)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!109, !1974, !655, !1976}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !47, line: 66, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1455, file: !47, line: 444, baseType: !1978, size: 64, offset: 1152)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !655}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1455, file: !47, line: 445, baseType: !1982, size: 64, offset: 1216)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!109, !1875, !1897}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1442, file: !47, line: 486, baseType: !257, size: 64, offset: 896)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1442, file: !47, line: 487, baseType: !872, size: 320, offset: 960)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1442, file: !47, line: 488, baseType: !1988, size: 32, offset: 1280)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1989, line: 8, baseType: !270)
!1989 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1442, file: !47, line: 489, baseType: !637, size: 32, offset: 1312)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1442, file: !47, line: 490, baseType: !343, size: 128, offset: 1344)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1442, file: !47, line: 491, baseType: !256, size: 64, offset: 1472)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1432, file: !1401, line: 180, baseType: !1994, size: 64, offset: 320)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!1239, !655, !1343, !1431, !945, !695, !1242}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1432, file: !1401, line: 182, baseType: !1994, size: 64, offset: 384)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1432, file: !1401, line: 184, baseType: !1999, size: 64, offset: 448)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!109, !655, !1343, !1431, !1581}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1420, file: !1401, line: 90, baseType: !2003, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1420, file: !1401, line: 91, baseType: !2005, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1391, file: !1338, line: 120, baseType: !2007, size: 64, offset: 192)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!2010, !1361}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2012)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !41, line: 39, size: 384, elements: !2013)
!2013 = !{!2014, !2015, !2019, !2023, !2032, !2036}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2012, file: !41, line: 40, baseType: !40, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2012, file: !41, line: 41, baseType: !2016, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!932}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2012, file: !41, line: 42, baseType: !2020, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!256}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2012, file: !41, line: 43, baseType: !2024, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!2027, !2029}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !2031, line: 17, flags: DIFlagFwdDecl)
!2031 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2012, file: !41, line: 44, baseType: !2033, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!2027}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2012, file: !41, line: 45, baseType: !1118, size: 64, offset: 320)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1391, file: !1338, line: 121, baseType: !2038, size: 64, offset: 256)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!2027, !1361}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1391, file: !1338, line: 122, baseType: !2042, size: 64, offset: 320)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !1361, !2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1337, file: !1338, line: 70, baseType: !2048, size: 64, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2050, line: 190, size: 1152, elements: !2051)
!2050 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2051 = !{!2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2183, !2184, !2185, !2186, !2187, !2190}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2049, file: !2050, line: 191, baseType: !283, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2049, file: !2050, line: 192, baseType: !283, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2049, file: !2050, line: 202, baseType: !2048, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2049, file: !2050, line: 203, baseType: !935, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2049, file: !2050, line: 205, baseType: !330, size: 192, align: 64, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2049, file: !2050, line: 207, baseType: !2027, size: 64, offset: 384)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2049, file: !2050, line: 208, baseType: !7, size: 32, offset: 448)
!2059 = !DIDerivedType(tag: DW_TAG_member, scope: !2049, file: !2050, line: 209, baseType: !2060, size: 256, offset: 512)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2049, file: !2050, line: 209, size: 256, elements: !2061)
!2061 = !{!2062, !2071, !2075}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2060, file: !2050, line: 210, baseType: !2063, size: 256)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2050, line: 153, size: 256, elements: !2064)
!2064 = !{!2065, !2066, !2067, !2070}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2063, file: !2050, line: 154, baseType: !257, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2063, file: !2050, line: 156, baseType: !505, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2063, file: !2050, line: 162, baseType: !2068, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2050, line: 162, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2063, file: !2050, line: 167, baseType: !257, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2060, file: !2050, line: 211, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2050, line: 170, size: 64, elements: !2073)
!2073 = !{!2074}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2072, file: !2050, line: 171, baseType: !2048, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2060, file: !2050, line: 212, baseType: !2076, size: 256)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2050, line: 174, size: 256, elements: !2077)
!2077 = !{!2078, !2178, !2181, !2182}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2076, file: !2050, line: 175, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2081)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2050, line: 271, size: 768, elements: !2082)
!2082 = !{!2083, !2142, !2146, !2147, !2148, !2149, !2150, !2154, !2155, !2156, !2157, !2174}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2081, file: !2050, line: 276, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!109, !2087}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2050, line: 251, size: 1216, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2088, file: !2050, line: 253, baseType: !2048, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2088, file: !2050, line: 254, baseType: !655, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2088, file: !2050, line: 255, baseType: !2093, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2095, line: 17, size: 960, elements: !2096)
!2095 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2096 = !{!2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2127, !2128, !2131}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2094, file: !2095, line: 18, baseType: !945, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2094, file: !2095, line: 19, baseType: !1242, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2094, file: !2095, line: 20, baseType: !1242, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2094, file: !2095, line: 21, baseType: !1242, size: 64, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2094, file: !2095, line: 22, baseType: !1242, size: 64, offset: 256)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2094, file: !2095, line: 23, baseType: !695, size: 64, offset: 320)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2094, file: !2095, line: 24, baseType: !695, size: 64, offset: 384)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2094, file: !2095, line: 25, baseType: !683, size: 256, offset: 448)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2094, file: !2095, line: 26, baseType: !2106, size: 64, offset: 704)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2108)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2095, line: 32, size: 256, elements: !2109)
!2109 = !{!2110, !2115, !2119, !2123}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2108, file: !2095, line: 33, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!256, !2093, !2114}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2108, file: !2095, line: 34, baseType: !2116, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !2093, !256}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2108, file: !2095, line: 35, baseType: !2120, size: 64, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!256, !2093, !256, !2114}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2108, file: !2095, line: 36, baseType: !2124, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!109, !2093, !256}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2094, file: !2095, line: 27, baseType: !109, size: 32, offset: 768)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2094, file: !2095, line: 28, baseType: !2129, size: 64, offset: 832)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2094, file: !2095, line: 29, baseType: !256, size: 64, offset: 896)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2088, file: !2050, line: 256, baseType: !256, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2088, file: !2050, line: 259, baseType: !683, size: 256, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2088, file: !2050, line: 260, baseType: !683, size: 256, offset: 512)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2088, file: !2050, line: 261, baseType: !109, size: 32, offset: 768)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2088, file: !2050, line: 262, baseType: !343, size: 128, offset: 832)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2088, file: !2050, line: 263, baseType: !945, size: 64, offset: 960)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2088, file: !2050, line: 265, baseType: !1242, size: 64, offset: 1024)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2088, file: !2050, line: 266, baseType: !932, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2088, file: !2050, line: 267, baseType: !932, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2088, file: !2050, line: 268, baseType: !1626, size: 64, offset: 1152)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2081, file: !2050, line: 277, baseType: !2143, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !2087}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2081, file: !2050, line: 290, baseType: !2124, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2081, file: !2050, line: 292, baseType: !2111, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2081, file: !2050, line: 293, baseType: !2120, size: 64, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2081, file: !2050, line: 294, baseType: !2116, size: 64, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2081, file: !2050, line: 296, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!1239, !2087, !945, !1242, !695}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2081, file: !2050, line: 306, baseType: !1242, size: 64, offset: 448)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2081, file: !2050, line: 313, baseType: !932, size: 8, offset: 512)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2081, file: !2050, line: 314, baseType: !2151, size: 64, offset: 576)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2081, file: !2050, line: 317, baseType: !2158, size: 64, offset: 640)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!2161, !2087, !2163}
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2162, line: 59, baseType: !7)
!2162 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2165, line: 37, size: 128, elements: !2166)
!2165 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2166 = !{!2167, !2173}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2164, file: !2165, line: 38, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2165, line: 31, baseType: !2169)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !655, !2172, !2163}
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2164, file: !2165, line: 39, baseType: !2161, size: 32, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2081, file: !2050, line: 320, baseType: !2175, size: 64, offset: 704)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!109, !2087, !1581}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2076, file: !2050, line: 176, baseType: !2179, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2050, line: 35, flags: DIFlagFwdDecl)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2076, file: !2050, line: 177, baseType: !695, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2076, file: !2050, line: 178, baseType: !2048, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2049, file: !2050, line: 215, baseType: !256, size: 64, offset: 768)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2049, file: !2050, line: 221, baseType: !338, size: 64, offset: 832)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2049, file: !2050, line: 223, baseType: !309, size: 16, offset: 896)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2049, file: !2050, line: 224, baseType: !1090, size: 16, offset: 912)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2049, file: !2050, line: 225, baseType: !2188, size: 64, offset: 960)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2050, line: 36, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2049, file: !2050, line: 227, baseType: !663, size: 128, align: 64, offset: 1024)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1337, file: !1338, line: 71, baseType: !2192, size: 32, offset: 448)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2193, line: 19, size: 32, elements: !2194)
!2193 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2194 = !{!2195}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2192, file: !2193, line: 20, baseType: !278, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1337, file: !1338, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1337, file: !1338, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1337, file: !1338, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1337, file: !1338, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1337, file: !1338, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1334, file: !18, line: 47, baseType: !1324, size: 64, offset: 512)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1334, file: !18, line: 48, baseType: !1343, size: 64, offset: 576)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1334, file: !18, line: 49, baseType: !2204, size: 64, offset: 640)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !18, line: 49, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1334, file: !18, line: 50, baseType: !2207, size: 64, offset: 704)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1325, file: !18, line: 418, baseType: !2209, size: 64, offset: 1408)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !18, line: 53, size: 448, elements: !2211)
!2211 = !{!2212, !2213, !2218, !2222, !2226, !2230}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2210, file: !18, line: 54, baseType: !1408, size: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2210, file: !18, line: 55, baseType: !2214, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!1239, !2209, !2217, !945}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2210, file: !18, line: 57, baseType: !2219, size: 64, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!1239, !2209, !2217, !935, !1242}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2210, file: !18, line: 59, baseType: !2223, size: 64, offset: 256)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !1324, !935}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2210, file: !18, line: 60, baseType: !2227, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!109, !1324}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2210, file: !18, line: 61, baseType: !2231, size: 64, offset: 384)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !1324}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1325, file: !18, line: 419, baseType: !935, size: 64, offset: 1472)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1325, file: !18, line: 420, baseType: !935, size: 64, offset: 1536)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1325, file: !18, line: 421, baseType: !1343, size: 64, offset: 1600)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1325, file: !18, line: 424, baseType: !2238, size: 64, offset: 1664)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2240)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !18, line: 424, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1325, file: !18, line: 425, baseType: !2242, size: 64, offset: 1728)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1325, file: !18, line: 426, baseType: !7, size: 32, offset: 1792)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1325, file: !18, line: 435, baseType: !683, size: 256, offset: 1856)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1325, file: !18, line: 437, baseType: !2247, size: 64, offset: 2112)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2249, line: 69, size: 320, elements: !2250)
!2249 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2250 = !{!2251, !2252, !2253, !2270, !2272, !2276, !2277}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2248, file: !2249, line: 70, baseType: !935, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2248, file: !2249, line: 71, baseType: !1324, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2248, file: !2249, line: 72, baseType: !2254, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2249, line: 47, size: 256, elements: !2257)
!2257 = !{!2258, !2259, !2265, !2269}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2256, file: !2249, line: 49, baseType: !7, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2256, file: !2249, line: 51, baseType: !2260, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!109, !935, !2263}
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2248)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2256, file: !2249, line: 53, baseType: !2266, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!109, !945, !2263}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2256, file: !2249, line: 55, baseType: !1118, size: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2248, file: !2249, line: 73, baseType: !2271, size: 16, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2248, file: !2249, line: 74, baseType: !2273, size: 8, offset: 208)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !271, line: 16, baseType: !2274)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !273, line: 20, baseType: !2275)
!2275 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2248, file: !2249, line: 75, baseType: !453, size: 8, offset: 216)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2248, file: !2249, line: 76, baseType: !2278, size: 64, offset: 256)
!2278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2248, file: !2249, line: 76, size: 64, elements: !2279)
!2279 = !{!2280, !2281, !2288}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2278, file: !2249, line: 77, baseType: !256, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2278, file: !2249, line: 78, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2284)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2249, line: 86, size: 128, elements: !2285)
!2285 = !{!2286, !2287}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2284, file: !2249, line: 87, baseType: !7, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2284, file: !2249, line: 88, baseType: !945, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2278, file: !2249, line: 79, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2291)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2249, line: 92, size: 256, elements: !2292)
!2292 = !{!2293, !2294, !2295, !2297, !2298}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2291, file: !2249, line: 94, baseType: !7, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2291, file: !2249, line: 95, baseType: !7, size: 32, offset: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2291, file: !2249, line: 96, baseType: !2296, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2291, file: !2249, line: 97, baseType: !2254, size: 64, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2291, file: !2249, line: 98, baseType: !256, size: 64, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1325, file: !18, line: 438, baseType: !7, size: 32, offset: 2176)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1325, file: !18, line: 441, baseType: !7, size: 32, offset: 2208)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1325, file: !18, line: 442, baseType: !2238, size: 64, offset: 2240)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1325, file: !18, line: 443, baseType: !2242, size: 64, offset: 2304)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1325, file: !18, line: 444, baseType: !932, size: 8, offset: 2368)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1325, file: !18, line: 451, baseType: !932, size: 8, offset: 2376)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1325, file: !18, line: 454, baseType: !7, size: 32, offset: 2400)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1325, file: !18, line: 455, baseType: !2307, size: 64, offset: 2432)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2309, line: 23, size: 96, elements: !2310)
!2309 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2310 = !{!2311, !2312, !2313}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2308, file: !2309, line: 24, baseType: !109, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2308, file: !2309, line: 24, baseType: !109, size: 32, offset: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2308, file: !2309, line: 24, baseType: !109, size: 32, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1325, file: !18, line: 458, baseType: !2315, size: 64, offset: 2496)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!109}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1325, file: !18, line: 460, baseType: !2319, size: 4032, align: 512, offset: 2560)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2320, size: 4032, elements: !2336)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !18, line: 362, size: 576, elements: !2321)
!2321 = !{!2322, !2323, !2324}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2320, file: !18, line: 363, baseType: !256, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2320, file: !18, line: 364, baseType: !7, size: 32, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2320, file: !18, line: 367, baseType: !2325, size: 448, offset: 128)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !18, line: 319, size: 448, elements: !2326)
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2325, file: !18, line: 320, baseType: !1324, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2325, file: !18, line: 321, baseType: !2329, size: 384, offset: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2330, line: 40, size: 384, elements: !2331)
!2330 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2331 = !{!2332}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2329, file: !2330, line: 41, baseType: !2333, size: 384, align: 64)
!2333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 384, align: 64, elements: !2334)
!2334 = !{!2335}
!2335 = !DISubrange(count: 2)
!2336 = !{!2337}
!2337 = !DISubrange(count: 7)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1325, file: !18, line: 463, baseType: !2339, size: 192, offset: 6592)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2340, line: 8, size: 192, elements: !2341)
!2340 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2341 = !{!2342, !2343, !2345}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2339, file: !2340, line: 10, baseType: !7, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2339, file: !2340, line: 11, baseType: !2344, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2339, file: !2340, line: 12, baseType: !2346, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2348, line: 59, size: 48, elements: !2349)
!2348 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2349 = !{!2350, !2353, !2354, !2355, !2356, !2357}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2347, file: !2348, line: 60, baseType: !2351, size: 16)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !271, line: 18, baseType: !2352)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !273, line: 23, baseType: !900)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2347, file: !2348, line: 61, baseType: !2351, size: 16, offset: 16)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2347, file: !2348, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2347, file: !2348, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2347, file: !2348, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2347, file: !2348, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1325, file: !18, line: 465, baseType: !257, size: 64, offset: 6784)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1325, file: !18, line: 469, baseType: !7, size: 32, offset: 6848)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1325, file: !18, line: 470, baseType: !343, size: 128, offset: 6912)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1325, file: !18, line: 471, baseType: !2362, size: 64, offset: 7040)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2364, line: 33, size: 96, elements: !2365)
!2364 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2365 = !{!2366, !2367, !2368, !2369}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2363, file: !2364, line: 37, baseType: !109, size: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2363, file: !2364, line: 43, baseType: !109, size: 32, offset: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2363, file: !2364, line: 45, baseType: !309, size: 16, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2363, file: !2364, line: 47, baseType: !309, size: 16, offset: 80)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1325, file: !18, line: 476, baseType: !2371, size: 64, offset: 7104)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !18, line: 378, size: 256, elements: !2373)
!2373 = !{!2374, !2390, !2391, !2392}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2372, file: !18, line: 379, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2377, line: 204, baseType: !2378)
!2377 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2377, line: 197, size: 192, elements: !2379)
!2379 = !{!2380, !2382, !2383, !2384, !2386, !2388}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2378, file: !2377, line: 198, baseType: !2381, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2377, line: 21, baseType: !272)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2378, file: !2377, line: 199, baseType: !455, size: 8, offset: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2378, file: !2377, line: 200, baseType: !455, size: 8, offset: 40)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2378, file: !2377, line: 201, baseType: !2385, size: 16, offset: 48)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2377, line: 17, baseType: !308)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2378, file: !2377, line: 202, baseType: !2387, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2377, line: 16, baseType: !339)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2378, file: !2377, line: 203, baseType: !2389, size: 64, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2377, line: 22, baseType: !339)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2372, file: !18, line: 380, baseType: !7, size: 32, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2372, file: !18, line: 381, baseType: !945, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2372, file: !18, line: 382, baseType: !945, size: 64, offset: 192)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1325, file: !18, line: 477, baseType: !2372, size: 256, offset: 7168)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1325, file: !18, line: 480, baseType: !2395, size: 64, offset: 7424)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !18, line: 480, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1325, file: !18, line: 483, baseType: !2398, size: 64, offset: 7488)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !18, line: 483, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1325, file: !18, line: 488, baseType: !945, size: 64, offset: 7552)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1325, file: !18, line: 492, baseType: !256, size: 64, offset: 7616)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1325, file: !18, line: 493, baseType: !7, size: 32, offset: 7680)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1325, file: !18, line: 495, baseType: !256, size: 64, offset: 7744)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1325, file: !18, line: 496, baseType: !7, size: 32, offset: 7808)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1325, file: !18, line: 499, baseType: !7, size: 32, offset: 7840)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1325, file: !18, line: 500, baseType: !2407, size: 64, offset: 7872)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2409, line: 45, baseType: !2410)
!2409 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1325, file: !18, line: 503, baseType: !7, size: 32, offset: 7936)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1325, file: !18, line: 504, baseType: !2413, size: 64, offset: 8000)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2416, line: 96, size: 192, elements: !2417)
!2416 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2417 = !{!2418, !2419, !2484, !2487}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2415, file: !2416, line: 97, baseType: !7, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2415, file: !2416, line: 98, baseType: !2420, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2416, line: 24, size: 3072, elements: !2422)
!2422 = !{!2423, !2425, !2426, !2427, !2428, !2442, !2443, !2444, !2445, !2457, !2469, !2470, !2481, !2482, !2483}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2421, file: !2416, line: 26, baseType: !2424, size: 128)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 128, elements: !2334)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2421, file: !2416, line: 27, baseType: !2424, size: 128, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2421, file: !2416, line: 28, baseType: !109, size: 32, offset: 256)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2421, file: !2416, line: 31, baseType: !637, size: 32, align: 512, offset: 512)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2421, file: !2416, line: 32, baseType: !2429, size: 960, offset: 576)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2430, line: 206, size: 960, elements: !2431)
!2430 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2431 = !{!2432, !2433, !2436, !2438, !2439, !2441}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2429, file: !2430, line: 207, baseType: !666, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2429, file: !2430, line: 208, baseType: !2434, size: 256, offset: 64)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2435, size: 256, elements: !742)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2429, file: !2430, line: 209, baseType: !2437, size: 256, offset: 320)
!2437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 256, elements: !742)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2429, file: !2430, line: 213, baseType: !255, size: 64, offset: 576)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2429, file: !2430, line: 215, baseType: !2440, size: 256, offset: 640)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 256, elements: !742)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2429, file: !2430, line: 216, baseType: !453, size: 8, offset: 896)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2421, file: !2416, line: 33, baseType: !257, size: 64, offset: 1536)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2421, file: !2416, line: 34, baseType: !257, size: 64, offset: 1600)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2421, file: !2416, line: 35, baseType: !932, size: 8, offset: 1664)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2421, file: !2416, line: 36, baseType: !2446, size: 320, offset: 1728)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2447, line: 11, size: 320, elements: !2448)
!2447 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2448 = !{!2449, !2450, !2451, !2456}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2446, file: !2447, line: 16, baseType: !737, size: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2446, file: !2447, line: 17, baseType: !257, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2446, file: !2447, line: 18, baseType: !2452, size: 64, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2446, file: !2447, line: 19, baseType: !270, size: 32, offset: 256)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2421, file: !2416, line: 37, baseType: !2458, size: 256, offset: 2048)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2459, line: 98, size: 256, elements: !2460)
!2459 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2460 = !{!2461, !2462, !2463}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2458, file: !2459, line: 99, baseType: !676, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2458, file: !2459, line: 100, baseType: !343, size: 128, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2458, file: !2459, line: 101, baseType: !2464, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2459, line: 21, baseType: !2465)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{null, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2421, file: !2416, line: 38, baseType: !663, size: 128, align: 64, offset: 2304)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2421, file: !2416, line: 39, baseType: !2471, size: 64, offset: 2432)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2416, line: 49, size: 768, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2472, file: !2416, line: 50, baseType: !637, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2472, file: !2416, line: 51, baseType: !2437, size: 256, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2472, file: !2416, line: 53, baseType: !2437, size: 256, offset: 320)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2472, file: !2416, line: 54, baseType: !257, size: 64, offset: 576)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2472, file: !2416, line: 55, baseType: !2471, size: 64, offset: 640)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2472, file: !2416, line: 56, baseType: !109, size: 32, offset: 704)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2472, file: !2416, line: 57, baseType: !109, size: 32, offset: 736)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2421, file: !2416, line: 40, baseType: !257, size: 64, offset: 2496)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2421, file: !2416, line: 42, baseType: !109, size: 32, offset: 2560)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2421, file: !2416, line: 43, baseType: !2414, size: 64, offset: 2624)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2415, file: !2416, line: 99, baseType: !2485, offset: 128)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2486, line: 211, elements: !648)
!2486 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2415, file: !2416, line: 100, baseType: !2488, size: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2416, line: 63, size: 3008, elements: !2490)
!2490 = !{!2491, !2492, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2522}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2489, file: !2416, line: 64, baseType: !2471, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2489, file: !2416, line: 65, baseType: !2493, size: 192, offset: 64)
!2493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2471, size: 192, elements: !721)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2489, file: !2416, line: 67, baseType: !109, size: 32, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2489, file: !2416, line: 68, baseType: !683, size: 256, offset: 320)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2489, file: !2416, line: 69, baseType: !637, size: 32, offset: 576)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2489, file: !2416, line: 70, baseType: !683, size: 256, offset: 640)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2489, file: !2416, line: 71, baseType: !257, size: 64, offset: 896)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2489, file: !2416, line: 72, baseType: !257, size: 64, offset: 960)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2489, file: !2416, line: 73, baseType: !257, size: 64, offset: 1024)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2489, file: !2416, line: 74, baseType: !257, size: 64, offset: 1088)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2489, file: !2416, line: 75, baseType: !257, size: 64, offset: 1152)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2489, file: !2416, line: 76, baseType: !257, size: 64, offset: 1216)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2489, file: !2416, line: 77, baseType: !257, size: 64, offset: 1280)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2489, file: !2416, line: 78, baseType: !257, size: 64, offset: 1344)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2489, file: !2416, line: 79, baseType: !932, size: 8, offset: 1408)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2489, file: !2416, line: 80, baseType: !257, size: 64, offset: 1472)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2489, file: !2416, line: 81, baseType: !683, size: 256, offset: 1536)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2489, file: !2416, line: 82, baseType: !1546, size: 256, offset: 1792)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2489, file: !2416, line: 84, baseType: !283, size: 32, offset: 2048)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2489, file: !2416, line: 87, baseType: !257, size: 64, offset: 2112)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2489, file: !2416, line: 88, baseType: !257, size: 64, offset: 2176)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2489, file: !2416, line: 89, baseType: !2514, size: 704, offset: 2240)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2459, line: 111, size: 704, elements: !2515)
!2515 = !{!2516, !2517, !2518, !2521}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2514, file: !2459, line: 112, baseType: !2458, size: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2514, file: !2459, line: 113, baseType: !2446, size: 320, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2514, file: !2459, line: 116, baseType: !2519, size: 64, offset: 576)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2459, line: 18, flags: DIFlagFwdDecl)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2514, file: !2459, line: 117, baseType: !109, size: 32, offset: 640)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2489, file: !2416, line: 90, baseType: !2414, size: 64, offset: 2944)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1325, file: !18, line: 515, baseType: !2524, size: 64, offset: 8064)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2526, line: 117, size: 128, elements: !2527)
!2526 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2527 = !{!2528, !2529, !2530}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2525, file: !2526, line: 118, baseType: !864, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2525, file: !2526, line: 119, baseType: !864, size: 32, offset: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2525, file: !2526, line: 120, baseType: !255, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1325, file: !18, line: 516, baseType: !7, size: 32, offset: 8128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1325, file: !18, line: 519, baseType: !7, size: 32, offset: 8160)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1325, file: !18, line: 520, baseType: !2534, size: 64, offset: 8192)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1325, file: !18, line: 523, baseType: !2536, size: 64, offset: 8256)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !18, line: 523, flags: DIFlagFwdDecl)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1325, file: !18, line: 524, baseType: !7, size: 32, offset: 8320)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1325, file: !18, line: 525, baseType: !2541, size: 64, offset: 8384)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !18, line: 525, flags: DIFlagFwdDecl)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1325, file: !18, line: 526, baseType: !7, size: 32, offset: 8448)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1325, file: !18, line: 533, baseType: !256, size: 64, offset: 8512)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1325, file: !18, line: 534, baseType: !7, size: 32, offset: 8576)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1325, file: !18, line: 535, baseType: !2548, size: 64, offset: 8640)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1325, file: !18, line: 536, baseType: !7, size: 32, offset: 8704)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1325, file: !18, line: 539, baseType: !109, size: 32, offset: 8736)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1325, file: !18, line: 540, baseType: !2552, size: 64, offset: 8768)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2554, line: 32, size: 64, elements: !2555)
!2554 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2555 = !{!2556, !2557}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2553, file: !2554, line: 33, baseType: !864, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2553, file: !2554, line: 34, baseType: !864, size: 32, offset: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1325, file: !18, line: 563, baseType: !343, size: 128, offset: 8832)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1325, file: !18, line: 565, baseType: !343, size: 128, offset: 8960)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1325, file: !18, line: 568, baseType: !2561, size: 64, offset: 9088)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{null}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1325, file: !18, line: 570, baseType: !283, size: 32, offset: 9152)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1301, file: !47, line: 2382, baseType: !1300, size: 64, offset: 448)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1301, file: !47, line: 2383, baseType: !733, size: 64, offset: 512)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1301, file: !47, line: 2385, baseType: !2568, offset: 576)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2486, line: 206, elements: !648)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1301, file: !47, line: 2386, baseType: !2568, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1301, file: !47, line: 2387, baseType: !2568, offset: 576)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1301, file: !47, line: 2388, baseType: !2572, offset: 576)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2568, elements: !721)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1301, file: !47, line: 2390, baseType: !2568, offset: 576)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1301, file: !47, line: 2391, baseType: !2568, offset: 576)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1301, file: !47, line: 2392, baseType: !2568, offset: 576)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1301, file: !47, line: 2393, baseType: !2568, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1292, file: !47, line: 1197, baseType: !2578, size: 64, offset: 384)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2580)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !47, line: 2057, size: 1664, elements: !2581)
!2581 = !{!2582, !2586, !2590, !2591, !2595, !2599, !2603, !2604, !2605, !2609, !2613, !2617, !2618, !2619, !2625, !2629, !2630, !2634, !2635, !2636, !2637, !2641, !2645, !2692, !2707, !2708}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2580, file: !47, line: 2058, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!1086, !1291}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2580, file: !47, line: 2059, baseType: !2587, size: 64, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{null, !1086}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2580, file: !47, line: 2060, baseType: !2587, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2580, file: !47, line: 2062, baseType: !2592, size: 64, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{null, !1086, !109}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2580, file: !47, line: 2063, baseType: !2596, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!109, !1086, !1758}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2580, file: !47, line: 2064, baseType: !2600, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!109, !1086}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2580, file: !47, line: 2065, baseType: !2587, size: 64, offset: 384)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2580, file: !47, line: 2066, baseType: !1320, size: 64, offset: 448)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2580, file: !47, line: 2067, baseType: !2606, size: 64, offset: 512)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!109, !1291, !109}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2580, file: !47, line: 2068, baseType: !2610, size: 64, offset: 576)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!109, !1291, !46}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2580, file: !47, line: 2069, baseType: !2614, size: 64, offset: 640)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!109, !1291}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2580, file: !47, line: 2070, baseType: !2610, size: 64, offset: 704)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2580, file: !47, line: 2071, baseType: !2614, size: 64, offset: 768)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2580, file: !47, line: 2072, baseType: !2620, size: 64, offset: 832)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!109, !1051, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !47, line: 62, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2580, file: !47, line: 2073, baseType: !2626, size: 64, offset: 896)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!109, !1291, !2344, !945}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2580, file: !47, line: 2074, baseType: !1320, size: 64, offset: 960)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2580, file: !47, line: 2076, baseType: !2631, size: 64, offset: 1024)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!109, !2093, !1051}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2580, file: !47, line: 2077, baseType: !2631, size: 64, offset: 1088)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2580, file: !47, line: 2078, baseType: !2631, size: 64, offset: 1152)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2580, file: !47, line: 2079, baseType: !2631, size: 64, offset: 1216)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2580, file: !47, line: 2081, baseType: !2638, size: 64, offset: 1280)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!1239, !1291, !109, !945, !1242, !695}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2580, file: !47, line: 2082, baseType: !2642, size: 64, offset: 1344)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!1239, !1291, !109, !935, !1242, !695}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2580, file: !47, line: 2083, baseType: !2646, size: 64, offset: 1408)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!2649, !1086}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !52, line: 296, size: 1664, elements: !2652)
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2677, !2678, !2679}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2651, file: !52, line: 297, baseType: !737, size: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2651, file: !52, line: 298, baseType: !343, size: 128, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2651, file: !52, line: 299, baseType: !343, size: 128, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2651, file: !52, line: 300, baseType: !343, size: 128, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2651, file: !52, line: 301, baseType: !683, size: 256, offset: 512)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2651, file: !52, line: 302, baseType: !637, size: 32, offset: 768)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2651, file: !52, line: 303, baseType: !283, size: 32, offset: 800)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2651, file: !52, line: 304, baseType: !1291, size: 64, offset: 832)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2651, file: !52, line: 305, baseType: !2662, size: 64, offset: 896)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !52, line: 68, size: 64, elements: !2663)
!2663 = !{!2664, !2676}
!2664 = !DIDerivedType(tag: DW_TAG_member, scope: !2662, file: !52, line: 69, baseType: !2665, size: 32)
!2665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2662, file: !52, line: 69, size: 32, elements: !2666)
!2666 = !{!2667, !2668, !2669}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2665, file: !52, line: 70, baseType: !814, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2665, file: !52, line: 71, baseType: !831, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2665, file: !52, line: 72, baseType: !2670, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2671, line: 24, baseType: !2672)
!2671 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2671, line: 22, size: 32, elements: !2673)
!2673 = !{!2674}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2672, file: !2671, line: 23, baseType: !2675, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2671, line: 20, baseType: !819)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2662, file: !52, line: 74, baseType: !51, size: 32, offset: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2651, file: !52, line: 306, baseType: !695, size: 64, offset: 960)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2651, file: !52, line: 307, baseType: !257, size: 64, offset: 1024)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2651, file: !52, line: 308, baseType: !2680, size: 576, offset: 1088)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !52, line: 205, size: 576, elements: !2681)
!2681 = !{!2682, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2680, file: !52, line: 206, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !52, line: 66, baseType: !356)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2680, file: !52, line: 207, baseType: !2683, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2680, file: !52, line: 208, baseType: !2683, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2680, file: !52, line: 209, baseType: !2683, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2680, file: !52, line: 210, baseType: !2683, size: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2680, file: !52, line: 211, baseType: !2683, size: 64, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2680, file: !52, line: 212, baseType: !2683, size: 64, offset: 384)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2680, file: !52, line: 213, baseType: !888, size: 64, offset: 448)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2680, file: !52, line: 214, baseType: !888, size: 64, offset: 512)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2580, file: !47, line: 2085, baseType: !2693, size: 64, offset: 1472)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!255, !1291, !2696}
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2698, line: 15, size: 256, elements: !2699)
!2698 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2699 = !{!2700, !2701, !2702, !2703, !2704}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2697, file: !2698, line: 16, baseType: !773, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2697, file: !2698, line: 19, baseType: !109, size: 32, offset: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2697, file: !2698, line: 26, baseType: !257, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2697, file: !2698, line: 33, baseType: !257, size: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2697, file: !2698, line: 36, baseType: !2705, size: 64, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !25, line: 33, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2580, file: !47, line: 2087, baseType: !2693, size: 64, offset: 1536)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2580, file: !47, line: 2089, baseType: !1320, size: 64, offset: 1600)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1292, file: !47, line: 1198, baseType: !2710, size: 64, offset: 448)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2712)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !52, line: 324, size: 704, elements: !2713)
!2713 = !{!2714, !2718, !2722, !2726, !2727, !2728, !2729, !2730, !2735, !2740, !2744}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2712, file: !52, line: 325, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!109, !2650}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2712, file: !52, line: 326, baseType: !2719, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!2650, !1291, !109}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2712, file: !52, line: 327, baseType: !2723, size: 64, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{null, !2650}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2712, file: !52, line: 328, baseType: !2715, size: 64, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2712, file: !52, line: 329, baseType: !2715, size: 64, offset: 256)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2712, file: !52, line: 330, baseType: !2715, size: 64, offset: 320)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2712, file: !52, line: 331, baseType: !2606, size: 64, offset: 384)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2712, file: !52, line: 334, baseType: !2731, size: 64, offset: 448)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!2734, !1086}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2712, file: !52, line: 335, baseType: !2736, size: 64, offset: 512)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!109, !1086, !2739}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2712, file: !52, line: 337, baseType: !2741, size: 64, offset: 576)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!109, !1086, !2734}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2712, file: !52, line: 339, baseType: !2745, size: 64, offset: 640)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!109, !1291, !2748}
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1292, file: !47, line: 1199, baseType: !2750, size: 64, offset: 512)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2752)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !52, line: 430, size: 704, elements: !2753)
!2753 = !{!2754, !2758, !2759, !2763, !2764, !2765, !2780, !2803, !2807, !2808, !2831}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2752, file: !52, line: 431, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!109, !1291, !109, !109, !1208}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2752, file: !52, line: 432, baseType: !2606, size: 64, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2752, file: !52, line: 433, baseType: !2760, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!109, !1291, !7}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2752, file: !52, line: 434, baseType: !2760, size: 64, offset: 192)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2752, file: !52, line: 435, baseType: !2606, size: 64, offset: 256)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2752, file: !52, line: 436, baseType: !2766, size: 64, offset: 320)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!109, !1291, !109, !2769}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !52, line: 417, size: 256, elements: !2771)
!2771 = !{!2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2770, file: !52, line: 418, baseType: !109, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2770, file: !52, line: 419, baseType: !7, size: 32, offset: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2770, file: !52, line: 420, baseType: !7, size: 32, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2770, file: !52, line: 422, baseType: !7, size: 32, offset: 96)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2770, file: !52, line: 423, baseType: !7, size: 32, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2770, file: !52, line: 424, baseType: !7, size: 32, offset: 160)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2770, file: !52, line: 425, baseType: !7, size: 32, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2770, file: !52, line: 426, baseType: !7, size: 32, offset: 224)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2752, file: !52, line: 437, baseType: !2781, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!109, !1291, !2662, !2784}
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !52, line: 345, size: 960, elements: !2786)
!2786 = !{!2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2785, file: !52, line: 346, baseType: !109, size: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2785, file: !52, line: 347, baseType: !338, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2785, file: !52, line: 348, baseType: !338, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2785, file: !52, line: 349, baseType: !338, size: 64, offset: 192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2785, file: !52, line: 350, baseType: !338, size: 64, offset: 256)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2785, file: !52, line: 351, baseType: !338, size: 64, offset: 320)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2785, file: !52, line: 352, baseType: !338, size: 64, offset: 384)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2785, file: !52, line: 353, baseType: !354, size: 64, offset: 448)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2785, file: !52, line: 355, baseType: !354, size: 64, offset: 512)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2785, file: !52, line: 356, baseType: !109, size: 32, offset: 576)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2785, file: !52, line: 357, baseType: !109, size: 32, offset: 608)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2785, file: !52, line: 358, baseType: !338, size: 64, offset: 640)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2785, file: !52, line: 359, baseType: !338, size: 64, offset: 704)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2785, file: !52, line: 360, baseType: !338, size: 64, offset: 768)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2785, file: !52, line: 361, baseType: !354, size: 64, offset: 832)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2785, file: !52, line: 362, baseType: !109, size: 32, offset: 896)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2752, file: !52, line: 438, baseType: !2804, size: 64, offset: 448)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!109, !1291, !2748, !2784}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2752, file: !52, line: 440, baseType: !2781, size: 64, offset: 512)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2752, file: !52, line: 441, baseType: !2809, size: 64, offset: 576)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!109, !1291, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !52, line: 411, size: 1408, elements: !2814)
!2814 = !{!2815, !2816}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2813, file: !52, line: 412, baseType: !7, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2813, file: !52, line: 413, baseType: !2817, size: 1344, offset: 64)
!2817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2818, size: 1344, elements: !721)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !52, line: 397, size: 448, elements: !2819)
!2819 = !{!2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2830}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2818, file: !52, line: 398, baseType: !7, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2818, file: !52, line: 399, baseType: !7, size: 32, offset: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2818, file: !52, line: 401, baseType: !7, size: 32, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2818, file: !52, line: 402, baseType: !7, size: 32, offset: 96)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2818, file: !52, line: 403, baseType: !7, size: 32, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2818, file: !52, line: 404, baseType: !7, size: 32, offset: 160)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2818, file: !52, line: 405, baseType: !7, size: 32, offset: 192)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2818, file: !52, line: 406, baseType: !340, size: 64, offset: 256)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2818, file: !52, line: 407, baseType: !2829, size: 64, offset: 320)
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !284, line: 132, baseType: !338)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2818, file: !52, line: 408, baseType: !2829, size: 64, offset: 384)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2752, file: !52, line: 442, baseType: !2760, size: 64, offset: 640)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1292, file: !47, line: 1200, baseType: !2833, size: 64, offset: 576)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2835)
!2835 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !47, line: 54, flags: DIFlagFwdDecl)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1292, file: !47, line: 1201, baseType: !257, size: 64, offset: 640)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1292, file: !47, line: 1202, baseType: !257, size: 64, offset: 704)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1292, file: !47, line: 1203, baseType: !257, size: 64, offset: 768)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1292, file: !47, line: 1204, baseType: !1051, size: 64, offset: 832)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1292, file: !47, line: 1205, baseType: !872, size: 320, offset: 896)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1292, file: !47, line: 1206, baseType: !109, size: 32, offset: 1216)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1292, file: !47, line: 1207, baseType: !283, size: 32, offset: 1248)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1292, file: !47, line: 1209, baseType: !256, size: 64, offset: 1280)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1292, file: !47, line: 1211, baseType: !2845, size: 64, offset: 1344)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2848)
!2848 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !47, line: 1211, flags: DIFlagFwdDecl)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1292, file: !47, line: 1223, baseType: !2850, size: 64, offset: 1408)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1063, line: 34, size: 64, elements: !2851)
!2851 = !{!2852}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2850, file: !1063, line: 35, baseType: !1066, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1292, file: !47, line: 1224, baseType: !343, size: 128, offset: 1472)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1292, file: !47, line: 1225, baseType: !2855, size: 64, offset: 1600)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !47, line: 1225, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1292, file: !47, line: 1226, baseType: !2858, size: 64, offset: 1664)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !47, line: 1226, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1292, file: !47, line: 1227, baseType: !2861, size: 64, offset: 1728)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !47, line: 50, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1292, file: !47, line: 1228, baseType: !2864, size: 64, offset: 1792)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !47, line: 1228, flags: DIFlagFwdDecl)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1292, file: !47, line: 1229, baseType: !737, size: 128, offset: 1856)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1292, file: !47, line: 1230, baseType: !7, size: 32, offset: 1984)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1292, file: !47, line: 1231, baseType: !2869, size: 2496, offset: 2048)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !52, line: 521, size: 2496, elements: !2870)
!2870 = !{!2871, !2872, !2873, !2875, !2907}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2869, file: !52, line: 522, baseType: !7, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2869, file: !52, line: 523, baseType: !872, size: 320, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2869, file: !52, line: 524, baseType: !2874, size: 192, offset: 384)
!2874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1086, size: 192, elements: !721)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2869, file: !52, line: 525, baseType: !2876, size: 1728, offset: 576)
!2876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2877, size: 1728, elements: !721)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !52, line: 222, size: 576, elements: !2878)
!2878 = !{!2879, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2877, file: !52, line: 223, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !52, line: 445, size: 256, elements: !2882)
!2882 = !{!2883, !2884, !2897, !2898}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2881, file: !52, line: 446, baseType: !109, size: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2881, file: !52, line: 447, baseType: !2885, size: 64, offset: 64)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2887)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !52, line: 312, size: 512, elements: !2888)
!2888 = !{!2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2887, file: !52, line: 313, baseType: !2606, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2887, file: !52, line: 314, baseType: !2606, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2887, file: !52, line: 315, baseType: !2606, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2887, file: !52, line: 316, baseType: !2606, size: 64, offset: 192)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2887, file: !52, line: 317, baseType: !2715, size: 64, offset: 256)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2887, file: !52, line: 318, baseType: !2715, size: 64, offset: 320)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2887, file: !52, line: 319, baseType: !2715, size: 64, offset: 384)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2887, file: !52, line: 320, baseType: !2745, size: 64, offset: 448)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2881, file: !52, line: 448, baseType: !1324, size: 64, offset: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2881, file: !52, line: 449, baseType: !2880, size: 64, offset: 192)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2877, file: !52, line: 224, baseType: !109, size: 32, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2877, file: !52, line: 226, baseType: !343, size: 128, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2877, file: !52, line: 227, baseType: !257, size: 64, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2877, file: !52, line: 228, baseType: !7, size: 32, offset: 320)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2877, file: !52, line: 229, baseType: !7, size: 32, offset: 352)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2877, file: !52, line: 230, baseType: !2683, size: 64, offset: 384)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2877, file: !52, line: 231, baseType: !2683, size: 64, offset: 448)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2877, file: !52, line: 232, baseType: !256, size: 64, offset: 512)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2869, file: !52, line: 526, baseType: !2908, size: 192, offset: 2304)
!2908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2885, size: 192, elements: !721)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1292, file: !47, line: 1233, baseType: !2910, size: 2368, offset: 4544)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !47, line: 1184, size: 2368, elements: !2911)
!2911 = !{!2912, !2913, !2914}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2910, file: !47, line: 1185, baseType: !309, size: 16)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2910, file: !47, line: 1186, baseType: !309, size: 16, offset: 16)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2910, file: !47, line: 1187, baseType: !2915, size: 2304, offset: 64)
!2915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2916, size: 2304, elements: !721)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2917, line: 12, size: 768, elements: !2918)
!2917 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2918 = !{!2919, !2927, !2928, !2933, !2934}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2916, file: !2917, line: 13, baseType: !2920, size: 384)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2921, line: 17, size: 384, elements: !2922)
!2921 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2922 = !{!2923, !2924, !2925, !2926}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2920, file: !2921, line: 18, baseType: !109, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2920, file: !2921, line: 19, baseType: !109, size: 32, offset: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2920, file: !2921, line: 20, baseType: !746, size: 192, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2920, file: !2921, line: 22, baseType: !663, size: 128, align: 64, offset: 256)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2916, file: !2917, line: 14, baseType: !2296, size: 64, offset: 384)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2916, file: !2917, line: 15, baseType: !2929, size: 64, offset: 448)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2930, line: 16, size: 64, elements: !2931)
!2930 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2931 = !{!2932}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2929, file: !2930, line: 17, baseType: !259, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2916, file: !2917, line: 16, baseType: !746, size: 192, offset: 512)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2916, file: !2917, line: 17, baseType: !283, size: 32, offset: 704)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1292, file: !47, line: 1240, baseType: !256, size: 64, offset: 6912)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1292, file: !47, line: 1243, baseType: !270, size: 32, offset: 6976)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1292, file: !47, line: 1245, baseType: !888, size: 64, offset: 7040)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1292, file: !47, line: 1246, baseType: !888, size: 64, offset: 7104)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1292, file: !47, line: 1248, baseType: !272, size: 32, offset: 7168)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1292, file: !47, line: 1249, baseType: !2941, size: 64, offset: 7232)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !47, line: 634, flags: DIFlagFwdDecl)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1292, file: !47, line: 1252, baseType: !2944, size: 256, offset: 7296)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 256, elements: !2945)
!2945 = !{!2946}
!2946 = !DISubrange(count: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1292, file: !47, line: 1253, baseType: !2948, size: 128, offset: 7552)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2949, line: 21, baseType: !2950)
!2949 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2949, line: 19, size: 128, elements: !2951)
!2951 = !{!2952}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2950, file: !2949, line: 20, baseType: !2953, size: 128)
!2953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 128, elements: !2954)
!2954 = !{!2955}
!2955 = !DISubrange(count: 16)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1292, file: !47, line: 1255, baseType: !7, size: 32, offset: 7680)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1292, file: !47, line: 1261, baseType: !683, size: 256, offset: 7744)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1292, file: !47, line: 1267, baseType: !935, size: 64, offset: 8000)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1292, file: !47, line: 1269, baseType: !2960, size: 64, offset: 8064)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2962)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1053, line: 128, size: 1024, align: 512, elements: !2963)
!2963 = !{!2964, !2968, !2969, !2976, !2982, !2986, !2990, !2994, !2995, !2999, !3003, !3008, !3012}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2962, file: !1053, line: 129, baseType: !2965, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!109, !1051, !7}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2962, file: !1053, line: 130, baseType: !2965, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2962, file: !1053, line: 131, baseType: !2970, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!109, !2973, !2975}
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2962, file: !1053, line: 132, baseType: !2977, size: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!109, !2973, !7, !935, !2980}
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1071)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2962, file: !1053, line: 134, baseType: !2983, size: 64, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!109, !2973}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2962, file: !1053, line: 135, baseType: !2987, size: 64, offset: 320)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!109, !1051}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2962, file: !1053, line: 136, baseType: !2991, size: 64, offset: 384)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{null, !1051}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2962, file: !1053, line: 137, baseType: !2991, size: 64, offset: 448)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2962, file: !1053, line: 138, baseType: !2996, size: 64, offset: 512)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{null, !1051, !1086}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2962, file: !1053, line: 139, baseType: !3000, size: 64, offset: 576)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!945, !1051, !945, !109}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2962, file: !1053, line: 140, baseType: !3004, size: 64, offset: 640)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!1046, !3007}
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2962, file: !1053, line: 141, baseType: !3009, size: 64, offset: 704)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!109, !1208, !932}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2962, file: !1053, line: 142, baseType: !3013, size: 64, offset: 768)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!1051, !1051, !3016}
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1087)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1292, file: !47, line: 1271, baseType: !3019, size: 448, offset: 8128)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2698, line: 63, size: 448, elements: !3020)
!3020 = !{!3021, !3026, !3027, !3028, !3029, !3030, !3031}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3019, file: !2698, line: 64, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!257, !3025, !2696}
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3019, file: !2698, line: 66, baseType: !3022, size: 64, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3019, file: !2698, line: 69, baseType: !255, size: 64, offset: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3019, file: !2698, line: 70, baseType: !109, size: 32, offset: 192)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3019, file: !2698, line: 71, baseType: !7, size: 32, offset: 224)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3019, file: !2698, line: 74, baseType: !343, size: 128, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3019, file: !2698, line: 85, baseType: !3032, size: 64, offset: 384)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1292, file: !47, line: 1274, baseType: !676, size: 64, offset: 8576)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1292, file: !47, line: 1280, baseType: !676, size: 64, offset: 8640)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1292, file: !47, line: 1283, baseType: !109, size: 32, offset: 8704)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1292, file: !47, line: 1286, baseType: !1988, size: 32, offset: 8736)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1292, file: !47, line: 1289, baseType: !2519, size: 64, offset: 8768)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1292, file: !47, line: 1290, baseType: !733, size: 64, offset: 8832)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1292, file: !47, line: 1297, baseType: !790, size: 64, offset: 8896)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1292, file: !47, line: 1304, baseType: !3041, size: 64, offset: 8960)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3042, line: 49, size: 64, elements: !3043)
!3042 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3043 = !{!3044}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3041, file: !3042, line: 50, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3042, line: 41, size: 512, align: 512, elements: !3047)
!3047 = !{!3048, !3049, !3054}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3046, file: !3042, line: 43, baseType: !637, size: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3046, file: !3042, line: 45, baseType: !3050, size: 192, offset: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3042, line: 29, size: 192, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3050, file: !3042, line: 30, baseType: !343, size: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3050, file: !3042, line: 32, baseType: !255, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3046, file: !3042, line: 46, baseType: !255, size: 64, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1292, file: !47, line: 1305, baseType: !3041, size: 64, offset: 9024)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1292, file: !47, line: 1306, baseType: !663, size: 128, align: 64, offset: 9088)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1292, file: !47, line: 1307, baseType: !2458, size: 256, offset: 9216)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1292, file: !47, line: 1309, baseType: !683, size: 256, offset: 9472)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1292, file: !47, line: 1314, baseType: !109, size: 32, offset: 9728)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1292, file: !47, line: 1317, baseType: !637, size: 32, align: 512, offset: 10240)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1292, file: !47, line: 1318, baseType: !343, size: 128, offset: 10304)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1292, file: !47, line: 1320, baseType: !637, size: 32, offset: 10432)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1292, file: !47, line: 1321, baseType: !343, size: 128, offset: 10496)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1087, file: !47, line: 656, baseType: !1441, size: 64, offset: 512)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1087, file: !47, line: 659, baseType: !256, size: 64, offset: 576)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1087, file: !47, line: 663, baseType: !257, size: 64, offset: 640)
!3067 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !47, line: 671, baseType: !3068, size: 32, offset: 704)
!3068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !47, line: 671, size: 32, elements: !3069)
!3069 = !{!3070, !3072}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3068, file: !47, line: 672, baseType: !3071, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3068, file: !47, line: 673, baseType: !7, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1087, file: !47, line: 675, baseType: !1161, size: 32, offset: 736)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1087, file: !47, line: 676, baseType: !695, size: 64, offset: 768)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1087, file: !47, line: 677, baseType: !1197, size: 128, offset: 832)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1087, file: !47, line: 678, baseType: !1197, size: 128, offset: 960)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1087, file: !47, line: 679, baseType: !1197, size: 128, offset: 1088)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1087, file: !47, line: 680, baseType: !637, size: 32, offset: 1216)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1087, file: !47, line: 681, baseType: !309, size: 16, offset: 1248)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1087, file: !47, line: 682, baseType: !453, size: 8, offset: 1264)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1087, file: !47, line: 683, baseType: !453, size: 8, offset: 1272)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1087, file: !47, line: 684, baseType: !2829, size: 64, offset: 1280)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1087, file: !47, line: 691, baseType: !257, size: 64, offset: 1344)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1087, file: !47, line: 692, baseType: !872, size: 320, offset: 1408)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1087, file: !47, line: 694, baseType: !257, size: 64, offset: 1728)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1087, file: !47, line: 695, baseType: !257, size: 64, offset: 1792)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1087, file: !47, line: 697, baseType: !737, size: 128, offset: 1856)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1087, file: !47, line: 698, baseType: !343, size: 128, offset: 1984)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1087, file: !47, line: 707, baseType: !343, size: 128, offset: 2112)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1087, file: !47, line: 708, baseType: !343, size: 128, offset: 2240)
!3091 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !47, line: 709, baseType: !3092, size: 128, offset: 2368)
!3092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !47, line: 709, size: 128, elements: !3093)
!3093 = !{!3094, !3095}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3092, file: !47, line: 710, baseType: !733, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3092, file: !47, line: 711, baseType: !663, size: 128, align: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1087, file: !47, line: 713, baseType: !678, size: 64, offset: 2496)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1087, file: !47, line: 714, baseType: !678, size: 64, offset: 2560)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1087, file: !47, line: 715, baseType: !283, size: 32, offset: 2624)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1087, file: !47, line: 716, baseType: !283, size: 32, offset: 2656)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1087, file: !47, line: 717, baseType: !283, size: 32, offset: 2688)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1087, file: !47, line: 719, baseType: !283, size: 32, offset: 2720)
!3102 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !47, line: 721, baseType: !3103, size: 64, offset: 2752)
!3103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !47, line: 721, size: 64, elements: !3104)
!3104 = !{!3105, !3231}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3103, file: !47, line: 722, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3108)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !47, line: 1914, size: 2112, elements: !3109)
!3109 = !{!3110, !3111, !3115, !3119, !3123, !3124, !3125, !3131, !3144, !3148, !3152, !3153, !3157, !3158, !3162, !3167, !3168, !3172, !3176, !3182, !3183, !3187, !3188, !3194, !3198, !3199, !3204, !3208, !3212, !3216, !3220, !3221, !3227}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3108, file: !47, line: 1915, baseType: !1324, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3108, file: !47, line: 1916, baseType: !3112, size: 64, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!695, !655, !695, !109}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3108, file: !47, line: 1917, baseType: !3116, size: 64, offset: 128)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!1239, !655, !945, !1242, !2114}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3108, file: !47, line: 1918, baseType: !3120, size: 64, offset: 192)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!1239, !655, !935, !1242, !2114}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3108, file: !47, line: 1919, baseType: !1872, size: 64, offset: 256)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3108, file: !47, line: 1920, baseType: !1872, size: 64, offset: 320)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3108, file: !47, line: 1921, baseType: !3126, size: 64, offset: 384)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!109, !1875, !3129, !7}
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !47, line: 53, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3108, file: !47, line: 1923, baseType: !3132, size: 64, offset: 448)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!109, !655, !3135}
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !47, line: 1858, size: 128, elements: !3137)
!3137 = !{!3138, !3143}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3136, file: !47, line: 1859, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !47, line: 1855, baseType: !3140)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!932, !3135, !935, !109, !695, !338, !7}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3136, file: !47, line: 1860, baseType: !695, size: 64, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3108, file: !47, line: 1924, baseType: !3145, size: 64, offset: 512)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!2161, !655, !2163}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3108, file: !47, line: 1925, baseType: !3149, size: 64, offset: 576)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!255, !655, !7, !257}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3108, file: !47, line: 1926, baseType: !3149, size: 64, offset: 640)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3108, file: !47, line: 1927, baseType: !3154, size: 64, offset: 704)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!109, !655, !1581}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3108, file: !47, line: 1928, baseType: !257, size: 64, offset: 768)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3108, file: !47, line: 1929, baseType: !3159, size: 64, offset: 832)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!109, !1086, !655}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3108, file: !47, line: 1930, baseType: !3163, size: 64, offset: 896)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!109, !655, !3166}
!3166 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !47, line: 1061, baseType: !256)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3108, file: !47, line: 1931, baseType: !3159, size: 64, offset: 960)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3108, file: !47, line: 1932, baseType: !3169, size: 64, offset: 1024)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!109, !655, !695, !695, !109}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3108, file: !47, line: 1933, baseType: !3173, size: 64, offset: 1088)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!109, !109, !655, !109}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3108, file: !47, line: 1934, baseType: !3177, size: 64, offset: 1152)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!109, !655, !109, !3180}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !47, line: 1063, flags: DIFlagFwdDecl)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3108, file: !47, line: 1935, baseType: !652, size: 64, offset: 1216)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3108, file: !47, line: 1936, baseType: !3184, size: 64, offset: 1280)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!109, !109}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3108, file: !47, line: 1937, baseType: !3177, size: 64, offset: 1344)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3108, file: !47, line: 1938, baseType: !3189, size: 64, offset: 1408)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!1239, !3192, !655, !2114, !1242, !7}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !261, line: 59, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3108, file: !47, line: 1939, baseType: !3195, size: 64, offset: 1472)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!1239, !655, !2114, !3192, !1242, !7}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3108, file: !47, line: 1940, baseType: !1978, size: 64, offset: 1536)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3108, file: !47, line: 1941, baseType: !3200, size: 64, offset: 1600)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!109, !655, !109, !3203, !1849}
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3108, file: !47, line: 1942, baseType: !3205, size: 64, offset: 1664)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!255, !655, !109, !695, !695}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3108, file: !47, line: 1944, baseType: !3209, size: 64, offset: 1728)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !2093, !655}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3108, file: !47, line: 1948, baseType: !3213, size: 64, offset: 1792)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!1239, !655, !695, !655, !695, !1242, !7}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3108, file: !47, line: 1950, baseType: !3217, size: 64, offset: 1856)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!695, !655, !695, !655, !695, !695, !7}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3108, file: !47, line: 1953, baseType: !3169, size: 64, offset: 1920)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3108, file: !47, line: 1954, baseType: !3222, size: 64, offset: 1984)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!109, !3225, !7}
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !47, line: 1911, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3108, file: !47, line: 1955, baseType: !3228, size: 64, offset: 2048)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!109, !3225, !3129, !7}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3103, file: !47, line: 723, baseType: !2587, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1087, file: !47, line: 725, baseType: !3233, size: 64, offset: 2816)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !47, line: 725, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1087, file: !47, line: 726, baseType: !1442, size: 1536, align: 64, offset: 2880)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1087, file: !47, line: 727, baseType: !343, size: 128, offset: 4416)
!3237 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !47, line: 728, baseType: !3238, size: 64, offset: 4544)
!3238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !47, line: 728, size: 64, elements: !3239)
!3239 = !{!3240, !3241, !3244, !3245}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3238, file: !47, line: 729, baseType: !3192, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3238, file: !47, line: 730, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !47, line: 730, flags: DIFlagFwdDecl)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3238, file: !47, line: 731, baseType: !945, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3238, file: !47, line: 732, baseType: !7, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1087, file: !47, line: 735, baseType: !272, size: 32, offset: 4608)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1087, file: !47, line: 738, baseType: !272, size: 32, offset: 4640)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1087, file: !47, line: 739, baseType: !2941, size: 64, offset: 4672)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1087, file: !47, line: 750, baseType: !256, size: 64, offset: 4736)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1052, file: !1053, line: 91, baseType: !3251, size: 256, offset: 448)
!3251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 256, elements: !2945)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1052, file: !1053, line: 94, baseType: !3253, size: 64, offset: 704)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3254, line: 25, size: 64, elements: !3255)
!3254 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3255 = !{!3256}
!3256 = !DIDerivedType(tag: DW_TAG_member, scope: !3253, file: !3254, line: 26, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3253, file: !3254, line: 26, size: 64, elements: !3258)
!3258 = !{!3259, !3260}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3257, file: !3254, line: 28, baseType: !339, size: 64, align: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, scope: !3257, file: !3254, line: 30, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3257, file: !3254, line: 30, size: 64, elements: !3262)
!3262 = !{!3263, !3264}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3261, file: !3254, line: 31, baseType: !637, size: 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3261, file: !3254, line: 32, baseType: !109, size: 32, offset: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1052, file: !1053, line: 95, baseType: !2960, size: 64, offset: 768)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1052, file: !1053, line: 96, baseType: !1291, size: 64, offset: 832)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1052, file: !1053, line: 97, baseType: !257, size: 64, offset: 896)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1052, file: !1053, line: 98, baseType: !256, size: 64, offset: 960)
!3269 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !1053, line: 100, baseType: !3270, size: 128, offset: 1024)
!3270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1052, file: !1053, line: 100, size: 128, elements: !3271)
!3271 = !{!3272, !3273}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3270, file: !1053, line: 101, baseType: !343, size: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3270, file: !1053, line: 102, baseType: !2172, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1052, file: !1053, line: 104, baseType: !343, size: 128, offset: 1152)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1052, file: !1053, line: 105, baseType: !343, size: 128, offset: 1280)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1052, file: !1053, line: 113, baseType: !3277, size: 128, offset: 1408)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1052, file: !1053, line: 109, size: 128, elements: !3278)
!3278 = !{!3279, !3280, !3281}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3277, file: !1053, line: 110, baseType: !737, size: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3277, file: !1053, line: 111, baseType: !1062, size: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3277, file: !1053, line: 112, baseType: !663, size: 128, align: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1047, file: !1048, line: 72, baseType: !1291, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1047, file: !1048, line: 73, baseType: !109, size: 32, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1047, file: !1048, line: 74, baseType: !1126, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1042, file: !1043, line: 10, baseType: !1051, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !656, file: !47, line: 1015, baseType: !1086, size: 64, offset: 1344)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !656, file: !47, line: 1016, baseType: !3106, size: 64, offset: 1408)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !656, file: !47, line: 1018, baseType: !338, size: 64, offset: 1472)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !656, file: !47, line: 1020, baseType: !256, size: 64, offset: 1536)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !656, file: !47, line: 1023, baseType: !256, size: 64, offset: 1600)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !656, file: !47, line: 1027, baseType: !3292, size: 64, offset: 1664)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !656, file: !47, line: 1029, baseType: !1441, size: 64, offset: 1728)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !656, file: !47, line: 1030, baseType: !1988, size: 32, offset: 1792)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !656, file: !47, line: 1031, baseType: !1988, size: 32, offset: 1824)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !623, file: !25, line: 756, baseType: !257, size: 64, offset: 704)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !623, file: !25, line: 757, baseType: !257, size: 64, offset: 768)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !623, file: !25, line: 760, baseType: !257, size: 64, offset: 832)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !623, file: !25, line: 761, baseType: !257, size: 64, offset: 896)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !623, file: !25, line: 763, baseType: !257, size: 64, offset: 960)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !623, file: !25, line: 764, baseType: !3302, size: 64, offset: 1024)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1596, line: 299, baseType: !3304)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1596, line: 299, size: 64, elements: !3305)
!3305 = !{!3306}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3304, file: !1596, line: 299, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1601, line: 18, baseType: !257)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !623, file: !25, line: 773, baseType: !283, size: 32, offset: 1088)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !623, file: !25, line: 785, baseType: !283, size: 32, offset: 1120)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !623, file: !25, line: 795, baseType: !3311, size: 64, offset: 1152)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !25, line: 726, size: 128, elements: !3313)
!3313 = !{!3314, !3315}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3312, file: !25, line: 727, baseType: !338, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3312, file: !25, line: 728, baseType: !109, size: 32, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !623, file: !25, line: 801, baseType: !257, size: 64, offset: 1216)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !623, file: !25, line: 804, baseType: !676, size: 64, offset: 1280)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !623, file: !25, line: 806, baseType: !109, size: 32, offset: 1344)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !623, file: !25, line: 808, baseType: !637, size: 32, offset: 1376)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !623, file: !25, line: 823, baseType: !872, size: 320, offset: 1408)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !623, file: !25, line: 825, baseType: !343, size: 128, offset: 1728)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !623, file: !25, line: 845, baseType: !109, size: 32, offset: 1856)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !623, file: !25, line: 849, baseType: !257, size: 64, offset: 1920)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !623, file: !25, line: 850, baseType: !257, size: 64, offset: 1984)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !623, file: !25, line: 852, baseType: !257, size: 64, offset: 2048)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !623, file: !25, line: 853, baseType: !257, size: 64, offset: 2112)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !623, file: !25, line: 854, baseType: !678, size: 64, offset: 2176)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !623, file: !25, line: 855, baseType: !257, size: 64, offset: 2240)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !623, file: !25, line: 856, baseType: !257, size: 64, offset: 2304)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !623, file: !25, line: 857, baseType: !257, size: 64, offset: 2368)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !623, file: !25, line: 858, baseType: !257, size: 64, offset: 2432)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !623, file: !25, line: 865, baseType: !493, size: 32, offset: 2496)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !623, file: !25, line: 867, baseType: !637, size: 32, offset: 2528)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !623, file: !25, line: 869, baseType: !257, size: 64, offset: 2560)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !623, file: !25, line: 869, baseType: !257, size: 64, offset: 2624)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !623, file: !25, line: 869, baseType: !257, size: 64, offset: 2688)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !623, file: !25, line: 869, baseType: !257, size: 64, offset: 2752)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !623, file: !25, line: 870, baseType: !257, size: 64, offset: 2816)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !623, file: !25, line: 870, baseType: !257, size: 64, offset: 2880)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !623, file: !25, line: 870, baseType: !257, size: 64, offset: 2944)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !623, file: !25, line: 871, baseType: !257, size: 64, offset: 3008)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !623, file: !25, line: 871, baseType: !257, size: 64, offset: 3072)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !623, file: !25, line: 871, baseType: !257, size: 64, offset: 3136)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !623, file: !25, line: 871, baseType: !257, size: 64, offset: 3200)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !623, file: !25, line: 873, baseType: !3346, size: 3328, offset: 3264)
!3346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 3328, elements: !3347)
!3347 = !{!3348}
!3348 = !DISubrange(count: 52)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !623, file: !25, line: 875, baseType: !3350, size: 1280, offset: 6592)
!3350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 1280, elements: !742)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !623, file: !25, line: 877, baseType: !3352, size: 64, offset: 7872)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !25, line: 877, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !623, file: !25, line: 880, baseType: !3355, size: 1088, offset: 7936)
!3355 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3356, line: 72, baseType: !3357)
!3356 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3356, line: 23, size: 1088, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3366, !3367, !3368, !3369, !3394, !3395, !3396}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3357, file: !3356, line: 28, baseType: !338, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3357, file: !3356, line: 38, baseType: !678, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3357, file: !3356, line: 40, baseType: !257, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3357, file: !3356, line: 43, baseType: !872, size: 320, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3357, file: !3356, line: 44, baseType: !3364, size: 64, offset: 512)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3356, line: 44, flags: DIFlagFwdDecl)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3357, file: !3356, line: 48, baseType: !257, size: 64, offset: 576)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3357, file: !3356, line: 59, baseType: !683, size: 256, offset: 640)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3357, file: !3356, line: 60, baseType: !256, size: 64, offset: 896)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3357, file: !3356, line: 61, baseType: !3370, size: 64, offset: 960)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3372)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3373, line: 13, size: 1216, elements: !3374)
!3373 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3372, file: !3373, line: 14, baseType: !256, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3372, file: !3373, line: 15, baseType: !257, size: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3372, file: !3373, line: 17, baseType: !257, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3372, file: !3373, line: 17, baseType: !257, size: 64, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3372, file: !3373, line: 18, baseType: !257, size: 64, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3372, file: !3373, line: 18, baseType: !257, size: 64, offset: 320)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3372, file: !3373, line: 19, baseType: !2027, size: 64, offset: 384)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3372, file: !3373, line: 21, baseType: !255, size: 64, offset: 448)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3372, file: !3373, line: 23, baseType: !255, size: 64, offset: 512)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3372, file: !3373, line: 24, baseType: !255, size: 64, offset: 576)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3372, file: !3373, line: 25, baseType: !255, size: 64, offset: 640)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3372, file: !3373, line: 26, baseType: !255, size: 64, offset: 704)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3372, file: !3373, line: 27, baseType: !255, size: 64, offset: 768)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3372, file: !3373, line: 28, baseType: !255, size: 64, offset: 832)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3372, file: !3373, line: 29, baseType: !255, size: 64, offset: 896)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3372, file: !3373, line: 30, baseType: !255, size: 64, offset: 960)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3372, file: !3373, line: 31, baseType: !255, size: 64, offset: 1024)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3372, file: !3373, line: 32, baseType: !255, size: 64, offset: 1088)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3372, file: !3373, line: 33, baseType: !255, size: 64, offset: 1152)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3357, file: !3356, line: 63, baseType: !283, size: 32, offset: 1024)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3357, file: !3356, line: 69, baseType: !307, size: 16, offset: 1056)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3357, file: !3356, line: 70, baseType: !2351, size: 16, offset: 1072)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !25, line: 882, baseType: !257, size: 64, offset: 9024)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !623, file: !25, line: 885, baseType: !637, size: 32, offset: 9088)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !623, file: !25, line: 886, baseType: !3400, size: 64, offset: 9152)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !25, line: 732, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !623, file: !25, line: 901, baseType: !790, size: 64, offset: 9216)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !623, file: !25, line: 904, baseType: !655, size: 64, offset: 9280)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !623, file: !25, line: 906, baseType: !3405, size: 64, offset: 9344)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !25, line: 906, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !623, file: !25, line: 930, baseType: !283, size: 32, offset: 9408)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !623, file: !25, line: 933, baseType: !283, size: 32, offset: 9440)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !623, file: !25, line: 935, baseType: !3410, size: 64, offset: 9472)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !73, line: 103, size: 64, elements: !3411)
!3411 = !{!3412}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3410, file: !73, line: 104, baseType: !3413, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !73, line: 101, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !623, file: !25, line: 940, baseType: !676, size: 64, offset: 9536)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !623, file: !25, line: 942, baseType: !2458, size: 256, offset: 9600)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !620, file: !25, line: 986, baseType: !3418, offset: 10240)
!3418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, elements: !810)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !260, file: !261, line: 882, baseType: !619, size: 64, offset: 9792)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !260, file: !261, line: 884, baseType: !109, size: 32, offset: 9856)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !260, file: !261, line: 885, baseType: !109, size: 32, offset: 9888)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !260, file: !261, line: 886, baseType: !109, size: 32, offset: 9920)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !260, file: !261, line: 888, baseType: !109, size: 32, offset: 9952)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !260, file: !261, line: 890, baseType: !257, size: 64, offset: 9984)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !260, file: !261, line: 893, baseType: !7, size: 32, offset: 10048)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !260, file: !261, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !260, file: !261, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !260, file: !261, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !260, file: !261, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !260, file: !261, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !260, file: !261, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !260, file: !261, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !260, file: !261, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !260, file: !261, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !260, file: !261, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !260, file: !261, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !260, file: !261, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !260, file: !261, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !260, file: !261, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !260, file: !261, line: 969, baseType: !257, size: 64, offset: 10176)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !260, file: !261, line: 971, baseType: !3442, size: 448, offset: 10240)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !3443)
!3443 = !{!3444, !3445, !3450}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3442, file: !12, line: 26, baseType: !257, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3442, file: !12, line: 27, baseType: !3446, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!255, !3449}
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, scope: !3442, file: !12, line: 28, baseType: !3451, size: 320, offset: 128)
!3451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3442, file: !12, line: 28, size: 320, elements: !3452)
!3452 = !{!3453, !3463, !3488}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3451, file: !12, line: 37, baseType: !3454, size: 320)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3451, file: !12, line: 30, size: 320, elements: !3455)
!3455 = !{!3456, !3458, !3459, !3460, !3461, !3462}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3454, file: !12, line: 31, baseType: !3457, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3454, file: !12, line: 32, baseType: !270, size: 32, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3454, file: !12, line: 33, baseType: !270, size: 32, offset: 96)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3454, file: !12, line: 34, baseType: !270, size: 32, offset: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3454, file: !12, line: 35, baseType: !338, size: 64, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3454, file: !12, line: 36, baseType: !3457, size: 64, offset: 256)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3451, file: !12, line: 47, baseType: !3464, size: 192)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3451, file: !12, line: 39, size: 192, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3487}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3464, file: !12, line: 40, baseType: !484, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3464, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, scope: !3464, file: !12, line: 42, baseType: !3469, size: 64, offset: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3464, file: !12, line: 42, size: 64, elements: !3470)
!3470 = !{!3471, !3479}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3469, file: !12, line: 43, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3474, line: 7, size: 128, elements: !3475)
!3474 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3475 = !{!3476, !3478}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3473, file: !3474, line: 8, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !486, line: 93, baseType: !356)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3473, file: !3474, line: 9, baseType: !356, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3469, file: !12, line: 44, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3482, line: 7, size: 64, elements: !3483)
!3482 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3483 = !{!3484, !3486}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3481, file: !3482, line: 8, baseType: !3485, size: 32)
!3485 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3482, line: 5, baseType: !864)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3481, file: !3482, line: 9, baseType: !864, size: 32, offset: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3464, file: !12, line: 46, baseType: !338, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3451, file: !12, line: 55, baseType: !3489, size: 256)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3451, file: !12, line: 49, size: 256, elements: !3490)
!3490 = !{!3491, !3499, !3500, !3501, !3502}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3489, file: !12, line: 50, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3494, line: 36, size: 64, elements: !3495)
!3494 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3495 = !{!3496, !3497, !3498}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3493, file: !3494, line: 37, baseType: !109, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3493, file: !3494, line: 38, baseType: !900, size: 16, offset: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3493, file: !3494, line: 39, baseType: !900, size: 16, offset: 48)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3489, file: !12, line: 51, baseType: !109, size: 32, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3489, file: !12, line: 52, baseType: !109, size: 32, offset: 96)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3489, file: !12, line: 53, baseType: !257, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3489, file: !12, line: 54, baseType: !257, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !260, file: !261, line: 973, baseType: !3504, size: 32, offset: 10688)
!3504 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !284, line: 27, baseType: !3505)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !486, line: 28, baseType: !109)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !260, file: !261, line: 974, baseType: !3504, size: 32, offset: 10720)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !260, file: !261, line: 978, baseType: !257, size: 64, offset: 10752)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !260, file: !261, line: 987, baseType: !259, size: 64, offset: 10816)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !260, file: !261, line: 990, baseType: !259, size: 64, offset: 10880)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !260, file: !261, line: 995, baseType: !343, size: 128, offset: 10944)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !260, file: !261, line: 996, baseType: !343, size: 128, offset: 11072)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !260, file: !261, line: 997, baseType: !259, size: 64, offset: 11200)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !260, file: !261, line: 1005, baseType: !343, size: 128, offset: 11264)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !260, file: !261, line: 1006, baseType: !343, size: 128, offset: 11392)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !260, file: !261, line: 1009, baseType: !725, size: 64, offset: 11520)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !260, file: !261, line: 1010, baseType: !3517, size: 512, offset: 11584)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 512, elements: !742)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !260, file: !261, line: 1011, baseType: !343, size: 128, offset: 12096)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !260, file: !261, line: 1012, baseType: !343, size: 128, offset: 12224)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !260, file: !261, line: 1014, baseType: !2207, size: 64, offset: 12352)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !260, file: !261, line: 1017, baseType: !2344, size: 64, offset: 12416)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !260, file: !261, line: 1020, baseType: !2344, size: 64, offset: 12480)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !260, file: !261, line: 1023, baseType: !256, size: 64, offset: 12544)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !260, file: !261, line: 1025, baseType: !338, size: 64, offset: 12608)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !260, file: !261, line: 1026, baseType: !338, size: 64, offset: 12672)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !260, file: !261, line: 1031, baseType: !338, size: 64, offset: 12736)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !260, file: !261, line: 1032, baseType: !3528, size: 192, offset: 12800)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !261, line: 324, size: 192, elements: !3529)
!3529 = !{!3530, !3531, !3532}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3528, file: !261, line: 326, baseType: !338, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3528, file: !261, line: 327, baseType: !338, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3528, file: !261, line: 328, baseType: !436, size: 32, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !260, file: !261, line: 1041, baseType: !257, size: 64, offset: 12992)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !260, file: !261, line: 1042, baseType: !257, size: 64, offset: 13056)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !260, file: !261, line: 1045, baseType: !338, size: 64, offset: 13120)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !260, file: !261, line: 1048, baseType: !338, size: 64, offset: 13184)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !260, file: !261, line: 1051, baseType: !257, size: 64, offset: 13248)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !260, file: !261, line: 1052, baseType: !257, size: 64, offset: 13312)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !260, file: !261, line: 1055, baseType: !3540, size: 640, offset: 13376)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3541, line: 132, size: 640, elements: !3542)
!3541 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3542 = !{!3543, !3549, !3550}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3540, file: !3541, line: 133, baseType: !3544, size: 576)
!3544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3545, size: 576, elements: !721)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3541, line: 117, size: 192, elements: !3546)
!3546 = !{!3547, !3548}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3545, file: !3541, line: 118, baseType: !338, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3545, file: !3541, line: 119, baseType: !499, size: 128, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3540, file: !3541, line: 134, baseType: !7, size: 32, offset: 576)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3540, file: !3541, line: 135, baseType: !7, size: 32, offset: 608)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !260, file: !261, line: 1058, baseType: !3552, size: 448, offset: 14016)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3541, line: 144, size: 448, elements: !3553)
!3553 = !{!3554, !3555, !3556}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3552, file: !3541, line: 145, baseType: !663, size: 128, align: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3552, file: !3541, line: 146, baseType: !683, size: 256, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3552, file: !3541, line: 147, baseType: !7, size: 32, offset: 384)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !260, file: !261, line: 1064, baseType: !823, size: 64, offset: 14464)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !260, file: !261, line: 1067, baseType: !823, size: 64, offset: 14528)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !260, file: !261, line: 1070, baseType: !823, size: 64, offset: 14592)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !260, file: !261, line: 1074, baseType: !856, size: 64, offset: 14656)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !260, file: !261, line: 1084, baseType: !3562, size: 128, offset: 14720)
!3562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 128, elements: !2954)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !260, file: !261, line: 1086, baseType: !3564, size: 64, offset: 14848)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !261, line: 55, flags: DIFlagFwdDecl)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !260, file: !261, line: 1089, baseType: !3567, size: 64, offset: 14912)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3568, line: 12, size: 64, elements: !3569)
!3568 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3569 = !{!3570}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3567, file: !3568, line: 13, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3568, line: 8, flags: DIFlagFwdDecl)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !260, file: !261, line: 1090, baseType: !3574, size: 128, offset: 14976)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3575, line: 13, size: 128, elements: !3576)
!3575 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3576 = !{!3577}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3574, file: !3575, line: 14, baseType: !343, size: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !260, file: !261, line: 1097, baseType: !3579, size: 64, offset: 15104)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !261, line: 50, flags: DIFlagFwdDecl)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !260, file: !261, line: 1100, baseType: !3582, size: 64, offset: 15168)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !261, line: 1100, flags: DIFlagFwdDecl)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !260, file: !261, line: 1103, baseType: !3585, size: 64, offset: 15232)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !261, line: 53, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !260, file: !261, line: 1107, baseType: !3588, size: 64, offset: 15296)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3590, line: 31, size: 576, elements: !3591)
!3590 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3591 = !{!3592, !3593, !3596, !3599, !3602, !3603, !3606, !3609, !3610}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3589, file: !3590, line: 32, baseType: !278, size: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3589, file: !3590, line: 33, baseType: !3594, size: 64, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3590, line: 9, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3589, file: !3590, line: 34, baseType: !3597, size: 64, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3590, line: 10, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3589, file: !3590, line: 35, baseType: !3600, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3590, line: 8, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3589, file: !3590, line: 36, baseType: !759, size: 64, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3589, file: !3590, line: 37, baseType: !3604, size: 64, offset: 320)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !858, line: 34, flags: DIFlagFwdDecl)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3589, file: !3590, line: 38, baseType: !3607, size: 64, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3590, line: 38, flags: DIFlagFwdDecl)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3589, file: !3590, line: 39, baseType: !3607, size: 64, offset: 448)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3589, file: !3590, line: 40, baseType: !3611, size: 64, offset: 512)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3590, line: 12, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !260, file: !261, line: 1110, baseType: !3614, size: 64, offset: 15360)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3616, line: 93, size: 8768, elements: !3617)
!3616 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3665, !3674, !3675, !3677, !3678, !3679, !3682, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3720, !3721, !3728, !3738, !3741, !3742, !3745, !3746, !3747, !3748, !3749, !3750}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3615, file: !3616, line: 94, baseType: !278, size: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3615, file: !3616, line: 95, baseType: !283, size: 32, offset: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3615, file: !3616, line: 96, baseType: !109, size: 32, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3615, file: !3616, line: 97, baseType: !109, size: 32, offset: 96)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3615, file: !3616, line: 98, baseType: !343, size: 128, offset: 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3615, file: !3616, line: 100, baseType: !746, size: 192, offset: 256)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3615, file: !3616, line: 103, baseType: !259, size: 64, offset: 448)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3615, file: !3616, line: 106, baseType: !3626, size: 192, offset: 512)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !796, line: 32, size: 192, elements: !3627)
!3627 = !{!3628, !3629}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3626, file: !796, line: 33, baseType: !343, size: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3626, file: !796, line: 34, baseType: !3630, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3631, line: 25, baseType: !3632)
!3631 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3631, line: 23, size: 64, elements: !3633)
!3633 = !{!3634}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3632, file: !3631, line: 24, baseType: !570, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3615, file: !3616, line: 109, baseType: !733, size: 64, offset: 704)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3615, file: !3616, line: 112, baseType: !109, size: 32, offset: 768)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3615, file: !3616, line: 114, baseType: !109, size: 32, offset: 800)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3615, file: !3616, line: 115, baseType: !259, size: 64, offset: 832)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3615, file: !3616, line: 118, baseType: !109, size: 32, offset: 896)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3615, file: !3616, line: 119, baseType: !7, size: 32, offset: 928)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3615, file: !3616, line: 121, baseType: !3642, size: 64, offset: 960)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3616, line: 80, size: 448, elements: !3644)
!3644 = !{!3645, !3646, !3652}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3643, file: !3616, line: 81, baseType: !283, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3643, file: !3616, line: 82, baseType: !3647, size: 128, offset: 64)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3616, line: 75, size: 128, elements: !3648)
!3648 = !{!3649, !3650}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3647, file: !3616, line: 76, baseType: !259, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3647, file: !3616, line: 77, baseType: !3651, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3643, file: !3616, line: 83, baseType: !1546, size: 256, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3615, file: !3616, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3615, file: !3616, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3615, file: !3616, line: 138, baseType: !7, size: 32, offset: 1056)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3615, file: !3616, line: 139, baseType: !343, size: 128, offset: 1088)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3615, file: !3616, line: 142, baseType: !411, size: 512, offset: 1216)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3615, file: !3616, line: 143, baseType: !419, size: 64, offset: 1728)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3615, file: !3616, line: 150, baseType: !3660, size: 256, offset: 1792)
!3660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3661, size: 256, elements: !2334)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3616, line: 38, size: 128, elements: !3662)
!3662 = !{!3663, !3664}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3661, file: !3616, line: 39, baseType: !338, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3661, file: !3616, line: 40, baseType: !338, size: 64, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3615, file: !3616, line: 156, baseType: !3666, size: 192, offset: 2048)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3616, line: 66, size: 192, elements: !3667)
!3667 = !{!3668}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3666, file: !3616, line: 67, baseType: !3669, size: 192)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3616, line: 47, size: 192, elements: !3670)
!3670 = !{!3671, !3672, !3673}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3669, file: !3616, line: 48, baseType: !678, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3669, file: !3616, line: 49, baseType: !678, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3669, file: !3616, line: 50, baseType: !678, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3615, file: !3616, line: 160, baseType: !3540, size: 640, offset: 2240)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3615, file: !3616, line: 163, baseType: !3676, size: 256, offset: 2880)
!3676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 256, elements: !742)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3615, file: !3616, line: 169, baseType: !725, size: 64, offset: 3136)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3615, file: !3616, line: 172, baseType: !109, size: 32, offset: 3200)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3615, file: !3616, line: 174, baseType: !3680, size: 64, offset: 3264)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3616, line: 174, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3615, file: !3616, line: 185, baseType: !3683, size: 64, offset: 3328)
!3683 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !489, line: 860, baseType: !3684)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 853, size: 64, elements: !3685)
!3685 = !{!3686, !3687}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3684, file: !489, line: 858, baseType: !1057, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3684, file: !489, line: 859, baseType: !637, size: 32, offset: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3615, file: !3616, line: 186, baseType: !338, size: 64, offset: 3392)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3615, file: !3616, line: 186, baseType: !338, size: 64, offset: 3456)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3615, file: !3616, line: 186, baseType: !338, size: 64, offset: 3520)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3615, file: !3616, line: 186, baseType: !338, size: 64, offset: 3584)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3615, file: !3616, line: 187, baseType: !338, size: 64, offset: 3648)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3615, file: !3616, line: 188, baseType: !338, size: 64, offset: 3712)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3615, file: !3616, line: 189, baseType: !3528, size: 192, offset: 3776)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3615, file: !3616, line: 190, baseType: !257, size: 64, offset: 3968)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3615, file: !3616, line: 190, baseType: !257, size: 64, offset: 4032)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3615, file: !3616, line: 190, baseType: !257, size: 64, offset: 4096)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3615, file: !3616, line: 190, baseType: !257, size: 64, offset: 4160)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3615, file: !3616, line: 191, baseType: !257, size: 64, offset: 4224)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3615, file: !3616, line: 191, baseType: !257, size: 64, offset: 4288)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3615, file: !3616, line: 191, baseType: !257, size: 64, offset: 4352)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3615, file: !3616, line: 191, baseType: !257, size: 64, offset: 4416)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3615, file: !3616, line: 192, baseType: !257, size: 64, offset: 4480)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3615, file: !3616, line: 192, baseType: !257, size: 64, offset: 4544)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3615, file: !3616, line: 192, baseType: !257, size: 64, offset: 4608)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3615, file: !3616, line: 192, baseType: !257, size: 64, offset: 4672)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3615, file: !3616, line: 193, baseType: !257, size: 64, offset: 4736)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3615, file: !3616, line: 193, baseType: !257, size: 64, offset: 4800)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3615, file: !3616, line: 194, baseType: !3710, size: 448, offset: 4864)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3711, line: 12, size: 448, elements: !3712)
!3711 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3712 = !{!3713, !3714, !3715, !3716, !3717, !3718, !3719}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3710, file: !3711, line: 15, baseType: !338, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3710, file: !3711, line: 17, baseType: !338, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3710, file: !3711, line: 19, baseType: !338, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3710, file: !3711, line: 21, baseType: !338, size: 64, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3710, file: !3711, line: 29, baseType: !338, size: 64, offset: 256)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3710, file: !3711, line: 35, baseType: !338, size: 64, offset: 320)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3710, file: !3711, line: 44, baseType: !338, size: 64, offset: 384)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3615, file: !3616, line: 202, baseType: !340, size: 64, offset: 5312)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3615, file: !3616, line: 213, baseType: !3722, size: 2048, offset: 5376)
!3722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3723, size: 2048, elements: !2954)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3724, line: 43, size: 128, elements: !3725)
!3724 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3725 = !{!3726, !3727}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3723, file: !3724, line: 44, baseType: !1244, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3723, file: !3724, line: 45, baseType: !1244, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3615, file: !3616, line: 216, baseType: !3729, size: 448, offset: 7424)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3616, line: 30, size: 448, elements: !3730)
!3730 = !{!3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3729, file: !3616, line: 31, baseType: !109, size: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3729, file: !3616, line: 32, baseType: !255, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3729, file: !3616, line: 33, baseType: !257, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3729, file: !3616, line: 34, baseType: !338, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3729, file: !3616, line: 34, baseType: !338, size: 64, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3729, file: !3616, line: 35, baseType: !257, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3729, file: !3616, line: 35, baseType: !257, size: 64, offset: 384)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3615, file: !3616, line: 219, baseType: !3739, size: 64, offset: 7872)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3616, line: 219, flags: DIFlagFwdDecl)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3615, file: !3616, line: 222, baseType: !7, size: 32, offset: 7936)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3615, file: !3616, line: 223, baseType: !3743, size: 64, offset: 8000)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3616, line: 223, flags: DIFlagFwdDecl)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3615, file: !3616, line: 230, baseType: !932, size: 8, offset: 8064)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3615, file: !3616, line: 231, baseType: !900, size: 16, offset: 8080)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3615, file: !3616, line: 232, baseType: !900, size: 16, offset: 8096)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3615, file: !3616, line: 234, baseType: !619, size: 64, offset: 8128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3615, file: !3616, line: 237, baseType: !683, size: 256, offset: 8192)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3615, file: !3616, line: 243, baseType: !872, size: 320, offset: 8448)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !260, file: !261, line: 1111, baseType: !3752, size: 64, offset: 15424)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3616, line: 20, size: 16640, elements: !3754)
!3754 = !{!3755, !3756, !3757, !3758}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3753, file: !3616, line: 21, baseType: !637, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3753, file: !3616, line: 22, baseType: !278, size: 32, offset: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3753, file: !3616, line: 23, baseType: !746, size: 192, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3753, file: !3616, line: 24, baseType: !3759, size: 16384, offset: 256)
!3759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3760, size: 16384, elements: !1380)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !796, line: 51, size: 256, elements: !3761)
!3761 = !{!3762}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3760, file: !796, line: 52, baseType: !3763, size: 256)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !796, line: 37, size: 256, elements: !3764)
!3764 = !{!3765, !3772, !3773, !3777}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3763, file: !796, line: 39, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3767, line: 83, baseType: !3768)
!3767 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3767, line: 82, baseType: !3770)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{null, !109}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3763, file: !796, line: 40, baseType: !257, size: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3763, file: !796, line: 46, baseType: !3774, size: 64, offset: 128)
!3774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3767, line: 86, baseType: !3775)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3767, line: 85, baseType: !2562)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3763, file: !796, line: 48, baseType: !3630, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !260, file: !261, line: 1112, baseType: !3630, size: 64, offset: 15488)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !260, file: !261, line: 1113, baseType: !3630, size: 64, offset: 15552)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !260, file: !261, line: 1115, baseType: !3630, size: 64, offset: 15616)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !260, file: !261, line: 1116, baseType: !3626, size: 192, offset: 15680)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !260, file: !261, line: 1117, baseType: !257, size: 64, offset: 15872)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !260, file: !261, line: 1118, baseType: !1242, size: 64, offset: 15936)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !260, file: !261, line: 1119, baseType: !7, size: 32, offset: 16000)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !260, file: !261, line: 1121, baseType: !666, size: 64, offset: 16064)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !260, file: !261, line: 1125, baseType: !3787, size: 64, offset: 16128)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !261, line: 43, flags: DIFlagFwdDecl)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !260, file: !261, line: 1127, baseType: !814, size: 32, offset: 16192)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !260, file: !261, line: 1128, baseType: !7, size: 32, offset: 16224)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !260, file: !261, line: 1130, baseType: !3792, size: 128, offset: 16256)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3793, line: 37, size: 128, elements: !3794)
!3793 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3794 = !{!3795, !3796, !3797}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3792, file: !3793, line: 38, baseType: !109, size: 32)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3792, file: !3793, line: 39, baseType: !283, size: 32, offset: 32)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3792, file: !3793, line: 40, baseType: !3798, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3793, line: 24, flags: DIFlagFwdDecl)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !260, file: !261, line: 1131, baseType: !3801, size: 256, offset: 16384)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3802, line: 12, size: 256, elements: !3803)
!3802 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3803 = !{!3804, !3805, !3806, !3807}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3801, file: !3802, line: 13, baseType: !945, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3801, file: !3802, line: 14, baseType: !257, size: 64, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3801, file: !3802, line: 15, baseType: !257, size: 64, offset: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3801, file: !3802, line: 16, baseType: !932, size: 8, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !260, file: !261, line: 1134, baseType: !338, size: 64, offset: 16640)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !260, file: !261, line: 1135, baseType: !338, size: 64, offset: 16704)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !260, file: !261, line: 1138, baseType: !637, size: 32, offset: 16768)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !260, file: !261, line: 1141, baseType: !436, size: 32, offset: 16800)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !260, file: !261, line: 1143, baseType: !3813, size: 64, offset: 16832)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !261, line: 735, size: 64, elements: !3814)
!3814 = !{!3815}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3813, file: !261, line: 736, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !260, file: !261, line: 1147, baseType: !502, size: 128, offset: 16896)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !260, file: !261, line: 1149, baseType: !259, size: 64, offset: 17024)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !260, file: !261, line: 1151, baseType: !3820, size: 64, offset: 17088)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !261, line: 1151, flags: DIFlagFwdDecl)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !260, file: !261, line: 1188, baseType: !256, size: 64, offset: 17152)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !260, file: !261, line: 1191, baseType: !3824, size: 64, offset: 17216)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !261, line: 44, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !260, file: !261, line: 1194, baseType: !3827, size: 64, offset: 17280)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !261, line: 45, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !260, file: !261, line: 1197, baseType: !3830, size: 64, offset: 17344)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !261, line: 61, flags: DIFlagFwdDecl)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !260, file: !261, line: 1199, baseType: !3833, size: 64, offset: 17408)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3835, line: 99, size: 128, elements: !3836)
!3835 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3836 = !{!3837, !3838, !3839}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3834, file: !3835, line: 100, baseType: !676, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3834, file: !3835, line: 101, baseType: !283, size: 32, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3834, file: !3835, line: 103, baseType: !309, size: 16, offset: 96)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !260, file: !261, line: 1202, baseType: !3841, size: 64, offset: 17472)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !261, line: 48, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !260, file: !261, line: 1205, baseType: !257, size: 64, offset: 17536)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !260, file: !261, line: 1206, baseType: !3845, size: 64, offset: 17600)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !796, line: 14, baseType: !3847)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !796, line: 12, size: 384, elements: !3848)
!3848 = !{!3849}
!3849 = !DIDerivedType(tag: DW_TAG_member, scope: !3847, file: !796, line: 13, baseType: !3850, size: 384)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3847, file: !796, line: 13, size: 384, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3850, file: !796, line: 13, baseType: !109, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3850, file: !796, line: 13, baseType: !109, size: 32, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3850, file: !796, line: 13, baseType: !109, size: 32, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3850, file: !796, line: 13, baseType: !3856, size: 256, offset: 128)
!3856 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3857, line: 37, size: 256, elements: !3858)
!3857 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3858 = !{!3859, !3864, !3877, !3883, !3892, !3919, !3924}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3856, file: !3857, line: 42, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3856, file: !3857, line: 39, size: 64, elements: !3861)
!3861 = !{!3862, !3863}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3860, file: !3857, line: 40, baseType: !3505, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3860, file: !3857, line: 41, baseType: !819, size: 32, offset: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3856, file: !3857, line: 50, baseType: !3865, size: 192)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3856, file: !3857, line: 45, size: 192, elements: !3866)
!3866 = !{!3867, !3869, !3870, !3876}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3865, file: !3857, line: 46, baseType: !3868, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !486, line: 95, baseType: !109)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3865, file: !3857, line: 47, baseType: !109, size: 32, offset: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3865, file: !3857, line: 48, baseType: !3871, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3857, line: 11, baseType: !3872)
!3872 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3857, line: 8, size: 64, elements: !3873)
!3873 = !{!3874, !3875}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3872, file: !3857, line: 9, baseType: !109, size: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3872, file: !3857, line: 10, baseType: !256, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3865, file: !3857, line: 49, baseType: !109, size: 32, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3856, file: !3857, line: 57, baseType: !3878, size: 128)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3856, file: !3857, line: 53, size: 128, elements: !3879)
!3879 = !{!3880, !3881, !3882}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3878, file: !3857, line: 54, baseType: !3505, size: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3878, file: !3857, line: 55, baseType: !819, size: 32, offset: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3878, file: !3857, line: 56, baseType: !3871, size: 64, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3856, file: !3857, line: 66, baseType: !3884, size: 256)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3856, file: !3857, line: 60, size: 256, elements: !3885)
!3885 = !{!3886, !3887, !3888, !3889, !3891}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3884, file: !3857, line: 61, baseType: !3505, size: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3884, file: !3857, line: 62, baseType: !819, size: 32, offset: 32)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3884, file: !3857, line: 63, baseType: !109, size: 32, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3884, file: !3857, line: 64, baseType: !3890, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !486, line: 94, baseType: !1241)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3884, file: !3857, line: 65, baseType: !3890, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3856, file: !3857, line: 105, baseType: !3893, size: 256)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3856, file: !3857, line: 69, size: 256, elements: !3894)
!3894 = !{!3895, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3893, file: !3857, line: 70, baseType: !256, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, scope: !3893, file: !3857, line: 79, baseType: !3897, size: 192, offset: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3893, file: !3857, line: 79, size: 192, elements: !3898)
!3898 = !{!3899, !3900, !3901, !3908, !3913}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3897, file: !3857, line: 81, baseType: !109, size: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3897, file: !3857, line: 86, baseType: !900, size: 16)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3897, file: !3857, line: 92, baseType: !3902, size: 192)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3897, file: !3857, line: 88, size: 192, elements: !3903)
!3903 = !{!3904, !3906, !3907}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3902, file: !3857, line: 89, baseType: !3905, size: 64)
!3905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 64, elements: !480)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3902, file: !3857, line: 90, baseType: !256, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3902, file: !3857, line: 91, baseType: !256, size: 64, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3897, file: !3857, line: 97, baseType: !3909, size: 96)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3897, file: !3857, line: 94, size: 96, elements: !3910)
!3910 = !{!3911, !3912}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3909, file: !3857, line: 95, baseType: !3905, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3909, file: !3857, line: 96, baseType: !272, size: 32, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3897, file: !3857, line: 103, baseType: !3914, size: 128)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3897, file: !3857, line: 99, size: 128, elements: !3915)
!3915 = !{!3916, !3917, !3918}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3914, file: !3857, line: 100, baseType: !257, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3914, file: !3857, line: 101, baseType: !272, size: 32, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3914, file: !3857, line: 102, baseType: !272, size: 32, offset: 96)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3856, file: !3857, line: 111, baseType: !3920, size: 128)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3856, file: !3857, line: 108, size: 128, elements: !3921)
!3921 = !{!3922, !3923}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3920, file: !3857, line: 109, baseType: !255, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3920, file: !3857, line: 110, baseType: !109, size: 32, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3856, file: !3857, line: 118, baseType: !3925, size: 128)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3856, file: !3857, line: 114, size: 128, elements: !3926)
!3926 = !{!3927, !3928, !3929}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3925, file: !3857, line: 115, baseType: !256, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3925, file: !3857, line: 116, baseType: !109, size: 32, offset: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3925, file: !3857, line: 117, baseType: !7, size: 32, offset: 96)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !260, file: !261, line: 1208, baseType: !3710, size: 448, offset: 17664)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !260, file: !261, line: 1215, baseType: !338, size: 64, offset: 18112)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !260, file: !261, line: 1217, baseType: !338, size: 64, offset: 18176)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !260, file: !261, line: 1219, baseType: !338, size: 64, offset: 18240)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !260, file: !261, line: 1223, baseType: !3935, size: 64, offset: 18304)
!3935 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3936, line: 99, baseType: !3937)
!3936 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3936, line: 99, size: 64, elements: !3938)
!3938 = !{!3939}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3937, file: !3936, line: 99, baseType: !570, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !260, file: !261, line: 1225, baseType: !1057, size: 32, offset: 18368)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !260, file: !261, line: 1226, baseType: !109, size: 32, offset: 18400)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !260, file: !261, line: 1227, baseType: !109, size: 32, offset: 18432)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !260, file: !261, line: 1231, baseType: !3944, size: 64, offset: 18496)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !261, line: 1231, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !260, file: !261, line: 1233, baseType: !343, size: 128, offset: 18560)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !260, file: !261, line: 1240, baseType: !3948, size: 64, offset: 18688)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !261, line: 62, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !260, file: !261, line: 1242, baseType: !3951, size: 64, offset: 18752)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3953, line: 392, size: 96, elements: !3954)
!3953 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3954 = !{!3955, !3961, !3963}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3952, file: !3953, line: 393, baseType: !3956, size: 32)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3953, line: 388, size: 32, elements: !3957)
!3957 = !{!3958}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3956, file: !3953, line: 389, baseType: !3959, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3960, line: 46, baseType: !270)
!3960 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3952, file: !3953, line: 394, baseType: !3962, size: 32, offset: 32)
!3962 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3960, line: 42, baseType: !864)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3952, file: !3953, line: 395, baseType: !3959, size: 32, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !260, file: !261, line: 1244, baseType: !343, size: 128, offset: 18816)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !260, file: !261, line: 1245, baseType: !3966, size: 64, offset: 18944)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !261, line: 51, flags: DIFlagFwdDecl)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !260, file: !261, line: 1246, baseType: !683, size: 256, offset: 19008)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !260, file: !261, line: 1247, baseType: !7, size: 32, offset: 19264)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !260, file: !261, line: 1250, baseType: !3971, size: 64, offset: 19328)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !261, line: 57, flags: DIFlagFwdDecl)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !260, file: !261, line: 1251, baseType: !683, size: 256, offset: 19392)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !260, file: !261, line: 1252, baseType: !343, size: 128, offset: 19648)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !260, file: !261, line: 1259, baseType: !1674, size: 64, offset: 19776)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !260, file: !261, line: 1260, baseType: !900, size: 16, offset: 19840)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !260, file: !261, line: 1261, baseType: !900, size: 16, offset: 19856)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !260, file: !261, line: 1314, baseType: !3979, size: 64, offset: 19904)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3981, line: 62, size: 256, align: 256, elements: !3982)
!3981 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3982 = !{!3983, !3984, !3985, !3986, !3987, !3988, !3989}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3980, file: !3981, line: 75, baseType: !272, size: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3980, file: !3981, line: 90, baseType: !272, size: 32, offset: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3980, file: !3981, line: 112, baseType: !339, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3980, file: !3981, line: 132, baseType: !272, size: 32, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3980, file: !3981, line: 140, baseType: !272, size: 32, offset: 160)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3980, file: !3981, line: 149, baseType: !272, size: 32, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3980, file: !3981, line: 154, baseType: !3990, offset: 224)
!3990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, elements: !810)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !260, file: !261, line: 1315, baseType: !270, size: 32, offset: 19968)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !260, file: !261, line: 1316, baseType: !270, size: 32, offset: 20000)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !260, file: !261, line: 1321, baseType: !257, size: 64, offset: 20032)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !260, file: !261, line: 1325, baseType: !109, size: 32, offset: 20096)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !260, file: !261, line: 1326, baseType: !109, size: 32, offset: 20128)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !260, file: !261, line: 1327, baseType: !109, size: 32, offset: 20160)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !260, file: !261, line: 1328, baseType: !109, size: 32, offset: 20192)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !260, file: !261, line: 1329, baseType: !663, size: 128, align: 64, offset: 20224)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !260, file: !261, line: 1332, baseType: !4000, size: 128, offset: 20352)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4001, line: 51, size: 128, elements: !4002)
!4001 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4002 = !{!4003, !4008, !4009}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4000, file: !4001, line: 60, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4005, line: 7, size: 64, elements: !4006)
!4005 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4006 = !{!4007}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4004, file: !4005, line: 12, baseType: !567, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4000, file: !4001, line: 63, baseType: !932, size: 8, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4000, file: !4001, line: 70, baseType: !932, size: 8, offset: 72)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !260, file: !261, line: 1335, baseType: !3192, size: 64, offset: 20480)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !260, file: !261, line: 1337, baseType: !4012, size: 128, offset: 20544)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4001, line: 39, size: 128, elements: !4013)
!4013 = !{!4014, !4015, !4016}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4012, file: !4001, line: 40, baseType: !1461, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4012, file: !4001, line: 42, baseType: !272, size: 32, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4012, file: !4001, line: 43, baseType: !272, size: 32, offset: 96)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !260, file: !261, line: 1340, baseType: !4018, size: 64, offset: 20672)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !261, line: 69, flags: DIFlagFwdDecl)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !260, file: !261, line: 1351, baseType: !109, size: 32, offset: 20736)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !260, file: !261, line: 1352, baseType: !109, size: 32, offset: 20768)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !260, file: !261, line: 1354, baseType: !257, size: 64, offset: 20800)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !260, file: !261, line: 1364, baseType: !338, size: 64, offset: 20864)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !260, file: !261, line: 1365, baseType: !338, size: 64, offset: 20928)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !260, file: !261, line: 1412, baseType: !257, size: 64, offset: 20992)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !260, file: !261, line: 1453, baseType: !4027, size: 64, offset: 21056)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !261, line: 1453, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !260, file: !261, line: 1457, baseType: !4030, size: 64, offset: 21120)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !73, line: 61, size: 576, elements: !4032)
!4032 = !{!4033, !4034, !4053, !4056, !4057, !4090, !4100}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4031, file: !73, line: 62, baseType: !72, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, scope: !4031, file: !73, line: 64, baseType: !4035, size: 192, offset: 64)
!4035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4031, file: !73, line: 64, size: 192, elements: !4036)
!4036 = !{!4037, !4048}
!4037 = !DIDerivedType(tag: DW_TAG_member, scope: !4035, file: !73, line: 65, baseType: !4038, size: 192)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4035, file: !73, line: 65, size: 192, elements: !4039)
!4039 = !{!4040, !4047}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4038, file: !73, line: 66, baseType: !4041, size: 128)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4042, line: 50, size: 128, elements: !4043)
!4042 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4043 = !{!4044, !4045, !4046}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4041, file: !4042, line: 52, baseType: !257, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4041, file: !4042, line: 54, baseType: !7, size: 32, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4041, file: !4042, line: 55, baseType: !7, size: 32, offset: 96)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4038, file: !73, line: 67, baseType: !257, size: 64, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_member, scope: !4035, file: !73, line: 70, baseType: !4049, size: 192)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4035, file: !73, line: 70, size: 192, elements: !4050)
!4050 = !{!4051, !4052}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4049, file: !73, line: 71, baseType: !663, size: 128, align: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4049, file: !73, line: 72, baseType: !257, size: 64, offset: 128)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4031, file: !73, line: 76, baseType: !4054, size: 64, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !73, line: 76, flags: DIFlagFwdDecl)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4031, file: !73, line: 77, baseType: !257, size: 64, offset: 320)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4031, file: !73, line: 79, baseType: !4058, size: 64, offset: 384)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4042, line: 25, size: 256, elements: !4060)
!4060 = !{!4061, !4067, !4071}
!4061 = !DIDerivedType(tag: DW_TAG_member, scope: !4059, file: !4042, line: 26, baseType: !4062, size: 128)
!4062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4059, file: !4042, line: 26, size: 128, elements: !4063)
!4063 = !{!4064, !4066}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4062, file: !4042, line: 27, baseType: !4065, size: 128)
!4065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 128, elements: !2954)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4062, file: !4042, line: 28, baseType: !4065, size: 128)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4059, file: !4042, line: 31, baseType: !4068, size: 64, offset: 128)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4070)
!4070 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4042, line: 23, flags: DIFlagFwdDecl)
!4071 = !DIDerivedType(tag: DW_TAG_member, scope: !4059, file: !4042, line: 33, baseType: !4072, size: 64, offset: 192)
!4072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4059, file: !4042, line: 33, size: 64, elements: !4073)
!4073 = !{!4074, !4080, !4085}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4072, file: !4042, line: 38, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4072, file: !4042, line: 34, size: 64, elements: !4076)
!4076 = !{!4077, !4078, !4079}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4075, file: !4042, line: 35, baseType: !864, size: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4075, file: !4042, line: 36, baseType: !453, size: 8, offset: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4075, file: !4042, line: 37, baseType: !453, size: 8, offset: 40)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4072, file: !4042, line: 42, baseType: !4081, size: 16)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4072, file: !4042, line: 39, size: 16, elements: !4082)
!4082 = !{!4083, !4084}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4081, file: !4042, line: 40, baseType: !453, size: 8)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4081, file: !4042, line: 41, baseType: !453, size: 8, offset: 8)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4072, file: !4042, line: 46, baseType: !4086, size: 16)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4072, file: !4042, line: 43, size: 16, elements: !4087)
!4087 = !{!4088, !4089}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4086, file: !4042, line: 44, baseType: !453, size: 8)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4086, file: !4042, line: 45, baseType: !453, size: 8, offset: 8)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4031, file: !73, line: 81, baseType: !4091, size: 64, offset: 448)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !73, line: 85, size: 384, elements: !4093)
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4092, file: !73, line: 86, baseType: !4054, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4092, file: !73, line: 87, baseType: !257, size: 64, offset: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4092, file: !73, line: 88, baseType: !257, size: 64, offset: 128)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4092, file: !73, line: 89, baseType: !257, size: 64, offset: 192)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4092, file: !73, line: 90, baseType: !932, size: 8, offset: 256)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4092, file: !73, line: 92, baseType: !4091, size: 64, offset: 320)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4031, file: !73, line: 82, baseType: !7, size: 32, offset: 512)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !260, file: !261, line: 1463, baseType: !4102, offset: 21184)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !261, line: 739, elements: !648)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !260, file: !261, line: 1470, baseType: !663, size: 128, align: 64, offset: 21184)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !260, file: !261, line: 1471, baseType: !278, size: 32, offset: 21312)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !260, file: !261, line: 1472, baseType: !109, size: 32, offset: 21344)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !260, file: !261, line: 1474, baseType: !259, size: 64, offset: 21376)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !260, file: !261, line: 1475, baseType: !2446, size: 320, offset: 21440)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !260, file: !261, line: 1478, baseType: !4109, size: 64, offset: 21760)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4111, line: 49, size: 512, elements: !4112)
!4111 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4112 = !{!4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4122}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4110, file: !4111, line: 50, baseType: !4109, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4110, file: !4111, line: 51, baseType: !256, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4110, file: !4111, line: 52, baseType: !257, size: 64, offset: 128)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4110, file: !4111, line: 53, baseType: !257, size: 64, offset: 192)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4110, file: !4111, line: 54, baseType: !1848, size: 64, offset: 256)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4110, file: !4111, line: 56, baseType: !7, size: 32, offset: 320)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4110, file: !4111, line: 58, baseType: !7, size: 32, offset: 352)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4110, file: !4111, line: 59, baseType: !4121, size: 64, offset: 384)
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !284, line: 159, baseType: !338)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4110, file: !4111, line: 60, baseType: !2027, size: 64, offset: 448)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !260, file: !261, line: 1482, baseType: !278, size: 32, offset: 21824)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !260, file: !261, line: 1489, baseType: !256, size: 64, offset: 21888)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !260, file: !261, line: 1504, baseType: !256, size: 64, offset: 21952)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !260, file: !261, line: 1505, baseType: !339, size: 64, offset: 22016)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !260, file: !261, line: 1506, baseType: !338, size: 64, offset: 22080)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !260, file: !261, line: 1507, baseType: !339, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !260, file: !261, line: 1508, baseType: !339, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !260, file: !261, line: 1509, baseType: !339, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !260, file: !261, line: 1510, baseType: !663, size: 128, align: 64, offset: 22208)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !260, file: !261, line: 1511, baseType: !109, size: 32, offset: 22336)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !260, file: !261, line: 1515, baseType: !4134, size: 64, offset: 22400)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !297, line: 56, size: 64, elements: !4135)
!4135 = !{!4136}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4134, file: !297, line: 57, baseType: !300, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !260, file: !261, line: 1518, baseType: !4134, size: 64, offset: 22464)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !260, file: !261, line: 1528, baseType: !663, size: 128, align: 64, offset: 22528)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !260, file: !261, line: 1552, baseType: !4140, size: 35328, offset: 23040)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4141, line: 430, size: 35328, elements: !4142)
!4141 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4142 = !{!4143, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4172, !4173, !4174, !4175, !4176, !4177, !4180, !4181, !4182, !4183}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4140, file: !4141, line: 432, baseType: !4144, size: 192)
!4144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4145, size: 192, elements: !721)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4146, line: 16, size: 64, elements: !4147)
!4146 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4147 = !{!4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4145, file: !4146, line: 17, baseType: !307, size: 16)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4145, file: !4146, line: 18, baseType: !307, size: 16, offset: 16)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4145, file: !4146, line: 19, baseType: !307, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4145, file: !4146, line: 19, baseType: !307, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4145, file: !4146, line: 19, baseType: !307, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4145, file: !4146, line: 19, baseType: !307, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4145, file: !4146, line: 19, baseType: !307, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4145, file: !4146, line: 20, baseType: !307, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4145, file: !4146, line: 20, baseType: !307, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4145, file: !4146, line: 20, baseType: !307, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4145, file: !4146, line: 20, baseType: !307, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4145, file: !4146, line: 20, baseType: !307, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4145, file: !4146, line: 20, baseType: !307, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4140, file: !4141, line: 436, baseType: !257, size: 64, offset: 192)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4140, file: !4141, line: 440, baseType: !309, size: 16, offset: 256)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4140, file: !4141, line: 441, baseType: !309, size: 16, offset: 272)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4140, file: !4141, line: 442, baseType: !309, size: 16, offset: 288)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4140, file: !4141, line: 443, baseType: !309, size: 16, offset: 304)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4140, file: !4141, line: 447, baseType: !257, size: 64, offset: 320)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4140, file: !4141, line: 448, baseType: !257, size: 64, offset: 384)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4140, file: !4141, line: 459, baseType: !4169, size: 256, offset: 448)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4170, size: 256, elements: !742)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4141, line: 428, flags: DIFlagFwdDecl)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4140, file: !4141, line: 461, baseType: !257, size: 64, offset: 704)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4140, file: !4141, line: 463, baseType: !257, size: 64, offset: 768)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4140, file: !4141, line: 465, baseType: !257, size: 64, offset: 832)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4140, file: !4141, line: 466, baseType: !257, size: 64, offset: 896)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4140, file: !4141, line: 467, baseType: !257, size: 64, offset: 960)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4140, file: !4141, line: 473, baseType: !4178, size: 64, offset: 1024)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4141, line: 10, flags: DIFlagFwdDecl)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4140, file: !4141, line: 480, baseType: !257, size: 64, offset: 1088)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4140, file: !4141, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4140, file: !4141, line: 491, baseType: !270, size: 32, offset: 1184)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4140, file: !4141, line: 501, baseType: !4184, size: 33792, offset: 1536)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4185, line: 448, size: 33792, elements: !4186)
!4185 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4186 = !{!4187, !4188, !4189, !4351, !4352, !4358, !4359}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4184, file: !4185, line: 461, baseType: !7, size: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4184, file: !4185, line: 468, baseType: !257, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4184, file: !4185, line: 476, baseType: !4190, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4185, line: 356, size: 33280, align: 512, elements: !4192)
!4192 = !{!4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4191, file: !4185, line: 358, baseType: !7, size: 32)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4191, file: !4185, line: 361, baseType: !7, size: 32, offset: 32)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4191, file: !4185, line: 364, baseType: !338, size: 64, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4191, file: !4185, line: 367, baseType: !338, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4191, file: !4185, line: 370, baseType: !338, size: 64, offset: 192)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4191, file: !4185, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4191, file: !4185, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4191, file: !4185, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4191, file: !4185, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4191, file: !4185, line: 397, baseType: !4203, size: 32768, offset: 512)
!4203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4185, line: 348, size: 32768, elements: !4204)
!4204 = !{!4205, !4220, !4257, !4334, !4347}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4203, file: !4185, line: 349, baseType: !4206, size: 896)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4185, line: 12, size: 896, elements: !4207)
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4219}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4206, file: !4185, line: 13, baseType: !270, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4206, file: !4185, line: 14, baseType: !270, size: 32, offset: 32)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4206, file: !4185, line: 15, baseType: !270, size: 32, offset: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4206, file: !4185, line: 16, baseType: !270, size: 32, offset: 96)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4206, file: !4185, line: 17, baseType: !270, size: 32, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4206, file: !4185, line: 18, baseType: !270, size: 32, offset: 160)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4206, file: !4185, line: 19, baseType: !270, size: 32, offset: 192)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4206, file: !4185, line: 22, baseType: !4216, size: 640, offset: 224)
!4216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 640, elements: !4217)
!4217 = !{!4218}
!4218 = !DISubrange(count: 20)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4206, file: !4185, line: 25, baseType: !270, size: 32, offset: 864)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4203, file: !4185, line: 350, baseType: !4221, size: 4096, align: 128)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4185, line: 34, size: 4096, align: 128, elements: !4222)
!4222 = !{!4223, !4224, !4225, !4226, !4227, !4242, !4243, !4244, !4246, !4248, !4252}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4221, file: !4185, line: 35, baseType: !307, size: 16)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4221, file: !4185, line: 36, baseType: !307, size: 16, offset: 16)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4221, file: !4185, line: 37, baseType: !307, size: 16, offset: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4221, file: !4185, line: 38, baseType: !307, size: 16, offset: 48)
!4227 = !DIDerivedType(tag: DW_TAG_member, scope: !4221, file: !4185, line: 39, baseType: !4228, size: 128, offset: 64)
!4228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4221, file: !4185, line: 39, size: 128, elements: !4229)
!4229 = !{!4230, !4235}
!4230 = !DIDerivedType(tag: DW_TAG_member, scope: !4228, file: !4185, line: 40, baseType: !4231, size: 128)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4228, file: !4185, line: 40, size: 128, elements: !4232)
!4232 = !{!4233, !4234}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4231, file: !4185, line: 41, baseType: !338, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4231, file: !4185, line: 42, baseType: !338, size: 64, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, scope: !4228, file: !4185, line: 44, baseType: !4236, size: 128)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4228, file: !4185, line: 44, size: 128, elements: !4237)
!4237 = !{!4238, !4239, !4240, !4241}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4236, file: !4185, line: 45, baseType: !270, size: 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4236, file: !4185, line: 46, baseType: !270, size: 32, offset: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4236, file: !4185, line: 47, baseType: !270, size: 32, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4236, file: !4185, line: 48, baseType: !270, size: 32, offset: 96)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4221, file: !4185, line: 51, baseType: !270, size: 32, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4221, file: !4185, line: 52, baseType: !270, size: 32, offset: 224)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4221, file: !4185, line: 55, baseType: !4245, size: 1024, offset: 256)
!4245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 1024, elements: !2945)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4221, file: !4185, line: 58, baseType: !4247, size: 2048, offset: 1280)
!4247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 2048, elements: !1380)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4221, file: !4185, line: 60, baseType: !4249, size: 384, offset: 3328)
!4249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 384, elements: !4250)
!4250 = !{!4251}
!4251 = !DISubrange(count: 12)
!4252 = !DIDerivedType(tag: DW_TAG_member, scope: !4221, file: !4185, line: 62, baseType: !4253, size: 384, offset: 3712)
!4253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4221, file: !4185, line: 62, size: 384, elements: !4254)
!4254 = !{!4255, !4256}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4253, file: !4185, line: 63, baseType: !4249, size: 384)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4253, file: !4185, line: 64, baseType: !4249, size: 384)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4203, file: !4185, line: 351, baseType: !4258, size: 1088)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4185, line: 79, size: 1088, elements: !4259)
!4259 = !{!4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4333}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4258, file: !4185, line: 80, baseType: !270, size: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4258, file: !4185, line: 81, baseType: !270, size: 32, offset: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4258, file: !4185, line: 82, baseType: !270, size: 32, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4258, file: !4185, line: 83, baseType: !270, size: 32, offset: 96)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4258, file: !4185, line: 84, baseType: !270, size: 32, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4258, file: !4185, line: 85, baseType: !270, size: 32, offset: 160)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4258, file: !4185, line: 86, baseType: !270, size: 32, offset: 192)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4258, file: !4185, line: 88, baseType: !4216, size: 640, offset: 224)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4258, file: !4185, line: 89, baseType: !453, size: 8, offset: 864)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4258, file: !4185, line: 90, baseType: !453, size: 8, offset: 872)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4258, file: !4185, line: 91, baseType: !453, size: 8, offset: 880)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4258, file: !4185, line: 92, baseType: !453, size: 8, offset: 888)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4258, file: !4185, line: 93, baseType: !453, size: 8, offset: 896)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4258, file: !4185, line: 94, baseType: !453, size: 8, offset: 904)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4258, file: !4185, line: 95, baseType: !4275, size: 64, offset: 960)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4277, line: 11, size: 128, elements: !4278)
!4277 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4278 = !{!4279, !4280}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4276, file: !4277, line: 12, baseType: !255, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4276, file: !4277, line: 13, baseType: !4281, size: 64, offset: 64)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4283, line: 103, size: 1344, elements: !4284)
!4283 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4284 = !{!4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4313, !4314, !4315}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4282, file: !4283, line: 109, baseType: !257, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4282, file: !4283, line: 110, baseType: !257, size: 64, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4282, file: !4283, line: 111, baseType: !257, size: 64, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4282, file: !4283, line: 112, baseType: !257, size: 64, offset: 192)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4282, file: !4283, line: 113, baseType: !257, size: 64, offset: 256)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4282, file: !4283, line: 114, baseType: !257, size: 64, offset: 320)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4282, file: !4283, line: 117, baseType: !257, size: 64, offset: 384)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4282, file: !4283, line: 118, baseType: !257, size: 64, offset: 448)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4282, file: !4283, line: 119, baseType: !257, size: 64, offset: 512)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4282, file: !4283, line: 120, baseType: !257, size: 64, offset: 576)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4282, file: !4283, line: 121, baseType: !257, size: 64, offset: 640)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4282, file: !4283, line: 122, baseType: !257, size: 64, offset: 704)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4282, file: !4283, line: 123, baseType: !257, size: 64, offset: 768)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4282, file: !4283, line: 124, baseType: !257, size: 64, offset: 832)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4282, file: !4283, line: 125, baseType: !257, size: 64, offset: 896)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4282, file: !4283, line: 139, baseType: !257, size: 64, offset: 960)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4282, file: !4283, line: 142, baseType: !257, size: 64, offset: 1024)
!4302 = !DIDerivedType(tag: DW_TAG_member, scope: !4282, file: !4283, line: 144, baseType: !4303, size: 64, offset: 1088)
!4303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4282, file: !4283, line: 144, size: 64, elements: !4304)
!4304 = !{!4305, !4306, !4307}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4303, file: !4283, line: 146, baseType: !307, size: 16)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4303, file: !4283, line: 148, baseType: !338, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4303, file: !4283, line: 150, baseType: !4308, size: 64)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4283, line: 59, size: 64, elements: !4309)
!4309 = !{!4310, !4311, !4312}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4308, file: !4283, line: 61, baseType: !338, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4308, file: !4283, line: 63, baseType: !338, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4308, file: !4283, line: 65, baseType: !338, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4282, file: !4283, line: 153, baseType: !257, size: 64, offset: 1152)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4282, file: !4283, line: 154, baseType: !257, size: 64, offset: 1216)
!4315 = !DIDerivedType(tag: DW_TAG_member, scope: !4282, file: !4283, line: 156, baseType: !4316, size: 64, offset: 1280)
!4316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4282, file: !4283, line: 156, size: 64, elements: !4317)
!4317 = !{!4318, !4319, !4320}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4316, file: !4283, line: 158, baseType: !307, size: 16)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4316, file: !4283, line: 160, baseType: !338, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4316, file: !4283, line: 162, baseType: !4321, size: 64)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4283, line: 69, size: 64, elements: !4322)
!4322 = !{!4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4321, file: !4283, line: 71, baseType: !338, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4321, file: !4283, line: 73, baseType: !338, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4321, file: !4283, line: 75, baseType: !338, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4321, file: !4283, line: 77, baseType: !338, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4321, file: !4283, line: 80, baseType: !338, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4321, file: !4283, line: 83, baseType: !338, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4321, file: !4283, line: 86, baseType: !338, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4321, file: !4283, line: 88, baseType: !338, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4321, file: !4283, line: 93, baseType: !338, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4321, file: !4283, line: 100, baseType: !338, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4258, file: !4185, line: 96, baseType: !270, size: 32, offset: 1024)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4203, file: !4185, line: 352, baseType: !4335, size: 4608, align: 512)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4185, line: 333, size: 4608, align: 512, elements: !4336)
!4336 = !{!4337, !4338, !4345}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4335, file: !4185, line: 334, baseType: !4221, size: 4096, align: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4335, file: !4185, line: 335, baseType: !4339, size: 512, offset: 4096)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4185, line: 312, size: 512, elements: !4340)
!4340 = !{!4341, !4342, !4343}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4339, file: !4185, line: 313, baseType: !338, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4339, file: !4185, line: 314, baseType: !338, size: 64, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4339, file: !4185, line: 315, baseType: !4344, size: 384, offset: 128)
!4344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 384, elements: !919)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4335, file: !4185, line: 336, baseType: !4346, offset: 4608)
!4346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, elements: !810)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4203, file: !4185, line: 353, baseType: !4348, size: 32768)
!4348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 32768, elements: !4349)
!4349 = !{!4350}
!4350 = !DISubrange(count: 4096)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4184, file: !4185, line: 484, baseType: !4190, size: 64, offset: 192)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4184, file: !4185, line: 491, baseType: !4353, size: 128, offset: 256)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4185, line: 404, size: 128, elements: !4354)
!4354 = !{!4355, !4356, !4357}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4353, file: !4185, line: 424, baseType: !338, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4353, file: !4185, line: 432, baseType: !7, size: 32, offset: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4353, file: !4185, line: 440, baseType: !7, size: 32, offset: 96)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4184, file: !4185, line: 498, baseType: !4353, size: 128, offset: 384)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4184, file: !4185, line: 508, baseType: !4191, size: 33280, align: 512, offset: 512)
!4360 = !{!4361, !4366, !4371, !4373, !4378, !4383, !4385, !4388, !4390, !4395, !4397, !0, !4399}
!4361 = !DIGlobalVariableExpression(var: !4362, expr: !DIExpression())
!4362 = distinct !DIGlobalVariable(scope: null, file: !3, line: 990, type: !4363, isLocal: true, isDefinition: true)
!4363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 344, elements: !4364)
!4364 = !{!4365}
!4365 = !DISubrange(count: 43)
!4366 = !DIGlobalVariableExpression(var: !4367, expr: !DIExpression())
!4367 = distinct !DIGlobalVariable(scope: null, file: !3, line: 997, type: !4368, isLocal: true, isDefinition: true)
!4368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 80, elements: !4369)
!4369 = !{!4370}
!4370 = !DISubrange(count: 10)
!4371 = !DIGlobalVariableExpression(var: !4372, expr: !DIExpression())
!4372 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_compat_ioctl305", scope: !2, file: !3, line: 1000, type: !256, isLocal: true, isDefinition: true)
!4373 = !DIGlobalVariableExpression(var: !4374, expr: !DIExpression())
!4374 = distinct !DIGlobalVariable(scope: null, file: !3, line: 915, type: !4375, isLocal: true, isDefinition: true)
!4375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 144, elements: !4376)
!4376 = !{!4377}
!4377 = !DISubrange(count: 18)
!4378 = !DIGlobalVariableExpression(var: !4379, expr: !DIExpression())
!4379 = distinct !DIGlobalVariable(scope: null, file: !3, line: 916, type: !4380, isLocal: true, isDefinition: true)
!4380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 168, elements: !4381)
!4381 = !{!4382}
!4382 = !DISubrange(count: 21)
!4383 = !DIGlobalVariableExpression(var: !4384, expr: !DIExpression())
!4384 = distinct !DIGlobalVariable(scope: null, file: !3, line: 920, type: !4380, isLocal: true, isDefinition: true)
!4385 = !DIGlobalVariableExpression(var: !4386, expr: !DIExpression())
!4386 = distinct !DIGlobalVariable(scope: null, file: !3, line: 921, type: !4387, isLocal: true, isDefinition: true)
!4387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 160, elements: !4217)
!4388 = !DIGlobalVariableExpression(var: !4389, expr: !DIExpression())
!4389 = distinct !DIGlobalVariable(scope: null, file: !3, line: 922, type: !4380, isLocal: true, isDefinition: true)
!4390 = !DIGlobalVariableExpression(var: !4391, expr: !DIExpression())
!4391 = distinct !DIGlobalVariable(scope: null, file: !3, line: 951, type: !4392, isLocal: true, isDefinition: true)
!4392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 176, elements: !4393)
!4393 = !{!4394}
!4394 = !DISubrange(count: 22)
!4395 = !DIGlobalVariableExpression(var: !4396, expr: !DIExpression())
!4396 = distinct !DIGlobalVariable(scope: null, file: !3, line: 949, type: !4392, isLocal: true, isDefinition: true)
!4397 = !DIGlobalVariableExpression(var: !4398, expr: !DIExpression())
!4398 = distinct !DIGlobalVariable(scope: null, file: !3, line: 953, type: !4392, isLocal: true, isDefinition: true)
!4399 = !DIGlobalVariableExpression(var: !4400, expr: !DIExpression())
!4400 = distinct !DIGlobalVariable(scope: null, file: !4401, line: 249, type: !4402, isLocal: true, isDefinition: true)
!4401 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 224, elements: !4403)
!4403 = !{!4404}
!4404 = !DISubrange(count: 28)
!4405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4406, size: 23680, elements: !4414)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 910, size: 128, elements: !4407)
!4407 = !{!4408, !4413}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4406, file: !3, line: 911, baseType: !4409, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_ioctl_compat_t", file: !214, line: 67, baseType: !4411)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!109, !655, !7, !257}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4406, file: !3, line: 912, baseType: !945, size: 64, offset: 64)
!4414 = !{!4415}
!4415 = !DISubrange(count: 185)
!4416 = !{!"rsp"}
!4417 = !{i32 7, !"Dwarf Version", i32 5}
!4418 = !{i32 2, !"Debug Info Version", i32 3}
!4419 = !{i32 1, !"wchar_size", i32 2}
!4420 = !{i32 8, !"cf-protection-branch", i32 1}
!4421 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4422 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4423 = !{i32 1, !"Code Model", i32 2}
!4424 = !{i32 1, !"override-stack-alignment", i32 8}
!4425 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4426 = distinct !DISubprogram(name: "drm_compat_ioctl", scope: !3, file: !3, line: 971, type: !3150, scopeLine: 972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4427)
!4427 = !{!4428, !4429, !4430, !4431, !4432, !5329, !5330, !5331}
!4428 = !DILocalVariable(name: "filp", arg: 1, scope: !4426, file: !3, line: 971, type: !655)
!4429 = !DILocalVariable(name: "cmd", arg: 2, scope: !4426, file: !3, line: 971, type: !7)
!4430 = !DILocalVariable(name: "arg", arg: 3, scope: !4426, file: !3, line: 971, type: !257)
!4431 = !DILocalVariable(name: "nr", scope: !4426, file: !3, line: 973, type: !7)
!4432 = !DILocalVariable(name: "file_priv", scope: !4426, file: !3, line: 974, type: !4433)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4435, line: 166, size: 2944, elements: !4436)
!4435 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f20734895d003ad7da48316ffd72e54c")
!4436 = !{!4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !5301, !5302, !5303, !5304, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4434, file: !4435, line: 176, baseType: !932, size: 8)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !4434, file: !4435, line: 183, baseType: !932, size: 8, offset: 8)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !4434, file: !4435, line: 191, baseType: !932, size: 8, offset: 16)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !4434, file: !4435, line: 194, baseType: !932, size: 8, offset: 24)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !4434, file: !4435, line: 202, baseType: !932, size: 8, offset: 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !4434, file: !4435, line: 209, baseType: !932, size: 8, offset: 40)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !4434, file: !4435, line: 220, baseType: !932, size: 8, offset: 48)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !4434, file: !4435, line: 231, baseType: !932, size: 8, offset: 56)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "supports_virtualized_cursor_plane", scope: !4434, file: !4435, line: 243, baseType: !932, size: 8, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4434, file: !4435, line: 268, baseType: !4447, size: 64, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4449, line: 65, size: 1280, elements: !4450)
!4449 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4450 = !{!4451, !4452, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4448, file: !4449, line: 66, baseType: !2192, size: 32)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4448, file: !4449, line: 67, baseType: !4453, size: 64, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !194, line: 50, size: 12736, elements: !4455)
!4455 = !{!4456, !4457, !4458, !4909, !4915, !4920, !4921, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5277, !5278, !5279, !5282, !5285, !5286, !5289, !5290}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !4454, file: !194, line: 52, baseType: !109, size: 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4454, file: !194, line: 55, baseType: !2192, size: 32, offset: 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4454, file: !194, line: 58, baseType: !4459, size: 64, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4461)
!4461 = !{!4462, !4463, !4464, !4467, !4468, !4521, !4591, !4592, !4593, !4594, !4595, !4602, !4694, !4707, !4717, !4721, !4723, !4724, !4725, !4729, !4736, !4737, !4740, !4743, !4747, !4851, !4852, !4853, !4854, !4855, !4856, !4886, !4887, !4888, !4891, !4894, !4903, !4904, !4905, !4906, !4907, !4908}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4460, file: !94, line: 706, baseType: !1337, size: 512)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4460, file: !94, line: 707, baseType: !4459, size: 64, offset: 512)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4460, file: !94, line: 709, baseType: !4465, size: 64, offset: 576)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4460, file: !94, line: 711, baseType: !935, size: 64, offset: 640)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4460, file: !94, line: 712, baseType: !4469, size: 64, offset: 704)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4471)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4472)
!4472 = !{!4473, !4474, !4475, !4481, !4486, !4490}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4471, file: !94, line: 90, baseType: !935, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4471, file: !94, line: 91, baseType: !1417, size: 64, offset: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4471, file: !94, line: 92, baseType: !4476, size: 64, offset: 128)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!109, !4479, !1373}
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4460)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4471, file: !94, line: 93, baseType: !4482, size: 64, offset: 192)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!945, !4479, !4485, !2045, !2046}
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4471, file: !94, line: 95, baseType: !4487, size: 64, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{null, !4459}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4471, file: !94, line: 97, baseType: !4491, size: 64, offset: 320)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4493)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4494)
!4494 = !{!4495, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4493, file: !101, line: 287, baseType: !4496, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!109, !4459}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4493, file: !101, line: 288, baseType: !4487, size: 64, offset: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4493, file: !101, line: 289, baseType: !4496, size: 64, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4493, file: !101, line: 290, baseType: !4496, size: 64, offset: 192)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4493, file: !101, line: 291, baseType: !4496, size: 64, offset: 256)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4493, file: !101, line: 292, baseType: !4496, size: 64, offset: 320)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4493, file: !101, line: 293, baseType: !4496, size: 64, offset: 384)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4493, file: !101, line: 294, baseType: !4496, size: 64, offset: 448)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4493, file: !101, line: 295, baseType: !4496, size: 64, offset: 512)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4493, file: !101, line: 296, baseType: !4496, size: 64, offset: 576)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4493, file: !101, line: 297, baseType: !4496, size: 64, offset: 640)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4493, file: !101, line: 298, baseType: !4496, size: 64, offset: 704)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4493, file: !101, line: 299, baseType: !4496, size: 64, offset: 768)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4493, file: !101, line: 300, baseType: !4496, size: 64, offset: 832)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4493, file: !101, line: 301, baseType: !4496, size: 64, offset: 896)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4493, file: !101, line: 302, baseType: !4496, size: 64, offset: 960)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4493, file: !101, line: 303, baseType: !4496, size: 64, offset: 1024)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4493, file: !101, line: 304, baseType: !4496, size: 64, offset: 1088)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4493, file: !101, line: 305, baseType: !4496, size: 64, offset: 1152)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4493, file: !101, line: 306, baseType: !4496, size: 64, offset: 1216)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4493, file: !101, line: 307, baseType: !4496, size: 64, offset: 1280)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4493, file: !101, line: 308, baseType: !4496, size: 64, offset: 1344)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4493, file: !101, line: 309, baseType: !4496, size: 64, offset: 1408)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4460, file: !94, line: 714, baseType: !4522, size: 64, offset: 768)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4524)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4525, line: 80, size: 1344, elements: !4526)
!4525 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4526 = !{!4527, !4528, !4529, !4530, !4531, !4532, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4590}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4524, file: !4525, line: 81, baseType: !935, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4524, file: !4525, line: 82, baseType: !935, size: 64, offset: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4524, file: !4525, line: 83, baseType: !1417, size: 64, offset: 128)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4524, file: !4525, line: 84, baseType: !1417, size: 64, offset: 192)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4524, file: !4525, line: 85, baseType: !1417, size: 64, offset: 256)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4524, file: !4525, line: 87, baseType: !4533, size: 64, offset: 320)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!109, !4459, !4536}
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4538)
!4538 = !{!4539, !4540, !4541, !4542, !4543, !4544, !4545, !4549, !4553, !4554, !4555, !4556, !4557, !4565, !4566, !4567, !4568, !4569, !4570}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4537, file: !88, line: 97, baseType: !935, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4537, file: !88, line: 98, baseType: !4522, size: 64, offset: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4537, file: !88, line: 100, baseType: !1324, size: 64, offset: 128)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4537, file: !88, line: 101, baseType: !935, size: 64, offset: 192)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4537, file: !88, line: 103, baseType: !932, size: 8, offset: 256)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4537, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4537, file: !88, line: 106, baseType: !4546, size: 64, offset: 320)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4548)
!4548 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4537, file: !88, line: 107, baseType: !4550, size: 64, offset: 384)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4552)
!4552 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4537, file: !88, line: 109, baseType: !4496, size: 64, offset: 448)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4537, file: !88, line: 110, baseType: !4487, size: 64, offset: 512)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4537, file: !88, line: 111, baseType: !4496, size: 64, offset: 576)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4537, file: !88, line: 112, baseType: !4487, size: 64, offset: 640)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4537, file: !88, line: 113, baseType: !4558, size: 64, offset: 704)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!109, !4459, !4561}
!4561 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4562)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4563)
!4563 = !{!4564}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4562, file: !101, line: 59, baseType: !109, size: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4537, file: !88, line: 114, baseType: !4496, size: 64, offset: 768)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4537, file: !88, line: 115, baseType: !1417, size: 64, offset: 832)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4537, file: !88, line: 116, baseType: !1417, size: 64, offset: 896)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4537, file: !88, line: 118, baseType: !4491, size: 64, offset: 960)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4537, file: !88, line: 119, baseType: !4487, size: 64, offset: 1024)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4537, file: !88, line: 121, baseType: !4571, size: 64, offset: 1088)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4524, file: !4525, line: 88, baseType: !4476, size: 64, offset: 384)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4524, file: !4525, line: 89, baseType: !4496, size: 64, offset: 448)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4524, file: !4525, line: 90, baseType: !4487, size: 64, offset: 512)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4524, file: !4525, line: 91, baseType: !4487, size: 64, offset: 576)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4524, file: !4525, line: 92, baseType: !4487, size: 64, offset: 640)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4524, file: !4525, line: 94, baseType: !4496, size: 64, offset: 704)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4524, file: !4525, line: 95, baseType: !4496, size: 64, offset: 768)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4524, file: !4525, line: 97, baseType: !4558, size: 64, offset: 832)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4524, file: !4525, line: 98, baseType: !4496, size: 64, offset: 896)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4524, file: !4525, line: 100, baseType: !4496, size: 64, offset: 960)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4524, file: !4525, line: 102, baseType: !4496, size: 64, offset: 1024)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4524, file: !4525, line: 103, baseType: !4487, size: 64, offset: 1088)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4524, file: !4525, line: 105, baseType: !4491, size: 64, offset: 1152)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4524, file: !4525, line: 107, baseType: !4587, size: 64, offset: 1216)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4589)
!4589 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4525, line: 107, flags: DIFlagFwdDecl)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4524, file: !4525, line: 109, baseType: !932, size: 8, offset: 1280)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4460, file: !94, line: 715, baseType: !4536, size: 64, offset: 832)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4460, file: !94, line: 717, baseType: !256, size: 64, offset: 896)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4460, file: !94, line: 719, baseType: !256, size: 64, offset: 960)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4460, file: !94, line: 721, baseType: !683, size: 256, offset: 1024)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4460, file: !94, line: 725, baseType: !4596, size: 448, offset: 1280)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4597)
!4597 = !{!4598, !4599, !4600, !4601}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4596, file: !94, line: 518, baseType: !343, size: 128)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4596, file: !94, line: 519, baseType: !343, size: 128, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4596, file: !94, line: 520, baseType: !343, size: 128, offset: 256)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4596, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4460, file: !94, line: 726, baseType: !4603, size: 2496, offset: 1728)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4604)
!4604 = !{!4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4687, !4691}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4603, file: !101, line: 664, baseType: !4561, size: 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4603, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4603, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4603, file: !101, line: 667, baseType: !932, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4603, file: !101, line: 668, baseType: !932, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4603, file: !101, line: 669, baseType: !932, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4603, file: !101, line: 670, baseType: !932, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4603, file: !101, line: 671, baseType: !932, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4603, file: !101, line: 672, baseType: !932, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4603, file: !101, line: 673, baseType: !932, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4603, file: !101, line: 674, baseType: !932, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4603, file: !101, line: 675, baseType: !270, size: 32, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4603, file: !101, line: 676, baseType: !637, size: 32, offset: 96)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4603, file: !101, line: 678, baseType: !343, size: 128, offset: 128)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4603, file: !101, line: 679, baseType: !1546, size: 256, offset: 256)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4603, file: !101, line: 680, baseType: !4621, size: 64, offset: 512)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4623, line: 43, size: 1536, elements: !4624)
!4623 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4624 = !{!4625, !4626, !4627, !4628, !4629, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4622, file: !4623, line: 44, baseType: !935, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4622, file: !4623, line: 45, baseType: !109, size: 32, offset: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4622, file: !4623, line: 46, baseType: !343, size: 128, offset: 128)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4622, file: !4623, line: 47, baseType: !637, size: 32, offset: 256)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4622, file: !4623, line: 48, baseType: !4630, size: 64, offset: 320)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4622, file: !4623, line: 49, baseType: !2446, size: 320, offset: 384)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4622, file: !4623, line: 50, baseType: !257, size: 64, offset: 704)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4622, file: !4623, line: 51, baseType: !419, size: 64, offset: 768)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4622, file: !4623, line: 52, baseType: !419, size: 64, offset: 832)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4622, file: !4623, line: 53, baseType: !419, size: 64, offset: 896)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4622, file: !4623, line: 54, baseType: !419, size: 64, offset: 960)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4622, file: !4623, line: 55, baseType: !419, size: 64, offset: 1024)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4622, file: !4623, line: 56, baseType: !257, size: 64, offset: 1088)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4622, file: !4623, line: 57, baseType: !257, size: 64, offset: 1152)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4622, file: !4623, line: 58, baseType: !257, size: 64, offset: 1216)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4622, file: !4623, line: 59, baseType: !257, size: 64, offset: 1280)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4622, file: !4623, line: 60, baseType: !257, size: 64, offset: 1344)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4622, file: !4623, line: 61, baseType: !4459, size: 64, offset: 1408)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4622, file: !4623, line: 62, baseType: !932, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4622, file: !4623, line: 63, baseType: !932, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4603, file: !101, line: 681, baseType: !932, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4603, file: !101, line: 682, baseType: !932, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4603, file: !101, line: 683, baseType: !932, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4603, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4603, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4603, file: !101, line: 690, baseType: !411, size: 512, offset: 640)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4603, file: !101, line: 691, baseType: !338, size: 64, offset: 1152)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4603, file: !101, line: 692, baseType: !2458, size: 256, offset: 1216)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4603, file: !101, line: 693, baseType: !746, size: 192, offset: 1472)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4603, file: !101, line: 694, baseType: !4630, size: 64, offset: 1664)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4603, file: !101, line: 695, baseType: !283, size: 32, offset: 1728)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4603, file: !101, line: 696, baseType: !283, size: 32, offset: 1760)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4603, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4603, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4603, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4603, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4603, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4603, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4603, file: !101, line: 703, baseType: !932, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4603, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4603, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4603, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4603, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4603, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4603, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4603, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4603, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4603, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4603, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4603, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4603, file: !101, line: 715, baseType: !338, size: 64, offset: 2048)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4603, file: !101, line: 716, baseType: !338, size: 64, offset: 2112)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4603, file: !101, line: 717, baseType: !338, size: 64, offset: 2176)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4603, file: !101, line: 718, baseType: !338, size: 64, offset: 2240)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4603, file: !101, line: 720, baseType: !4682, size: 64, offset: 2304)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4684)
!4684 = !{!4685, !4686}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4683, file: !101, line: 633, baseType: !637, size: 32)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4683, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4603, file: !101, line: 721, baseType: !4688, size: 64, offset: 2368)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{null, !4459, !864}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4603, file: !101, line: 722, baseType: !4692, size: 64, offset: 2432)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4460, file: !94, line: 727, baseType: !4695, size: 64, offset: 4224)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4697)
!4697 = !{!4698, !4699, !4700, !4704, !4705, !4706}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4696, file: !101, line: 743, baseType: !4493, size: 1472)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4696, file: !101, line: 744, baseType: !4496, size: 64, offset: 1472)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4696, file: !101, line: 745, baseType: !4701, size: 64, offset: 1536)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{null, !4459, !932}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4696, file: !101, line: 746, baseType: !4496, size: 64, offset: 1600)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4696, file: !101, line: 747, baseType: !4487, size: 64, offset: 1664)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4696, file: !101, line: 748, baseType: !4487, size: 64, offset: 1728)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4460, file: !94, line: 736, baseType: !4708, size: 128, offset: 4288)
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4709)
!4709 = !{!4710, !4714}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4708, file: !94, line: 531, baseType: !4711, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4713, line: 13, flags: DIFlagFwdDecl)
!4713 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4708, file: !94, line: 532, baseType: !4715, size: 64, offset: 64)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4460, file: !94, line: 738, baseType: !4718, size: 64, offset: 4416)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4720)
!4720 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4460, file: !94, line: 740, baseType: !4722, size: 64, offset: 4480)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4460, file: !94, line: 741, baseType: !338, size: 64, offset: 4544)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4460, file: !94, line: 746, baseType: !338, size: 64, offset: 4608)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4460, file: !94, line: 747, baseType: !4726, size: 64, offset: 4672)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4728)
!4728 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4460, file: !94, line: 749, baseType: !4730, size: 64, offset: 4736)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4732)
!4732 = !{!4733, !4734, !4735}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4731, file: !94, line: 433, baseType: !7, size: 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4731, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4731, file: !94, line: 435, baseType: !257, size: 64, offset: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4460, file: !94, line: 751, baseType: !343, size: 128, offset: 4800)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4460, file: !94, line: 762, baseType: !4738, size: 64, offset: 4928)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4460, file: !94, line: 770, baseType: !4741, offset: 4992)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4742, line: 5, elements: !648)
!4742 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4460, file: !94, line: 772, baseType: !4744, size: 64, offset: 4992)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4746, line: 18, flags: DIFlagFwdDecl)
!4746 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4460, file: !94, line: 773, baseType: !4748, size: 64, offset: 5056)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4750, line: 41, size: 512, elements: !4751)
!4750 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4751 = !{!4752, !4753, !4847, !4848, !4849, !4850}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4749, file: !4750, line: 42, baseType: !4748, size: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4749, file: !4750, line: 43, baseType: !4754, size: 64, offset: 64)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4756)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4750, line: 125, size: 1408, elements: !4757)
!4757 = !{!4758, !4762, !4766, !4772, !4776, !4777, !4782, !4786, !4790, !4794, !4798, !4799, !4803, !4807, !4811, !4822, !4823, !4824, !4825, !4835, !4839, !4843}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4756, file: !4750, line: 126, baseType: !4759, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!4748, !4748}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4756, file: !4750, line: 127, baseType: !4763, size: 64, offset: 64)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{null, !4748}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4756, file: !4750, line: 128, baseType: !4767, size: 64, offset: 128)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!932, !4770}
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4749)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4756, file: !4750, line: 129, baseType: !4773, size: 64, offset: 192)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!2027, !4770, !4479}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4756, file: !4750, line: 131, baseType: !4767, size: 64, offset: 256)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4756, file: !4750, line: 133, baseType: !4778, size: 64, offset: 320)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!4781, !4770}
!4781 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4750, line: 132, flags: DIFlagFwdDecl)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4756, file: !4750, line: 134, baseType: !4783, size: 64, offset: 384)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!932, !4770, !935}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4756, file: !4750, line: 136, baseType: !4787, size: 64, offset: 448)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!109, !4770, !935, !7, !256, !1242}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4756, file: !4750, line: 141, baseType: !4791, size: 64, offset: 512)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!109, !4770, !935, !2534, !1242}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4756, file: !4750, line: 144, baseType: !4795, size: 64, offset: 576)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!935, !4770}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4756, file: !4750, line: 145, baseType: !4795, size: 64, offset: 640)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4756, file: !4750, line: 146, baseType: !4800, size: 64, offset: 704)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!4748, !4770}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4756, file: !4750, line: 148, baseType: !4804, size: 64, offset: 768)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!4748, !4770, !4748}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4756, file: !4750, line: 151, baseType: !4808, size: 64, offset: 832)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!4748, !4770, !935}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4756, file: !4750, line: 153, baseType: !4812, size: 64, offset: 896)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!109, !4770, !935, !935, !7, !7, !4815}
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4750, line: 94, size: 640, elements: !4817)
!4817 = !{!4818, !4819, !4820}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4816, file: !4750, line: 95, baseType: !4748, size: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4816, file: !4750, line: 96, baseType: !7, size: 32, offset: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4816, file: !4750, line: 97, baseType: !4821, size: 512, offset: 128)
!4821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 512, elements: !480)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4756, file: !4750, line: 158, baseType: !4804, size: 64, offset: 960)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4756, file: !4750, line: 161, baseType: !4800, size: 64, offset: 1024)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4756, file: !4750, line: 163, baseType: !4759, size: 64, offset: 1088)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4756, file: !4750, line: 164, baseType: !4826, size: 64, offset: 1152)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!109, !4770, !4829}
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4750, line: 73, size: 128, elements: !4831)
!4831 = !{!4832, !4833, !4834}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4830, file: !4750, line: 74, baseType: !7, size: 32)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4830, file: !4750, line: 75, baseType: !7, size: 32, offset: 32)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4830, file: !4750, line: 76, baseType: !4770, size: 64, offset: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4756, file: !4750, line: 166, baseType: !4836, size: 64, offset: 1216)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!256, !4748, !109}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4756, file: !4750, line: 167, baseType: !4840, size: 64, offset: 1280)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!109, !4770, !7}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4756, file: !4750, line: 168, baseType: !4844, size: 64, offset: 1344)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!109, !4748}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4749, file: !4750, line: 44, baseType: !4459, size: 64, offset: 128)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4749, file: !4750, line: 45, baseType: !343, size: 128, offset: 192)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4749, file: !4750, line: 46, baseType: !343, size: 128, offset: 320)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4749, file: !4750, line: 47, baseType: !453, size: 8, offset: 448)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4460, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4460, file: !94, line: 778, baseType: !1161, size: 32, offset: 5152)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4460, file: !94, line: 779, baseType: !270, size: 32, offset: 5184)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4460, file: !94, line: 781, baseType: !637, size: 32, offset: 5216)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4460, file: !94, line: 782, baseType: !343, size: 128, offset: 5248)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4460, file: !94, line: 784, baseType: !4857, size: 64, offset: 5376)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4859)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4860, line: 52, size: 768, elements: !4861)
!4860 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4861 = !{!4862, !4863, !4864, !4865, !4866, !4870, !4874, !4875, !4876, !4877, !4881, !4885}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4859, file: !4860, line: 53, baseType: !935, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4859, file: !4860, line: 55, baseType: !1417, size: 64, offset: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4859, file: !4860, line: 56, baseType: !1417, size: 64, offset: 128)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4859, file: !4860, line: 58, baseType: !4476, size: 64, offset: 192)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4859, file: !4860, line: 59, baseType: !4867, size: 64, offset: 256)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!945, !4479, !4485}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4859, file: !4860, line: 61, baseType: !4871, size: 64, offset: 320)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{null, !4857}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4859, file: !4860, line: 62, baseType: !4487, size: 64, offset: 384)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4859, file: !4860, line: 64, baseType: !4496, size: 64, offset: 448)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4859, file: !4860, line: 66, baseType: !2010, size: 64, offset: 512)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4859, file: !4860, line: 67, baseType: !4878, size: 64, offset: 576)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!2027, !4479}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4859, file: !4860, line: 69, baseType: !4882, size: 64, offset: 640)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{null, !4479, !2045, !2046}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4859, file: !4860, line: 71, baseType: !4491, size: 64, offset: 704)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4460, file: !94, line: 785, baseType: !1417, size: 64, offset: 5440)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4460, file: !94, line: 787, baseType: !4487, size: 64, offset: 5504)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4460, file: !94, line: 788, baseType: !4889, size: 64, offset: 5568)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4460, file: !94, line: 789, baseType: !4892, size: 64, offset: 5632)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4460, file: !94, line: 791, baseType: !4895, size: 64, offset: 5696)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4897)
!4897 = !{!4898, !4899, !4900, !4901, !4902}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4896, file: !94, line: 598, baseType: !116, size: 32)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4896, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4896, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4896, file: !94, line: 601, baseType: !932, size: 8, offset: 96)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4896, file: !94, line: 602, baseType: !932, size: 8, offset: 104)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4460, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4460, file: !94, line: 795, baseType: !932, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4460, file: !94, line: 796, baseType: !932, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4460, file: !94, line: 797, baseType: !932, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4460, file: !94, line: 798, baseType: !932, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4460, file: !94, line: 799, baseType: !932, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4454, file: !194, line: 73, baseType: !4910, size: 256, offset: 128)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4454, file: !194, line: 66, size: 256, elements: !4911)
!4911 = !{!4912, !4913, !4914}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4910, file: !194, line: 68, baseType: !343, size: 128)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4910, file: !194, line: 70, baseType: !256, size: 64, offset: 128)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4910, file: !194, line: 72, baseType: !637, size: 32, offset: 192)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4454, file: !194, line: 76, baseType: !4916, size: 64, offset: 384)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4918)
!4918 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4919, line: 42, flags: DIFlagFwdDecl)
!4919 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !4454, file: !194, line: 88, baseType: !256, size: 64, offset: 448)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4454, file: !194, line: 98, baseType: !4922, size: 64, offset: 512)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !4435, line: 77, size: 640, elements: !4924)
!4924 = !{!4925, !4926, !4927, !4928, !4929, !4930, !4931}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4923, file: !4435, line: 79, baseType: !109, size: 32)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4923, file: !4435, line: 80, baseType: !109, size: 32, offset: 32)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4923, file: !4435, line: 81, baseType: !4459, size: 64, offset: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4923, file: !4435, line: 82, baseType: !4453, size: 64, offset: 128)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4923, file: !4435, line: 84, baseType: !1051, size: 64, offset: 192)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4923, file: !4435, line: 86, baseType: !343, size: 128, offset: 256)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !4923, file: !4435, line: 87, baseType: !683, size: 256, offset: 384)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !4454, file: !194, line: 107, baseType: !4922, size: 64, offset: 576)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !4454, file: !194, line: 110, baseType: !4922, size: 64, offset: 640)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4454, file: !194, line: 117, baseType: !932, size: 8, offset: 704)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4454, file: !194, line: 125, baseType: !4447, size: 64, offset: 768)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4454, file: !194, line: 135, baseType: !270, size: 32, offset: 832)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !4454, file: !194, line: 143, baseType: !932, size: 8, offset: 864)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !4454, file: !194, line: 146, baseType: !1086, size: 64, offset: 896)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4454, file: !194, line: 149, baseType: !945, size: 64, offset: 960)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !4454, file: !194, line: 159, baseType: !683, size: 256, offset: 1024)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !4454, file: !194, line: 166, baseType: !683, size: 256, offset: 1280)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !4454, file: !194, line: 174, baseType: !283, size: 32, offset: 1536)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !4454, file: !194, line: 177, baseType: !683, size: 256, offset: 1600)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4454, file: !194, line: 183, baseType: !343, size: 128, offset: 1856)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !4454, file: !194, line: 191, baseType: !343, size: 128, offset: 1984)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !4454, file: !194, line: 198, baseType: !683, size: 256, offset: 2112)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !4454, file: !194, line: 205, baseType: !343, size: 128, offset: 2368)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !4454, file: !194, line: 220, baseType: !932, size: 8, offset: 2496)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !4454, file: !194, line: 230, baseType: !4950, size: 64, offset: 2560)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !4952, line: 91, size: 2432, elements: !4953)
!4952 = !DIFile(filename: "./include/drm/drm_vblank.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03c3f5f08fd7c156883238a0e593b6d6")
!4953 = !{!4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !5004, !5005, !5027, !5028}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4951, file: !4952, line: 95, baseType: !4453, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4951, file: !4952, line: 99, baseType: !746, size: 192, offset: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "disable_timer", scope: !4951, file: !4952, line: 106, baseType: !2446, size: 320, offset: 256)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "seqlock", scope: !4951, file: !4952, line: 111, baseType: !3683, size: 64, offset: 576)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4951, file: !4952, line: 127, baseType: !678, size: 64, offset: 640)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4951, file: !4952, line: 131, baseType: !419, size: 64, offset: 704)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4951, file: !4952, line: 138, baseType: !283, size: 32, offset: 768)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4951, file: !4952, line: 142, baseType: !270, size: 32, offset: 800)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !4951, file: !4952, line: 162, baseType: !270, size: 32, offset: 832)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "inmodeset", scope: !4951, file: !4952, line: 171, baseType: !7, size: 32, offset: 864)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4951, file: !4952, line: 176, baseType: !7, size: 32, offset: 896)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "framedur_ns", scope: !4951, file: !4952, line: 182, baseType: !109, size: 32, offset: 928)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "linedur_ns", scope: !4951, file: !4952, line: 188, baseType: !109, size: 32, offset: 960)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !4951, file: !4952, line: 199, baseType: !4968, size: 960, offset: 1024)
!4968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !142, line: 252, size: 960, elements: !4969)
!4969 = !{!4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4968, file: !142, line: 258, baseType: !109, size: 32)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4968, file: !142, line: 259, baseType: !307, size: 16, offset: 32)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4968, file: !142, line: 260, baseType: !307, size: 16, offset: 48)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4968, file: !142, line: 261, baseType: !307, size: 16, offset: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4968, file: !142, line: 262, baseType: !307, size: 16, offset: 80)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4968, file: !142, line: 263, baseType: !307, size: 16, offset: 96)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4968, file: !142, line: 264, baseType: !307, size: 16, offset: 112)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4968, file: !142, line: 265, baseType: !307, size: 16, offset: 128)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4968, file: !142, line: 266, baseType: !307, size: 16, offset: 144)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4968, file: !142, line: 267, baseType: !307, size: 16, offset: 160)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4968, file: !142, line: 268, baseType: !307, size: 16, offset: 176)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4968, file: !142, line: 303, baseType: !270, size: 32, offset: 192)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4968, file: !142, line: 320, baseType: !109, size: 32, offset: 224)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4968, file: !142, line: 321, baseType: !307, size: 16, offset: 256)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4968, file: !142, line: 322, baseType: !307, size: 16, offset: 272)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4968, file: !142, line: 323, baseType: !307, size: 16, offset: 288)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4968, file: !142, line: 324, baseType: !307, size: 16, offset: 304)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4968, file: !142, line: 325, baseType: !307, size: 16, offset: 320)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4968, file: !142, line: 326, baseType: !307, size: 16, offset: 336)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4968, file: !142, line: 327, baseType: !307, size: 16, offset: 352)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4968, file: !142, line: 328, baseType: !307, size: 16, offset: 368)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4968, file: !142, line: 329, baseType: !307, size: 16, offset: 384)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4968, file: !142, line: 330, baseType: !307, size: 16, offset: 400)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4968, file: !142, line: 331, baseType: !307, size: 16, offset: 416)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4968, file: !142, line: 332, baseType: !307, size: 16, offset: 432)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4968, file: !142, line: 333, baseType: !307, size: 16, offset: 448)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4968, file: !142, line: 341, baseType: !307, size: 16, offset: 464)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4968, file: !142, line: 349, baseType: !307, size: 16, offset: 480)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4968, file: !142, line: 378, baseType: !453, size: 8, offset: 496)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4968, file: !142, line: 389, baseType: !932, size: 8, offset: 504)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4968, file: !142, line: 396, baseType: !343, size: 128, offset: 512)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4968, file: !142, line: 403, baseType: !2944, size: 256, offset: 640)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4968, file: !142, line: 411, baseType: !141, size: 32, offset: 896)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4968, file: !142, line: 418, baseType: !184, size: 32, offset: 928)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4951, file: !4952, line: 207, baseType: !932, size: 8, offset: 1984)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4951, file: !4952, line: 212, baseType: !5006, size: 64, offset: 2048)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !5008, line: 123, size: 448, elements: !5009)
!5008 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!5009 = !{!5010, !5011, !5012, !5013, !5014, !5015}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5007, file: !5008, line: 124, baseType: !7, size: 32)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5007, file: !5008, line: 125, baseType: !436, size: 32, offset: 32)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !5007, file: !5008, line: 126, baseType: !343, size: 128, offset: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !5007, file: !5008, line: 127, baseType: !343, size: 128, offset: 192)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5007, file: !5008, line: 128, baseType: !259, size: 64, offset: 320)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !5007, file: !5008, line: 129, baseType: !5016, size: 64, offset: 384)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !5008, line: 132, size: 320, elements: !5018)
!5018 = !{!5019, !5020, !5025, !5026}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5017, file: !5008, line: 133, baseType: !343, size: 128)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5017, file: !5008, line: 134, baseType: !5021, size: 64, offset: 128)
!5021 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !5008, line: 116, baseType: !5022)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{null, !5016}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !5017, file: !5008, line: 135, baseType: !5006, size: 64, offset: 192)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !5017, file: !5008, line: 137, baseType: !109, size: 32, offset: 256)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !4951, file: !4952, line: 218, baseType: !343, size: 128, offset: 2112)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "work_wait_queue", scope: !4951, file: !4952, line: 225, baseType: !746, size: 192, offset: 2240)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !4454, file: !194, line: 237, baseType: !637, size: 32, offset: 2624)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !4454, file: !194, line: 242, baseType: !637, size: 32, offset: 2656)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !4454, file: !194, line: 265, baseType: !270, size: 32, offset: 2688)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !4454, file: !194, line: 268, baseType: !343, size: 128, offset: 2752)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4454, file: !194, line: 276, baseType: !637, size: 32, offset: 2880)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !4454, file: !194, line: 279, baseType: !7, size: 32, offset: 2912)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !4454, file: !194, line: 282, baseType: !5036, size: 8704, offset: 2944)
!5036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !5037, line: 375, size: 8704, elements: !5038)
!5037 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!5038 = !{!5039, !5040, !5059, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5036, file: !5037, line: 386, baseType: !683, size: 256)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !5036, file: !5037, line: 396, baseType: !5041, size: 448, offset: 256)
!5041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !5042, line: 85, size: 448, elements: !5043)
!5042 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!5043 = !{!5044, !5058}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5041, file: !5042, line: 89, baseType: !5045, size: 320)
!5045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !5046, line: 47, size: 320, elements: !5047)
!5046 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!5047 = !{!5048, !5049}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5045, file: !5046, line: 48, baseType: !683, size: 256)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5045, file: !5046, line: 49, baseType: !5050, size: 64, offset: 256)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !5046, line: 55, size: 192, elements: !5052)
!5052 = !{!5053, !5054, !5055, !5056, !5057}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5051, file: !5046, line: 56, baseType: !259, size: 64)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !5051, file: !5046, line: 57, baseType: !257, size: 64, offset: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !5051, file: !5046, line: 58, baseType: !7, size: 32, offset: 128)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !5051, file: !5046, line: 59, baseType: !309, size: 16, offset: 160)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !5051, file: !5046, line: 60, baseType: !309, size: 16, offset: 176)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5041, file: !5042, line: 95, baseType: !343, size: 128, offset: 320)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !5036, file: !5037, line: 406, baseType: !5060, size: 64, offset: 704)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !5042, line: 46, size: 512, elements: !5062)
!5062 = !{!5063, !5064, !5066, !5069, !5070, !5071}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !5061, file: !5042, line: 48, baseType: !5051, size: 192)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !5061, file: !5042, line: 55, baseType: !5065, size: 64, offset: 192)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !5061, file: !5042, line: 61, baseType: !5067, size: 32, offset: 256)
!5067 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !5068, line: 27, baseType: !270)
!5068 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !5061, file: !5042, line: 66, baseType: !343, size: 128, offset: 320)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !5061, file: !5042, line: 71, baseType: !932, size: 8, offset: 448)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !5061, file: !5042, line: 74, baseType: !932, size: 8, offset: 456)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !5036, file: !5037, line: 414, baseType: !683, size: 256, offset: 768)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !5036, file: !5037, line: 422, baseType: !764, size: 192, offset: 1024)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !5036, file: !5037, line: 430, baseType: !764, size: 192, offset: 1216)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !5036, file: !5037, line: 433, baseType: !683, size: 256, offset: 1408)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !5036, file: !5037, line: 435, baseType: !109, size: 32, offset: 1664)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !5036, file: !5037, line: 437, baseType: !343, size: 128, offset: 1728)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !5036, file: !5037, line: 443, baseType: !637, size: 32, offset: 1856)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !5036, file: !5037, line: 448, baseType: !109, size: 32, offset: 1888)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !5036, file: !5037, line: 452, baseType: !5081, size: 128, offset: 1920)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !765, line: 246, size: 128, elements: !5082)
!5082 = !{!5083}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5081, file: !765, line: 247, baseType: !768, size: 128)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !5036, file: !5037, line: 460, baseType: !343, size: 128, offset: 2048)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !5036, file: !5037, line: 470, baseType: !4134, size: 64, offset: 2176)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !5036, file: !5037, line: 474, baseType: !2458, size: 256, offset: 2240)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !5036, file: !5037, line: 482, baseType: !109, size: 32, offset: 2496)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !5036, file: !5037, line: 490, baseType: !343, size: 128, offset: 2560)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !5036, file: !5037, line: 499, baseType: !109, size: 32, offset: 2688)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !5036, file: !5037, line: 506, baseType: !343, size: 128, offset: 2752)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !5036, file: !5037, line: 514, baseType: !109, size: 32, offset: 2880)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !5036, file: !5037, line: 521, baseType: !343, size: 128, offset: 2944)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !5036, file: !5037, line: 530, baseType: !343, size: 128, offset: 3072)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !5036, file: !5037, line: 539, baseType: !343, size: 128, offset: 3200)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !5036, file: !5037, line: 541, baseType: !109, size: 32, offset: 3328)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !5036, file: !5037, line: 541, baseType: !109, size: 32, offset: 3360)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !5036, file: !5037, line: 542, baseType: !109, size: 32, offset: 3392)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !5036, file: !5037, line: 542, baseType: !109, size: 32, offset: 3424)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5036, file: !5037, line: 543, baseType: !5100, size: 64, offset: 3456)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5102)
!5102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !5037, line: 47, size: 576, elements: !5103)
!5103 = !{!5104, !5127, !5134, !5138, !5144, !5150, !5154, !5158, !5162}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !5102, file: !5037, line: 83, baseType: !5105, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!5108, !4453, !4433, !5111}
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !5110, line: 49, flags: DIFlagFwdDecl)
!5110 = !DIFile(filename: "drivers/gpu/drm/drm_crtc_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cc7eb232afbcd0906ea123be2635b3d")
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5113)
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !5114, line: 703, size: 832, elements: !5115)
!5114 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!5115 = !{!5116, !5117, !5118, !5119, !5120, !5121, !5123, !5124, !5125}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !5113, file: !5114, line: 705, baseType: !272, size: 32)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5113, file: !5114, line: 707, baseType: !272, size: 32, offset: 32)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5113, file: !5114, line: 709, baseType: !272, size: 32, offset: 64)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5113, file: !5114, line: 714, baseType: !272, size: 32, offset: 96)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5113, file: !5114, line: 719, baseType: !272, size: 32, offset: 128)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5113, file: !5114, line: 725, baseType: !5122, size: 128, offset: 160)
!5122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 128, elements: !742)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5113, file: !5114, line: 727, baseType: !5122, size: 128, offset: 288)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5113, file: !5114, line: 729, baseType: !5122, size: 128, offset: 416)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5113, file: !5114, line: 735, baseType: !5126, size: 256, offset: 576)
!5126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 256, elements: !742)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !5102, file: !5037, line: 98, baseType: !5128, size: 64, offset: 64)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!5131, !5111}
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5133)
!5133 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !5037, line: 38, flags: DIFlagFwdDecl)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !5102, file: !5037, line: 114, baseType: !5135, size: 64, offset: 128)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{null, !4453}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5102, file: !5037, line: 124, baseType: !5139, size: 64, offset: 192)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!141, !4453, !5142}
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4968)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5102, file: !5037, line: 201, baseType: !5145, size: 64, offset: 256)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!109, !4453, !5148}
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !5110, line: 42, flags: DIFlagFwdDecl)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5102, file: !5037, line: 283, baseType: !5151, size: 64, offset: 320)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!109, !4453, !5148, !932}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !5102, file: !5037, line: 302, baseType: !5155, size: 64, offset: 384)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!5148, !4453}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !5102, file: !5037, line: 323, baseType: !5159, size: 64, offset: 448)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DISubroutineType(types: !5161)
!5161 = !{null, !5148}
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !5102, file: !5037, line: 338, baseType: !5159, size: 64, offset: 512)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !5036, file: !5037, line: 546, baseType: !932, size: 8, offset: 3520)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !5036, file: !5037, line: 547, baseType: !932, size: 8, offset: 3528)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !5036, file: !5037, line: 548, baseType: !932, size: 8, offset: 3536)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !5036, file: !5037, line: 549, baseType: !2514, size: 704, offset: 3584)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !5036, file: !5037, line: 557, baseType: !683, size: 256, offset: 4288)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !5036, file: !5037, line: 565, baseType: !343, size: 128, offset: 4544)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !5036, file: !5037, line: 573, baseType: !5170, size: 64, offset: 4672)
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !5172, line: 80, size: 960, elements: !5173)
!5172 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!5173 = !{!5174, !5175, !5199, !5200, !5201, !5202, !5204, !5205}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5171, file: !5172, line: 84, baseType: !343, size: 128)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5171, file: !5172, line: 89, baseType: !5176, size: 256, offset: 128)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !5177, line: 55, size: 256, elements: !5178)
!5177 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!5178 = !{!5179, !5180, !5181, !5193, !5194}
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5176, file: !5177, line: 56, baseType: !896, size: 32)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5176, file: !5177, line: 57, baseType: !896, size: 32, offset: 32)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5176, file: !5177, line: 58, baseType: !5182, size: 64, offset: 64)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !5177, line: 67, size: 3136, elements: !5184)
!5184 = !{!5185, !5186, !5190}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5183, file: !5177, line: 73, baseType: !109, size: 32)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5183, file: !5177, line: 82, baseType: !5187, size: 1536, offset: 64)
!5187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5170, size: 1536, elements: !5188)
!5188 = !{!5189}
!5189 = !DISubrange(count: 24)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5183, file: !5177, line: 106, baseType: !5191, size: 1536, offset: 1600)
!5191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5192, size: 1536, elements: !5188)
!5192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !284, line: 113, baseType: !338)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5176, file: !5177, line: 59, baseType: !2192, size: 32, offset: 128)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !5176, file: !5177, line: 60, baseType: !5195, size: 64, offset: 192)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{null, !5198}
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5171, file: !5172, line: 166, baseType: !896, size: 32, offset: 384)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5171, file: !5172, line: 171, baseType: !2944, size: 256, offset: 416)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !5171, file: !5172, line: 176, baseType: !896, size: 32, offset: 672)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5171, file: !5172, line: 184, baseType: !5203, size: 64, offset: 704)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5171, file: !5172, line: 189, baseType: !4453, size: 64, offset: 768)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !5171, file: !5172, line: 197, baseType: !343, size: 128, offset: 832)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !5036, file: !5037, line: 578, baseType: !5170, size: 64, offset: 4736)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !5036, file: !5037, line: 583, baseType: !5170, size: 64, offset: 4800)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !5036, file: !5037, line: 589, baseType: !5170, size: 64, offset: 4864)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !5036, file: !5037, line: 594, baseType: !5170, size: 64, offset: 4928)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !5036, file: !5037, line: 599, baseType: !5170, size: 64, offset: 4992)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !5036, file: !5037, line: 604, baseType: !5170, size: 64, offset: 5056)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !5036, file: !5037, line: 609, baseType: !5170, size: 64, offset: 5120)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !5036, file: !5037, line: 614, baseType: !5170, size: 64, offset: 5184)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !5036, file: !5037, line: 619, baseType: !5170, size: 64, offset: 5248)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !5036, file: !5037, line: 624, baseType: !5170, size: 64, offset: 5312)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !5036, file: !5037, line: 629, baseType: !5170, size: 64, offset: 5376)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !5036, file: !5037, line: 634, baseType: !5170, size: 64, offset: 5440)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !5036, file: !5037, line: 639, baseType: !5170, size: 64, offset: 5504)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !5036, file: !5037, line: 644, baseType: !5170, size: 64, offset: 5568)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !5036, file: !5037, line: 649, baseType: !5170, size: 64, offset: 5632)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !5036, file: !5037, line: 655, baseType: !5170, size: 64, offset: 5696)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !5036, file: !5037, line: 660, baseType: !5170, size: 64, offset: 5760)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !5036, file: !5037, line: 669, baseType: !5170, size: 64, offset: 5824)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !5036, file: !5037, line: 675, baseType: !5170, size: 64, offset: 5888)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !5036, file: !5037, line: 681, baseType: !5170, size: 64, offset: 5952)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !5036, file: !5037, line: 686, baseType: !5170, size: 64, offset: 6016)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !5036, file: !5037, line: 692, baseType: !5170, size: 64, offset: 6080)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !5036, file: !5037, line: 697, baseType: !5170, size: 64, offset: 6144)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !5036, file: !5037, line: 703, baseType: !5170, size: 64, offset: 6208)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !5036, file: !5037, line: 709, baseType: !5170, size: 64, offset: 6272)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !5036, file: !5037, line: 714, baseType: !5170, size: 64, offset: 6336)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !5036, file: !5037, line: 722, baseType: !5170, size: 64, offset: 6400)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !5036, file: !5037, line: 728, baseType: !5170, size: 64, offset: 6464)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !5036, file: !5037, line: 734, baseType: !5170, size: 64, offset: 6528)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !5036, file: !5037, line: 739, baseType: !5170, size: 64, offset: 6592)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !5036, file: !5037, line: 744, baseType: !5170, size: 64, offset: 6656)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !5036, file: !5037, line: 749, baseType: !5170, size: 64, offset: 6720)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !5036, file: !5037, line: 754, baseType: !5170, size: 64, offset: 6784)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !5036, file: !5037, line: 759, baseType: !5170, size: 64, offset: 6848)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !5036, file: !5037, line: 764, baseType: !5170, size: 64, offset: 6912)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !5036, file: !5037, line: 769, baseType: !5170, size: 64, offset: 6976)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !5036, file: !5037, line: 774, baseType: !5170, size: 64, offset: 7040)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !5036, file: !5037, line: 778, baseType: !5170, size: 64, offset: 7104)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5036, file: !5037, line: 784, baseType: !5170, size: 64, offset: 7168)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !5036, file: !5037, line: 789, baseType: !5170, size: 64, offset: 7232)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !5036, file: !5037, line: 794, baseType: !5170, size: 64, offset: 7296)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !5036, file: !5037, line: 799, baseType: !5170, size: 64, offset: 7360)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !5036, file: !5037, line: 804, baseType: !5170, size: 64, offset: 7424)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !5036, file: !5037, line: 810, baseType: !5170, size: 64, offset: 7488)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !5036, file: !5037, line: 816, baseType: !5170, size: 64, offset: 7552)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !5036, file: !5037, line: 821, baseType: !5170, size: 64, offset: 7616)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !5036, file: !5037, line: 827, baseType: !5170, size: 64, offset: 7680)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !5036, file: !5037, line: 832, baseType: !5170, size: 64, offset: 7744)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !5036, file: !5037, line: 839, baseType: !5170, size: 64, offset: 7808)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !5036, file: !5037, line: 846, baseType: !5170, size: 64, offset: 7872)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !5036, file: !5037, line: 853, baseType: !5170, size: 64, offset: 7936)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !5036, file: !5037, line: 861, baseType: !5170, size: 64, offset: 8000)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !5036, file: !5037, line: 869, baseType: !5170, size: 64, offset: 8064)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !5036, file: !5037, line: 876, baseType: !5170, size: 64, offset: 8128)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !5036, file: !5037, line: 882, baseType: !5170, size: 64, offset: 8192)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !5036, file: !5037, line: 888, baseType: !5170, size: 64, offset: 8256)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !5036, file: !5037, line: 891, baseType: !896, size: 32, offset: 8320)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !5036, file: !5037, line: 891, baseType: !896, size: 32, offset: 8352)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !5036, file: !5037, line: 899, baseType: !932, size: 8, offset: 8384)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !5036, file: !5037, line: 913, baseType: !932, size: 8, offset: 8392)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !5036, file: !5037, line: 919, baseType: !932, size: 8, offset: 8400)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !5036, file: !5037, line: 929, baseType: !932, size: 8, offset: 8408)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !5036, file: !5037, line: 937, baseType: !932, size: 8, offset: 8416)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !5036, file: !5037, line: 943, baseType: !5170, size: 64, offset: 8448)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !5036, file: !5037, line: 946, baseType: !896, size: 32, offset: 8512)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !5036, file: !5037, line: 946, baseType: !896, size: 32, offset: 8544)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !5036, file: !5037, line: 955, baseType: !5148, size: 64, offset: 8576)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5036, file: !5037, line: 957, baseType: !5274, size: 64, offset: 8640)
!5274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5275, size: 64)
!5275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5276)
!5276 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !5037, line: 957, flags: DIFlagFwdDecl)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !4454, file: !194, line: 285, baseType: !683, size: 256, offset: 11648)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !4454, file: !194, line: 288, baseType: !764, size: 192, offset: 11904)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !4454, file: !194, line: 291, baseType: !5280, size: 64, offset: 12096)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !194, line: 16, flags: DIFlagFwdDecl)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !4454, file: !194, line: 294, baseType: !5283, size: 64, offset: 12160)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !194, line: 17, flags: DIFlagFwdDecl)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !4454, file: !194, line: 304, baseType: !193, size: 32, offset: 12224)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !4454, file: !194, line: 312, baseType: !5287, size: 64, offset: 12288)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !194, line: 18, flags: DIFlagFwdDecl)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !4454, file: !194, line: 319, baseType: !683, size: 256, offset: 12352)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4454, file: !194, line: 327, baseType: !343, size: 128, offset: 12608)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4448, file: !4449, line: 72, baseType: !945, size: 64, offset: 128)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4448, file: !4449, line: 77, baseType: !109, size: 32, offset: 192)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4448, file: !4449, line: 82, baseType: !764, size: 192, offset: 256)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4448, file: !4449, line: 83, baseType: !256, size: 64, offset: 448)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4448, file: !4449, line: 99, baseType: !4447, size: 64, offset: 512)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4448, file: !4449, line: 107, baseType: !109, size: 32, offset: 576)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4448, file: !4449, line: 116, baseType: !343, size: 128, offset: 640)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4448, file: !4449, line: 128, baseType: !343, size: 128, offset: 768)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4448, file: !4449, line: 139, baseType: !764, size: 192, offset: 896)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4448, file: !4449, line: 147, baseType: !764, size: 192, offset: 1088)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "master_lookup_lock", scope: !4434, file: !4435, line: 271, baseType: !637, size: 32, offset: 192)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4434, file: !4435, line: 281, baseType: !725, size: 64, offset: 256)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "client_id", scope: !4434, file: !4435, line: 284, baseType: !338, size: 64, offset: 320)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4434, file: !4435, line: 287, baseType: !5305, size: 32, offset: 384)
!5305 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !227, line: 85, baseType: !7)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !4434, file: !4435, line: 295, baseType: !343, size: 128, offset: 448)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4434, file: !4435, line: 298, baseType: !4922, size: 64, offset: 576)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4434, file: !4435, line: 306, baseType: !764, size: 192, offset: 640)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !4434, file: !4435, line: 309, baseType: !637, size: 32, offset: 832)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !4434, file: !4435, line: 312, baseType: !764, size: 192, offset: 896)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !4434, file: !4435, line: 314, baseType: !637, size: 32, offset: 1088)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4434, file: !4435, line: 317, baseType: !655, size: 64, offset: 1152)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4434, file: !4435, line: 325, baseType: !256, size: 64, offset: 1216)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !4434, file: !4435, line: 336, baseType: !343, size: 128, offset: 1280)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !4434, file: !4435, line: 339, baseType: !683, size: 256, offset: 1408)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !4434, file: !4435, line: 349, baseType: !343, size: 128, offset: 1664)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !4434, file: !4435, line: 352, baseType: !746, size: 192, offset: 1792)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !4434, file: !4435, line: 363, baseType: !343, size: 128, offset: 1984)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !4434, file: !4435, line: 373, baseType: !343, size: 128, offset: 2112)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !4434, file: !4435, line: 382, baseType: !109, size: 32, offset: 2240)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !4434, file: !4435, line: 385, baseType: !683, size: 256, offset: 2304)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !4434, file: !4435, line: 392, baseType: !5323, size: 384, offset: 2560)
!5323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !5324, line: 45, size: 384, elements: !5325)
!5324 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95f128be875629bb4216af76254b38de")
!5325 = !{!5326, !5327, !5328}
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5323, file: !5324, line: 47, baseType: !683, size: 256)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !5323, file: !5324, line: 48, baseType: !505, size: 64, offset: 256)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5323, file: !5324, line: 49, baseType: !505, size: 64, offset: 320)
!5329 = !DILocalVariable(name: "dev", scope: !4426, file: !3, line: 975, type: !4453)
!5330 = !DILocalVariable(name: "fn", scope: !4426, file: !3, line: 976, type: !4409)
!5331 = !DILocalVariable(name: "ret", scope: !4426, file: !3, line: 977, type: !109)
!5332 = !DILocation(line: 971, column: 36, scope: !4426)
!5333 = !DILocation(line: 971, column: 55, scope: !4426)
!5334 = !DILocation(line: 971, column: 74, scope: !4426)
!5335 = !DILocation(line: 973, column: 2, scope: !4426)
!5336 = !DILocation(line: 973, column: 15, scope: !4426)
!5337 = !DILocation(line: 973, column: 20, scope: !4426)
!5338 = !DILocation(line: 974, column: 2, scope: !4426)
!5339 = !DILocation(line: 974, column: 19, scope: !4426)
!5340 = !DILocation(line: 974, column: 31, scope: !4426)
!5341 = !DILocation(line: 974, column: 37, scope: !4426)
!5342 = !DILocation(line: 975, column: 2, scope: !4426)
!5343 = !DILocation(line: 975, column: 21, scope: !4426)
!5344 = !DILocation(line: 975, column: 27, scope: !4426)
!5345 = !DILocation(line: 975, column: 38, scope: !4426)
!5346 = !DILocation(line: 975, column: 45, scope: !4426)
!5347 = !DILocation(line: 976, column: 2, scope: !4426)
!5348 = !DILocation(line: 976, column: 22, scope: !4426)
!5349 = !DILocation(line: 977, column: 2, scope: !4426)
!5350 = !DILocation(line: 977, column: 6, scope: !4426)
!5351 = !DILocation(line: 983, column: 6, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 983, column: 6)
!5353 = !DILocation(line: 983, column: 9, scope: !5352)
!5354 = !DILocation(line: 983, column: 6, scope: !4426)
!5355 = !DILocation(line: 984, column: 20, scope: !5352)
!5356 = !DILocation(line: 984, column: 26, scope: !5352)
!5357 = !DILocation(line: 984, column: 31, scope: !5352)
!5358 = !DILocation(line: 984, column: 10, scope: !5352)
!5359 = !DILocation(line: 984, column: 3, scope: !5352)
!5360 = !DILocation(line: 986, column: 25, scope: !4426)
!5361 = !DILocation(line: 986, column: 7, scope: !4426)
!5362 = !DILocation(line: 986, column: 29, scope: !4426)
!5363 = !DILocation(line: 986, column: 5, scope: !4426)
!5364 = !DILocation(line: 987, column: 7, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 987, column: 6)
!5366 = !DILocation(line: 987, column: 6, scope: !4426)
!5367 = !DILocation(line: 988, column: 20, scope: !5365)
!5368 = !DILocation(line: 988, column: 26, scope: !5365)
!5369 = !DILocation(line: 988, column: 31, scope: !5365)
!5370 = !DILocation(line: 988, column: 10, scope: !5365)
!5371 = !DILocation(line: 988, column: 3, scope: !5365)
!5372 = !DILocation(line: 990, column: 2, scope: !4426)
!5373 = !{i8 0, i8 2}
!5374 = !DILocation(line: 995, column: 10, scope: !4426)
!5375 = !DILocation(line: 995, column: 14, scope: !4426)
!5376 = !DILocation(line: 995, column: 20, scope: !4426)
!5377 = !DILocation(line: 995, column: 25, scope: !4426)
!5378 = !DILocation(line: 995, column: 8, scope: !4426)
!5379 = !DILocation(line: 995, column: 6, scope: !4426)
!5380 = !DILocation(line: 996, column: 6, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 996, column: 6)
!5382 = !DILocation(line: 996, column: 6, scope: !4426)
!5383 = !DILocation(line: 997, column: 3, scope: !5381)
!5384 = !DILocation(line: 998, column: 9, scope: !4426)
!5385 = !DILocation(line: 998, column: 2, scope: !4426)
!5386 = !DILocation(line: 999, column: 1, scope: !4426)
!5387 = !DISubprogram(name: "drm_ioctl", scope: !214, file: !214, line: 170, type: !3150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5388 = !DISubprogram(name: "__drm_dev_dbg", scope: !201, file: !201, line: 411, type: !5389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{null, !5391, !4479, !200, !935, null}
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !5393, line: 16, size: 448, align: 64, elements: !5394)
!5393 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!5394 = !{!5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !5392, file: !5393, line: 21, baseType: !935, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !5392, file: !5393, line: 22, baseType: !935, size: 64, offset: 64)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !5392, file: !5393, line: 23, baseType: !935, size: 64, offset: 128)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5392, file: !5393, line: 24, baseType: !935, size: 64, offset: 192)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !5392, file: !5393, line: 25, baseType: !7, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !5392, file: !5393, line: 27, baseType: !7, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5392, file: !5393, line: 52, baseType: !7, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5392, file: !5393, line: 57, baseType: !5403, size: 128, offset: 320)
!5403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5392, file: !5393, line: 54, size: 128, elements: !5404)
!5404 = !{!5405, !5420}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !5403, file: !5393, line: 55, baseType: !5406, size: 128)
!5406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !2526, line: 359, size: 128, elements: !5407)
!5407 = !{!5408}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5406, file: !2526, line: 360, baseType: !5409, size: 128)
!5409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2526, line: 85, size: 128, elements: !5410)
!5410 = !{!5411, !5412}
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5409, file: !2526, line: 86, baseType: !283, size: 32)
!5412 = !DIDerivedType(tag: DW_TAG_member, scope: !5409, file: !2526, line: 101, baseType: !5413, size: 64, offset: 64)
!5413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5409, file: !2526, line: 101, size: 64, elements: !5414)
!5414 = !{!5415, !5416, !5417}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5413, file: !2526, line: 102, baseType: !257, size: 64)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5413, file: !2526, line: 103, baseType: !2524, size: 64)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5413, file: !2526, line: 104, baseType: !5418, size: 64)
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5419, size: 64)
!5419 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2526, line: 104, flags: DIFlagFwdDecl)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !5403, file: !5393, line: 56, baseType: !5421, size: 128)
!5421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !2526, line: 363, size: 128, elements: !5422)
!5422 = !{!5423}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5421, file: !2526, line: 364, baseType: !5409, size: 128)
!5424 = distinct !DISubprogram(name: "get_current", scope: !5425, file: !5425, line: 39, type: !5426, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5428)
!5425 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5426 = !DISubroutineType(types: !5427)
!5427 = !{!259}
!5428 = !{!5429, !5431, !5433}
!5429 = !DILocalVariable(name: "pscr_ret__", scope: !5430, file: !5425, line: 41, type: !259)
!5430 = distinct !DILexicalBlock(scope: !5424, file: !5425, line: 41, column: 9)
!5431 = !DILocalVariable(name: "__vpp_verify", scope: !5432, file: !5425, line: 41, type: !2027)
!5432 = distinct !DILexicalBlock(scope: !5430, file: !5425, line: 41, column: 9)
!5433 = !DILocalVariable(name: "pfo_val__", scope: !5434, file: !5425, line: 41, type: !338)
!5434 = distinct !DILexicalBlock(scope: !5430, file: !5425, line: 41, column: 9)
!5435 = !DILocation(line: 41, column: 9, scope: !5430)
!5436 = !DILocation(line: 41, column: 9, scope: !5432)
!5437 = !DILocation(line: 41, column: 9, scope: !5434)
!5438 = !{i64 2148447182}
!5439 = !DILocation(line: 41, column: 9, scope: !5424)
!5440 = !DILocation(line: 41, column: 2, scope: !5424)
!5441 = distinct !DISubprogram(name: "task_pid_nr", scope: !261, file: !261, line: 1580, type: !5442, scopeLine: 1581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5444)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{!3504, !259}
!5444 = !{!5445}
!5445 = !DILocalVariable(name: "tsk", arg: 1, scope: !5441, file: !261, line: 1580, type: !259)
!5446 = !DILocation(line: 1580, column: 53, scope: !5441)
!5447 = !DILocation(line: 1582, column: 9, scope: !5441)
!5448 = !DILocation(line: 1582, column: 14, scope: !5441)
!5449 = !DILocation(line: 1582, column: 2, scope: !5441)
!5450 = distinct !DISubprogram(name: "old_encode_dev", scope: !5451, file: !5451, line: 29, type: !5452, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5454)
!5451 = !DIFile(filename: "./include/linux/kdev_t.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d4069c7bb69bcdf1e01b1b06b87483f5")
!5452 = !DISubroutineType(types: !5453)
!5453 = !{!307, !1161}
!5454 = !{!5455}
!5455 = !DILocalVariable(name: "dev", arg: 1, scope: !5450, file: !5451, line: 29, type: !1161)
!5456 = !DILocation(line: 29, column: 49, scope: !5450)
!5457 = !DILocation(line: 31, column: 10, scope: !5450)
!5458 = !DILocation(line: 31, column: 21, scope: !5450)
!5459 = !DILocation(line: 31, column: 29, scope: !5450)
!5460 = !DILocation(line: 31, column: 27, scope: !5450)
!5461 = !DILocation(line: 31, column: 9, scope: !5450)
!5462 = !DILocation(line: 31, column: 2, scope: !5450)
!5463 = distinct !DISubprogram(name: "compat_drm_version", scope: !3, file: !3, line: 91, type: !4411, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5464)
!5464 = !{!5465, !5466, !5467, !5468, !5481, !5493}
!5465 = !DILocalVariable(name: "file", arg: 1, scope: !5463, file: !3, line: 91, type: !655)
!5466 = !DILocalVariable(name: "cmd", arg: 2, scope: !5463, file: !3, line: 91, type: !7)
!5467 = !DILocalVariable(name: "arg", arg: 3, scope: !5463, file: !3, line: 92, type: !257)
!5468 = !DILocalVariable(name: "v32", scope: !5463, file: !3, line: 94, type: !5469)
!5469 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_version32_t", file: !3, line: 89, baseType: !5470)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_version_32", file: !3, line: 79, size: 288, elements: !5471)
!5471 = !{!5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "version_major", scope: !5470, file: !3, line: 80, baseType: !109, size: 32)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "version_minor", scope: !5470, file: !3, line: 81, baseType: !109, size: 32, offset: 32)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "version_patchlevel", scope: !5470, file: !3, line: 82, baseType: !109, size: 32, offset: 64)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "name_len", scope: !5470, file: !3, line: 83, baseType: !270, size: 32, offset: 96)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5470, file: !3, line: 84, baseType: !270, size: 32, offset: 128)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "date_len", scope: !5470, file: !3, line: 85, baseType: !270, size: 32, offset: 160)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !5470, file: !3, line: 86, baseType: !270, size: 32, offset: 192)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !5470, file: !3, line: 87, baseType: !270, size: 32, offset: 224)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5470, file: !3, line: 88, baseType: !270, size: 32, offset: 256)
!5481 = !DILocalVariable(name: "v", scope: !5463, file: !3, line: 95, type: !5482)
!5482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_version", file: !227, line: 139, size: 512, elements: !5483)
!5483 = !{!5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "version_major", scope: !5482, file: !227, line: 140, baseType: !109, size: 32)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "version_minor", scope: !5482, file: !227, line: 141, baseType: !109, size: 32, offset: 32)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "version_patchlevel", scope: !5482, file: !227, line: 142, baseType: !109, size: 32, offset: 64)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "name_len", scope: !5482, file: !227, line: 143, baseType: !1243, size: 64, offset: 128)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5482, file: !227, line: 144, baseType: !945, size: 64, offset: 192)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "date_len", scope: !5482, file: !227, line: 145, baseType: !1243, size: 64, offset: 256)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !5482, file: !227, line: 146, baseType: !945, size: 64, offset: 320)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !5482, file: !227, line: 147, baseType: !1243, size: 64, offset: 384)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5482, file: !227, line: 148, baseType: !945, size: 64, offset: 448)
!5493 = !DILocalVariable(name: "err", scope: !5463, file: !3, line: 96, type: !109)
!5494 = !DILocation(line: 91, column: 44, scope: !5463)
!5495 = !DILocation(line: 91, column: 63, scope: !5463)
!5496 = !DILocation(line: 92, column: 24, scope: !5463)
!5497 = !DILocation(line: 94, column: 2, scope: !5463)
!5498 = !DILocation(line: 94, column: 18, scope: !5463)
!5499 = !DILocation(line: 95, column: 2, scope: !5463)
!5500 = !DILocation(line: 95, column: 21, scope: !5463)
!5501 = !DILocation(line: 96, column: 2, scope: !5463)
!5502 = !DILocation(line: 96, column: 6, scope: !5463)
!5503 = !DILocation(line: 98, column: 42, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 98, column: 6)
!5505 = !DILocation(line: 98, column: 27, scope: !5504)
!5506 = !DILocation(line: 98, column: 6, scope: !5504)
!5507 = !DILocation(line: 98, column: 6, scope: !5463)
!5508 = !DILocation(line: 99, column: 3, scope: !5504)
!5509 = !DILocation(line: 101, column: 2, scope: !5463)
!5510 = !DILocation(line: 103, column: 27, scope: !5463)
!5511 = !DILocation(line: 104, column: 19, scope: !5463)
!5512 = !DILocation(line: 104, column: 15, scope: !5463)
!5513 = !DILocation(line: 105, column: 26, scope: !5463)
!5514 = !DILocation(line: 105, column: 11, scope: !5463)
!5515 = !DILocation(line: 106, column: 19, scope: !5463)
!5516 = !DILocation(line: 106, column: 15, scope: !5463)
!5517 = !DILocation(line: 107, column: 26, scope: !5463)
!5518 = !DILocation(line: 107, column: 11, scope: !5463)
!5519 = !DILocation(line: 108, column: 19, scope: !5463)
!5520 = !DILocation(line: 108, column: 15, scope: !5463)
!5521 = !DILocation(line: 109, column: 26, scope: !5463)
!5522 = !DILocation(line: 109, column: 11, scope: !5463)
!5523 = !DILocation(line: 103, column: 6, scope: !5463)
!5524 = !DILocation(line: 111, column: 25, scope: !5463)
!5525 = !DILocation(line: 111, column: 8, scope: !5463)
!5526 = !DILocation(line: 111, column: 6, scope: !5463)
!5527 = !DILocation(line: 113, column: 6, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 113, column: 6)
!5529 = !DILocation(line: 113, column: 6, scope: !5463)
!5530 = !DILocation(line: 114, column: 10, scope: !5528)
!5531 = !DILocation(line: 114, column: 3, scope: !5528)
!5532 = !DILocation(line: 116, column: 24, scope: !5463)
!5533 = !DILocation(line: 116, column: 6, scope: !5463)
!5534 = !DILocation(line: 116, column: 20, scope: !5463)
!5535 = !DILocation(line: 117, column: 24, scope: !5463)
!5536 = !DILocation(line: 117, column: 6, scope: !5463)
!5537 = !DILocation(line: 117, column: 20, scope: !5463)
!5538 = !DILocation(line: 118, column: 29, scope: !5463)
!5539 = !DILocation(line: 118, column: 6, scope: !5463)
!5540 = !DILocation(line: 118, column: 25, scope: !5463)
!5541 = !DILocation(line: 119, column: 19, scope: !5463)
!5542 = !DILocation(line: 119, column: 17, scope: !5463)
!5543 = !DILocation(line: 119, column: 6, scope: !5463)
!5544 = !DILocation(line: 119, column: 15, scope: !5463)
!5545 = !DILocation(line: 120, column: 19, scope: !5463)
!5546 = !DILocation(line: 120, column: 17, scope: !5463)
!5547 = !DILocation(line: 120, column: 6, scope: !5463)
!5548 = !DILocation(line: 120, column: 15, scope: !5463)
!5549 = !DILocation(line: 121, column: 19, scope: !5463)
!5550 = !DILocation(line: 121, column: 17, scope: !5463)
!5551 = !DILocation(line: 121, column: 6, scope: !5463)
!5552 = !DILocation(line: 121, column: 15, scope: !5463)
!5553 = !DILocation(line: 122, column: 34, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 122, column: 6)
!5555 = !DILocation(line: 122, column: 19, scope: !5554)
!5556 = !DILocation(line: 122, column: 6, scope: !5554)
!5557 = !DILocation(line: 122, column: 6, scope: !5463)
!5558 = !DILocation(line: 123, column: 3, scope: !5554)
!5559 = !DILocation(line: 124, column: 2, scope: !5463)
!5560 = !DILocation(line: 125, column: 1, scope: !5463)
!5561 = distinct !DISubprogram(name: "compat_drm_getunique", scope: !3, file: !3, line: 132, type: !4411, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5562)
!5562 = !{!5563, !5564, !5565, !5566, !5572, !5577}
!5563 = !DILocalVariable(name: "file", arg: 1, scope: !5561, file: !3, line: 132, type: !655)
!5564 = !DILocalVariable(name: "cmd", arg: 2, scope: !5561, file: !3, line: 132, type: !7)
!5565 = !DILocalVariable(name: "arg", arg: 3, scope: !5561, file: !3, line: 133, type: !257)
!5566 = !DILocalVariable(name: "uq32", scope: !5561, file: !3, line: 135, type: !5567)
!5567 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_unique32_t", file: !3, line: 130, baseType: !5568)
!5568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_unique32", file: !3, line: 127, size: 64, elements: !5569)
!5569 = !{!5570, !5571}
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !5568, file: !3, line: 128, baseType: !270, size: 32)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !5568, file: !3, line: 129, baseType: !270, size: 32, offset: 32)
!5572 = !DILocalVariable(name: "uq", scope: !5561, file: !3, line: 136, type: !5573)
!5573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_unique", file: !227, line: 156, size: 128, elements: !5574)
!5574 = !{!5575, !5576}
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !5573, file: !227, line: 157, baseType: !1243, size: 64)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !5573, file: !227, line: 158, baseType: !945, size: 64, offset: 64)
!5577 = !DILocalVariable(name: "err", scope: !5561, file: !3, line: 137, type: !109)
!5578 = !DILocation(line: 132, column: 46, scope: !5561)
!5579 = !DILocation(line: 132, column: 65, scope: !5561)
!5580 = !DILocation(line: 133, column: 19, scope: !5561)
!5581 = !DILocation(line: 135, column: 2, scope: !5561)
!5582 = !DILocation(line: 135, column: 17, scope: !5561)
!5583 = !DILocation(line: 136, column: 2, scope: !5561)
!5584 = !DILocation(line: 136, column: 20, scope: !5561)
!5585 = !DILocation(line: 137, column: 2, scope: !5561)
!5586 = !DILocation(line: 137, column: 6, scope: !5561)
!5587 = !DILocation(line: 139, column: 43, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 139, column: 6)
!5589 = !DILocation(line: 139, column: 28, scope: !5588)
!5590 = !DILocation(line: 139, column: 6, scope: !5588)
!5591 = !DILocation(line: 139, column: 6, scope: !5561)
!5592 = !DILocation(line: 140, column: 3, scope: !5588)
!5593 = !DILocation(line: 142, column: 2, scope: !5561)
!5594 = !DILocation(line: 144, column: 26, scope: !5561)
!5595 = !DILocation(line: 145, column: 22, scope: !5561)
!5596 = !DILocation(line: 145, column: 17, scope: !5561)
!5597 = !DILocation(line: 146, column: 29, scope: !5561)
!5598 = !DILocation(line: 146, column: 13, scope: !5561)
!5599 = !DILocation(line: 144, column: 7, scope: !5561)
!5600 = !DILocation(line: 149, column: 25, scope: !5561)
!5601 = !DILocation(line: 149, column: 8, scope: !5561)
!5602 = !DILocation(line: 149, column: 6, scope: !5561)
!5603 = !DILocation(line: 150, column: 6, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 150, column: 6)
!5605 = !DILocation(line: 150, column: 6, scope: !5561)
!5606 = !DILocation(line: 151, column: 10, scope: !5604)
!5607 = !DILocation(line: 151, column: 3, scope: !5604)
!5608 = !DILocation(line: 153, column: 23, scope: !5561)
!5609 = !DILocation(line: 153, column: 20, scope: !5561)
!5610 = !DILocation(line: 153, column: 7, scope: !5561)
!5611 = !DILocation(line: 153, column: 18, scope: !5561)
!5612 = !DILocation(line: 154, column: 34, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 154, column: 6)
!5614 = !DILocation(line: 154, column: 19, scope: !5613)
!5615 = !DILocation(line: 154, column: 6, scope: !5613)
!5616 = !DILocation(line: 154, column: 6, scope: !5561)
!5617 = !DILocation(line: 155, column: 3, scope: !5613)
!5618 = !DILocation(line: 156, column: 2, scope: !5561)
!5619 = !DILocation(line: 157, column: 1, scope: !5561)
!5620 = distinct !DISubprogram(name: "compat_drm_getclient", scope: !3, file: !3, line: 261, type: !4411, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5621)
!5621 = !{!5622, !5623, !5624, !5625, !5635, !5637, !5646}
!5622 = !DILocalVariable(name: "file", arg: 1, scope: !5620, file: !3, line: 261, type: !655)
!5623 = !DILocalVariable(name: "cmd", arg: 2, scope: !5620, file: !3, line: 261, type: !7)
!5624 = !DILocalVariable(name: "arg", arg: 3, scope: !5620, file: !3, line: 262, type: !257)
!5625 = !DILocalVariable(name: "c32", scope: !5620, file: !3, line: 264, type: !5626)
!5626 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_client32_t", file: !3, line: 259, baseType: !5627)
!5627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_client32", file: !3, line: 252, size: 192, elements: !5628)
!5628 = !{!5629, !5630, !5631, !5632, !5633, !5634}
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5627, file: !3, line: 253, baseType: !109, size: 32)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "auth", scope: !5627, file: !3, line: 254, baseType: !109, size: 32, offset: 32)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5627, file: !3, line: 255, baseType: !270, size: 32, offset: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5627, file: !3, line: 256, baseType: !270, size: 32, offset: 96)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5627, file: !3, line: 257, baseType: !270, size: 32, offset: 128)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "iocs", scope: !5627, file: !3, line: 258, baseType: !270, size: 32, offset: 160)
!5635 = !DILocalVariable(name: "argp", scope: !5620, file: !3, line: 265, type: !5636)
!5636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5626, size: 64)
!5637 = !DILocalVariable(name: "client", scope: !5620, file: !3, line: 266, type: !5638)
!5638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_client", file: !227, line: 236, size: 320, elements: !5639)
!5639 = !{!5640, !5641, !5642, !5643, !5644, !5645}
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5638, file: !227, line: 237, baseType: !109, size: 32)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "auth", scope: !5638, file: !227, line: 238, baseType: !109, size: 32, offset: 32)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5638, file: !227, line: 239, baseType: !257, size: 64, offset: 64)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5638, file: !227, line: 240, baseType: !257, size: 64, offset: 128)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5638, file: !227, line: 241, baseType: !257, size: 64, offset: 192)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "iocs", scope: !5638, file: !227, line: 242, baseType: !257, size: 64, offset: 256)
!5646 = !DILocalVariable(name: "err", scope: !5620, file: !3, line: 267, type: !109)
!5647 = !DILocation(line: 261, column: 46, scope: !5620)
!5648 = !DILocation(line: 261, column: 65, scope: !5620)
!5649 = !DILocation(line: 262, column: 19, scope: !5620)
!5650 = !DILocation(line: 264, column: 2, scope: !5620)
!5651 = !DILocation(line: 264, column: 17, scope: !5620)
!5652 = !DILocation(line: 265, column: 2, scope: !5620)
!5653 = !DILocation(line: 265, column: 25, scope: !5620)
!5654 = !DILocation(line: 265, column: 47, scope: !5620)
!5655 = !DILocation(line: 265, column: 32, scope: !5620)
!5656 = !DILocation(line: 266, column: 2, scope: !5620)
!5657 = !DILocation(line: 266, column: 20, scope: !5620)
!5658 = !DILocation(line: 267, column: 2, scope: !5620)
!5659 = !DILocation(line: 267, column: 6, scope: !5620)
!5660 = !DILocation(line: 269, column: 27, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 269, column: 6)
!5662 = !DILocation(line: 269, column: 6, scope: !5661)
!5663 = !DILocation(line: 269, column: 6, scope: !5620)
!5664 = !DILocation(line: 270, column: 3, scope: !5661)
!5665 = !DILocation(line: 272, column: 2, scope: !5620)
!5666 = !DILocation(line: 274, column: 19, scope: !5620)
!5667 = !DILocation(line: 274, column: 9, scope: !5620)
!5668 = !DILocation(line: 274, column: 13, scope: !5620)
!5669 = !DILocation(line: 276, column: 25, scope: !5620)
!5670 = !DILocation(line: 276, column: 8, scope: !5620)
!5671 = !DILocation(line: 276, column: 6, scope: !5620)
!5672 = !DILocation(line: 277, column: 6, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 277, column: 6)
!5674 = !DILocation(line: 277, column: 6, scope: !5620)
!5675 = !DILocation(line: 278, column: 10, scope: !5673)
!5676 = !DILocation(line: 278, column: 3, scope: !5673)
!5677 = !DILocation(line: 280, column: 19, scope: !5620)
!5678 = !DILocation(line: 280, column: 6, scope: !5620)
!5679 = !DILocation(line: 280, column: 10, scope: !5620)
!5680 = !DILocation(line: 281, column: 20, scope: !5620)
!5681 = !DILocation(line: 281, column: 6, scope: !5620)
!5682 = !DILocation(line: 281, column: 11, scope: !5620)
!5683 = !DILocation(line: 282, column: 19, scope: !5620)
!5684 = !DILocation(line: 282, column: 12, scope: !5620)
!5685 = !DILocation(line: 282, column: 6, scope: !5620)
!5686 = !DILocation(line: 282, column: 10, scope: !5620)
!5687 = !DILocation(line: 283, column: 19, scope: !5620)
!5688 = !DILocation(line: 283, column: 12, scope: !5620)
!5689 = !DILocation(line: 283, column: 6, scope: !5620)
!5690 = !DILocation(line: 283, column: 10, scope: !5620)
!5691 = !DILocation(line: 284, column: 21, scope: !5620)
!5692 = !DILocation(line: 284, column: 14, scope: !5620)
!5693 = !DILocation(line: 284, column: 6, scope: !5620)
!5694 = !DILocation(line: 284, column: 12, scope: !5620)
!5695 = !DILocation(line: 285, column: 20, scope: !5620)
!5696 = !DILocation(line: 285, column: 13, scope: !5620)
!5697 = !DILocation(line: 285, column: 6, scope: !5620)
!5698 = !DILocation(line: 285, column: 11, scope: !5620)
!5699 = !DILocation(line: 287, column: 19, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 287, column: 6)
!5701 = !DILocation(line: 287, column: 6, scope: !5700)
!5702 = !DILocation(line: 287, column: 6, scope: !5620)
!5703 = !DILocation(line: 288, column: 3, scope: !5700)
!5704 = !DILocation(line: 289, column: 2, scope: !5620)
!5705 = !DILocation(line: 290, column: 1, scope: !5620)
!5706 = distinct !DISubprogram(name: "compat_drm_getstats", scope: !3, file: !3, line: 300, type: !4411, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5707)
!5707 = !{!5708, !5709, !5710, !5711}
!5708 = !DILocalVariable(name: "file", arg: 1, scope: !5706, file: !3, line: 300, type: !655)
!5709 = !DILocalVariable(name: "cmd", arg: 2, scope: !5706, file: !3, line: 300, type: !7)
!5710 = !DILocalVariable(name: "arg", arg: 3, scope: !5706, file: !3, line: 301, type: !257)
!5711 = !DILocalVariable(name: "argp", scope: !5706, file: !3, line: 303, type: !5712)
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5713, size: 64)
!5713 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_stats32_t", file: !3, line: 298, baseType: !5714)
!5714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_stats32", file: !3, line: 292, size: 992, elements: !5715)
!5715 = !{!5716, !5717}
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5714, file: !3, line: 293, baseType: !270, size: 32)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5714, file: !3, line: 297, baseType: !5718, size: 960, offset: 32)
!5718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5719, size: 960, elements: !5723)
!5719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5714, file: !3, line: 294, size: 64, elements: !5720)
!5720 = !{!5721, !5722}
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5719, file: !3, line: 295, baseType: !270, size: 32)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5719, file: !3, line: 296, baseType: !226, size: 32, offset: 32)
!5723 = !{!5724}
!5724 = !DISubrange(count: 15)
!5725 = !DILocation(line: 300, column: 45, scope: !5706)
!5726 = !DILocation(line: 300, column: 64, scope: !5706)
!5727 = !DILocation(line: 301, column: 25, scope: !5706)
!5728 = !DILocation(line: 303, column: 2, scope: !5706)
!5729 = !DILocation(line: 303, column: 24, scope: !5706)
!5730 = !DILocation(line: 303, column: 46, scope: !5706)
!5731 = !DILocation(line: 303, column: 31, scope: !5706)
!5732 = !DILocation(line: 306, column: 17, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 306, column: 6)
!5734 = !DILocation(line: 306, column: 6, scope: !5733)
!5735 = !DILocation(line: 306, column: 6, scope: !5706)
!5736 = !DILocation(line: 307, column: 3, scope: !5733)
!5737 = !DILocation(line: 308, column: 2, scope: !5706)
!5738 = !DILocation(line: 309, column: 1, scope: !5706)
!5739 = distinct !DISubprogram(name: "compat_drm_setunique", scope: !3, file: !3, line: 159, type: !4411, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5740)
!5740 = !{!5741, !5742, !5743}
!5741 = !DILocalVariable(name: "file", arg: 1, scope: !5739, file: !3, line: 159, type: !655)
!5742 = !DILocalVariable(name: "cmd", arg: 2, scope: !5739, file: !3, line: 159, type: !7)
!5743 = !DILocalVariable(name: "arg", arg: 3, scope: !5739, file: !3, line: 160, type: !257)
!5744 = !DILocation(line: 159, column: 46, scope: !5739)
!5745 = !DILocation(line: 159, column: 65, scope: !5739)
!5746 = !DILocation(line: 160, column: 19, scope: !5739)
!5747 = !DILocation(line: 163, column: 2, scope: !5739)
!5748 = distinct !DISubprogram(name: "compat_drm_wait_vblank", scope: !3, file: !3, line: 841, type: !4411, scopeLine: 843, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5749)
!5749 = !{!5750, !5751, !5752, !5753, !5771, !5772, !5788}
!5750 = !DILocalVariable(name: "file", arg: 1, scope: !5748, file: !3, line: 841, type: !655)
!5751 = !DILocalVariable(name: "cmd", arg: 2, scope: !5748, file: !3, line: 841, type: !7)
!5752 = !DILocalVariable(name: "arg", arg: 3, scope: !5748, file: !3, line: 842, type: !257)
!5753 = !DILocalVariable(name: "argp", scope: !5748, file: !3, line: 844, type: !5754)
!5754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5755, size: 64)
!5755 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_wait_vblank32_t", file: !3, line: 839, baseType: !5756)
!5756 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "drm_wait_vblank32", file: !3, line: 836, size: 128, elements: !5757)
!5757 = !{!5758, !5764}
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5756, file: !3, line: 837, baseType: !5759, size: 96)
!5759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_wait_vblank_request32", file: !3, line: 823, size: 96, elements: !5760)
!5760 = !{!5761, !5762, !5763}
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5759, file: !3, line: 824, baseType: !244, size: 32)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5759, file: !3, line: 825, baseType: !7, size: 32, offset: 32)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5759, file: !3, line: 826, baseType: !270, size: 32, offset: 64)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !5756, file: !3, line: 838, baseType: !5765, size: 128)
!5765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_wait_vblank_reply32", file: !3, line: 829, size: 128, elements: !5766)
!5766 = !{!5767, !5768, !5769, !5770}
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5765, file: !3, line: 830, baseType: !244, size: 32)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5765, file: !3, line: 831, baseType: !7, size: 32, offset: 32)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "tval_sec", scope: !5765, file: !3, line: 832, baseType: !864, size: 32, offset: 64)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "tval_usec", scope: !5765, file: !3, line: 833, baseType: !864, size: 32, offset: 96)
!5771 = !DILocalVariable(name: "req32", scope: !5748, file: !3, line: 845, type: !5755)
!5772 = !DILocalVariable(name: "req", scope: !5748, file: !3, line: 846, type: !5773)
!5773 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "drm_wait_vblank", file: !227, line: 512, size: 192, elements: !5774)
!5774 = !{!5775, !5781}
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5773, file: !227, line: 513, baseType: !5776, size: 128)
!5776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_wait_vblank_request", file: !227, line: 494, size: 128, elements: !5777)
!5777 = !{!5778, !5779, !5780}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5776, file: !227, line: 495, baseType: !244, size: 32)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5776, file: !227, line: 496, baseType: !7, size: 32, offset: 32)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5776, file: !227, line: 497, baseType: !257, size: 64, offset: 64)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !5773, file: !227, line: 514, baseType: !5782, size: 192)
!5782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_wait_vblank_reply", file: !227, line: 500, size: 192, elements: !5783)
!5783 = !{!5784, !5785, !5786, !5787}
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5782, file: !227, line: 501, baseType: !244, size: 32)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5782, file: !227, line: 502, baseType: !7, size: 32, offset: 32)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "tval_sec", scope: !5782, file: !227, line: 503, baseType: !255, size: 64, offset: 64)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "tval_usec", scope: !5782, file: !227, line: 504, baseType: !255, size: 64, offset: 128)
!5788 = !DILocalVariable(name: "err", scope: !5748, file: !3, line: 847, type: !109)
!5789 = !DILocation(line: 841, column: 48, scope: !5748)
!5790 = !DILocation(line: 841, column: 67, scope: !5748)
!5791 = !DILocation(line: 842, column: 21, scope: !5748)
!5792 = !DILocation(line: 844, column: 2, scope: !5748)
!5793 = !DILocation(line: 844, column: 30, scope: !5748)
!5794 = !DILocation(line: 844, column: 52, scope: !5748)
!5795 = !DILocation(line: 844, column: 37, scope: !5748)
!5796 = !DILocation(line: 845, column: 2, scope: !5748)
!5797 = !DILocation(line: 845, column: 22, scope: !5748)
!5798 = !DILocation(line: 846, column: 2, scope: !5748)
!5799 = !DILocation(line: 846, column: 24, scope: !5748)
!5800 = !DILocation(line: 847, column: 2, scope: !5748)
!5801 = !DILocation(line: 847, column: 6, scope: !5748)
!5802 = !DILocation(line: 849, column: 29, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 849, column: 6)
!5804 = !DILocation(line: 849, column: 6, scope: !5803)
!5805 = !DILocation(line: 849, column: 6, scope: !5748)
!5806 = !DILocation(line: 850, column: 3, scope: !5803)
!5807 = !DILocation(line: 852, column: 2, scope: !5748)
!5808 = !DILocation(line: 854, column: 35, scope: !5748)
!5809 = !DILocation(line: 854, column: 14, scope: !5748)
!5810 = !DILocation(line: 854, column: 19, scope: !5748)
!5811 = !DILocation(line: 855, column: 39, scope: !5748)
!5812 = !DILocation(line: 855, column: 14, scope: !5748)
!5813 = !DILocation(line: 855, column: 23, scope: !5748)
!5814 = !DILocation(line: 856, column: 37, scope: !5748)
!5815 = !DILocation(line: 856, column: 23, scope: !5748)
!5816 = !DILocation(line: 856, column: 14, scope: !5748)
!5817 = !DILocation(line: 856, column: 21, scope: !5748)
!5818 = !DILocation(line: 857, column: 25, scope: !5748)
!5819 = !DILocation(line: 857, column: 8, scope: !5748)
!5820 = !DILocation(line: 857, column: 6, scope: !5748)
!5821 = !DILocation(line: 859, column: 31, scope: !5748)
!5822 = !DILocation(line: 859, column: 14, scope: !5748)
!5823 = !DILocation(line: 859, column: 19, scope: !5748)
!5824 = !DILocation(line: 860, column: 35, scope: !5748)
!5825 = !DILocation(line: 860, column: 14, scope: !5748)
!5826 = !DILocation(line: 860, column: 23, scope: !5748)
!5827 = !DILocation(line: 861, column: 35, scope: !5748)
!5828 = !DILocation(line: 861, column: 25, scope: !5748)
!5829 = !DILocation(line: 861, column: 14, scope: !5748)
!5830 = !DILocation(line: 861, column: 23, scope: !5748)
!5831 = !DILocation(line: 862, column: 36, scope: !5748)
!5832 = !DILocation(line: 862, column: 26, scope: !5748)
!5833 = !DILocation(line: 862, column: 14, scope: !5748)
!5834 = !DILocation(line: 862, column: 24, scope: !5748)
!5835 = !DILocation(line: 863, column: 19, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 863, column: 6)
!5837 = !DILocation(line: 863, column: 6, scope: !5836)
!5838 = !DILocation(line: 863, column: 6, scope: !5748)
!5839 = !DILocation(line: 864, column: 3, scope: !5836)
!5840 = !DILocation(line: 866, column: 9, scope: !5748)
!5841 = !DILocation(line: 866, column: 2, scope: !5748)
!5842 = !DILocation(line: 867, column: 1, scope: !5748)
!5843 = distinct !DISubprogram(name: "compat_drm_update_draw", scope: !3, file: !3, line: 815, type: !4411, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5844)
!5844 = !{!5845, !5846, !5847}
!5845 = !DILocalVariable(name: "file", arg: 1, scope: !5843, file: !3, line: 815, type: !655)
!5846 = !DILocalVariable(name: "cmd", arg: 2, scope: !5843, file: !3, line: 815, type: !7)
!5847 = !DILocalVariable(name: "arg", arg: 3, scope: !5843, file: !3, line: 816, type: !257)
!5848 = !DILocation(line: 815, column: 48, scope: !5843)
!5849 = !DILocation(line: 815, column: 67, scope: !5843)
!5850 = !DILocation(line: 816, column: 21, scope: !5843)
!5851 = !DILocation(line: 819, column: 2, scope: !5843)
!5852 = distinct !DISubprogram(name: "compat_drm_mode_addfb2", scope: !3, file: !3, line: 882, type: !4411, scopeLine: 884, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5853)
!5853 = !{!5854, !5855, !5856, !5857, !5872, !5873, !5874, !5878, !5879, !5880, !5881}
!5854 = !DILocalVariable(name: "file", arg: 1, scope: !5852, file: !3, line: 882, type: !655)
!5855 = !DILocalVariable(name: "cmd", arg: 2, scope: !5852, file: !3, line: 882, type: !7)
!5856 = !DILocalVariable(name: "arg", arg: 3, scope: !5852, file: !3, line: 883, type: !257)
!5857 = !DILocalVariable(name: "argp", scope: !5852, file: !3, line: 885, type: !5858)
!5858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5859, size: 64)
!5859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd232", file: !3, line: 870, size: 800, elements: !5860)
!5860 = !{!5861, !5862, !5863, !5864, !5865, !5866, !5868, !5869, !5870}
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !5859, file: !3, line: 871, baseType: !270, size: 32)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5859, file: !3, line: 872, baseType: !270, size: 32, offset: 32)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5859, file: !3, line: 873, baseType: !270, size: 32, offset: 64)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5859, file: !3, line: 874, baseType: !270, size: 32, offset: 96)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5859, file: !3, line: 875, baseType: !270, size: 32, offset: 128)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5859, file: !3, line: 876, baseType: !5867, size: 128, offset: 160)
!5867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 128, elements: !742)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5859, file: !3, line: 877, baseType: !5867, size: 128, offset: 288)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5859, file: !3, line: 878, baseType: !5867, size: 128, offset: 416)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5859, file: !3, line: 879, baseType: !5871, size: 256, offset: 544)
!5871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 256, elements: !742)
!5872 = !DILocalVariable(name: "req64", scope: !5852, file: !3, line: 886, type: !5113)
!5873 = !DILocalVariable(name: "err", scope: !5852, file: !3, line: 887, type: !109)
!5874 = !DILocalVariable(name: "__ret_pu", scope: !5875, file: !3, line: 903, type: !109)
!5875 = distinct !DILexicalBlock(scope: !5876, file: !3, line: 903, column: 6)
!5876 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 903, column: 6)
!5877 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 903, column: 6)
!5878 = !DILocalVariable(name: "__ptr_pu", scope: !5875, file: !3, line: 903, type: !256)
!5879 = !DILocalVariable(name: "__val_pu", scope: !5875, file: !3, line: 903, type: !270)
!5880 = !DILocalVariable(name: "__x", scope: !5875, file: !3, line: 903, type: !270)
!5881 = !DILocalVariable(name: "__ptr", scope: !5875, file: !3, line: 903, type: !3457)
!5882 = !DILocation(line: 882, column: 48, scope: !5852)
!5883 = !DILocation(line: 882, column: 67, scope: !5852)
!5884 = !DILocation(line: 883, column: 21, scope: !5852)
!5885 = !DILocation(line: 885, column: 2, scope: !5852)
!5886 = !DILocation(line: 885, column: 36, scope: !5852)
!5887 = !DILocation(line: 885, column: 58, scope: !5852)
!5888 = !DILocation(line: 885, column: 43, scope: !5852)
!5889 = !DILocation(line: 886, column: 2, scope: !5852)
!5890 = !DILocation(line: 886, column: 26, scope: !5852)
!5891 = !DILocation(line: 887, column: 2, scope: !5852)
!5892 = !DILocation(line: 887, column: 6, scope: !5852)
!5893 = !DILocation(line: 889, column: 2, scope: !5852)
!5894 = !DILocation(line: 891, column: 29, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 891, column: 6)
!5896 = !DILocation(line: 891, column: 6, scope: !5895)
!5897 = !DILocation(line: 891, column: 6, scope: !5852)
!5898 = !DILocation(line: 893, column: 3, scope: !5895)
!5899 = !DILocation(line: 895, column: 28, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 895, column: 6)
!5901 = !DILocation(line: 895, column: 39, scope: !5900)
!5902 = !DILocation(line: 895, column: 45, scope: !5900)
!5903 = !DILocation(line: 895, column: 6, scope: !5900)
!5904 = !DILocation(line: 895, column: 6, scope: !5852)
!5905 = !DILocation(line: 897, column: 3, scope: !5900)
!5906 = !DILocation(line: 899, column: 25, scope: !5852)
!5907 = !DILocation(line: 899, column: 8, scope: !5852)
!5908 = !DILocation(line: 899, column: 6, scope: !5852)
!5909 = !DILocation(line: 900, column: 6, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 900, column: 6)
!5911 = !DILocation(line: 900, column: 6, scope: !5852)
!5912 = !DILocation(line: 901, column: 10, scope: !5910)
!5913 = !DILocation(line: 901, column: 3, scope: !5910)
!5914 = !DILocation(line: 903, column: 6, scope: !5876)
!5915 = !DILocation(line: 903, column: 6, scope: !5875)
!5916 = !{i64 2155600218}
!5917 = !DILocation(line: 903, column: 6, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 903, column: 6)
!5919 = !DILocation(line: 903, column: 6, scope: !5877)
!5920 = !DILocation(line: 903, column: 6, scope: !5852)
!5921 = !DILocation(line: 904, column: 3, scope: !5877)
!5922 = !DILocation(line: 906, column: 2, scope: !5852)
!5923 = !DILocation(line: 907, column: 1, scope: !5852)
!5924 = distinct !DISubprogram(name: "copy_from_user", scope: !5925, file: !5925, line: 180, type: !5926, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5928)
!5925 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5926 = !DISubroutineType(types: !5927)
!5927 = !{!257, !256, !2027, !257}
!5928 = !{!5929, !5930, !5931}
!5929 = !DILocalVariable(name: "to", arg: 1, scope: !5924, file: !5925, line: 180, type: !256)
!5930 = !DILocalVariable(name: "from", arg: 2, scope: !5924, file: !5925, line: 180, type: !2027)
!5931 = !DILocalVariable(name: "n", arg: 3, scope: !5924, file: !5925, line: 180, type: !257)
!5932 = !DILocation(line: 180, column: 22, scope: !5924)
!5933 = !DILocation(line: 180, column: 45, scope: !5924)
!5934 = !DILocation(line: 180, column: 65, scope: !5924)
!5935 = !DILocation(line: 182, column: 22, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5924, file: !5925, line: 182, column: 6)
!5937 = !DILocation(line: 182, column: 26, scope: !5936)
!5938 = !DILocation(line: 182, column: 6, scope: !5936)
!5939 = !DILocation(line: 182, column: 6, scope: !5924)
!5940 = !DILocation(line: 183, column: 23, scope: !5936)
!5941 = !DILocation(line: 183, column: 27, scope: !5936)
!5942 = !DILocation(line: 183, column: 33, scope: !5936)
!5943 = !DILocation(line: 183, column: 7, scope: !5936)
!5944 = !DILocation(line: 183, column: 5, scope: !5936)
!5945 = !DILocation(line: 183, column: 3, scope: !5936)
!5946 = !DILocation(line: 184, column: 9, scope: !5924)
!5947 = !DILocation(line: 184, column: 2, scope: !5924)
!5948 = distinct !DISubprogram(name: "compat_ptr", scope: !3953, file: !3953, line: 977, type: !5949, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5951)
!5949 = !DISubroutineType(types: !5950)
!5950 = !{!256, !3959}
!5951 = !{!5952}
!5952 = !DILocalVariable(name: "uptr", arg: 1, scope: !5948, file: !3953, line: 977, type: !3959)
!5953 = !DILocation(line: 977, column: 53, scope: !5948)
!5954 = !DILocation(line: 979, column: 39, scope: !5948)
!5955 = !DILocation(line: 979, column: 24, scope: !5948)
!5956 = !DILocation(line: 979, column: 9, scope: !5948)
!5957 = !DILocation(line: 979, column: 2, scope: !5948)
!5958 = !DISubprogram(name: "drm_ioctl_kernel", scope: !214, file: !214, line: 171, type: !5959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5959 = !DISubroutineType(types: !5960)
!5960 = !{!255, !655, !5961, !256, !270}
!5961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5962, size: 64)
!5962 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_ioctl_t", file: !214, line: 54, baseType: !5963)
!5963 = !DISubroutineType(types: !5964)
!5964 = !{!109, !4453, !256, !4433}
!5965 = distinct !DISubprogram(name: "copy_to_user", scope: !5925, file: !5925, line: 188, type: !5926, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5966)
!5966 = !{!5967, !5968, !5969}
!5967 = !DILocalVariable(name: "to", arg: 1, scope: !5965, file: !5925, line: 188, type: !256)
!5968 = !DILocalVariable(name: "from", arg: 2, scope: !5965, file: !5925, line: 188, type: !2027)
!5969 = !DILocalVariable(name: "n", arg: 3, scope: !5965, file: !5925, line: 188, type: !257)
!5970 = !DILocation(line: 188, column: 27, scope: !5965)
!5971 = !DILocation(line: 188, column: 43, scope: !5965)
!5972 = !DILocation(line: 188, column: 63, scope: !5965)
!5973 = !DILocation(line: 190, column: 22, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5965, file: !5925, line: 190, column: 6)
!5975 = !DILocation(line: 190, column: 28, scope: !5974)
!5976 = !DILocation(line: 190, column: 6, scope: !5974)
!5977 = !DILocation(line: 190, column: 6, scope: !5965)
!5978 = !DILocation(line: 191, column: 21, scope: !5974)
!5979 = !DILocation(line: 191, column: 25, scope: !5974)
!5980 = !DILocation(line: 191, column: 31, scope: !5974)
!5981 = !DILocation(line: 191, column: 7, scope: !5974)
!5982 = !DILocation(line: 191, column: 5, scope: !5974)
!5983 = !DILocation(line: 191, column: 3, scope: !5974)
!5984 = !DILocation(line: 192, column: 9, scope: !5965)
!5985 = !DILocation(line: 192, column: 2, scope: !5965)
!5986 = distinct !DISubprogram(name: "check_copy_size", scope: !4401, file: !4401, line: 237, type: !5987, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5989)
!5987 = !DISubroutineType(types: !5988)
!5988 = !{!932, !2027, !1242, !932}
!5989 = !{!5990, !5991, !5992, !5993, !5994, !5997}
!5990 = !DILocalVariable(name: "addr", arg: 1, scope: !5986, file: !4401, line: 237, type: !2027)
!5991 = !DILocalVariable(name: "bytes", arg: 2, scope: !5986, file: !4401, line: 237, type: !1242)
!5992 = !DILocalVariable(name: "is_source", arg: 3, scope: !5986, file: !4401, line: 237, type: !932)
!5993 = !DILocalVariable(name: "sz", scope: !5986, file: !4401, line: 239, type: !109)
!5994 = !DILocalVariable(name: "__ret_warn_on", scope: !5995, file: !4401, line: 249, type: !109)
!5995 = distinct !DILexicalBlock(scope: !5996, file: !4401, line: 249, column: 6)
!5996 = distinct !DILexicalBlock(scope: !5986, file: !4401, line: 249, column: 6)
!5997 = !DILocalVariable(name: "__flags", scope: !5998, file: !4401, line: 249, type: !109)
!5998 = distinct !DILexicalBlock(scope: !5999, file: !4401, line: 249, column: 6)
!5999 = distinct !DILexicalBlock(scope: !5995, file: !4401, line: 249, column: 6)
!6000 = !DILocation(line: 237, column: 29, scope: !5986)
!6001 = !DILocation(line: 237, column: 42, scope: !5986)
!6002 = !DILocation(line: 237, column: 54, scope: !5986)
!6003 = !DILocation(line: 239, column: 2, scope: !5986)
!6004 = !DILocation(line: 239, column: 6, scope: !5986)
!6005 = !DILocation(line: 239, column: 33, scope: !5986)
!6006 = !DILocation(line: 239, column: 11, scope: !5986)
!6007 = !DILocation(line: 240, column: 6, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !5986, file: !4401, line: 240, column: 6)
!6009 = !DILocation(line: 0, scope: !6008)
!6010 = !DILocation(line: 240, column: 6, scope: !5986)
!6011 = !DILocation(line: 241, column: 29, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6013, file: !4401, line: 241, column: 7)
!6013 = distinct !DILexicalBlock(scope: !6008, file: !4401, line: 240, column: 39)
!6014 = !DILocation(line: 241, column: 8, scope: !6012)
!6015 = !DILocation(line: 241, column: 7, scope: !6013)
!6016 = !DILocation(line: 242, column: 18, scope: !6012)
!6017 = !DILocation(line: 242, column: 22, scope: !6012)
!6018 = !DILocation(line: 242, column: 4, scope: !6012)
!6019 = !DILocation(line: 243, column: 12, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6012, file: !4401, line: 243, column: 12)
!6021 = !DILocation(line: 243, column: 12, scope: !6012)
!6022 = !DILocation(line: 244, column: 4, scope: !6020)
!6023 = !{i32 2089052}
!6024 = !DILocation(line: 246, column: 4, scope: !6020)
!6025 = !{i32 2089081}
!6026 = !DILocation(line: 247, column: 3, scope: !6013)
!6027 = !DILocation(line: 249, column: 6, scope: !5995)
!6028 = !DILocation(line: 249, column: 6, scope: !5999)
!6029 = !DILocation(line: 249, column: 6, scope: !5998)
!6030 = !DILocation(line: 249, column: 6, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !5998, file: !4401, line: 249, column: 6)
!6032 = !DILocation(line: 249, column: 6, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !5998, file: !4401, line: 249, column: 6)
!6034 = !{i64 2149589514, i64 2149589543, i64 2149589589, i64 2149589647, i64 2149589701, i64 2149589755, i64 2149589810, i64 2149589841, i64 2149590149, i64 2149590155, i64 2149590202, i64 2149590225, i64 2149590251}
!6035 = !DILocation(line: 249, column: 6, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !5998, file: !4401, line: 249, column: 6)
!6037 = !DILocation(line: 249, column: 6, scope: !5996)
!6038 = !DILocation(line: 249, column: 6, scope: !5986)
!6039 = !DILocation(line: 250, column: 3, scope: !5996)
!6040 = !DILocation(line: 251, column: 20, scope: !5986)
!6041 = !DILocation(line: 251, column: 26, scope: !5986)
!6042 = !DILocation(line: 251, column: 33, scope: !5986)
!6043 = !DILocation(line: 251, column: 2, scope: !5986)
!6044 = !DILocation(line: 252, column: 2, scope: !5986)
!6045 = !DILocation(line: 253, column: 1, scope: !5986)
!6046 = !DISubprogram(name: "_copy_from_user", scope: !5925, file: !5925, line: 158, type: !5926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6047 = distinct !DISubprogram(name: "copy_overflow", scope: !4401, file: !4401, line: 230, type: !6048, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6050)
!6048 = !DISubroutineType(types: !6049)
!6049 = !{null, !109, !257}
!6050 = !{!6051, !6052}
!6051 = !DILocalVariable(name: "size", arg: 1, scope: !6047, file: !4401, line: 230, type: !109)
!6052 = !DILocalVariable(name: "count", arg: 2, scope: !6047, file: !4401, line: 230, type: !257)
!6053 = !DILocation(line: 230, column: 38, scope: !6047)
!6054 = !DILocation(line: 230, column: 58, scope: !6047)
!6055 = !DILocation(line: 233, column: 19, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6047, file: !4401, line: 232, column: 6)
!6057 = !DILocation(line: 233, column: 25, scope: !6056)
!6058 = !DILocation(line: 233, column: 3, scope: !6056)
!6059 = !DILocation(line: 234, column: 1, scope: !6047)
!6060 = !DISubprogram(name: "__bad_copy_from", scope: !4401, file: !4401, line: 224, type: !2562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6061 = !DISubprogram(name: "__bad_copy_to", scope: !4401, file: !4401, line: 226, type: !2562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6062 = distinct !DISubprogram(name: "check_object_size", scope: !4401, file: !4401, line: 218, type: !6063, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6065)
!6063 = !DISubroutineType(types: !6064)
!6064 = !{null, !2027, !257, !932}
!6065 = !{!6066, !6067, !6068}
!6066 = !DILocalVariable(name: "ptr", arg: 1, scope: !6062, file: !4401, line: 218, type: !2027)
!6067 = !DILocalVariable(name: "n", arg: 2, scope: !6062, file: !4401, line: 218, type: !257)
!6068 = !DILocalVariable(name: "to_user", arg: 3, scope: !6062, file: !4401, line: 219, type: !932)
!6069 = !DILocation(line: 218, column: 50, scope: !6062)
!6070 = !DILocation(line: 218, column: 69, scope: !6062)
!6071 = !DILocation(line: 219, column: 15, scope: !6062)
!6072 = !DILocation(line: 220, column: 3, scope: !6062)
!6073 = !DISubprogram(name: "__copy_overflow", scope: !4401, file: !4401, line: 228, type: !6048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6074 = !DISubprogram(name: "_copy_to_user", scope: !5925, file: !5925, line: 176, type: !5926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6075 = distinct !DISubprogram(name: "clear_user", scope: !6076, file: !6076, line: 188, type: !6077, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6079)
!6076 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!6077 = !DISubroutineType(types: !6078)
!6078 = !{!257, !256, !257}
!6079 = !{!6080, !6081}
!6080 = !DILocalVariable(name: "to", arg: 1, scope: !6075, file: !6076, line: 188, type: !256)
!6081 = !DILocalVariable(name: "n", arg: 2, scope: !6075, file: !6076, line: 188, type: !257)
!6082 = !DILocation(line: 188, column: 62, scope: !6075)
!6083 = !DILocation(line: 188, column: 80, scope: !6075)
!6084 = !DILocation(line: 190, column: 18, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6075, file: !6076, line: 190, column: 6)
!6086 = !DILocation(line: 190, column: 22, scope: !6085)
!6087 = !DILocation(line: 190, column: 6, scope: !6085)
!6088 = !DILocation(line: 190, column: 6, scope: !6075)
!6089 = !DILocation(line: 191, column: 23, scope: !6085)
!6090 = !DILocation(line: 191, column: 27, scope: !6085)
!6091 = !DILocation(line: 191, column: 10, scope: !6085)
!6092 = !DILocation(line: 191, column: 3, scope: !6085)
!6093 = !DILocation(line: 192, column: 9, scope: !6075)
!6094 = !DILocation(line: 192, column: 2, scope: !6075)
!6095 = !DILocation(line: 193, column: 1, scope: !6075)
!6096 = distinct !DISubprogram(name: "__access_ok", scope: !6076, file: !6076, line: 85, type: !6097, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6099)
!6097 = !DISubroutineType(types: !6098)
!6098 = !{!932, !2027, !257}
!6099 = !{!6100, !6101, !6102}
!6100 = !DILocalVariable(name: "ptr", arg: 1, scope: !6096, file: !6076, line: 85, type: !2027)
!6101 = !DILocalVariable(name: "size", arg: 2, scope: !6096, file: !6076, line: 85, type: !257)
!6102 = !DILocalVariable(name: "sum", scope: !6103, file: !6076, line: 90, type: !257)
!6103 = distinct !DILexicalBlock(scope: !6104, file: !6076, line: 89, column: 9)
!6104 = distinct !DILexicalBlock(scope: !6096, file: !6076, line: 87, column: 6)
!6105 = !DILocation(line: 85, column: 51, scope: !6096)
!6106 = !DILocation(line: 85, column: 70, scope: !6096)
!6107 = !DILocation(line: 87, column: 27, scope: !6104)
!6108 = !DILocation(line: 87, column: 32, scope: !6104)
!6109 = !DILocation(line: 87, column: 6, scope: !6104)
!6110 = !DILocation(line: 87, column: 46, scope: !6104)
!6111 = !DILocation(line: 87, column: 49, scope: !6104)
!6112 = !DILocation(line: 87, column: 54, scope: !6104)
!6113 = !DILocation(line: 87, column: 6, scope: !6096)
!6114 = !DILocation(line: 88, column: 10, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6104, file: !6076, line: 87, column: 68)
!6116 = !DILocation(line: 88, column: 3, scope: !6115)
!6117 = !DILocation(line: 90, column: 3, scope: !6103)
!6118 = !DILocation(line: 90, column: 17, scope: !6103)
!6119 = !DILocation(line: 90, column: 23, scope: !6103)
!6120 = !DILocation(line: 90, column: 45, scope: !6103)
!6121 = !DILocation(line: 90, column: 30, scope: !6103)
!6122 = !DILocation(line: 90, column: 28, scope: !6103)
!6123 = !DILocation(line: 91, column: 10, scope: !6103)
!6124 = !DILocation(line: 91, column: 34, scope: !6103)
!6125 = !DILocation(line: 91, column: 37, scope: !6103)
!6126 = !DILocation(line: 91, column: 59, scope: !6103)
!6127 = !DILocation(line: 91, column: 44, scope: !6103)
!6128 = !DILocation(line: 91, column: 41, scope: !6103)
!6129 = !DILocation(line: 0, scope: !6103)
!6130 = !DILocation(line: 91, column: 3, scope: !6103)
!6131 = !DILocation(line: 92, column: 2, scope: !6104)
!6132 = !DILocation(line: 93, column: 1, scope: !6096)
!6133 = distinct !DISubprogram(name: "__clear_user", scope: !6076, file: !6076, line: 165, type: !6077, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6134)
!6134 = !{!6135, !6136}
!6135 = !DILocalVariable(name: "addr", arg: 1, scope: !6133, file: !6076, line: 165, type: !256)
!6136 = !DILocalVariable(name: "size", arg: 2, scope: !6133, file: !6076, line: 165, type: !257)
!6137 = !DILocation(line: 165, column: 77, scope: !6133)
!6138 = !DILocation(line: 165, column: 97, scope: !6133)
!6139 = !DILocation(line: 167, column: 2, scope: !6133)
!6140 = !DILocation(line: 168, column: 2, scope: !6133)
!6141 = !DILocation(line: 174, column: 2, scope: !6133)
!6142 = !{i64 5516415, i64 5516420, i64 2153004641, i64 2153004647, i64 2153004663, i64 2153004679, i64 2153004706, i64 2153005029, i64 2153004240, i64 2153005035, i64 2153005083, i64 2153005147, i64 2153005211, i64 2153005268, i64 2153004321, i64 2153004346, i64 2153005552, i64 2153005693, i64 2153005613, i64 2153005707, i64 2153004438, i64 5516517, i64 2153005772, i64 2153005816, i64 2153005839, i64 2153005872, i64 2153005903, i64 2153005942}
!6143 = !DILocation(line: 183, column: 2, scope: !6133)
!6144 = !DILocation(line: 185, column: 9, scope: !6133)
!6145 = !DILocation(line: 185, column: 2, scope: !6133)
!6146 = distinct !DISubprogram(name: "might_fault", scope: !6147, file: !6147, line: 202, type: !2562, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6147 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6148 = !DILocation(line: 202, column: 40, scope: !6146)
!6149 = distinct !DISubprogram(name: "stac", scope: !6150, file: !6150, line: 36, type: !2562, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6150 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!6151 = !DILocation(line: 39, column: 2, scope: !6149)
!6152 = !{i64 2152497179, i64 2152497207, i64 2152497213, i64 2152497229, i64 2152497245, i64 2152497272, i64 2152497586, i64 2152496929, i64 2152497592, i64 2152497640, i64 2152497704, i64 2152497768, i64 2152497825, i64 2152497010, i64 2152497035, i64 2152498032, i64 2152498168, i64 2152498093, i64 2152498182, i64 2152497127}
!6153 = !DILocation(line: 40, column: 1, scope: !6149)
!6154 = distinct !DISubprogram(name: "clac", scope: !6150, file: !6150, line: 30, type: !2562, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6155 = !DILocation(line: 33, column: 2, scope: !6154)
!6156 = !{i64 2152495512, i64 2152495540, i64 2152495546, i64 2152495562, i64 2152495578, i64 2152495605, i64 2152495919, i64 2152495262, i64 2152495925, i64 2152495973, i64 2152496037, i64 2152496101, i64 2152496158, i64 2152495343, i64 2152495368, i64 2152496365, i64 2152496501, i64 2152496426, i64 2152496515, i64 2152495460}
!6157 = !DILocation(line: 34, column: 1, scope: !6154)
!6158 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6159, file: !6159, line: 76, type: !6160, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6162)
!6159 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6160 = !DISubroutineType(types: !6161)
!6161 = !{null, !256, !2027, !1242, !1242}
!6162 = !{!6163, !6164, !6165, !6166}
!6163 = !DILocalVariable(name: "to", arg: 1, scope: !6158, file: !6159, line: 76, type: !256)
!6164 = !DILocalVariable(name: "from", arg: 2, scope: !6158, file: !6159, line: 76, type: !2027)
!6165 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6158, file: !6159, line: 77, type: !1242)
!6166 = !DILocalVariable(name: "left", arg: 4, scope: !6158, file: !6159, line: 77, type: !1242)
!6167 = !DILocation(line: 76, column: 52, scope: !6158)
!6168 = !DILocation(line: 76, column: 68, scope: !6158)
!6169 = !DILocation(line: 77, column: 18, scope: !6158)
!6170 = !DILocation(line: 77, column: 34, scope: !6158)
!6171 = !DILocation(line: 79, column: 1, scope: !6158)
